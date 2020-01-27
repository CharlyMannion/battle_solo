feature 'Switching' do
  scenario 'Attacking Player 1' do
    attack_player_two
    click_button "Attack"
    expect(page).to have_content 'Kitty attacked Charly'
  end
end
