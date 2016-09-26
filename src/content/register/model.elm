module Content.Register.Model exposing (Model, defaultModel)

type alias Model =
  { email : String
  , name : String
  , password : String
  , confirmPassword : String
  , bio : Maybe String
  }

defaultModel : Model
defaultModel =
  { email = ""
  , name = ""
  , password = ""
  , confirmPassword = ""
  , bio = Nothing
  }
