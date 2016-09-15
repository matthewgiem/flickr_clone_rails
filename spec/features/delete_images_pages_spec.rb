require 'rails_helper'

describe 'delete photo function' do
  it 'deletes a user\'s photo' do
    user = FactoryGirl.create(:user_with_image)
    visit log_in_path
    fill_in 'Email', :with => 'matthew.giem@gmail.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log In'
    visit root_path
    click_on 'Bike'
    click_on 'Delete'
    expect(page).to have_no_content 'Bike'

  end

end
