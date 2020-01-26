feature 'Entering Players' do
  scenario 'Can run app and check page content' do
    visit('/name_form')
    expect(page).to have_content 'Enter Player Names!'
  end
  scenario 'entering player names' do
    # visit '/sessions/new'
    # within("#session") do
    visit('/name_form')
    fill_in 'Player_1', with: 'Charly'
    fill_in 'PLayer_2', with: 'Kitty'
    # end
    click_button 'Enter'
    expect(page).to have_content 'Charly vs. Kitty'
  end
end
