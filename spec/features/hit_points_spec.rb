# frozen_string_literal: true

feature 'Checking Hit Points' do
  scenario 'displays Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content("Alfred's Hit Points: 60")
    expect(page).to have_content("Bruce's Hit Points: 60")
  end

  scenario 'displays Player 1 attacks player 2 and it reduces HP by 10' do
    sign_in_and_play
    click_button 'Attack Bruce'
    click_link 'OK'
    expect(page).to have_content("Bruce's Hit Points: 50")
  end
end
