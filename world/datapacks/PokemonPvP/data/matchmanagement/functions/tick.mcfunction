execute if score @s nowHP matches ..0 run function matchmanagement:died
execute as @a[scores={deathCounter=1..}] run tellraw @a {"selector":"@s","color":"red","extra":["が死亡しました"]}
execute as @a[scores={deathCounter=1..}] run scoreboard players set @s deathCounter 0
