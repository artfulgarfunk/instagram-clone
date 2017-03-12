require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/chai_tea.jpg")
    fill_in 'Caption', with: 'I love #tea'
    click_button 'Create Post'
    expect(page).to have_content('#tea')
    expect(page).to have_css("img[src*='chai_tea.jpg']")
  end
end
