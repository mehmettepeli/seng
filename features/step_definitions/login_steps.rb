Given(/^I am on login homepage$/) do
  visit("/login")
end

And(/^I click "(.*?)" buttoon$/) do |btn|
  click_button btn
end

Then(/^I should see Logged in successfully message$/) do
  page.should have_content(@title)
end

