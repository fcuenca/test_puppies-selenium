Given(/^I am on the puppy adoption site$/) do
  @browser.navigate.to "http://puppies.herokuapp.com"
end

When(/^I click the View Details button$/) do
  @browser.find_element(:xpath, '//input[@value="View Details"]').click
end

When(/^I click the Adopt Me button$/) do
  @browser.find_element(:xpath, '//input[@value="Adopt Me!"]').click
end

When(/^I click the Complete the Adoption button$/) do
  @browser.find_element(:xpath, '//input[@value="Complete the Adoption"]').click
end

When(/^I enter "([^"]*)" in the name field$/) do |name|
  @browser.find_element(:id, "order_name").send_keys(name)
end

When(/^I enter "([^"]*)" in the address field$/) do |address|
  @browser.find_element(:id, "order_address").send_keys(address)
end

When(/^I enter "([^"]*)" in the email field$/) do |email|
  @browser.find_element(:id, "order_email").send_keys(email)
end

When(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
  dropDownMenu = @browser.find_element(:id, "order_pay_type")
  option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
  option.select_by(:text, pay_type)
end

When(/^I click the Place Order button$/) do
  @browser.find_element(:xpath, '//input[@value="Place Order"]').submit
end

Then(/^I should see "([^"]*)"$/) do |expected|
  notice = @browser.find_element(:id, "notice")
  expect(notice.text).to include expected
end
