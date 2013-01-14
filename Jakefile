var fs = require('fs'),
    project = JSON.parse(fs.readFileSync('./project.mml', 'utf8'));

namespace('layers', function() {
  desc('Return the layer names');
  task('names', function(p) {
    var layers = project.Layer.reverse();
    for (var i = 0; i < layers.length; i++ ) {
      console.log( layers[i].name );
    }
  });

  desc('Return the layer count');
  task('count', function(p) {
    console.log('There are ' + project.Layer.length + ' layers.');
  });
});
