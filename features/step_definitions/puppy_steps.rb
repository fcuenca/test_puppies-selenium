Given(/^I am on the puppy adoption site$/) do
  visit(HomePage)
end

When(/^I click the View Details button for (the puppy in the .* place)$/) do |puppy_ordinal|
  puppy_index = puppy_ordinal.to_i
  on(HomePage).select_puppy_number(puppy_index)
end

When /^I click the View Details button for "([^"]*)"$/ do |name|
  on(HomePage).select_puppy name
end

When(/^I click the Adopt Me button$/) do
  on(DetailsPage).add_to_cart
end

When(/^I complete the adoption with:$/) do |table|
  on(CheckoutPage).checkout(table.hashes.first)
end

When(/^I complete the adoption$/) do
  on(CheckoutPage).checkout
end

When(/^I complete the adoption using a Credit card$/) do
  on(CheckoutPage).checkout('pay_type' => 'Credit card')
end

When /^I complete the adoption of a puppy$/ do
   on(HomePage).select_puppy
   on(DetailsPage).add_to_cart
   on(ShoppingCartPage).proceed_to_checkout
   on(CheckoutPage).checkout
end

When(/^I click the Complete the Adoption button$/) do
  on(ShoppingCartPage).proceed_to_checkout
end

When(/^I click the Adopt Another Puppy button$/) do
  on(ShoppingCartPage).continue_shopping
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
  notice = on(HomePage).notice
  expect(notice).to include expected
end

Then(/^I should see "([^"]*)" as the name for (line item \d+)$/) do |name, index|
  cart = on(ShoppingCartPage)
  expect(cart.name_for_line_item(index)).to include name
end

Then(/^I should see "([^"]*)" as the subtotal for (line item \d+)$/) do |sub_total, index|
  cart = on(ShoppingCartPage)
  expect(cart.subtotal_for_line_item(index)).to eq sub_total
end

Then(/^I should see "([^"]*)" as the cart total$/) do |total|
  cart = on(ShoppingCartPage)
  expect(cart.cart_total).to eq total
end

When(/^I checkout leaving the name field blank$/) do
  on(HomePage).select_puppy
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout
  on(CheckoutPage).checkout('name' => '')
end

Then(/^I should see the error message "([^"]*)"$/) do |msg|
  expect(@current_page).to have_error_message msg
end

Given /^I have a pending adoption for "([^"]*)"$/ do |name|
  on(HomePage).select_puppy
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout
  on(CheckoutPage).checkout('name' => name)
end

When /^I process that adoption$/ do
  visit(LandingPage)
  on(LoginPage).login_to_system
  on(LandingPage).adoptions
  on(ProcessPuppyPage).process_first_puppy
end
