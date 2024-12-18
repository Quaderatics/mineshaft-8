# Executes at the anchor point of a section (level or connector) with rotation
# corresponding to the direction of the section

# The volume defined by volume selectors (`dx,dy,dz`) automatically includes
# "the vector (1,1,1) added to the x-most y-most z-most corner" which makes
# things more complicated
# https://minecraft.wiki/w/Target_selectors#Selecting_targets_by_volume
execute if entity @s[y_rotation=-90..90] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!minecraft:player,tag=!unseen_text,dx=15,dy=13,dz=47] run function mineshaft8:remove_entity
execute if entity @s[y_rotation=-90..90] positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=unseen_text,dx=15,dy=13,dz=47] run tag @s remove unseen_text
execute unless entity @s[y_rotation=-90..90] positioned ~-15.5 ~-0.5 ~-47.5 as @e[type=!minecraft:player,tag=!unseen_text,dx=15,dy=13,dz=47] run function mineshaft8:remove_entity
execute unless entity @s[y_rotation=-90..90] positioned ~-15.5 ~-0.5 ~-47.5 as @e[tag=unseen_text,dx=15,dy=13,dz=47] run tag @s remove unseen_text
