effect give @a minecraft:saturation 1 0 true
execute if entity @p[tag=game_active] as @e[type=minecraft:armor_stand] at @s if predicate mineshaft8:is_in_active_game run function mineshaft8:game_loop
execute as @a[tag=game_active] at @s run particle minecraft:ash ~ ~ ~ 6 6 6 0 1
