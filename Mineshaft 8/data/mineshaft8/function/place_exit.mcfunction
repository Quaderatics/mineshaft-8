# Executes as the `connector_placer` armor stand at the anchor point of the
# connector when the connector should lead to the exit

say Placing exit

execute if entity @s[y_rotation=-90..90] run place template mineshaft8:exit ~ ~ ~ none
execute unless entity @s[y_rotation=-90..90] run place template mineshaft8:exit ~ ~ ~ 180

scoreboard players operation #set_level level = @s level
execute as @e[tag=rear_level_sign] at @s if function mineshaft8:needs_number run function mineshaft8:write_sign

kill @s
