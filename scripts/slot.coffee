students = [":ayano:", ":chitose:", ":himawari:", ":rise:", ":sakurako:"] 
goraku = [":akari:", ":chi-nya:", ":kyoko:", ":yui:"]
all = students.concat(goraku)
slot_src = [students, goraku, all]

module.exports = (robot) ->
  robot.hear /slot|スロット$/i, (msg) ->
    src = slot_src[Math.floor(Math.random() * slot_src.length)]
    result = [0..2].map (i) -> msg.random src
    msg.send result.join " "
    msg.send "わぁい 揃ったよ♪" if result[0] == result[1] && result[0] == result[2] 


  robot.hear /pair|couple|ペア|カップル$/i, (msg) ->
    result = [0..1].map (i) -> msg.random all
    msg.send result.join " "
