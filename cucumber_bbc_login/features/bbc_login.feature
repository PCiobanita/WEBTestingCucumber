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

  Scenario: Inputing an incorrect email
    Given I access the bbc login page
    And I input incorrect email
    And I input incorrect password details
    When I try to login
    Then I recieve error not beeing valid email

  Scenario: Inputing the wrong apssword for email
    Given I access the bbc login page
    And I input correct email
    And I input incorrect password details
    When I try to login
    Then I recieve error beeing the wrong password for email

  Scenario: Inputing a passowrd that only have letters
    Given I access the bbc login page
    And I input incorrect email
    And I input letters only password
    When I try to login
    Then I recieve error beeing asking me to instert something other that letters

  Scenario: Inputing a passowrd that only have numbers
    Given I access the bbc login page
    And I input incorrect email
    And I input numbers only password
    When I try to login
    Then I recieve error beeing asking me to instert something other than numbers

  Scenario: Inputing a passowrd that is only to long
    Given I access the bbc login page
    And I input incorrect email
    And I input passowrd with to many characters
    When I try to login
    Then I recieve error beeing telling me password to long

  Scenario: Inputing a username to short
    Given I access the bbc login page
    And I input short username
    And I input incorrect password details
    When I try to login
    Then I recieve error with username beeing to short