# Executes as/at each armor stand in the active game session every tick

execute if entity @s[tag=minecart_mount] run ride @e[type=minecraft:minecart,distance=..4,limit=1] mount @s
execute if entity @s[tag=furnace_minecart_mount] run ride @e[type=minecraft:furnace_minecart,distance=..4,limit=1] mount @s

execute if entity @s[tag=level_placer] positioned ~ ~-4 ~ if entity @p[distance=..10] at @s positioned ^9 ^-8.5 ^8 run function mineshaft8:place_level
execute if entity @s[tag=level_fixer] run function mineshaft8:fix_level
execute if entity @s[tag=level_committer] positioned ^8 ^4 ^12 if entity @p[distance=..3] at @s run function mineshaft8:commit_level
execute if entity @s[tag=connector_placer] positioned ^1 ^-0.5 ^ run function mineshaft8:place_connector

execute as @e[type=armor_stand] at @s if function mineshaft8:needs_number run say Error: Entity has `needs_number` at end of game loop
