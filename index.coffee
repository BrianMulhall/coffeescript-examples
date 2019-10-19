fs = require 'fs'
commands = require './commands'

console.log(commands.shoutName(commands.jessica))

houseRoast = null

hasMilk = (style) ->
  switch style.toLowerCase()
    when "latte","cappuccino"
      yes
    else
      no


makeCoffee = (requestedStyle) -> 
  style = requestedStyle || "Espresso"
  if houseRoast?
    "#{houseRoast} #{style}"
  else
    stlye


barista = (style) ->
  time = (new Date()).getHours()
  if hasMilk(style) and time > 12 then "No!"
  else
    coffee = makeCoffee style
    "Enjoy your #{coffee}!"


main = -> 
  requestedCoffee = process.argv[2]
  if !requestedCoffee?
    console.log 'You need to specify an order'
  else
    fs.readFile 'house_roast.txt', 'utf-8', (err,data) ->
      if data then houseRoast = data.replace /\n/, ''
      console.log barista(requestedCoffee)
main()