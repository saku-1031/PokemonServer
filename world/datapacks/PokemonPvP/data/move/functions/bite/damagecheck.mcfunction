execute at @e[tag=bitearmor] as @e[tag=bitearmor] run execute as @a[distance=..3,tag=!biteplayer] run function move:bite/damagecount
tag @e[tag=bite] remove bite
tag @e[tag=biteplayer] remove biteplayer
kill @e[tag=bitearmor]
