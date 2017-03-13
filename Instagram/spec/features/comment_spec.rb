feature 'Commenting' do
  scenario 'any user can comment on a post' do
    sign_up
    new_post
    visit ('/')
    fill_in :submit_comment, with: "here is a lovely comment"
    # save_and_open_page
    # find('#submit_comment').set "word\n"
    click_link_or_button 'Submit'
    # find('#submit_comment').native.send_keys(:return)
    # find('#submit_comment').set("here is a lovely comment\n")
    # expect(current_path).to eq '/'
    save_and_open_page
    expect(page).to have_content("here is a lovely comment")
  end
end
