Feature: Users should be able to raise a flag to the administrator if they see abnormal energy use.

Scenario: User raises a flag.  Flag button is disabled for that building for that user to prevent spamming.
  Given I am on an energy graph
  When I click on "Flag"
  Then I should see "Energy use alert has been sent"
  And I should not be able to click "Flag"
