# Executes as/at the `game_starter` armor stand when the player starts a run or
# dies and needs to respawn

execute if entity @a[tag=debug] run say Starting run

function mineshaft8:seed_rng
function mineshaft8:reset_available_anomalies

execute as @e[predicate=mineshaft8:is_in_active_game] at @s run function mineshaft8:remove_entity

execute positioned ~ -3 ~ run place template mineshaft8:connector ~ ~ ~ none
scoreboard players set #set_level level 8
execute as @e[tag=level_placer] at @s if function mineshaft8:needs_number run function mineshaft8:set_level
execute as @e[tag=forward_level_sign] at @s if function mineshaft8:needs_number run function mineshaft8:write_sign
execute as @e[tag=rear_level_sign] at @s if function mineshaft8:needs_number run function mineshaft8:write_sign

execute as @a at @s run function mineshaft8:reset_player
scoreboard players set @a level 8
effect give @a minecraft:blindness 4 0 true
tp @a ~7.5 ~7 ~17 0 0
summon minecraft:text_display ~7.5 ~8.5 ~19 {text:'"Mineshaft 8"',brightness:{block:15,sky:15},Rotation:[-180f,0f],Tags:["title_text","unseen_text"]}
summon minecraft:text_display ~7.5 ~8.25 ~19 {text: '"By Quaderatics"',brightness:{block:15,sky:15},Rotation:[-180f,0f],Tags:["title_text","unseen_text"],transformation:{left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]}}
execute as @a unless entity @s[tag=debug] run tag @s add game_active
execute as @e[type=minecraft:armor_stand] at @s if predicate mineshaft8:is_in_active_game run tag @s add new_game

execute as @e[tag=game_over_placer] at @s positioned ~ -3 ~ run function mineshaft8:clear_section_entities
execute as @e[tag=game_over_placer] at @s positioned ~ -3 ~ run place template mineshaft8:game_over_scene ~ ~ ~ none

# Activate conditional chain command block in-world
return 0
