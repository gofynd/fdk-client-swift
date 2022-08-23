



##### [Back to Application docs](./README.md)

## Payment Methods
Collect payment through many payment gateway i.e Stripe, Razorpay, Juspay etc.into Fynd or Self account
* [getAggregatorsConfig](#getaggregatorsconfig)
* [attachCardToCustomer](#attachcardtocustomer)
* [getActiveCardAggregator](#getactivecardaggregator)
* [getActiveUserCards](#getactiveusercards)
* [deleteUserCard](#deleteusercard)
* [verifyCustomerForPayment](#verifycustomerforpayment)
* [verifyAndChargePayment](#verifyandchargepayment)
* [initialisePayment](#initialisepayment)
* [checkAndUpdatePaymentStatus](#checkandupdatepaymentstatus)
* [getPaymentModeRoutes](#getpaymentmoderoutes)
* [getPosPaymentModeRoutes](#getpospaymentmoderoutes)
* [getRupifiBannerDetails](#getrupifibannerdetails)
* [getEpaylaterBannerDetails](#getepaylaterbannerdetails)
* [resendOrCancelPayment](#resendorcancelpayment)
* [getActiveRefundTransferModes](#getactiverefundtransfermodes)
* [enableOrDisableRefundTransferMode](#enableordisablerefundtransfermode)
* [getUserBeneficiariesDetail](#getuserbeneficiariesdetail)
* [verifyIfscCode](#verifyifsccode)
* [getOrderBeneficiariesDetail](#getorderbeneficiariesdetail)
* [verifyOtpAndAddBeneficiaryForBank](#verifyotpandaddbeneficiaryforbank)
* [addBeneficiaryDetails](#addbeneficiarydetails)
* [addRefundBankAccountUsingOTP](#addrefundbankaccountusingotp)
* [verifyOtpAndAddBeneficiaryForWallet](#verifyotpandaddbeneficiaryforwallet)
* [updateDefaultBeneficiary](#updatedefaultbeneficiary)
* [customerCreditSummary](#customercreditsummary)
* [redirectToAggregator](#redirecttoaggregator)
* [checkCredit](#checkcredit)
* [customerOnboard](#customeronboard)



## Methods with example and description


#### getAggregatorsConfig
Get payment gateway keys




```swift
payment.getAggregatorsConfig(xApiToken: xApiToken, refresh: refresh) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| xApiToken | String? | no | Used for basic authentication. |   
| refresh | Bool? | no | This is a boolean value. Select `true` to remove temporary cache files on payment gateway and replace with the latest one. |  



Use this API to retrieve the payment gateway key, secrets, merchant, SDK/API details to complete a payment at front-end.

*Returned Response:*




[AggregatorsConfigDetailResponse](#AggregatorsConfigDetailResponse)

Success. Returns the keys of all payment gateways. Check the example shown below or refer `AggregatorsConfigDetailResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "simpl": {
    "key": "bf9d0ff65ffe6e54223a871e733bbd1c",
    "secret": "XXXX-XXXX-XXXX-XXXX",
    "config_type": "fynd",
    "sdk": true
  },
  "juspay": {
    "key": "XXXX-XXXX-XXXX-XXXX",
    "secret": "XXXX-XXXX-XXXX-XXXX",
    "config_type": "fynd",
    "merchant_key": "XXXX-XXXX-XXXX-XXXX",
    "sdk": false,
    "api": "https://api.juspay.in"
  },
  "mswipe": {
    "key": "XXXX-XXXX-XXXX-XXXX",
    "secret": "XXXX-XXXX-XXXX-XXXX",
    "config_type": "fynd",
    "merchant_id": "XXXX-XXXX-XXXX-XXXX",
    "user_id": "XXXX-XXXX-XXXX-XXXX",
    "pin": "XXXX-XXXX-XXXX-XXXX",
    "sdk": true,
    "verify_api": "https://www.mswipetech.com/verificationapi/api/VerificationApi/MswipeCardSaleVerificationApi"
  },
  "razorpay": {
    "key": "XXXX-XXXX-XXXX-XXXX",
    "secret": "XXXX-XXXX-XXXX-XXXX",
    "config_type": "fynd",
    "webhook_secret": "XXXX-XXXX-XXXX-XXXX",
    "sdk": true,
    "api": "https://api.razorpay.com/v1/",
    "vpa": "XXXX-XXXX-XXXX-XXXX"
  },
  "success": true,
  "env": "live"
}
```
</details>









---


#### attachCardToCustomer
Attach a saved card to customer.




```swift
payment.attachCardToCustomer(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AttachCardRequest | yes | Request body |


Use this API to attach a customer's saved card at the payment gateway, such as Stripe, Juspay.

*Returned Response:*




[AttachCardsResponse](#AttachCardsResponse)

Success. Check the example shown below or refer `AttachCardsResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "",
  "data": {
    "id": "pm_1IGQlvHY5NCLOJpYNTBP6WpY",
    "brand": "visa",
    "checks": {
      "address_line1_check": null,
      "address_postal_code_check": null,
      "cvc_check": "pass"
    },
    "country": "US",
    "exp_month": 11,
    "exp_year": 2025,
    "fingerprint": "poKWfSweJ0I5CvEA",
    "funding": "credit",
    "generated_from": null,
    "last4": "1111",
    "networks": {
      "available": [
        "visa"
      ],
      "preferred": null
    },
    "three_d_secure_usage": {
      "supported": true
    },
    "wallet": null
  }
}
```
</details>









---


#### getActiveCardAggregator
Fetch active payment gateway for card payments




```swift
payment.getActiveCardAggregator(refresh: refresh) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| refresh | Bool? | no |  |  



Use this API to retrieve an active payment aggregator along with the Customer ID. This is applicable for cards payments only.

*Returned Response:*




[ActiveCardPaymentGatewayResponse](#ActiveCardPaymentGatewayResponse)

Success. Returns an active payment gateway. Check the example shown below or refer `ActiveCardPaymentGatewayResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "",
  "cards": {
    "aggregator": "Stripe",
    "api": "https://www.example.com/cards/",
    "customer_id": "lorem_12345"
  }
}
```
</details>









---


#### getActiveUserCards
Fetch the list of cards saved by the user




```swift
payment.getActiveUserCards(forceRefresh: forceRefresh) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| forceRefresh | Bool? | no |  |  



Use this API to retrieve a list of cards stored by user from an active payment gateway.

*Returned Response:*




[ListCardsResponse](#ListCardsResponse)

Success. Returns a list of cards saved by the user. Check the example shown below or refer `ListCardsResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Success",
  "data": [
    {
      "aggregator_name": "Razorpay",
      "card_id": "token_lorem_ipsum_001",
      "card_token": "card_token_lorem_ipsum_001",
      "card_reference": "ref_lorem_ipsum_001",
      "card_number": "XXXX-XXXX-XXXX-1111",
      "card_isin": "001",
      "exp_year": 2025,
      "exp_month": 5,
      "card_type": "credit",
      "card_issuer": "ICIC",
      "card_brand": "VISA",
      "nickname": "Visa",
      "card_name": "Lorem Ipsum",
      "expired": false,
      "card_fingerprint": null,
      "card_brand_image": "https://hdn-1.fynd.com/payment/visa.png"
    }
  ]
}
```
</details>









---


#### deleteUserCard
Delete a card




```swift
payment.deleteUserCard(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DeletehCardRequest | yes | Request body |


Use this API to delete a card added by a user on the payment gateway and clear the cache.

*Returned Response:*




[DeleteCardsResponse](#DeleteCardsResponse)

Success. Returns a success message if card is deleted.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### verifyCustomerForPayment
Validate customer for payment




```swift
payment.verifyCustomerForPayment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ValidateCustomerRequest | yes | Request body |


Use this API to check if the customer is eligible to use credit-line facilities such as Simpl Pay Later and Rupifi.

*Returned Response:*




[ValidateCustomerResponse](#ValidateCustomerResponse)

Success. Check the example shown below or refer `ValidateCustomerResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "data fetched",
  "data": {
    "api_version": 2,
    "data": {
      "approved": true,
      "button_text": "Buy Now, Pay Later",
      "first_transaction": false
    },
    "aggregator": "Simpl"
  }
}
```
</details>









---


#### verifyAndChargePayment
Verify and charge payment




```swift
payment.verifyAndChargePayment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ChargeCustomerRequest | yes | Request body |


Use this API to verify and check the status of a payment transaction (server-to-server) made through aggregators like Simpl and Mswipe.

*Returned Response:*




[ChargeCustomerResponse](#ChargeCustomerResponse)

Success. Check the example shown below or refer `ChargeCustomerResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Payment Successful",
  "status": "complete",
  "order_id": "FY000000001000000101",
  "aggregator": "Simpl",
  "cart_id": "0000000",
  "delivery_address_id": "0000000"
}
```
</details>









---


#### initialisePayment
Initialize a payment (server-to-server) for UPI and BharatQR




```swift
payment.initialisePayment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentInitializationRequest | yes | Request body |


PUse this API to inititate payment using UPI, BharatQR, wherein the UPI requests are send to the app and QR code is displayed on the screen.

*Returned Response:*




[PaymentInitializationResponse](#PaymentInitializationResponse)

Success. Check the example shown below or refer `PaymentInitializationResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "aggregator": "UPI_Razorpay",
  "method": "upi",
  "status": "success",
  "merchant_order_id": "FY000120000101",
  "aggregator_order_id": "lorem_GX8W00p2ipsum",
  "polling_url": "https://api.fynd.com/service/application/payment/v0.1/payments/confirm/polling/?app_id=000000000000000000000001",
  "timeout": 240,
  "virtual_id": null,
  "razorpay_payment_id": "pay_dummy_001",
  "customer_id": "cust_dummy_001"
}
```
</details>









---


#### checkAndUpdatePaymentStatus
Performs continuous polling to check status of payment on the server




```swift
payment.checkAndUpdatePaymentStatus(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentStatusUpdateRequest | yes | Request body |


Use this API to perform continuous polling at intervals to check the status of payment until timeout.

*Returned Response:*




[PaymentStatusUpdateResponse](#PaymentStatusUpdateResponse)

Success. Returns the status of payment. Check the example shown below or refer `PaymentStatusUpdateResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "aggregator_name": "UPI_Razorpay",
  "status": "success",
  "retry": false
}
```
</details>









---


#### getPaymentModeRoutes
Get applicable payment options




```swift
payment.getPaymentModeRoutes(amount: amount, cartId: cartId, pincode: pincode, checkoutMode: checkoutMode, refresh: refresh, cardReference: cardReference, userDetails: userDetails) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| amount | Int | yes | Payable amount. |   
| cartId | String | yes | Identifier of the cart. |   
| pincode | String | yes | The PIN Code of the destination address, e.g. 400059 |   
| checkoutMode | String | yes | Option to checkout for self or for others. |   
| refresh | Bool? | no | This is a boolean value. Select `true` to remove temporary cache files on payment gateway and replace with the latest one. |   
| cardReference | String? | no | Card reference id of user's debit or credit card. |   
| userDetails | String? | no | URIencoded JSON containing details of an anonymous user. |  



Use this API to get all valid payment options for doing a payment.

*Returned Response:*




[PaymentModeRouteResponse](#PaymentModeRouteResponse)

Success. Returns all available options for payment. Check the example shown below or refer `PaymentModeRouteResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "payment_options": {
    "payment_option": [
      {
        "name": "CARD",
        "display_priority": 2,
        "payment_mode_id": 2,
        "display_name": "Card",
        "list": [],
        "anonymous_enable": true,
        "aggregator_name": "Razorpay",
        "add_card_enabled": false
      },
      {
        "name": "NB",
        "display_priority": 3,
        "payment_mode_id": 3,
        "display_name": "Net Banking",
        "list": [
          {
            "aggregator_name": "Razorpay",
            "name": "ICICI Bank",
            "code": "ICIC",
            "bank_name": "ICICI Bank",
            "bank_code": "ICIC",
            "url": "https://hdn-1.fynd.com/payment/NB_ICICI.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_ICICI.png",
              "large": "https://hdn-1.fynd.com/payment/NB_ICICI.png"
            },
            "merchant_code": "NB_ICICI",
            "display_priority": 1,
            "display_name": "ICICI Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "HDFC Bank",
            "code": "HDFC",
            "bank_name": "HDFC Bank",
            "bank_code": "HDFC",
            "url": "https://hdn-1.fynd.com/payment/NB_HDFC.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_HDFC.png",
              "large": "https://hdn-1.fynd.com/payment/NB_HDFC.png"
            },
            "merchant_code": "NB_HDFC",
            "display_priority": 2,
            "display_name": "HDFC Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Axis Bank",
            "code": "UTIB",
            "bank_name": "Axis Bank",
            "bank_code": "UTIB",
            "url": "https://hdn-1.fynd.com/payment/NB_AXIS.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_AXIS.png",
              "large": "https://hdn-1.fynd.com/payment/NB_AXIS.png"
            },
            "merchant_code": "NB_AXIS",
            "display_priority": 3,
            "display_name": "Axis Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "State Bank of India",
            "code": "SBIN",
            "bank_name": "State Bank of India",
            "bank_code": "SBIN",
            "url": "https://hdn-1.fynd.com/payment/NB_SBI.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_SBI.png",
              "large": "https://hdn-1.fynd.com/payment/NB_SBI.png"
            },
            "merchant_code": "NB_SBI",
            "display_priority": 4,
            "display_name": "State Bank of India"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Kotak Mahindra Bank",
            "code": "KKBK",
            "bank_name": "Kotak Mahindra Bank",
            "bank_code": "KKBK",
            "url": "https://hdn-1.fynd.com/payment/NB_KOTAK.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_KOTAK.png",
              "large": "https://hdn-1.fynd.com/payment/NB_KOTAK.png"
            },
            "merchant_code": "NB_KOTAK",
            "display_priority": 5,
            "display_name": "Kotak Mahindra Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Indusind Bank",
            "code": "INDB",
            "bank_name": "Indusind Bank",
            "bank_code": "INDB",
            "url": "https://hdn-1.fynd.com/payment/NB_INDUS.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_INDUS.png",
              "large": "https://hdn-1.fynd.com/payment/NB_INDUS.png"
            },
            "merchant_code": "INDB",
            "display_priority": 6,
            "display_name": "Indusind Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "City Union Bank",
            "code": "CIUB",
            "bank_name": "City Union Bank",
            "bank_code": "CIUB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_CUB",
            "display_priority": 9,
            "display_name": "City Union Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Catholic Syrian Bank",
            "code": "CSBK",
            "bank_name": "Catholic Syrian Bank",
            "bank_code": "CSBK",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "CSBK",
            "display_priority": 11,
            "display_name": "Catholic Syrian Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "State Bank of Hyderabad",
            "code": "SBHY",
            "bank_name": "State Bank of Hyderabad",
            "bank_code": "SBHY",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SBH",
            "display_priority": 12,
            "display_name": "State Bank of Hyderabad"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Allahabad Bank",
            "code": "ALLA",
            "bank_name": "Allahabad Bank",
            "bank_code": "ALLA",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "ALLA",
            "display_priority": 15,
            "display_name": "Allahabad Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Syndicate Bank",
            "code": "SYNB",
            "bank_name": "Syndicate Bank",
            "bank_code": "SYNB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "SYNB",
            "display_priority": 17,
            "display_name": "Syndicate Bank"
          }
        ]
      },
      {
        "name": "WL",
        "display_priority": 4,
        "payment_mode_id": 4,
        "display_name": "Wallet",
        "list": [
          {
            "wallet_name": "Paytm",
            "wallet_code": "paytm",
            "name": "Paytm",
            "display_name": "Paytm",
            "code": "paytm",
            "wallet_id": 4,
            "merchant_code": "PAYTM",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/paytm_logo_small.png",
              "large": "https://hdn-1.fynd.com/payment/paytm_logo_large.png"
            },
            "aggregator_name": "Juspay",
            "display_priority": 1
          },
          {
            "wallet_name": "Amazon Pay",
            "wallet_code": "amazonpay",
            "name": "Amazon Pay",
            "display_name": "Amazon Pay",
            "code": "amazonpay",
            "wallet_id": 10,
            "merchant_code": "AMAZONPAY",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/amazon-pay.png",
              "large": "https://hdn-1.fynd.com/payment/amazon-pay.png"
            },
            "aggregator_name": "Razorpay",
            "display_priority": 9
          }
        ]
      },
      {
        "name": "UPI",
        "display_priority": 9,
        "payment_mode_id": 7,
        "display_name": "UPI",
        "list": [
          {
            "aggregator_name": "Razorpay",
            "name": "UPI",
            "display_name": "BHIM UPI",
            "code": "UPI",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/upi_100x78.png",
              "large": "https://hdn-1.fynd.com/payment/upi_150x100.png"
            },
            "merchant_code": "UPI",
            "timeout": 310,
            "retry_count": 0,
            "fynd_vpa": "shopsense.rzp@hdfcbank",
            "intent_flow": true,
            "intent_app": [
              {
                "code": "google_pay",
                "display_name": "Google Pay",
                "package_name": "com.google.android.apps.nbu.paisa.user",
                "logos": {
                  "small": "https://hdn-1.fynd.com/payment/upi-google-pay.png",
                  "large": "https://hdn-1.fynd.com/payment/upi-google-pay.png"
                }
              }
            ],
            "intent_app_error_list": [
              "com.csam.icici.bank.imobile",
              "in.org.npci.upiapp",
              "com.whatsapp"
            ],
            "intent_app_error_dict_list": [
              {
                "package_name": "com.csam.icici.bank.imobile",
                "code": "icici"
              },
              {
                "package_name": "in.org.npci.upiapp",
                "code": "upiapp"
              },
              {
                "package_name": "com.whatsapp",
                "code": "whatsapp"
              }
            ]
          }
        ]
      },
      {
        "name": "JUSPAYPG",
        "display_priority": 18,
        "payment_mode_id": 24,
        "display_name": "Pay Using Juspay",
        "list": []
      },
      {
        "name": "PL",
        "display_priority": 21,
        "display_name": "Pay Later",
        "list": [
          {
            "aggregator_name": "Simpl",
            "name": "Simpl",
            "display_name": "Simpl",
            "code": "simpl",
            "merchant_code": "SIMPL",
            "logo": "https://hdn-1.fynd.com/payment/simpl_logo.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/simpl_logo.png",
              "large": "https://hdn-1.fynd.com/payment/simpl_logo.png"
            }
          }
        ]
      },
      {
        "name": "JIOPP",
        "display_priority": 15,
        "payment_mode_id": 15,
        "display_name": "Jio Partner Pay",
        "list": [
          {
            "aggregator_name": "Jio",
            "name": "JioPP",
            "display_name": "Jio Partner Pay",
            "code": "JIOPP",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
              "small": "https://hdn-1.fynd.com/payment/Pos+Logo.png"
            },
            "merchant_code": "JIOPP"
          }
        ]
      }
    ],
    "payment_flows": {
      "simpl": {
        "data": {
          "gateway": {
            "route": "simpl",
            "entity": "sdk",
            "is_customer_validation_required": true,
            "cust_validation_url": "https://api.fyndx0.de/gringotts/api/v1/validate-customer/?app_id=000000000000000000000001",
            "sdk": {
              "config": {
                "redirect": false,
                "callback_url": null,
                "action_url": "https://api.fyndx0.de/platform/payment/v2/external/payments/confirm/charge/?app_id=000000000000000000000001"
              },
              "data": {
                "user_phone": "9999632145",
                "user_email": "app@fynd.com"
              }
            },
            "return_url": null
          }
        },
        "api_link": "",
        "payment_flow": "sdk",
        "payment_flow_data": {
          "is_customer_validation_required": true,
          "cust_validation_url": "https://api.fyndx0.de/platform/payment/api/v1/validate-customer/?app_id=000000000000000000000001",
          "config": {
            "redirect": false,
            "final_payment_action_url": "https://api.fyndx0.de/platform/payment/v2/external/payments/confirm/charge/?app_id=000000000000000000000001"
          },
          "data": {
            "user_phone": null,
            "user_email": null
          },
          "return_url": null
        }
      },
      "mswipe": {
        "data": {
          "gateway": {
            "sdk": {
              "config": {
                "redirect": false,
                "action_url": "url",
                "webhook_url": "url",
                "timeout": 60
              }
            }
          }
        },
        "api_link": "",
        "payment_flow": "sdk"
      },
      "juspay": {
        "data": {},
        "api_link": "https://sandbox.juspay.in/txns",
        "payment_flow": "api"
      },
      "razorpay": {
        "data": {},
        "api_link": "",
        "payment_flow": "sdk"
      },
      "bqr_razorpay": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "fynd": {
        "data": {},
        "api_link": "",
        "payment_flow": "api"
      },
      "jio": {
        "data": {},
        "api_link": "",
        "payment_flow": "api"
      },
      "stripe": {
        "data": {},
        "api_link": "",
        "payment_flow": "sdk"
      },
      "ccavenue": {
        "data": {},
        "api_link": "",
        "payment_flow": "sdk"
      },
      "payumoney": {
        "data": {},
        "api_link": "",
        "payment_flow": "sdk"
      },
      "rupifi": {
        "data": {},
        "api_link": "",
        "return_url": "",
        "payment_flow": "api",
        "cust_validation_url": "https://api.jiox0.de/gringotts/api/v1/validate-customer/",
        "payment_flow_data": {
          "is_customer_validation_required": true,
          "cust_validation_url": "https://api.fyndx0.de/platform/payment/api/v1/validate-customer/?app_id=000000000000000000000001",
          "config": {
            "redirect": false,
            "final_payment_action_url": "https://api.fyndx0.de/platform/payment/v2/external/payments/confirm/charge/?app_id=000000000000000000000001"
          },
          "data": {
            "user_phone": null,
            "user_email": null
          },
          "return_url": null
        }
      },
      "jiopay": {
        "api_link": "http://psp-mandate-merchant-sit.jiomoney.com:3003/pg",
        "payment_flow": "api",
        "data": {}
      },
      "epaylater": {
        "data": {},
        "api_link": "https://api-blackbox.epaylater.in/web/process-transaction/",
        "payment_flow": "api"
      },
      "Jio": {
        "data": {},
        "api_link": "",
        "payment_flow": "api"
      }
    }
  }
}
```
</details>









---


#### getPosPaymentModeRoutes
Get applicable payment options for Point-of-Sale (POS)




```swift
payment.getPosPaymentModeRoutes(amount: amount, cartId: cartId, pincode: pincode, checkoutMode: checkoutMode, refresh: refresh, cardReference: cardReference, orderType: orderType, userDetails: userDetails) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| amount | Int | yes | Payable amount. |   
| cartId | String | yes | Identifier of the cart. |   
| pincode | String | yes | The PIN Code of the destination address, e.g. 400059 |   
| checkoutMode | String | yes | Option to checkout for self or for others. |   
| refresh | Bool? | no | This is a boolean value. Select `true` to remove temporary cache files on payment gateway and replace with the latest one. |   
| cardReference | String? | no | Card reference id of user's debit or credit card. |   
| orderType | String | yes | The order type of shipment * HomeDelivery - If the customer wants the order home-delivered * PickAtStore - If the customer wants the handover of an order at the store itself. |   
| userDetails | String? | no | URIencoded JSON containing details of an anonymous user. |  



Use this API to get all valid payment options for doing a payment in POS.

*Returned Response:*




[PaymentModeRouteResponse](#PaymentModeRouteResponse)

Success. Returns all available options for payment. Check the example shown below or refer `PaymentModeRouteResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "payment_options": {
    "payment_option": [
      {
        "name": "CAS",
        "display_priority": 21,
        "payment_mode_id": 39,
        "display_name": "Cash at Store",
        "list": [
          {
            "aggregator_name": "Fynd",
            "name": "CAS",
            "display_name": "CASH",
            "code": "CAS",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/cod.png",
              "small": "https://hdn-1.fynd.com/payment/cod.png"
            },
            "merchant_code": "CAS"
          }
        ]
      },
      {
        "name": "CSAS",
        "display_priority": 21,
        "payment_mode_id": 40,
        "display_name": "Card Swiped at Store",
        "list": [
          {
            "aggregator_name": "Fynd",
            "name": "CSAS",
            "display_name": "Card Swipe",
            "code": "CSAS",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/cod.png",
              "small": "https://hdn-1.fynd.com/payment/cod.png"
            },
            "merchant_code": "CSAS"
          }
        ]
      },
      {
        "name": "UPI",
        "display_priority": 9,
        "payment_mode_id": 7,
        "display_name": "UPI",
        "list": [
          {
            "aggregator_name": "Razorpay",
            "name": "UPI",
            "display_name": "BHIM UPI",
            "code": "UPI",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/upi_100x78.png",
              "large": "https://hdn-1.fynd.com/payment/upi_150x100.png"
            },
            "merchant_code": "UPI",
            "timeout": 240,
            "retry_count": 0,
            "fynd_vpa": "shopsense.rzp@hdfcbank",
            "intent_flow": true,
            "intent_app": [
              {
                "code": "google_pay",
                "display_name": "Google Pay",
                "package_name": "com.google.android.apps.nbu.paisa.user",
                "logos": {
                  "small": "https://hdn-1.fynd.com/payment/upi-google-pay.png",
                  "large": "https://hdn-1.fynd.com/payment/upi-google-pay.png"
                }
              }
            ],
            "intent_app_error_list": [
              "com.csam.icici.bank.imobile",
              "in.org.npci.upiapp",
              "com.whatsapp"
            ],
            "intent_app_error_dict_list": [
              {
                "package_name": "com.csam.icici.bank.imobile",
                "code": "icici"
              },
              {
                "package_name": "in.org.npci.upiapp",
                "code": "upiapp"
              },
              {
                "package_name": "com.whatsapp",
                "code": "whatsapp"
              }
            ]
          }
        ]
      }
    ],
    "payment_flows": {
      "simpl": {
        "data": {
          "gateway": {
            "route": "simpl",
            "entity": "sdk",
            "is_customer_validation_required": true,
            "cust_validation_url": "https://api.fyndx0.de/gringotts/api/v1/validate-customer/?app_id=000000000000000000000001",
            "sdk": {
              "config": {
                "redirect": false,
                "callback_url": null,
                "action_url": "https://api.fyndx0.de/platform/payment/v2/external/payments/confirm/charge/?app_id=000000000000000000000001"
              },
              "data": {
                "user_phone": "9999632145",
                "user_email": "app@fynd.com"
              }
            },
            "return_url": null
          }
        },
        "api_link": "",
        "payment_flow": "sdk"
      },
      "juspay": {
        "data": {},
        "api_link": "https://sandbox.juspay.in/txns",
        "payment_flow": "api"
      },
      "razorpay": {
        "data": {},
        "api_link": "",
        "payment_flow": "sdk"
      },
      "upi_razorpay": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "bqr_razorpay": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "cashfree": {
        "data": {},
        "api_link": "",
        "payment_flow": "api"
      },
      "fynd": {
        "data": {},
        "api_link": "",
        "payment_flow": "api"
      },
      "jio": {
        "data": {},
        "api_link": "",
        "payment_flow": "api"
      },
      "stripe": {
        "data": {},
        "api_link": "",
        "payment_flow": "sdk"
      },
      "ccavenue": {
        "data": {},
        "api_link": "",
        "payment_flow": "sdk"
      },
      "payumoney": {
        "data": {},
        "api_link": "",
        "payment_flow": "sdk"
      },
      "rupifi": {
        "data": {},
        "api_link": "",
        "return_url": "",
        "payment_flow": "api",
        "cust_validation_url": "https://api.jiox0.de/gringotts/api/v1/validate-customer/"
      }
    }
  }
}
```
</details>









---


#### getRupifiBannerDetails
Get CreditLine Offer




```swift
payment.getRupifiBannerDetails() { (response, error) in
    // Use response
}
```






Get CreditLine Offer if user is tentatively approved by rupifi

*Returned Response:*




[RupifiBannerResponse](#RupifiBannerResponse)

Success. Return CreditLine Offer detail. Check the example shown below or refer `RupifiBannerResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "kyc_url": "http://rupifi.kyc1.com/",
    "status": "APPROVED"
  }
}
```
</details>









---


#### getEpaylaterBannerDetails
Get Epaylater Enabled




```swift
payment.getEpaylaterBannerDetails() { (response, error) in
    // Use response
}
```






Get Epaylater Enabled if user is tentatively approved by epaylater

*Returned Response:*




[EpaylaterBannerResponse](#EpaylaterBannerResponse)

Success. Return Epaylater Offer detail. Check the example shown below or refer `EpaylaterBannerResponseSchema` for more details. if `display=True`, then show banner otherwise do not show.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; User is registered successfully</i></summary>

```json
{
  "value": {
    "success": true,
    "data": {
      "display": false,
      "message": "User is Active",
      "status": "ACTIVE"
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; User is not registered or KYC not done or approval pending</i></summary>

```json
{
  "value": {
    "success": true,
    "data": {
      "display": true,
      "message": "User is not registered",
      "status": "NOT REGISTERED"
    }
  }
}
```
</details>

</details>









---


#### resendOrCancelPayment
API to resend and cancel a payment link which was already generated.




```swift
payment.resendOrCancelPayment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ResendOrCancelPaymentRequest | yes | Request body |


Use this API to perform resend or cancel a payment link based on request payload.

*Returned Response:*




[ResendOrCancelPaymentResponse](#ResendOrCancelPaymentResponse)

Success. Returns the status of payment. Check the example shown below or refer `ResendOrCancelPaymentResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; request_type is cancel</i></summary>

```json
{
  "value": {
    "success": true,
    "data": {
      "message": "Payment link Cancelled.",
      "status": true
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; request_type is resend</i></summary>

```json
{
  "value": {
    "success": true,
    "data": {
      "message": "Notification triggered.",
      "status": true
    }
  }
}
```
</details>

</details>









---


#### getActiveRefundTransferModes
Lists the mode of refund




```swift
payment.getActiveRefundTransferModes() { (response, error) in
    // Use response
}
```






Use this API to retrieve eligible refund modes (such as Netbanking) and add the beneficiary details.

*Returned Response:*




[TransferModeResponse](#TransferModeResponse)

Success. Shows the available refund mode to choose, e.g. Netbanking. Check the example shown below or refer `TransferModeResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": [
    {
      "display_name": "BANK",
      "items": [
        {
          "id": 6,
          "name": "bank",
          "display_name": "BANK",
          "logo_small": "https://hdn-1.fynd.com/payment/netbanking.png",
          "logo_large": "https://hdn-1.fynd.com/payment/netbanking.png"
        }
      ]
    }
  ]
}
```
</details>









---


#### enableOrDisableRefundTransferMode
Enable/Disable a mode for transferring a refund




```swift
payment.enableOrDisableRefundTransferMode(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateRefundTransferModeRequest | yes | Request body |


Activate or Deactivate Transfer Mode to collect Beneficiary Details for Refund

*Returned Response:*




[UpdateRefundTransferModeResponse](#UpdateRefundTransferModeResponse)

Success. Shows whether the refund mode was successfully enabled or disabled.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getUserBeneficiariesDetail
Lists the beneficiary of a refund




```swift
payment.getUserBeneficiariesDetail(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |  



Use this API to get the details of all active beneficiary added by a user for refund.

*Returned Response:*




[OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

Success. Returns the details of the beneficiary getting a refund. Check the example shown below or refer `OrderBeneficiaryResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "beneficiaries": [
    {
      "id": 221,
      "beneficiary_id": "0f7e44a922df352c05c5f73cb40ba115",
      "bank_name": "State Bank of India",
      "branch_name": "State Bank of India",
      "account_holder": "SHASHI TEST",
      "account_no": "1234567891",
      "ifsc_code": "SBIN0005611",
      "mobile": "9112042174",
      "email": "payment@gofynd.com",
      "address": "204A",
      "comment": "",
      "is_active": null,
      "created_on": "2020-06-29 12:38:39",
      "modified_on": "2020-06-29 12:38:39",
      "display_name": "BANK",
      "transfer_mode": "bank",
      "title": "Bank Account",
      "subtitle": "1234567891",
      "delights_user_name": null
    }
  ],
  "show_beneficiary_details": false
}
```
</details>









---


#### verifyIfscCode
Verify IFSC Code




```swift
payment.verifyIfscCode(ifscCode: ifscCode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| ifscCode | String? | no | A 11-digit alphanumeric code that uniquely identifies a bank branch. |  



Use this API to check whether the 11-digit IFSC code is valid and to fetch the bank details for refund.

*Returned Response:*




[IfscCodeResponse](#IfscCodeResponse)

Success. Shows whether the IFSC code is valid, and returns the bank details. Check the example shown below or refer `IfscCodeResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "branch_name": "MANPUR",
  "bank_name": "GAYA",
  "BRANCH": "MANPUR",
  "CENTRE": "GAYA",
  "DISTRICT": "GAYA",
  "STATE": "BIHAR",
  "ADDRESS": "POBUNIYADGANJBIHAR",
  "CONTACT": "00",
  "MICR": "816002103",
  "UPI": true,
  "RTGS": true,
  "CITY": "GAYA",
  "NEFT": true,
  "IMPS": true,
  "SWIFT": "",
  "BANK": "State Bank of India",
  "BANKCODE": "SBIN",
  "IFSC": "SBIN0005611",
  "success": true
}
```
</details>









---


#### getOrderBeneficiariesDetail
Lists the beneficiary of a refund




```swift
payment.getOrderBeneficiariesDetail(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |  



Use this API to get the details of all active beneficiary added by a user for refund.

*Returned Response:*




[OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

Success. Returns the details of the beneficiary getting a refund. Check the example shown below or refer `OrderBeneficiaryResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "beneficiaries": [
    {
      "id": 3695,
      "beneficiary_id": "4c86dd56e634a4c6a8fb51d195bc7b83",
      "bank_name": "State Bank of India",
      "branch_name": "BHOGAT",
      "account_holder": "PRAKASH TEST",
      "account_no": "3566342455454",
      "ifsc_code": "SBIN0014982",
      "mobile": "7819064010",
      "email": "prakashtest@gmail.com",
      "address": "49A, Dabhi seri, jodhpur, kalyanpur",
      "comment": "COD Refund",
      "is_active": null,
      "created_on": "2021-01-22 11:31:02",
      "modified_on": "2021-01-22 11:31:02",
      "display_name": "BANK",
      "transfer_mode": "bank",
      "title": "Bank Account",
      "subtitle": "35663423659",
      "delights_user_name": "shreeniwas_24x7_gmail_com_45978_16624463"
    }
  ]
}
```
</details>









---


#### verifyOtpAndAddBeneficiaryForBank
Verify the beneficiary details using OTP




```swift
payment.verifyOtpAndAddBeneficiaryForBank(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AddBeneficiaryViaOtpVerificationRequest | yes | Request body |


Use this API to perform an OTP validation before saving the beneficiary details added for a refund.

*Returned Response:*




[AddBeneficiaryViaOtpVerificationResponse](#AddBeneficiaryViaOtpVerificationResponse)

Success. Check the example shown below or refer `AddBeneficiaryViaOtpVerificationRequest` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Account successfully created"
}
```
</details>









---


#### addBeneficiaryDetails
Save bank details for cancelled/returned order




```swift
payment.addBeneficiaryDetails(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AddBeneficiaryDetailsRequest | yes | Request body |


Use this API to save the bank details for a returned or cancelled order to refund the amount.

*Returned Response:*




[RefundAccountResponse](#RefundAccountResponse)

Success. Shows whether the beneficiary details were saved to a returned/cancelled order or not.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Account successfully created",
  "data": {},
  "is_verified_flag": true
}
```
</details>









---


#### addRefundBankAccountUsingOTP
Save bank details for cancelled/returned order




```swift
payment.addRefundBankAccountUsingOTP(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AddBeneficiaryDetailsOTPRequest | yes | Request body |


Use this API to save bank details for returned/cancelled order to refund amount in his account.

*Returned Response:*




[RefundAccountResponse](#RefundAccountResponse)

Success. Shows whether the beneficiary details were saved to a returned/cancelled order or not.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Account successfully created",
  "data": {},
  "is_verified_flag": true
}
```
</details>









---


#### verifyOtpAndAddBeneficiaryForWallet
Send OTP on adding a wallet beneficiary




```swift
payment.verifyOtpAndAddBeneficiaryForWallet(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | WalletOtpRequest | yes | Request body |


Use this API to send an OTP while adding a wallet beneficiary by mobile no. verification.

*Returned Response:*




[WalletOtpResponse](#WalletOtpResponse)

Success. Sends the OTP to the given mobile number. Check the example shown below or refer `WalletOtpResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "is_verified_flag": false,
  "request_id": "c3ca6c13d490c885a125d106b45697b7"
}
```
</details>









---


#### updateDefaultBeneficiary
Set a default beneficiary for a refund




```swift
payment.updateDefaultBeneficiary(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SetDefaultBeneficiaryRequest | yes | Request body |


Use this API to set a default beneficiary for getting a refund.

*Returned Response:*




[SetDefaultBeneficiaryResponse](#SetDefaultBeneficiaryResponse)

Success. Check the example shown below or refer `SetDefaultBeneficiaryResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "is_beneficiary_set": true
}
```
</details>









---


#### customerCreditSummary
API to fetch the customer credit summary




```swift
payment.customerCreditSummary(aggregator: aggregator) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregator | String? | no |  |  



Use this API to fetch the customer credit summary.

*Returned Response:*




[CustomerCreditSummaryResponse](#CustomerCreditSummaryResponse)

Success. Returns the status of payment. Check the example shown below or refer `CustomerCreditSummaryResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "merchant_customer_ref_id": "ABHI0002",
    "status": "Bill Due",
    "status_message": "Pay now to avoid interest charges",
    "balance": {
      "value": 87424,
      "formatted_value": "₹ 87,424.00",
      "currency": "INR"
    },
    "limit": {
      "value": 100000,
      "formatted_value": "₹ 100,000.00",
      "currency": "INR"
    },
    "due_amount": {
      "value": 12576,
      "formatted_value": "₹ 12,576.00",
      "currency": "INR"
    },
    "used_amount": {
      "value": 12576,
      "formatted_value": "₹ 12,576.00",
      "currency": "INR"
    },
    "due_date": "Oct 22 2021",
    "days_overdue": 123
  }
}
```
</details>









---


#### redirectToAggregator
API to get the redirect url to redirect the user to aggregator's page




```swift
payment.redirectToAggregator(source: source, aggregator: aggregator) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| source | String? | no | This is a String value that contains callback URL as value. |   
| aggregator | String? | no | This is a String value that contains aggregator name as value. |  



Use this API to get the redirect url to redirect the user to aggregator's page

*Returned Response:*




[RedirectToAggregatorResponse](#RedirectToAggregatorResponse)

Success. Returns the status of payment. Check the example shown below or refer `RedirectToAggregatorResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "redirect_url": "https://api-blackbox.epaylater.in//marketplace/customer/transactions/v2?encryptedPayload=dpPuB2+kZ6NyIrg0eWAwk7TbF14502RkIARgullt3PGWMh7Ix0Tc720b6idZzXNxzwaA3BOi2DHUALpqSfOagra+i0wRIVc36O62fwPscQE=checksum=6F06AEAE2A3CBBC81457FB2287C4DEFCFC16DEA8F33482D682134D64E43E34C2merchantId=Sample1234567890redirectConfirmUrl=http://localhost:8000/",
    "status": true
  }
}
```
</details>









---


#### checkCredit
API to fetch the customer credit summary




```swift
payment.checkCredit(aggregator: aggregator) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregator | String? | no |  |  



Use this API to fetch the customer credit summary.

*Returned Response:*




[CheckCreditResponse](#CheckCreditResponse)

Success. Returns the status of payment. Check the example shown below or refer `CheckCreditResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "is_registered": false,
    "status": true,
    "signup_url": "https://merchant.epaylater.in"
  }
}
```
</details>









---


#### customerOnboard
API to fetch the customer credit summary




```swift
payment.customerOnboard(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CustomerOnboardingRequest | yes | Request body |


Use this API to fetch the customer credit summary.

*Returned Response:*




[CustomerOnboardingResponse](#CustomerOnboardingResponse)

Success. Returns the status of payment. Check the example shown below or refer `CustomerOnboardingResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "session": {
      "session_id": "109dae9a-9fe0-4277-979c-0bebb0136930"
    },
    "redirect_url": "https://retail-dev.epaylater.in?sessionId=109dae9a-9fe0-4277-979c-0bebb0136930",
    "status": true
  }
}
```
</details>









---



### Schemas

 
 
 #### [AggregatorConfigDetail](#AggregatorConfigDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verifyApi | String? |  yes  | Payment gateway verify payment api endpoint |
 | userId | String? |  yes  | Registered User id |
 | merchantKey | String? |  yes  | Unique merchant key |
 | api | String? |  yes  | Payment gateway api endpoint |
 | configType | String |  no  | Fynd or self payment gateway |
 | secret | String |  no  | Masked payment gateway api secret |
 | merchantId | String? |  yes  | Unique merchant id |
 | key | String |  no  | Payment gateway api key |
 | sdk | Bool? |  yes  | SDK |
 | pin | String? |  yes  | Masked pin |

---


 
 
 #### [AggregatorsConfigDetailResponse](#AggregatorsConfigDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | env | String |  no  | Environment i.e Live or Test |
 | success | Bool |  no  |  |
 | stripe | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | payumoney | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | rupifi | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | razorpay | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | simpl | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | mswipe | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | juspay | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | ccavenue | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |

---


 
 
 #### [ErrorCodeAndDescription](#ErrorCodeAndDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  | Error human understandable description. |
 | code | String |  no  | Error descrption code. |

---


 
 
 #### [HttpErrorCodeAndResponse](#HttpErrorCodeAndResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [ErrorCodeAndDescription](#ErrorCodeAndDescription) |  no  |  |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [AttachCardRequest](#AttachCardRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | nickname | String? |  yes  |  |
 | cardId | String |  no  | Card token of payment gateway. |
 | nameOnCard | String? |  yes  |  |
 | refresh | Bool? |  yes  | Refresh cache flag. |

---


 
 
 #### [AttachCardsResponse](#AttachCardsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Human readable message. |
 | success | Bool |  no  | Response is successful or not. |
 | data | [String: Any] |  no  | List of cards of customer. |

---


 
 
 #### [CardPaymentGateway](#CardPaymentGateway)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String |  no  | Payment gateway name. |
 | api | String? |  yes  | Payment gateway CARD api endpoint |
 | customerId | String? |  yes  | Payment gateway customer id. |

---


 
 
 #### [ActiveCardPaymentGatewayResponse](#ActiveCardPaymentGatewayResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cards | [CardPaymentGateway](#CardPaymentGateway) |  no  | Card's payment gateway with customer id. |
 | message | String |  no  | Human readable message. |
 | success | Bool |  no  | Response is successful or not. |

---


 
 
 #### [Card](#Card)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardName | String? |  yes  | card_name |
 | aggregatorName | String |  no  | aggregator_name |
 | cardIsin | String? |  yes  | card_isin |
 | expMonth | Int? |  yes  | exp_month |
 | cardBrand | String? |  yes  | card_brand |
 | expired | Bool? |  yes  | expired |
 | cardNumber | String? |  yes  | card_number |
 | expYear | Int? |  yes  | exp_year |
 | cardBrandImage | String? |  yes  | card_brand_image |
 | nickname | String? |  yes  | nickname |
 | cardToken | String? |  yes  | card_token |
 | cardFingerprint | String? |  yes  | card_fingerprint |
 | cardId | String? |  yes  | card_id |
 | cardIssuer | String? |  yes  | card_issuer |
 | cardReference | String? |  yes  | card_reference |
 | cardType | String? |  yes  | card_type |

---


 
 
 #### [ListCardsResponse](#ListCardsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Human readable message. |
 | success | Bool |  no  | Response is successful or not. |
 | data | [[Card](#Card)]? |  yes  | List of cards of customer. |

---


 
 
 #### [DeletehCardRequest](#DeletehCardRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardId | String |  no  | Card token of payment gateway. |

---


 
 
 #### [DeleteCardsResponse](#DeleteCardsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Human readable message. |
 | success | Bool |  no  | Response is successful or not. |

---


 
 
 #### [ValidateCustomerRequest](#ValidateCustomerRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String |  no  | User mobile number without country code. |
 | transactionAmountInPaise | Int |  no  | Payable amount in paise |
 | payload | String |  no  | Hashed payload string. |
 | aggregator | String |  no  | Payment gateway name in camel case i.e Simpl, Rupifi |
 | merchantParams | [String: Any] |  no  | Extra meta fields. |

---


 
 
 #### [ValidateCustomerResponse](#ValidateCustomerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Error or success message. |
 | success | Bool |  no  | Response is successful or not |
 | data | [String: Any] |  no  | Payment gateway response data |

---


 
 
 #### [ChargeCustomerRequest](#ChargeCustomerRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | transactionToken | String? |  yes  | Transaction token of payment gateway. |
 | amount | Int |  no  | Chargable amount of order. |
 | aggregator | String |  no  | Payment gateway name i.e Simpl, Mswipe |
 | orderId | String |  no  | Unique order id. |
 | verified | Bool? |  yes  | Already Verified flag from payment gateway i.e Mswipe |

---


 
 
 #### [ChargeCustomerResponse](#ChargeCustomerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Human readable message. |
 | success | Bool |  no  | Response is successful or not. |
 | cartId | String? |  yes  | Cart id of customer |
 | deliveryAddressId | String? |  yes  | Delivery adddress id of customer |
 | aggregator | String |  no  | Payment gateway name i.e Simpl, Mswipe |
 | orderId | String |  no  | Unique order id. |
 | status | String |  no  | Status of charged payment. |

---


 
 
 #### [PaymentInitializationRequest](#PaymentInitializationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerId | String |  no  | Payment gateway customer id. |
 | currency | String |  no  | Currency code. |
 | vpa | String? |  yes  | Customer vpa address |
 | amount | Int |  no  | Payable amount. |
 | aggregator | String |  no  | Payment gateway name |
 | orderId | String |  no  | Payment gateway order id |
 | timeout | Int? |  yes  | Payment polling timeout if not recieved response |
 | razorpayPaymentId | String? |  yes  | Payment gateway payment id |
 | method | String |  no  | Payment method |
 | email | String |  no  | Customer valid email |
 | merchantOrderId | String |  no  | Unique fynd order id |
 | contact | String |  no  | Customer valid mobile number |

---


 
 
 #### [PaymentInitializationResponse](#PaymentInitializationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerId | String? |  yes  | Payment gateway customer id. |
 | currency | String? |  yes  | Currency code. |
 | virtualId | String? |  yes  | Payment virtual address. |
 | vpa | String? |  yes  | Customer vpa address |
 | success | Bool |  no  | Response is successful or not. |
 | amount | Int? |  yes  | Payable amount. |
 | aggregator | String |  no  | Payment gateway name |
 | timeout | Int? |  yes  | timeout. |
 | upiPollUrl | String? |  yes  | UPI poll url. |
 | pollingUrl | String |  no  | Polling url. |
 | bqrImage | String? |  yes  | Bharath qr image url. |
 | razorpayPaymentId | String? |  yes  | Payment  id. |
 | method | String |  no  | Payment method |
 | merchantOrderId | String |  no  | order id |
 | status | String? |  yes  | Status of payment. |
 | aggregatorOrderId | String? |  yes  | Payment order id |

---


 
 
 #### [PaymentStatusUpdateRequest](#PaymentStatusUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerId | String |  no  | Payment gateway customer id. |
 | currency | String |  no  | Currency code. |
 | vpa | String |  no  | Customer vpa address |
 | amount | Int |  no  | Payable amount. |
 | aggregator | String |  no  | Payment gateway name |
 | orderId | String |  no  | Payment gateway order id |
 | contact | String |  no  | Customer valid mobile number |
 | method | String |  no  | Payment method |
 | email | String |  no  | Customer valid email |
 | merchantOrderId | String |  no  | Unique fynd order id |
 | status | String |  no  | Status of payment. |

---


 
 
 #### [PaymentStatusUpdateResponse](#PaymentStatusUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | retry | Bool |  no  | Response is successful or not. |
 | aggregatorName | String |  no  | Payment gateway name |
 | status | String |  no  | Payment status |

---


 
 
 #### [AggregatorRoute](#AggregatorRoute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentFlowData | String? |  yes  | payment_flow_data |
 | apiLink | String? |  yes  | api_link |
 | paymentFlow | String? |  yes  | payment_flow |
 | data | [String: Any]? |  yes  | Data |

---


 
 
 #### [PaymentFlow](#PaymentFlow)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | epaylater | [AggregatorRoute](#AggregatorRoute)? |  yes  | Epaylater |
 | bqrRazorpay | [AggregatorRoute](#AggregatorRoute)? |  yes  | BQR_Razorpay |
 | stripe | [AggregatorRoute](#AggregatorRoute)? |  yes  | Stripe |
 | upiRazorpay | [AggregatorRoute](#AggregatorRoute)? |  yes  | UPI_Razorpay |
 | rupifi | [AggregatorRoute](#AggregatorRoute)? |  yes  | Rupifi |
 | fynd | [AggregatorRoute](#AggregatorRoute)? |  yes  | Fynd |
 | jiopay | [AggregatorRoute](#AggregatorRoute)? |  yes  | Jiopay |
 | simpl | [AggregatorRoute](#AggregatorRoute)? |  yes  | simpl |
 | razorpay | [AggregatorRoute](#AggregatorRoute)? |  yes  | Razorpay |
 | payubiz | [AggregatorRoute](#AggregatorRoute)? |  yes  | Payubiz |
 | mswipe | [AggregatorRoute](#AggregatorRoute)? |  yes  | mswipe |
 | juspay | [AggregatorRoute](#AggregatorRoute)? |  yes  | Juspay |
 | ccavenue | [AggregatorRoute](#AggregatorRoute)? |  yes  | Ccavenue |

---


 
 
 #### [PaymentModeLogo](#PaymentModeLogo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | large | String |  no  | large |
 | small | String |  no  | smalll |

---


 
 
 #### [IntentApp](#IntentApp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logos | [PaymentModeLogo](#PaymentModeLogo)? |  yes  | logos |
 | displayName | String? |  yes  | display_name |
 | packageName | String? |  yes  | package_name |
 | code | String? |  yes  | code |

---


 
 
 #### [IntentAppErrorList](#IntentAppErrorList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  | code |
 | packageName | String? |  yes  | package_name |

---


 
 
 #### [PaymentModeList](#PaymentModeList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logoUrl | [PaymentModeLogo](#PaymentModeLogo)? |  yes  | Logo |
 | name | String? |  yes  | name |
 | retryCount | Int? |  yes  | retry_count |
 | fyndVpa | String? |  yes  | fynd_vpa |
 | cardType | String? |  yes  | card_type |
 | merchantCode | String? |  yes  | merchant code |
 | aggregatorName | String |  no  | aggregator_name |
 | cardNumber | String? |  yes  | card_number |
 | expYear | Int? |  yes  | exp_year |
 | cardBrandImage | String? |  yes  | card_brand_image |
 | timeout | Int? |  yes  | timeout |
 | cardToken | String? |  yes  | card_token |
 | cardId | String? |  yes  | card_id |
 | cardIssuer | String? |  yes  | card_issuer |
 | cardReference | String? |  yes  | card_reference |
 | code | String? |  yes  | code |
 | cardName | String? |  yes  | card_name |
 | intentFlow | Bool? |  yes  | intent_flow |
 | displayName | String? |  yes  | display name |
 | cardFingerprint | String? |  yes  | card_fingerprint |
 | intentApp | [[IntentApp](#IntentApp)]? |  yes  | intent_app |
 | intentAppErrorList | [String]? |  yes  | intent_app_error_list |
 | cardIsin | String? |  yes  | card_isin |
 | expMonth | Int? |  yes  | exp_month |
 | cardBrand | String? |  yes  | card_brand |
 | expired | Bool? |  yes  | expired |
 | nickname | String? |  yes  | nickname |
 | intentAppErrorDictList | [[IntentAppErrorList](#IntentAppErrorList)]? |  yes  | intent_app_error_dict_list |
 | displayPriority | Int? |  yes  | Dispaly Priority |

---


 
 
 #### [RootPaymentMode](#RootPaymentMode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregatorName | String? |  yes  | Dispaly Priority |
 | name | String |  no  | Payment mode name |
 | list | [[PaymentModeList](#PaymentModeList)]? |  yes  | Payment mode |
 | displayName | String |  no  | Payment mode display name |
 | addCardEnabled | Bool? |  yes  | Annonymous card flag |
 | anonymousEnable | Bool? |  yes  | Annonymous card flag |
 | displayPriority | Int |  no  | Dispaly Priority |

---


 
 
 #### [PaymentOptionAndFlow](#PaymentOptionAndFlow)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentFlows | [PaymentFlow](#PaymentFlow) |  no  | payment_flows |
 | paymentOption | [[RootPaymentMode](#RootPaymentMode)] |  no  | Payment options |

---


 
 
 #### [PaymentModeRouteResponse](#PaymentModeRouteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOptions | [PaymentOptionAndFlow](#PaymentOptionAndFlow) |  no  | payment_options |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [RupifiBannerData](#RupifiBannerData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  | Rupifi KYC status |
 | kycUrl | String? |  yes  | Rupifi KYC banner url. |

---


 
 
 #### [RupifiBannerResponse](#RupifiBannerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Successful or not. |
 | data | [RupifiBannerData](#RupifiBannerData) |  no  | Rupifi KYC banner details. |

---


 
 
 #### [EpaylaterBannerData](#EpaylaterBannerData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | ePayLater message |
 | display | Bool |  no  | Need to display banner or not |
 | status | String? |  yes  | Epaylater KYC status |

---


 
 
 #### [EpaylaterBannerResponse](#EpaylaterBannerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Successful or not. |
 | data | [EpaylaterBannerData](#EpaylaterBannerData) |  no  | Epaylater KYC banner details. |

---


 
 
 #### [ResendOrCancelPaymentRequest](#ResendOrCancelPaymentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestType | String |  no  | Either resend or cancel |
 | orderId | String |  no  | Unique order id |

---


 
 
 #### [LinkStatus](#LinkStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Message |
 | status | Bool |  no  | Link action status |

---


 
 
 #### [ResendOrCancelPaymentResponse](#ResendOrCancelPaymentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Response is successful or not. |
 | data | [LinkStatus](#LinkStatus) |  no  | Data about link action status. |

---


 
 
 #### [TransferItemsDetails](#TransferItemsDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |   |
 | logoSmall | String |  no  | Beneficiary small Logo |
 | name | String |  no  |  Beneficiary Name |
 | logoLarge | String |  no  | Beneficiary large Logo |
 | displayName | String? |  yes  | Beneficiary Display Name |

---


 
 
 #### [TransferModeDetails](#TransferModeDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String |  no  | Beneficiary Mode Name |
 | items | [[TransferItemsDetails](#TransferItemsDetails)]? |  yes  | Beneficiary Mode Items |

---


 
 
 #### [TransferModeResponse](#TransferModeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[TransferModeDetails](#TransferModeDetails)] |  no  | Response Object |

---


 
 
 #### [UpdateRefundTransferModeRequest](#UpdateRefundTransferModeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enable | Bool |  no  | True for enabling the Transfer Mode |
 | transferMode | String |  no  | Transfer Mode of the Beneficiary to be added |

---


 
 
 #### [UpdateRefundTransferModeResponse](#UpdateRefundTransferModeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [OrderBeneficiaryDetails](#OrderBeneficiaryDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |   |
 | mobile | String? |  yes  | MObile no of User |
 | modifiedOn | String |  no  | MOdification Date of Beneficiary |
 | accountHolder | String |  no  | Account Holder Name |
 | title | String |  no  | Title Of Account |
 | isActive | Bool |  no  | Boolean Flag whether Beneficiary set or not |
 | createdOn | String |  no  | Creation Date of Beneficiary |
 | branchName | String? |  yes  | Branch Name Of Account |
 | subtitle | String |  no  | SHort Title Of Account |
 | displayName | String |  no  | Display Name Of Account |
 | delightsUserName | String? |  yes  | User Id Who filled the Beneficiary  |
 | email | String |  no  | EMail of User |
 | address | String |  no  | Address of User |
 | beneficiaryId | String |  no  | Benenficiary Id |
 | ifscCode | String |  no  | Ifsc Code Of Account |
 | comment | String? |  yes  | Remarks |
 | accountNo | String |  no  | Account Number |
 | bankName | String |  no  | Bank Name Of Account |
 | transferMode | String |  no  | Transfer Mode Of Account |

---


 
 
 #### [OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | showBeneficiaryDetails | Bool? |  yes  | Show beneficiary details or not. |
 | beneficiaries | [[OrderBeneficiaryDetails](#OrderBeneficiaryDetails)]? |  yes  | All Beneficiaries Of An Order |

---


 
 
 #### [NotFoundResourceError](#NotFoundResourceError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  | Not Found |
 | success | Bool |  no  | Response is successful or not |
 | code | String |  no  | Bad Request Data |

---


 
 
 #### [IfscCodeResponse](#IfscCodeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Response is successful or not |
 | bankName | String |  no  | Bank Name Of Account |
 | branchName | String |  no  | Branch Name Of Account |

---


 
 
 #### [ErrorCodeDescription](#ErrorCodeDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  | Error human understandable description. |
 | success | Bool |  no  | Response is successful or not |
 | code | String |  no  | Error descrption code. |

---


 
 
 #### [AddBeneficiaryViaOtpVerificationRequest](#AddBeneficiaryViaOtpVerificationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String |  no  | Request Id sent in  |
 | hashKey | String |  no  | Hash key of the beneficiary Id |
 | otp | String |  no  | Otp sent to the given Mobile No |

---


 
 
 #### [AddBeneficiaryViaOtpVerificationResponse](#AddBeneficiaryViaOtpVerificationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Aggregator Response of beneficicary  |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [WrongOtpError](#WrongOtpError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isVerifiedFlag | Bool |  no  | Vefified flag. |
 | description | String |  no  | Wrong OTP Code |
 | success | String |  no  | Response is successful or not |

---


 
 
 #### [BeneficiaryModeDetails](#BeneficiaryModeDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String |  no  | Moblie Number of the User |
 | vpa | String? |  yes  |  |
 | ifscCode | String |  no  | Ifsc Code of the Account |
 | wallet | String? |  yes  |  |
 | branchName | String |  no  | Branch Name of the Account |
 | accountHolder | String |  no  | Name of the Account Holder |
 | email | String |  no  | Email of the Account Holder |
 | address | String? |  yes  | Address of the User |
 | comment | String? |  yes  | Remarks added by The user |
 | accountNo | String |  no  | Account NUmber of the Account Holder |
 | bankName | String |  no  | Bank Name of the Account |

---


 
 
 #### [AddBeneficiaryDetailsRequest](#AddBeneficiaryDetailsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String |  no  | Shipment Id of the respective Merchant Order Id |
 | orderId | String |  no  | Merchant Order Id |
 | otp | String? |  yes  |  |
 | delights | Bool |  no  | True if  beneficiary to be added by delights or False if by User |
 | requestId | String? |  yes  |  |
 | details | [BeneficiaryModeDetails](#BeneficiaryModeDetails) |  no  | Beneficiary bank details |
 | transferMode | String |  no  | Transfer Mode of the Beneficiary to be added |

---


 
 
 #### [RefundAccountResponse](#RefundAccountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Response message |
 | isVerifiedFlag | Bool? |  yes  |  |
 | success | Bool |  no  | Success or failure flag. |
 | data | [String: Any]? |  yes  | Refund account data. |

---


 
 
 #### [BankDetailsForOTP](#BankDetailsForOTP)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ifscCode | String |  no  |  |
 | branchName | String |  no  |  |
 | accountHolder | String |  no  |  |
 | accountNo | String |  no  |  |
 | bankName | String |  no  |  |

---


 
 
 #### [AddBeneficiaryDetailsOTPRequest](#AddBeneficiaryDetailsOTPRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  |  |
 | details | [BankDetailsForOTP](#BankDetailsForOTP) |  no  |  |

---


 
 
 #### [WalletOtpRequest](#WalletOtpRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String |  no  | Wallet Moblie Number of the User |
 | countryCode | String |  no  | Country Code of the Mobile Number |

---


 
 
 #### [WalletOtpResponse](#WalletOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isVerifiedFlag | String |  no  | Boolean Flag whether OTP Validation is already done or not |
 | requestId | String |  no  | request id  |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [SetDefaultBeneficiaryRequest](#SetDefaultBeneficiaryRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  | Merchant Order Id |
 | beneficiaryId | String |  no  | Beneficiary Hash Id of the beneficiary added |

---


 
 
 #### [SetDefaultBeneficiaryResponse](#SetDefaultBeneficiaryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isBeneficiarySet | Bool |  no  | Boolean Flag whether Beneficiary set or not |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [BalanceDetails](#BalanceDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currency | String |  no  | Currency Code |
 | formattedValue | String |  no  | Formated Amount with currency symbol |
 | value | Double |  no  | Payment amount |

---


 
 
 #### [CreditSummary](#CreditSummary)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | balance | [BalanceDetails](#BalanceDetails)? |  yes  | Credit summary of user. |
 | statusMessage | String |  no  | message to customer |
 | status | String |  no  | Customer Credit status |
 | merchantCustomerRefId | String |  no  | Unique aggregator customer id |

---


 
 
 #### [CustomerCreditSummaryResponse](#CustomerCreditSummaryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Payment confirmation updated or not. |
 | data | [CreditSummary](#CreditSummary)? |  yes  | Credit summary of user. |

---


 
 
 #### [RedirectURL](#RedirectURL)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | signupUrl | String |  no  | URL to which the user may redirect. |
 | status | Bool |  no  | Aggregator's Operation is successful or not. |

---


 
 
 #### [RedirectToAggregatorResponse](#RedirectToAggregatorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Status updated or not. |
 | data | [RedirectURL](#RedirectURL) |  no  | Redirect URL. |

---


 
 
 #### [CreditDetail](#CreditDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool |  no  | Operation is successful or not. |
 | signupUrl | String |  no  | URL to which the user may redirect. |
 | isRegistered | Bool |  no  | User is registered with aggregator or not. |

---


 
 
 #### [CheckCreditResponse](#CheckCreditResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Operation is successful or not. |
 | data | [CreditDetail](#CreditDetail) |  no  | Credit summary of user. |

---


 
 
 #### [DeviceDetails](#DeviceDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | os | String? |  yes  | OS Name |
 | deviceType | String? |  yes  | Device Type(E.g. Mobile) |
 | identificationNumber | String? |  yes  | IP |
 | identifierType | String? |  yes  | Static value = ip |
 | deviceMake | String? |  yes  | Device maker |
 | osVersion | String? |  yes  | OS Version |
 | deviceModel | String? |  yes  | Device Model |

---


 
 
 #### [KYCAddress](#KYCAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String |  no  | State |
 | landMark | String? |  yes  | Land Mark |
 | ownershipType | String? |  yes  | Address Owner Type |
 | addressline1 | String |  no  | Address Line 1 |
 | addressline2 | String? |  yes  | Address Line 2 |
 | pincode | String |  no  | Pincode |
 | city | String |  no  | City |

---


 
 
 #### [BusinessDetails](#BusinessDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | vintage | String? |  yes  | Vintage |
 | name | String? |  yes  | Business Name |
 | fda | String? |  yes  | Driver License |
 | entityType | String? |  yes  | Busineess Entity Type |
 | gstin | String? |  yes  | GSTIN Number |
 | businessOwnershipType | String? |  yes  | business Ownershipp type(e.g Rented) |
 | pan | String? |  yes  | Pan Number |
 | fssai | String? |  yes  | FDA License Number |
 | shopAndEstablishment | [String: Any]? |  yes  | Shop Establishment |
 | address | [KYCAddress](#KYCAddress)? |  yes  | Address details |
 | businessType | String? |  yes  | Business Type |

---


 
 
 #### [UserPersonalInfoInDetails](#UserPersonalInfoInDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | voterId | String? |  yes  | Voter ID Number |
 | lastName | String? |  yes  | Last Name |
 | drivingLicense | String? |  yes  | Driver License |
 | gender | String? |  yes  | Gender |
 | addressAsPerId | [KYCAddress](#KYCAddress) |  no  | Address details |
 | emailVerified | Bool |  no  | Is Email Verified or not |
 | passport | String? |  yes  | Passport |
 | mothersName | String? |  yes  | Mother's Name |
 | mobileVerified | Bool |  no  | Is Mobile Verified or not |
 | phone | String |  no  | Email |
 | email | String? |  yes  | Email |
 | firstName | String |  no  | First Name |
 | pan | String? |  yes  | Pan Number |
 | middleName | String? |  yes  | middle Name |
 | dob | String |  no  | DOB |
 | fathersName | String? |  yes  | Father's Name |

---


 
 
 #### [MarketplaceInfo](#MarketplaceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  | Name of store |
 | membershipId | String |  no  | merchant id |
 | dateOfJoining | String? |  yes  | Date of joining |

---


 
 
 #### [CustomerOnboardingRequest](#CustomerOnboardingRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | device | [DeviceDetails](#DeviceDetails)? |  yes  | Device Details. |
 | aggregator | String |  no  | Aggregator Name |
 | mcc | String? |  yes  | Mcc |
 | source | String |  no  | callbackURL |
 | businessInfo | [BusinessDetails](#BusinessDetails)? |  yes  | Business summary. |
 | personalInfo | [UserPersonalInfoInDetails](#UserPersonalInfoInDetails) |  no  | Credit summary of user. |
 | marketplaceInfo | [MarketplaceInfo](#MarketplaceInfo)? |  yes  | Market Place info. |

---


 
 
 #### [OnboardSummary](#OnboardSummary)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | redirectUrl | String |  no  | URL to which the user may redirect. |
 | session | [String: Any] |  no  | User Session |
 | status | Bool |  no  | Operation Status |

---


 
 
 #### [CustomerOnboardingResponse](#CustomerOnboardingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Status updated or not. |
 | data | [OnboardSummary](#OnboardSummary) |  no  | Redirect URL. |

---



