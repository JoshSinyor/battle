# frozen_string_literal: true

require 'player'

describe Player do
  let(:name) { double :name }

  it 'returns its own name' do
    subject = Player.new(:name)
    expect(subject.name).to eq :name
  end

end
