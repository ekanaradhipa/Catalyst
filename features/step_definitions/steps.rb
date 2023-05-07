require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

require "test/unit/assertions"
include Test::Unit::Assertions

driver = Selenium::WebDriver.for:chrome

Given("I open voila") do

 driver.navigate.to "https://voila.id/"
 sleep(1) #wait for page to load
 p "wake up"
 
end

And('I fill valid email') do
	#driver.find_element(:xpath, "//*[@class='Header_header__logo__JzRDc']").click
	
end

Given('I open Login Page') do
 # Write code here that turns the phrase above into concrete actions
 driver.find_element(:xpath, "//*[@data-tooltip='Akun Saya']").click
 
 driver.find_element(:xpath, "//*[@href='/account/login']").click

end

Then('I see Login Page') do
  el = driver.find_element(:xpath, "//*[@class='tt-title']")
  assert_not_nil(el, "error")

end


When('I enter email') do
  # Write code here that turns the phrase above into concrete actions
  driver.find_element(:xpath, "//*[@type='email']").click
  driver.find_element(:xpath, "//*[@type='email']").send_key("ekanaradhipad@gmail.com")
end

When('I enter password') do
  driver.find_element(:xpath, "//*[@type='password']").click
  driver.find_element(:xpath, "//*[@type='password']").send_key("Password123")
end

Then('I submit') do
  #element = driver.find_element(:xpath, "//*[@type='submit']")
  #el = driver.find_element(:xpath, "//button[@type='submit']")
  
  driver.action
        .scroll_by(0,75)
        .perform
   sleep(2)
   driver.find_element(:xpath, "//*[@class='btn btn-border']").click
  #element_near.location_once_scrolled_into_view
end

Then('I login') do
  el = driver.find_element(:xpath, "//*[@class='tt-title']")
  assert_not_nil(el, "error")
end

When('I go to Men Page') do
  driver.find_element(:xpath, "//*[@href='/collections/men']").click
end

And('I go to Item Page') do
	driver.navigate.to "https://voila.id/collections/men/products/lifework-graphic-drawstring-hoodie-black-green"
 sleep(1) #wait for page to load
end

And('I add to cart') do
  driver.action
        .scroll_by(0,285)
        .perform
   sleep(1)
   driver.find_element(:xpath, "//*[@class='btn btn-lg btn-addtocart addtocart-js']").click
   sleep(4)
   driver.find_element(:xpath, "//*[@class='btn btn-border ttmodalbtn ttmodalbtn']").click
   sleep(4)
end

