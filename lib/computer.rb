class Computer
attr_reader :weapon

  def computer_choice
    @weapon = ['Rock', 'Paper', 'Scissors'].sample
  end
end
