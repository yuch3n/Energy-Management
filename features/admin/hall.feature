#Leslie Chang
Feature: Add/Edit/Delete Buildings

	 As an administrator
	 So that I can easily maintain the list of buildings
	 I want to add and remove buildings to the list of buildings on the application

Background: I am a authenticated user
            Given I am a new authenticated user
 	    Given I am on "/admin/halls/new"
 	    And I fill in "hall_name" with "Sirotan"
 	    And I press "Create Building"
 	    Then I should be on "/admin/halls"
 	    And I should see "Sirotan was successfully created."  
       
 @javascript
 Scenario: I should not be able to add a building with empty fields
          Given I am on "/admin/halls"
          And I press "New Building"
          And I fill in "hall_name" with ""
          And I press "Create Building"
          Then I should be on "/admin/halls/new"
          And I should see "Can't have empty name"

 @javascript
 Scenario: I should be able to edit a building, and see the change
 	  Given I am on "/admin/halls"
 	  When I follow "Sirotan"
 	  And I fill in "hall_name" with "Platypuu"
 	  And I press "Update Building"
          Then I should see "Platypuu was successfully updated"
 	  And I go to "/admin/halls"
 	  And I should see "Platypuu"
 	  And I should not see "Sirotan"

 @javascript
 Scenario: I should not be able to edit a building with empty fields
          Given I am on "/admin/halls"
          When I follow "Sirotan"
          And I fill in "hall_name" with ""
          And I press "Update Building"
          Then I should see "Can't have empty name."

 @javascript
 Scenario: I should not be able to edit a building that does not exist
          Given I am on "/admin/halls/9999/edit"
          And I fill in "hall_name" with "blah"
          And I press "Update Building"
          Then I should see "That building does not exist."

 @javascript
 Scenario: I should not be able to edit a building that does not exist
          Given I am on "/admin/halls/9999/edit"
          And I press "Delete Building"
          Then I should see "That building does not exist."
	  
@javascript	  
Scenario: I should be able to delete buildings
 	  Given I am on "/admin/halls"
	  Then I should see "Sirotan"
 	  When I follow "Sirotan"
 	  And I press "Delete Building"
 	  Then I should see "'Sirotan' deleted"

Scenario: Going to Hall that does not exist
	  When I go to "/admin/halls/100"
	  Then I should be on "/admin/halls"
	  And I should see "That building does not exist."
	  
