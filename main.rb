require './game'

start_game
while(is_alive?(@players)) do
  round
  status
end