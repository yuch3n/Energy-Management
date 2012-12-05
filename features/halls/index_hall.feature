Feature: Users can navigate through the hall index page

	 As a User
	 So I can get going
	 I want to be able to navigate through pages

Background:
	Given the following halls exist:
  	| id | name   |
  	| 1  | Morgan Hall |
	And I am on "/halls"

@javascript
Scenario: Going to the show page and back
	  When I follow "Morgan Hall"
	  Then I should be on "/halls/1"

	  When I follow "Day"
	  And I follow "List" within "#graphContent"
	  Then I should be on "/halls"
