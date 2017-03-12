feature 'Update Post' do
  scenario "Users can udpate a previously created post" do
    sign_up
    new_post
    visit '/'
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    click_link_or_button "Edit"
    fill_in 'Caption', with: 'A new caption'
    click_button 'Update Post'
    expect(page).to have_content('Your post has been updated!')
    expect(page).to have_content('A new caption')
  end
end
