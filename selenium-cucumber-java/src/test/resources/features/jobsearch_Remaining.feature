Feature:jobsearch_Remaining
  <Some interesting description here>

  Scenario:jobsearch_Remaining
    <Some interesting scenario steps here>
    @countOnSrp
Scenario: Validation of notification count on srp
   Given Logged In User is on Srp Page with Java
   When User is going to have count of Notification Icon
   And User is hoveringOn notification again
   Then Validate that the notificationCount doesn't changes

@countOnJd
Scenario: Validation of notification count on jd page
   Given Logged in User is on JD Page with Job ID 090819002152
   When User is going to have count of Notification Icon
   And User is hoveringOn notification again
   Then Validate that the notificationCount doesn't changes

  @otp
  Scenario: User login using OTP.
    Given Not Logged in User is on Srp Page with java,nagpur
    When User enters mobile number
    And User enters the OTP
    #Then User should be logged in
@HamBurgerCheck 
Scenario Outline: Validation on all Hamburger links
Given <UserStatus> is on NaukriPWA
When User nowClick on <link>
And User clicked on <HamElement>
Then SameWindowValidationOf the link <ExpectedUrl>
Examples:
|UserStatus||link||HamElement||ExpectedUrl|
|Logged Out||clickOnHamburger||clickRecruiterSearchOnHam||https://www.naukri.com/hr-recruiters-consultants|
|Logged Out||clickOnHamburger||clickIitIimJobsOnHam||https://www.naukri.com/premium|
|Logged Out||clickOnHamburger||clickCJAOnHam||https://www.naukri.com/free-job-alerts|
|Logged Out||clickOnHamburger||clickPaidJobSeekerServicesOnHam||https://resume.naukri.com/?fftid=mob_ham_dir|
|Logged Out||clickOnHamburger||clickFAQOnHam||https://www.naukri.com/faq/job-seeker|
|Logged Out||clickOnHamburger||clickFeedbackAndRateOnHam||https://www.naukri.com/mnj/rating-feedback|
|Logged Out||clickOnHamburger||clickForEmployerOnHam||https://www.naukri.com/recruit/buy-resume-database-access-packages?utm_campaign=naukrijs&utm_source=naukrimobile&utm_medium=naukrihamburger|
|Logged Out||clickOnHamburger||clickAboutUsOnHam||https://www.naukri.com/aboutus|
|Logged In||clickOnHamburger||clickSearchRecruiterOnHamInLoggedIn||https://www.naukri.com/hr-recruiters-consultants|
|Logged In||clickOnHamburger||clickRecoJobsOnHam||https://www.naukri.com/recommendedjobs|
|Logged In||clickOnHamburger||clickSettingOnHam||https://www.naukri.com/mnj/settings|
|Logged In||clickOnHamburger||clickPaidJobSeekerServicesOnHamInLoggedIn||https://resume.naukri.com/?fftid=mob_ham_dir|
|Logged In||clickOnHamburger||clickSearchJobsOnHam||https://www.naukri.com/searchform|
|Logged In||clickOnHamburger||clickFAQsOnHamInLoggedIn||https://www.naukri.com/faq/job-seeker|
|Logged In||clickOnHamburger||clickAboutUsOnHamInLoggedIn||https://www.naukri.com/aboutus|
|Logged In||clickOnHamburger||clickFeedback&RateOnHamInLoggedIn||https://www.naukri.com/mnj/rating-feedback|
|Logged In||clickOnHamburger||clickMyNaukriHomeOnHam||https://www.naukri.com/mnj/dashboard|
|Logged In||clickOnHamburger||clickSavedJobsOnHam||https://www.naukri.com/mnj/savedjobs|
|Logged In||clickOnHamburger||clickCJAOnHamInLoggedIn||https://www.naukri.com/alert/custom|
|Logged In||clickOnHamburger||clickAppliedJobsOnHam||https://www.naukri.com/apply/historypage|
|Logged In||clickOnHamburger||clickMessagesOnHamInLoggedIn||https://www.naukri.com/mnj/Inbox/viewRecruiterMails/client/m0b5|
|Logged In||clickOnHamburger||clickIitIimJobsOnHamInLoggedIn||https://www.naukri.com/premium|
|Logged Out||clickOnHamburger||clickLoginOnHam||https://www.naukri.com/mnj/login|
|Logged Out||clickOnHamburger||clickSearchBoxOnHam||https://www.naukri.com/searchform|

@HamBurgerDynamicCheck
Scenario Outline: Validation on all Hamburger Dynamic links
Given <UserStatus> is on NaukriPWA
When User nowClick on <link>
And User clicked on <HamElement>
Then DynamicValidationOf the link <ExpectedUrl>
Examples:
|UserStatus||link||HamElement||ExpectedUrl|
|Logged In||clickOnHamburger||clickDownloadTheAppOnHamInLoggedIn||play.google.com/store/apps/details?id=naukriApp|
|Logged Out||clickOnHamburger||clickRegisterOnHam||naukri.com/registration|
|Logged Out||clickOnHamburger||clickOnDownloadTheAppOnHam||play.google.com/store/apps/details?id=naukriApp|

@JobsByPwa
   Scenario: Validation Of Jobs By Top Brands
   Given User is on homepage
   When User clicks on any one jobs under Jobs By Top Brands
   Then User should redirect to correct JobsByUrl of Top Brands and unique webelement
   And User is redirect on homepage
   When User clicks on any one jobs under Jobs By Domains
   Then User should redirect to correct JobsByUrl of Domains and unique webelement
   And User is redirect on homepage
   When User clicks on any one jobs under Jobs By Category
   Then User should redirect to correct JobsByUrl of Category and unique webelement
   And User is redirect on homepage
   When User clicks on any one jobs under Jobs By Location
   Then User should redirect to correct JobsByUrl of Location and unique webelement
   And User is redirect on homepage
   When User clicks on any one jobs under Jobs By Featured Companies
   Then User should redirect to correct JobsByUrl of Featured Companies and unique webelement

@ReplyMessage @c11
    Scenario: Validation of reply of recruiter messages
    Given User is on NaukriHomepage in LoggedIn mode
    When User is going to click on Hamburger
    And Now User is going to click on Messages
    When User is going to click on Message1
    And Now User is going to click on Reply
    Then Validating the reply is done successfully

@DeleteMessage @c11
    Scenario: Validation of delete of recruiter messages
    Given User is on NaukriHomepage in LoggedIn mode
    When User is going to click on Hamburger
    And Now User is going to click on Messages
    When User is going to click on Message1
    And Now User is going to click on Delete
    Then Validating the delete is done successfully

@locationSuggestorsPwa
    Scenario: Validation of location autosuggestors in naukriPwa
    Given User is on NaukriHomepage in LoggedIn mode
    When User isGoingToClickOn searchIcon
    And Now User is goingToClick on location & send some value in it
    Then Validate the location autosuggestor must appear

@keyskillSuggestorsPwa
    Scenario: Validation of keyskill autosuggestors in naukriPwa
    Given User is on NaukriHomepage in LoggedIn mode
    When User isGoingToClickOn searchIcon
    And Now User is goingToClickOn keyword & send some value in it
    Then Validate the keyword autosuggestor must appear
@pwaRedirection @pwaSmoke
Scenario Outline: Validation of PageRedirectionInPwa
Given Logged Out user is on NaukriHomePage
When User thennClick on hamburger and then searchJob
Then SameWindowValidationOf User should redirect to correct <naukriUrl1>
When User thennClick on KeySkill Location and Search Button
Then SameWindowValidationOf User should redirect to correct <naukriUrl2>
And User nowwClick on saveJobIcon
Then SameWindowValidationOf User should redirect to correct <naukriUrl3>
When User login on pwaNaukri
Then SameWindowValidationOf theSrpNaukriPage <naukriUrl2>
When User thennClick on jobJd
Then DynamicWindowValidationOf User should redirect to correct <naukriUrl4>
And User nowwClick on backButtonOfBrowser
Then SameWindowValidationOf User should redirect to correct <naukriUrl2>
And User nowwClick on backButtonOfBrowser
Then SameWindowValidationOf User should redirect to correct <naukriUrl3>
And User nowwClick on backButtonOfBrowser
Then SameWindowValidationOf User should redirect to correct <naukriUrl2>
And User nowwClick on backButtonOfBrowser
Then SameWindowValidationOf User should redirect to correct <naukriUrl1>
And User nowwClick on backButtonOfBrowser
Then SameWindowValidationOf User should redirect to correct <naukriUrl5>
Examples:
|naukriUrl1||naukriUrl2||naukriUrl3||naukriUrl4||naukriUrl5|
|https://www.naukri.com/searchform||https://www.naukri.com/c-jobs-in-ahmedabad||https://www.naukri.com/mnj/logout?errorMsg=Please%20login%20to%20proceed&redirectTo=https://www.naukri.com/c-jobs-in-ahmedabad||https://www.naukri.com/job-listings-||https://www.naukri.com/mnj/dashboard|

@smoke @QSB @pwaSmoke
  Scenario: User modifies search by adding another keyword
    Given Logged in User is on Srp Page with java,nagpur
    When User clicks on modify search
    And Enters PHP in keyword field
    And Clicks Modify Search
    Then Search should be with modified keyword

  @smoke @QSB @smoke1 @pwaSmoke
  Scenario: User modifies search by adding a location
    Given Logged in User is on Srp Page with java,Ranchi
    When User clicks on modify search
    And Enters nagpur in Location field
    And Clicks Modify Search
    Then Search should be with modified location


  @smoke @QSB @pwaSmoke @test
  Scenario: User uses a stopword
    Given Logged in User is on Srp Page with java,nagpur
    When User clicks on modify search
    And Enters Stopword in Keyword Field
    And Clicks Modify Search
    Then Search should be redirected to jobs in nagpur
   
  @pwaSmoke
  Scenario: User search for a valid keyskill and location
    Given Logged in User is on pwa searchform
    When Enters java,noida in Keyskills and location Field
    And Clicks on Search jobs
    Then Verify that url contains java,noida

  @pwaSmoke
  Scenario: User clicks on links present on zero srp page
    Given Logged in User is on Srp Page with java,nagpur
    When User clicks on modify search
    And Enters java,sdjkbfhsdbhsf in Keyskills and location Field
    And Clicks on Search jobs
    Then Verify the zero srp page
    And click on link present on page
    Then validate the URL 
    
 @RecoJobApply
  Scenario: Apply on Recommended job page
    Given Logged in User is on Reco Page
    When user selects multiple jobs
    Then Apply button should be clickable
@RecoJob
  Scenario: Job Tuple on Recommended job page
    Given Logged in User is on Reco Page
    When User Clicks on Job Tuple
    Then Job Description Page should open

  @RecoJob
  Scenario: User tries to Hide a Job
     Given Logged in User is on Reco Page
     When User Clicks on Hide Job
     Then The Job should be hidden
     And The total jobs count should be reduced

  @RecoJob
  Scenario: User tries to Undo a Hide Job
    Given Logged in User is on Reco Page
    When User Clicks on Hide Job
    And User clicks on Undo
    Then Same job should come back

  @RecoJob
  Scenario: User tries to Give a Feedback
    Given Logged in User is on Reco Page
    When User Clicks on Hide Job
    And The user clicks on Tell Us Why
    Then Feedback form should open
    And User tries to submit form
    Then confirmation message should be given

  @RecoJob
  Scenario: User try to select multiple jobs
    Given Logged in User is on Reco Page
    Then Validate the apply button disability
    When User selectssss multiple jobs
    Then Validate the apply button with correct job count

   @RecoJobPwa
    Scenario: User try to select multiple jobs on pwa
    Given Logged in User is on Reco Page
    Then Validate the apply button is not displayed
    When User selects one of the reco job
    Then Validate the apply button is displayed
    
@CJAMergeJOB
   Scenario: After Clicking on Yes Button , success message should come
    Given Logged in User is on cja merge page
    When user Click on Yes button on feedback tuple
    Then success toast message should come

  @CJAMergeJOB
  Scenario: After clicking on Yes Button, toast message should be hide automatically
      Given Logged in User is on cja merge page
      When user Click on Yes button on feedback tuple
      Then success toast message should be hide automatically

  @CJAMergeJOB
  Scenario: After Clicking on No Button ,Please Let Us Know widjet should come
        Given Logged in User is on cja merge page
        When user Click on NO button on feedback tuple
        Then Please Let Us Know widjet should come

  @CJAMergeJOB
    Scenario: By default submit button should be disabled after clicking No button
          Given Logged in User is on cja merge page
          When user Click on NO button on feedback tuple
          Then By default submit button should be disabled

  @CJAMergeJOB
      Scenario: Cancel button should be enabled after clicking No button
            Given Logged in User is on cja merge page
            When user Click on NO button on feedback tuple
            Then Cancel button should be enabled after clicking No button

  @CJAMergeJOB
  Scenario: User should be able to click No and yes button
    Given Logged in User is on cja merge page
    Then User should be able to click No and yes button

  @CJAMergeJOB
   Scenario: User try to open cja merge page in logged in state
   Given Logged in User is on cja merge page
   Then User should be able to open the page in logged in state

  @CJAMergeJOB
   Scenario: User try to open cja merge page in logged out state
    Given Logged out User is on cja merge page
    Then User should be redirected to login page
    
 @Register
  Scenario: User clicks on Registration Widget to register
    Given Not Logged in User is on Srp Page with Java,nagpur
    Then Registration Widget should be visible
    And User clicks on Register Now Button
    Then User should be redirected to Registration form
@saved @pwaSmoke
Scenario: validate the save job functionality for logged in user
Given logged in User is on Srp Page with Java,Ranchi
When user click on save jobs
Then it should change status according to previous status
And  it should also reflect the same change in saved jobs of user
   
@saved @pwaSmoke @co
Scenario: validate the save job functionality for logged out user
Given logged out User is on Srp Page with Java,Ranchi
When user click on save jobs
Then login pop will appear
Then it should change status according to previous status
And  it should also reflect the same change in saved jobs of user
@SearchPwa1
Scenario Outline: Validation of SearchForm functionality on Pwa in Logged Out mode
Given <UserStatus> is on NaukriPWA
And User clicked on <SearchElement1>
Then SameWindowValidationOf the link <url>
Then Validate SearchForm Page element
When User nowClick on <hamburger>
And User clicked on <SearchElement2>
Then SameWindowValidationOf the link <url>
Then Validate SearchForm Page element
When User nowClick on <hamburger>
And User clicked on <NaukriLogo>
When User scrollDown on the page
And User clicked on <SearchElement3>
Then SameWindowValidationOf the link <url>
Then Validate SearchForm Page element
Examples:
|UserStatus||url||NaukriLogo||hamburger||SearchElement1||SearchElement2||SearchElement3|
|Logged Out||https://www.naukri.com/searchform||NaukriLogoPwa||clickOnHamburger||clickSearchElement1||clickSearchElement2||clickSearchElement3|


@SearchPwa1
Scenario Outline: Validation of SearchForm functionality on Pwa in Logged In mode
Given <UserStatus> is on NaukriPWA
When User nowClick on <hamburger>
And User clicked on <SearchElement1>
Then SameWindowValidationOf the link <url>
Then Validate SearchForm Page element
When User nowClick on <hamburger>
And User clicked on <NaukriHome>
When User nowClick on <SearchElement2>
Then SameWindowValidationOf the link <url>
Then Validate SearchForm Page element
Examples:
|UserStatus||url||NaukriHome||hamburger||SearchElement1||SearchElement2|
|Logged In||https://www.naukri.com/searchform||NaukriHomePwa||clickOnHamburger||clickSearchElement5||clickSearchElement4|

@SearchPwa1 @pwaSmoke @c
Scenario Outline: Validation of RecentSearchFunctionalityOnPwa
Given <UserStatus> is on NaukriPWA
When User nowClick on <element1>
And User clicked on <element2>
Then SameWindowValidationOf the link <url1>
When User fills the searchForm
Then SameWindowValidationOf the link <url2>
When User clickOn ModifyOnPwa
Then SameWindowValidationOf the link <url1>
When User fills the searchForm again
Then SameWindowValidationOf the link <url3>
When User clickOn ModifyOnPwa
Then SameWindowValidationOf the link <url1>
Then Validate the <recentSearch> appears or not
And User clicked on <element3>
Then SameWindowValidationOf the link <url3>
When User clickOn ModifyOnPwa
And User clicked on <element4>
Then SameWindowValidationOf the link <url2>
Examples:
|UserStatus||element1||element2||element3||element4||recentSearch||url1||url2||url3|
|Logged Out||clickOnHamburger||clickSearchBoxOnHam||clickFirstRecentSearchOnPwa||clickSecondRecentSearchOnPwa||recentSearchOnPwa||https://www.naukri.com/searchform||https://www.naukri.com/java-jobs-in-chandigarh||https://www.naukri.com/java-jobs-in-delhi|
|Logged In||clickOnHamburger||clickSearchBoxOnHam||clickFirstRecentSearchOnPwa||clickSecondRecentSearchOnPwa||recentSearchOnPwa||https://www.naukri.com/searchform||https://www.naukri.com/java-jobs-in-chandigarh||https://www.naukri.com/java-jobs-in-delhi|

 @Tupleminusdelta
  Scenario Outline: Validate the testcases for internship 
   Given logged out User is on Srp Page with <Jobid>
   ##And pass the job id for the validation "<Jobid>"
   When pass the job type of job "<Jobtype>"
   Then verify job tuple is present
   And Verify date,Stipend and location are present in respective orders
   And Verify job type is as per requirement
   And verify that salary is present according to per month
   And verify maximum number of skills and tags is less than eight also more than zero
   And verify no skills or tags are duplicate
   And verify company name is not clickable 
   Examples:
   |Jobid|Jobtype|
   |230919000012|INTERNSHIP|
   
   
    @Tupleminusdelta
  Scenario Outline: Validate the testcases for Walkin 
   Given logged out User is on Srp Page with <Jobid>
  ## And pass the job id for the validation "<Jobid>"
   When pass the job type of job "<Jobtype>"
   Then verify job tuple is present
   And Verify date,Stipend and location are present in respective orders
   And Verify job type is as per requirement
   And verify maximum number of skills and tags is less than eight also more than zero
   And verify no skills or tags are duplicate
   Examples:
   |Jobid|Jobtype|
   |311019002271|WALK-IN|
   
   
  @Tupleminusdelta
  Scenario Outline: Validate the testcases for other type of jobs
   Given logged out User is on Srp Page with <Jobid>
  ## And pass the job id for the validation "<Jobid>"
   When pass the job type of job "<Jobtype>"
   Then verify job tuple is present
   And Verify job type is as per requirement
   And verify maximum number of skills and tags is less than eight also more than zero
   And verify no skills or tags are duplicate
   And verify company name is not clickable 
   Examples:
   |Jobid|Jobtype|
   |310818001568|Premium|
   |191119000327|HOT JOB|
   |311019901131|PREFERRED|
   
  
   @Tupleminusdelta
  Scenario: Validate the testcases for other type of jobs
   Given logged out User is on Srp Page with 311019901131
 ##  And pass the job id for the validation "121119008738"
   When pass the job type of job "PREFERRED"
   Then verify job tuple is present
   And Verify job type is as per requirement
   And verify maximum number of skills and tags is less than eight also more than zero
   And verify no skills or tags are duplicate 
   And Company logo is present
   And Company logo is not clickable
   
@SRPSorting
  Scenario: User is able to validate Sorting Feature
   Given Not logged in User is on Srp Page with Java
   Then Verify that Sorting is based on Relevance
   When user log in
   Then Verify that Sorting is based on Recommended
   And Verify that it sort the results on the basis of 3 parameters
   When user is on different page and change the sorting label
   Then User redirected to the first page
   
  @SRPSorting
  Scenario: Validate the Job tag chips on pagination
   Given Not logged in User is on Srp Page with Java
   When user selects java tag chip
   And user navigates to second page
   Then Single java tag chip should be selected
@ssa @pwaSmoke3
Scenario: validate the save as alert functionality for not registerd user
Given Not Registered User is on Srp Page with Java,Ranchi
When user click on save as alert button and send the alert data
Then alert should be saved successfully

@ssa @pwaSmoke
Scenario: validate the save as alert functionality for logged out user
Given logged out User is on Srp Page with Java,Ranchi
When user click on save as alert button and send the alert data
Then alert should be saved successfully

@ssa @pwaSmoke
Scenario: validate the save as alert functionality for logged in user
Given logged in User is on Srp Page with Java,Ranchi
When user click on save as alert button and send the alert data
Then alert should be saved successfully

@ssa @pwaSmoke
Scenario: validate the delete alert functionality for logged in user
Given logged in User is on Srp Page with Java,Ranchi
When user click on delete button to delete all alerts   
      
   
   
 
  




    
    
    
    
