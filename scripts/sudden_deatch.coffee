eastasianwidth = require 'eastasianwidth'

strpad = (str, count) ->
  new Array(count + 1).join str

formatSuddenDeath = (input) ->
  length = Math.floor eastasianwidth.length(input) / 2
  [
    "＿#{strpad '人', length + 2}＿"
    "＞　#{input} ＜"
    "￣Y#{strpad '^Y', length + 1}￣"
  ].join "\n"

module.exports = (robot) ->
  robot.respond /sd (.*)$/i, (msg) ->
    message = msg.match[1].replace /^\s+|\s+$/g, ''
    return until message.length
    msg.send formatSuddenDeath(message)

  robot.hear /^突然の/i, (msg) ->
    msg.send formatSuddenDeath(msg.message.text)

