module Content.Login.Model exposing (Model, defaultModel)

type alias Model =
  { email : String
  , password : String
  }

defaultModel : Model
defaultModel =
  { email = ""
  , password = ""
  }
