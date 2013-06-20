Feature: member_management
  
Scenario: Member management view is present
	Given I am a logged in user
	When I click on the Members item in the navigation pane
 	Then I should see the Member Mangement view

@javascript
Scenario: I can select a member to modify
	Given I am a logged in user
	And there is a member
	When I click on the Members item in the navigation pane
  	And I select the member
  	Then I should see the information for the member

@javascript
Scenario: I can modify the member
	Given I have selected a member to modify
	When I modify the details of the member
	Then I should see the changes confirmed
