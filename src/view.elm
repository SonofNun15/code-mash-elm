module View exposing (view)

import Html exposing (Html, div)
import Html.Attributes exposing (class)
import Html.App
import Messages exposing (Msg(..))
import Model exposing (Model)
import Routing exposing (Route(..))

import Header.View exposing (header)
import Footer.View exposing (footer)
import ScrollBar.View exposing (scrollbar)
import Content.View exposing (content)

import Content.Model as ContentModel

view : Model -> Html Msg
view model =
  div [ class "site" ]
    [ Html.App.map HeaderMsg (header model.profileModel)
    , appContainer model.route
    , scrollbar
    ]

appContainer : ContentModel.Model -> Html Msg
appContainer model =
  div [ class "content" ]
    [ Html.App.map ContentMsg (content model)
    , Html.App.map FooterMsg footer
    ]
