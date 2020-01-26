feature 'Attacking' do
  scenario "confirm attack on Player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Charly attacked Kitty'
  end
  scenario "confirm attack on Player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Kitty has 90 HP!'
  end
end
