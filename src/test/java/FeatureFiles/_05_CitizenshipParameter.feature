Feature: Citizenship Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully
    And Navigate to CitizenShip

  @Regression
  Scenario: Create a Citizenship with parameter
    When Create a CitizenShip name as "is4545" shortkod as "icskod1212"
    Then Success message should be displayed

  Scenario: Create a Citizenship with parameter
    When Create a CitizenShip name as "is4545" shortkod as "icskod1212"
    Then Already exist message should be displayed

Scenario: Delete Citizenship
  When user delete name as "is4545"
  Then Success message should be displayed