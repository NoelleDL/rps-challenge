feature 'visit homepage' do
  scenario 'can see name input field' do
    visit '/'
    expect(page).to have_field("name_input")
  end
end

feature 'Sign in' do
  scenario 'player is able to sign in' do
    visit '/'
    fill_in 'name_input', with: 'Noelle'
    click_button 'Submit'
    expect(page).to have_content("Noelle")
  end
end
