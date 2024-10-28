# Executes as the `level_placer` armor stand at the anchor point of the next
# level

function mineshaft8:select_level

execute if entity @s[y_rotation=-90..90] run data modify storage mineshaft8:data place_args.rotation set value "none"
execute unless entity @s[y_rotation=-90..90] run data modify storage mineshaft8:data place_args.rotation set value "180"

function mineshaft8:clear_section_entities
function mineshaft8:place_level_macro with storage mineshaft8:data place_args

kill @s
