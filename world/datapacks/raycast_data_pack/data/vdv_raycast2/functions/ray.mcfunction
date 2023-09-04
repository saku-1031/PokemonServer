#Check if an entity was detected.

execute if score #hit vdvcasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#vdv_raycast2:entities,tag=!vdvray,dx=0,sort=nearest] run function vdv_raycast:check_hit_entity

#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #vdv_raycast2:blocks run function vdv_raycast2:hit_block
scoreboard players add #distance vdvcasttemp 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..20 positioned ^ ^ ^0.1 run function vdv_raycast2:ray