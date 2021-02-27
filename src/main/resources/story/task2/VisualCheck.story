Meta: 
	@layout desktop
	
Scenario: Verify 0 Profile
GivenStories: story/task2/SingIn.story
When I click on element located `By.xpath(//button[@aria-label='Open Member Menu'])`
When I wait until element located `By.xpath(//section[@data-test-id='header-member-menu-popover'])` appears
When I click on element located `By.xpath(//span[text()='Profile and Visibility'])`
When I wait until element located `By.xpath(//h1)` appears
Then the text 'Manage your personal information' exists
When I COMPARE_AGAINST baseline with `profile`

Scenario: Verify 1 Getting Started
When I click on element located `By.xpath(//span[@aria-label='HouseIcon'])`
When I click on element located `By.xpath(//span[text()='Getting Started'])`
When I wait until element located `By.xpath(//span[text()='GETTING STARTED'])` appears
When I COMPARE_AGAINST baseline with `getting_started`

Scenario: Verify 2 Created Board
When I click on element located `By.xpath(//span[@class='_3qwe2tMMFonNvf _2P-NazJFBDpMac']/../..//span[text()='Boards'])`
When I wait until element located `By.xpath(//h3[text()='Your Team Boards'])` appears
When I click on element located `By.xpath(//div[@title='ManualBoard'])`
When I wait until element located `By.xpath(//div[@id='trello-root'])` appears
When I COMPARE_AGAINST baseline with `created_board`

Scenario: Verify 3 Members
When I click on element located `By.xpath(//span[@aria-label='HouseIcon'])`
When I wait until element located `By.xpath(//span[text()='Members'])` appears
When I click on element located `By.xpath(//span[text()='Members'])`
When I wait until element located `By.xpath(//div[text()='Invite Your Team'])` appears
When I COMPARE_AGAINST baseline with `members` ignoring:
|ELEMENT                                             |
|By.xpath(//input[@data-test-id='add-members-input'])|

Scenario: Verify 4 Add new Teams form
When I click on element located `By.xpath(//span[@aria-label='HouseIcon'])`
When I wait until element located `By.xpath(//div[text()='teams'])` appears
When I click on element located `By.xpath(//span[@class='icon-add icon-sm _2aV_KY1gTq1qWc'])`
When I wait until element located `By.xpath(//span[text()="Let's Build a Team"])` appears
When I COMPARE_AGAINST baseline with `new_team_form`

Scenario: Verify 5 Home Page Header
When I click on element located `By.xpath(//span[@aria-label='HouseIcon'])`
When I change context to element located `By.xpath(//div[@data-test-id='header-container'])`
When I wait until element located `By.xpath(//a[@data-test-id='header-home-button'])` appears
When I COMPARE_AGAINST baseline with `home_page_header`
