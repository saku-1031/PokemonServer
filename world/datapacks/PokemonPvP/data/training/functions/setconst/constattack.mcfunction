# HP {(種族値×2＋個体値＋努力値/4)×Lv/100} ＋10＋Lv
# Race Value(0-255) * 2
# Indivisual Value
# Effort value(一つ0-252, 合計510まで) / 4
# Level 

# ABCDS [{(種族値×2＋個体値＋努力値/4)×Lv/100}＋5]×性格補正(1.1,1.0,0.9)

# [{(種族値×2＋個体値＋努力値/4)×Lv/100}＋5]×
scoreboard players set @s tmp0 0
scoreboard players operation @s tmp1 = @s EvAttack

scoreboard players operation @s tmp0 += @s RvAttack
scoreboard players operation @s tmp0 *= #2 Const
scoreboard players operation @s tmp0 += @s IvAttack
scoreboard players operation @s tmp1 /= #4 Const
scoreboard players operation @s tmp0 += @s tmp1
scoreboard players operation @s tmp0 *= @s Level
scoreboard players operation @s tmp0 /= #100 Const
scoreboard players operation @s tmp0 += #5 Const
scoreboard players operation @s Attack = @s tmp0
