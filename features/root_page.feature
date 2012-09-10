Feature: First cucumber test
  Scenario: Simple asserts
    Given I am on the campaigns page
    Then I should see "Listing campaigns"
      And I should see "New Campaign"