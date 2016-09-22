module Header.Profile.Update exposing (update)

import Hop
import Navigation
import Routing exposing (hopConfig)
import Models.Profile exposing (Profile(..))
import Header.Profile.Messages exposing (Msg(..))
import Header.Profile.Model as ProfileComponent


update : Msg -> ProfileComponent.Model -> ( ProfileComponent.Model, Cmd Msg )
update msg model =
  case msg of
    ShowProfileMenu ->
      ( { model | showMenu = True }, Cmd.none )

    GotoProfile ->
      let
        target = Hop.outputFromPath hopConfig "profile"
      in
        ( model, Navigation.newUrl target )

    GotoCalendar ->
      let
        target = Hop.outputFromPath hopConfig "calendar"
      in
        ( model, Navigation.newUrl target )

    LogOut ->
      ( { model | profile = LoggedOut }, Cmd.none )

    ShowLogIn ->
      ( { model | showLogin = True }, Cmd.none )

    LogIn username password ->
      ( { model | profile = LoggedIn { name = "Josh", id = 1, bio = Nothing } }, Cmd.none )

