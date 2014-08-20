Feature: Arthritis.com Share
	In order to tell a friend about the site I'm visiting
	As a user
	I want to use the Share functionality

@javascript
Scenario: Open the Share dialog
	Given I am on "/signs_of_arthritis"
	When I follow "Share +" 
	Then I should see "Email this page"

	
@javascript
Scenario: Successful submission
	Given I am on "/send-to-a-friend/node/1"
	When I fill in "edit-communication-tools-name" with "Andre"
	And I fill in "edit-communication-tools-email-yours" with "aramos@ciandt.com"
	And I fill in "edit-communication-tools-email-friend" with "andy4pub@outlook.com"
	And I press "edit-communication-tools-submit-button"
	Then I should see "Thank You! Your email has been sent."