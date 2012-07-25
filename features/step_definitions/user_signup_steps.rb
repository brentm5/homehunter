begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end 
require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')

Before do
end

After do
end

Given /^I do not have an account$/ do
    pending # express the regexp above with the code you wish you had
end

Given /^I visit the site$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^I should see the welcome page$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^I should be able to signup$/ do
    pending # express the regexp above with the code you wish you had
end
