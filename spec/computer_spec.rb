require 'computer.rb'

describe Computer do
  describe '#choice' do
    it 'randomly selects computer choice' do
      expect(subject.choice).to eql('rock').or eql('paper').or eql('scissors')
    end
  end
end
