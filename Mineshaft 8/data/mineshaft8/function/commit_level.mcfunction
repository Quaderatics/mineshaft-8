# Executes as/at the `level_committer` armor stand when the player is in range

say Committing level

scoreboard players operation @a level = @s level
execute as @a at @s run function mineshaft8:reset_player

tag @s add connector_placer
