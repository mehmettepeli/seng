When(/^I delete this activity$/) do
  visit("/activities")end


Then(/^I can see it has been deleted$/) do
  page.should have_content(@title)end