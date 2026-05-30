import fs from 'node:fs'

const [, , functionName, fileName] = process.argv

const buf = fs.readFileSync('testdata/' + fileName)

const timeTitle = `${functionName} ${fileName}`

console.time(timeTitle)
buf[functionName]()
console.timeEnd(timeTitle)
