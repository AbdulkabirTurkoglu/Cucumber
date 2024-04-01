# CitizenShip menusunun kayıt ve silme özelliğini
# (DataTable ile) 5 farklı değer seti ile çalıştırınız.

Feature: CitizenShip functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

  Scenario Outline: Create CitizenShip and Delete
    And Click on the Element in LeftNav
      | setup       |
      | parameters  |
      | citizenship |

    And Click on the Element in Dialog
      | addButton |

    And User sending the keys in Dialog
      | nameInput | <name>  |
      | shortName | <short> |

    And Click on the Element in Dialog
      | saveButton |

    Then Success message should be displayed

    And User delete the Element from Dialog
      | <name> |

    Then Success message should be displayed
    Examples:
      | name   | short   |
      | kayabas1 | baskaya1 |
      | kayabas2 | baskaya2 |
      | kayabas3 | baskaya3 |
      | kayabas4 | baskaya4 |
      | kayabas5 | baskaya5 |