Feature: show a creal example of an example table

  Scenario Outline: using an example tablecan epant your test and make them more dynamic
    Given I have more than one tata row in my example tale
    And it includes <name> as a string and <age> as an integer
    Then I can validate the <name> & <age> are correct

    Examples:
      | name | age |
      | Dave | 23  |
      | Tim  | 24  |
