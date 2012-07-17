begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end 
require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')

Before do
end

After do
end

Given /^I do not have an account$/ do
  #Do not know how to verify this
end

Given /^I visit the site$/ do
   visit(root_url)
end

Then /^I should see the welcome page$/ do
  page.should have_content('Welcome to HomeHunter')
end

Then /^I should be able to signup$/ do
  page.should have_content('Sign Up')
  click_link 'Sign Up'
end

When /^I enter in my information$/ do
  fill_in 'user_email', :with => 'Username@example.com'
  fill_in 'user_password', :with => 'password'
  fill_in 'user_password_confirmation', :with => 'password'
  click_button 'Sign up'
end

Then /^I should now have an account$/ do
  page.should have_content 'Welcome! You have signed up successfully.'
end

Given /^I am a valid user$/ do
  user_attr = FactoryGirl.attributes_for(:user)
  User.create!(user_attr)
end

Given /^I visit the logon page$/ do
  visit user_session_path
end

Then /^I should be able to login$/ do
  fill_in 'user_email', :with => 'test@email.com'
  fill_in 'user_password', :with => 'password'
  click_button 'Sign in'
end

Then /^be displayed with the logon message$/ do
  page.should have_content 'Signed in successfully'
end
