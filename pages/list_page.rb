
class ListPage
  def initialize(adriver)
    @driver=adriver
  end

  def checkifSliderisPresent
    @sliderElement=@driver.find_element(:id, "slider")
    return @sliderElement.displayed?
  end

end