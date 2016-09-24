class Color
  attr_reader :color
  attr_accessor :status, :position

  def initialize
    @status = :untried
    @position = nil
    @color = self.class::COLOR
  end
end


class Yellow < Color
  COLOR = :yellow
end

class Blue < Color
  COLOR = :blue
end

class Green < Color
  COLOR = :green
end

class Red < Color
  COLOR = :red
end

class Pink < Color
  COLOR = :magenta
end

class Cyan < Color
  COLOR = :cyan
end

class LightPink < Color
  COLOR = :light_magenta
end

class White < Color
  COLOR = :white
end
