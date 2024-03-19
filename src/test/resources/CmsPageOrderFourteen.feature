Feature: verify cms pages create order flow https://www.bookmyforex.com/currency-converter/usd-to-inr/chart/

  #
  #the cms pges can only tested on prod
  #--------------------------------------------prod feature file is below----------------------------#
  @prodcmswww
  Scenario: 1 User should login & buy Order forex card from cms page
    Given User opens BookMyForex url is 'bookmyforex.com/currency-converter/usd-to-inr/chart/#buyForex'
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
  Scenario: 2 User should login & sell  Order from cms page
    Given User opens BookMyForex url is 'bookmyforex.com/currency-converter/usd-to-inr/chart/#sellForex'
    When User enters correct credentials 'test.health100@yopmail.com', '7080234123' & 'Bmf@123456'
    And User given all below details to buy/sell currency/card
      | city  | currency  | forexAmount | orderType | productType    | page |
      | Delhi | US Dollar |        5000 | sell      | Currency Notes | cms  |
    And to verify tat Message for required section
    Then User able to buy after given all details
    And User proceed from home screen with order Details
    Then CDF modal verify and proceed to order create
    And Customer Detials Name Edited to 'testAutomation Sell' and contnue
    Then Verify Documents with the Purpose Selected Docs and continue
      | Pan Card            |
      | Passport Front Page |
      | Passport Back Page  |
    And to verify tat Message for required section
    And user selected or added new address and proceed to Review Screen
    And to verify tat Message for required section
    And to verify Service charge & paid from given bank Details
      | payMode    | bankName  | accountNumber  | ifscCode    | remark             | upiId               |
      | Debit Card | HDFC Bank | 55550118613064 | FDRL0005555 | Tested by Automate | d.biswajeetdas3@ibl |

  @prodcmswww
  Scenario: 3 to verify Transfer Money to australia with purpose(Medical Visit)
    Given User opens BookMyForex url is 'bookmyforex.com/currency-converter/usd-to-inr/chart/#moneytransfer'
    When User enters correct credentials 'test.health100@yopmail.com', '7080234123' & 'Bmf@123456'
    And User enters Money Transfer/Remit Order details
      | city  | country   | productType   | forexAmount | currency      | orderType  | page |
      | Delhi | Australia | Wire Transfer |        1100 | British Pound | Remittance | cms  |
    Then User able to create Remit order
    And User proceed from home screen with order Details
    And User enter sender details by skipping aadhaar
      | pan        | address      | pinCode | city  | state |
      | AKUPC2694J | Dwarka Delhi |  110023 | Delhi | Delhi |
    When Select purpose as 'Medical Visit'
      | reasonForTravel        | businessName | businessType | indian | oci |
      | Company Sponsored Trip | xyz testing  | Pvt. Ltd     | Yes    | No  |
    Then Verify Documents with the Purpose Selected Docs and continue
      | Pan Card                         |
      | Patient Passport Front Page      |
      | Patient Passport Back Page       |
      | Remitter Photo Cum Address Proof |
      | Medical Institute Invoice        |
    And Enter Beneficiary Details
      | BeneficiaryName | BeneficiaryAddress | SwiftCode | RoutingNumber | BankAccountNumber | nostroValue | BSBCode | ibanNo                 |
      | Biswajeet das   | Georgia            | CITIUS33  |     075000019 |         771123285 | string:BENE |  902800 | DE89370400440532013000 |
    #And Transfer Details OTP verification
    #| fixedOtp |
    #|   333666 |
    And to verify Service charge & paid from given bank Details
      | payMode     | bankName  | accountNumber  | ifscCode    | remark             | upiId               |
      | net banking | HDFC Bank | 55550118613064 | FDRL0005555 | Tested by Automate | d.biswajeetdas3@ibl |

  @prodcmswww
  Scenario: 4 to User should login & buy Currency Notes from cms page (Business Visit)
    Given User opens BookMyForex url is 'bookmyforex.com/currency-converter/usd-to-inr/chart/#buyForex'
    When User enters correct credentials 'test.health100@yopmail.com', '7080234123' & 'Bmf@123456'
    And User given all below details to buy/sell currency/card
      | city  | currency | productType    | forexAmount | orderType | page |
      | Delhi | Euro     | Currency Notes |          30 | Buy       | cms  |
    Then User able to buy after given all details
    And User proceed from home screen with order Details
    Then edit forex amount to '500' USD or equivalent to 20000 INR in other currency & proceed
    And Verify pan customer details if not then add below details
      | pan        | tcountryOne | tcountryTwo                    | departAfterToday | returnAfterToday |
      | CBYPD7271F | Australia   | United States of America (USA) |                0 |               20 |
    When Select purpose as 'Business Visit'
      | reasonForTravel        | businessName | businessType | indian | oci |
      | Company Sponsored Trip | xyz testing  | Pvt. Ltd     | Yes    | No  |
    Then Verify Documents with the Purpose Selected Docs and continue
      | Passport Front Page                                    |
      | Passport Back Page                                     |
      | Air Ticket showing travel within 60 days               |
      | Address proof of the company                           |
      | Cancelled current account cheque                       |
      | Lerms letter                                           |
      | GST registration certificate                           |
      | List of signatories authorized by board on letter head |
      | MOA (in case of Pvt. Ltd/ Ltd company)                 |
      | PAN card of company                                    |
      | Valid Visa (If not on arrival)                         |
    And user selected or added new address and proceed to Review Screen
    And to verify Service charge & paid from given bank Details
      | payMode | bankName  | accountNumber  | ifscCode    | remark             | upiId               |
      | upi     | HDFC Bank | 55550118613064 | FDRL0005555 | Tested by Automate | d.biswajeetdas3@ibl |
