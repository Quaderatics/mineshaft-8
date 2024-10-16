# Randomly select next tunnel (uniform distribution)
execute store result score #next_tunnel value run function testing:rng
scoreboard players operation #next_tunnel value %= #num_tunnels value
execute if score #next_tunnel value matches 0 run data modify storage testing:place_tunnel_args structure_name set value "testing:basis_tunnel"
execute if score #next_tunnel value matches 1 run data modify storage testing:place_tunnel_args structure_name set value "testing:anomalous_tunnel_1"
execute if score #next_tunnel value matches 2 run data modify storage testing:place_tunnel_args structure_name set value "testing:anomalous_tunnel_2"
execute if score #next_tunnel value matches 3 run data modify storage testing:place_tunnel_args structure_name set value "testing:anomalous_tunnel_3"
execute if score #next_tunnel value matches 4 run data modify storage testing:place_tunnel_args structure_name set value "testing:anomalous_tunnel_4"
execute if score #next_tunnel value matches 5 run data modify storage testing:place_tunnel_args structure_name set value "testing:anomalous_tunnel_5"
execute if score #next_tunnel value matches 6 run data modify storage testing:place_tunnel_args structure_name set value "testing:anomalous_tunnel_6"
execute if score #next_tunnel value matches 7 run data modify storage testing:place_tunnel_args structure_name set value "testing:anomalous_tunnel_7"
execute if score #next_tunnel value matches 8 run data modify storage testing:place_tunnel_args structure_name set value "testing:anomalous_tunnel_8"

# Place tunnel structure in the world
function testing:place_tunnel_macro with storage testing:place_tunnel_args
kill @s
