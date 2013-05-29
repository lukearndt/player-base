Feature: Creating members
  In order to have people in our community
  As a user
  I want to be able to create new members
  
  Scenario: Creating a member
    Given I am on the homepage
    When I follow "New Member"
    And I fill in "First Name" with "Test"
    And I fill in "Last Name" with "Member"
    And I fill in "Phone Number" with "0400000000"
    And I fill in "Email Address" with "test.member@playerbase.com"
    Then I should see "Member has been created."