Feature: Torch Control

  Scenario: Checking the availability of torch/flash in phone
    Given that torch is not available in device
    Then should display a text "N O  F L A S H   O N   T H I S   D E V I C E"

  Scenario: turning the torch on 
    Given that torch is off
    And torch is available in the device 
    When the user tap on icons button torch icon
    Then the torch should be turn on
    And the background color should turn white

  Scenario: turning off the torch require authentication 
    Given that the torch on 
    When I tap on icons button torch icon
    And the authentication succeed 
    Then torch should turn off 
    And background color should be black

  Scenario: turning off the torch without authentication
    Given that the torch on 
    When I tap on icons button torch icon
    And the authentication failed 
    Then torch should remain turn on
    And background color should be white 

   