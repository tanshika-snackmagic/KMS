Before do
	Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'
	Capybara.page.current_window.maximize
end