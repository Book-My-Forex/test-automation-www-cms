Feature: verify cms pages create order flow transfer cms pages
  #
  #the cms pges can only tested on prod
  #--------------------------------------------prod feature file is below----------------------------#

  @prodcmswww
  Scenario: 1 to verify Transfer Money to australia with purpose(Medical Visit)
    Given User opens BookMyForex url is 'bookmyforex.com/money-transfer/'
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
  Scenario: 2 to verify Transfer Money to australia with purpose(Medical Visit)
    Given User opens BookMyForex url is 'bookmyforex.com/money-transfer/send-money-to-australia/'
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

 