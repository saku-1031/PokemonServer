scoreboard players operation @s SpeedAttribute = @s Speed
scoreboard players operation @s SpeedAttribute *= #10 Const
scoreboard players operation @s SpeedAttribute /= 素早さ中心値 game

execute if score 素早さ中心値 game matches ..100 run say @a 素早さ中心値が100以下です。1000に修正しました
execute if score 素早さ中心値 game matches ..100 run scoreboard players set 素早さ中心値 game 1000
execute if score 素早さ中心値 game matches 2500.. run say @a 素早さ中心値が2500以上です。1000に修正しました
execute if score 素早さ中心値 game matches 2500.. run scoreboard players set 素早さ中心値 game 1000

#SpeedAttributeの値を表示
execute as @a[scores={test=1..}] run tellraw @a {"score":{"name":"@s","objective":"SpeedAttribute"}}

execute if score @s SpeedAttribute matches ..6 run function training:speed/set/down/set
execute if score @s SpeedAttribute matches 7.. run function training:speed/set/up/set