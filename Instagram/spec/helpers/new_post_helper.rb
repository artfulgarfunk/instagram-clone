def new_post
  click_link 'New Post'
  attach_file('Image', "spec/files/images/chai_tea.jpg")
  fill_in 'Caption', with: 'I love #tea'
  click_button 'Create Post'
end 
