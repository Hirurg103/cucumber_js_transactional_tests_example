@javascript
Feature: View users
  In order to see who are using the app
  As a User
  I want to see the list of users

  Scenario: View one user
    Given I have a user
    When I visit the users list
      Then I should see the user

  Scenario: View two users
    Given I have two users
    When I visit the users list
      Then I should see the both users
