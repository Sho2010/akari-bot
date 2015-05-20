module.exports = (robot) ->
  robot.respond /test/, (msg) ->

    msg.username = "akari"
    msg.icon_emoji = ":akari:"
    msg.text = "txt"
    robot.emit 'slack-attachment',
      message: msg.message
      username: msg.username
      text: "txt"
      icon_emoji: msg.icon_emoji

