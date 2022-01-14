#make a payment to three different client
# client countries CN, USA, JPN
# client amounts 10, 20, 30
# for each payment user's balance should be checked.

# scenario
# make payment for each country in countries list
#logout test
Feature: make a payment to three different client
  @step1
  Scenario Outline: make a payment
    When  user login
    And   user make deposit with "<phone>" "<name>" "<amount>" "<client>"
    Then user should check
    And user will logout
    Examples:
      | phone | name | amount | client|
      | 00000 | name | 5 | China     |
      | 00001 | name | 10 | USA     |
      | 00002 | name | 15 | India     |
      | 00003 | name | 20 | Japan     |
      | 00004 | name | 25 | Iceland     |
      | 00005 | name | 30 | Greenland   |
      | 00006 | name | 40 | Switzerland     |
      | 00007 | name | 50 | Norway     |
      | 00008 | name | 60 | New Zealand    |
      | 00009 | name | 70 | Greece     |
      | 000010 | name | 85 | Italy   |
      | 000011 | name | 90 | Ireland     |