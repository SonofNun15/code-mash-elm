module Header.Update exposing (update)

import Hop
import Navigation
import Routing exposing (hopConfig)
import Header.Messages exposing (Msg(..))
import Header.Profile.Model as Profile
import Header.Profile.Update exposing (update)


update : Msg -> Profile.Model -> ( Profile.Model, Cmd Msg )
update msg profile =
  case msg of
    GotoSchedule ->
      let target = Hop.outputFromPath hopConfig "schedule"
      in ( profile, Navigation.newUrl target )

    GotoEvents ->
      let target = Hop.outputFromPath hopConfig "events"
      in ( profile, Navigation.newUrl target )

    GotoPresenters ->
      let target = Hop.outputFromPath hopConfig "presenters"
      in ( profile, Navigation.newUrl target )

    GotoCategories ->
      let target = Hop.outputFromPath hopConfig "categories"
      in ( profile, Navigation.newUrl target )

    ProfileMsg profileMsg ->
      let ( updatedProfile, cmd ) =
        Header.Profile.Update.update profileMsg profile
      in ( updatedProfile, Cmd.map ProfileMsg cmd)
