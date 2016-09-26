module Update exposing (update)

import Messages exposing (Msg(..))
import Model exposing (Model)

import Header.Update
import Content.Update


-- UPDATE

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  case msg of
    HeaderMsg headerMsg ->
      let
        ( updatedProfile, cmd ) =
          Header.Update.update headerMsg model.profileModel
      in
        ( { model | profileModel = updatedProfile }, Cmd.map HeaderMsg cmd )

    ContentMsg contentMsg ->
      let
        ( updatedRoute, cmd ) =
          Content.Update.update contentMsg model.route
      in
        ( { model | route = updatedRoute }, Cmd.map ContentMsg cmd )

    FooterMsg footerMsg ->
      ( model, Cmd.none )
