execute at @e[tag=razorleafarmor] as @e[tag=razorleafarmor] run execute as @a[distance=..3,tag=!razorleafplayer] run function move:razorleaf/damagecount
tag @e[tag=razorleaf] remove razorleaf
tag @e[tag=razorleafplayer] remove razorleafplayer
kill @e[tag=razorleafarmor]
