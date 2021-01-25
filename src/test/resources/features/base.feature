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
#  Scenario: Test Verify user can log into Admin
#    Given Open login page
#    When User enters login credentials
#      | username          | password   |
#      | eric.goeckeritz   | Password1  |
#    Then Taken to secure page should see 'Welcome Eric Goeckeritz'

  @regression
  Scenario: Test Verify user upload file to create a product
    Given Open login page
    When User enters login credentials
      | username          | password   |
      | eric.goeckeritz   | L@goe5910an  |
    Then Taken to secure page should see 'Welcome Eric Goeckeritz'
    Then Navigates to the product file import