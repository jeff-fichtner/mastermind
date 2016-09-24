module SolutionGenerator
	
  def self.generate_solution
    colors = [:yellow, :blue, :green, :red, :cyan, :light_magenta]
    solution = []

    until solution.length == 4
      pick = colors.sample
      solution << colors.delete(pick)
    end

    solution
  end
end

# initiate different levels of difficulty
