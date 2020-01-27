require 'player'

describe Player do
  DEFAULT_HIT_POINTS = 100
  MAX_HIT = 10
  subject(:test_player) { Player.new("Kitty")}
  subject(:dave) { Player.new("Dave")}


  describe '#initialize' do
    it 'should have default hit points' do
      expect(test_player.hit_points).to eq(DEFAULT_HIT_POINTS)
    end
    it 'should set the name of the player at creation' do
      expect(test_player.name).to eq("Kitty")
    end
  end

  describe '#receive_attack' do
    it 'reduces the player\'s HP' do
      expect { test_player.receive_attack }.to change { test_player.hit_points }.by(-10)
    end
  end

  describe '#lose' do
    it 'loses the game when the player\'s hit points are 0' do
      10.times { test_player.receive_attack }
      expect(test_player.loser?).to eq(true)
    end
  end
end
