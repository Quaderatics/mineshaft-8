# Subroutine of `place_level`
# Macro arguments:
# {structure_name: string, rotation: "none" | "180"}

$execute if entity @a[tag=debug] run say Placing $(structure_name) with rotation $(rotation)
$place template $(structure_name) ~ ~ ~ $(rotation)
