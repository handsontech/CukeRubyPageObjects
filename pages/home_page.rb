class HomePage
  def initialize(aDriver, aurlValue)
    @driver = aDriver
    @urlValue = aurlValue
  end

  def launchHomePage
    @driver.get @urlValue
  end

end