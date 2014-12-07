Feature: Logged in a page
  As a user
  I want to log in a page

  Scenario: Login
    Given  I am on login homepage
    And   I click "Login" buttoon
    Then  I should see Logged in successfully message

