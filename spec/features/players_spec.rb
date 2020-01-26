feature 'Entering Players' do
  scenario 'Can run app and check page content' do
    visit('/name_form')
    expect(page).to have_content 'Enter Player Names!'
  end
  before do
    sign_in_and_play
  end
  scenario 'entering player names' do
    expect(page).to have_content 'Charly v. Kitty'
  end
  scenario 'viewing hit points' do
    expect(page).to have_content 'Kitty\'s Hit Points: 100'
  end
end
