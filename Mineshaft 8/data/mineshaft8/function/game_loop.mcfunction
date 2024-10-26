# Executes as/at player every tick while game is running

execute as @e[tag=level_placer] at @s positioned ~ ~-4 ~ if entity @p[distance=..10] run function mineshaft8:place_level
execute as @e[tag=level_committer] at @s positioned ^8 ^4 ^12 if entity @p[distance=..3] run function mineshaft8:commit_level
execute as @e[tag=connector_placer] at @s if predicate {condition:"location_check",predicate:{position:{y:-2.0}}} positioned ^1 ^-1 ^ run function mineshaft8:place_connector
