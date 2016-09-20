module Footer.View exposing (footer)

import Html exposing (Html, div, span, i, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Footer.Messages exposing (Msg(..))

footer : Html Msg
footer =
  Html.footer []
    [ div [ class "copyright" ]
      [ span []
        [ text "Copyright © 2016" ]
      , span []
        [ text "All rights reserved" ]
      ]
    , div [ class "top", onClick ScrollToTop ]
      [ i [ class "fa fa-arrow-up" ] []
      ]
    ]
