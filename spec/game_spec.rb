require 'game.rb'

describe Game do

  subject(:game) { described_class.new(computer, player) }
  let(:player) { double :player, name: 'Noelle', weapon: 'rock'}

  describe '#compare_hand' do

    before(:each) { allow(player.receive_hand(hand)).to receive(:weapon) { :rock }}

    it 'player wins if computer chooses scissors' do
      allow(computer.choice).to receive(:weapon) { :scissors }
      expect(game.compare_hand).to eq 'Noelle, you win'
    end
  end
end
