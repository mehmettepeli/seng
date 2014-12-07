Feature: Write a new actitvity
  As a user
  I want to add new activity

Scenario: Write an activity
  Given  I am on activities homepage
  When   I click "New Activity" link
  And    I fill "Activity Name" as Title
  And    I fill "Test Content"  as Content
  And    I click "Create Activity" button
  Then   I should see the activity I wrote
