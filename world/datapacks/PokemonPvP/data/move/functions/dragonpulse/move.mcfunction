execute at @s[scores={swing=1..,coolTime=0}] run summon minecraft:armor_stand ^ ^1 ^3 {Tags:["flamethrowerarmor"]}
execute at @s[scores={swing=1..,coolTime=0}] run playsound minecraft:entity.warden.sonic_boom master @s[scores={swing=1..,coolTime=0}] ~ ~1 ~ 10 1.3
execute at @s[scores={swing=1..,coolTime=0}] run particle minecraft:sonic_boom ^ ^1 ^1 0.2 0.2 0.2 0 10 force
execute at @s[scores={swing=1..,coolTime=0}] run particle minecraft:sonic_boom ^ ^1 ^2 0.2 0.2 0.2 0 10 force
execute at @s[scores={swing=1..,coolTime=0}] run particle minecraft:sonic_boom ^ ^1 ^3 0.2 0.2 0.2 0 10 force
execute at @s[scores={swing=1..,coolTime=0}] run particle minecraft:sonic_boom ^ ^1 ^4 0.2 0.2 0.2 0 10 force
execute at @s[scores={swing=1..,coolTime=0}] run particle minecraft:sonic_boom ^ ^1 ^5 0.2 0.2 0.2 0 10 force

scoreboard players operation @e[tag=flamethrowerarmor] moveattackstatus = @s[scores={swing=1..,coolTime=0}] SpAttack
scoreboard players operation @e[tag=flamethrowerarmor] movelevelstatus = @s[scores={swing=1..,coolTime=0}] Level
scoreboard players set @e[tag=flamethrowerarmor] movepowerstatus 40
tag @s[scores={swing=1..,coolTime=0}] add punch
execute as @s[scores={swing=1..,coolTime=0}] run scoreboard players set @s coolTime 43
execute as @s[scores={swing=1..}] run scoreboard players set @s swing 0
