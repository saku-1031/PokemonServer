
#後ろが壁ならガラスをレンガに
execute at @e[type=item_frame,tag=D.Maker_Corridor] positioned ^ ^ ^-1 unless block ^ ^ ^-1 #d.maker:no_collision run fill ^-1 ^-1 ^ ^1 ^1 ^ smooth_stone replace glass
execute at @e[type=item_frame,tag=D.Maker_Ladder_Up] positioned ^ ^ ^-1 unless block ^ ^ ^-1 #d.maker:no_collision run fill ^-1 ^-1 ^ ^1 ^1 ^ stone_bricks replace glass
execute at @e[type=item_frame,tag=D.Maker_Ladder_Down] positioned ^ ^ ^-1 unless block ^ ^ ^-1 #d.maker:no_collision run fill ^-1 ^-1 ^ ^1 ^1 ^ stone_bricks replace glass
execute at @e[type=item_frame,tag=D.Maker_Open] run fill ^-1 ^-1 ^-1 ^1 ^1 ^-1 smooth_stone replace glass

#こいつを置くとワールドのダンジョン額縁吹き飛ばす☆
kill @e[type=item_frame,tag=D.Maker_Button]
tellraw @a ["",{"text":"\n"},{"text":"ダンジョン建造が完了した！\nDungeon construction is over!","color":"gold"},{"text":"\n "}]

#音
execute at @a run playsound minecraft:ui.toast.challenge_complete player @p ~ ~ ~ 1 1
execute at @a run playsound minecraft:block.anvil.land player @p ~ ~ ~ 2 1

#ぱーちくる
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 0
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 50

#自壊
kill @s
