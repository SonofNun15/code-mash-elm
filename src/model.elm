module Model exposing(Model, initialModel)

import Hop.Types exposing (Address)
import Routing exposing (Route)
import Models.Profile exposing (Profile(..))
import Header.Profile.Model as ProfileComponent


type alias Model =
    { address : Address
    , route : Route
    , profileModel : ProfileComponent.Model
    }


initialModel : Address -> Route -> Model
initialModel address route =
    { address = address
    , route = route
    , profileModel =
      { showMenu = False
      , showLogin = False
      , profile = LoggedIn { name = "Josh", id = 1, bio = Nothing }
      }--LoggedOut
    }
