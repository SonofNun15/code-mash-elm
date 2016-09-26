module Content.Profile.View exposing (view)

import Html exposing (Html, div, form, label, input, button, text)
import Html.Attributes exposing (type')
import Html.Events exposing (onSubmit)


import Content.Profile.Model exposing (Model)
import Content.Profile.Messages exposing (Msg(..))

view : Model -> Html Msg
view model =
  div []
    [ form [ onSubmit Save ]
      [ div []
        [ label [] [ text "Name" ]
        , input [] []
        ]
      , div []
        [ label [] [ text "Email" ]
        , input [] []
        ]
      , div []
        [ label [] [ text "Bio" ]
        , input [] []
        ]
      , button [ type' "submit" ] [ text "Save" ]
      , button [ type' "button" ] [ text "Change password" ]
      ]
    ]
