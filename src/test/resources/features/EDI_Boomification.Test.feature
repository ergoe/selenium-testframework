Feature: EDI Boomification Test Feature

  @xmltest
  Scenario: Test sending xml into boomi
    When User creates ArrayOfOrder xml using '' file
    |placeholer 1 |placeholder 2 |placeholder 3 |placeholder 4  |
    |value 1-1    |value 1-2     |value 1-3     |value 1-4      |
    |value 2-1    |value 2-2     |value 2-3     |value 2-4      |
    |value 3-1    |value 3-2     |value 3-3     |value 3-4      |
    |value 4-1    |value 4-2     |value 4-3     |value 4-4      |
    |value 5-1    |value 5-2     |value 5-3     |value 5-4      |
    |value 6-1    |value 6-2     |value 6-3     |value 3-4      |
    |value 7-1    |value 7-2     |value 7-3     |value 3-4      |
    |value 8-1    |value 8-2     |value 8-3     |value 3-4      |
    |value 9-1    |value 9-2     |value 9-3     |value 3-4      |

