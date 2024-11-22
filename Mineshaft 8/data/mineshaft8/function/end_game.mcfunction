# Executes as/at the `game_ender` armor stand when the player escapes

say Ending game

scoreboard players add #num_escapes value 1

data modify entity @n[tag=text_successful_escapes,predicate=mineshaft8:is_in_active_game] text set value \
  '{"text":"Successful escapes: ","color":"black","extra":[{"type":"score","score":{"name":"#num_escapes","objective":"value"}}]}'
