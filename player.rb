# creates an object with player class and initializes with 3 lives
class Player
  attr_reader :name
  attr_accessor :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

end 


# initialized as 3 and is reduced by 1 everytime the player answers a question wrong
# lives