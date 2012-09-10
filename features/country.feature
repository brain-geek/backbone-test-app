Feature: Country management
  Scenario: Listing
    Given the following countries:
      | title    |
      | Ukraine  |
      | Hungary  |
      | Russia   |
      And I am on the countries page
    Then I should see "Listing countries"
      And I should see "Title" within "#countries-table"
      And I should see "Ukraine" within "#countries-table"
      And I should see "Hungary" within "#countries-table"
      And I should see "Russia" within "#countries-table"

  Scenario: Deletion
    Given the following country:
      | title   | Ukraine  |  
      And I am on the countries page
    Then I should see "Ukraine" within "#countries-table"
    When I click "Destroy" and wait untill it is gone
    Then I should not see "Ukraine" within "#countries-table"

  Scenario: Creation
    Given I am on the countries page
    When I click "New Country" and wait untill it is gone
      And I fill in "title" with "Norway"
    Then I press "Create Country"
      And I should see "Norway"

  Scenario: Edit
    Given the following country:
      | title   | Uganda  |  
      And I am on the countries page
    Then I should see "Uganda" within "#countries-table"
      And I should not see "Ukraine" within "#countries-table"
    When I click "Edit" and wait untill it is gone
      And I fill in "title" with "Ukraine"
      And I press "Update Country"
    Then I should see "Ukraine"
    When I am on the countries page
    Then I should see "Ukraine" within "#countries-table"
      And I should not see "Uganda" within "#countries-table"
