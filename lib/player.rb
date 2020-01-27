class Player
  attr_reader :hit_points, :name
  DEFAULT_HIT_POINTS = 100
  MAX_HIT = 10

  def initialize(name)
    @hit_points = DEFAULT_HIT_POINTS
    @name = name
  end

  def receive_attack
    @hit_points -= MAX_HIT
  end

  def loser?
    @hit_points == 0
  end
end
