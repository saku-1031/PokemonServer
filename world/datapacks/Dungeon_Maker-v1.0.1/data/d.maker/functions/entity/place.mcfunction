#アイテム
give @p armor_stand{display:{Name:'{"text":"Finish Construction","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"ダンジョンを完成させ、","color":"white","italic":false}','{"text":"各部のボタンを消去する。","color":"white","italic":false}']},Enchantments:[{}],EntityTag:{Silent:1b,Marker:1b,Invisible:1b,Tags:["D.Maker_Finish"]}} 1

#設置
setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-4,mode:"LOAD",posY:-1,sizeX:9,posZ:-4,integrity:1.0f,showair:0b,name:"d.maker:room",sizeY:6,sizeZ:9,showboundingbox:1b}
setblock ~ ~1 ~ redstone_block

#音
playsound minecraft:block.anvil.destroy block @a ~ ~ ~ 2 0.7
playsound minecraft:block.iron_door.close block @a ~ ~ ~ 2 1

#パーティクル
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
particle minecraft:poof ~ ~ ~ 1 1 1 0.5 100

#しばしば巻き込まれるのでテレポート
tp @a[distance=..5] @s
tellraw @a[distance=..5] [{"text":"\n部屋内の額縁を右クリックで建造\nRight-click Item Frames to construct\n"}]
#さくじょなのん
kill @s