require 'game'

describe Game do
  subject(:game) { Game.new }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'damages the other player\'s HP' do
      expect(player_2).to receive(:receive_attack)
      game.attack(player_2)
    end
  end
end
