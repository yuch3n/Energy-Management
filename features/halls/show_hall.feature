Feature: Users can view graph data

	 As a User
	 So I can see usage
	 I want to be able to see graph data

Background:
	Given the following halls exist:
  	| id | name   |
  	| 1  | Morgan Hall |
	Given I am on "/halls"
	And I follow "Morgan Hall"

@javascript
Scenario: Going to the show page and back
	  Then I should see the "script" selector eventually

@javascript
Scenario: Switching intervals
	  When I follow "Month"
	  And I should see "Month" within "a.intervalSelection.ui-btn-active"
	  When I follow "Day"
	  And I should see "Day" within "a.intervalSelection.ui-btn-active"
	  And I should not see "Month" within "a.intervalSelection.ui-btn-active"
	  
	  