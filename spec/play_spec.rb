require './lib/play.rb'

describe Play do
  describe '#random' do
    it 'chooses rock, paper, scissors at random' do
      expect(subject.random).to eq('rock').or eq('scissors').or eq('paper')
    end
  end
end
