# Sets the executor's `level` score to the `level` score of `#set_level` and
# removes the `needs_number` tag

execute if entity @a[tag=debug] unless entity @s[tag=needs_number] run say Error: Called `set_level` on entity not tagged with `needs_number`
execute unless entity @s[tag=needs_number] run return fail

scoreboard players operation @s level = #set_level level
tag @s remove needs_number
