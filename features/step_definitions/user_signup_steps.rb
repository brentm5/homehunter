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
  click_link('Sign Up')
end

When /^I enter in my information$/ do
    pending # express the regexp above with the code you wish you had
end

When /^create my account$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^I should recieve an email$/ do
    pending # express the regexp above with the code you wish you had
end
