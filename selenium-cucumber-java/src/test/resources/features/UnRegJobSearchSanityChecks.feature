Feature:
  Basic sanity checks for unreg job search

  Scenario:
    Validate that company searches is working fine when URL is entered
        When Not Logged in User enters a URL of a company that has jobs live. e.g https://www.naukri.com/amazon-development-centre-india-pvt-ltd-jobs-careers-194374
        Then User should be navigated to search results page
        And 1-<x> of <y> Java Developer Jobs should be visible
        And <x> job tuples should be visible
        And  <y>/20 +1 (if not exact multiple of 20) pages should be visible
        And company name in tuple should be that mentioned in URL. e.g Amazon
        
    Scenario: Validate that company searches is working fine when company name is searched in keyword textbox
        Given Not Logged in User is on home page
        When Not Logged in User enters name of a company that has jobs live in keyword textbox. e.g Amazon
        Then User should be navigated to search results page
        And 1-<x> of <y> Java Developer Jobs should be visible
        And <x> job tuples should be visible
        And <y>/20 +1 (if not exact multiple of 20) pages should be visible
        And company name in tuple should be that mentioned in keyword textbox. e.g Amazon
        
    Scenario: Validate that Job Id search is working fine when Job Id is searched in keyword textbox
        Given Not Logged in User is on home page
        When Not Logged in User enters a live JobId in keyword textbox. e.g 051120004592
        Then User should be navigated to search results page
        And 1 - 1 of 1051120004592 Jobs is visible
        
    Scenario: Validate that double quote search is working fine
        Given Not Logged in User is on home page
        When Not Logged in User enters "teacher computer"
        Then User should be navigated to search results page
        And 1 - <x> of <y> "Teacher Computer" Jobs is visible
        
    Scenario: Validate that the location specified in the location textbox is honored
        Given Not Logged in User is on home page
        When User searches for java developer in keyword 
        And mumbai in location
        Then User should be navigated to search results page
        And 1-<x> of <y>Java Developer Jobs In Mumbai should be visible
        And <x> job tuples should be visible
        And  <y>/20 +1 (if not exact multiple of 20) pages should be visible
        And location list mentioned in top 5 tuples should contain Mumbai
        
    Scenario: Validate that the jobCount displayed in breadcrumbs number of  job tuples and number of pages displayed at the bottom of SRP in  not logged in mode
        Given Not Logged in User is on home page
        When User searches for java developer
        Then User should be navigated to search results page
        And 1-<x> of <y> Java Developer Jobs should be visible
        And <x> job tuples should be visible
        And  <y>/20 +1 (if not exact multiple of 20) pages should be visible
        
    Scenario: Validate that filters and sort on SRP Page are working correctly
        Given User is on SRP Page after searching for java developer
        Then 1-<x> of <y> Java Developer Jobs should be visible
        When user applies freshness filter of last 1 day
        Then 1-<a> of <b> Java Developer Jobs should be visible
        And  a <=x and b<y
        And  Posting date displayed on tuple is "JUST NOW" or "TODAY" or "1 DAY AGO"
        When user clicks on Applied(1) and unchecks Last 1day
        Then 1-<x> of <y> Java Developer Jobs should be visible
        And  a <=x and b<y
        
    Scenario: Repeat above scenario for other filters and sort. Apply location, salary, experience, posted by, education, industries filters, sort by date one by one and check if the tuples reflect appropriate filter and sort criteria
           