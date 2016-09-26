module Content.Messages exposing (Msg(..))

import Content.Login.Messages as LoginMessages
import Content.Profile.Messages as ProfileMessages
import Content.Register.Messages as RegisterMessages

type Msg
  = LoginMsg LoginMessages.Msg
  | ProfileMsg ProfileMessages.Msg
  | RegisterMsg RegisterMessages.Msg