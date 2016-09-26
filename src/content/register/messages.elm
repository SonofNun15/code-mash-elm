module Content.Register.Messages exposing (Msg(..))

type Msg
  = UpdateEmail String
  | UpdateName String
  | UpdatePassword String
  | UpdateConfirmPassword String
  | UpdateBio String
  | Register
