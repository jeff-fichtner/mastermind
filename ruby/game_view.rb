require 'colorize'

class GameView

  def self.retrieve_guess
    puts "\nPlease enter a guess:"
    colors = [:yellow, :blue, :green, :red, :cyan, :light_magenta]
    colors.map { |color| " o ".colorize(color) }.each { |color| print color }
    puts
    gets.chomp
  end

  def self.display_game_state guesses, state = nil
    output = String.new
    output << display_guesses(guesses)

    if state == :loss
      output << display_loss
      output << display_solution(guesses)
    end

    if state == :solution
      output << display_solution(guesses)
    end

    print output
  end

  private
  def self.display_guesses guesses
    output = String.new
    output << "\n"
    last = guesses.length - 1

    (0..last).each do |index|
      if index == last
        output << "\n"
      end
      guess = guesses.keys[index]
      output << "#{index + 1}: "

      guess.each do |color|
        spacing_fix = String.new
        spacing_fix << "#{color} "
        (8 - spacing_fix.length).times { spacing_fix << " " }
        output << spacing_fix.colorize(color)
      end

      output << "|"
      hint = guesses[guess]
      hint.each { |mark| output << " #{mark}" }
      output << "\n"
    end
    output
  end

  def self.display_solution guesses
    output = String.new
    solution = guesses.keys.last

    43.times { output << "-" }
    output << "\n   "

    solution.each do |color|
      spacing_fix = String.new
      spacing_fix << "#{color} "
      (8 - spacing_fix.length).times { spacing_fix << " " }
      output << spacing_fix.colorize(color)
    end

    output << "| Solution\n\n"
    output
  end

  def self.display_loss
    "Sorry, the correct solution was:\n"
  end
end

# add colors/expand design
# possibly reset screen?
