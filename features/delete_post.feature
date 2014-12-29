Feature: Delete activity

  As an admin
  I want to delete activities


  Scenario: Delete activity
    Given  I am on the activity homepage and there is an activity with title "Sample activity" and content "Sample content"
    When I delete this activity

    Then I can see it has been deleted