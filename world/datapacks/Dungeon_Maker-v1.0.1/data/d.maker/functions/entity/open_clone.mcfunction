#ボタンを増やす
execute if entity @s[nbt={Facing:2b}] run summon item_frame ^ ^ ^-2 {Facing:3b,Invulnerable:1b,Tags:["D.Maker_Button","D.Maker_Open"],Item:{id:"minecraft:stone_bricks",Count:1b,tag:{display:{Name:'{"text":"Open"}'}}}}
execute if entity @s[nbt={Facing:3b}] run summon item_frame ^ ^ ^-2 {Facing:2b,Invulnerable:1b,Tags:["D.Maker_Button","D.Maker_Open"],Item:{id:"minecraft:stone_bricks",Count:1b,tag:{display:{Name:'{"text":"Open"}'}}}}
execute if entity @s[nbt={Facing:4b}] run summon item_frame ^ ^ ^-2 {Facing:5b,Invulnerable:1b,Tags:["D.Maker_Button","D.Maker_Open"],Item:{id:"minecraft:stone_bricks",Count:1b,tag:{display:{Name:'{"text":"Open"}'}}}}
execute if entity @s[nbt={Facing:5b}] run summon item_frame ^ ^ ^-2 {Facing:4b,Invulnerable:1b,Tags:["D.Maker_Button","D.Maker_Open"],Item:{id:"minecraft:stone_bricks",Count:1b,tag:{display:{Name:'{"text":"Open"}'}}}}
tag @s remove D.Maker_Open0