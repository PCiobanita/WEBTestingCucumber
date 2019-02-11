Feature: hooks_and_tags
  As a user I wish to see how cucumber uses tags and hooks
  Scenario: use hooks and tags
    Given I have a before hook in place with name details
    Then I can validate the information in the before hook

  @test2
  Scenario: An example of using tags
    Given I use tags
    Then only this test will run