execute at @s[scores={swing=1..,coolTime=0}] run summon minecraft:armor_stand ^ ^ ^4 {Tags:["shadowballarmor"]}
execute as @e[tag=shadowballarmor] at @e[tag=shadowballarmor] run particle minecraft:smoke ~ ~1 ~ 1 1 1 1 40
tag @s[scores={swing=1..,coolTime=0}] add shadowballplayer
scoreboard players operation @e[tag=shadowballarmor] moveattackstatus = @s[scores={swing=1..,coolTime=0}] SpAttack
scoreboard players operation @e[tag=shadowballarmor] movelevelstatus = @s[scores={swing=1..,coolTime=0}] Level
scoreboard players set @e[tag=shadowballarmor] movepowerstatus 40
tag @s[scores={swing=1..,coolTime=0}] add punch
execute as @s[scores={swing=1..,coolTime=0}] run scoreboard players set @s coolTime 40
execute as @s[scores={swing=1..}] run scoreboard players set @s swing 0
