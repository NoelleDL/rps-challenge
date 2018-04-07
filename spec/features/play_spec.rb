feature 'play.erb' do
  scenario 'player chooses rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("You chose: Rock")
  end

  scenario 'player chooses paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content("You chose: Paper")
  end

  scenario 'player chooses scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content("You chose: Scissors")
  end

  scenario 'computer chooses rock' do
    sign_in_and_play
    click_button 'Rock'
    allow(Computer).to receive(:computer_choice) { :rock }
  end
end
