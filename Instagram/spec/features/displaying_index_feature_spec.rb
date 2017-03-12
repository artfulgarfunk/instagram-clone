# Create multiple posts using factories.
# User visits the root route.
# User can see the comments and images of the posts we’ve created.

feature 'Index' do
  scenario 'Users can see the comments and images of all the posts' do
    post_one = create(:post, caption: "This is post one")
    post_two = create(:post, caption: "This is the second post")

    visit '/'
    expect(page).to have_content("This is post one")
    expect(page).to have_content("This is the second post")
    expect(page).to have_css("img[src*='chai_tea']")
  end
end
