# Some anomalous levels spawn mobs, which emit smoke when they die; teleport
# far away before killing to avoid potentially confusing the player
execute unless entity @s[type=minecraft:armor_stand] run tp @s ~ ~-100 ~
kill @s
