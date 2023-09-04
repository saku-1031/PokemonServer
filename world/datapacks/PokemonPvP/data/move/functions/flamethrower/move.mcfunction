execute at @s[scores={swing=1..,coolTime=0}] run summon minecraft:armor_stand ^ ^ ^5 {Tags:["flamethrowerarmor"]}
execute at @s[scores={swing=1..,coolTime=0}] run playsound minecraft:block.fire.ambient master @s[scores={swing=1..,coolTime=0}] ~ ~1 ~ 1 1
execute as @e[tag=flamethrowerarmor] at @e[tag=flamethrowerarmor] run particle minecraft:flame ~ ~3 ~ 3 1 3 3 50 force
scoreboard players operation @e[tag=flamethrowerarmor] moveattackstatus = @s[scores={swing=1..,coolTime=0}] SpAttack
scoreboard players operation @e[tag=flamethrowerarmor] movelevelstatus = @s[scores={swing=1..,coolTime=0}] Level
scoreboard players set @e[tag=flamethrowerarmor] movepowerstatus 60
tag @s[scores={swing=1..,coolTime=0}] add punch
execute as @s[scores={swing=1..,coolTime=0}] run scoreboard players set @s coolTime 35
execute as @s[scores={swing=1..}] run scoreboard players set @s swing 0
