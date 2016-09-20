module Models.Profile exposing (Profile(..))

import Models.Person exposing (Person)

type Profile
  = LoggedOut
  | LoggedIn Person
