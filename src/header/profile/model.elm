module Header.Profile.Model exposing (Model)

import Models.Profile exposing (Profile)

type alias Model =
  { showMenu : Bool
  , showLogin : Bool
  , profile : Profile
  }