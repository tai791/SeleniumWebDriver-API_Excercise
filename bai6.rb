require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://practice.automationtesting.in/'
driver.manage.window.resize_to(500, 300)

puts "Page source is #{driver.page_source}"

driver.quit