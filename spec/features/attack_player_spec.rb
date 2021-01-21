# frozen_string_literal: true

feature 'Attacking players' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_button 'Attack Bruce'
    expect(page).to have_content('You attacked Bruce!')
  end
  #
  # scenario 'Displays Submit button' do
  #   visit('/')
  #   expect(page).to have_button('Submit')
  # end
  #
  # scenario 'Accepts submitted names' do
  #   sign_in_and_play
  #   expect(page).to have_content('Alfred vs. Bruce')
  # end
end
