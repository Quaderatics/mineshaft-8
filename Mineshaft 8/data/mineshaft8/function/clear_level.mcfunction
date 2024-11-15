# Executes at the anchor point of a level with rotation corresponding to the
# direction of the level

execute if entity @s[y_rotation=-90..90] run fill ~ ~ ~ ~15 ~13 ~47 air
execute unless entity @s[y_rotation=-90..90] run fill ~ ~ ~ ~-15 ~13 ~-47 air

function mineshaft8:clear_section_entities
