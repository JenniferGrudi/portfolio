require 'selenuim-webdriver'
require 'test/unit'

class ExampleTestCase < Test::Unit::TestCase

  def setup
  @driver = Selenium::WebDriver.for:chrome 
  @driver.manage.window.maximize()
  @driver.navigate.to("https://all-about-me.herokuapp.com/")
  end  

  def teardown
    @driver.close
  end

  
end  