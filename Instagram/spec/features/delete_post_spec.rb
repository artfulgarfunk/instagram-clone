feature 'Delete Post' do
  scenario 'a user can delete a post that they have uploaded' do
    a_post = create(:post, caption: "This is a testing post")
    visit ('/')
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    click_link_or_button 'Edit'
    click_link_or_button 'Delete Post'
    expect(current_path).to eq '/posts'
    expect(page).to have_content "Post deleted! No one needs to know"
    expect(page).not_to have_content("This is a testing post")
  end
end
