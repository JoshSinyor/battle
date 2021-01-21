# frozen_string_literal: true

feature 'Checking Hit Points' do
  scenario 'displays Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content("Alfred's Hit Points: 100")
    expect(page).to have_content("Bruce's Hit Points: 100")
  end
end
