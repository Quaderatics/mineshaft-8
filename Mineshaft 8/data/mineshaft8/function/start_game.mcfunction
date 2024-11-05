# Executes as/at the `game_starter` armor stand when the player starts a run or
# dies and needs to respawn

say Starting run

execute as @e[predicate=mineshaft8:is_in_active_game] at @s run function mineshaft8:remove_entity

execute positioned ~ -3 ~ run place template mineshaft8:connector ~ ~ ~ none
scoreboard players set #set_level level 8
execute as @e[tag=level_placer] at @s if function mineshaft8:needs_number run function mineshaft8:set_level
execute as @e[tag=forward_level_sign] at @s if function mineshaft8:needs_number run function mineshaft8:write_sign
execute as @e[tag=rear_level_sign] at @s if function mineshaft8:needs_number run function mineshaft8:write_sign

execute as @a at @s run function mineshaft8:reset_player
scoreboard players set @a level 8
effect give @a minecraft:blindness 1 0 true
tp @a ~7.5 ~7 ~17 0 0
execute as @a unless entity @s[tag=debug] run tag @s add game_active
