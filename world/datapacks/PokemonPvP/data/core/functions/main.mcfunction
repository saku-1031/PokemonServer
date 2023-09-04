execute as @a[scores={coolTime=1..}] run scoreboard players remove @s coolTime 1
execute as @a unless score @s PlayerID matches 0.. run function core:newin
execute as @a run function training:setconst/main
execute as @a run function matchmanagement:tick

#scoreboard objectives add const

execute unless entity @e[tag=uketuke,limit=1] run summon villager -90.52 0.50 30.51 {NoAI:1b,Rotation:[180F,0F],Tags:["uketuke"],CustomName:'{"text":"受付","color":"gray"}'}

#scoreboard players operation @s HP.raceValue *= @s 2

#各tickファンクションの実行
execute as @a[scores={Pokemon=1}] at @a[scores={Pokemon=1}] run function pokemon:bulbasaur/tick
execute as @a[scores={Pokemon=1}] at @a[scores={Pokemon=1}] run function pokemon:bulbasaur/tick
execute as @a[scores={Pokemon=1}] at @a[scores={Pokemon=1}] run function pokemon:bulbasaur/tick
execute as @a[scores={Pokemon=1}] at @a[scores={Pokemon=1}] run function pokemon:bulbasaur/tick
execute as @a[scores={Pokemon=4}] at @a[scores={Pokemon=4}] run function pokemon:charmander/tick
execute as @a[scores={Pokemon=25}] at @a[scores={Pokemon=25}] run function pokemon:pikachu/tick
execute as @a[scores={Pokemon=133}] at @a[scores={Pokemon=133}] run function pokemon:eevee/tick
execute as @a run function training:tick
