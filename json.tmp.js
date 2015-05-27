var fs = require('fs');

var myData = {
  name:'test',
  version:'1.0'
}

myData = fs.readFileSync('./data/ais_20130829.geojson');


var outputFilename = './data/ais_20130829.pretty.geojson';

fs.writeFile(outputFilename, JSON.stringify(myData, null, 2), function(err) {
    if(err) {
      console.log(err);
    } else {
      console.log("JSON saved to " + outputFilename);
    }
}); 