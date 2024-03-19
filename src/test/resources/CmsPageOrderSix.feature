Feature: verify cms pages create forexCard order flow https://www.bookmyforex.com/forex-card/
  #
  #the cms pges can only tested on prod
  #--------------------------------------------prod feature file is below----------------------------#

 @prodcmswww
  Scenario: 1 User should login & buy  Order from cms page
    Given User opens BookMyForex url is 'bookmyforex.com/forex-card/'
    When User enters correct credentials 'test.health100@yopmail.com', '7080234123' & 'Bmf@123456'
    And User given all below details to buy/sell currency/card
      | city  | currency | productType | forexAmount | orderType | page |
      | Delhi | Euro     | Forex Card  |        8375 | Buy       | cms  |
    Then User able to buy after given all details
    And User proceed from home screen with order Details
    And Verify pan customer details if not then add below details
      | pan        | tcountryOne | tcountryTwo | departAfterToday | returnAfterToday |
      | BFAPL9762A | Australia   |             |               10 |               20 |
    When Select purpose as 'Medical Visit'
      | reasonForTravel        | businessName | businessType | indian | oci |
      | Company Sponsored Trip | xyz testing  | Pvt. Ltd     | Yes    | No  |
    Then Verify Documents with the Purpose Selected Docs and continue
      | Pan Card                                 |
      | Passport Front Page                      |
      | Passport Back Page                       |
      | Air Ticket showing travel within 60 days |
      | Valid Visa (If not on arrival)           |
    And user selected or added new address and proceed to Review Screen
    And to verify Service charge & paid from given bank Details
      | payMode     | bankName  | accountNumber  | ifscCode    | remark             | upiId               |
      | Net Banking | HDFC Bank | 50100047217264 | HDFC0001409 | Tested by Automate | d.biswajeetdas3@ibl |

  @prodcmswww
  Scenario: 2 to Verify Reload,new trip with mapped kit number,TCS(Leisure Visit)
    Given User opens BookMyForex url is 'bookmyforex.com/forex-card/#cardReload'
    When User enters correct credentials 'prabhat.jha@bookmyforex.com', '9873516780' & 'Prabhat@135'
    And User given all below details to buy realod/Unload card
      | city  | cardtype                             | currencytype | forexamount | kitnumber | orderType | page |
      | Delhi | BookMyForex-Yes Bank co-branded card | US Dollar    |        1501 | 900029425 | reload    | cms  |
    Then User able to create reload/unload order after given all details
    And verify duplicate reload/unload orders
    And User proceed from home screen with order Details
    Then Verify under customer details pan not added then add 'CBYPD7271F'
    Then select trip current or new trip and travel details
      | triptype |
      | New trip |
    When Select purpose as 'Leisure/ Holiday/ Personal Visit'
      | reasonForTravel        | businessName | businessType | indian | oci |
      | Company Sponsored Trip | xyz testing  | Pvt. Ltd     | Yes    | No  |
    Then Verify Documents with the Purpose Selected Docs and continue
      | Pan Card                                 |
      | Passport Front Page                      |
      | Passport Back Page                       |
      | Air Ticket showing travel within 60 days |
      | Valid Visa (If not on arrival)           |
    And select Country travel details
      | tcountryOne | tcountryTwo                    | departBeforeAfterToday | returnAfterToday |
      | Australia   | United States of America (USA) |                      1 |               10 |
    And Verify Documents upload & Limit for Each
    And to verify Service charge & paid from given bank Details
      | payMode     | bankName  | accountNumber  | ifscCode    | remark             | upiId               |
      | Net Banking | HDFC Bank | 55550118613064 | FDRL0005555 | Tested by Automate | d.biswajeetdas3@ibl |

  @prodcmswww
  Scenario: 3 Verify User should login & can unload,
    Given User opens BookMyForex url is 'bookmyforex.com/forex-card/#cardUnload'
    When User enters correct credentials 'prabhat.jha@bookmyforex.com', '9873516780' & 'Prabhat@135'
    And User given all below details to buy realod/Unload card
      | city  | cardtype                             | currencytype | forexamount | kitnumber | orderType | select  | page |
      | Delhi | BookMyForex-Yes Bank co-branded card | Thai Baht    |           5 | 900029425 | unload    | partial | cms  |
    Then User able to create reload/unload order after given all details
    And User proceed from home screen with order Details
    And verify duplicate reload/unload orders
    Then Verify under customer details pan not added then add 'CBYPD7271F'
    Then Verify Documents with the Purpose Selected Docs and continue
      | Pan Card            |
      | Passport Front Page |
      | Passport Back Page  |
    And to verify Service charge & paid from given bank Details
      | payMode    | bankName  | accountNumber  | ifscCode    | remark             | upiId               |
      | Debit Card | HDFC Bank | 55550118613064 | FDRL0005555 | Tested by Automate | d.biswajeetdas3@ibl |
 