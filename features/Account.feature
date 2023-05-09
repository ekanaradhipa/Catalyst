@Account
Feature: Main

@Account
Scenario: Open Login Page
Given I open voila
And I open Login Page
Then I see Login Page

@Account
Scenario: Login Page
When I see Login Page
Then I enter email
And I enter password
And I submit
Then I login

@Account
Scenario: Check
When I Login
And I go to account page
Then I see my account details
