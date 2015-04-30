
module.exports = (robot) ->
  robot.hear /アイカツ/i, (msg) ->
    msg.send "https://www.dropbox.com/s/t8s03xh5e1nhpea/ikatu.jpg"
