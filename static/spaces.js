
// pull in desired CSS/SASS files
require('./css/index.scss');

// inject bundled Elm app into div#main

var Elm = require('../src/Spaces.elm');
Elm.Spaces.embed(document.getElementById('spaces'));
