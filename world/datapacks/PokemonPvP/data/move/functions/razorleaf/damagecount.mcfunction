#((2 x 攻撃側のレベル ÷ 5 + 2) x 技の威力 x 攻撃側のこうげき ÷ 防御側のぼうぎょ ÷ 50 + 2)の計算を行う
scoreboard players operation @s tmp1 = #2 Const
scoreboard players operation @s tmp1 *= @e[tag=razorleafarmor] movelevelstatus
scoreboard players operation @s tmp1 /= #5 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s tmp1 *= @e[tag=razorleafarmor] movepowerstatus
scoreboard players operation @s tmp1 *= @e[tag=razorleafarmor] moveattackstatus 
scoreboard players operation @s tmp1 /= @s Defence

scoreboard players operation @s tmp1 /= #50 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s nowHP -= @s tmp1

execute if score @s nowHP matches ..0 run tag @a[tag=punch,limit=1,sort=nearest] add killed

tag @a[tag=punch] remove punch
