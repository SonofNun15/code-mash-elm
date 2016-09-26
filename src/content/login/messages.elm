module Content.Login.Messages exposing (Msg(..))

type Msg
  = UpdateEmail String
  | UpdatePassword String
  | Login
  | GotoRegistration
