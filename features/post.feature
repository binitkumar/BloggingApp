Feature: Create Posts
  The user should be able to create the posts in order to use the application 

Scenario: User creates a post
Given User exists in the application
And User has signed in to application
When User clicks on the add blog button
Then User should be able to see the blog creation form
Then User fills the blog creation form
And User clicks on Submit button
Then User should be navigated to home page