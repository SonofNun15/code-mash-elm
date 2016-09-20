module Header.Model exposing ()

type ProfileState
  = LoggedOut
  | LoggedIn

type alias Model =
  { profileState : ProfileState
  , person : Person
  }