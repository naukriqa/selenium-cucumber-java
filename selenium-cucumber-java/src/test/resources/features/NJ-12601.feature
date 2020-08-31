Feature: NJ-12601 - Social Media links
  <Some interesting description here>

  Scenario: To show Instagram handle on overview tab
    <Some interesting scenario steps here>
    Given Logged in User is on Company Page Free
    When User is on Overview tab
    And if Instagram link is available 
    Then Instagram icon is shown
    And when user clicks on Instagram icon
    Then User is taken to company Instagram page

Scenario: To show Facebook handle on overview tab
    <Some interesting scenario steps here>
    Given Logged in User is on Company Page Free
    When User is on Overview tab
    And if Facebook link is available 
    Then Facebook icon is shown
    And when user clicks on Facebook icon
    Then User is taken to company Facebook page
    
    Scenario: To show LinkedIn handle on overview tab
    <Some interesting scenario steps here>
    Given Logged in User is on Company Page Free
    When User is on Overview tab
    And if LinkedIn link is available 
    Then LinkedIn icon is shown
    And when user clicks on LinkedIn icon
    Then User is taken to company LinkedIn page
    
    Scenario: To show Youtube handle on overview tab
    <Some interesting scenario steps here>
    Given Logged in User is on Company Page Free
    When User is on Overview tab
    And if Youtube link is available 
    Then Youtube icon is shown
    And when user clicks on Youtube icon
    Then User is taken to company Youtube page
    
     Scenario: To show Twitter handle on overview tab
    <Some interesting scenario steps here>
    Given Logged in User is on Company Page Free
    When User is on Overview tab
    And if Twitter link is available 
    Then Twitter icon is shown
    And when user clicks on Twitter icon
    Then User is taken to company Twitter page