@Search
Feature: Search

@Search
Scenario: Open Web
Given I open voila
And I click on search icon
Then I see search bar

@Search
Scenario: Search Positive
When I see search bar
And I type keyword
Then I see list of items

@Search
Scenario: Search Negative
When I see search bar
And I type wrong keyword
Then I see pop up stating no result
