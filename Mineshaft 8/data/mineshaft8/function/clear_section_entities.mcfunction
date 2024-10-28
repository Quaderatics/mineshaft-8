# Executes at the anchor point of a section (level or connector) with rotation
# corresponding to the direction of the section

execute if entity @s[y_rotation=-90..90] run kill @e[type=!minecraft:player,dx=15,dy=13,dz=47]
execute unless entity @s[y_rotation=-90..90] run kill @e[type=!minecraft:player,dx=-15,dy=13,dz=-47]
