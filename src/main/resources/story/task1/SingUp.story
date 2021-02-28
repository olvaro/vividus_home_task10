Lifecycle:
Examples:
|email               |displayName |
|123@ovr.by          |Test 123    |
|456@ovr.by          |Test 456    |

Scenario: Sing Up
Meta: @layout desktop
Given I am on the main application page
When I click on element located `By.xpath(//div[@class='float-right buttons']/../..//a[@href='/signup'])`
Then the page with the URL 'https://trello.com/signup' is loaded
When I enter `<email>` in field located `By.xpath(//input[@id='email'])`
When I click on element located `By.xpath(//input[@id='signup-submit'])`
When I wait until element located `By.xpath(//input[@id='password'])` appears
When I click on element located `By.xpath(//input[@id='password'])`
When I enter `#{generate(regexify '[a-z]{3}[A-Z]{2}[1-9]{3}[!@#$%^&*?]{2}')}` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@id='displayName'])`
When I enter `<displayName>` in field located `By.xpath(//input[@id='displayName'])`
When I click on element located `By.xpath(//button[@id='signup-submit']/../..//span[@class='css-t5emrf'])`

Scenario: After captcha (skip)
Meta: @skip
	  @layout desktop
Then the text 'Welcome, <displayName>' exists
When I click on element located `By.xpath(//input[@id='moonshotCreateTeam'])`
When I enter `OVR` in field located `By.xpath(//input[@id='moonshotCreateTeam'])`
When I select `Other` in dropdown located `By.xpath(//div[@class='css-196czu8'])`
When I click on element located `By.xpath(//input[@data-test-id='add-members-input'])`
When I enter `karina_r2000@mail.ru` in field located `By.xpath(//input[@data-test-id='add-members-input'])`
When I click on element located `By.xpath(//button[text()='Continue'])`
When I click on element located `By.xpath(//button[text()='Start without Business Class'])`
When I click on element located `By.xpath(//button[text()="Let's go!"])`
Then the text 'GETTING STARTED' exists
