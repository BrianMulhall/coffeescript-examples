fs = require 'fs'

raw = fs.readFileSync 'competitors.txt', 'utf-8'

competitors = raw.split /\n/


console.log(str) for str in competitors