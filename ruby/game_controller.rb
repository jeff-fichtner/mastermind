require_relative 'solution_generator'
require_relative 'color'
require_relative 'game'
require_relative 'game_view'

class GameController

  def self.run_game
    game = Game.new(SolutionGenerator.generate_solution)
    guess_count = 0
    until solved?(game) || guess_count == 10
      GameView.display_game_state(game.guesses)
      guess = clean(GameView.retrieve_guess)
      game.guesses[guess] = calculate_hint(game, guess)
      guess_count += 1
    end
    GameView.display_game_state(game.guesses, solved?(game))
  end


  private

  def self.calculate_hint game, guess
    hint = []
    dup_guess = guess.dup
    length = game.solution.length - 1

    (0..length).each do |i|
      if game.solution[i] == guess[i]
        hint << :a
        dup_guess[i] = nil
      end
    end

    (0..length).each do |i|
      if game.solution.include?(dup_guess[i])
        hint << :b
      end
    end

    hint
  end

  def self.solved? game
    if game.guesses.keys.last == game.solution
      return true
    end
    false
  end

  def self.clean input
    (4 - input.split(' ').length).times { input << " -----" }
    input.split(' ').map { |color| color.to_sym  }
  end
end


# add more logic for bad user input
# code-breaking algorithm
