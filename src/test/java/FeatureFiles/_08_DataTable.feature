Feature: DataTable Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

  Scenario: Create Country
    And Click on the Element in LeftNav
      | setup      |
      | parameters |
      | countries  |

    And Click on the Element in Dialog
      | addButton |

    And User sending the keys in Dialog
      | nameInput | alikal |
      | codeInput | kalaal |

    And Click on the Element in Dialog
      | saveButton |

    Then Success message should be displayed

    And User delete the Element from Dialog
      | alikal |

    Then Success message should be displayed

  Scenario: CitizenShip Create an Delete
    And Click on the Element in LeftNav
      | setup       |
      | parameters  |
      | citizenship |
    And Click on the Element in Dialog
      | addButton |

    And User sending the keys in Dialog
      | nameInput | alafikal |
      | shortName | kalafal  |

    And Click on the Element in Dialog
      | saveButton |

    Then Success message should be displayed

    And User delete the Element from Dialog
      | alafikal |

    Then Success message should be displayed

  Scenario: Create Nationality and Delete
    And Click on the Element in LeftNav
      | setup         |
      | parameters    |
      | nationalities |
    And Click on the Element in Dialog
      | addButton |

    And User sending the keys in Dialog
      | nameInput | kalakala |

    And Click on the Element in Dialog
      | saveButton |

    Then Success message should be displayed

    And User delete the Element from Dialog
      | kalakala |

    Then Success message should be displayed

  Scenario: Fee Functionality and Delete
    And Click on the Element in LeftNav
      | setup      |
      | parameters |
      | fees       |

    And Click on the Element in Dialog
      | addButton |

    And User sending the keys in Dialog
      | nameInput       | kimalisi |
      | codeInput       | 77877 |
      | integrationCode | 8964    |
      | priorityCode    | 2225   |

    And Click on the Element in Dialog
      | toggleBar  |
      | saveButton |

    Then Success message should be displayed

    And User delete the Element from Dialog
      | kiminkalisi |

    Then Success message should be displayed






