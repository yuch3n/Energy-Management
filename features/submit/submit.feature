#Leslie Chang

Feature: Submit feedback

	As a campus community member
	So that I can help improve the myPower site
	I want to submit feedback to administrators

Background:
	Given I am on "/submit"

Scenario: When I fill in "name" with "Leslie Chang"
	  And I fill in "email" with "leslie.chang@berkeley.edu"
	  And I fill in "comment" with "testing comment"
	  When I follow "submit"
	  Then I should see "Successfully sent"

Scenario: When I fill in "name" with ""
	  And I fill in "email" with ""
	  And I fill in "comment" with ""
	  When I follow "submit"
	  Then I should see "Submission failed: invalid input"

#Yuchen's additions


Scenario: When I fill in "name" with "Yuchen Mao"
	  And I fill in "email" with "yuchenmao@berkeley.edu"
 	  And I fill in "comment" with ""
 	  When I follow "submit"
 	  Then I should see "Submission failed: please enter a comment"

Scenario: When I fill in "name" with ""
 	  And I fill in "email" with "yuchenmao@berkeley.edu"
 	  And I fill in "comment" with "test comment"
 	  When I follow "submit"
 	  Then I should see "Submission failed: please enter a name"
 
Scenario: When I fill in "name" with "Yuchen Mao"
	  And I fill in "email" with ""
 	  And I fill in "comment" with "test comment"
 	  When I follow "submit"
 	  Then I should see "Submission failed: please enter an email address"

