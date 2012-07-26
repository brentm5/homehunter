Feature: A Hunt
  In order to look for houses
  As a logged in user
  I should be able to start a hunt

  Scenario: Valid users should be able to create a hunt
    Given I logged in
    Then I should be able to create a hunt

  Scenario: A hunt must be filled out properly
    Given I logged in
    Then I should not be able to create an invalid hunt
