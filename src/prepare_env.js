if (process.env.CONFIG != undefined) {
  console.log('Change config.json by the environment variable');
  var fs = require('fs');
  var filePath = './dist/config.json';

  fs.writeFile(filePath, process.env.CONFIG, function (err) {
    if (err) return console.log(err);
  });
}
