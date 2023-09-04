execute as @s run function training:pokemonbook
execute as @s run function training:evbook

# プレイヤーIDの付与
    scoreboard players add World PlayerID 1
    scoreboard players operation @s PlayerID = World PlayerID
