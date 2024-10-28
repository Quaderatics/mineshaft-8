scoreboard objectives add random dummy
scoreboard objectives add value dummy
scoreboard objectives add level dummy

execute unless score #rng random matches 0.. run scoreboard players set #rng random 0
scoreboard players set #rng_m value 2147483647
scoreboard players set #rng_a value 48271
scoreboard players set #rng_c value 0

scoreboard players set #num_anomalous_levels value 1
data modify storage mineshaft8:data anomalous_level_names set value ["mineshaft8:anomaly_exit_swapped"]
