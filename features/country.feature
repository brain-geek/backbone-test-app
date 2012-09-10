Feature: Country management
  Scenario: Listing
    Given the following countries:
      | title    |
      | Ukraine  |
      | Hungary  |
      | Russia   |
      And I am on the countries page
    Then I should see "Listing countries"
      And I should see "Title"
      And I should see "Ukraine"
      And I should see "Hungary"
      And I should see "Russia"

  Scenario: Deletion
    Given the following country:
      | title   | Ukraine  |  
      And I am on the countries page
    Then I should see "Ukraine" in the "#countries-table"
    When I click "Destroy" and wait untill it is gone
    Then I should not see "Ukraine" in the "#countries-table"
