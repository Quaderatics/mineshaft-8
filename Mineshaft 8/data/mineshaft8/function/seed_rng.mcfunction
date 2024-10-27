# Utility function to seed the random number generator with a random value.
# The value comes from a randomly generated UUID; we only do this to initially
# seed the RNG because it requires the creation of an entity, which has a
# performance cost.

summon minecraft:armor_stand 8 -60 8 {Tags:["rng_seed"]}
execute store result score #rng random run data get entity @e[tag=rng_seed,limit=1] UUID[0]
kill @e[tag=rng_seed]
