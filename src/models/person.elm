module Models.Person exposing (PersonId, Person)

type alias PersonId = Int

type alias Person =
  { id : PersonId
  , name : String
  , bio : Maybe String
  }
