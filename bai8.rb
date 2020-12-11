require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://the-internet.herokuapp.com/'
driver.manage.window.maximize
driver.find_element(:xpath, '//*[@id="content"]/ul/li[21]/a').click

sleep 2

element = driver.find_element(:id, 'username')
element.send_keys "tomsmith"

sleep 2

element1 = driver.find_element(:id, 'password')
element1.send_keys "SuperSecretPassword!"

sleep 2

element2 = driver.find_element(:xpath, '//*[@id="login"]/button/i').click

sleep 2

puts "Page title is #{driver.title}"

driver.quit