# Description
#   A hubot script that display time in the image.
#
# Commands:
#   hubot tokei now - ex. hubot> http://www.bijint.com/assets/pict/megane/pc/2336.jpg
#   hubot tokei now <query> - ex. user> hubot tokei now tokyo, user> hubot tokei now 東京

moment = require 'moment'
BijinTokei = require '../lib/bijin'

module.exports = (robot) ->
  robot.respond /tokei now$/, (msg) ->
    time = moment().format 'HHmm'
    msg.send BijinTokei.getAt time

  robot.respond /tokei now (.+)/, (msg) ->
    area = msg.match[1].trim()
    time = moment().format 'HHmm'
    url = BijinTokei.getAtByArea time, area
    if url is null
      msg.send '【#{area}】の時計は存在しません...'
    else
      msg.send BijinTokei.getAtByArea time, area