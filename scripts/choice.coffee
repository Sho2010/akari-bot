module.exports = (robot) ->
  robot.hear /(.+)から選んで/, (msg) ->
    no_pick_mes = "あかりには選べないよぉ"
    items = msg.match[1].split(/[　・、と\s]+/)
    items.push(no_pick_mes)

    item = msg.random items
    if(item == no_pick_mes)
      msg.reply no_pick_mes
    else 
      msg.reply "#{item}がいいと思うなぁ"

