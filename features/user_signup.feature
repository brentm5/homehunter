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

  Scenario: Existing users should be able to login
    Given I am a valid user
    And I visit the logon page
    Then I should be able to login

  Scenario: Users should be able to log out
    Given I logged in
    Then I should be able to logout

  Scenario: Users Should be able to edit their account
    Given I logged in
    Then I should be able to edit my account

