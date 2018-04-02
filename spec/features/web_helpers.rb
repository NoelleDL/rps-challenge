def sign_in_and_play
  visit '/'
  fill_in 'name_input', with: 'Noelle'
  click_button 'Submit'
end
