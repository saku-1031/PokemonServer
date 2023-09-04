execute at @s[scores={swing=1..,coolTime=0}] run summon minecraft:armor_stand ^ ^ ^2 {Tags:["razorleafarmor"]}
execute as @e[tag=razorleafarmor] at @e[tag=razorleafarmor] run particle minecraft:composter ~ ~1 ~ 1 1 1 1 30
tag @s[scores={swing=1..,coolTime=0}] add razorleafplayer
scoreboard players operation @e[tag=razorleafarmor] moveattackstatus = @s[scores={swing=1..,coolTime=0}] Attack
scoreboard players operation @e[tag=razorleafarmor] movelevelstatus = @s[scores={swing=1..,coolTime=0}] Level
scoreboard players set @e[tag=razorleafarmor] movepowerstatus 23
tag @s[scores={swing=1..,coolTime=0}] add punch
execute as @s[scores={swing=1..,coolTime=0}] run scoreboard players set @s coolTime 50
execute as @s[scores={swing=1..}] run scoreboard players set @s swing 0
