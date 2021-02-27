Scenario: Creation new board
Meta: @layout desktop
	  @testID ovr
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=07c833fb2f3edef2705289193c172568&token=a824e09d24ba6d8ab9cdc3ec8512e068f161774e32f85d816c42334bf23aa09c&name=BoardOVR01'
Then the response code is equal to '200'
