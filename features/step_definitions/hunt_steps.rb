Then /^I should be able to create a hunt$/ do
  visit(new_hunt_url)
  hunt = build(:hunt)
  fill_in 'hunt_name', :with => hunt.name
  fill_in 'hunt_description', :with => hunt.description
  click_button 'Start Hunt'
  page.should have_content hunt.name
end

Then /^I should not be able to create an invalid hunt$/ do
  visit(new_hunt_url)
  hunt = build(:hunt)
  fill_in 'hunt_name', :with => hunt.name
  click_button 'Start Hunt'
  page.should have_content 'Start a Hunt'
end

