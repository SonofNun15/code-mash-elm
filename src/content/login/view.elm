module Content.Login.View exposing (view)

import Html exposing (Html, div, form, label, input, button, text)
import Html.Attributes exposing (type')
import Html.Events exposing (onSubmit, onInput, onClick)


import Content.Login.Model exposing (Model)
import Content.Login.Messages exposing (Msg(..))

view : Model -> Html Msg
view model =
  div []
    [ form [ onSubmit Login ]
      [ div []
        [ label [] [ text "Email" ]
        , input [ onInput UpdateEmail ] []
        ]
      , div []
        [ label [] [ text "Password" ]
        , input [ onInput UpdatePassword ] []
        ]
      , button [ type' "submit" ] [ text "Login" ]
      , button [ type' "button", onClick GotoRegistration ] [ text "Register" ]
      ]
    ]
