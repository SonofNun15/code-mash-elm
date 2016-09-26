module Content.Update exposing (update)

import Routing exposing (Route(..))

import Content.Model exposing (Model)
import Content.Messages exposing (Msg(..))

import Content.Login.Update as LoginUpdate

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case ( msg, model ) of
    ( LoginMsg loginMsg, LoginRoute loginModel ) ->
      let
        ( updatedModel, cmd ) =
          LoginUpdate.update loginMsg loginModel
      in
        ( LoginRoute updatedModel, Cmd.map LoginMsg cmd)
    _ ->
      ( model, Cmd.none )
