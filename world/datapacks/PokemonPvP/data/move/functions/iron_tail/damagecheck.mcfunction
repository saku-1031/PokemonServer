execute at @e[tag=irontailarmor] as @e[tag=irontailarmor] run execute as @a[distance=..1] run function move:iron_tail/damagecount
tag @e[tag=irontail] remove irontail
kill @e[tag=irontailarmor]
