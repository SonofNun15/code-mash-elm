module Header.Messages exposing (Msg(..))

import Header.Profile.Messages

type Msg
  = GotoSchedule
  | GotoEvents
  | GotoPresenters
  | GotoCategories
  | ProfileMsg Header.Profile.Messages.Msg
