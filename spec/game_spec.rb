require 'game'
require 'player'

describe Game do
  subject(:alfred) { Player.new('Alfred') }
  subject(:bruce) { Player.new('Bruce') }

  context 'hit points' do
    it 'should receive damage' do
      expect(alfred).to respond_to(:receive_damage)
    end

    it 'should receive damage' do
      expect(bruce).to receive(:receive_damage)
      Game.new.attack(bruce)
    end

    it 'should reduce when damage received' do
      expect { Game.new.attack(bruce) }.to change { bruce.hit_points }.by(-10)
    end
  end
end
