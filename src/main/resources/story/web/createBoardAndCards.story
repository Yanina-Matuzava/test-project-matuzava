Scenario: Create variables for story
Given I initialize story variable `boardName` with value `#{generate(regexify '[a-z]{5}[A-Z]{2}')}`
Given I initialize story variable `nameList1` with value `#{generate(Ancient.god)}`
Given I initialize story variable `nameCard1` with value `#{generate(Ancient.hero)}`
Given I initialize story variable `nameList2` with value `#{generate(Ancient.titan)}`
Given I initialize story variable `nameCard2` with value `#{generate(Animal.genus)}`

Scenario: Log-in
When I login with ${email} and ${password}
When I click on element located `id(login-submit)`

Scenario: Create a new board
When I wait until element located `By.xpath(//*[@data-testid="create-board-tile"])` appears
When I click on element located `By.xpath(//*[@data-testid="create-board-tile"])`
When I wait until element located `By.xpath(//*[@data-testid="create-board-title-input"])` appears
When I enter `${boardName}` in field located `By.xpath(//*[@data-testid="create-board-title-input"])`
When I click on element located `By.xpath(//*[@data-testid="create-board-submit-button"])`
When I wait until element located `By.xpath(//*[@data-testid="filter-popover-button"])` appears
Then number of elements found by `By.xpath(//div[@class="board-header-btn mod-board-name inline-rename-board js-rename-board"]/h1[text()="${boardName}"])` is = `1`

Scenario: Create cards
When I enter `<nameList>` in field located `cssSelector(.list-name-input)`
When I click on element located `cssSelector(.mod-list-add-button)`
Then number of elements found by `By.xpath(//*[@class="list-header-name mod-list-name js-list-name-input" and text()="<nameList>"])` is = `1`
When I click on element located `cssSelector(.js-open-card-composer)`
When I enter `<nameCard>` in field located `cssSelector(.js-card-title)`
When I click on element located `cssSelector(.js-add-card)`
Then number of elements found by `By.xpath(//*[@class="list-card-title js-card-name" and text()="<nameCard>"])` is = `1`
Examples:
|nameList    |nameCard    |
|${nameList1}|${nameCard1}|
|${nameList2}|${nameCard2}|
