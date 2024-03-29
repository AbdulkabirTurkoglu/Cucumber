Feature: Citizenship Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully
    And Navigate to CitizenShip

  @Regression
  Scenario Outline: Create a Citizenship with parameter
    When Create a CitizenShip name as "<name>" shortkod as "<shortName>"
    Then Success message should be displayed

    When Create a CitizenShip name as "<name>" shortkod as "<shortName>"
    Then Already exist message should be displayed

    When user delete name as "<name>"
    Then Success message should be displayed
    Examples:
      | name    | shortName |
      | mehmed1 | vali1      |
      | mehmed2 | vali2      |
      | mehmed3 | vali3      |
      | mehmed4 | vali4      |
      | mehmed5 | vali5      |