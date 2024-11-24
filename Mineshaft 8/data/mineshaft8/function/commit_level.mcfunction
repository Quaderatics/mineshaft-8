# Executes as/at the `level_committer` armor stand when the player is in range

execute if entity @a[tag=debug] run say Committing level
execute if entity @a[tag=debug] if entity @s[tag=new_game] run say This is a new game

scoreboard players operation @a level = @s level
execute unless entity @s[tag=new_game] as @a at @s run function mineshaft8:reset_player

execute if data entity @s CustomName run function mineshaft8:mark_anomaly_found

tag @s add connector_placer
