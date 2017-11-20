module Model exposing (..)


type alias Model =
    { text : String }


type Msg
    = NoOp
    | StartWebrtc
    | ShowMsg String
    | ChangeMsg
