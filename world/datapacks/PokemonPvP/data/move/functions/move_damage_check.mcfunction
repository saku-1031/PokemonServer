scoreboard players operation @s tmp1 = #2 Const
scoreboard players operation @s tmp1 *= @s tmp_attacker
scoreboard players operation @s tmp1 /= #5 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s tmp1 *= @s tmp_power_status
scoreboard players operation @s tmp1 *= @s tmp_attack_status 
scoreboard players operation @s tmp1 /= @s Defence
scoreboard players operation @s tmp1 /= #50 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s nowHP -= @s tmp1
execute if score @s nowHP matches ..0 run tag @a[tag=punch,limit=1,sort=nearest] add killed
tag @a[tag=punch] remove punch