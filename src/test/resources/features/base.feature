Feature: Basic feature

  @smoke
  Scenario: Basic login test
    Given Open login page
    When User enters login credentials
      | username  | password              |
      | tomsmith  | SuperSecretPassword!  |
    Then Taken to secure page should see 'Secure Area'