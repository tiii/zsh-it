// Configuration

slate.config('defaultToCurrentScreen', true);
slate.config('keyboardLayout', 'qwertz');
slate.config('modalEscapeKey', 'esc');

var config = {
  hintCharacters: 'QWERTYUIOP'
};

// Operations
var pushRight = slate.operation("push", {
  "direction" : "right",
  "style" : "bar-resize:screenSizeX/2"
});
var pushLeft = slate.operation("push", {
  "direction" : "left",
  "style" : "bar-resize:screenSizeX/2"
});
var pushTop = slate.operation("push", {
  "direction" : "top",
  "style" : "bar-resize:screenSizeY/2"
});
var pushBottom = slate.operation("push", {
  "direction" : "bottom",
  "style" : "bar-resize:screenSizeY/2"
});
var fullscreen = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});

// Bindings
slate.bind("r:ctrl,alt,cmd", function() {
  slate.operation('relaunch');
  slate.log('relaunch');
});

slate.bind("a:shift,alt", function() {
  slate.operation('hint', { characters: config.hintCharacters });
});


slate.bind("right:ctrl,alt,cmd", function(window) {
  window.doOperation(pushRight);
});

slate.bind("left:ctrl,alt,cmd", function(window) {
  window.doOperation(pushLeft);
});

slate.bind("up:ctrl,alt,cmd", function(window) {
  window.doOperation(pushTop);
});

slate.bind("down:ctrl,alt,cmd", function(window) {
  window.doOperation(pushBottom);
});

slate.bind("return:ctrl,alt,cmd", function(window) {
  window.doOperation(fullscreen);
});