scoreboard objectives add random dummy
scoreboard objectives add value dummy
scoreboard objectives add level dummy
scoreboard objectives add zzdebug_next_level dummy

execute unless score #rng random matches 0.. run scoreboard players set #rng random 0
scoreboard players set #rng_m value 2147483647
scoreboard players set #rng_a value 48271
scoreboard players set #rng_c value 0

function mineshaft8:load_levels

execute unless score #num_anomalies_found value matches 0.. run scoreboard players set #num_anomalies_found value 0
execute unless score #num_escapes value matches 0.. run scoreboard players set #num_escapes value 0
