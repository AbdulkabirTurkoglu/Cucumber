Feature: Fees multiple values functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

  Scenario Outline: Fee Functionality and Delete
    And Click on the Element in LeftNav
      | setup      |
      | parameters |
      | fees       |

    And Click on the Element in Dialog
      | addButton |

    And User sending the keys in Dialog
      | nameInput       | <name>     |
      | codeInput       | <code>     |
      | integrationCode | <intCode>  |
      | priorityCode    | <priority> |

    And Click on the Element in Dialog
      | toggleBar  |
      | saveButton |

    Then Success message should be displayed

    And User delete the Element from Dialog
      | <name> |

    Then Success message should be displayed

    Examples:
      | name    | code   | intCode  | priority |
      | ismail1 | 289941 | PayPal   | 789841   |
      | ismail2 | 289942 | Cash     | 789842   |
      | ismail3 | 289943 | Cheque   | 789843   |
      | ismail4 | 289944 | ApplaPay | 789844   |
      | ismail5 | 289945 | Crypto   | 789845   |