#((2 x 攻撃側のレベル ÷ 5 + 2) x 技の威力 x 攻撃側のこうげき ÷ 防御側のぼうぎょ ÷ 50 + 2)の計算を行う

execute store result score @s tmp_attacker_lv run scoreboard players get @e[tag=bitearmor,limit=1] movelevelstatus
execute store result score @s tmp_power_status run scoreboard players get @e[tag=bitearmor,limit=1] movepowerstatus
execute store result score @s tmp_attack_status run scoreboard players get @e[tag=bitearmor,limit=1] moveattackstatus

# mcfunction
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


# ---


#((2 x 攻撃側のレベル ÷ 5 + 2) x 技の威力 x 攻撃側のSPこうげき ÷ 防御側のDぼうぎょ ÷ 50 + 2)の計算を行う
scoreboard players operation @s tmp1 = #2 Const
scoreboard players operation @s tmp1 *= @e[tag=flamethrowerarmor] movelevelstatus
scoreboard players operation @s tmp1 /= #5 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s tmp1 *= @e[tag=flamethrowerarmor] movepowerstatus
scoreboard players operation @s tmp1 *= @e[tag=flamethrowerarmor] moveattackstatus 
scoreboard players operation @s tmp1 /= @s SpDefence
scoreboard players operation @s tmp1 /= #50 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s nowHP -= @s tmp1

execute if score @s nowHP matches ..0 run tag @a[tag=punch,limit=1,sort=nearest] add killed

tag @a[tag=punch] remove punch










# ---




scoreboard players operation @s tmp1 = #2 Const
scoreboard players operation @s tmp1 *= @e[tag=bitearmor] movelevelstatus
scoreboard players operation @s tmp1 /= #5 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s tmp1 *= @e[tag=bitearmor] movepowerstatus
scoreboard players operation @s tmp1 *= @e[tag=bitearmor] moveattackstatus 
scoreboard players operation @s tmp1 /= @s Defence
scoreboard players operation @s tmp1 /= #50 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s nowHP -= @s tmp1
execute if score @s nowHP matches ..0 run tag @a[tag=punch,limit=1,sort=nearest] add killed
tag @a[tag=punch] remove punch

# ---

#((2 x 攻撃側のレベル ÷ 5 + 2) x 技の威力 x 攻撃側のこうげき ÷ 防御側のぼうぎょ ÷ 50 + 2)の計算を行う
scoreboard players operation @s tmp1 = #2 Const
scoreboard players operation @s tmp1 *= @e[tag=flamethrowerarmor] movelevelstatus
scoreboard players operation @s tmp1 /= #5 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s tmp1 *= @e[tag=flamethrowerarmor] movepowerstatus
scoreboard players operation @s tmp1 *= @e[tag=flamethrowerarmor] moveattackstatus 
scoreboard players operation @s tmp1 /= @s SpDefence
scoreboard players operation @s tmp1 /= #50 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s nowHP -= @s tmp1
execute if score @s nowHP matches ..0 run tag @a[tag=punch,limit=1,sort=nearest] add killed
tag @a[tag=punch] remove punch

# ---

scoreboard players operation @s tmp1 = #2 Const
scoreboard players operation @s tmp1 *= @e[tag=irontailarmor] movelevelstatus
scoreboard players operation @s tmp1 /= #5 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s tmp1 *= @e[tag=irontailarmor] movepowerstatus
scoreboard players operation @s tmp1 *= @e[tag=irontailarmor] moveattackstatus 
scoreboard players operation @s tmp1 /= @s Defence
scoreboard players operation @s tmp1 /= #50 Const
scoreboard players operation @s tmp1 += #2 Const
scoreboard players operation @s nowHP -= @s tmp1
execute if score @s nowHP matches ..0 run tag @a[tag=punch,limit=1,sort=nearest] add killed
tag @a[tag=punch] remove punch
