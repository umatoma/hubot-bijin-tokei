# Description
#   A hubot script that display time in the image.
#
# Commands:
#   hubot tokei now - ex. http://www.bijint.com/assets/pict/megane/pc/2336.jpg

moment = require 'moment'
BijinTokei = require '../lib/bijin'

module.exports = (robot) ->
  robot.respond /tokei now/, (msg) ->
    time = moment().format 'HHmm'
    msg.send BijinTokei.getAt time