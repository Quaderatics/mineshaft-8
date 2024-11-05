# Linear congruential generator:
# X_{n + 1} = (aX_n + c) mod m
# We use MINSTD where m = 2^31 - 1, a = 48271, and c = 0.

# If X_n == 0, then re-seed with a random UUID
execute if score #rng random matches 0 run function mineshaft8:seed_rng

# Compute recurrence relation
scoreboard players operation #rng random *= #rng_a value
scoreboard players operation #rng random += #rnc_c value
scoreboard players operation #rng random %= #rng_m value

# Return for convenience
return run scoreboard players get #rng random
