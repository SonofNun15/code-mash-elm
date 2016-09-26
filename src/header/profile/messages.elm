module Header.Profile.Messages exposing (Msg(..))

import Mouse

type Msg
  = ShowProfileMenu
  | GotoProfile
  | GotoCalendar
  | LogOut
  | GotoLogIn
  | MouseClick Mouse.Position
