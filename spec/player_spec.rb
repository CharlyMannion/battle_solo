require 'player'

describe Player do
  DEFAULT_HIT_POINTS = 100

  subject(:player) { described_class.new }

  describe '#initialize' do
    it 'should have default hit points' do
      expect(player.hit_points).to eq(DEFAULT_HIT_POINTS)
    end
  end
end
