execute as @a[predicate=core:2501] run function move:thunderbolt/move
execute as @a[predicate=core:2502] run function move:iron_tail/move
execute as @a[predicate=core:2503] run function move:quick_attack/move
execute as @a[scores={Pokemon=25}] run function move:thunderbolt/damagecheck
execute as @a[scores={Pokemon=25}] run function move:quick_attack/damagecheck
execute as @a[scores={Pokemon=25}] run function move:iron_tail/damagecheck
