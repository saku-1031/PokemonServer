
#足場を生やす
execute if entity @s[tag=D.Maker_Ladder_Down] unless block ~ ~-6 ~ scaffolding if block ~ ~-7 ~ scaffolding run setblock ~ ~-6 ~ scaffolding

#階段を追加
execute if entity @s[tag=D.Maker_Corridor] positioned ^ ^ ^-2 if block ~ ~ ~ minecraft:stone_brick_wall run fill ^-1 ^-1 ^ ^1 ^2 ^ air

#塞がらないように
execute if entity @s[tag=D.Maker_Corridor] if block ^-2 ^ ^-2 minecraft:stone_bricks run fill ^-1 ^-1 ^-1 ^1 ^1 ^-1 air

#後ろがないと消える
execute unless block ^ ^ ^-1 cyan_terracotta run kill @s