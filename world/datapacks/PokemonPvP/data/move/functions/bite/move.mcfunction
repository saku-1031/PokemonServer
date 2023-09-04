execute at @s[scores={swing=1..,coolTime=0}] run summon minecraft:armor_stand ^ ^ ^4 {Tags:["bitearmor"]}
execute as @e[tag=bitearmor] at @e[tag=bitearmor] run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 1
tag @s[scores={swing=1..,coolTime=0}] add biteplayer
scoreboard players operation @e[tag=bitearmor] moveattackstatus = @s[scores={swing=1..,coolTime=0}] Attack
scoreboard players operation @e[tag=bitearmor] movelevelstatus = @s[scores={swing=1..,coolTime=0}] Level
scoreboard players set @e[tag=bitearmor] movepowerstatus 30
tag @s[scores={swing=1..,coolTime=0}] add punch
execute as @s[scores={swing=1..,coolTime=0}] run scoreboard players set @s coolTime 40
execute as @s[scores={swing=1..}] run scoreboard players set @s swing 0
