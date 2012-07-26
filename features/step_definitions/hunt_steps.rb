Then /^I should be able to create a hunt$/ do
  visit(new_hunt_url)
  fill_in 'hunt_name', :with => 'Hunt Name'
  fill_in 'hunt_description', :with => 'Description of a hunt'
  click_button 'Start Hunt'
  page.should have_content 'Hunt Name'
  page.should have_content 'Description of a hunt'
end

Then /^I should not be able to create an invalid hunt$/ do
  visit(new_hunt_url)
  fill_in 'hunt_name', :with => 'Hunt Name'
  click_button 'Start Hunt'
  page.should have_content 'Start a Hunt'
end

