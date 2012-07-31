Feature: SoundCloud Login Functionality
  In order to access my account
  As a user
  I want to login in my account

  Scenario Outline: Login to SoundCloud
    Given I am on Soundcloud
    When I login to Soundcloud as "<username>" and "<password>"
    Then the dashboard is displayed

  Examples:
    | username                  | password       |
    | microchipatwork@gmail.com | churrasco@123! |

  @wip
  Scenario Outline: Login to Soundcloud with wrong credentials
    Given: I am on Soundcloud
    When I login to Soundcloud as "<username>" and "<password>"
    Then I see the incorrect login message

  Examples:
    | username                  | password       |
    | microchipatwork@gmail.com | chimarrao@123! |




