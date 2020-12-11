require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://practice.automationtesting.in/'
driver.manage.window.resize_to(500, 300)

# sleep 5
puts "Page URL is #{driver.current_url}"

driver.quit