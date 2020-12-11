require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://itmscoaching.herokuapp.com/form/'
driver.manage.window.maximize

element = driver.find_element(:id, 'first-name').send_keys "Binh"
sleep 2
element1 = driver.find_element(:id, 'last-name').send_keys "Nguyen"
sleep 2
element2 = driver.find_element(:id, 'job-title').send_keys "Tester"
sleep 2
element3 = driver.find_element(:id, 'radio-button-3').click
sleep 2
element4 = driver.find_element(:id, 'checkbox-2').click
sleep 2
element5 = driver.find_element(:xpath, '//*[@id="select-menu"]/option[4]').click
sleep 2
element6 = driver.find_element(:id, 'datepicker').send_keys "20/7/2001"
sleep 2
element7 = driver.find_element(:xpath, '/html/body/div/form/div/div[8]/a').click
sleep 2
driver.quit