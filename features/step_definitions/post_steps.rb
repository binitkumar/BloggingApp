Given /^User exists in the application$/ do
  User.create(:email=>'testuser@test.com',:password=>'123456',:confirm_password=>'123456')
end
And /^User has signed in to application$/ do
  visit '/users/sign_in'
  fill_in "Email", :with => 'testuser@test.com'
  fill_in "Password", :with => '123456'
  click_button "Sign in"
end
When /^User clicks on the add blog button$/ do
  
end
Then /^User should be able to see the blog creation form$/ do
end
Then /^User fills the blog creation form$/ do
end
And /^User clicks on Submit button$/ do
end
Then /^User should be navigated to home page$/ do
end