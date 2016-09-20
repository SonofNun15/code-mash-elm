module Main exposing (main)

import TimeTravel.Navigation
import Hop.Types exposing (Address)
import Routing exposing (Route)
import Messages exposing (Msg(..))
import Model exposing (Model, initialModel)
import Update exposing (update)
import View exposing (view)


init : ( Route, Address ) -> ( Model, Cmd Msg )
init (route, address) =
  ( initialModel address route, Cmd.none )


-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


-- URL UPDATE

urlUpdate : ( Route, Address ) -> Model -> ( Model, Cmd Msg )
urlUpdate (route, address) model =
  ( { model | route = route }, Cmd.none )


-- MAIN

main : Program Never
main =
  TimeTravel.Navigation.program Routing.urlParser
    { init = init
    , view = view
    , update = update
    , urlUpdate = urlUpdate
    , subscriptions = subscriptions
    }