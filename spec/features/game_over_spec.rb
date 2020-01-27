feature 'Game Over' do
  scenario 'Player 2 reaches 10HP' do
    attack_player_two
    17.times { attack }
    expect(page).to have_content 'Kitty has 10 HP!'
  end
  # scenario 'Player 1 attacks player 2 with 10HP' do
  #   attack_player_two
  #   17.times { attack }
  #   attack
  #   expect(page).to have_content('Kitty loses!')
  # end
end
