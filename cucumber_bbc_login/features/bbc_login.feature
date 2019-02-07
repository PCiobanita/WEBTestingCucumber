Feature: BBC Login

  Scenario: Inputing incorrect user name and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I recieve error for not finding the account

  Scenario: Inputing a password to short
    Given I access the bbc login page
    And I input incorrect username details
    And I input a password that is to short
    When I try to login
    Then I recieve error for password beeing to short