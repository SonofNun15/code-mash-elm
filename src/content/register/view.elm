module Content.Register.View exposing (view)

import Html exposing (Html, div, form, label, input, button, text)
import Html.Attributes exposing (type')
import Html.Events exposing (onSubmit)


import Content.Register.Model exposing (Model)
import Content.Register.Messages exposing (Msg(..))

view : Model -> Html Msg
view model =
  div []
    [ form [ onSubmit Register ]
      [ div []
        [ label [] [ text "Name" ]
        , input [] []
        ]
      , div []
        [ label [] [ text "Email" ]
        , input [] []
        ]
      , div []
        [ label [] [ text "Password" ]
        , input [] []
        ]
      , div []
        [ label [] [ text "Confirm password" ]
        , input [] []
        ]
      , div []
        [ label [] [ text "Bio" ]
        , input [] []
        ]
      , button [ type' "submit" ] [ text "Save" ]
      ]
    ]
