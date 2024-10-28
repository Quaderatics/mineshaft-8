# Executes as/at the `level_committer` armor stand when the player is in range

say Committing level
tellraw @a ["level=",{"type":"score","score":{"name":"@s","objective":"level"}}]

scoreboard players operation @p level = @s level

tag @s add connector_placer
