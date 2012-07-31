Feature: SoundCloud Groups Functionality
  In order to find people that shares interests and discover new sounds
  As a user
  I want to join groups

  Scenario Outline: Join a group
    Given I am at the dashboard
    When I search for "<Search Term>"
    And I filter the results to groups
    And I enter the group "<Search Term>"
    And I join the group
    Then I can post a message "<Message>" to the group
#    And I can delete the post
#    And I can leave the group

  Examples:
    | Search Term | Message          |
    | Fresno Rock | this band rocks! |