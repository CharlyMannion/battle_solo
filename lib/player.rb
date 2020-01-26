class Player
  attr_reader :hit_points, :name
  DEFAULT_HIT_POINTS = 100

  def initialize(name)
    @hit_points = DEFAULT_HIT_POINTS
    @name = name
  end
end
