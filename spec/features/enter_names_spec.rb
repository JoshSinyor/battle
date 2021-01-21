# frozen_string_literal: true

feature 'Entering players' do
  scenario 'Displays page content instructions' do
    visit('/')
    expect(page).to have_content('Sign in to play.')
  end

  scenario 'Displays Submit button' do
    visit('/')
    expect(page).to have_button('Submit')
  end

  scenario 'Accepts submitted names' do
    sign_in_and_play
    expect(page).to have_content('Alfred vs. Bruce')
  end
end
