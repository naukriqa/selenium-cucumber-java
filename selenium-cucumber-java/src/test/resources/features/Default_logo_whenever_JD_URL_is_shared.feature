Feature:Default logo whenever JD URL is shared 
  <Showing logo on social platforms>

  Scenario:Validate if Naukri logo is appearing in case no 
    logo is present on JD
    <Some interesting scenario steps here>
    Given: Any user is on JD page with no logo present
    WHEN:  JD url is shared on any social platform
    AND Logo added on JD is not of 200X200
    Then Naukri Logo should be visible in thumbnail along with URL 
