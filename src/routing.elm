module Routing exposing (Route(..), hopConfig, urlParser)

import UrlParser exposing (Parser, oneOf, format, s)
import Hop.Types exposing (Config, Address)
import Navigation
import Hop
import Models.Person exposing (PersonId)

type Route
  = ScheduleRoute
  | EventsRoute
  | PresentersRoute
  | CategoriesRoute
  | ProfileRoute
  | CalendarRoute
  | NotFoundRoute

matchers : Parser (Route -> a) a
matchers =
  oneOf
    [ format ScheduleRoute (s "")
    , format ScheduleRoute (s "schedule")
    , format EventsRoute (s "events")
    , format PresentersRoute (s "presenters")
    , format CategoriesRoute (s "categories")
    , format ProfileRoute (s "profile")
    , format CalendarRoute (s "calendar")
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
