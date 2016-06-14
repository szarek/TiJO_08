Feature: Text filter

  Scenario: Ch search
    When I browse to the "/"
    When I enter "Ch" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Chang"

  Scenario: First name with G
    When I browse to the "/"
    When I enter "G" into "input.first" field
    Then I should see "Freeman" in "lastName" column in row "3" of "student.table" table
    Then I should see "good.burnett@undefined.tv" in "email" column in row "1" of "student.table" table
    Then the css element "tr:nth-child(4) td:nth-of-type(1)" should contain the text "Gray"

  Scenario: Text search
    When I browse to the "/"
    When I enter "94" into "input.phone" field
    When I enter "3" into "input.age" field
    Then I should see "+1 (994) 534-3669" in "phone" column in row "1" of "student.table" table
    Then the css element "tr:nth-child(2) td:nth-of-type(2)" should contain the text "Stevenson"
    Then the css element "tr:nth-child(2) td:nth-of-type(3)" should contain the text "23"