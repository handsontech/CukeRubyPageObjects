Feature: Automating Asos.com
  Scenario: Open Womens clothing and check if price selector is displayed
    Given I open "http://www.asos.com"
    And I click on header "WOMEN"
    And I click on "New In: Clothing"
    Then the price range slider is shown

