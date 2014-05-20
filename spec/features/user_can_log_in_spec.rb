require 'spec_helper'

feature 'User Sessions' do
  let!(:user) { create(:user) }
  scenario 'User can access the sign in form' do
    visit root_path
    click_link "Sign In"
    expect(current_path).to eq(new_user_session_path)
  end
  scenario 'User can acces the sign up form' do
    visit root_path
    click_link "Sign Up"
    expect(current_path).to eq(new_user_registration_path)
  end
  scenario 'User can sign in' do
    visit new_user_session_path
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: user.password
    find('button[type=submit]').click
    expect(page).to have_css('.notice', text: I18n.t(:signed_in, scope: [:devise, :sessions]))
  end
end
