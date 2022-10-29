Feature: Cart functonality

Checking all functionalities of the Cart

Scenario: Adding products to cart
Given User is logged in as standard user
And User is on "products" page
When: User clicks "Add to cart" button
Then: Product should be added to the cart
And Button "add to cart" should change to "remove"

Scenario: Removing products from cart
Given User is logged in as standard user
And User is on "products" page
And User has product added to cart
When User clicks "Remove" button
Then Product should be removed from cart
And "Remove" button should change to "Add to cart"

Scenario: Redirecting to "Your cart" page
Given User is logged in as standard user
And User is on "products" page
And User has product added to cart
When User clicks the cart icon in top right corner
Then User should be redirected to "Your cart" page

Scenario: Removing products from "your cart" page
Given User is logged in as standard user
And User is on "Your cart" page
And User has product added to cart
When User clicks "remove" button
Then Product should be removed from "Your cart"

Scenario: Functionality of "Continue shopping" button
Given User is logged in as standard user
And User is on "Your cart" page
When User clicks "Continue shopping" button
Then User should be redirected to "Products" page

Scenario: Functionality of "Checkout" button
Given User is logged in as standard user
And User is on "Your cart" page
When User clicks "Checkout" button
Then User should be redirected to "CHECKOUT: YOUR INFORMATION" page