Given /^the admin is logged in$/ do
  t = Teacher.first
  t.admin = true
  t.save!
  visit path_to('the login page')
  fill_in('Email', :with => t.email)
  fill_in('Password', :with => 'password')
  click_button('Log in')
end

When /^I am not the admin$/ do
  t = Teacher.first
  t.admin = false
  t.save!
  visit path_to('the login page')
  fill_in('Email', :with => t.email)
  fill_in('Password', :with => 'password')
  click_button('Log in')
end

When /^I logout$/ do
  click_link('logout')
end