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
