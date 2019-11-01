require 'player'

describe Player do
  subject(:player_1) { Player.new('Odin') }
  subject(:player_2) { Player.new('Ralph')}

  describe '#name' do
    it 'returns name when "name" is called' do
      expect(player_1.name).to eq 'Odin'
    end
  end

  describe '#hit_points' do
    it 'returns hp when called' do
      expect(player_1.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#reduce_hp' do
    it 'reduces players hp' do
      expect { player_1.reduce_hp }.to change { player_1.hp }.by(-10)
    end
  end
end
