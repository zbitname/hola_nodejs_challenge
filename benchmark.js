'use strict';

var filter = require(process.argv[2]);
if (filter.filter) {
  filter = filter.filter;
}
// console.time('prepare input data');
var data = require('./large_input.json');
// console.timeEnd('prepare input data');

filter(data.messages, data.rules);
