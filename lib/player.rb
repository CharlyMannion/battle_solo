class Player
  attr_reader :hit_points
  DEFAULT_HIT_POINTS = 100

  def initialize
    @hit_points = DEFAULT_HIT_POINTS
  end
end
