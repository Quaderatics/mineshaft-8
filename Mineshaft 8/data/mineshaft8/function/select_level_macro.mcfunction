# Subroutine of `select_level`
# Macro arguments:
# {index: int}

$execute if entity @a[tag=debug] run say Selected anomalous level at index $(index)
$data modify storage mineshaft8:data place_args.structure_name set from storage mineshaft8:data available_anomalies[$(index)]
$execute unless score @p zzdebug_next_level matches 0.. run data remove storage mineshaft8:data available_anomalies[$(index)]
execute unless score @p zzdebug_next_level matches 0.. run scoreboard players remove #num_available_anomalies value 1
execute unless score @p zzdebug_next_level matches 0.. if score #num_available_anomalies value matches ..0 run function mineshaft8:reset_available_anomalies
