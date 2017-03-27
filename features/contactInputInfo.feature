Feature: ContactInformation input and submit on APP CART 1011
In order to Submit a contact information, as a user, s/he has to input email and contact number and then submit.

Scenario: Submit User Information with email and contact number
	Given I type email and number 
	Then I touch the "Login" button
	Then I wait
	Then I swipe up
	Then I touch the "Touch" button
	And I take picture
	


