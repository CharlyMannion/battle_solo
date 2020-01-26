feature 'Entering Players' do
  scenario 'Can run app and check page content' do
    visit('/name_form')
    expect(page).to have_content 'Enter Player Names!'
  end
  scenario 'entering player names' do
    # visit '/sessions/new'
    # within("#session") do
    visit('/name_form')
    fill_in 'player_1', with: 'Charly'
    fill_in 'player_2', with: 'Kitty'
    # end
    click_button 'Submit'
    expect(page).to have_content 'Charly v. Kitty'
  end
end