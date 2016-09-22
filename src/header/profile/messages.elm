module Header.Profile.Messages exposing (Msg(..))

type Msg
  = ShowProfileMenu
  | GotoProfile
  | GotoCalendar
  | LogOut
  | ShowLogIn
  | LogIn String String
