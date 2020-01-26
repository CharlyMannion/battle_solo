require 'player'

describe Player do
  DEFAULT_HIT_POINTS = 100

  describe '#initialize' do
    it 'should have default hit points' do
      test_player = Player.new("Kitty")
      expect(test_player.hit_points).to eq(DEFAULT_HIT_POINTS)
    end
    it 'should set the name of the player at creation' do
      test_player = Player.new("Kitty")
      expect(test_player.name).to eq("Kitty")
    end
  end
end
