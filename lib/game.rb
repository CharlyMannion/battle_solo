require_relative 'player'

class Game
  attr_accessor :player_1, :player_2

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @losing_player
  end

  def attack(player)
    player.receive_attack
  end

  def game_over?
    if @player_1.loser? || @player_2.loser?
      true
    else
      false
    end
  end

  def losing_player
    if @player_1.loser?
      @player_1
    elsif @player_2.loser?
      @player_2
    end
  end
end
