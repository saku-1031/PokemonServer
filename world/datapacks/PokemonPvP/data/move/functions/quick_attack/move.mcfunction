scoreboard players set @s quick_attack_1 0
scoreboard players set @s quick_attack_2 0
execute as @s at @s anchored eyes positioned ^ ^ ^1 anchored feet run function vdv_raycast1:start_ray
execute as @s at @s anchored eyes positioned ^ ^ ^2 anchored feet run function vdv_raycast2:start_ray
execute at @s[scores={swing=1..,coolTime=0,quick_attack_1=0,quick_attack_2=1}] run summon minecraft:armor_stand ^ ^ ^1 {Tags:["quickattackarmor"]}
execute at @s[scores={swing=1..,coolTime=0,quick_attack_1=0,quick_attack_2=0}] run summon minecraft:armor_stand ^ ^ ^2 {Tags:["quickattackarmor"]}
execute at @s[scores={swing=1..,coolTime=0}] run playsound minecraft:pika master @s[scores={swing=1..,coolTime=0,Pokemon=25}] ~ ~1 ~ 1 1
execute unless score @s Pokemon matches 25 at @s[scores={swing=1..,coolTime=0}] run playsound minecraft:item.crossbow.shoot master @s[scores={swing=1..,coolTime=0}] ~ ~1 ~ 1 1
execute as @e[tag=quickattackarmor] at @e[tag=quickattackarmor] run particle minecraft:smoke ~ ~1 ~ 1 1 1 1 30
execute at @e[tag=quickattackarmor] run tp @s[scores={swing=1..,coolTime=0}] ~ ~2 ~
tag @s[scores={swing=1..,coolTime=0}] add quickattackplayer
scoreboard players operation @e[tag=quickattackarmor] moveattackstatus = @s[scores={swing=1..,coolTime=0}] Attack
scoreboard players operation @e[tag=quickattackarmor] movelevelstatus = @s[scores={swing=1..,coolTime=0}] Level
scoreboard players set @e[tag=quickattackarmor] movepowerstatus 20
tag @s[scores={swing=1..,coolTime=0}] add punch
execute as @s[scores={swing=1..,coolTime=0}] run scoreboard players set @s coolTime 10
execute as @s[scores={swing=1..}] run scoreboard players set @s swing 0
