feature 'game.erb' do
  scenario 'can view rock, paper, sciossor welcome page' do
    sign_in_and_play
    expect(page).to have_content("Welcome to Rock, Paper, Scissors!")
  end
end
