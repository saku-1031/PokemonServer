execute at @s[scores={swing=1..,coolTime=0}] run summon minecraft:armor_stand ^ ^ ^2 {Tags:["irontailarmor"]}
execute at @s[scores={swing=1..,coolTime=0}] run playsound minecraft:pika master @s[scores={swing=1..,coolTime=0}] ~ ~1 ~ 1 1
execute as @e[tag=irontailarmor] at @e[tag=irontailarmor] run particle minecraft:explosion ~ ~3 ~ 1 1 1 3 1
scoreboard players operation @e[tag=irontailarmor] moveattackstatus = @s[scores={swing=1..,coolTime=0}] Attack
scoreboard players operation @e[tag=irontailarmor] movelevelstatus = @s[scores={swing=1..,coolTime=0}] Level
scoreboard players set @e[tag=irontailarmor] movepowerstatus 50
tag @s[scores={swing=1..,coolTime=0}] add punch
execute as @s[scores={swing=1..,coolTime=0}] run scoreboard players set @s coolTime 40
execute as @s[scores={swing=1..}] run scoreboard players set @s swing 0
