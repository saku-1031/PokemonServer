scoreboard players set @s Level 100
summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}
execute store result score @s IvAttack run data get entity @e[tag=RNG,distance=..0.1,limit=1] UUID[0]
scoreboard players operation @s IvAttack %= #32 rng
kill @e[tag=RNG]
summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}
execute store result score @s IvDefence run data get entity @e[tag=RNG,distance=..0.1,limit=1] UUID[0]
scoreboard players operation @s IvDefence %= #32 rng
kill @e[tag=RNG]
summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}
execute store result score @s IvSpAttack run data get entity @e[tag=RNG,distance=..0.1,limit=1] UUID[0]
scoreboard players operation @s IvSpAttack %= #32 rng
kill @e[tag=RNG]
summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}
execute store result score @s IvSpDefence run data get entity @e[tag=RNG,distance=..0.1,limit=1] UUID[0]
scoreboard players operation @s IvSpDefence %= #32 rng
kill @e[tag=RNG]
summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}
execute store result score @s IvSpeed run data get entity @e[tag=RNG,distance=..0.1,limit=1] UUID[0]
scoreboard players operation @s IvSpeed %= #32 rng
kill @e[tag=RNG]
summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}
execute store result score @s IvHP run data get entity @e[tag=RNG,distance=..0.1,limit=1] UUID[0]
scoreboard players operation @s IvHP %= #32 rng
kill @e[tag=RNG]
#性格の指定
summon area_effect_cloud ~ ~ ~ {Tags:["RNG"]}
execute store result score @s character run data get entity @e[tag=RNG,distance=..0.1,limit=1] UUID[0]
scoreboard players operation @s character %= #26 rng
kill @e[tag=RNG]
#性格の値の設定
execute if score @s character matches 0 run scoreboard players set @s character 0
# 各種値の設定
scoreboard players set @s EvAttack 0
scoreboard players set @s EvDefence 0
scoreboard players set @s EvSpAttack 0
scoreboard players set @s EvSpDefence 0
scoreboard players set @s EvSpeed 0
scoreboard players set @s EvHP 0
scoreboard players set @s RvAttack 52
scoreboard players set @s RvDefence 43
scoreboard players set @s RvSpAttack 60
scoreboard players set @s RvSpDefence 50
scoreboard players set @s RvSpeed 65
scoreboard players set @s RvHP 39
scoreboard players set @s Pokemon 4


