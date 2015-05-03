
module.exports = (robot) ->
  robot.hear /アイカツ/i, (msg) ->
    msg.send msg.random ["https://www.dropbox.com/s/t8s03xh5e1nhpea/ikatu.jpg",
												"https://files.slack.com/files-pri/T04L97CNM-F04MDRZDM/aikatsu114_05.jpg",
												"https://files.slack.com/files-pri/T04L97CNM-F04LSH5JQ/5b095f1e1c.jpg",
                        "https://files.slack.com/files-pri/T04L97CNM-F04MDVC6Z/41a3600c.jpg",
              				  "https://files.slack.com/files-pri/T04L97CNM-F04LSPXS0/33-11.jpg",
												"https://files.slack.com/files-pri/T04L97CNM-F04LSPYN0/49-1.jpg",
												"https://files.slack.com/files-pri/T04L97CNM-F04LSQA9S/f509fd0e.jpg"]

