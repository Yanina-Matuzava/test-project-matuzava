Scenario: Log-in with invalid data
Given I am on the main application page
When I login with yaninochka2008@tut.by and J258147hh
When I click on element located `id(login)`
Then number of elements found by `By.xpath(//*[@id="error" and @class="quick-switch"])` is = `1`

Scenario: Log-in
Given I am on the main application page
When I login with ${email} and ${password}
When I click on element located `id(login-submit)`

Scenario: Log-out
When I wait until element located `By.xpath(//*[@data-testid="header-member-menu-button"])` appears
When I click on element located `By.xpath(//*[@data-testid="header-member-menu-button"])`
When I wait until element located `By.xpath(//*[@data-testid="header-member-menu-logout"])` appears
When I click on element located `By.xpath(//*[@data-testid="header-member-menu-logout"])`
When I wait until element located `id(logout-submit)` appears
When I click on element located `id(logout-submit)`
When I wait until element located `By.xpath(//*[@href="/login"])` appears
