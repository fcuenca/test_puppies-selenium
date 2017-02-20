Feature: Puppy Admin functions
  As a site admin
  I want to do and see things oher people cannot
  So that I can feel I'm important

Background:
  Given I am on the puppy adoption site

@wip
Scenario: Verify message when adoption is processed
  Given I have a pending adoption for "Tom Jones"
  When I process that adoption
  Then I should see "Please thank Tom Jones for the order!"
