
require 'selenium-webdriver'

Before do
  @browser = Selenium::WebDriver.for :firefox
  @browser.manage.timeouts.implicit_wait = 30 # seconds
  @browser.manage.timeouts.page_load = 30 # seconds
end


After do
  @browser.quit
end
