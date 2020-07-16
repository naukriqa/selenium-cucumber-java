Feature:jobsearch all features
  <Some interesting description here>

  Scenario: jobsearch all scenarios
    <Some interesting scenario steps here>
    @browseTabCheck
Scenario: Validate the IIT-IIM Jobs
Given Logged in user is on NaukriJobsByDesignationPage
And User thenClick on IIT-IIM Jobs
Then Popup asking IIT or IIM jobs should appear
And User thenClick on Engineering Jobs
Then SameWindowValidationOf Premium Engg Jobs Page loads correctly
And User thenClick on IT section and then on view all
Then SameWindowValidationOf User should be redirected to IT IIT SRP
And User again opens Premium iit jobs section
When User then switch to IIM section
Then SameWindowValidationOf user is redirected to this IIM Section
And User thenClicks on view all jobs
Then SameWindowValidationOf user should be redirected to premium iim srp

@browseTabCheck
Scenario: Validate the Government Job
Given Logged in user is on NaukriJobsByDesignationPage
And User thenClick on Govt Jobs
Then SameWindowValidationOf Govt Job page loads correctly
And User thenClicks on defence job and again clicks on any job shown on the page
Then OtherWindowValidationOf clicked job page loads correctly
When User switchTo DefenceGovernment Job window and Click on ViewAllDefenceGovtJobs
Then OtherWindowValidationOf viewAllDefenceGovtJobs page loads correctly

@browseTabCheck
Scenario: Validate the walkin Job
Given Logged in user is on NaukriJobsByDesignationPage
And User thenClick on WalkIn Job
Then SameWindowValidationOf user should redirect to walkIn job srp


@browseTabCheck
Scenario: Validate the international Job
Given Logged in user is on NaukriJobsByDesignationPage
And User thenClick on International Job
Then SameWindowValidationOf internationalJobPage loads correctly
When User whenClick on Canada
Then OtherWindowValidationOf jobsInCanada srp loads correctly
When User switchTo International Job window and Click on ViewAllInternationalJobs
Then OtherWindowValidationOf view all international job srp loads correctly

@browseTabCheck
Scenario Outline: Validation of JobBy..
Given LoggedOut is on NaukriHomePage after that user launch JobsByLocation Page
Then OtherWindowValidationOf page load correctly and user should redirect to the url <JobsByLocationUrl>
When User nowclicks on <JobsBy>
Then OtherWindowValidationOf page load correctly and user should redirect to the url <JobsByUrl>
And User nowclick on <AnyJob>
Then OtherWindowValidationOf page load correctly and user should redirect to the url <ExpectedSrpUrl>
Examples:
|JobsBy||JobsByUrl||AnyJob||ExpectedSrpUrl||JobsByLocationUrl|
|clickJobsByDesignation||https://www.naukri.com/top-jobs-by-designations||clickJavaProgrammerDesignation||https://www.naukri.com/java-programmer-jobs||https://www.naukri.com/jobs-by-location|
|clickJobsByCompany||https://www.naukri.com/top-company-jobs||clickDirectICompany||https://www.naukri.com/directi-internet-solutions-private-limited-jobs-careers-63588||https://www.naukri.com/jobs-by-location|
|clickJobsByCategory||https://www.naukri.com/jobs-by-category||clickAccountingCategory||https://www.naukri.com/accounting-jobs?xt=catsrch&qf[]=1||https://www.naukri.com/jobs-by-location|
|clickJobsByLocation||https://www.naukri.com/jobs-by-location||clickMumbaiLocation||https://www.naukri.com/jobs-in-mumbai||https://www.naukri.com/jobs-by-location|
|clickJobsBySkill||https://www.naukri.com/top-skill-jobs||clickNetworkingSkill||https://www.naukri.com/networking-jobs||https://www.naukri.com/jobs-by-location|

@browseTabCheck
Scenario Outline: Validation of JobByBar..
Given LoggedOut is on NaukriHomePage after that user launch JobsByLocation Page
Then OtherWindowValidationOf page load correctly and user should redirect to the url <JobsByLocationUrl>
When User nowclicks on <JobsBy>
Then OtherWindowValidationOf page load correctly and user should redirect to the url <JobsByUrl>
And User nowclick on <AnyJob>
Then OtherWindowValidationOf page load correctly and user should redirect to the url <ExpectedSrpUrl>

@Chatbot
Scenario: Validate that chatbot should visible in logged in case
    Given Already logged in user lands on srp through google
    And ValidateThat Srp is launched
    When UserScrollDown the page
    Then Chatbot should appear

@Chatbot
Scenario: Validate that chatbot should visible in logged out case
    Given Logged out user lands on srp through google
    And ValidateThat Srp is launched
    When UserScrollDown the page
    Then Chatbot should appear

@Chatbot
Scenario: Validate that chatbot shouldn't visible in logged in mode when cross icon is clicked
    Given Already logged in user lands on srp through google
    And ValidateThat Srp is launched
    When UserScrollDown the page
    Then Chatbot should appear
    When User clicksOnThe crossIcon of chatbotFrame
    Then Chatbot should be disappeared

@Chatbot
Scenario: Validate that chatbot shouldn't visible in logged out mode when cross icon is clicked
    Given Logged out user lands on srp through google
    And ValidateThat Srp is launched
    When UserScrollDown the page
    Then Chatbot should appear
    When User clicksOnThe crossIcon of chatbotFrame
    Then Chatbot should be disappeared

@Chatbot
Scenario: Validate that user should redirect to srp after filling the details in logged In mode
    Given Already logged in user lands on srp through google
    And ValidateThat Srp is launched
    When UserScrollDown the page
    Then Chatbot should appear
    When User fillAllTheDetails on the chatbot
    Then Validate thatUserRedirected to the srp

@Chatbot
Scenario: Validate that user should redirect to srp after filling the details in logged out mode
    Given Logged out user lands on srp through google
    And ValidateThat Srp is launched
    When UserScrollDown the page
    Then Chatbot should appear
    When User fillAllTheDetails on the chatbot
    Then Validate thatUserRedirected to the srp
@smoke @Cluster @234
  Scenario: User selects a Freshness filter
    Given Logged in User is on Srp Page with java
    When He clicks on Freshness filter
    Then Verify that Dropdown with various freshness formats are coming
    And He selects Last 1 Day as filter
    Then Verify that only jobs that are posted in last 24 hours are coming.

  @smoke @Cluster
  Scenario: User selects a Location filter
    Given Logged in User is on Srp Page with java
    Then Verify that at max 4 locations with Checkbox are there on default
    When User clicks on Load More
    Then Verify that Load more functionality is working
    When User selects a checkbox for a location
    Then Verify that Jobs coming are only of the selected location

  @smoke @Cluster
  Scenario: User selects a Job Type
    Given Logged in User is on Srp Page with java
    Then Verify that at max 4 job types with Checkbox are there on default

  @smoke @Cluster
  Scenario: User selects a Salary filter
    Given Logged in User is on Srp Page with java
    Then Verify that Salary Filter is displayed
    When User clicks on Load More of Salary filter
    And User selects a checkbox for a salary
    Then Verify that salary displayed in the coming job tuple

  @Experience
  Scenario: User uses Experience filter slider
    Given Logged in User is on Srp Page with java
    Then Verify that Experience Slider is displayed on default
    When User slides the pointer to 4
    Then Verify that Jobs requiring 4 years of Experience are displayed

  @RefreshLogic
   Scenario: To verify selected clusters persist on refreshing the page
    Given Logged in User is on Srp Page with java,delhi
    When He clicks on Freshness filter
    Then Verify that Dropdown with various freshness formats are coming
    And He selects Last 1 Day as filter
    Then Verify that Salary Filter is displayed
    When User clicks on Load More of Salary filter
    And User selects a checkbox for a salary
    Then Verify that on refreshing clusters remain
@covid
  Scenario: User goes to Covid Page through SRP
    Given Logged in User is on Srp Page with java,delhi
    When User clicks on Visit Career Guide
    Then User should be redirected to Step up page

  @covid
  Scenario: User goes to Covid Page through Recommended Page
    Given Logged in User is on Reco Page
    When User clicks on Visit Career Guide
    Then User should be redirected to Step up page

 @covid @covidPwa
 Scenario: User uses quick links to navigate
   Given Logged in User is on Step Up Page
   When User clicks on first quick links
   Then User should be navigated to Top Companies Hiring Now
   And User clicks on second quick link
   Then User should be navigated to NL courses
   And User clicks on third quick link
   Then User should be navigated to Blogs tray

  @covid
  Scenario: To test Top companies hiring now section
    Given Logged in User is on Step Up Page
    Then Companies hiring now should be visible
    And User clicks on right arrow to view more
    Then 10 companies should appear
    And User clicks on a company jobs
    Then User should be redirected to that company SRP

  @covidPwa
   Scenario: To test Top companies hiring now section in pwa
     Given Logged in User is on Step Up Page
     Then Companies hiring now should be visible
     And User clicks on a company jobs
     Then User should be redirected to that company SRP

  @covid
  Scenario: To test  Industries Active & Hiring section
    Given Logged in User is on Step Up Page
    Then Industries Active & Hiring section should be visible
    And User clicks on right arrow to view more industries
    And User clicks on one of the industries
    Then User should be redirected to suitable SRP

  @covidPwa
  Scenario: To test  Industries Active & Hiring section in pwa
   Given Logged in User is on Step Up Page
   Then Industries Active & Hiring section should be visible
   And User clicks on one of the industries
   Then User should be redirected to suitable SRP

  @covid @covidPwa
  Scenario: To test We are in this together! section
    Given Logged in User is on Step Up Page
    Then We are in this together! section should be visible
    And User clicks on Donate link
    Then He should be redirected to respective link
    And User clicks on Volunteer link
    Then He should be redirected to volunteer respective link

  @covid @covidPwa
  Scenario: To test the Share ideas suggestion box
    Given Logged in User is on Step Up Page
    Then Share your ideas section should be visible
    And Type your suggestion here should be written
    And User tries to submit blank form
    Then It should give validation error
    And User types a suggestion
    Then Success message should be visible

  @covid @covidPwa @x1
  Scenario: User goes to Covid Page through SRP
    Given Not Logged in User is on Srp Page with java,delhi
    When User clicks on Visit Career Guide
    Then User should be redirected to Step up page

  @covid
  Scenario: User goes to Covid Page through Recommended Page
    Given Not Logged in User is on Reco Page
    When User clicks on Visit Career Guide
    Then User should be redirected to Step up page

  @covid @covidPwa
  Scenario: User uses quick links to navigate
    Given Not Logged in User is on Step Up Page
    When User clicks on first quick links
    Then User should be navigated to Top Companies Hiring Now
    And User clicks on third quick link
    Then User should be navigated to Blogs tray
    And User clicks on second quick link
    Then User should be navigated to NL courses

  @covid
  Scenario: To test Top companies hiring now section
    Given Not Logged in User is on Step Up Page
    Then Companies hiring now should be visible
    And User clicks on right arrow to view more
    Then 10 companies should appear
    And User clicks on a company jobs
    Then User should be redirected to that company SRP

  @covidPwa
  Scenario: To test Top companies hiring now section in pwa
   Given Not Logged in User is on Step Up Page
   Then Companies hiring now should be visible
   And User clicks on a company jobs
   Then User should be redirected to that company SRP

  @covid
  Scenario: To test  Industries Active & Hiring section
    Given Not Logged in User is on Step Up Page
    Then Industries Active & Hiring section should be visible
    And User clicks on right arrow to view more industries
    And User clicks on one of the industries
    Then User should be redirected to suitable SRP

  @covidPwa
  Scenario: To test  Industries Active & Hiring section in pwa
    Given Not Logged in User is on Step Up Page
    Then Industries Active & Hiring section should be visible
    And User clicks on one of the industries
    Then User should be redirected to suitable SRP

  @covid @covidPwa
  Scenario: To test We are in this together! section
    Given Not Logged in User is on Step Up Page
    Then We are in this together! section should be visible
    And User clicks on Donate link
    Then He should be redirected to respective link
    And User clicks on Volunteer link
    Then He should be redirected to volunteer respective link

  @covid @covidPwa
  Scenario: To test the Share ideas suggestion box
    Given Not Logged in User is on Step Up Page
    Then Share your ideas section should be visible
    And Type your suggestion here should be written
    And User tries to submit blank form
    Then It should give validation error
    And User types a suggestion
    Then Success message should be visible
@smoke
  Scenario: validate the advance search
    Given User is on homepage
    When user navigate to advance search via qsb
    And user fill advance search form and click on submit button
    Then Validate qsbtext and h1tag on srp page with Java Jobs In Nagpur--java, nagpur

  @smoke
  Scenario: validate the top employer link
      Given User is on homepage
      Then user_should_able_to_click_on_top_employer_link

  @smoke @smoke451
  Scenario: validate the premium designation link
      Given User is on homepage
      When user click on ceo_job_link
      Then Validate user is on ceo job page
      #Then Validate qsbtext and h1tag on srp page with Ceo Jobs--ceo

  @smoke
  Scenario: validate the browse by location page
        Given User is on browse_by jobs-by-location
        Then user should be on the respective browse page with Browse Jobs by Top Locations

  @smoke
    Scenario: validate the browse by jobs-by-category
          Given User is on browse_by jobs-by-category
          Then user should be on the respective browse page with Browse Jobs by Functional Area / Department

  @smoke
      Scenario: validate the browse by company page
          Given User is on browse_by top-company-jobs
          Then user should be on the respective browse page with Browse Jobs by Companies

  @smoke
      Scenario: validate the browse by top-jobs-by-designations
          Given User is on browse_by top-jobs-by-designations
          Then user should be on the respective browse page with Browse Jobs by Designations / Job Titles

  @smoke
      Scenario: validate the browse by top-skill-jobs
          Given User is on browse_by top-skill-jobs
          Then user should be on the respective browse page with Browse Jobs by IT Skills
  @FatFooter
  Scenario: User is able to validate FatFooter section
   Given Not logged in User is on Srp Page with java,nagpur
   Then FatFooter should be visible with heading text
@JD @pwaSmoke
  Scenario: User clicks and open the JD page from SRP
    Given Logged in User is on Srp Page with Java,Delhi
    When User clicks on Job Tuple
    Then JD Page should open

  @JD @pwaSmoke
  Scenario: Job Description Page opens directly  for Logged In Mode
    Given Logged in User is on JD Page with Job ID 090819002152
    Then JD Page should open

  @smoke @JD
  Scenario Outline: User able to open different type of job for not logged in mode
    Given Not Logged in User is on JD Page with Job ID <Job Id>
    Then Verify user is able to open jd page successfully
    Examples:
      |Job Id|
      |090819001787|
      |060115002376|
      |090819002605|
      |090819002685|
      |090819002289|

    @JD2 @pwaSmoke
    Scenario: To check job save/ unsave functionality on JD Page
     Given Logged in User is on JD Page with Job ID 090819002152
     When User clicks on Save Job Button
     Then Job should get saved

    @JD @pwaSmoke
    Scenario: TO check all components loads properly on JD Page
      Given Logged in User is on JD Page with Job ID 090819002152
      Then All components should be displayed
      And User clicks on Company Name
      Then User should be redirected to Company's SRP
      And User clicks on a Location
      Then User should be redirected to Location Search Page

    @JD @pwaSmoke
     Scenario: To check SMJLT alert is working fine
      Given Logged in User is on JD Page with Job ID 090819002152
      And User clicks on SMJLT
      Then Alert should be made

    @JD @pwaSmoke
    Scenario: To verify Social sharing is working on JD
      Given Logged in User is on JD Page with Job ID 090819002152
      And User clicks on Facebook logo
      Then User should be redirected to Facebook
      And User clicks on Twitter logo
      Then User should be redirected to Twitter
      And User clicks on LinkedIn Logo
      Then User should be redirected to LinkedIn

    @JD
     Scenario: To verify Job Description details are coming
     Given Logged in User is on JD Page with Job ID 090819002152
     Then Job Desctiption details section should be displayed
     And User clicks on Role
     Then He should be redirected to that role SRP
     And User clicks on Industry Type
     Then He should be redirected to that industry type jobs SRP
     And User clicks on a Key skill
     Then He should be redirected to keyskill SRP

     @JD @pwaSmoke
     Scenario: To verify About Company Section is coming
      Given Logged in User is on JD Page with Job ID 090819002152
      Then About Company Section should be visible

     @JD @jd1
      Scenario: To verify Match Score is coming on JD in logged in mode
      Given Logged in User is on JD Page with Job ID 090819002152
      Then Match Score Widget should be visible
      And User clicks on a Match Score Keyskill tuple
      Then He should be redirected to that keyskill SRP

      @JD
       Scenario: To verify JD Sticky header and Fat Footer
       Given Logged in User is on JD Page with Job ID 090819002152
       Then Fat footer should be visible
       Then JD Sticky Header should be visible

    @JD1 @Test @pwaSmoke
     Scenario: To verify Similar jobs widget is visible
      Given Logged in User is on JD Page with Job ID 090819001787
      Then Sim Jobs widget should be visible at the end
      And User clicks on View All
      Then He should be redirected to Sim Jobs page
      
@JobTag
  Scenario: User selects a job tag
    Given Logged in User is on Srp Page with java,pune
    When User clicks on job tag
    Then Search count should be decreased

  @JobTag
  Scenario: To verify count of job tags
    Given Logged in User is on Srp Page with java,pune
    Then 10 or less job tags should be present

  @JobTag
  Scenario: Job tag is selected on clicking
    Given Logged in User is on Srp Page with java,pune
    When User clicks on job tag
    Then Job tag attribute should have selected
@RecoJob
  Scenario: CTC Preferences edit on Recommended job page
    Given Logged in User is on Reco Page
    When User clicks to edit expected CTC
    Then Manage your Preferences window should open
    And User edit CTC from current CTC
    And User clicks on save
    Then Preferences should get saved

  @RecoJob
  Scenario: Location edit on Recommended job page
    Given Logged in User is on Reco Page
    When User wants to change preferred location
    Then Manage your Preferences window should open
    And User change location from current location
    And User clicks on save
    Then Modified Location should get saved
@Logout
Scenario Outline: Validation of Logout through homepage
Given Logged In Special User is on NaukriPage
Then SameWindowValidationOf the link <url1>
When User is hovering on <element>
And User clicked on <locator>
Then SameWindowValidationOf the link <url2>
Examples:
|element||locator||url1||url2|
|hoverMyNaukriOnGnb||afterHoverClickLogout||https://www.naukri.com/mnjuser/homepage||https://www.naukri.com/|

@Logout
Scenario Outline: Validation of Logout through srp page
Given Logged In User is on NaukriPage
Then SameWindowValidationOf the link <url1>
When User is hovering on <element>
And User clicked on <locator>
Then SameWindowValidationOf the link <url2>
Examples:
|element||locator||url1||url2|
|hoverMyNaukriOnGnb||afterHoverClickLogout||https://www.naukri.com/java-jobs-in-chandigarh||https://www.naukri.com/nlogin/logout|

@Logout
Scenario Outline: Validation of Logout through jd page
Given Logged In User is on NaukriPage
Then SameWindowValidationOf the link <url1>
And User launch a particular <url3>
Then SameWindowValidationOf the link <url3>
When User is hovering on <element>
And User clicked on <locator>
Then SameWindowValidationOf the link <url2>    

Scenario: validation of hfhf
Given logged in to Whtma page

