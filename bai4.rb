require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://practice.automationtesting.in/'
driver.manage.window.maximize

sleep 5
puts "Page title is #{driver.title}"

driver.quit