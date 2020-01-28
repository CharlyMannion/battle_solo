def sign_in_and_play
  visit('/name_form')
  fill_in 'player_1', with: 'Charly'
  fill_in 'player_2', with: 'Kitty'
  # end
  click_button 'Submit'
end

def attack_player_two
  visit('/name_form')
  fill_in 'player_1', with: 'Charly'
  fill_in 'player_2', with: 'Kitty'
  click_button 'Submit'
  click_button "Attack"
end

def attack
  click_button "Attack"
end
