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

  describe '#attack' do
    it 'damages the other player\'s HP' do
      test_player.attack(dave)
      new_hp = DEFAULT_HIT_POINTS - MAX_HIT
      expect(dave.hit_points).to eq(new_hp)
    end
  end

  describe '#receive_attack' do
    it 'reduces the player\'s HP' do
      expect { test_player.receive_attack }.to change { test_player.hit_points }.by(-10)
    end
  end
end
