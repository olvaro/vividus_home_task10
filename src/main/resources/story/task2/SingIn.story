Scenario: Sing In Composite
Meta: 
	@layout desktop
Given I am on a page with the URL '${authority}'
When I wait until element located `By.xpath(//input[@id='user'])` appears
When I click on element located `By.xpath(//input[@id='user'])`
When I enter `${registredUserEmail}` in field located `By.xpath(//input[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
When I wait until element located `By.xpath(//input[@id='password'])` appears
When I click on element located `By.xpath(//input[@id='password'])`
When I enter `${registredPass}` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//button[@id='login-submit']/../..//span[@class='css-t5emrf'])`
When I wait until element located `By.xpath(//span[text()='Getting Started'])` appears
Then the text 'Getting Started' exists
