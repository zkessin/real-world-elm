module App where

import Html exposing (Html)


-- MODEL

type alias Model = Int


init : Model
init =
  42


-- UPDATE

type Action
  = NoOp


update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model


-- SIGNALS

main : Signal Html
main =
  Signal.map view model


model : Signal Model
model = Signal.foldp update init
        <| Signal.mergeMany [actions.signal]


actions : Signal.Mailbox Action
actions =
  Signal.mailbox NoOp


-- VIEW

view : Model -> Html
view model =
    Html.div [] [ Html.text "TODO" ]