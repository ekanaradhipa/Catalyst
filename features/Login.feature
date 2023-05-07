@Login
Feature: Main

@Login
Scenario: Login Page
Given I open voila
And I open Login Page
Then I see Login Page

@Login
Scenario: Login Page
When I see Login Page
Then I enter email
And I enter password
And I submit
Then I login

@Cart
Scenario: Add item to cart
Given I login
And I go to Item Page
And I add to cart

