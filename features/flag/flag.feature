Feature: Users should be able to raise a flag to the administrator if they see abnormal energy use.

Scenario: User raises a flag.  Flag button is disabled for that building for that user to prevent spamming.

 Given I am on "/halls/1"

 When I click on "Report Anomaly"

 Then I should see "An alert has been sent to the administrator"