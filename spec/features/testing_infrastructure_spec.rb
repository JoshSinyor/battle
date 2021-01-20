# frozen_string_literal: true

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/test_infrastructure')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
