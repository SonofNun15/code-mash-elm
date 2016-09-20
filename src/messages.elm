module Messages exposing (Msg(..))

import Header.Messages
import Footer.Messages

-- MESSAGES

type Msg
  = HeaderMsg Header.Messages.Msg
  | FooterMsg Footer.Messages.Msg
