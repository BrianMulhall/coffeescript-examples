const gulp = require('gulp');

function defaultTask(cb){
  console.log('this is a task');
  cb();
}

function compileTask(cb){
  console.log('compile');

  cb();
}

function transpileTask(cb){
  console.log('transpile');
  cb();
}

if (process.env.NODE_ENV === 'production') {
  // production only exports
}
else {
  // dev only exports
}


exports.transpile = transpileTask
exports.default = defaultTask
exports.compile = compileTask