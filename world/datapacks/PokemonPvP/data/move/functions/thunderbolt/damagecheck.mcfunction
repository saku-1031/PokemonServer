execute at @e[tag=thunderboltarmor] as @e[tag=thunderboltarmor] run execute as @a[distance=..3] run function move:thunderbolt/damagecount
tag @e[tag=thunderbolt] remove thunderbolt
kill @e[tag=thunderboltarmor]
