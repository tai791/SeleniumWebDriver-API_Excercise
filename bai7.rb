require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://practice.automationtesting.in/'
driver.manage.window.maximize
driver.find_element(:id, 'menu-item-50').click

sleep 2

element = driver.find_element(:id, 'reg_email')
element.send_keys "nguyentrongtai.4689@gmail.com"
sleep 2
element1 = driver.find_element(:id, 'reg_password')
element1.send_keys "tai13102001"
sleep 2
element3 = driver.find_element(css: '[name="register"]').click
sleep 2
driver.quit