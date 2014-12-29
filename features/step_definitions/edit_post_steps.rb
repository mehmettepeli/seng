Given(/^I am on the activity homepage and there is an activity with title "(.*?)" and content "(.*?)"$/) do |title, content|
  @activity = Activity.create!({ :title => title,  :adate => Time.now ,:content =>content })
end

When(/^I edit this activity$/) do
  visit("/activities")
end

And(/^I update title to "(.*?)" and content to "(.*?)"$/) do |title,  content|
  @updated_title = title
  @updated_content = content
  @activity.update_attributes!({ :title => @updated_title, :content => @updated_content })
end


Then(/^I can see it has been updated$/) do
  page.should have_content(@title)
end