execute at @e[tag=quickattackarmor] as @e[tag=quickattackarmor] run execute as @a[distance=..1,tag=!quickattackplayer] run function move:iron_tail/damagecount
tag @e[tag=quickattack] remove quickattack
tag @e[tag=quickattackplayer] remove quickattackplayer
kill @e[tag=quickattackarmor]
