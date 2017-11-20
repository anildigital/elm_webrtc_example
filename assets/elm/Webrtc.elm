port module Webrtc exposing (check, start, processedOutput)


port check : String -> Cmd msg


port start : String -> Cmd msg


port processedOutput : (String -> msg) -> Sub msg
