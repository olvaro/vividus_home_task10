Meta: 
	@layout desktop 

Scenario: 1 Sing In
Given I am on a page with the URL '${authority}'
When I login as a registered user 
Then the text 'Getting Started' exists

Scenario: Verify 2 Created Board
When I click on Boards
When I COMPARE_AGAINST baseline with `created_board`

Scenario: Verify 3 Members
When I click on HouseIcon
When I click on Members
When I COMPARE_AGAINST baseline with `members` ignoring:
|ELEMENT                                             |
|By.xpath(//input[@data-test-id='add-members-input'])|