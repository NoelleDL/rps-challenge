feature 'visit homepage' do
  scenario 'can see name input field' do
    visit '/'
    expect(page).to have_field("name_input")
  end
end

feature 'Sign in' do
  scenario 'player is able to sign in' do
    sign_in_and_play
    expect(page).to have_content("Noelle")
  end
end
