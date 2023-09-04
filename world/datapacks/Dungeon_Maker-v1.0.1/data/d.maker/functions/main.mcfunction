#がくぶち
execute as @e[type=item_frame,tag=D.Maker_Button,nbt=!{ItemRotation:0b}] at @s run function d.maker:entity/button_click
execute as @e[type=item_frame,tag=D.Maker_Button] at @s run function d.maker:entity/button_main

#設置
execute as @e[type=armor_stand,tag=D.Maker_Place] at @s run function d.maker:entity/place

#完成
execute if entity @e[type=item_frame,tag=D.Maker_Button] as @e[type=armor_stand,tag=D.Maker_Finish] at @s run function d.maker:entity/finish

#Not完成
execute unless entity @e[type=item_frame,tag=D.Maker_Button] as @e[type=armor_stand,tag=D.Maker_Finish] at @s run function d.maker:entity/not_finish

#Openボタンふやす
execute as @e[type=item_frame,tag=D.Maker_Open0] at @s if block ^ ^ ^-2 #d.maker:no_collision run function d.maker:entity/open_clone

#クラフト
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:stone_bricks",Count:1b},{Slot:1b,id:"minecraft:iron_bars",Count:1b},{Slot:2b,id:"minecraft:stone_bricks",Count:1b},{Slot:3b,id:"minecraft:iron_bars",Count:1b},{Slot:4b,id:"minecraft:ender_chest",Count:1b},{Slot:5b,id:"minecraft:iron_bars",Count:1b},{Slot:6b,id:"minecraft:stone_bricks",Count:1b},{Slot:7b,id:"minecraft:iron_bars",Count:1b},{Slot:8b,id:"minecraft:stone_bricks",Count:1b}]} run function d.maker:c.crafter/dungeon_maker
