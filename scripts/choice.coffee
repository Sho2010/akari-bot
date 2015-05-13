module.exports = (robot) ->
  robot.respond /(.+)(から選んで|どれ|どっち)/, (msg) ->
    items = msg.match[1].split(/[　・、,と\s]+/)
    picked_item = msg.random items
    if Math.random() > 0.2
      matchedLove = /好き/.exec(msg.message.text)
      if matchedLove?
        msg.reply "わぁい#{picked_item} あかり#{picked_item}大好き"
      else
        msg.reply "#{picked_item}がいいと思うなぁ"
    else
      allPickMes = if items.length == 2 then "両方いいと思うなぁ" else "全部いいと思います！"
      msg.reply msg.random ["あかりには選べないよぉ", allPickMes]
