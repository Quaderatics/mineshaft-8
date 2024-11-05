# Executes as the text displays in a newly placed connector (should be tagged
# with `needs_number`); sets the text to the `level` score of `#set_level` and
# removes the `needs_number` tag

function mineshaft8:set_level
data modify entity @s text set value '{"type":"score","score":{"name":"@s","objective":"level"},"color":"white"}'
scoreboard players reset @s level
