execute if predicate training:1011 as @a[predicate=training:1011,scores={swing=1..}] run function training:menu/setev

execute as @s run function training:speed/tick

scoreboard players set @s totalev 0

scoreboard players operation @s totalev += @s EvAttack
scoreboard players operation @s totalev += @s EvDefence
scoreboard players operation @s totalev += @s EvHP
scoreboard players operation @s totalev += @s EvSpAttack
scoreboard players operation @s totalev += @s EvSpDefence
scoreboard players operation @s totalev += @s EvSpeed
