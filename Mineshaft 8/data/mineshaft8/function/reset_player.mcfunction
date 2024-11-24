# Reset the executing player's inventory, effects, etc. between levels

execute if entity @a[tag=debug] run say Resetting

clear @s
effect clear @s
bossbar set mineshaft8:bossbar players
