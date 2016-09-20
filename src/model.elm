module Model exposing(Model, initialModel)

import Hop.Types exposing (Address)
import Routing exposing (Route)
import Models.Profile exposing (Profile(..))


type alias Model =
    { address : Address
    , route : Route
    , profile : Profile
    }


initialModel : Address -> Route -> Model
initialModel address route =
    { address = address
    , route = route
    , profile = LoggedIn { name = "Josh", id = 1, bio = Nothing }--LoggedOut
    }
