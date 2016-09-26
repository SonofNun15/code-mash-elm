module Messages exposing (Msg(..))

import Header.Messages
import Content.Messages
import Footer.Messages

-- MESSAGES

type Msg
  = HeaderMsg Header.Messages.Msg
  | ContentMsg Content.Messages.Msg
  | FooterMsg Footer.Messages.Msg
