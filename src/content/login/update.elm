module Content.Login.Update exposing (update)

import Hop
import Navigation
import Routing exposing (hopConfig)

import Content.Login.Messages exposing (Msg(..))
import Content.Login.Model exposing (Model)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    UpdateEmail updatedEmail ->
      ( { model | email = updatedEmail }, Cmd.none )

    UpdatePassword  updatedPassword ->
      ( { model | password = updatedPassword }, Cmd.none )

    Login ->
      ( model, Cmd.none )

    GotoRegistration ->
      let target = Hop.outputFromPath hopConfig "registration"
      in ( model, Navigation.newUrl target )
