class NavigationPage
  def initialize(adriver, aheaderValue)
    @driver=adriver
    @headerValue=aheaderValue
  end

  def openHeader
    @topNavElement=@driver.find_element(:xpath,"//*[contains(span, '" + @headerValue +"')]")
    @topNavElement.click
  end

  def openSubLink(alinkTextValue)
    @subLink=@driver.find_element(:xpath, "//a[text()='" + alinkTextValue +"']")
    @subLink.click
    return ListPage.new(@driver)
  end

end