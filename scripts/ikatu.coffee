
module.exports = (robot) ->
  robot.hear /アイカツ/i, (msg) ->
    msg.send msg.random ["https://www.dropbox.com/s/t8s03xh5e1nhpea/ikatu.jpg",
												"https://files.slack.com/files-pri/T04L97CNM-F04MDRZDM/aikatsu114_05.jpg",
												"https://files.slack.com/files-pri/T04L97CNM-F04LSH5JQ/5b095f1e1c.jpg"]


