begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end 
require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')

Then /^I should be able to create a hunt$/ do
  visit(new_hunt_url)
  hunt = build(:hunt)
  fill_in 'hunt_name', :with => hunt.name
  fill_in 'hunt_description', :with => hunt.description
  click_button 'Start Hunt'
end
