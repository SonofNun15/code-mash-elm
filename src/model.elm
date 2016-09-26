module Model exposing(Model, initialModel)

import Hop.Types exposing (Address)
import Routing exposing (Route)
import Models.Profile exposing (Profile(..))
import Header.Profile.Model as ProfileComponent

type alias Model =
    { address : Address
    , route : Route
    , profileModel : ProfileComponent.Model
    , profile : Profile
    }


initialModel : Address -> Route -> Model
initialModel address route =
  let profile = LoggedIn { name = "Josh", id = 1, bio = Nothing }
  in
    { address = address
    , route = route
    , profileModel =
      { showMenu = False
      , showLogin = False
      , profile = profile
      },
      profile = profile
    }
