# Subroutine of `mark_anomaly_found`
# Macro arguments:
# {anomaly_name: string}

$execute if entity @a[tag=debug] run say anomaly_name=$(anomaly_name)

$execute store success score #is_present value run data get storage mineshaft8:data encountered_anomalies.$(anomaly_name)
$data modify storage mineshaft8:data encountered_anomalies.$(anomaly_name) set value true

execute if score #is_present value matches 0 run return 1
return 0
