# Executes as/at player every tick while game is running

execute as @e[tag=level_placer,distance=..10] at @s run function mineshaft8:place_level
execute as @e[tag=level_committer] at @s positioned ^ ^ ^ if entity @p[distance=..3] run function mineshaft8:commit_level
execute as @e[tag=connector_placer] at @s run function mineshaft8:place_connector
