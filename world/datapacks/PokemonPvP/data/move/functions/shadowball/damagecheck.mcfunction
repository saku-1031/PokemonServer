execute at @e[tag=shadowballarmor] as @e[tag=shadowballarmor] run execute as @a[distance=..3,tag=!shadowballplayer] run function move:shadowball/damagecount
tag @e[tag=shadowball] remove shadowball
tag @e[tag=shadowballplayer] remove shadowballplayer
kill @e[tag=shadowballarmor]
