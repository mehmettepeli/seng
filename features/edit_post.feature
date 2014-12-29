Feature: Edit activity

  As an admin
I want to edit activities


Scenario: Edit activity
  Given  I am on the activity homepage and there is an activity with title "Sample activity" and content "Sample content"
  When I edit this activity
  And I update title to "Updated title" and content to "Updated content"
  Then I can see it has been updated