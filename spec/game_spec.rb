require 'game'
require 'player'

describe Game do
  let(:player_kitty) { double :player, loser?: false }
  let(:player_jim) { double :player, loser?: false }
  subject(:game) { Game.new(player_kitty, player_jim) }
  let(:dead_player) { double :player, loser?: true }
  subject(:finished_game) { Game.new(player_kitty, dead_player) }


  describe '#initalize' do
    it 'sets player 1' do
      expect(game.player_1).to eq(player_kitty)
    end
    it 'sets player 2' do
      expect(game.player_2).to eq(player_jim)
    end
  end

  describe '#attack' do
    it 'damages the other player\'s HP' do
      expect(player_jim).to receive(:receive_attack)
      game.attack(player_jim)
    end
  end

  describe '#game_over?' do
    it 'returns false when no player is a loser' do
      expect(game.game_over?).to be false
    end
    it 'returns true when a player is a loser' do
      expect(finished_game.game_over?).to be true
    end
  end
end
