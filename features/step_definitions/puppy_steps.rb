Given(/^I am on the puppy adoption site$/) do
  @browser.navigate.to "http://puppies.herokuapp.com"
end

When(/^I click the View Details button for (the puppy in the .* place)$/) do |puppy_ordinal|
  puppy_index = puppy_ordinal.to_i - 1
  @browser.find_elements(:xpath, '//input[@value="View Details"]')[puppy_index].click
end

When(/^I click the Adopt Me button$/) do
  @browser.find_element(:xpath, '//input[@value="Adopt Me!"]').click
end

When(/^I click the Complete the Adoption button$/) do
  @browser.find_element(:xpath, '//input[@value="Complete the Adoption"]').click
end

When(/^I enter "([^"]*)" in the name field$/) do |name|
  on(CheckoutPage).name = name
end

When(/^I enter "([^"]*)" in the address field$/) do |address|
  on(CheckoutPage).address = address
end

When(/^I enter "([^"]*)" in the email field$/) do |email|
  on(CheckoutPage).email = email
end

When(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
  on(CheckoutPage).pay_type = pay_type
end

When(/^I click the Place Order button$/) do
  on(CheckoutPage).place_order
end

Then(/^I should see "([^"]*)"$/) do |expected|
  notice = @browser.find_element(:id, "notice")
  expect(notice.text).to include expected
end
