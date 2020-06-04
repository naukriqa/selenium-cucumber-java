Feature: Verify Create Job Alert  Page

  @smoke @cja
  Scenario: validate the max alert of cja
    Given User is on cja alert page
    When User fill cja form with java,noida,java@gmail.com,java
    Then User is on url contains nlogin/login

  @cja
  Scenario: User able to create cja alert
    Given User is on cja alert page
    When User fill cja form with java,noida,random,java
    When User click on modify button
    Then User verify the cja details with java-noida, -1-1-Accounting, Finance-Accounts, Finance, Tax, Company Secretary, Audit-Accounts Executive/Accountant

  @cja
   Scenario: User able to modify cja alert
     Given User is on cja alert page
     When User fill cja form with python,noida,random,java
     When User click on modify button
     When User modify keyskills with java
     When User click on update job alert button
     When User click on modify button
     Then User verify the cja details with java-noida, -1-1-Accounting, Finance-Accounts, Finance, Tax, Company Secretary, Audit-Accounts Executive/Accountant

   @feedbackPwa @c111
    Scenario: User able to fill feedback form in pwa
    Given User is on feedback page
    When User fill feedback form
    Then Validate that feedback is saved or not

   @cjaPwa @c111
    Scenario Outline: Logged Out User is unable to create more than five cja
    Given <Status> User is on cjaPageOnPwa
    When <Status> User is going to fill cja form six times
    Then Validate that cjaPage will not create at the sixth time
    Examples:
     |Status|
     |Logged Out|
     |Logged In|

   @cjaPwaModify @c111
    Scenario: Logged In User is able to modify cja
    Given LoggedInUser is onCjaModifyPwaPage
    When User modifies the cjaOnPwa
    Then Validate cja is modified

  @cjaPwaDelete @c111
    Scenario: Logged In User is able to delete cja
    Given LoggedInUser is on cjaPwaDeletePage
    When User deletes the cjaOnPwa
    Then Validate cja is deleted
    
    
      
