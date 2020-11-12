Feature:
  NJ-12952 | Text change for footer tab

  Scenario: Tab's name when user is on jobs-in-location SRP
    <Some interesting scenario steps here>
    GIVEN User is on SRP page with only location as search parameter
    WHEN Fat footer is shown to the users
    THEN Tab with title Nearby is shown in Fat footer 
