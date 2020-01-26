def sign_in_and_play
  # visit '/sessions/new'
  # within("#session") do
  visit('/name_form')
  fill_in 'player_1', with: 'Charly'
  fill_in 'player_2', with: 'Kitty'
  # end
  click_button 'Submit'
end
