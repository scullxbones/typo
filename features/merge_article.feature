Feature: Merge Articles
  As a blog administrator
  In order to keep a clean and concise blog
  I want to be able to merge articles into one

  Background:
    Given the blog is set up

  Scenario: A non-admin cannot merge articles.
  	Given I am on the edit article "1" page
  	Then I should not see "Merge Article"

  Scenario: An admin can merge article text.
    Given I am logged into the admin panel
  	And I am on the edit article "1" page
  	When I fill in "merge_with" with "2"
  	And I press "Merge"
  	Then the articles are merged together
  	And the merged article should contain the text of both previous articles.
  	And the merged article should have the author assigned with the earlier publish date
  	And the merged article should have the comments of both articles combined
