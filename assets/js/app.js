// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"


import WebRTC from "./webrtc"
window.webrtc = WebRTC();

import ElmApp from './elm.js'
import elmEmbed from './elm-embed.js'

var localVideo;

var app = elmEmbed.init(ElmApp)
console.log("App is", app);
app.ports.check.subscribe(function (string) {
    var changedString = string.toUpperCase();
    webrtc.init();
    app.ports.processedOutput.send(changedString);
});

app.ports.start.subscribe(function (string) {
    webrtc.start(true);
});
