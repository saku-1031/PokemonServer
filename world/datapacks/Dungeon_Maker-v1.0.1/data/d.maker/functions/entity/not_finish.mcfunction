#こいつを置くとワールドのダンジョン額縁吹き飛ばす
tellraw @p ["",{"text":"\n"},{"text":"今はダンジョン建造をしていないようだ…\nYou are not in Dungeon construction, right?","color":"red"},{"text":"\n "}]

#音
playsound minecraft:ui.toast.challenge_complete player @p ~ ~ ~ 1 0
playsound minecraft:entity.witch.death neutral @p ~ ~ ~ 2 0

#ぱーちくる
particle minecraft:explosion ~ ~1 ~ 0 0 0 1 0
particle minecraft:lava ~ ~ ~ 0 0 0 0.5 50

#自壊
give @p armor_stand{display:{Name:'{"text":"Finish Construction","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"ダンジョンを完成させ、","color":"white","italic":false}','{"text":"各部のボタンを消去する。","color":"white","italic":false}']},Enchantments:[{}],EntityTag:{Silent:1b,Marker:1b,Invisible:1b,Tags:["D.Maker_Finish"]}} 1
kill @s
