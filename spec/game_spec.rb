require 'game'
require 'player'

describe Game do
  subject(:game) { Game.new }
  let(:player_kitty) { double :player }
  let(:player_jim) { double :player }

  describe '#attack' do
    it 'damages the other player\'s HP' do
      expect(player_jim).to receive(:receive_attack)
      game.attack(player_jim)
    end
  end

  describe '#player_1' do
    it 'creates a player object within game, for player 1' do
      game.set_player_1(player_kitty)
      expect(game.player_1).to be_a(Player)
    end
  end

  describe '#player_2' do
    # it 'creates a player object within game' do
    #   game.set_player_2(player_jim)
    #   expect(game.player_2).to eq(player_jim)
    # end
    it 'creates a player object within game' do
      game.set_player_2(player_jim)
      expect(game.player_2).to be_a(Player)
    end
  end
end
