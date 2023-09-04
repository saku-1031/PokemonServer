execute as @a[predicate=core:401] run function move:flamethrower/move
execute as @a[predicate=core:2503] run function move:quick_attack/move
execute as @a[predicate=core:403] run function move:dragonpulse/move
execute as @a[scores={Pokemon=4}] run function move:quick_attack/damagecheck
execute as @a[scores={Pokemon=4}] run function move:flamethrower/damagecheck
execute as @a[scores={Pokemon=4}] run function move:dragonpulse/damagecheck
