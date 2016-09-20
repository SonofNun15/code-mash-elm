module ScrollBar.View exposing (scrollbar)

import Html exposing (Html, div, button, i)
import Html.Attributes exposing (class)
import Messages exposing (Msg(..))

scrollbar : Html Msg
scrollbar =
  div [ class "scroll-bar" ]
    [ button []
      [ i [ class "fa fa-chevron-left" ] []
      ]
    , button []
      [ i [ class "fa fa-chevron-right" ] []
      ]
    ]
