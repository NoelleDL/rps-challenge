feature 'game.erb' do
  scenario 'can view rock, paper, sciossor welcome page' do
    visit '/'
    fill_in 'name_input', with: 'Noelle'
    click_button 'Submit'
    expect(page).to have_content("Welcome to Rock, Paper, Scissors!")
  end
end
