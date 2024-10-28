# Executes as the `connector_placer` armor stand at the anchor point of the
# connector

say Placing connector

function mineshaft8:clear_section_entities

execute if entity @s[y_rotation=-90..90] run place template mineshaft8:connector ~ ~ ~ none
execute unless entity @s[y_rotation=-90..90] run place template mineshaft8:connector ~ ~ ~ 180

kill @s
