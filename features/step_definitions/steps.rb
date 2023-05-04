require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
#require 'v8'

driver = Selenium::WebDriver.for:firefox
#object_v8 = V8::Context.new

Given("I open voila") do

 driver.navigate.to "https://voila.id/"
 sleep(5) #wait for page to load
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
  #assert_not_nil(driver.find_element(:xpath, "//*[@class='tt-title']"), "No response from Server!")
  driver.find_element(:xpath, "//*[@class='tt-title']")
  sleep(0.5) #wait for page to load
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
   driver.find_element(:xpath, "//*[@type='password']").click
  #element_near.location_once_scrolled_into_view
end

Then('I login') do
  driver.find_element(:xpath, "//*[@class='tt-title']")
end
