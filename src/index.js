'use strict';

require('./elm.css');
require('../assets/css/main.css');
require('../assets/css/header.css');
require('../assets/css/footer.css');

// Require index.html so it gets copied to dist
require('./index.html');

var Elm = require('./main.elm');
var mountNode = document.getElementById('main');

// The third value on embed are the initial values for incoming ports into Elm
var app = Elm.Main.embed(mountNode);