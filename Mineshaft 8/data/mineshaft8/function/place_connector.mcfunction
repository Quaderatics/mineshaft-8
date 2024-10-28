# Executes as the `connector_placer` armor stand at the anchor point of the
# connector

say Placing connector
tellraw @a ["level=",{"type":"score","score":{"name":"@s","objective":"level"}}]

execute if entity @s[tag=resets_progress] run scoreboard players set #set_level level 8
execute unless entity @s[tag=resets_progress] run scoreboard players operation #set_level level = @s level
execute unless entity @s[tag=resets_progress] run scoreboard players remove #set_level level 1

function mineshaft8:clear_section_entities

execute if entity @s[y_rotation=-90..90] run place template mineshaft8:connector ~ ~ ~ none
execute unless entity @s[y_rotation=-90..90] run place template mineshaft8:connector ~ ~ ~ 180

execute as @e[tag=level_placer] at @s if function mineshaft8:needs_number run function mineshaft8:set_level

kill @s
