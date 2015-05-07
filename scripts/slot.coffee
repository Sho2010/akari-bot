module.exports = (robot) ->
  robot.hear /slot|スロット$/i, (msg) ->
    result = [0..2].map (i) -> msg.random [":akari:", ":chi-nya:", ":kyoko:", ":yui:"]
    msg.send result.join " "
