Feature: Logging in

How to log into Swag Labs

Scenario: Login
Given User is on login page
When User provides login (standard_user) and password (secret_sauce)
And User clicks the "login" button
Then User should be logged in
And User should be redirected to the "products" page 

Scenario: Login with wrong password (negative)
Given User is on login page
When User provides correct username (standard_user) and wrong password
And User clicks the "login" button
Then User should not be logged in
And Following information should be shown: Epic sadface: Username and password do not match any user in this service

Scenario: Login with wrong username (negative)
Given User is on login page
When User provides correct password and incorrect username
And User clicks the "login" button
Then User should not be logged in
And Following information should be shown: Epic sadface: Username and password do not match any user in this service

Scenario: Log in as locked out user
Given User is on login page
When User provides login (locked_out_user) and password (secret_sauce)
And User clicks the "login" button
Then User should not be logged in
And Following iformation should be shown: "Epic sadface: Sorry, this user has been locked out.

Scenario: Log in as Problem user
Given User is on login page
When User provides login (problem_user) and password (secret_sauce)
And User clicks the "login" button
Then User should be logged in
And User should be redirected to the "products" page
And Pictures of dog should be shown instead of product pictures

Scenario: Log in as perofrmance glitch user
Given User is on login page
When User provides login (performance_glitch_user) and password (secret_sauce)
And User clicks the "login" button
Then User should be logged in
And User should be redirected to the "products" page