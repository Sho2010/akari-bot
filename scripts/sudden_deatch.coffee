eastasianwidth = require 'eastasianwidth'

strpad = (str, count) ->
  new Array(count + 1).join str

module.exports = (robot) ->
  robot.respond /sd (.*)$/i, (msg) ->
    message = msg.match[1].replace /^\s+|\s+$/g, ''
    return until message.length

    length = Math.floor eastasianwidth.length(message) / 2

    suddendeath = [
      "＿#{strpad '人', length + 2}＿"
      "＞　#{message}　＜"
      "￣Y#{strpad '^Y', length + 1}￣"
    ]
    msg.send suddendeath.join "\n"
