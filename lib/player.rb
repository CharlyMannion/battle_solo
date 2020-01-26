class Player
  attr_reader :hit_points, :name
  DEFAULT_HIT_POINTS = 100
  MAX_HIT = 10

  def initialize(name)
    @hit_points = DEFAULT_HIT_POINTS
    @name = name
  end

  def attack(player)
    player.receive_attack
  end

  def receive_attack
    @hit_points -= MAX_HIT
  end
end
