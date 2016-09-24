class Game
  attr_reader :solution
  attr_accessor :guesses

  def initialize solution
    @solution = solution
    @guesses = {}
  end
end
