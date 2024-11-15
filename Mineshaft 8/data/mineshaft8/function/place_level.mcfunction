# Executes as the `level_placer` armor stand at the anchor point of the next
# level when the player is in range

say Placing next level

function mineshaft8:select_level

execute if entity @s[y_rotation=-90..90] run data modify storage mineshaft8:data place_args.rotation set value "none"
execute unless entity @s[y_rotation=-90..90] run data modify storage mineshaft8:data place_args.rotation set value "180"

function mineshaft8:clear_level
function mineshaft8:place_level_macro with storage mineshaft8:data place_args

scoreboard players operation #set_level level = @s level
execute as @e[type=minecraft:armor_stand] at @s if function mineshaft8:needs_number run function mineshaft8:set_level
execute if entity @s[tag=new_game] as @e[tag=level_committer] at @s if predicate mineshaft8:is_in_active_game run tag @s add new_game

kill @s
