# frozen_string_literal: true

require 'player'

describe Player do
  subject(:alfred) { Player.new('Alfred') }
  subject(:bruce) { Player.new('Bruce') }

  it 'returns its own #name' do
    expect(alfred.name).to eq 'Alfred'
  end

  it 'should initialize with the default value' do
    expect(alfred.hit_points).to eq described_class::DEFAULT_HP
  end
end
