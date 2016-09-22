module Header.Subscriptions exposing (subscriptions)

import Header.Messages exposing (Msg(..))
import Header.Profile.Model exposing (Model)
import Header.Profile.Subscriptions

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.batch
    [ Sub.map ProfileMsg (Header.Profile.Subscriptions.subscriptions model)
    ]
