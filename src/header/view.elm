module Header.View exposing (header)

import Html exposing (Html, a, img, nav, ul, li, button, div, i, text)
import Html.Attributes exposing (class, href, src, height)
import Html.Events exposing (onClick)
import Header.Messages exposing (Msg(..))
import Models.Profile exposing (Profile(..))

header : Profile -> Html Msg
header profile =
  Html.header []
    [ a [ class "brand", href "http://www.codemash.org" ]
      [ img [ src "/assets/images/codemash-icon.png", height 50 ] []
      ]
    , nav []
      [ div [ class "main" ]
        [ a [ href "/" ] [ text "CodeMash" ]
        ]
      , ul []
        [ li []
          [ a [ onClick GotoSchedule ] [ text "Schedule" ]
          ]
        , li []
          [ a [ onClick GotoEvents ] [ text "Events" ]
          ]
        , li []
          [ a [ onClick GotoPresenters ] [ text "Presenters" ]
          ]
        , li []
          [ a [ onClick GotoCategories ] [ text "Categories" ]
          ]
        ]
      , button [ class "navigator" ]
        [ i [ class "fa fa-navicon" ] []
        , i [ class "fa fa-caret-down" ] []
        ]
      ]
    , profileView profile
    ]

profileView : Profile -> Html Msg
profileView profile =
  case profile of
    LoggedOut ->
      div [ class "profile" ]
        [ button [] [ text "Log in" ]
        ]

    LoggedIn person ->
      div [ class "profile" ]
        [ div [ class "menu" ]
          [ div [ class "pic" ] []
          , i [ class "drop-down fa fa-caret-down" ] []
          ]
        , div [ class "schedule" ]
          [ a [ onClick GotoCalendar ]
            [ i [ class "fa fa-calendar" ] []
            ]
          ]
        ]