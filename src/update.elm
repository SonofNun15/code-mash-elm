module Update exposing (update)

import Messages exposing (Msg(..))
import Model exposing (Model)
import Header.Update


-- UPDATE

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    HeaderMsg headerMsg ->
      let
        ( updatedProfile, cmd ) =
          Header.Update.update headerMsg model.profile
      in
        ( { model | profile = updatedProfile }, Cmd.map HeaderMsg cmd)

    FooterMsg footerMsg ->
      ( model, Cmd.none )
