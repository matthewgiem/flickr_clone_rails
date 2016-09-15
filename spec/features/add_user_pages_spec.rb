require 'rails_helper'

describe "the creating an account process" do
  it "signs up a new user" do
    visit new_user_path
    fill_in 'Email', :with => 'matthew.giem@gmail.com'
    fill_in 'User name', :with => 'matthew'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_on 'Sign Up'
    expect(page).to have_content 'Welcome'
  end

  it 'displays an error if creating user fails' do
    visit new_user_path
    fill_in 'Email', :with => 'matthew.giem@gmail.com'
    fill_in 'User name', :with => 'matthew'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'jelly'
    click_on 'Sign Up'
    expect(page).to have_content 'There was a problem creating your account. Please try again.'
  end
end

describe 'user log-in process' do
  it 'signs in a user' do
    user = FactoryGirl.create(:user)
    visit log_in_path
    fill_in 'Email', :with => 'matthew.giem@gmail.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log In'
    expect(page).to have_content "You've been logged in"
  end

  it 'displays an error if login fails' do
    user = FactoryGirl.create(:user)
    visit log_in_path
    fill_in 'Email', :with => 'matthew.giem@gmail.com'
    fill_in 'Password', :with => 'jelly'
    click_on 'Log In'
    expect(page).to have_content "There was a problem logging you in"
  end

end

describe 'user log out path' do
  it 'logs a user out' do
    user = FactoryGirl.create(:user)
    visit log_in_path
    fill_in 'Email', :with => 'matthew.giem@gmail.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log In'
    click_on "Log Out"
    expect(page).to have_content 'You\'ve been successfully logged out'
  end
end
