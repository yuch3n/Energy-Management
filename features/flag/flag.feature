Feature: Users should be able to raise a flag to the administrator if they see abnormal energy use.

Background:
	Given the following halls exist:
  	| id | name   | key                          |
  	| 1  | Shofix | Bd5238Ki31GOL5ZewrQglA%3D%3D |
	And I am on "/halls"

@javascript
Scenario: User sends an alert to the administrator after seeing an energy use anomaly.
  When I follow "Shofix"
  Then I should be on "/halls/1"
  When I follow "Alert Us"
  Then I should see "Alert us if you see an abnormal trend in energy use."
  When I follow "OK"
  Then I should see "An alert has been sent"
