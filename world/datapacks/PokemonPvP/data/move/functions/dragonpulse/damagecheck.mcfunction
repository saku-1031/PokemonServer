execute at @e[tag=flamethrowerarmor] as @e[tag=flamethrowerarmor] run execute as @a[distance=..2] run function move:flamethrower/damagecount
tag @e[tag=flamethrower] remove flamethrower
kill @e[tag=flamethrowerarmor]
