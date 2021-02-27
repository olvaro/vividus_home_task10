Meta: 
	@layout desktop
	
GivenStories: story/task2/SingIn.story

Scenario: Verify Created Board
When I save `title` attribute value of element located `By.xpath(//div[@title='ManualBoard'])` to SCENARIO variable `existingBoard`
When the condition '#{eval("${existingBoard}"=="ManualBoard")}' is true I do
|step|
|When I click on element located `By.xpath(//div[@title='ManualBoard'])`|
|When I wait until element located `By.xpath(//span[text()='Butler'])` appears|
|When I COMPARE_AGAINST baseline with `created_board`|
