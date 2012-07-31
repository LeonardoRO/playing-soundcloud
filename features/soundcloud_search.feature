Feature: SoundCloud Search Functionality
  In order to find tracks users and groups
  As a user
  I want to be able to search for tracks user and groups

  Scenario Outline: Search at SoundCloud
    Given I am at the dashboard
    When I search for "<Search Term>"
    Then I should see the search results for "<Search Term>"

  Examples:
    | Search Term                       |
    | wander wildner                    |
    | Wander Wildner e Chulé de Coturno |
    | ac/dc                             |