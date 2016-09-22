module Header.Profile.Subscriptions exposing (subscriptions)

import Mouse
import Header.Profile.Model exposing (Model)
import Header.Profile.Messages exposing (Msg(..))

subscriptions : Model -> Sub Msg
subscriptions model =
  if model.showMenu then
    Mouse.clicks MouseClick
  else
    Sub.none