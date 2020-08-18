require './player'

@players = []

def start_game
  puts "Player 1 enter your name"
  player1_name = gets.chomp
  @player1 = Player.new(player1_name)
  @players.push(@player1)
  
  puts "Player 2 enter your name"
  player2_name = gets.chomp
  @player2 = Player.new(player2_name)
  @players.push(@player2)
end

def is_alive?(players)
  players.first.lives > 0 && players[1].lives > 0
end


# each player is asked a simple math question
def round
  @player = @players.first
  puts "---- NEW TURN -----"
  ask_question(@player)
  @players.rotate!

end

def correct_answer
  puts "YES! You are correct."
end

def wrong_answer(player)
  @player.lives -= 1
  puts "Seriously?! No!"
end

# dynamically generated to be addition for two numbers between 1 and 20
def ask_question(player)
  number_1 = rand(1..20)
  number_2 = rand(1..20)

  puts "#{@player.name}: What is #{number_1} + #{number_2}"
  answer = gets.chomp.to_i
  answer == number_1 + number_2 ? correct_answer : wrong_answer(player)
end


def status
  if @player1.lives > 0 && @player2.lives > 0
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3 "
  elsif @player1.lives > 0
    puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
    end_game
  else
    puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
    end_game
  end  
end

def end_game
  puts "---- GAME OVER -----"
  puts "Good bye!"
end

# lives remaining for each player. Determines whether the game continues
# status



