module.exports = (robot) ->
  robot.hear /魚のはらわた/i, (msg) ->
    msg.send "よう食わん〜♪"

