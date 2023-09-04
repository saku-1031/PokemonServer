title @a times 0 20 0
title @a title {"text":"ポケモンバトルスタート","color":"red"}
effect clear @a
execute unless score 素早さ中心値 game matches 0.. run tellraw @a ["",{"text":"素早さ中心値が設定されていません。\n素早さ中心値を1000で始めます","color":"red"}]
execute unless score 素早さ中心値 game matches 0.. run scoreboard players set 素早さ中心値 game 1000
clear @a
gamemode adventure @a
execute as @a run tp @s ~ ~1 ~
effect give @a regeneration infinite 99 true
effect give @a saturation infinite 99 true
scoreboard players operation @a nowHP = @a HP
execute as @a[scores={Pokemon=1}] run function pokemon:bulbasaur/start
execute as @a[scores={Pokemon=4}] run function pokemon:charmander/start
execute as @a[scores={Pokemon=25}] run function pokemon:pikachu/start
execute as @a[scores={Pokemon=133}] run function pokemon:eevee/start
execute as @a run scoreboard players set @s coolTime 0
