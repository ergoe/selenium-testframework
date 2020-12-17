Feature: Basic feature

#  @regression
#  Scenario: Basic login test
#    Given Open login page
#    When User enters login credentials
#      | username  | password              |
#      | tomsmith   | SuperSecretPassword!  |
#    Then Taken to secure page should see 'Secure Area'
#
#  @regression
#  Scenario: Basic login test 2
#    Given Open login page
#    When User enters login credentials
#      | username  | password              |
#      | tomsmith   | SuperSecretPassword!  |
#    Then Taken to secure page should see 'Secure Area'

  @regression
  Scenario: Test As a visitor, I can manage the book store Newsletter subscription
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   | Password1  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'