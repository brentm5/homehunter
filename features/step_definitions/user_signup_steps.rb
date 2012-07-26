Given /^I do not have an account$/ do
  #Do not know how to verify this
end

Then /^I should see the welcome page$/ do
  visit(root_url)
  page.should have_content 'Welcome to HomeHunter'
end

Then /^I should be able to signup$/ do
  visit(root_url)
  page.should have_content 'Sign Up'
  click_link 'Sign Up'
  fill_in 'user_first_name', :with => 'John'
  fill_in 'user_last_name', :with => 'Doe'
  fill_in 'user_email', :with => 'Username@example.com'
  fill_in 'user_password', :with => 'password'
  fill_in 'user_password_confirmation', :with => 'password'
  click_button 'Sign up'
  page.should have_content 'username@example.com'
  page.should have_content 'Log Off'
end

Given /^I am a valid user$/ do
  create(:user, :email => 'test@email.com', :password => 'password', :password_confirmation => 'password')
end

Then /^I should be able to login$/ do
  visit user_session_path
  fill_in 'user_email', :with => 'test@email.com'
  fill_in 'user_password', :with => 'password'
  click_button 'Sign in'
  page.should have_content 'test@email.com'
  page.should have_content 'Log Off'
end

Given /^I logged in$/ do
  create(:user, :email => 'test@email.com', :password => 'password', :password_confirmation => 'password')
  log_in_as 'test@email.com', 'password'
end

Then /^I should be able to logout$/ do
  page.should have_content 'Log Off'
  click_link 'Log Off'
  page.should have_content 'Log In'
end

Then /^I should be able to edit my account$/ do
  page.should have_content 'Edit Account'
  click_link 'Edit Account'
  page.should have_content 'Cancel my account'
end

def log_in_as(email, password)
  visit user_session_path
  fill_in 'user_email', :with => email
  fill_in 'user_password', :with => password
  click_button 'Sign in'
end
