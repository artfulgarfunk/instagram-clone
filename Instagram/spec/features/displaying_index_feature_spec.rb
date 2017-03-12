# Create multiple posts using factories.
# User visits the root route.
# User can see the comments and images of the posts we’ve created.

feature 'Index' do
  scenario 'Users can see the comments and images of all the posts' do
    sign_up
    new_post
    visit '/'
    expect(page).to have_content('I love #tea')
    expect(page).to have_css("img[src*='chai_tea']")
  end
end
