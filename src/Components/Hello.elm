module Components.Hello exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

-- hello component
hello: a -> Html b
hello model =
  div
    [ class "col-md-12" ]
    [ p [class "display-3 mt-2 text-md-center"] [text "coming soon!"] ]
