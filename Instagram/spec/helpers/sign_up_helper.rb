
def sign_up
  visit '/'
  click_link 'Register'
  fill_in :Email, with: 'jennyrick@email.com'
  fill_in :'User name', with: 'Generic'
  fill_in("Password", with: '123456', :match => :prefer_exact)
  fill_in("Password confirmation", with: '123456', :match => :prefer_exact)
  click_button 'Sign up'
end 
