



##### [Back to Application docs](./README.md)

## Payment Methods
The Payment module lists cards and payment modes, allows for the selection of payment modes during checkout, handles refunds, validates customers, and ensures the security of transactions.

Default
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
* [walletLinkInitate](#walletlinkinitate)
* [linkWallet](#linkwallet)
* [delinkWallet](#delinkwallet)
* [getRupifiBannerDetails](#getrupifibannerdetails)
* [getEpaylaterBannerDetails](#getepaylaterbannerdetails)
* [resendOrCancelPayment](#resendorcancelpayment)
* [renderHTML](#renderhtml)
* [validateVPA](#validatevpa)
* [cardDetails](#carddetails)
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
* [getPaymentLink](#getpaymentlink)
* [createPaymentLink](#createpaymentlink)
* [resendPaymentLink](#resendpaymentlink)
* [cancelPaymentLink](#cancelpaymentlink)
* [getPaymentModeRoutesPaymentLink](#getpaymentmoderoutespaymentlink)
* [pollingPaymentLink](#pollingpaymentlink)
* [createOrderHandlerPaymentLink](#createorderhandlerpaymentlink)
* [initialisePaymentPaymentLink](#initialisepaymentpaymentlink)
* [checkAndUpdatePaymentStatusPaymentLink](#checkandupdatepaymentstatuspaymentlink)
* [customerCreditSummary](#customercreditsummary)
* [redirectToAggregator](#redirecttoaggregator)
* [checkCredit](#checkcredit)
* [customerOnboard](#customeronboard)
* [outstandingOrderDetails](#outstandingorderdetails)
* [paidOrderDetails](#paidorderdetails)
* [createPaymentOrder](#createpaymentorder)




## Methods with example and description



#### getAggregatorsConfig
Get payment gateway keys




```swift
applicationClient.payment.getAggregatorsConfig(xApiToken: xApiToken, refresh: refresh) { (response, error) in
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
applicationClient.payment.attachCardToCustomer(body: body) { (response, error) in
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
applicationClient.payment.getActiveCardAggregator(refresh: refresh) { (response, error) in
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
applicationClient.payment.getActiveUserCards(forceRefresh: forceRefresh) { (response, error) in
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
      "card_brand_image": "https://hdn-1.fynd.com/payment/visa.png",
      "compliant_with_tokenisation_guidelines": true
    }
  ]
}
```
</details>









---


#### deleteUserCard
Delete a card




```swift
applicationClient.payment.deleteUserCard(body: body) { (response, error) in
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
applicationClient.payment.verifyCustomerForPayment(body: body) { (response, error) in
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
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success is True i.e user is allowed</i></summary>

```json
{
  "value": {
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
}
```
</details>

<details>
<summary><i>&nbsp; success is True i.e user not allowed</i></summary>

```json
{
  "value": {
    "success": false,
    "message": "data fetched",
    "error": {
      "api_version": 2,
      "data": {
        "approved": false,
        "button_text": "Buy Now, Pay Later",
        "first_transaction": false
      },
      "aggregator": "Simpl"
    },
    "data": {}
  }
}
```
</details>

</details>









---


#### verifyAndChargePayment
Verify and charge payment




```swift
applicationClient.payment.verifyAndChargePayment(body: body) { (response, error) in
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
applicationClient.payment.initialisePayment(body: body) { (response, error) in
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
  "customer_id": "cust_dummy_001",
  "device_id": "1234567890"
}
```
</details>









---


#### checkAndUpdatePaymentStatus
Performs continuous polling to check status of payment on the server




```swift
applicationClient.payment.checkAndUpdatePaymentStatus(body: body) { (response, error) in
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
applicationClient.payment.getPaymentModeRoutes(amount: amount, cartId: cartId, checkoutMode: checkoutMode, refresh: refresh, orderId: orderId, cardReference: cardReference, userDetails: userDetails, displaySplit: displaySplit, advancePayment: advancePayment, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| amount | Int | yes | Payable amount. |   
| cartId | String? | no | Identifier of the cart. |   
| checkoutMode | String? | no | Option to checkout for self or for others. |   
| refresh | Bool? | no | This is a boolean value. Select `true` to remove temporary cache files on payment gateway and replace with the latest one. |   
| orderId | String? | no |  |   
| cardReference | String? | no | Card reference id of user's debit or credit card. |   
| userDetails | String? | no | URIencoded JSON containing details of an anonymous user. |   
| displaySplit | Bool? | no | Display Split Payment Option or not |   
| advancePayment | Bool? | no | Display Advance Payment Options or Normal |   
| shipmentId | String? | no |  |  



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
        "name": "COD",
        "display_name": "Cash on Delivery",
        "display_priority": 1,
        "payment_mode_id": 11,
        "aggregator_name": "Fynd",
        "logo": "https://hdn-1.fynd.com/payment/cod.png",
        "logo_url": {
          "small": "https://hdn-1.fynd.com/payment/cod.png",
          "large": "https://hdn-1.fynd.com/payment/cod.png"
        },
        "list": [
          {
            "cod_limit": 1000,
            "remaining_limit": 100,
            "aggregator_name": "name"
          }
        ]
      },
      {
        "name": "CARD",
        "display_priority": 2,
        "payment_mode_id": 2,
        "display_name": "Card",
        "list": [],
        "anonymous_enable": true,
        "aggregator_name": "Razorpay",
        "add_card_enabled": false,
        "save_card": true
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
            "display_priority": 1,
            "meta": {
              "balance": 10,
              "token": "613b11af-dd32-4b59-8f18-70b2a93dc702",
              "linked": true,
              "mobile": 8999999999,
              "wallet_code": "PAYTM"
            }
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
          },
          {
            "aggregator_name": "Potlee",
            "name": "POTLEE",
            "display_name": "Potlee",
            "code": "POTLEE",
            "merchant_code": "POTLEE",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/Potlee.png",
              "small": "https://hdn-1.fynd.com/payment/Potlee.png"
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
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk",
        "payment_flow_data": "",
        "is_customer_validation_required": true,
        "cust_validation_url": "https://api.fyndx0.de/platform/payment/api/v1/validate-customer/?app_id=000000000000000000000001",
        "config": {
          "redirect": false,
          "final_payment_action_url": "https://api.fyndx0.de/platform/payment/v2/external/payments/confirm/charge/?app_id=000000000000000000000001"
        }
      },
      "potlee": {
        "data": {
          "gateway": {
            "route": "potlee",
            "entity": "api",
            "is_customer_validation_required": true,
            "cust_validation_url": "https://api.fyndx0.de/gringotts/api/v1/validate-customer/",
            "return_url": null
          },
          "payment_flow_data": {
            "is_customer_validation_required": true,
            "cust_validation_url": "https://api.fyndx0.de/platform/payment/v2/external/payments/callback/",
            "config": {
              "redirect": true,
              "final_payment_action_url": "https://api.fyndx0.de/platform/payment/v2/external/payments/callback/"
            },
            "return_url": null
          }
        },
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api",
        "payment_flow_data": {
          "return_url": null,
          "cust_validation_url": "https://api.fyndx0.de/gringotts/api/v1/validate-customer/",
          "is_customer_validation_required": true
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
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "juspay": {
        "data": {},
        "api_link": "https://sandbox.juspay.in/txns",
        "payment_flow": "api"
      },
      "razorpay": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "bqr_razorpay": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "fynd": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "jio": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "stripe": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "ccavenue": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "payumoney": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "rupifi": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "return_url": "",
        "payment_flow": "api",
        "cust_validation_url": "https://api.jiox0.de/gringotts/api/v1/validate-customer/",
        "payment_flow_data": "",
        "is_customer_validation_required": true
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
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      }
    }
  },
  "advance_payment": [
    {
      "name": "SPLIT",
      "display_priority": 22,
      "payment_mode_id": 34,
      "display_name": "Split Payment",
      "list": [
        {
          "aggregator_name": "Fynd",
          "name": "Split Payment",
          "display_name": "Split Payment",
          "code": "SPLIT",
          "logo_url": {
            "small": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/testz0/misc/default-assets/original/yDRf9iyLbH-PosLogo.png",
            "large": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/testz0/misc/default-assets/original/yDRf9iyLbH-PosLogo.png"
          },
          "merchant_code": "SPLIT"
        }
      ],
      "split": {
        "total_number_of_splits": 7,
        "splits_remaining": 7
      }
    },
    {
      "name": "ADVANCE",
      "display_priority": 22,
      "payment_mode_id": 35,
      "display_name": "Advance Payment",
      "list": [
        {
          "aggregator_name": "Fynd",
          "name": "Advance Payment",
          "display_name": "Advance Payment",
          "code": "ADVANCE",
          "logo_url": {
            "small": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/testz0/misc/default-assets/original/yDRf9iyLbH-PosLogo.png",
            "large": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/testz0/misc/default-assets/original/yDRf9iyLbH-PosLogo.png"
          },
          "merchant_code": "ADVANCE"
        }
      ],
      "advance": {
        "is_active": true,
        "time_unit": "DAYS",
        "description": "Pay Rs 3000 or more of the total amount",
        "display_name": "Pay using Advance Payment",
        "prepayment_type": "PERCENTAGE",
        "prepayment_value": 20,
        "cancellation_type": "AUTO",
        "refund_time_limit": 4,
        "all_prepayment_type": [
          "PERCENTAGE",
          "FIXED"
        ],
        "allow_custom_advance_amount": true
      }
    }
  ]
}
```
</details>









---


#### getPosPaymentModeRoutes
Get applicable payment options for Point-of-Sale (POS)




```swift
applicationClient.payment.getPosPaymentModeRoutes(amount: amount, cartId: cartId, pincode: pincode, checkoutMode: checkoutMode, refresh: refresh, cardReference: cardReference, orderType: orderType, userDetails: userDetails) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| amount | Int | yes | Payable amount. |   
| cartId | String? | no | Identifier of the cart. |   
| pincode | String | yes | The PIN Code of the destination address, e.g. 400059 |   
| checkoutMode | String? | no | Option to checkout for self or for others. |   
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
            "display_name": "Cash",
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
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "juspay": {
        "data": {},
        "api_link": "https://sandbox.juspay.in/txns",
        "payment_flow": "api"
      },
      "razorpay": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
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
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "fynd": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "jio": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "stripe": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "ccavenue": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "payumoney": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "rupifi": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
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


#### walletLinkInitate
Initiate linking of wallet




```swift
applicationClient.payment.walletLinkInitate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | WalletLinkRequestSchema | yes | Request body |


It will initiate linking of wallet for the aggregator.

*Returned Response:*




[WalletResponseSchema](#WalletResponseSchema)

OTP for Wallet Linking sent




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; wallet_link_failed</i></summary>

```json
{
  "summary": "OTP sent successfully",
  "value": {
    "success": true,
    "data": {
      "message": "OTP sent successfully",
      "link_token": "31a2f5a7-ee30-4cbb-8669-53071878f6d7"
    }
  }
}
```
</details>

</details>









---


#### linkWallet
OTP verification for linking of wallet




```swift
applicationClient.payment.linkWallet(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | WalletVerifyRequestSchema | yes | Request body |


It Verifies the linking of wallet using OTP

*Returned Response:*




[WalletResponseSchema](#WalletResponseSchema)

OTP Verification




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; wallet_verify_success</i></summary>

```json
{
  "summary": "OTP verification success",
  "value": {
    "success": true,
    "data": {
      "message": "OTP verified successfully",
      "balance": 234,
      "token": "100f8193-63b6-4f2b-a9bc-6830639583a6"
    }
  }
}
```
</details>

</details>









---


#### delinkWallet
Delink the wallet




```swift
applicationClient.payment.delinkWallet(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | WalletDelinkRequestSchema | yes | Request body |


It Removes already linked wallet

*Returned Response:*




[WalletResponseSchema](#WalletResponseSchema)

Wallet delinked successfully




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; wallet_delete_success</i></summary>

```json
{
  "summary": "Wallet delinked successfully",
  "value": {
    "success": true,
    "data": {
      "message": "Wallet delinked successfully"
    }
  }
}
```
</details>

</details>









---


#### getRupifiBannerDetails
Get CreditLine Offer




```swift
applicationClient.payment.getRupifiBannerDetails() { (response, error) in
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
applicationClient.payment.getEpaylaterBannerDetails() { (response, error) in
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
applicationClient.payment.resendOrCancelPayment(body: body) { (response, error) in
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


#### renderHTML
Convert base64 string to HTML form




```swift
applicationClient.payment.renderHTML(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | renderHTMLRequest | yes | Request body |


Use this API to decode base64 html form to plain HTML string.

*Returned Response:*




[renderHTMLResponse](#renderHTMLResponse)

Success and return HTML decoded text




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "html": "<html><body>Your HTML text</body></html>"
}
```
</details>









---


#### validateVPA
API to Validate UPI ID




```swift
applicationClient.payment.validateVPA(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ValidateVPARequest | yes | Request body |


API to Validate UPI ID

*Returned Response:*




[ValidateVPAResponse](#ValidateVPAResponse)

Success. Returns the status of payment. Check the example shown below or refer `ValidateVPAResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "upi_vpa": "success@razorpay",
    "status": "VALID",
    "is_valid": true,
    "customer_name": "Verified"
  }
}
```
</details>









---


#### cardDetails
API to get Card info from PG




```swift
applicationClient.payment.cardDetails(cardInfo: cardInfo, aggregator: aggregator) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| cardInfo | String | yes | Card first 6 digit IIN(prefix) number. |   
| aggregator | String? | no |  |  



API to get Card info from PG

*Returned Response:*




[CardDetailsResponse](#CardDetailsResponse)

Success. Returns the status of payment. Check the example shown below or refer `CardDetailsResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "country": "INDIA",
    "extended_card_type": "DEBIT",
    "card_brand": "MASTERCARD",
    "card_object": "tkn_1416af8beba94c96a3dqer196cd9fce7",
    "id": "529992",
    "card_sub_type": null,
    "type": "DEBIT",
    "bank": "",
    "is_domestic_card": true,
    "status": true,
    "user": "63b4fce75a2bca1dw0f08f3f9",
    "name_on_card": "Dummy",
    "bank_code": "HDFC",
    "card_token": "tkn_1416af8beba94c96a3dqer196cd9fce7",
    "card_exp_year": "2024",
    "card_exp_month": "12"
  }
}
```
</details>









---


#### getActiveRefundTransferModes
Lists the mode of refund




```swift
applicationClient.payment.getActiveRefundTransferModes() { (response, error) in
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
applicationClient.payment.enableOrDisableRefundTransferMode(body: body) { (response, error) in
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
applicationClient.payment.getUserBeneficiariesDetail(orderId: orderId) { (response, error) in
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
      "is_active": true,
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
applicationClient.payment.verifyIfscCode(ifscCode: ifscCode) { (response, error) in
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
applicationClient.payment.getOrderBeneficiariesDetail(orderId: orderId) { (response, error) in
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
      "is_active": true,
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
applicationClient.payment.verifyOtpAndAddBeneficiaryForBank(body: body) { (response, error) in
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
applicationClient.payment.addBeneficiaryDetails(body: body) { (response, error) in
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
applicationClient.payment.addRefundBankAccountUsingOTP(body: body) { (response, error) in
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
applicationClient.payment.verifyOtpAndAddBeneficiaryForWallet(body: body) { (response, error) in
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
  "is_verified_flag": "false",
  "request_id": "c3ca6c13d490c885a125d106b45697b7"
}
```
</details>









---


#### updateDefaultBeneficiary
Set a default beneficiary for a refund




```swift
applicationClient.payment.updateDefaultBeneficiary(body: body) { (response, error) in
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


#### getPaymentLink
Get payment link




```swift
applicationClient.payment.getPaymentLink(paymentLinkId: paymentLinkId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| paymentLinkId | String? | no |  |  



Use this API to get a payment link

*Returned Response:*




[GetPaymentLinkResponse](#GetPaymentLinkResponse)

Success. Check the example shown below




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Payment link",
  "status_code": 200,
  "payment_link_current_status": "resent",
  "payment_link_url": "https://api.fyndx0.de/service/application/payment/v1.0/payment/options/link/?id=4adb4451720a82ee69a3c1c4cc9ab442&refresh=false",
  "external_order_id": "FY62614DF9D5CF31D3D0",
  "amount": 21900,
  "merchant_name": "Fynd",
  "polling_timeout": 1800
}
```
</details>









---


#### createPaymentLink
Create payment link




```swift
applicationClient.payment.createPaymentLink(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreatePaymentLinkRequest | yes | Request body |


Use this API to create a payment link for the customer

*Returned Response:*




[CreatePaymentLinkResponse](#CreatePaymentLinkResponse)

Success. Check the example shown below




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Payment link created",
  "status_code": 200,
  "payment_link_url": "https://api.fyndx0.de/service/application/payment/v1.0/payment/options/link/?id=96b15ea2014a76c8d2774783e239ce26&refresh=false",
  "payment_link_id": "96b15ea2014a76c8d2774783e239ce26",
  "polling_timeout": 480
}
```
</details>









---


#### resendPaymentLink
Resend payment link




```swift
applicationClient.payment.resendPaymentLink(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CancelOrResendPaymentLinkRequest | yes | Request body |


Use this API to resend a payment link for the customer

*Returned Response:*




[ResendPaymentLinkResponse](#ResendPaymentLinkResponse)

Success. Check the example shown below




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Payment link resent",
  "status_code": 200,
  "polling_timeout": 480
}
```
</details>









---


#### cancelPaymentLink
Cancel payment link




```swift
applicationClient.payment.cancelPaymentLink(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CancelOrResendPaymentLinkRequest | yes | Request body |


Use this API to cancel a payment link for the customer

*Returned Response:*




[CancelPaymentLinkResponse](#CancelPaymentLinkResponse)

Success. Check the example shown below




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Payment link cancelled",
  "status_code": 200
}
```
</details>









---


#### getPaymentModeRoutesPaymentLink
Get applicable payment options for payment link




```swift
applicationClient.payment.getPaymentModeRoutesPaymentLink(paymentLinkId: paymentLinkId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| paymentLinkId | String | yes | Payment link id |  



Use this API to get all valid payment options for doing a payment through payment link

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
        "add_card_enabled": false,
        "is_pay_by_card_pl": true
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
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk",
        "payment_flow_data": "",
        "is_customer_validation_required": true,
        "cust_validation_url": "https://api.fyndx0.de/platform/payment/api/v1/validate-customer/?app_id=000000000000000000000001",
        "config": {
          "redirect": false,
          "final_payment_action_url": "https://api.fyndx0.de/platform/payment/v2/external/payments/confirm/charge/?app_id=000000000000000000000001"
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
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "juspay": {
        "data": {},
        "api_link": "https://sandbox.juspay.in/txns",
        "payment_flow": "api"
      },
      "razorpay": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "bqr_razorpay": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "fynd": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "jio": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "api"
      },
      "stripe": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "ccavenue": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "payumoney": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "payment_flow": "sdk"
      },
      "rupifi": {
        "data": {},
        "api_link": "https://api.fyndx0.de/platform/payment/v2/external/payments/request/?app_id=000000000000000000000001",
        "return_url": "",
        "payment_flow": "api",
        "cust_validation_url": "https://api.jiox0.de/gringotts/api/v1/validate-customer/",
        "payment_flow_data": "",
        "is_customer_validation_required": true,
        "config": {
          "redirect": false,
          "final_payment_action_url": "https://api.fyndx0.de/platform/payment/v2/external/payments/confirm/charge/?app_id=000000000000000000000001"
        }
      }
    }
  }
}
```
</details>









---


#### pollingPaymentLink
Used for polling if payment successful or not




```swift
applicationClient.payment.pollingPaymentLink(paymentLinkId: paymentLinkId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| paymentLinkId | String? | no |  |  



Use this API to poll if payment through payment was successful or not

*Returned Response:*




[PollingPaymentLinkResponse](#PollingPaymentLinkResponse)

Success. Check the example shown below




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "aggregator_name": "Fynd",
  "status": "complete",
  "redirect_url": "https://api.fyndx0.de/service/application/order/v1.0/orders/?success=true&order_id=FY62B3FF87016F24A4E6&aggregator_name=Fynd&cart_id=412&delivery_address_id=136&billing_address_id=136",
  "payment_link_id": "223d2a8df39a5dcdd8525498bee73199",
  "amount": 21900,
  "order_id": "FY62B3FF87016F24A4E6",
  "status_code": 200
}
```
</details>









---


#### createOrderHandlerPaymentLink
Create Order user




```swift
applicationClient.payment.createOrderHandlerPaymentLink(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateOrderUserRequest | yes | Request body |


Use this API to create a order and payment on aggregator side

*Returned Response:*




[CreateOrderUserResponse](#CreateOrderUserResponse)

Success. Check the example shown below




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "",
  "status_code": 200,
  "success": true,
  "data": {
    "amount": 2190000,
    "order_id": "order_JeaZ5ryKO01rno",
    "email": "abc@example.com",
    "contact": "9999999999",
    "currency": "INR",
    "customer_id": "cust_CZgcLVGsGP8BUQ",
    "callback_url": "https://api.fyndx0.com/service/webhooks/payment/v1.0/callback/link/?razorpay_order_id=order_JeaZ5ryKO01rno",
    "method": "upi",
    "aggregator": "Razorpay",
    "merchant_order_id": "FY629EDC0980B6A8C1EA"
  },
  "callback_url": "https://api.fyndx0.com/service/webhooks/payment/v1.0/callback/link/?razorpay_order_id=order_JeaZ5ryKO01rno",
  "payment_confirm_url": "https://api.fyndx0.com/service/webhooks/payment/v1.0/callback/link/?razorpay_order_id=order_JeaZ5ryKO01rno",
  "order_id": "FY629EDC0980B6A8C1EA"
}
```
</details>









---


#### initialisePaymentPaymentLink
Initialize a payment (server-to-server) for UPI and BharatQR




```swift
applicationClient.payment.initialisePaymentPaymentLink(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentInitializationRequest | yes | Request body |


Use this API to inititate payment using UPI, BharatQR, wherein the UPI requests are send to the app and QR code is displayed on the screen.

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


#### checkAndUpdatePaymentStatusPaymentLink
Performs continuous polling to check status of payment on the server




```swift
applicationClient.payment.checkAndUpdatePaymentStatusPaymentLink(body: body) { (response, error) in
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


#### customerCreditSummary
API to fetch the customer credit summary




```swift
applicationClient.payment.customerCreditSummary(aggregator: aggregator) { (response, error) in
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
    "days_overdue": 123,
    "total_due_amount": {
      "value": 12576,
      "formatted_value": "₹ 12,576.00",
      "currency": "INR"
    },
    "repayment_url": "https://example_url.com/example/"
  }
}
```
</details>









---


#### redirectToAggregator
API to get the redirect url to redirect the user to aggregator's page




```swift
applicationClient.payment.redirectToAggregator(source: source, aggregator: aggregator) { (response, error) in
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
    "redirect_url": "https://api-blackbox.epaylater.in//marketplace/customer/transactions/v2",
    "signup_url": "https://api-blackbox.epaylater.in//marketplace/customer/transactions/v2",
    "status": true
  }
}
```
</details>









---


#### checkCredit
API to fetch the customer credit summary




```swift
applicationClient.payment.checkCredit(aggregator: aggregator) { (response, error) in
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
applicationClient.payment.customerOnboard(body: body) { (response, error) in
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
    "status": true,
    "merchant_customer_ref_id": "64217ecb42a43c10c5bde1b4",
    "status_remark": "Your are one step away to avail credit of Amount(value=10000.0, formattedValue=₹ 10,000.00, currency=INR)",
    "is_eligible_for_txn": false,
    "activation_url": "https://urlshortener-sandbox.rupifi.com/BHs8Dsc"
  }
}
```
</details>









---


#### outstandingOrderDetails
API to fetch the outstanding order details




```swift
applicationClient.payment.outstandingOrderDetails(aggregator: aggregator) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregator | String? | no |  |  



Use this API to fetch the outstanding order details.

*Returned Response:*




[OutstandingOrderDetailsResponse](#OutstandingOrderDetailsResponse)

Success. Returns the status of API. Check the example shown below or refer `PaidOrderDetailsResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": [
    {
      "shipment_id": "16633226023641097847_1",
      "order_id": "FY633B1E5C74383C591A",
      "delivery_date": null,
      "due_date": "1665685799999",
      "status": "BillDue",
      "amount": 2190
    }
  ],
  "status_code": 200
}
```
</details>









---


#### paidOrderDetails
API to fetch the paid order details




```swift
applicationClient.payment.paidOrderDetails(aggregator: aggregator) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregator | String? | no |  |  



Use this API to fetch the paid order details.

*Returned Response:*




[PaidOrderDetailsResponse](#PaidOrderDetailsResponse)

Success. Returns the status of API. Check the example shown below or refer `PaidOrderDetailsResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": [
    {
      "shipment_id": "SSD-0000492872-22",
      "order_id": "FY62F279815B79F3A281",
      "due_date": "",
      "payment_date": "",
      "amount": 1116,
      "transaction_id": ""
    }
  ],
  "status_code": 200
}
```
</details>









---


#### createPaymentOrder
Create Order




```swift
applicationClient.payment.createPaymentOrder(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentOrderRequest | yes | Request body |


Use this API to create a order and payment on aggregator side

*Returned Response:*




[PaymentOrderResponse](#PaymentOrderResponse)

Success. Check the example shown below




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "",
  "success": true,
  "status_code": 200,
  "data": {
    "amount": 2190000,
    "order_id": "order_JeaZ5ryKO01rno",
    "email": "abc@example.com",
    "contact": "9999999999",
    "currency": "INR",
    "customer_id": "cust_CZgcLVGsGP8BUQ",
    "callback_url": "https://api.fyndx0.com/service/webhooks/payment/v1.0/callback/link/?razorpay_order_id=order_JeaZ5ryKO01rno",
    "method": "upi",
    "aggregator": "Razorpay",
    "merchant_order_id": "FY629EDC0980B6A8C1EA"
  },
  "callback_url": "https://api.fyndx0.com/service/webhooks/payment/v1.0/callback/link/?razorpay_order_id=order_JeaZ5ryKO01rno",
  "payment_confirm_url": "https://api.fyndx0.com/service/webhooks/payment/v1.0/callback/link/?razorpay_order_id=order_JeaZ5ryKO01rno",
  "order_id": "FY629EDC0980B6A8C1EA"
}
```
</details>









---




### Schemas

 
 
 #### [AggregatorConfigDetail](#AggregatorConfigDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sdk | Bool? |  yes  | SDK |
 | secret | String |  no  | Masked payment gateway api secret |
 | api | String? |  yes  | Payment gateway api endpoint |
 | pin | String? |  yes  | Masked pin |
 | configType | String |  no  | Fynd or self payment gateway |
 | merchantKey | String? |  yes  | Unique merchant key |
 | verifyApi | String? |  yes  | Payment gateway verify payment api endpoint |
 | key | String |  no  | Payment gateway api key |
 | userId | String? |  yes  | Registered User id |
 | merchantId | String? |  yes  | Unique merchant id |

---


 
 
 #### [AggregatorsConfigDetailResponse](#AggregatorsConfigDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | razorpay | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | juspay | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | simpl | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | payumoney | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | rupifi | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | mswipe | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | stripe | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | ccavenue | [AggregatorConfigDetail](#AggregatorConfigDetail)? |  yes  |  |
 | env | String |  no  | Environment i.e Live or Test |

---


 
 
 #### [ErrorCodeAndDescription](#ErrorCodeAndDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  | Error descrption code. |
 | description | String |  no  | Error human understandable description. |

---


 
 
 #### [HttpErrorCodeAndResponse](#HttpErrorCodeAndResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [ErrorCodeAndDescription](#ErrorCodeAndDescription)? |  yes  |  |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [AttachCardRequest](#AttachCardRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | nickname | String? |  yes  |  |
 | refresh | Bool? |  yes  | Refresh cache flag. |
 | cardId | String |  no  | Card token of payment gateway. |
 | nameOnCard | String? |  yes  |  |

---


 
 
 #### [AttachCardsResponse](#AttachCardsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any] |  no  | List of cards of customer. |
 | success | Bool |  no  | Response is successful or not. |
 | message | String? |  yes  | Human readable message. |

---


 
 
 #### [CardPaymentGateway](#CardPaymentGateway)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | api | String? |  yes  | Payment gateway CARD api endpoint |
 | aggregator | String |  no  | Payment gateway name. |
 | customerId | String? |  yes  | Payment gateway customer id. |

---


 
 
 #### [ActiveCardPaymentGatewayResponse](#ActiveCardPaymentGatewayResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cards | [CardPaymentGateway](#CardPaymentGateway) |  no  |  |
 | success | Bool |  no  | Response is successful or not. |
 | message | String |  no  | Human readable message. |

---


 
 
 #### [Card](#Card)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardNumber | String? |  yes  | card_number |
 | cardName | String? |  yes  | card_name |
 | cardType | String? |  yes  | card_type |
 | cardBrandImage | String? |  yes  | card_brand_image |
 | cardReference | String? |  yes  | card_reference |
 | cardIssuer | String? |  yes  | card_issuer |
 | cardBrand | String? |  yes  | card_brand |
 | expired | Bool? |  yes  | expired |
 | compliantWithTokenisationGuidelines | Bool? |  yes  | If card is tokenised or not |
 | cardIsin | String? |  yes  | card_isin |
 | expYear | Int? |  yes  | exp_year |
 | nickname | String? |  yes  | nickname |
 | aggregatorName | String |  no  | aggregator_name |
 | cardFingerprint | String? |  yes  | card_fingerprint |
 | cardToken | String? |  yes  | card_token |
 | expMonth | Int? |  yes  | exp_month |
 | cardId | String? |  yes  | card_id |

---


 
 
 #### [ListCardsResponse](#ListCardsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[Card](#Card)]? |  yes  | List of cards of customer. |
 | success | Bool |  no  | Response is successful or not. |
 | message | String |  no  | Human readable message. |

---


 
 
 #### [DeletehCardRequest](#DeletehCardRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardId | String |  no  | Card token of payment gateway. |

---


 
 
 #### [DeleteCardsResponse](#DeleteCardsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Response is successful or not. |
 | message | String? |  yes  | Human readable message. |

---


 
 
 #### [ValidateCustomerRequest](#ValidateCustomerRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String |  no  | Payment gateway name in camel case i.e Simpl, Rupifi |
 | transactionAmountInPaise | Int |  no  | Payable amount in paise |
 | phoneNumber | String |  no  | User mobile number without country code. |
 | billingAddress | [String: Any]? |  yes  | Extra meta fields. |
 | orderItems | [[String: Any]]? |  yes  | Extra meta fields. |
 | payload | String? |  yes  | Hashed payload string. |
 | merchantParams | [String: Any]? |  yes  | Extra meta fields. |
 | deliveryAddress | [String: Any]? |  yes  | Extra meta fields. |

---


 
 
 #### [ValidateCustomerResponse](#ValidateCustomerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any] |  no  | Payment gateway response data |
 | success | Bool |  no  | Response is successful or not |
 | message | String |  no  | Error or success message. |

---


 
 
 #### [ChargeCustomerRequest](#ChargeCustomerRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool? |  yes  | Already Verified flag from payment gateway i.e Mswipe |
 | aggregator | String |  no  | Payment gateway name i.e Simpl, Mswipe |
 | orderId | String |  no  | Unique order id. |
 | transactionToken | String? |  yes  | Transaction token of payment gateway. |
 | amount | Int |  no  | Chargable amount of order. |

---


 
 
 #### [ChargeCustomerResponse](#ChargeCustomerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  | Status of charged payment. |
 | cartId | String? |  yes  | Cart id of customer |
 | success | Bool |  no  | Response is successful or not. |
 | aggregator | String |  no  | Payment gateway name i.e Simpl, Mswipe |
 | message | String |  no  | Human readable message. |
 | orderId | String |  no  | Unique order id. |
 | deliveryAddressId | String? |  yes  | Delivery adddress id of customer |

---


 
 
 #### [PaymentInitializationRequest](#PaymentInitializationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | razorpayPaymentId | String? |  yes  | Payment gateway payment id |
 | method | String |  no  | Payment method |
 | deviceId | String? |  yes  | EDC machine Unique Identifier |
 | aggregator | String |  no  | Payment gateway name |
 | customerId | String |  no  | Payment gateway customer id. |
 | contact | String |  no  | Customer valid mobile number |
 | merchantOrderId | String |  no  | Unique fynd order id |
 | vpa | String? |  yes  | Customer vpa address |
 | orderId | String |  no  | Payment gateway order id |
 | currency | String |  no  | Currency code. |
 | timeout | Int? |  yes  | Payment polling timeout if not recieved response |
 | amount | Int |  no  | Payable amount. |
 | email | String |  no  | Customer valid email |

---


 
 
 #### [PaymentInitializationResponse](#PaymentInitializationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  | Status of payment. |
 | razorpayPaymentId | String? |  yes  | Payment  id. |
 | aggregatorOrderId | String? |  yes  | Payment order id |
 | method | String |  no  | Payment method |
 | success | Bool |  no  | Response is successful or not. |
 | upiPollUrl | String? |  yes  | UPI poll url. |
 | virtualId | String? |  yes  | Payment virtual address. |
 | deviceId | String? |  yes  | EDC machine Unique Identifier |
 | pollingUrl | String |  no  | Polling url. |
 | aggregator | String |  no  | Payment gateway name |
 | merchantOrderId | String |  no  | order id |
 | customerId | String? |  yes  | Payment gateway customer id. |
 | vpa | String? |  yes  | Customer vpa address |
 | currency | String? |  yes  | Currency code. |
 | timeout | Int? |  yes  | timeout. |
 | amount | Int? |  yes  | Payable amount. |
 | bqrImage | String? |  yes  | Bharath qr image url. |

---


 
 
 #### [PaymentStatusUpdateRequest](#PaymentStatusUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  | Status of payment. |
 | merchantTransactionId | String |  no  | Unique fynd transaction id |
 | method | String |  no  | Payment method |
 | deviceId | String? |  yes  | EDC machine Unique Identifier |
 | aggregator | String |  no  | Payment gateway name |
 | customerId | String |  no  | Payment gateway customer id. |
 | contact | String |  no  | Customer valid mobile number |
 | merchantOrderId | String |  no  | Unique fynd order id |
 | vpa | String? |  yes  | Customer vpa address |
 | orderId | String |  no  | Payment gateway order id |
 | currency | String |  no  | Currency code. |
 | amount | Int |  no  | Payable amount. |
 | email | String |  no  | Customer valid email |

---


 
 
 #### [PaymentStatusUpdateResponse](#PaymentStatusUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  | Payment status |
 | success | Bool? |  yes  | Response is successful or not |
 | retry | Bool |  no  | Response is successful or not. |
 | redirectUrl | String? |  yes  | Redirect url |
 | aggregatorName | String |  no  | Payment gateway name |

---


 
 
 #### [IntentAppErrorList](#IntentAppErrorList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  | code |
 | packageName | String? |  yes  | package_name |

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
 | code | String? |  yes  | code |
 | packageName | String? |  yes  | package_name |
 | logos | [PaymentModeLogo](#PaymentModeLogo)? |  yes  |  |
 | displayName | String? |  yes  | display_name |

---


 
 
 #### [PaymentModeList](#PaymentModeList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardNumber | String? |  yes  | card_number |
 | merchantCode | String? |  yes  | merchant code |
 | cardReference | String? |  yes  | card_reference |
 | cardIssuer | String? |  yes  | card_issuer |
 | compliantWithTokenisationGuidelines | Bool? |  yes  | If card is tokenised or not |
 | code | String? |  yes  | code |
 | codLimit | Double? |  yes  | cod limit |
 | intentFlow | Bool? |  yes  | intent_flow |
 | fyndVpa | String? |  yes  | fynd_vpa |
 | intentAppErrorDictList | [[IntentAppErrorList](#IntentAppErrorList)]? |  yes  | intent_app_error_dict_list |
 | aggregatorName | String |  no  | aggregator_name |
 | cardFingerprint | String? |  yes  | card_fingerprint |
 | intentAppErrorList | [String]? |  yes  | intent_app_error_list |
 | intentApp | [[IntentApp](#IntentApp)]? |  yes  | intent_app |
 | expired | Bool? |  yes  | expired |
 | retryCount | Int? |  yes  | retry_count |
 | expYear | Int? |  yes  | exp_year |
 | expMonth | Int? |  yes  | exp_month |
 | cardId | String? |  yes  | card_id |
 | remainingLimit | Double? |  yes  | Remaining limit |
 | displayPriority | Int? |  yes  | Dispaly Priority |
 | cardBrand | String? |  yes  | card_brand |
 | codLimitPerOrder | Double? |  yes  | Cod limit per order |
 | logoUrl | [PaymentModeLogo](#PaymentModeLogo)? |  yes  |  |
 | nickname | String? |  yes  | nickname |
 | cardName | String? |  yes  | card_name |
 | cardType | String? |  yes  | card_type |
 | cardBrandImage | String? |  yes  | card_brand_image |
 | displayName | String? |  yes  | display name |
 | cardIsin | String? |  yes  | card_isin |
 | timeout | Int? |  yes  | timeout |
 | cardToken | String? |  yes  | card_token |
 | name | String? |  yes  | name |
 | meta | [String: Any]? |  yes  | Payment methods meta |

---


 
 
 #### [RootPaymentMode](#RootPaymentMode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPayByCardPl | Bool? |  yes  | This flag will be true in case of Payment link payment through card |
 | addCardEnabled | Bool? |  yes  | Annonymous card flag |
 | displayPriority | Int |  no  | Dispaly Priority |
 | displayName | String |  no  | Payment mode display name |
 | list | [[PaymentModeList](#PaymentModeList)]? |  yes  | Payment mode |
 | saveCard | Bool? |  yes  | Card save or not |
 | aggregatorName | String? |  yes  | Dispaly Priority |
 | name | String |  no  | Payment mode name |
 | anonymousEnable | Bool? |  yes  | Annonymous card flag |

---


 
 
 #### [AggregatorRoute](#AggregatorRoute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any]? |  yes  | Data |
 | paymentFlowData | String? |  yes  | payment_flow_data |
 | paymentFlow | String? |  yes  | payment_flow |
 | apiLink | String? |  yes  | api_link |

---


 
 
 #### [PaymentFlow](#PaymentFlow)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bqrRazorpay | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | fynd | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | epaylater | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | razorpay | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | juspay | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | ajiodhan | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | simpl | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | rupifi | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | mswipe | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | stripe | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | ccavenue | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | payubiz | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | jiopay | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |
 | upiRazorpay | [AggregatorRoute](#AggregatorRoute)? |  yes  |  |

---


 
 
 #### [PaymentOptionAndFlow](#PaymentOptionAndFlow)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOption | [RootPaymentMode](#RootPaymentMode) |  no  |  |
 | paymentFlows | [PaymentFlow](#PaymentFlow) |  no  |  |

---


 
 
 #### [AdvanceObject](#AdvanceObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  | Is Advance Payment active |
 | amount | Double? |  yes  | Amount for Payment Breakdown |
 | timeUnit | String? |  yes  | Time unit for refunds |
 | description | String? |  yes  | The description for Advance Payment (user configured) |
 | displayName | String? |  yes  | The display name for Advance payment |
 | prepaymentType | String? |  yes  | Type of prepayment value |
 | prepaymentValue | Double? |  yes  | Value for prepayment in advance payment |
 | cancellationType | String? |  yes  | Type of cancellation |
 | refundTimeLimit | Double? |  yes  | time limit for processing refund |
 | allPrepaymentType | [String]? |  yes  | All available types of prepayment |
 | allowCustomAdvanceAmount | Bool? |  yes  | Is custom advance amount allowed? |

---


 
 
 #### [SplitObject](#SplitObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalNumberOfSplits | Double? |  yes  | Maximum amount of splits allowed |
 | splitsRemaining | Double? |  yes  | Number of splits remaining |
 | amountRemaining | Double? |  yes  | Amount pending to be paid |

---


 
 
 #### [AdvancePaymentObject](#AdvancePaymentObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Name of Advance Payment Mode |
 | displayPriority | Double? |  yes  | Display Priority for Payment Option |
 | paymentModeId | Double? |  yes  | Payment Mode ID for Advance Payment Option |
 | displayName | String? |  yes  | Display name for Advance Payment Mode |
 | list | [[PaymentModeList](#PaymentModeList)]? |  yes  | Payment mode |
 | split | [SplitObject](#SplitObject)? |  yes  |  |
 | advance | [AdvanceObject](#AdvanceObject)? |  yes  |  |

---


 
 
 #### [PaymentModeRouteResponse](#PaymentModeRouteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOptions | [PaymentOptionAndFlow](#PaymentOptionAndFlow) |  no  |  |
 | success | Bool |  no  | Response is successful or not |
 | paymentBreakup | [String: Any]? |  yes  | Payment Breakup for advance payment |
 | advancePayment | [[AdvancePaymentObject](#AdvancePaymentObject)]? |  yes  | Advance Payment Array |

---


 
 
 #### [WalletLinkRequestSchema](#WalletLinkRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String |  no  | Aggregator Name |
 | mobile | String |  no  | Mobile Number for Wallet |
 | walletCode | String |  no  | Wallet Code |

---


 
 
 #### [WalletVerifyRequestSchema](#WalletVerifyRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String |  no  | Aggregator Name |
 | linkToken | String |  no  | Token for wallet linking |
 | otp | Int |  no  | OTP received for wallet linking |

---


 
 
 #### [WalletDelinkRequestSchema](#WalletDelinkRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String |  no  | Aggregator Name |
 | walletCode | String |  no  | Wallet Code |

---


 
 
 #### [WalletResponseSchema](#WalletResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any] |  no  | Response received from aggregator |
 | success | Bool |  no  | Success/Failure of the API call |

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
 | data | [RupifiBannerData](#RupifiBannerData) |  no  |  |
 | success | Bool |  no  | Successful or not. |

---


 
 
 #### [EpaylaterBannerData](#EpaylaterBannerData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  | Epaylater KYC status |
 | message | String? |  yes  | ePayLater message |
 | display | Bool |  no  | Need to display banner or not |

---


 
 
 #### [EpaylaterBannerResponse](#EpaylaterBannerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [EpaylaterBannerData](#EpaylaterBannerData) |  no  |  |
 | success | Bool |  no  | Successful or not. |

---


 
 
 #### [ResendOrCancelPaymentRequest](#ResendOrCancelPaymentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  | Unique order id |
 | deviceId | String? |  yes  | EDC machine Unique Identifier |
 | requestType | String |  no  | Either resend or cancel |

---


 
 
 #### [LinkStatus](#LinkStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool |  no  | Link action status |
 | message | String |  no  | Message |

---


 
 
 #### [ResendOrCancelPaymentResponse](#ResendOrCancelPaymentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [LinkStatus](#LinkStatus) |  no  |  |
 | success | Bool |  no  | Response is successful or not. |

---


 
 
 #### [renderHTMLRequest](#renderHTMLRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returntype | String? |  yes  | Return Type of API |
 | base64Html | String |  no  | base64 encoded html string |

---


 
 
 #### [renderHTMLResponse](#renderHTMLResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | html | String |  no  | HTML string |

---


 
 
 #### [ValidateVPARequest](#ValidateVPARequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | upiVpa | String |  no  | UPI ID |

---


 
 
 #### [ValidateUPI](#ValidateUPI)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  | VALID or INVALID |
 | customerName | String |  no  | Customer Bank |
 | isValid | Bool |  no  | boolean is true or false. |
 | upiVpa | String |  no  | UPI ID |

---


 
 
 #### [ValidateVPAResponse](#ValidateVPAResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [ValidateUPI](#ValidateUPI) |  no  |  |
 | success | Bool |  no  | Response is successful or not. |

---


 
 
 #### [CardDetails](#CardDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool |  no  | Status |
 | country | String |  no  | Country Name |
 | bankCode | String |  no  | Bank Code |
 | id | String |  no  | id |
 | cardExpYear | String? |  yes  | Card Expire Year |
 | cardBrand | String |  no  | Card brand like VISA/RUPAY |
 | type | String |  no  | Card Type Credit/Debit |
 | cardSubType | String |  no  | Card Sub type |
 | isDomesticCard | Bool |  no  | Is card domestic or international |
 | nameOnCard | String? |  yes  | Name on Card |
 | cardExpMonth | String? |  yes  | Card Expire Month |
 | extendedCardType | String |  no  | Extended Card Type |
 | cardObject | String |  no  | Card bin or Card refrence |
 | cardToken | String? |  yes  | Card Token |
 | user | String? |  yes  | Customer/User ID |
 | bank | String |  no  | bank name |

---


 
 
 #### [CardDetailsResponse](#CardDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CardDetails](#CardDetails) |  no  |  |
 | success | Bool |  no  | Response is successful or not. |

---


 
 
 #### [TransferItemsDetails](#TransferItemsDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |   |
 | displayName | String? |  yes  | Beneficiary Display Name |
 | logoLarge | String |  no  | Beneficiary large Logo |
 | logoSmall | String |  no  | Beneficiary small Logo |
 | name | String |  no  |  Beneficiary Name |

---


 
 
 #### [TransferModeDetails](#TransferModeDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[TransferItemsDetails](#TransferItemsDetails)]? |  yes  | Beneficiary Mode Items |
 | displayName | String |  no  | Beneficiary Mode Name |

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
 | modifiedOn | String |  no  | MOdification Date of Beneficiary |
 | accountNo | String |  no  | Account Number |
 | mobile | String? |  yes  | MObile no of User |
 | bankName | String |  no  | Bank Name Of Account |
 | ifscCode | String |  no  | Ifsc Code Of Account |
 | isActive | Bool |  no  | Boolean Flag whether Beneficiary set or not |
 | beneficiaryId | String |  no  | Benenficiary Id |
 | accountHolder | String |  no  | Account Holder Name |
 | email | String |  no  | EMail of User |
 | delightsUserName | String? |  yes  | User Id Who filled the Beneficiary  |
 | id | Int |  no  |   |
 | transferMode | String |  no  | Transfer Mode Of Account |
 | branchName | String? |  yes  | Branch Name Of Account |
 | createdOn | String |  no  | Creation Date of Beneficiary |
 | subtitle | String |  no  | SHort Title Of Account |
 | comment | String? |  yes  | Remarks |
 | address | String |  no  | Address of User |
 | title | String |  no  | Title Of Account |
 | displayName | String |  no  | Display Name Of Account |

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
 | code | String |  no  | Bad Request Data |
 | description | String |  no  | Not Found |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [IfscCodeResponse](#IfscCodeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | branchName | String |  no  | Branch Name Of Account |
 | success | Bool? |  yes  | Response is successful or not |
 | bankName | String |  no  | Bank Name Of Account |

---


 
 
 #### [ErrorCodeDescription](#ErrorCodeDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  | Error descrption code. |
 | description | String |  no  | Error human understandable description. |
 | success | Bool |  no  | Response is successful or not |

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
 | success | Bool? |  yes  | Response is successful or not |
 | message | String |  no  | Aggregator Response of beneficicary  |

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
 | accountNo | String |  no  | Account NUmber of the Account Holder |
 | address | String? |  yes  | Address of the User |
 | mobile | String |  no  | Moblie Number of the User |
 | bankName | String |  no  | Bank Name of the Account |
 | comment | String? |  yes  | Remarks added by The user |
 | ifscCode | String |  no  | Ifsc Code of the Account |
 | vpa | String? |  yes  |  |
 | branchName | String |  no  | Branch Name of the Account |
 | accountHolder | String |  no  | Name of the Account Holder |
 | wallet | String? |  yes  |  |
 | email | String |  no  | Email of the Account Holder |

---


 
 
 #### [AddBeneficiaryDetailsRequest](#AddBeneficiaryDetailsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | delights | Bool |  no  | True if  beneficiary to be added by delights or False if by User |
 | shipmentId | String |  no  | Shipment Id of the respective Merchant Order Id |
 | details | [BeneficiaryModeDetails](#BeneficiaryModeDetails) |  no  |  |
 | otp | String? |  yes  |  |
 | orderId | String |  no  | Merchant Order Id |
 | transferMode | String |  no  | Transfer Mode of the Beneficiary to be added |
 | requestId | String? |  yes  |  |

---


 
 
 #### [RefundAccountResponse](#RefundAccountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isVerifiedFlag | Bool? |  yes  |  |
 | data | [String: Any]? |  yes  | Refund account data. |
 | success | Bool |  no  | Success or failure flag. |
 | message | String |  no  | Response message |

---


 
 
 #### [BankDetailsForOTP](#BankDetailsForOTP)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accountNo | String |  no  |  |
 | bankName | String |  no  |  |
 | ifscCode | String |  no  |  |
 | branchName | String |  no  |  |
 | accountHolder | String |  no  |  |

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
 | countryCode | String |  no  | Country Code of the Mobile Number |
 | mobile | String |  no  | Wallet Moblie Number of the User |

---


 
 
 #### [WalletOtpResponse](#WalletOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String |  no  | request id  |
 | isVerifiedFlag | String |  no  | Boolean Flag whether OTP Validation is already done or not |
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


 
 
 #### [GetPaymentLinkResponse](#GetPaymentLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  | HTTP status code |
 | paymentLinkCurrentStatus | String? |  yes  | Status of payment link |
 | success | Bool |  no  | Successful or failure |
 | pollingTimeout | Int? |  yes  | Polling request timeout |
 | paymentLinkUrl | String? |  yes  | Url of payment link |
 | externalOrderId | String? |  yes  | Merchant order id |
 | message | String |  no  | Message |
 | merchantName | String? |  yes  | Merchant name |
 | amount | Double? |  yes  | Total value of order |

---


 
 
 #### [ErrorDescription](#ErrorDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentTransactionId | String? |  yes  | Payment transaction id |
 | expired | Bool? |  yes  | Payment link expired or not |
 | merchantOrderId | String? |  yes  | Order id |
 | merchantName | String? |  yes  | Name of merchant that created payment link |
 | msg | String? |  yes  | Message |
 | cancelled | Bool? |  yes  | Payment link is cancelled or not |
 | amount | Double? |  yes  | Amount paid |
 | invalidId | Bool? |  yes  | Payment link id is valid or not |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  | HTTP status code |
 | error | [ErrorDescription](#ErrorDescription)? |  yes  |  |
 | message | String |  no  | Message |
 | success | Bool |  no  | Successful or failure |

---


 
 
 #### [CreatePaymentLinkMeta](#CreatePaymentLinkMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cartId | String |  no  |  |
 | checkoutMode | String |  no  |  |
 | assignCardId | String? |  yes  |  |
 | amount | String |  no  |  |

---


 
 
 #### [CreatePaymentLinkRequest](#CreatePaymentLinkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  | Merchant order id |
 | externalOrderId | String |  no  | Merchant order id |
 | mobileNumber | String |  no  | Mobile number to which the payment link is to be sent |
 | amount | Double |  no  | Total value of order |
 | meta | [CreatePaymentLinkMeta](#CreatePaymentLinkMeta) |  no  |  |
 | email | String |  no  | Email to which the payment link is to be sent |

---


 
 
 #### [CreatePaymentLinkResponse](#CreatePaymentLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  | HTTP status code |
 | success | Bool |  no  | Successful or failure |
 | pollingTimeout | Int? |  yes  | Polling request timeout |
 | paymentLinkUrl | String? |  yes  | Url of payment link |
 | message | String |  no  | Message |
 | paymentLinkId | String? |  yes  | Unique id of payment link |

---


 
 
 #### [CancelOrResendPaymentLinkRequest](#CancelOrResendPaymentLinkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentLinkId | String |  no  | Unique id of payment link |

---


 
 
 #### [ResendPaymentLinkResponse](#ResendPaymentLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  | HTTP status code |
 | pollingTimeout | Int? |  yes  | Polling request timeout |
 | success | Bool |  no  | Successful or failure |
 | message | String |  no  | Message |

---


 
 
 #### [CancelPaymentLinkResponse](#CancelPaymentLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  | HTTP status code |
 | success | Bool |  no  | Successful or failure |
 | message | String |  no  | Message |

---


 
 
 #### [PollingPaymentLinkResponse](#PollingPaymentLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  | Status of payment link |
 | statusCode | Int? |  yes  | HTTP status code |
 | success | Bool? |  yes  | Successful or failure |
 | httpStatus | Int? |  yes  | HTTP status code |
 | message | String? |  yes  | Message |
 | orderId | String? |  yes  | Fynd order id |
 | redirectUrl | String? |  yes  | Url to redirect to |
 | paymentLinkId | String? |  yes  | Payment link id |
 | aggregatorName | String? |  yes  | Aggregator name |
 | amount | Double? |  yes  | Amount |

---


 
 
 #### [PaymentMethodsMeta](#PaymentMethodsMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | merchantCode | String |  no  | Merchant code |
 | paymentGateway | String |  no  | Payment gateway name |
 | paymentIdentifier | String |  no  | Payment identifier |

---


 
 
 #### [CreateOrderUserPaymentMethods](#CreateOrderUserPaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  | Payment mode name |
 | mode | String |  no  | Payment mode |
 | meta | [PaymentMethodsMeta](#PaymentMethodsMeta) |  no  |  |

---


 
 
 #### [CreateOrderUserRequest](#CreateOrderUserRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failureCallbackUrl | String |  no  | Failure page url |
 | currency | String |  no  | Currency |
 | paymentLinkId | String |  no  | Unique id of payment link |
 | paymentMethods | [CreateOrderUserPaymentMethods](#CreateOrderUserPaymentMethods) |  no  |  |
 | successCallbackUrl | String |  no  | Success  page url |
 | meta | [String: Any]? |  yes  | Meta |

---


 
 
 #### [CreateOrderUserData](#CreateOrderUserData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | method | String? |  yes  | Method |
 | aggregator | String? |  yes  | Aggregator name |
 | customerId | String? |  yes  | Aggregator customer id |
 | contact | String? |  yes  | Mobile number |
 | merchantOrderId | String? |  yes  | Merchant order id |
 | orderId | String? |  yes  | Aggregator order id |
 | currency | String? |  yes  | Currency |
 | callbackUrl | String? |  yes  | Callback url for aggregator |
 | amount | Double? |  yes  | Amount |
 | email | String? |  yes  | Email |

---


 
 
 #### [CreateOrderUserResponse](#CreateOrderUserResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  | HTTP status code |
 | success | Bool |  no  | Successful or failure |
 | data | [CreateOrderUserData](#CreateOrderUserData)? |  yes  |  |
 | message | String |  no  | Message |
 | orderId | String? |  yes  | Merchant order id |
 | callbackUrl | String? |  yes  | Callback url for aggregator |
 | paymentConfirmUrl | String? |  yes  | Payment confirm url for aggregator |

---


 
 
 #### [BalanceDetails](#BalanceDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | formattedValue | String? |  yes  | Formated Amount with currency symbol |
 | currency | String? |  yes  | Currency Code |
 | value | Double? |  yes  | Payment amount |

---


 
 
 #### [CreditSummary](#CreditSummary)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalDueAmount | [BalanceDetails](#BalanceDetails)? |  yes  |  |
 | status | String? |  yes  | Customer Credit status |
 | limit | [BalanceDetails](#BalanceDetails)? |  yes  |  |
 | creditLineId | String? |  yes  | ID at Credit aggregator's end |
 | amountAvailable | [BalanceDetails](#BalanceDetails)? |  yes  |  |
 | dueAmount | [BalanceDetails](#BalanceDetails)? |  yes  |  |
 | dueDate | String? |  yes  | Due date for repayment |
 | balance | [BalanceDetails](#BalanceDetails)? |  yes  |  |
 | statusMessage | String? |  yes  | message to customer |
 | repaymentUrl | String? |  yes  | Url for repayment |
 | soaUrl | String? |  yes  | Statement of accounts. Show payment history. |
 | isEligibleForTxn | Bool? |  yes  | Eligiblity flag to complete transaction |
 | merchantCustomerRefId | String? |  yes  | Unique aggregator customer id |
 | buyerStatus | String? |  yes  | Status from Credit aggregator's end |
 | activationUrl | String? |  yes  | Url for activation |

---


 
 
 #### [CustomerCreditSummaryResponse](#CustomerCreditSummaryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CreditSummary](#CreditSummary)? |  yes  |  |
 | success | Bool |  no  | Payment confirmation updated or not. |

---


 
 
 #### [RedirectURL](#RedirectURL)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool |  no  | Aggregator's Operation is successful or not. |
 | signupUrl | String |  no  | URL to which the user may redirect. |

---


 
 
 #### [RedirectToAggregatorResponse](#RedirectToAggregatorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [RedirectURL](#RedirectURL) |  no  |  |
 | success | Bool |  no  | Status updated or not. |

---


 
 
 #### [CreditDetail](#CreditDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool |  no  | Operation is successful or not. |
 | isRegistered | Bool |  no  | User is registered with aggregator or not. |
 | signupUrl | String |  no  | URL to which the user may redirect. |

---


 
 
 #### [CheckCreditResponse](#CheckCreditResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CreditDetail](#CreditDetail) |  no  |  |
 | success | Bool |  no  | Operation is successful or not. |

---


 
 
 #### [KYCAddress](#KYCAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | city | String |  no  | City |
 | addressline2 | String? |  yes  | Address Line 2 |
 | state | String |  no  | State |
 | ownershipType | String? |  yes  | Address Owner Type |
 | pincode | String |  no  | Pincode |
 | landMark | String? |  yes  | Land Mark |
 | addressline1 | String |  no  | Address Line 1 |

---


 
 
 #### [UserPersonalInfoInDetails](#UserPersonalInfoInDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  | First Name |
 | voterId | String? |  yes  | Voter ID Number |
 | gender | String? |  yes  | Gender |
 | dob | String |  no  | DOB |
 | passport | String? |  yes  | Passport |
 | fathersName | String? |  yes  | Father's Name |
 | mothersName | String? |  yes  | Mother's Name |
 | middleName | String? |  yes  | middle Name |
 | lastName | String? |  yes  | Last Name |
 | pan | String? |  yes  | Pan Number |
 | drivingLicense | String? |  yes  | Driver License |
 | emailVerified | Bool |  no  | Is Email Verified or not |
 | addressAsPerId | [KYCAddress](#KYCAddress) |  no  |  |
 | mobileVerified | Bool |  no  | Is Mobile Verified or not |
 | phone | String |  no  | Email |
 | email | String? |  yes  | Email |

---


 
 
 #### [MarketplaceInfo](#MarketplaceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dateOfJoining | String? |  yes  | Date of joining |
 | name | String |  no  | Name of store |
 | membershipId | String |  no  | merchant id |

---


 
 
 #### [BusinessDetails](#BusinessDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | businessOwnershipType | String? |  yes  | business Ownershipp type(e.g Rented) |
 | vintage | String? |  yes  | Vintage |
 | gstin | String? |  yes  | GSTIN Number |
 | pan | String? |  yes  | Pan Number |
 | entityType | String? |  yes  | Busineess Entity Type |
 | shopAndEstablishment | [String: Any]? |  yes  | Shop Establishment |
 | fssai | String? |  yes  | FDA License Number |
 | fda | String? |  yes  | Driver License |
 | businessType | String? |  yes  | Business Type |
 | name | String? |  yes  | Business Name |
 | address | [KYCAddress](#KYCAddress)? |  yes  |  |

---


 
 
 #### [DeviceDetails](#DeviceDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identificationNumber | String? |  yes  | IP |
 | identifierType | String? |  yes  | Static value = ip |
 | deviceModel | String? |  yes  | Device Model |
 | deviceMake | String? |  yes  | Device maker |
 | deviceType | String? |  yes  | Device Type(E.g. Mobile) |
 | os | String? |  yes  | OS Name |
 | osVersion | String? |  yes  | OS Version |

---


 
 
 #### [CustomerOnboardingRequest](#CustomerOnboardingRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | personalInfo | [UserPersonalInfoInDetails](#UserPersonalInfoInDetails)? |  yes  |  |
 | mcc | String? |  yes  | Mcc |
 | aggregator | String |  no  | Aggregator Name |
 | marketplaceInfo | [MarketplaceInfo](#MarketplaceInfo)? |  yes  |  |
 | source | String |  no  | callbackURL |
 | businessInfo | [BusinessDetails](#BusinessDetails)? |  yes  |  |
 | device | [DeviceDetails](#DeviceDetails)? |  yes  |  |

---


 
 
 #### [OnboardSummary](#OnboardSummary)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | redirectUrl | String? |  yes  | URL to which the user may redirect. |
 | session | [String: Any]? |  yes  | User Session |
 | status | Bool |  no  | Transaction status |
 | statusRemark | String? |  yes  | Decription of status |
 | isEligibleForTxn | Bool? |  yes  | Whether is eligible for transaction |
 | merchantCustomerRefId | String? |  yes  | Rupifi customer ID |
 | activationUrl | String? |  yes  | Url for activation |

---


 
 
 #### [CustomerOnboardingResponse](#CustomerOnboardingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [OnboardSummary](#OnboardSummary) |  no  |  |
 | success | Bool |  no  | Status updated or not. |

---


 
 
 #### [OutstandingOrderDetailsResponse](#OutstandingOrderDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  | HTTP Status code |
 | data | [[String: Any]]? |  yes  | Dict containing the outstanding order details |
 | success | Bool |  no  | Response is successful or not. |
 | message | String? |  yes  | Message |

---


 
 
 #### [PaidOrderDetailsResponse](#PaidOrderDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  | HTTP Status code |
 | data | [[String: Any]]? |  yes  | Dict containing the paid order details |
 | success | Bool |  no  | Response is successful or not. |
 | message | String? |  yes  | Message |

---


 
 
 #### [PaymentMethodsMetaOrder](#PaymentMethodsMetaOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | merchantCode | String |  no  | Merchant code |
 | paymentGateway | String |  no  | Payment gateway name |
 | paymentIdentifier | String |  no  | Payment identifier |

---


 
 
 #### [PaymentOrderMethods](#PaymentOrderMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double |  no  | Amount to be collected |
 | payment | String? |  yes  | Payment type i.e. Required / Blocked |
 | mode | String |  no  | Payment mode |
 | meta | [PaymentMethodsMetaOrder](#PaymentMethodsMetaOrder) |  no  |  |
 | name | String |  no  | Payment mode name |

---


 
 
 #### [PaymentOrderRequest](#PaymentOrderRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [[PaymentOrderMethods](#PaymentOrderMethods)]? |  yes  |  |
 | orderId | String |  no  | Order id |
 | shipmentId | String? |  yes  | shipment_id |

---


 
 
 #### [PaymentOrderData](#PaymentOrderData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double? |  yes  | Amount |
 | aggregator | String? |  yes  | Aggregator name |
 | callbackUrl | String? |  yes  | Callback url for aggregator |
 | orderId | String? |  yes  | Aggregator order id |
 | customerId | String? |  yes  | Aggregator customer id |
 | merchantOrderId | String? |  yes  | Merchant order id |
 | currency | String? |  yes  | Currency |
 | email | String? |  yes  | Email |
 | contact | String? |  yes  | Mobile number |
 | method | String? |  yes  | Method |

---


 
 
 #### [PaymentOrderResponse](#PaymentOrderResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentConfirmUrl | String? |  yes  | Payment confirm url for aggregator |
 | callbackUrl | String? |  yes  | Callback url for aggregator |
 | orderId | String? |  yes  | Merchant order id |
 | success | Bool |  no  | Successful or failure |
 | statusCode | Int |  no  | HTTP status code |
 | data | [PaymentOrderData](#PaymentOrderData)? |  yes  |  |
 | message | String |  no  | Message |

---



