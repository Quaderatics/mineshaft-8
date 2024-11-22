# Executes as the `level_committer` armor stand when the player enters an
# anomalous level

data modify storage mineshaft8:data mark_args.anomaly_name set from entity @s CustomName
execute store result score #is_new_anomaly value run function mineshaft8:mark_anomaly_found_macro with storage mineshaft8:data mark_args
execute if score #is_new_anomaly value matches 1 run scoreboard players add #num_anomalies_found value 1
