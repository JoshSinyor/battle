require 'game'
require 'player'

describe Game do
  subject(:alfred) { Player.new('Alfred') }
  subject(:bruce) { Player.new('Bruce') }
  subject = Game.new(:alfred, :bruce)
  it 'should initialize with two players' do
    subject = Game.new(:alfred, :bruce)
    expect(subject.player_1.name).to eq('alfred')
    expect(subject.player_2.name).to eq('bruce')
  end 


  context 'hit points' do
    it 'should receive damage' do
      expect(alfred).to respond_to(:receive_damage)
    end

    it 'should receive damage' do
      expect(bruce).to receive(:receive_damage)
      subject.attack(bruce)
    end

    it 'should reduce when damage received' do
      expect { subject.attack(bruce) }.to change { bruce.hit_points }.by(-10)
    end
  end
end
