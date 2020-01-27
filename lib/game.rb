require_relative 'player'

class Game

  attr_accessor :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    player.receive_attack
  end

  def game_over?
    if @player_1.loser? == true || @player_2.loser? == true
      true
    else
      false
    end
  end
end
