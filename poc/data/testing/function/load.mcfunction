scoreboard objectives add random dummy
scoreboard objectives add enable_placement dummy

execute unless score #rng random matches 0.. run scoreboard players set #rng random 0
scoreboard players set #rng_m random 2147483647
scoreboard players set #rng_a random 48271
scoreboard players set #rng_c random 0
