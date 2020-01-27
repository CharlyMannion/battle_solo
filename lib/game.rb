require_relative 'player'

class Game

  attr_accessor :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  # def initialize(player_class = Player)
    # @player_class = player_class
  end

  def attack(player)
    player.receive_attack
  end

  # def set_player_1(player)
  #   @player_1 = player
  # end
  #
  # def set_player_2(player_two)
  #   @player_2 = player_two
  # end

end
