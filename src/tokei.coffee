# Description
#   A hubot script that display time in the image.
#
# Configuration:
#   HUBOT_BIJIN_TOKEI_TIMER_CRONS - "00 30 11 * * 1-5"
#
# Commands:
#   hubot tokei now - ex. hubot> http://www.bijint.com/assets/pict/megane/pc/2336.jpg
#   hubot tokei now <query> - ex. user> hubot tokei now tokyo, user> hubot tokei now 東京

moment = require 'moment'
CronJob = require('cron').CronJob
BijinTokei = require '../lib/bijin'

TIMER_CRONS = process.env.HUBOT_BIJIN_TOKEI_TIMER_CRONS || ''

module.exports = (robot) ->
  robot.respond /tokei now$/, (msg) ->
    msg.send BijinTokei.getAt moment().format('HHmm')

  robot.respond /tokei now (.+)/, (msg) ->
    area = msg.match[1].trim()
    url = BijinTokei.getAtByArea moment().format('HHmm'), area
    if url is null
      msg.send '【#{area}】の時計は存在しません...'
    else
      msg.send BijinTokei.getAtByArea moment().format('HHmm'), area

  TIMER_CRONS.split(',').forEach (timer) ->
    timer = timer.trim()
    if timer isnt ''
      new CronJob(
        cronTime: timer,
        onTick: ->
          now = moment()
          url = BijinTokei.getAt now.format('HHmm')
          robot.send {}, "【#{moment().format('HH:mm')}】になりました\n#{url}"
        start: true
        timeZone: 'Asia/Tokyo'
      )