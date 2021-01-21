# frozen_string_literal: true

feature 'Checking Hit Points' do
  scenario 'displays Player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Alfred'
    fill_in :player_2_name, with: 'Bruce'
    click_button 'Submit'
    expect(page).to have_content("Alfred's Hit Points: 100")
    expect(page).to have_content("Bruce's Hit Points: 100")
  end

end
