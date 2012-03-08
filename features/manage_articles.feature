Feature: Manage Articles
In order to make a blog
As an author 
I want to create and manage articles

Scenario: Articles List

Given I have articles titled Ruby
When I go to the list of articles	
Then I should see the "Ruby"

