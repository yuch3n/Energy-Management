Feature: Users should be able to convert kilowatt hours into practical units

Background:
	Given I am on "/calculator"

@javascript
Scenario: User can convert kilowatt hours to practical units
  When I fill in "kwh" with "3"
  And I press "Calculate"
  Then I should see "30 hours"
