module Content.Profile.Messages exposing (Msg(..))

type Msg
  = UpdateEmail String
  | UpdateName String
  | UpdateBio String
  | Save
