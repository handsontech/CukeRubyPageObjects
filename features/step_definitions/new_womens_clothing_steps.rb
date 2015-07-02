require 'selenium-webdriver'

require_relative '../../pages/home_page'
require_relative '../../pages/navigation_page'
require_relative '../../pages/list_page'

driver = Selenium::WebDriver.for :firefox

Given(/^I open "(.*?)"$/) do |urlValue|
  @homepage=HomePage.new(driver, urlValue)
  @homepage.launchHomePage()
end

And(/^I click on header "(.*?)"$/) do |headerValue|
  @navigationpage=NavigationPage.new(driver, headerValue)
  @navigationpage.openHeader()
end

And(/^I click on "([^"]*)"$/) do |linkTextValue|
  @listpage=@navigationpage.openSubLink(linkTextValue)
end

Then(/^the price range slider is shown$/) do
  assert @listpage.checkifSliderisPresent()
end

After do
  driver.quit
end

