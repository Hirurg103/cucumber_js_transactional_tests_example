@javascript
Feature: View users
  In order to see who are using the app
  As a User
  I want to see the list of users

  Scenario: View users
    Given I have a user
    When I visit the users list
      Then I should see the user
