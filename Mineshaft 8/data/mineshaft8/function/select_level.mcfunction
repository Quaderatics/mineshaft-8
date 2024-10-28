# Subroutine of `place_level`
# Randomly chooses the next level and sets `place_args.structure_name` to its
# resource location

execute store result score #next_is_anomalous value if predicate mineshaft8:anomaly_chance

# Normal level
execute if score #next_is_anomalous value matches 0 run say Selected normal level
execute if score #next_is_anomalous value matches 0 run data modify storage mineshaft8:data place_args.structure_name set value "mineshaft8:normal_level"
execute if score #next_is_anomalous value matches 0 run return 0

# Anomalous level
say Selected anomalous level
execute store result score #index value run function mineshaft8:rng
scoreboard players operation #index value %= #num_anomalous_levels value
execute store result storage mineshaft8:data select_args.index int 1.0 run scoreboard players get #index value
function mineshaft8:select_level_macro with storage mineshaft8:data select_args
