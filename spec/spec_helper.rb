require 'rspec'
require 'page-object'
require 'data_magic'
require 'require_all'

require_all 'lib'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before do
    @browser = Selenium::WebDriver.for :firefox
    @browser.manage.timeouts.implicit_wait = 30 # seconds
    @browser.manage.timeouts.page_load = 30 # seconds
  end

  config.after do
    @browser.quit
  end

end
