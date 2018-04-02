require 'player.rb'

describe Player do
  describe "#hand" do
    it 'hand method received rock, paper, or scissors' do
      expect(subject.receive_hand("rock")).to eql("rock")
    end
  end
end
