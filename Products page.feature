Feature: Products page

Functionality of "Products" page

Scenario: Drop- down menu
Given User is logged in as "standard_user"
And User is on "products" page
When User clicks "menu" icon in top-left corner
Then Menu should be expanded

Scenario: Menu - Logout
Given User is logged in as "standard_user"
And User is on "products" page
And Menu is expanded
When User clicks "Logout" button in menu
Then 	User should be logged out

Scenario: "Products" page Twitter icon
Given User is logged in as "standard_user"
And User is on "products" page
When User clicks Twitter icon
Then Sauce labs Twitter page should open in new tab

Scenario: "Products" page Facebook icon
Given User is logged in as "standard_user"
And User is on "products" page
When User clicks Facebook icon
Then 	Sauce labs Facebook page should open in new tab

Scenario: "Products" page Linkedin icon
Given User is logged in as "standard_user"
And User is on "products" page
When User clicks Linkedin icon
Then Sauce labs Linkedin page should open in new tab

Scenario: Sorting products on "products' page
Given User is logged in as "standard_user"
And User is on "products" page
When User clicks on sorting field in upper right corner
And User clicks one of possible sorting options (name[A-Z];name[Z-A];price[low-high];price[high-low]))
Then Products on page should be sorted by (name[A-Z];name[Z-A];price[low-high];price[high-low])
