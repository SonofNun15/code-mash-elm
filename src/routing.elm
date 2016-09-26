module Routing exposing (Route(..), hopConfig, urlParser)

import UrlParser exposing (Parser, oneOf, format, s)
import Hop.Types exposing (Config, Address)
import Navigation
import Hop
import Models.Person exposing (PersonId)

import Content.Login.Model as LoginModel
import Content.Profile.Model as ProfileModel
import Content.Register.Model as RegisterModel

type Route
  = ScheduleRoute
  | EventsRoute
  | PresentersRoute
  | CategoriesRoute
  | CalendarRoute
  | LoginRoute LoginModel.Model
  | ProfileRoute ProfileModel.Model
  | RegisterRoute RegisterModel.Model
  | NotFoundRoute

matchers : Parser (Route -> a) a
matchers =
  oneOf
    [ format ScheduleRoute (s "")
    , format ScheduleRoute (s "schedule")
    , format EventsRoute (s "events")
    , format PresentersRoute (s "presenters")
    , format CategoriesRoute (s "categories")
    , format CalendarRoute (s "calendar")
    , format (LoginRoute LoginModel.defaultModel) (s "login")
    , format (ProfileRoute ProfileModel.defaultModel) (s "profile")
    , format (RegisterRoute RegisterModel.defaultModel) (s "profile")
    ]

hopConfig : Config
hopConfig =
  { hash = False
  , basePath = ""
  }


urlParser : Navigation.Parser ( Route, Address )
urlParser =
  let
    parse path =
      path
        |> UrlParser.parse identity matchers
        |> Result.withDefault NotFoundRoute

    resolver =
      Hop.makeResolver hopConfig parse

  in
    Navigation.makeParser (.href >> resolver)
