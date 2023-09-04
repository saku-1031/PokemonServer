scoreboard players reset @s nowHP
execute at @s run particle minecraft:cloud ~ ~ ~ 1 2 1 10 100
tellraw @a [{"selector":"@s","color":"blue"},{"text":"は","color":"red"},{"selector":"@a[tag=killed]","color":"green"},{"text":"に倒されました","color":"red"}]
gamemode spectator @s
spectate @a[tag=killed,limit=1] @s
tag @a remove killed
function core:fireworks/main