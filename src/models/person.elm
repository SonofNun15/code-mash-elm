module Models.Person exposing (PersonId, Person)

type alias PersonId = Int

type alias Person =
  { id : PersonId
  , email : String
  , name : String
  , bio : Maybe String
  }
