module Header.Profile.Messages exposing (Msg(..))

import Mouse

type Msg
  = ShowProfileMenu
  | GotoProfile
  | GotoCalendar
  | LogOut
  | ShowLogIn
  | LogIn String String
  | MouseClick Mouse.Position
