Feature: User Signup
  In order to use homehunter
  As a new user
  I want to be able to signup

  Scenario: New users should see a welcome page
    Given I do not have an account
    And I visit the site
    Then I should see the welcome page

  Scenario: New users should be able to signup
    Given I do not have an account
    And I visit the site
    Then I should be able to signup
    When I enter in my information
    Then I should now have an account

  Scenario: Existing users should be able to login
    Given I am a valid user
    And I visit the logon page
    Then I should be able to login
    And be displayed with the logon message
