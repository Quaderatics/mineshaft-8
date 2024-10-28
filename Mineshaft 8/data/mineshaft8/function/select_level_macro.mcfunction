# Subroutine of `select_level`
# Macro arguments:
# {index: int}

$say Selected anomalous level at index $(index)
$data modify storage mineshaft8:data place_args.structure_name set from storage mineshaft8:data anomalous_level_names[$(index)]
