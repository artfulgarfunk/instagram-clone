require 'rails_helper.rb'
require_relative '../helpers/sign_up_helper.rb'
require_relative '../helpers/new_post_helper.rb'

feature 'Creating posts' do

  scenario 'can create a post' do
    sign_up
    new_post
    expect(page).to have_content('#tea')
    expect(page).to have_css("img[src*='chai_tea.jpg']")
  end

  it 'needs an image to create a post' do
    sign_up
    visit '/'
    click_link 'New Post'
    fill_in 'Caption', with: 'Eppendorf'
    click_button 'Create Post'
    expect(page).to have_content('Stop! You have to upload an image!')
  end
end
