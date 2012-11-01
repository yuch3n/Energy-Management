#Leslie Chang

Feature: Submit feedback

	As a campus community member
	So that I can help improve the myPower site
	I want to submit feedback to administrators

Background:
	Given I am on "/feedback"

Scenario: I should be able to sucessfully and annonymously send a feedback
	  When I fill in "message" with "testing comment"
	  And I press "Submit"
	  Then I should see "Feedback has been successfully sent"

Scenario: I should not be able to successfully send an empty feedback
	  When I fill in "message" with "" 
	  And I press "Submit"
	  Then I should see "Feedback submission failed: Empty Form"