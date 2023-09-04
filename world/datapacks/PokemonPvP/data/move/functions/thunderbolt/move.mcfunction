execute at @s[scores={swing=1..,coolTime=0}] run summon minecraft:armor_stand ^ ^ ^4 {Tags:["thunderboltarmor"]}
execute at @s[scores={swing=1..,coolTime=0}] run playsound minecraft:pika master @s[scores={swing=1..,coolTime=0}] ~ ~ ~ 1 1
execute as @e[tag=thunderboltarmor] at @e[tag=thunderboltarmor] run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["thunderbolt"]}
scoreboard players operation @e[tag=thunderboltarmor] moveattackstatus = @s[scores={swing=1..,coolTime=0}] Attack
scoreboard players operation @e[tag=thunderboltarmor] movelevelstatus = @s[scores={swing=1..,coolTime=0}] Level
scoreboard players set @e[tag=thunderboltarmor] movepowerstatus 45
tag @s[scores={swing=1..,coolTime=0}] add punch
execute as @s[scores={swing=1..,coolTime=0}] run scoreboard players set @s coolTime 30
execute as @s[scores={swing=1..}] run scoreboard players set @s swing 0
