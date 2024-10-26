# Linear congruential generator:
# X_{n + 1} = (aX_n + c) mod m
# We use MINSTD where m = 2^31 - 1, a = 48271, and c = 0.

# If X_n == 0, then re-seed with a player UUID
execute if score #rng random matches 0 store result score #rng random run data get entity @r UUID[0]

# Compute recurrence relation
scoreboard players operation #rng random *= #rng_a value
scoreboard players operation #rng random += #rnc_c value
execute if score #rng random matches ..-1 run scoreboard players operation #rng random += #rng_m value

# Return for convenience
return run scoreboard players get #rng random
