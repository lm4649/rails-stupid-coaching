require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara.register_driver(:headless_firefox) do |app|
    capabilities = Selenium::WebDriver::Remote::Capabilities.firefox \
      firefoxOptions: { args: %w[headless disable-gpu window-size=1280x760] }
    Capybara::Selenium::Driver.new app,
      browser: :firefox, desired_capabilities: capabilities
  end
  driven_by :selenium, using: :headless_firefox
end
