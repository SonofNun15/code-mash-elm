module Header.View exposing (header)

import Html.App
import Html exposing (Html, a, img, nav, ul, li, button, div, i, text)
import Html.Attributes exposing (class, href, src, height)
import Html.Events exposing (onClick)
import Header.Messages exposing (Msg(..))
import Header.Profile.Model as Profile
import Header.Profile.View

header : Profile.Model -> Html Msg
header model =
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
    , Html.App.map ProfileMsg <| Header.Profile.View.view model
    ]

