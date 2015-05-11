students = [":ayano:", ":chitose:", ":himawari:", ":rise:", ":sakurako:"] 
goraku = [":akari:", ":chi-nya:", ":kyoko:", ":yui:"]
slot_src = [students, goraku]

module.exports = (robot) ->
  robot.hear /slot|スロット$/i, (msg) ->
    src = slot_src[Math.floor(Math.random() * slot_src.length)]
    result = [0..2].map (i) -> msg.random src
    msg.send result.join " "
    #FIXME: replace .all?
    msg.send "わぁい 揃ったよ♪" if result[0] == result[1] && result[0] == result[2] 
