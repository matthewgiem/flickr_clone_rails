require 'rails_helper'

describe 'add photo for a user' do
  it 'signs in a user and adds a photo' do
    user = FactoryGirl.create(:user)
    visit log_in_path
    fill_in 'Email', :with => 'matthew.giem@gmail.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log In'
    click_on 'add photo'
    fill_in 'Title', :with => 'picture'
    attach_file 'Photo', 'spec/asset_specs/images/spur_bell.jpeg'
    click_on 'upload photo'
    expect(page).to have_content 'Image page'
  end

  it 'shows an error if image title is left blank' do
    user = FactoryGirl.create(:user)
    visit log_in_path
    fill_in 'Email', :with => 'matthew.giem@gmail.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log In'
    click_on 'add photo'
    attach_file 'Photo', 'spec/asset_specs/images/spur_bell.jpeg'
    click_on 'upload photo'
    expect(page).to have_content 'Title can\'t be blank'
  end
end
