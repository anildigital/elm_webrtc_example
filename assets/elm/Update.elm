module Update exposing (..)

import Model exposing (..)
import Webrtc exposing (check, start, processedOutput)


init : ( Model, Cmd Msg )
init =
    { text = "somethignverysmallcase" } |> changeMsg


changeMsg : Model -> ( Model, Cmd Msg )
changeMsg model =
    ( model, check model.text )


startWebrtc : Model -> ( Model, Cmd Msg )
startWebrtc model =
    ( model, start model.text )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []

        StartWebrtc ->
            model |> startWebrtc

        ChangeMsg ->
            model |> changeMsg

        ShowMsg string ->
            ( { model | text = string }, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    processedOutput ShowMsg
