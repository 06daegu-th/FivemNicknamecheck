local unauthNames = {
   "노무현", "시발", "병신", "태형", "태형이 병신", "엄마", "경찰", "엉덩이", "푸루디", "짜지", "보지", "니애미", "궁둥이", "바보", "멍청이", "똥개", "막시무스", "보스님 엉덩이", "핡쨝", "읏흥", "헤헿", "현타온다씨발",
    "sex", "좀비아포칼립스", "discord", "운지", "응디", "니미", "섽즈", "player1", "player2", "tlqkf", "자지", "문재인", "박근혜", "문재앙", "전두환", "박정희", "최순실"
}

local x = {}

AddEventHandler("playerConnecting", function(playerName, setKickReason)
    playerName = (string.gsub(string.gsub(string.gsub(playerName,  "-", ""), ",", ""), " ", ""):lower())
    for k, v in pairs(unauthNames) do
      local g, f = playerName:find(string.lower(v))
      if g or f  then
        table.insert (x, v)
        local blresult = table.concat(x, " ")
          setKickReason('닉네임이 부적절 합니다.')
          CancelEvent()
          for key in pairs (x) do
            x [key] = nil
        end
      end
    end
  end)
