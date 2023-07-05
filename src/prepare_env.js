if (process.env.CONFIG != undefined) {
  console.log('Change config.ts by the environment variable');
  var fs = require('fs');
  var filePath = './dist/config.ts';

  fs.writeFile(filePath, process.env.CONFIG, function (err) {
    if (err) return console.log(err);
  });
}
