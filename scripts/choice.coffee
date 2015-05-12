module.exports = (robot) ->
  robot.hear /(.+)から選んで/, (msg) ->
    items = msg.match[1].split(/[　・、と\s]+/)
    item = msg.random items
    msg.reply "#{item}がいいと思うなぁ"

