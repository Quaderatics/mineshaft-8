# Subroutine of `place_level`
# Randomly chooses the next level and sets `place_args.structure_name` to its
# resource location

execute if entity @s[tag=new_game] run say This is a new game

execute store result score #next_is_anomalous value if predicate mineshaft8:anomaly_chance
execute if entity @s[tag=new_game] run scoreboard players set #next_is_anomalous value 0
execute if score @p zzdebug_next_level matches -1 run scoreboard players set #next_is_anomalous value 0
execute if score @p zzdebug_next_level matches 0.. run scoreboard players set #next_is_anomalous value 1

# Normal level
execute if score #next_is_anomalous value matches 0 run say Selected normal level
execute if score #next_is_anomalous value matches 0 run data modify storage mineshaft8:data place_args.structure_name set value "mineshaft8:normal_level"
execute if score #next_is_anomalous value matches 0 run return 0

# Anomalous level
say Selected anomalous level
execute store result score #index value run function mineshaft8:rng
execute if score @p zzdebug_next_level matches 0.. run scoreboard players operation #index value = @p zzdebug_next_level
scoreboard players operation #index value %= #num_anomalous_levels value
execute store result storage mineshaft8:data select_args.index int 1.0 run scoreboard players get #index value
function mineshaft8:select_level_macro with storage mineshaft8:data select_args
