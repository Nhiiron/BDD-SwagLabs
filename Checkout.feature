Feature: Checkout

All actions on Checkout

Scenario: "CHECKOUT: YOUR INFORMATION" page functionality
Given User is logged in as "standard_user"
And User is on "CHECKOUT: YOUR INFORMATION" page
When User provides information (first name, last name, ZIP code)
And User clicks "Continue" button
Then User should be redirected to "CHECKOUT: OVERVIEW" page
And Payment information, Shipping information and total cost should be shown

Scenario: "CHECKOUT: YOUR INFORMATION" page cancel button
Given User is logged in as "standard_user"
And User is on "CHECKOUT: YOUR INFORMATION" page
When User clicks "cancel" button
Then User should be redirected to "Your cart" page

Scenario: "CHECKOUT: YOUR INFORMATION" page without First name (negative)
Given User is logged in as "standard_user"
And User is on "CHECKOUT: YOUR INFORMATION" page
When User provides information (last name, ZIP code), user leaves "First name" input field empty
And User clicks "Continue" button
Then 	User should get following information: "Error: First Name is required"

Scenario: "CHECKOUT: YOUR INFORMATION" page without Last name (negative)
Given User is logged in as "standard_user"
And User is on "CHECKOUT: YOUR INFORMATION" page
When User provides information (first name, ZIP code), user leaves "Last name" input field empty
And User clicks "Continue" button
Then User should get following information: "Error: Last Name is required"

Scenario: "CHECKOUT: YOUR INFORMATION" page without ZIP code (negative)
Given User is logged in as "standard_user"
And User is on "CHECKOUT: YOUR INFORMATION" page
When User provides information (last name, first name), user leaves "ZIP code" input field empty
And User clicks "Continue" button
Then User should get following information: "Error: Postal Code is required"

Scenario: "CHECKOUT: OVERVIEW" page functionality
Given User is logged in as "standard_user"
And User is on "CHECKOUT: OVERVIEW" page
When User clicks the "finish" button
Then User should be redirected to "Checkout:Complete" page
And Following information should be dosplayed: "THANK YOU FOR YOUR ORDER Your order has been dispatched, and will arrive just as fast as the pony can get there!"
And Picture of robot riding a pony sould be shown

Scenario: CHECKOUT: OVERVIEW page functionality - "cancel" button
Given User is logged in as "standard_user"
And User is on "CHECKOUT: OVERVIEW" page
When User clicks the "cancel" button
Then User should be redirected to "Products" page

Scenario: "CHECKOUT: COMPLETE!" page functionality
Given User is logged in as "standard_user"
And User is on "CHECKOUT: COMPLETE!" page
When User clicks the "BACK HOME" button
Then User sould be redirected to "Products" page