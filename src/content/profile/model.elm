module Content.Profile.Model exposing (Model, defaultModel)

type alias Model =
  { email : String
  , name : String
  , bio : Maybe String
  }

defaultModel : Model
defaultModel =
  { email = ""
  , name = ""
  , bio = Nothing
  }
