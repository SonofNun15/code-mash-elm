module Header.Profile.View exposing (view)

import Html exposing (Html, div, a, i, button, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Models.Profile exposing (Profile(..))
import Header.Profile.Messages exposing (Msg(..))
import Header.Profile.Model as ProfileComponent

view : ProfileComponent.Model -> Html Msg
view model =
  case model.profile of
    LoggedOut ->
      div [ class "profile" ]
        [ button [ onClick GotoLogIn ] [ text "Log in" ]
        ]

    LoggedIn person ->
      div [ class "profile" ]
        [ div [ class "dropdown menu" ]
          [ div [ class "button", onClick ShowProfileMenu ]
            [ div [ class "pic" ] []
            , i [ class "drop-down fa fa-caret-down" ] []
            ]
          , div [ class <| "dropdown-content right" ++ (getShowMenuClass model.showMenu) ]
            [ a [ onClick GotoProfile ] [ text "Profile" ]
            , a [ onClick LogOut ] [ text "Log out" ]
            ]
          ]
        , div [ class "schedule" ]
          [ a [ onClick GotoCalendar ]
            [ i [ class "fa fa-calendar" ] []
            ]
          ]
        ]

getShowMenuClass : Bool -> String
getShowMenuClass show =
  if show then " show" else ""
