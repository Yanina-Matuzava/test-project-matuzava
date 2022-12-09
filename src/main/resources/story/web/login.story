Scenario: Log-in
Given I am on the main application page
When I click on element located by `caseSensitiveText(Log in)`
When I wait until element located `id(user)` appears
When I enter `${email}` in field located `id(user)`
When I click on element located `id(login)`
When I wait until element located `id(password)` appears
When I enter `${password}` in field located `id(password)`
When I click on element located `id(login-submit)`
Scenario: Log-out
When I wait until element located `By.xpath(//*[@data-testid="header-member-menu-button"])` appears
When I click on element located `By.xpath(//*[@data-testid="header-member-menu-button"])`
When I wait until element located `By.xpath(//*[@data-testid="header-member-menu-logout"])` appears
When I click on element located `By.xpath(//*[@data-testid="header-member-menu-logout"])`
When I wait until element located `id(logout-submit)` appears
When I click on element located `id(logout-submit)`
When I wait until element located `By.xpath(//*[@href="/login"])` appears
