module.exports = (robot) ->
  robot.hear /難しい/i, (msg) ->
    msg.send "https://www.dropbox.com/s/bgtlps6400v9yeb/easy-description.jpg"

