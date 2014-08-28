Feature: Adopting puppies
  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture

  Background:
  Given I am on the puppy adoption site

 Scenario: Name is a required field
   When I checkout leaving the name field blank
   Then I should see the error message "Name can't be blank"

  Scenario: Adopting one puppy
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "Cheezy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "cheezy@example.com" in the email field
    And I select "Credit card" from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Adopting a puppy using partial default data
   When I click the View Details button for "Brook"
   And I click the Adopt Me button
   And I click the Complete the Adoption button
   And I complete the adoption using a Credit card
   Then I should see "Thank you for adopting a puppy!"

  Scenario: Adopting a puppy using all default data
   When I click the View Details button for "Brook"
   And I click the Adopt Me button
   And I click the Complete the Adoption button
   And I complete the adoption
   Then I should see "Thank you for adopting a puppy!"
  Scenario: Adopting a puppy using all default data and navigation
    When I complete the adoption with navigation
    Then I should see "Thank you for adopting a puppy!"
  Scenario: experiment with route
    When I haven't complete the adoption with navigation

