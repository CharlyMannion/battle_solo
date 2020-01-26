require_relative 'player'

class Game

  attr_accessor :player_1, :player_2

  def attack(player)
    player.receive_attack
  end

  def set_player_1(player)
    @player_1 = player
  end

  def set_player_2(player_two)
    @player_2 = player_two
  end

end
