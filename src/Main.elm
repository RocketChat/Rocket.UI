
module Main exposing (..)

-- Elm Core
import Html exposing (..)
import Html.App
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import Components.Hello exposing (hello)


-- MODEL


type alias Model =
  {
  }


init : (Model, Cmd Msg)
init =
  ( {
    }
  , Cmd.none
  )


-- UPDATE


type Msg
  = NoOp


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp ->
      (model, Cmd.none)


-- VIEW


view : Model -> Html Msg
view model =
  div [ class "container" ]
  [
    div [ class "row"]
      [
        div [class "col-md-12"] [ img [ src "/img/Rocket.Platform@1x.png", class "rounded mx-auto d-block" ] [] ]
      ],
    div [ class "row"]
      [
        div [class "col-md-12"] [ p [class "display-3 mt-2 text-md-center font-weight-bold"] [text "Rocket.UI for Rocket.Platform"] ]
      ],
    div [ class "row"]
      [
        hello model
      ]
  ]


-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


main : Program Never
main =
  Html.App.program
    { init = init
    , update = update
    , view = view
    , subscriptions = subscriptions
    }
