module Content.View exposing (content)

import Html.App
import Html exposing (Html, div, main', section, h1, text)
import Html.Attributes exposing (class)

import Routing exposing (Route(..))

import Content.Messages exposing (Msg(..))
import Content.Model exposing (Model)

import Content.Login.View as LoginView
import Content.Profile.View as ProfileView
import Content.Register.View as RegisterView

content : Model -> Html Msg
content model =
  main' []
    [ section []
        [ page model
        ]
    ]

page : Model -> Html Msg
page model =
  case model of
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

    CalendarRoute ->
      div []
        [ h1 []
          [ text <| "Calendar" ]
        ]

    LoginRoute loginModel ->
      Html.App.map LoginMsg (LoginView.view loginModel)

    ProfileRoute profileModel ->
      Html.App.map ProfileMsg (ProfileView.view profileModel)

    RegisterRoute registerModel ->
      Html.App.map RegisterMsg (RegisterView.view registerModel)

    NotFoundRoute ->
      notFoundView


notFoundView : Html msg
notFoundView =
  div []
    [ text "Not found"
    ]
