describe Computer do
  describe '#computer_choice' do
    it 'randomly selects computer choice' do
      expect(subject.computer_choice).to eql('Rock').or eql('Paper').or eql('Scissors')
    end
  end
end
