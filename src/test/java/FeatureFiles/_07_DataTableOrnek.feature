Feature: Datatable ornek

  Scenario: User List
    When write user name "abdullah5"
    And write user name and password "abdulla" and"4556"

    And write username as DataTable
      | ali  |
      | veli |
      | yeli |
      | kali |
      | seli |
      | beli |

    And write username and password as DataTable
      | ali  | ali0  |
      | veli | veli1 |
      | yeli | yeli2 |
      | kali | kali3 |
      | seli | seli4 |
      | beli | beli5 |


