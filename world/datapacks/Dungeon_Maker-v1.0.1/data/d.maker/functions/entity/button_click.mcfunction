#サウンドなど
playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1 0.7
playsound minecraft:entity.zombie.attack_wooden_door block @a ~ ~ ~ 2 1
playsound minecraft:block.stone.break block @a ~ ~ ~ 2 0.8
particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10
particle minecraft:smoke ~ ~ ~ 0 0 0 0.05 1

#廊下
#部屋
execute if entity @s[tag=D.Maker_Corridor] run execute positioned ^ ^-1 ^-11 positioned ~3 ~-1 ~3 align xyz run kill @e[type=item_frame,dx=-6,dy=4,dz=-6]
execute if entity @s[tag=D.Maker_Corridor] run setblock ^ ^-2 ^-11 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-4,mode:"LOAD",posY:0,sizeX:9,posZ:-4,integrity:1.0f,showair:0b,name:"d.maker:room",sizeY:6,sizeZ:9,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Corridor] run setblock ^ ^-1 ^-11 minecraft:redstone_block
#廊下
execute if entity @s[tag=D.Maker_Corridor,nbt={Facing:2b}] run setblock ^ ^-2 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"COUNTERCLOCKWISE_90",posX:-2,mode:"LOAD",posY:0,sizeX:7,posZ:6,integrity:1.0f,showair:0b,name:"d.maker:corridor",sizeY:6,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Corridor,nbt={Facing:3b}] run setblock ^ ^-2 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"CLOCKWISE_90",posX:2,mode:"LOAD",posY:0,sizeX:7,posZ:-6,integrity:1.0f,showair:0b,name:"d.maker:corridor",sizeY:6,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Corridor,nbt={Facing:4b}] run setblock ^ ^-2 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"CLOCKWISE_180",posX:6,mode:"LOAD",posY:0,sizeX:7,posZ:2,integrity:1.0f,showair:0b,name:"d.maker:corridor",sizeY:6,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Corridor,nbt={Facing:5b}] run setblock ^ ^-2 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-6,mode:"LOAD",posY:0,sizeX:7,posZ:-2,integrity:1.0f,showair:0b,name:"d.maker:corridor",sizeY:6,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Corridor] run setblock ^ ^-1 ^-1 redstone_block
#階段とつながったら穴が開く
execute if entity @s[tag=D.Maker_Corridor] if block ^ ^-2 ^-6 minecraft:stone_brick_stairs run fill ^-1 ^ ^1 ^1 ^-3 ^ air

#かいだん(のぼり)
#部屋
execute if entity @s[tag=D.Maker_Stairs_Up] positioned ^ ^4 ^-11 positioned ~3 ~-1 ~3 align xyz run kill @e[type=item_frame,dx=-6,dy=5,dz=-6]
execute if entity @s[tag=D.Maker_Stairs_Up] run setblock ^ ^2 ^-11 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-4,mode:"LOAD",posY:0,sizeX:9,posZ:-4,integrity:1.0f,showair:0b,name:"d.maker:room",sizeY:6,sizeZ:9,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Up] run setblock ^ ^3 ^-11 minecraft:redstone_block
#階段
execute if entity @s[tag=D.Maker_Stairs_Up,nbt={Facing:2b}] run setblock ^ ^-3 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"COUNTERCLOCKWISE_90",posX:-2,mode:"LOAD",posY:0,sizeX:7,posZ:6,integrity:1.0f,showair:0b,name:"d.maker:stairs",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Up,nbt={Facing:3b}] run setblock ^ ^-3 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"CLOCKWISE_90",posX:2,mode:"LOAD",posY:0,sizeX:7,posZ:-6,integrity:1.0f,showair:0b,name:"d.maker:stairs",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Up,nbt={Facing:4b}] run setblock ^ ^-3 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"CLOCKWISE_180",posX:6,mode:"LOAD",posY:0,sizeX:7,posZ:2,integrity:1.0f,showair:0b,name:"d.maker:stairs",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Up,nbt={Facing:5b}] run setblock ^ ^-3 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-6,mode:"LOAD",posY:0,sizeX:7,posZ:-2,integrity:1.0f,showair:0b,name:"d.maker:stairs",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Up] run setblock ^ ^-2 ^-1 redstone_block
#階段(オーバーレイ)
execute if entity @s[tag=D.Maker_Stairs_Up,nbt={Facing:2b}] run setblock ^ ^-3 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"COUNTERCLOCKWISE_90",posX:-2,mode:"LOAD",posY:0,sizeX:7,posZ:6,integrity:1.0f,showair:0b,name:"d.maker:stairs_over",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Up,nbt={Facing:3b}] run setblock ^ ^-3 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"CLOCKWISE_90",posX:2,mode:"LOAD",posY:0,sizeX:7,posZ:-6,integrity:1.0f,showair:0b,name:"d.maker:stairs_over",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Up,nbt={Facing:4b}] run setblock ^ ^-3 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"CLOCKWISE_180",posX:6,mode:"LOAD",posY:0,sizeX:7,posZ:2,integrity:1.0f,showair:0b,name:"d.maker:stairs_over",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Up,nbt={Facing:5b}] run setblock ^ ^-3 ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-6,mode:"LOAD",posY:0,sizeX:7,posZ:-2,integrity:1.0f,showair:0b,name:"d.maker:stairs_over",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Up] run setblock ^ ^-2 ^-1 redstone_block

#かいだん(くだり)
#部屋
execute if entity @s[tag=D.Maker_Stairs_Down] positioned ^ ^-6 ^-11 positioned ~3 ~-1 ~3 align xyz run kill @e[type=item_frame,dx=-6,dy=5,dz=-6]
execute if entity @s[tag=D.Maker_Stairs_Down] run setblock ^ ^-6 ^-11 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-4,mode:"LOAD",posY:0,sizeX:9,posZ:-4,integrity:1.0f,showair:0b,name:"d.maker:room",sizeY:6,sizeZ:9,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Down] run setblock ^ ^-5 ^-11 minecraft:redstone_block
#階段
execute if entity @s[tag=D.Maker_Stairs_Down,nbt={Facing:2b}] run setblock ^ ^ ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"CLOCKWISE_90",posX:2,mode:"LOAD",posY:-6,sizeX:7,posZ:0,integrity:1.0f,showair:0b,name:"d.maker:stairs",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Down,nbt={Facing:3b}] run setblock ^ ^ ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"COUNTERCLOCKWISE_90",posX:-2,mode:"LOAD",posY:-6,sizeX:7,posZ:0,integrity:1.0f,showair:0b,name:"d.maker:stairs",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Down,nbt={Facing:4b}] run setblock ^ ^ ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:-2,integrity:1.0f,showair:0b,name:"d.maker:stairs",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Down,nbt={Facing:5b}] run setblock ^ ^ ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"CLOCKWISE_180",posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:2,integrity:1.0f,showair:0b,name:"d.maker:stairs",sizeY:11,sizeZ:5,showboundingbox:1b}
#エグゼキューティング・ストラクチャー！
execute if entity @s[tag=D.Maker_Stairs_Down] run setblock ^ ^1 ^-1 redstone_block
#階段上書き
execute if entity @s[tag=D.Maker_Stairs_Down,nbt={Facing:2b}] run setblock ^ ^ ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"CLOCKWISE_90",posX:2,mode:"LOAD",posY:-6,sizeX:7,posZ:0,integrity:1.0f,showair:0b,name:"d.maker:stairs_over",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Down,nbt={Facing:3b}] run setblock ^ ^ ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"COUNTERCLOCKWISE_90",posX:-2,mode:"LOAD",posY:-6,sizeX:7,posZ:0,integrity:1.0f,showair:0b,name:"d.maker:stairs_over",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Down,nbt={Facing:4b}] run setblock ^ ^ ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:-2,integrity:1.0f,showair:0b,name:"d.maker:stairs_over",sizeY:11,sizeZ:5,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Stairs_Down,nbt={Facing:5b}] run setblock ^ ^ ^-1 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"CLOCKWISE_180",posX:0,mode:"LOAD",posY:-6,sizeX:7,posZ:2,integrity:1.0f,showair:0b,name:"d.maker:stairs_over",sizeY:11,sizeZ:5,showboundingbox:1b}
#ストラクチャー...起動ッ！!
execute if entity @s[tag=D.Maker_Stairs_Down] run setblock ^ ^1 ^-1 redstone_block

#はしご(のぼり)
#部屋
execute if entity @s[tag=D.Maker_Ladder_Up] positioned ~3 ~2 ~3 align xyz run kill @e[type=item_frame,dx=-6,dy=5,dz=-6]
execute if entity @s[tag=D.Maker_Ladder_Up] run setblock ~ ~1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-4,mode:"LOAD",posY:0,sizeX:9,posZ:-4,integrity:1.0f,showair:0b,name:"d.maker:room",sizeY:6,sizeZ:9,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Ladder_Up] run setblock ~ ~2 ~ minecraft:redstone_block
#はしご
execute if entity @s[tag=D.Maker_Ladder_Up] run setblock ~1 ~-4 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:3,posZ:-1,integrity:1.0f,showair:0b,name:"d.maker:ladder",sizeY:6,sizeZ:3,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Ladder_Up] run setblock ~1 ~-3 ~ redstone_block

#はしご(くだり)
#部屋
execute if entity @s[tag=D.Maker_Ladder_Down] positioned ~3 ~-6 ~3 align xyz run kill @e[type=item_frame,dx=-6,dy=5,dz=-6]
execute if entity @s[tag=D.Maker_Ladder_Down] run setblock ~ ~-6 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-4,mode:"LOAD",posY:0,sizeX:9,posZ:-4,integrity:1.0f,showair:0b,name:"d.maker:room",sizeY:6,sizeZ:9,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Ladder_Down] run setblock ~ ~-5 ~ minecraft:redstone_block
#はしご
execute if entity @s[tag=D.Maker_Ladder_Down] run setblock ~1 ~-6 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"Yavu_Craft",rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:3,posZ:-1,integrity:1.0f,showair:0b,name:"d.maker:ladder",sizeY:6,sizeZ:3,showboundingbox:1b}
execute if entity @s[tag=D.Maker_Ladder_Down] run setblock ~1 ~-5 ~ redstone_block

#オープンさん
execute if entity @s[tag=D.Maker_Open] run fill ^1 ^1 ^-1 ^-1 ^-1 ^-1 air 

#起動後削除
kill @s
