require 'selenium-webdriver'
require 'test/unit'

class ExampleTestCase < Test::Unit::TestCase

  def setup
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(chromeOptions: { args: [ "--headless" ]})  
  @driver = Selenium::WebDriver.for:chrome, desired_capabilities:caps
  @driver.navigate.to("https://all-about-me.herokuapp.com/")
  end  

  def teardown
    @driver.close
  end

  def test_current_url
    actualURL = @driver.current_url
    assert_equal("https://all-about-me.herokuapp.com/", actualURL, "URL Did not match")
  end

  def test_skills_button
    @driver.find_element(:xpath, '//*[@id="skills_id"]').click()

    skills = @driver.find_element(:xpath, '//*[@id="skills"]/div[2]/div/div/ul').text.include?('HTML')
    assert_equal(true, skills, "Error, no skills are present")
  end  
  
end  