
module.exports = (robot) ->
  robot.hear /ぞい|zoi/i, (msg) ->
    msg.send msg.random [
      "http://33.media.tumblr.com/0bf0db79da89175b8bd514b13f9e5bb7/tumblr_n8i0tabaMp1re64ggo1_400.png",
      "https://41.media.tumblr.com/9cdd4f41d96600d13eddac32da17ba79/tumblr_ngga9kcFVX1qd1ozgo1_500.jpg",
      "https://40.media.tumblr.com/4656b8918f43f53fcccd9811030525f7/tumblr_nefii3BoOm1qd1ozgo1_500.jpg"]
