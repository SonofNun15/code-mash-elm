module Header.Update exposing (update)

import Hop
import Navigation
import Routing exposing (hopConfig)
import Header.Messages exposing (Msg(..))
import Models.Profile exposing (Profile)


update : Msg -> Profile -> ( Profile, Cmd Msg )
update msg profile =
  case msg of
    GotoSchedule ->
      let
        target = Hop.outputFromPath hopConfig "schedule"
      in
        ( profile, Navigation.newUrl target )

    GotoEvents ->
      let
        target = Hop.outputFromPath hopConfig "events"
      in
        ( profile, Navigation.newUrl target )

    GotoPresenters ->
      let
        target = Hop.outputFromPath hopConfig "presenters"
      in
        ( profile, Navigation.newUrl target )

    GotoCategories ->
      let
        target = Hop.outputFromPath hopConfig "categories"
      in
        ( profile, Navigation.newUrl target )

    GotoProfile ->
      let
        target = Hop.outputFromPath hopConfig "profile"
      in
        ( profile, Navigation.newUrl target )

    GotoCalendar ->
      let
        target = Hop.outputFromPath hopConfig "calendar"
      in
        ( profile, Navigation.newUrl target )
