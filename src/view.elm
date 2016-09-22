module View exposing (view)

import Html exposing (Html, div, h1, text, main', section)
import Html.Attributes exposing (class)
import Html.App
import Messages exposing (Msg(..))
import Model exposing (Model)
import Routing exposing (Route(..))

import Header.View exposing (header)
import Footer.View exposing (footer)
import ScrollBar.View exposing (scrollbar)


view : Model -> Html Msg
view model =
  div [ class "site" ]
    [ Html.App.map HeaderMsg (header model.profileModel)
    , content model
    , scrollbar
    ]

content : Model -> Html Msg
content model =
  div [ class "content" ]
    [ main' []
      [ section []
          [ page model
          ]
      ]
    , Html.App.map FooterMsg footer
    ]



page : Model -> Html Msg
page model =
  case model.route of
    ScheduleRoute ->
      div []
        [ h1 []
          [ text "Schedules" ]
        ]

    EventsRoute ->
      div []
       [ h1 []
        [ text "Events" ]
       ]

    PresentersRoute ->
      div []
        [ h1 []
          [ text "Presenters" ]
        ]

    CategoriesRoute ->
      div []
        [ h1 []
          [ text "Categories" ]
        ]

    ProfileRoute ->
      div []
        [ h1 []
          [ text <| "User" ]
        ]

    CalendarRoute ->
      div []
        [ h1 []
          [ text <| "Calendar" ]
        ]

    NotFoundRoute ->
      notFoundView


notFoundView : Html msg
notFoundView =
  div []
    [ text "Not found"
    ]