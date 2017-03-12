# Create multiple posts using factories.
# User visits the root route.
# User can see the comments and images of the posts we’ve created.

feature 'Individual Post' do
  scenario "Users can see an individual post on it's own page" do
    sign_up
    a_post = create(:post, caption: "This is a test post")
    visit '/'
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    expect(page.current_path).to eq(post_path(a_post))
  end
end
