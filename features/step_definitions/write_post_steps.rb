Given(/^I am on activities homepage$/) do
  visit("/activities")
end

When(/^I click "(.*?)" link$/) do |link|
  click_on link
end


And(/^I fill "(.*?)" as Title$/) do |title|
@title = title
  fill_in "Title", :with => title
end


And(/^I fill "(.*?)"  as Content$/) do |content|
fill_in "Content" ,:with => content
end

And(/^I click "(.*?)" button$/) do |btn|
  click_button btn
end

Then(/^I should see the activity I wrote$/) do
  page.should have_content(@title)
end