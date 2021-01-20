# frozen_string_literal: true

feature 'Entering players' do
  scenario 'Displays page content instructions' do
    visit('/')
    expect(page).to have_content('Please enter your names!')
  end

  scenario 'Displays Submit button' do
    visit ('/')
    expect(page).to have_button('Submit')
  end

  scenario 'Accepts submitted names' do
    visit('/')
    fill_in :player_1_name, with: 'Alfred'
    fill_in :player_2_name, with: 'Bruce'
    click_button 'Submit'
    expect(page).to have_content('Alfred vs. Bruce')
  end
end
