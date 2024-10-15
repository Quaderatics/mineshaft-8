execute as @e[type=minecraft:armor_stand,tag=connector_generator] at @s run function testing:place_connector
execute at @p as @e[type=minecraft:armor_stand,tag=tunnel_generator,distance=..8] at @s run function testing:place_tunnel
execute at @p as @e[type=minecraft:armor_stand,tag=connector_reverser,distance=..2] at @s run function testing:reverse_connector
