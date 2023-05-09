@Login Negative
Feature: Main

@Negative
Scenario: Open Login Page
Given I open voila
And I open Login Page
Then I see Login Page

@Negative
Scenario: Login Wrong Email (not impelemented)
When I see Login Page
Then I enter wrong email
And I enter password
And I submit

@Negative
Scenario: Login Wrong Password (not impelemented)
When I see Login Page
Then I enter email
And I enter wrong password
And I submit

