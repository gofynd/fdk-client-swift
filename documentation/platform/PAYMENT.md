



##### [Back to Platform docs](./README.md)

## Payment Methods
Collect payment through many payment gateway i.e Stripe, Razorpay, Juspay etc.into Fynd or Self account

Payment Gateway Configuration
* [getBrandPaymentGatewayConfig](#getbrandpaymentgatewayconfig)
* [saveBrandPaymentGatewayConfig](#savebrandpaymentgatewayconfig)


Payout Management
* [getPaymentModeRoutes](#getpaymentmoderoutes)
* [getAllPayouts](#getallpayouts)
* [savePayout](#savepayout)
* [updatePayout](#updatepayout)
* [activateAndDectivatePayout](#activateanddectivatepayout)
* [deletePayout](#deletepayout)


Subscription Payment and Configuration
* [getSubscriptionPaymentMethod](#getsubscriptionpaymentmethod)
* [deleteSubscriptionPaymentMethod](#deletesubscriptionpaymentmethod)
* [getSubscriptionConfig](#getsubscriptionconfig)
* [saveSubscriptionSetupIntent](#savesubscriptionsetupintent)


Bank Account and IFSC Code Verification
* [getBankAccountDetailsOpenAPI](#getbankaccountdetailsopenapi)
* [addRefundBankAccountUsingOTP](#addrefundbankaccountusingotp)
* [verifyIfscCode](#verifyifsccode)


COD Limit for user and order
* [getUserOrderBeneficiaries](#getuserorderbeneficiaries)
* [getUserBeneficiaries](#getuserbeneficiaries)
* [confirmPayment](#confirmpayment)
* [getUserCODlimitRoutes](#getusercodlimitroutes)
* [setUserCODlimitRoutes](#setusercodlimitroutes)


EDC Device and Management
* [edcAggregatorsAndModelList](#edcaggregatorsandmodellist)
* [edcDeviceStats](#edcdevicestats)
* [updateEdcDevice](#updateedcdevice)
* [getEdcDevice](#getedcdevice)
* [addEdcDevice](#addedcdevice)
* [edcDeviceList](#edcdevicelist)


POS Payment Mode and Session Management
* [getPosPaymentModeRoutes](#getpospaymentmoderoutes)
* [initialisePayment](#initialisepayment)
* [checkAndUpdatePaymentStatus](#checkandupdatepaymentstatus)
* [resendOrCancelPayment](#resendorcancelpayment)
* [paymentStatusBulk](#paymentstatusbulk)
* [updatePaymentSession](#updatepaymentsession)
* [updateRefundSession](#updaterefundsession)


Payment gateway token management
* [oauthGetUrl](#oauthgeturl)
* [revokeOauthToken](#revokeoauthtoken)


Repayment and Merchant Onboarding
* [repaymentDetails](#repaymentdetails)
* [merchantOnBoarding](#merchantonboarding)
* [verifyCustomerForPayment](#verifycustomerforpayment)


Payment Link Creation and Management
* [getPaymentLink](#getpaymentlink)
* [createPaymentLink](#createpaymentlink)
* [pollingPaymentLink](#pollingpaymentlink)
* [resendPaymentLink](#resendpaymentlink)
* [cancelPaymentLink](#cancelpaymentlink)


Default
* [getPaymentModeControlRoutes](#getpaymentmodecontrolroutes)
* [setMerchantModeControlRoutes](#setmerchantmodecontrolroutes)
* [getPaymentModeCustomConfig](#getpaymentmodecustomconfig)
* [setPaymentModeCustomConfig](#setpaymentmodecustomconfig)
* [getPaymentSession](#getpaymentsession)
* [getMerchantPaymentOption](#getmerchantpaymentoption)
* [patchMerchantPaymentOption](#patchmerchantpaymentoption)
* [getMerchantRefundPriority](#getmerchantrefundpriority)
* [createMerchantRefundPriority](#createmerchantrefundpriority)
* [updateMerchantRefundPriority](#updatemerchantrefundpriority)
* [createPaymentOrder](#createpaymentorder)
* [getMerchantAggregatorAppVersion](#getmerchantaggregatorappversion)
* [patchMerchantPaymentOptionVersion](#patchmerchantpaymentoptionversion)


Payment Code and Option Configuration
* [getPaymentCodeOption](#getpaymentcodeoption)


Payment mode configuration of merchant
* [getMerchantAggregatorPaymentModeDetails](#getmerchantaggregatorpaymentmodedetails)
* [patchMerchantAggregatorPaymentModeDetails](#patchmerchantaggregatorpaymentmodedetails)
* [getPGConfigAggregators](#getpgconfigaggregators)




## Methods with example and description



#### getBrandPaymentGatewayConfig
Get brand payment gateway config




```swift
platformClient.application("<APPLICATION_ID>").payment.getBrandPaymentGatewayConfig(aggregator: aggregator, configType: configType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregator | String? | no | aggregator slug |   
| configType | String? | no |  |  



Retrieve configuration settings for brand payment gateways.

*Returned Response:*




[PaymentGatewayConfigResponse](#PaymentGatewayConfigResponse)

Refund Transfer Mode




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "created": true,
  "app_id": "000000000000000000000004",
  "excluded_fields": [
    "config_type",
    "aggregator"
  ],
  "display_fields": [
    "logo",
    "display"
  ],
  "aggregators": [
    {
      "key": "rrroooouuurrrrdddd",
      "secret": "yyyyooo",
      "is_active": false,
      "config_type": "",
      "merchant_key": "vvvvvvvvddd",
      "aggregator": "juspay",
      "display": {
        "link": "",
        "text": "Review in under process. Please  wait while process completed or contact us for any further query.",
        "description": "Juspay is not a Payment Gateway (like Citrus, CCAvenue, PayU) but it works with any gateway or aggregator with zero interference in the Merchant-PG relations.",
        "reviewed": false
      },
      "logo": "https://hdn-1.fynd.com/payment/juspay-pg-logo.jpg"
    },
    {
      "key": "",
      "pin": "",
      "secret": "",
      "user_id": "",
      "is_active": false,
      "config_type": "",
      "merchant_id": "",
      "aggregator": "mswipe",
      "display": {
        "link": "",
        "text": "Submitted request to be reviewed before going live. Please contact us for any further query.",
        "description": "Mswipe card swipe machines are safe and secure and accepts all debit & credit cards."
      },
      "logo": "https://hdn-1.fynd.com/payment/mswipe-pg-logo.png"
    },
    {
      "key": "tttyyyyyy",
      "secret": "rerrrrrrrr",
      "is_active": false,
      "config_type": "",
      "merchant_salt": "qqqqq",
      "aggregator": "payumoney",
      "display": {
        "link": "",
        "text": "Review in under process. Please  wait while process completed or contact us for any further query.",
        "description": "PayUmoney supports wide range of options for making online payments via wallets, UPI, cards, and netbanking.",
        "reviewed": false
      },
      "logo": "https://hdn-1.fynd.com/payment/payu_logo_large.png"
    },
    {
      "key": "test",
      "secret": "test",
      "is_active": true,
      "config_type": "self",
      "webhook_secret": "test",
      "aggregator": "razorpay",
      "display": {
        "link": "",
        "text": "Well done, You payment gateway successfully lived. Collect your payment at your end.",
        "description": "Razorpay is a payments platform which accept online payments via Credit Card, Debit Card, Net banking, UPI, BharatQR and Wallets.",
        "reviewed": true
      },
      "logo": "https://hdn-1.fynd.com/payment/razorpay-pg-logo.jpg"
    },
    {
      "key": "",
      "secret": "",
      "is_active": false,
      "config_type": "",
      "aggregator": "rupifi",
      "display": {
        "link": "",
        "text": "Submitted request to be reviewed before going live. Please contact us for any further query.",
        "description": "Rupifi enables businesses to avail credits and allows a 'Buy now, Pay later' system for making transactions and purchases."
      },
      "logo": "https://hdn-1.fynd.com/payment/Rupifi.png"
    },
    {
      "key": "12345",
      "secret": "12345",
      "is_active": false,
      "config_type": "",
      "aggregator": "simpl",
      "display": {
        "link": "",
        "text": "Review in under process. Please  wait while process completed or contact us for any further query.",
        "description": "Simpl is a Pay Later payment method.",
        "reviewed": false
      },
      "logo": "https://hdn-1.fynd.com/payment/simpl-pg-logo.jpg"
    },
    {
      "key": "",
      "secret": "",
      "is_active": false,
      "product_id": "",
      "config_type": "",
      "webhook_secret": "",
      "aggregator": "stripe",
      "display": {
        "link": "",
        "text": "Submitted request to be reviewed before going live. Please contact us for any further query.",
        "description": "Stripe is a payment processor that supports online payments, credit cards, recurring subscriptions and direct payouts to bank accounts."
      },
      "logo": "https://hdn-1.fynd.com/payment/Stripe.png"
    }
  ]
}
```
</details>









---


#### saveBrandPaymentGatewayConfig
Save brand payment gateway config.




```swift
platformClient.application("<APPLICATION_ID>").payment.saveBrandPaymentGatewayConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentGatewayConfigRequest | yes | Request body |


Store and update configuration settings for brand payment gateways.

*Returned Response:*




[PaymentGatewayToBeReviewed](#PaymentGatewayToBeReviewed)

Save Config Secret For Brand Payment Gateway Success Response.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "aggregator": [
    "razorpay"
  ]
}
```
</details>









---




#### getPaymentModeRoutes
Get payment mode routes.




```swift
platformClient.application("<APPLICATION_ID>").payment.getPaymentModeRoutes(refresh: refresh, requestType: requestType, orderId: orderId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| refresh | Bool | yes |  |   
| requestType | String | yes |  |   
| orderId | String? | no |  |   
| shipmentId | String? | no |  |  



Retrieve routes and options for payment modes.

*Returned Response:*




[PaymentOptionsResponse](#PaymentOptionsResponse)

Success




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
        "save_card": true,
        "types": [],
        "networks": [],
        "banks": []
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
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Corporation Bank",
            "code": "CORP",
            "bank_name": "Corporation Bank",
            "bank_code": "CORP",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_CORP",
            "display_priority": 18,
            "display_name": "Corporation Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Punjab National Bank - Corporate Banking",
            "code": "PUNB_C",
            "bank_name": "Punjab National Bank - Corporate Banking",
            "bank_code": "PUNB_C",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "PUNB_C",
            "display_priority": 19,
            "display_name": "Punjab National Bank - Corporate Banking"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Canara Bank",
            "code": "CNRB",
            "bank_name": "Canara Bank",
            "bank_code": "CNRB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_CANR",
            "display_priority": 20,
            "display_name": "Canara Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Saraswat Co-operative Bank",
            "code": "SRCB",
            "bank_name": "Saraswat Co-operative Bank",
            "bank_code": "SRCB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "SRCB",
            "display_priority": 21,
            "display_name": "Saraswat Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Deutsche Bank",
            "code": "DEUT",
            "bank_name": "Deutsche Bank",
            "bank_code": "DEUT",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_DEUT",
            "display_priority": 22,
            "display_name": "Deutsche Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Dhanlaxmi Bank",
            "code": "DLXB",
            "bank_name": "Dhanlaxmi Bank",
            "bank_code": "DLXB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "DLXB",
            "display_priority": 24,
            "display_name": "Dhanlaxmi Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Oriental Bank of Commerce",
            "code": "ORBC",
            "bank_name": "Oriental Bank of Commerce",
            "bank_code": "ORBC",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "ORBC",
            "display_priority": 25,
            "display_name": "Oriental Bank of Commerce"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Punjab National Bank - Retail Banking",
            "code": "PUNB_R",
            "bank_name": "Punjab National Bank - Retail Banking",
            "bank_code": "PUNB_R",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "PUNB_R",
            "display_priority": 26,
            "display_name": "Punjab National Bank - Retail Banking"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "State Bank of Bikaner and Jaipur",
            "code": "SBBJ",
            "bank_name": "State Bank of Bikaner and Jaipur",
            "bank_code": "SBBJ",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SBBJ",
            "display_priority": 27,
            "display_name": "State Bank of Bikaner and Jaipur"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Indian Overseas Bank",
            "code": "IOBA",
            "bank_name": "Indian Overseas Bank",
            "bank_code": "IOBA",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_IOB",
            "display_priority": 28,
            "display_name": "Indian Overseas Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "State Bank of Travancore",
            "code": "SBTR",
            "bank_name": "State Bank of Travancore",
            "bank_code": "SBTR",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SBT",
            "display_priority": 29,
            "display_name": "State Bank of Travancore"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Airtel Payments Bank",
            "code": "AIRP",
            "bank_name": "Airtel Payments Bank",
            "bank_code": "AIRP",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "AIRP",
            "display_priority": 30,
            "display_name": "Airtel Payments Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Development Bank of Singapore",
            "code": "DBSS",
            "bank_name": "Development Bank of Singapore",
            "bank_code": "DBSS",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "DBSS",
            "display_priority": 31,
            "display_name": "Development Bank of Singapore"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Vijaya Bank",
            "code": "VIJB",
            "bank_name": "Vijaya Bank",
            "bank_code": "VIJB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_VJYB",
            "display_priority": 32,
            "display_name": "Vijaya Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "NKGSB Co-operative Bank",
            "code": "NKGS",
            "bank_name": "NKGSB Co-operative Bank",
            "bank_code": "NKGS",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NKGS",
            "display_priority": 33,
            "display_name": "NKGSB Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "RBL Bank",
            "code": "RATN",
            "bank_name": "RBL Bank",
            "bank_code": "RATN",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "RATN",
            "display_priority": 35,
            "display_name": "RBL Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Bank of Baroda - Retail Banking",
            "code": "BARB_R",
            "bank_name": "Bank of Baroda - Retail Banking",
            "bank_code": "BARB_R",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "BARB_R",
            "display_priority": 36,
            "display_name": "Bank of Baroda - Retail Banking"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Karnataka Bank",
            "code": "KARB",
            "bank_name": "Karnataka Bank",
            "bank_code": "KARB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_KARN",
            "display_priority": 37,
            "display_name": "Karnataka Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Tamilnadu State Apex Co-operative Bank",
            "code": "TNSC",
            "bank_name": "Tamilnadu State Apex Co-operative Bank",
            "bank_code": "TNSC",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "TNSC",
            "display_priority": 38,
            "display_name": "Tamilnadu State Apex Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Tamilnadu Mercantile Bank",
            "code": "TMBL",
            "bank_name": "Tamilnadu Mercantile Bank",
            "bank_code": "TMBL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "TMBL",
            "display_priority": 40,
            "display_name": "Tamilnadu Mercantile Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Lakshmi Vilas Bank - Retail Banking",
            "code": "LAVB_R",
            "bank_name": "Lakshmi Vilas Bank - Retail Banking",
            "bank_code": "LAVB_R",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "LAVB_R",
            "display_priority": 42,
            "display_name": "Lakshmi Vilas Bank - Retail Banking"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Dena Bank",
            "code": "BKDN",
            "bank_name": "Dena Bank",
            "bank_code": "BKDN",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "BKDN",
            "display_priority": 43,
            "display_name": "Dena Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Federal Bank",
            "code": "FDRL",
            "bank_name": "Federal Bank",
            "bank_code": "FDRL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_FED",
            "display_priority": 44,
            "display_name": "Federal Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Indian Bank",
            "code": "IDIB",
            "bank_name": "Indian Bank",
            "bank_code": "IDIB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_INDB",
            "display_priority": 45,
            "display_name": "Indian Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "South Indian Bank",
            "code": "SIBL",
            "bank_name": "South Indian Bank",
            "bank_code": "SIBL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SOIB",
            "display_priority": 46,
            "display_name": "South Indian Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "IDBI",
            "code": "IBKL",
            "bank_name": "IDBI",
            "bank_code": "IBKL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "IBKL",
            "display_priority": 49,
            "display_name": "IDBI"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Karur Vysya Bank",
            "code": "KVBL",
            "bank_name": "Karur Vysya Bank",
            "bank_code": "KVBL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_KVB",
            "display_priority": 50,
            "display_name": "Karur Vysya Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Punjab & Sind Bank",
            "code": "PSIB",
            "bank_name": "Punjab & Sind Bank",
            "bank_code": "PSIB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "PSIB",
            "display_priority": 52,
            "display_name": "Punjab & Sind Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "UCO Bank",
            "code": "UCBA",
            "bank_name": "UCO Bank",
            "bank_code": "UCBA",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "UCBA",
            "display_priority": 53,
            "display_name": "UCO Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Bank of Bahrein and Kuwait",
            "code": "BBKM",
            "bank_name": "Bank of Bahrein and Kuwait",
            "bank_code": "BBKM",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "BBKM",
            "display_priority": 54,
            "display_name": "Bank of Bahrein and Kuwait"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Yes Bank",
            "code": "YESB",
            "bank_name": "Yes Bank",
            "bank_code": "YESB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_YESB",
            "display_priority": 55,
            "display_name": "Yes Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Punjab & Maharashtra Co-operative Bank",
            "code": "PMCB",
            "bank_name": "Punjab & Maharashtra Co-operative Bank",
            "bank_code": "PMCB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "PMCB",
            "display_priority": 56,
            "display_name": "Punjab & Maharashtra Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Bank of India",
            "code": "BKID",
            "bank_name": "Bank of India",
            "bank_code": "BKID",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_BOI",
            "display_priority": 57,
            "display_name": "Bank of India"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Bank of Maharashtra",
            "code": "MAHB",
            "bank_name": "Bank of Maharashtra",
            "bank_code": "MAHB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_BOM",
            "display_priority": 58,
            "display_name": "Bank of Maharashtra"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "IDFC Bank",
            "code": "IDFB",
            "bank_name": "IDFC Bank",
            "bank_code": "IDFB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "IDFB",
            "display_priority": 59,
            "display_name": "IDFC Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Janata Sahakari Bank (Pune)",
            "code": "JSBP",
            "bank_name": "Janata Sahakari Bank (Pune)",
            "bank_code": "JSBP",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "JSBP",
            "display_priority": 60,
            "display_name": "Janata Sahakari Bank (Pune)"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Shamrao Vithal Co-operative Bank",
            "code": "SVCB",
            "bank_name": "Shamrao Vithal Co-operative Bank",
            "bank_code": "SVCB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "SVCB",
            "display_priority": 61,
            "display_name": "Shamrao Vithal Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Cosmos Co-operative Bank",
            "code": "COSB",
            "bank_name": "Cosmos Co-operative Bank",
            "bank_code": "COSB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "COSB",
            "display_priority": 62,
            "display_name": "Cosmos Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "State Bank of Mysore",
            "code": "SBMY",
            "bank_name": "State Bank of Mysore",
            "bank_code": "SBMY",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SBM",
            "display_priority": 63,
            "display_name": "State Bank of Mysore"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Andhra Bank",
            "code": "ANDB",
            "bank_name": "Andhra Bank",
            "bank_code": "ANDB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "ANDB",
            "display_priority": 65,
            "display_name": "Andhra Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Jammu and Kashmir Bank",
            "code": "JAKA",
            "bank_name": "Jammu and Kashmir Bank",
            "bank_code": "JAKA",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_JNK",
            "display_priority": 66,
            "display_name": "Jammu and Kashmir Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "United Bank of India",
            "code": "UTBI",
            "bank_name": "United Bank of India",
            "bank_code": "UTBI",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "UTBI",
            "display_priority": 67,
            "display_name": "United Bank of India"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Lakshmi Vilas Bank - Corporate Banking",
            "code": "LAVB_C",
            "bank_name": "Lakshmi Vilas Bank - Corporate Banking",
            "bank_code": "LAVB_C",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "LAVB_C",
            "display_priority": 69,
            "display_name": "Lakshmi Vilas Bank - Corporate Banking"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "State Bank of Patiala",
            "code": "STBP",
            "bank_name": "State Bank of Patiala",
            "bank_code": "STBP",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SBP",
            "display_priority": 70,
            "display_name": "State Bank of Patiala"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "DCB Bank",
            "code": "DCBL",
            "bank_name": "DCB Bank",
            "bank_code": "DCBL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "DCBL",
            "display_priority": 71,
            "display_name": "DCB Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Union Bank of India",
            "code": "UBIN",
            "bank_name": "Union Bank of India",
            "bank_code": "UBIN",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_UBI",
            "display_priority": 73,
            "display_name": "Union Bank of India"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Standard Chartered Bank",
            "code": "SCBL",
            "bank_name": "Standard Chartered Bank",
            "bank_code": "SCBL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "SCBL",
            "display_priority": 74,
            "display_name": "Standard Chartered Bank"
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
            "code": "PAYTM",
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
            "wallet_name": "Mobikwik",
            "wallet_code": "mobikwik",
            "name": "Mobikwik",
            "display_name": "Mobikwik",
            "code": "MOBIKWIK",
            "wallet_id": 5,
            "merchant_code": "MOBIKWIK",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/mobikwik_logo_small.png",
              "large": "https://hdn-1.fynd.com/payment/mobikwik_logo_small.png"
            },
            "aggregator_name": "Juspay",
            "display_priority": 3
          },
          {
            "wallet_name": "Ola Money",
            "wallet_code": "olamoney",
            "name": "Ola Money",
            "display_name": "Ola Money",
            "code": "OLAMONEY",
            "wallet_id": 6,
            "merchant_code": "OLAMONEY",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/olamoney.png",
              "large": "https://hdn-1.fynd.com/payment/olamoney.png"
            },
            "aggregator_name": "Razorpay",
            "display_priority": 4
          },
          {
            "wallet_name": "Amazon Pay",
            "wallet_code": "amazonpay",
            "name": "Amazon Pay",
            "display_name": "Amazon Pay",
            "code": "AMAZONPAY",
            "wallet_id": 10,
            "merchant_code": "AMAZONPAY",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/amazon-pay.png",
              "large": "https://hdn-1.fynd.com/payment/amazon-pay.png"
            },
            "aggregator_name": "Razorpay",
            "display_priority": 9
          },
          {
            "wallet_name": "PayPal",
            "wallet_code": "paypal",
            "name": "PayPal",
            "display_name": "PayPal",
            "code": "PAYPAL",
            "wallet_id": 11,
            "merchant_code": "PAYPAL",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/paypal.jpg",
              "large": "https://hdn-1.fynd.com/payment/paypal.jpg"
            },
            "aggregator_name": "Razorpay",
            "display_priority": 10
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
              "large": "https://hdn-1.fynd.com/payment/upi_150x100.png",
              "small": "https://hdn-1.fynd.com/payment/upi_100x78.png"
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
      },
      {
        "name": "EMI",
        "display_priority": 18,
        "payment_mode_id": 19,
        "display_name": "Easy EMI",
        "list": [
          {
            "aggregator_name": "Razorpay",
            "name": "EMI",
            "display_name": "Easy EMI",
            "code": "EMI",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
              "small": "https://hdn-1.fynd.com/payment/Pos+Logo.png"
            },
            "merchant_code": "EMI"
          }
        ]
      },
      {
        "name": "JUSPAYPG",
        "display_priority": 18,
        "payment_mode_id": 23,
        "display_name": "Pay Using Juspay",
        "list": [
          {
            "aggregator_name": "Juspay",
            "name": "JUSPAYPG",
            "display_name": "Pay Using Juspay",
            "code": "JUSPAYPG",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/netbanking.png",
              "small": "https://hdn-1.fynd.com/payment/netbanking.png"
            },
            "merchant_code": "JUSPAYPG"
          }
        ]
      },
      {
        "name": "PG_PAYMENT",
        "display_priority": 20,
        "display_name": "Other payment gateway",
        "list": [
          {
            "aggregator_name": "Stripe",
            "name": "STRIPEPG",
            "display_name": "Pay using Stripe",
            "code": "STRIPEPG",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
              "small": "https://hdn-1.fynd.com/payment/Pos+Logo.png"
            },
            "merchant_code": "STRIPEPG"
          },
          {
            "aggregator_name": "Ccavenue",
            "name": "CCAVENUEPG",
            "display_name": "Pay using Ccavenue",
            "code": "CCAVENUEPG",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
              "small": "https://hdn-1.fynd.com/payment/Pos+Logo.png"
            },
            "merchant_code": "CCAVENUEPG"
          },
          {
            "aggregator_name": "Payumoney",
            "name": "PAYUMONEYPG",
            "display_name": "Pay using Payumoney",
            "code": "PAYUMONEYPG",
            "logo_url": {
              "large": "https://fynd-obscuro-media-new.s3.amazonaws.com/payment/payu_logo_large.png",
              "small": "https://fynd-obscuro-media-new.s3.amazonaws.com/payment/payu_logo_small.png"
            },
            "merchant_code": "PAYUMONEYPG"
          },
          {
            "aggregator_name": "Payubiz",
            "name": "PAYUBIZPG",
            "display_name": "Pay using Payubiz",
            "code": "PAYUBIZPG",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/payu.png",
              "small": "https://hdn-1.fynd.com/payment/payu.png"
            },
            "merchant_code": "PAYUBIZPG"
          }
        ]
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
            "code": "SIMPL",
            "merchant_code": "SIMPL",
            "logo": "https://hdn-1.fynd.com/payment/simpl_logo.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/simpl_logo.png",
              "large": "https://hdn-1.fynd.com/payment/simpl_logo.png"
            }
          },
          {
            "aggregator_name": "Rupifi",
            "name": "RUPIFIPG",
            "display_name": "Pay using Rupifi",
            "code": "RUPIFIPG",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/Rupifi.png",
              "small": "https://hdn-1.fynd.com/payment/Rupifi.png"
            },
            "merchant_code": "RUPIFIPG"
          }
        ]
      }
    ]
  }
}
```
</details>









---


#### getAllPayouts
Get all payouts.




```swift
platformClient.payment.getAllPayouts(uniqueExternalId: uniqueExternalId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueExternalId | String? | no | Fetch payouts using unique external id |  



Retrieve a list of all payout transactions.

*Returned Response:*




[PayoutsResponse](#PayoutsResponse)

payouts response object




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "unique_transfer_no": "d2ff79fcd3459831864824da8c9d7e5f",
      "more_attributes": {
        "city": "",
        "state": "",
        "country": "",
        "bank_name": "YES",
        "ifsc_code": "IFSCYES101",
        "account_no": "9876541234",
        "branch_name": "Mumbai",
        "account_type": "current",
        "account_holder": "Vikas Kumar"
      },
      "transfer_type": "bank",
      "is_default": true,
      "is_active": true,
      "customers": {
        "id": 2,
        "name": "reliance retail",
        "mobile": "1234567890",
        "email": "reliance@gmail.com",
        "unique_external_id": "company:1"
      },
      "payouts_aggregators": [
        {
          "payout_details_id": 888,
          "aggregator_id": 3,
          "aggregator_fund_id": null
        }
      ]
    },
    {
      "unique_transfer_no": "e388c1c5df4933fa01f6da9f92595589",
      "more_attributes": {
        "city": "",
        "state": "",
        "country": "",
        "bank_name": "SBI",
        "ifsc_code": "SBIN0011513",
        "account_no": "9876543210",
        "branch_name": "Mumbai",
        "account_type": "saving",
        "account_holder": "Vikas Kumar"
      },
      "transfer_type": "bank",
      "is_default": false,
      "is_active": true,
      "customers": {
        "id": 2,
        "name": "reliance retail",
        "mobile": "1234567890",
        "email": "reliance@gmail.com",
        "unique_external_id": "company:1"
      },
      "payouts_aggregators": [
        {
          "payout_details_id": 891,
          "aggregator_id": 3,
          "aggregator_fund_id": null
        }
      ]
    }
  ],
  "success": true
}
```
</details>









---


#### savePayout
Save payout.




```swift
platformClient.payment.savePayout(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PayoutRequest | yes | Request body |


Store and process a payout transaction.

*Returned Response:*




[PayoutResponse](#PayoutResponse)

save payout response object




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "is_active": true,
  "bank_details": {
    "account_type": "saving",
    "account_holder": "Vikas Kumar",
    "branch_name": "Mumbai",
    "country": "",
    "ifsc_code": "SBIN0011513",
    "account_no": "9876543210",
    "city": "",
    "state": "",
    "bank_name": "SBI"
  },
  "unique_transfer_no": "e388c1c5df4933fa01f6da9f92595589",
  "users": {
    "name": "reliance retail",
    "unique_external_id": "company:1",
    "mobile": "1234567890",
    "email": "reliance@gmail.com"
  },
  "aggregator": "Razorpay",
  "transfer_type": "bank",
  "created": true,
  "payouts": {
    "aggregator_fund_id": null
  },
  "payment_status": "payout_initiated"
}
```
</details>









---


#### updatePayout
Update payout.




```swift
platformClient.payment.updatePayout(uniqueTransferNo: uniqueTransferNo, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueTransferNo | String | yes | Unique transfer id |  
| body | PayoutRequest | yes | Request body |


Modify the details of a payout transaction.

*Returned Response:*




[UpdatePayoutResponse](#UpdatePayoutResponse)

save payout response object




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "is_default": true,
  "is_active": true
}
```
</details>









---


#### activateAndDectivatePayout
Activate/Deactivate payout.




```swift
platformClient.payment.activateAndDectivatePayout(uniqueTransferNo: uniqueTransferNo, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueTransferNo | String | yes | Unique transfer id |  
| body | UpdatePayoutRequest | yes | Request body |


Enable or disable payout functionality.

*Returned Response:*




[UpdatePayoutResponse](#UpdatePayoutResponse)

save payout response object




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "is_default": true,
  "is_active": true
}
```
</details>









---


#### deletePayout
Delete payout.




```swift
platformClient.payment.deletePayout(uniqueTransferNo: uniqueTransferNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueTransferNo | String | yes | Unique transfer id |  



Remove a payout transaction from the system.

*Returned Response:*




[DeletePayoutResponse](#DeletePayoutResponse)

delete payout response object




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---




#### getSubscriptionPaymentMethod
Get subscription payment method.




```swift
platformClient.payment.getSubscriptionPaymentMethod(uniqueExternalId: uniqueExternalId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueExternalId | String? | no | Unique external id |  



Retrieve payment methods for subscriptions.

*Returned Response:*




[SubscriptionPaymentMethodResponse](#SubscriptionPaymentMethodResponse)

List Subscription Payment Method Response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": [
    {
      "id": 68,
      "type": "card",
      "pg_payment_method_id": "pm_1H8HyIJ1ZTFIN1aD5eDOL4nU",
      "data": {
        "brand": "visa",
        "last4": "4242",
        "checks": {
          "cvc_check": "pass",
          "address_line1_check": null,
          "address_postal_code_check": null
        },
        "wallet": null,
        "country": "US",
        "funding": "credit",
        "exp_year": 2044,
        "networks": {
          "available": [
            "visa"
          ],
          "preferred": null
        },
        "exp_month": 12,
        "fingerprint": "0aror24meTf8iYfw",
        "generated_from": null,
        "three_d_secure_usage": {
          "supported": true
        }
      },
      "is_default": false
    },
    {
      "id": 81,
      "type": "card",
      "pg_payment_method_id": "pm_1Hc7tMJ1ZTFIN1aDCvMIIBeT",
      "data": {
        "brand": "visa",
        "last4": "4242",
        "checks": {
          "cvc_check": "pass",
          "address_line1_check": null,
          "address_postal_code_check": null
        },
        "wallet": null,
        "country": "US",
        "funding": "credit",
        "exp_year": 2020,
        "networks": {
          "available": [
            "visa"
          ],
          "preferred": null
        },
        "exp_month": 11,
        "fingerprint": "0aror24meTf8iYfw",
        "generated_from": null,
        "three_d_secure_usage": {
          "supported": true
        }
      },
      "is_default": true
    },
    {
      "id": 93,
      "type": "card",
      "pg_payment_method_id": "pm_1HvddjJ1ZTFIN1aDgebQvuyi",
      "data": {
        "brand": "visa",
        "last4": "4242",
        "checks": {
          "cvc_check": "pass",
          "address_line1_check": "pass",
          "address_postal_code_check": "pass"
        },
        "wallet": null,
        "country": "US",
        "funding": "credit",
        "exp_year": 2022,
        "networks": {
          "available": [
            "visa"
          ],
          "preferred": null
        },
        "exp_month": 11,
        "fingerprint": "0aror24meTf8iYfw",
        "generated_from": null,
        "three_d_secure_usage": {
          "supported": true
        }
      },
      "is_default": false
    },
    {
      "id": 98,
      "type": "card",
      "pg_payment_method_id": "pm_1IJDF0J1ZTFIN1aDnJFi4i2v",
      "data": {
        "brand": "visa",
        "last4": "1111",
        "checks": {
          "cvc_check": "pass",
          "address_line1_check": "pass",
          "address_postal_code_check": "pass"
        },
        "wallet": null,
        "country": "US",
        "funding": "credit",
        "exp_year": 2025,
        "networks": {
          "available": [
            "visa"
          ],
          "preferred": null
        },
        "exp_month": 11,
        "fingerprint": "ZtDTGycouUEup4Q4",
        "generated_from": null,
        "three_d_secure_usage": {
          "supported": true
        }
      },
      "is_default": false
    }
  ]
}
```
</details>









---


#### deleteSubscriptionPaymentMethod
Delete subscription payment method.




```swift
platformClient.payment.deleteSubscriptionPaymentMethod(uniqueExternalId: uniqueExternalId, paymentMethodId: paymentMethodId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uniqueExternalId | String | yes |  |   
| paymentMethodId | String | yes |  |  



Remove a payment method from subscription options.

*Returned Response:*




[DeleteSubscriptionPaymentMethodResponse](#DeleteSubscriptionPaymentMethodResponse)

Delete Subscription Payment Method Response.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getSubscriptionConfig
Get subscription config.




```swift
platformClient.payment.getSubscriptionConfig() { (response, error) in
    // Use response
}
```






Retrieve configuration settings for subscriptions.

*Returned Response:*




[SubscriptionConfigResponse](#SubscriptionConfigResponse)

List Subscription Config Response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "aggregator": "stripe",
  "config": {
    "public_key": "pk_test_lHBf12TZLa5"
  }
}
```
</details>









---


#### saveSubscriptionSetupIntent
Save subscription setup intent.




```swift
platformClient.payment.saveSubscriptionSetupIntent(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SaveSubscriptionSetupIntentRequest | yes | Request body |


Store and process setup intent for subscriptions.

*Returned Response:*




[SaveSubscriptionSetupIntentResponse](#SaveSubscriptionSetupIntentResponse)

Save Subscription Setup Intent Response.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "id": "test",
    "object": "test",
    "client_secret": "test",
    "customer": "test",
    "status": "requires_payment_method"
  }
}
```
</details>









---




#### getBankAccountDetailsOpenAPI
Get bank account details.




```swift
platformClient.application("<APPLICATION_ID>").payment.getBankAccountDetailsOpenAPI(orderId: orderId, requestHash: requestHash) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes |  |   
| requestHash | String? | no |  |  



Retrieve bank account information using an open API.

*Returned Response:*




[RefundAccountResponse](#RefundAccountResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Refund Success",
  "success": true,
  "data": {
    "account_no": "XXXX-XXXX-6682",
    "ifsc_code": "SBIEXAMPLE001",
    "email": "loremipsum@example.com",
    "address": "1773  Monroe Street",
    "bank_name": "SBI",
    "branch_name": "HOUSTON",
    "comment": "Lorem Ipsum",
    "account_holder": "Leslie Rice",
    "mobile": "0987654321"
  }
}
```
</details>









---


#### addRefundBankAccountUsingOTP
Add refund bank account using OTP.




```swift
platformClient.application("<APPLICATION_ID>").payment.addRefundBankAccountUsingOTP(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AddBeneficiaryDetailsOTPRequest | yes | Request body |


Register a refund bank account with OTP verification.

*Returned Response:*




[RefundAccountResponse](#RefundAccountResponse)

Success




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


#### verifyIfscCode
Verify IFSC code.




```swift
platformClient.payment.verifyIfscCode(ifscCode: ifscCode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| ifscCode | String? | no |  |  



Check the authenticity of an IFSC code.

*Returned Response:*




[IfscCodeResponse](#IfscCodeResponse)

Bank details on correct Ifsc Code




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




#### getUserOrderBeneficiaries
Get user order beneficiaries.




```swift
platformClient.application("<APPLICATION_ID>").payment.getUserOrderBeneficiaries(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes |  |  



Retrieve beneficiaries associated with a user orders.

*Returned Response:*




[OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

List Order Beneficiary




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


#### getUserBeneficiaries
Get user beneficiaries.




```swift
platformClient.application("<APPLICATION_ID>").payment.getUserBeneficiaries(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes |  |  



Retrieve beneficiaries associated with a user.

*Returned Response:*




[OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

List User Beneficiary




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


#### confirmPayment
Confirm payment.




```swift
platformClient.application("<APPLICATION_ID>").payment.confirmPayment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentConfirmationRequest | yes | Request body |


Authenticate and confirm a payment.

*Returned Response:*




[PaymentConfirmationResponse](#PaymentConfirmationResponse)

Success. Returns the status of payment. Check the example shown below or refer `PaymentConfirmationResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Payment Successful",
  "order_id": "FY60F90AEF01FF43E878"
}
```
</details>









---


#### getUserCODlimitRoutes
Get user COD limit routes.




```swift
platformClient.application("<APPLICATION_ID>").payment.getUserCODlimitRoutes(merchantUserId: merchantUserId, mobileNo: mobileNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| merchantUserId | String | yes |  |   
| mobileNo | String | yes |  |  



Retrieve routes and limits for user cash-on-delivery (COD) transactions.

*Returned Response:*




[GetUserCODLimitResponse](#GetUserCODLimitResponse)

Success. Returns user cod limit , remaining limit and usage of user for COD. Check the example shown below or refer `GetUserCODLimitResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "user_cod_data": {
    "is_active": true,
    "user_id": "abc",
    "usages": 1000,
    "limit": 10000,
    "remaining_limit": 9000,
    "merchant_user_id": "5e199e6998cfe1776f1385dc"
  }
}
```
</details>









---


#### setUserCODlimitRoutes
Set user COD limit routes.




```swift
platformClient.application("<APPLICATION_ID>").payment.setUserCODlimitRoutes(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SetCODForUserRequest | yes | Request body |


Configure routes and limits for user COD transactions.

*Returned Response:*




[SetCODOptionResponse](#SetCODOptionResponse)

Success. Returns true or false for user cod option for payment. Check the example shown below or refer `GetUserCODLimitResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "COD option for user {} is set to {}"
}
```
</details>









---




#### edcAggregatorsAndModelList
EDC aggregators and model list.




```swift
platformClient.application("<APPLICATION_ID>").payment.edcAggregatorsAndModelList() { (response, error) in
    // Use response
}
```






Retrieve a list of EDC (Electronic Data Capture) aggregators and models.

*Returned Response:*




[EdcAggregatorAndModelListResponse](#EdcAggregatorAndModelListResponse)

Success. Returns the list of devices linked to the application Check the example shown below or refer `EdcAggregatorAndModelListResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": [
    {
      "aggregator": "Pinelabs",
      "aggregator_id": 17,
      "models": [
        "A910",
        "A920"
      ]
    }
  ]
}
```
</details>









---


#### edcDeviceStats
EDC device stats.




```swift
platformClient.application("<APPLICATION_ID>").payment.edcDeviceStats() { (response, error) in
    // Use response
}
```






Get statistics and data related to EDC devices.

*Returned Response:*




[EdcDeviceStatsResponse](#EdcDeviceStatsResponse)

Success. Returns the list of devices linked to the application Check the example shown below or refer `EdcDeviceStatsResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "statistics": {
    "active_device_count": 2,
    "inactive_device_count": 0
  }
}
```
</details>









---


#### updateEdcDevice
Update EDC device.




```swift
platformClient.application("<APPLICATION_ID>").payment.updateEdcDevice(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EdcAddRequest | yes | Request body |


Modify the settings and details of an EDC device.

*Returned Response:*




[EdcDeviceAddResponse](#EdcDeviceAddResponse)

Success. Returns the single edc device mapped to the terminal. Check the example shown below or refer `EdcDeviceAddResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "application_id": "2",
    "aggregator_id": 1,
    "terminal_serial_no": "15c26ee7297e4334",
    "edc_device_serial_no": "123456784",
    "terminal_unique_identifier": "1231208734",
    "merchant_store_pos_code": null,
    "store_id": 12312,
    "device_tag": "Counter 2",
    "is_active": false,
    "edc_model": "A910"
  }
}
```
</details>









---


#### getEdcDevice
Get EDC device.




```swift
platformClient.application("<APPLICATION_ID>").payment.getEdcDevice(terminalUniqueIdentifier: terminalUniqueIdentifier) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| terminalUniqueIdentifier | String | yes | Terminal unique identifier |  



Retrieve detailed information about an EDC device.

*Returned Response:*




[EdcDeviceDetailsResponse](#EdcDeviceDetailsResponse)

Success. Returns the single edc device mapped to the terminal. Check the example shown below or refer `EdcDeviceDetailsResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "application_id": "2",
    "terminal_serial_no": "15c26ee7297e4334",
    "edc_device_serial_no": "123456784",
    "terminal_unique_identifier": "1231208734",
    "merchant_store_pos_code": "12345123",
    "store_id": 12312,
    "aggregator_id": 17,
    "aggregator_name": "Pinelabs",
    "device_tag": "Counter 2",
    "is_active": true,
    "edc_model": "A910"
  }
}
```
</details>









---


#### addEdcDevice
Add EDC device.




```swift
platformClient.application("<APPLICATION_ID>").payment.addEdcDevice(terminalUniqueIdentifier: terminalUniqueIdentifier, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| terminalUniqueIdentifier | String | yes | Terminal unique identifier |  
| body | EdcUpdateRequest | yes | Request body |


Register and add a new EDC device.

*Returned Response:*




[EdcDeviceUpdateResponse](#EdcDeviceUpdateResponse)

Check the example shown below or refer `EdcDeviceUpdateResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### edcDeviceList
EDC device list.




```swift
platformClient.application("<APPLICATION_ID>").payment.edcDeviceList(pageNo: pageNo, pageSize: pageSize, isActive: isActive, storeId: storeId, deviceTag: deviceTag) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| isActive | Bool? | no |  |   
| storeId | Int? | no |  |   
| deviceTag | String? | no |  |  



Retrieve a list of available EDC devices.

*Returned Response:*




[EdcDeviceListResponse](#EdcDeviceListResponse)

Success. Returns the list of devices linked to the application Check the example shown below or refer `EdcDeviceListResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "page": {
    "type": "number",
    "size": 1,
    "current": 1,
    "has_next": false,
    "item_total": 2
  },
  "items": [
    {
      "application_id": "2",
      "terminal_serial_no": "15c26ee7297e4331",
      "edc_device_serial_no": "123456781",
      "terminal_unique_identifier": "1231242081",
      "merchant_store_pos_code": "122120009",
      "store_id": 12312,
      "aggregator_id": 17,
      "aggregator_name": "Pinelabs",
      "device_tag": "Counter 2",
      "is_active": true,
      "edc_model": "A910"
    }
  ]
}
```
</details>









---




#### getPosPaymentModeRoutes
Get POS payment mode routes.




```swift
platformClient.application("<APPLICATION_ID>").payment.getPosPaymentModeRoutes(amount: amount, cartId: cartId, pincode: pincode, checkoutMode: checkoutMode, refresh: refresh, orderId: orderId, cardReference: cardReference, orderType: orderType, userDetails: userDetails, displaySplit: displaySplit, advancePayment: advancePayment, shipmentId: shipmentId) { (response, error) in
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
| orderId | String? | no |  |   
| cardReference | String? | no | Card reference id of user's debit or credit card. |   
| orderType | String | yes | The order type of shipment * HomeDelivery - If the customer wants the order home-delivered * PickAtStore - If the customer wants the handover of an order at the store itself. |   
| userDetails | String? | no | URIencoded JSON containing details of an anonymous user. |   
| displaySplit | Bool? | no | Display Split Payment Option or not |   
| advancePayment | Bool? | no | Display Advance Payment Options or Normal |   
| shipmentId | String? | no |  |  



Retrieve payment options and aggregator for point-of-sale (POS).

*Returned Response:*




[PaymentModeRouteResponse](#PaymentModeRouteResponse)

Success




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
        "save_card": true,
        "types": [],
        "networks": [],
        "banks": []
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
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Corporation Bank",
            "code": "CORP",
            "bank_name": "Corporation Bank",
            "bank_code": "CORP",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_CORP",
            "display_priority": 18,
            "display_name": "Corporation Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Punjab National Bank - Corporate Banking",
            "code": "PUNB_C",
            "bank_name": "Punjab National Bank - Corporate Banking",
            "bank_code": "PUNB_C",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "PUNB_C",
            "display_priority": 19,
            "display_name": "Punjab National Bank - Corporate Banking"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Canara Bank",
            "code": "CNRB",
            "bank_name": "Canara Bank",
            "bank_code": "CNRB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_CANR",
            "display_priority": 20,
            "display_name": "Canara Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Saraswat Co-operative Bank",
            "code": "SRCB",
            "bank_name": "Saraswat Co-operative Bank",
            "bank_code": "SRCB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "SRCB",
            "display_priority": 21,
            "display_name": "Saraswat Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Deutsche Bank",
            "code": "DEUT",
            "bank_name": "Deutsche Bank",
            "bank_code": "DEUT",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_DEUT",
            "display_priority": 22,
            "display_name": "Deutsche Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Dhanlaxmi Bank",
            "code": "DLXB",
            "bank_name": "Dhanlaxmi Bank",
            "bank_code": "DLXB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "DLXB",
            "display_priority": 24,
            "display_name": "Dhanlaxmi Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Oriental Bank of Commerce",
            "code": "ORBC",
            "bank_name": "Oriental Bank of Commerce",
            "bank_code": "ORBC",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "ORBC",
            "display_priority": 25,
            "display_name": "Oriental Bank of Commerce"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Punjab National Bank - Retail Banking",
            "code": "PUNB_R",
            "bank_name": "Punjab National Bank - Retail Banking",
            "bank_code": "PUNB_R",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "PUNB_R",
            "display_priority": 26,
            "display_name": "Punjab National Bank - Retail Banking"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "State Bank of Bikaner and Jaipur",
            "code": "SBBJ",
            "bank_name": "State Bank of Bikaner and Jaipur",
            "bank_code": "SBBJ",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SBBJ",
            "display_priority": 27,
            "display_name": "State Bank of Bikaner and Jaipur"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Indian Overseas Bank",
            "code": "IOBA",
            "bank_name": "Indian Overseas Bank",
            "bank_code": "IOBA",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_IOB",
            "display_priority": 28,
            "display_name": "Indian Overseas Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "State Bank of Travancore",
            "code": "SBTR",
            "bank_name": "State Bank of Travancore",
            "bank_code": "SBTR",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SBT",
            "display_priority": 29,
            "display_name": "State Bank of Travancore"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Airtel Payments Bank",
            "code": "AIRP",
            "bank_name": "Airtel Payments Bank",
            "bank_code": "AIRP",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "AIRP",
            "display_priority": 30,
            "display_name": "Airtel Payments Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Development Bank of Singapore",
            "code": "DBSS",
            "bank_name": "Development Bank of Singapore",
            "bank_code": "DBSS",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "DBSS",
            "display_priority": 31,
            "display_name": "Development Bank of Singapore"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Vijaya Bank",
            "code": "VIJB",
            "bank_name": "Vijaya Bank",
            "bank_code": "VIJB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_VJYB",
            "display_priority": 32,
            "display_name": "Vijaya Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "NKGSB Co-operative Bank",
            "code": "NKGS",
            "bank_name": "NKGSB Co-operative Bank",
            "bank_code": "NKGS",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NKGS",
            "display_priority": 33,
            "display_name": "NKGSB Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "RBL Bank",
            "code": "RATN",
            "bank_name": "RBL Bank",
            "bank_code": "RATN",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "RATN",
            "display_priority": 35,
            "display_name": "RBL Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Bank of Baroda - Retail Banking",
            "code": "BARB_R",
            "bank_name": "Bank of Baroda - Retail Banking",
            "bank_code": "BARB_R",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "BARB_R",
            "display_priority": 36,
            "display_name": "Bank of Baroda - Retail Banking"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Karnataka Bank",
            "code": "KARB",
            "bank_name": "Karnataka Bank",
            "bank_code": "KARB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_KARN",
            "display_priority": 37,
            "display_name": "Karnataka Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Tamilnadu State Apex Co-operative Bank",
            "code": "TNSC",
            "bank_name": "Tamilnadu State Apex Co-operative Bank",
            "bank_code": "TNSC",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "TNSC",
            "display_priority": 38,
            "display_name": "Tamilnadu State Apex Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Tamilnadu Mercantile Bank",
            "code": "TMBL",
            "bank_name": "Tamilnadu Mercantile Bank",
            "bank_code": "TMBL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "TMBL",
            "display_priority": 40,
            "display_name": "Tamilnadu Mercantile Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Lakshmi Vilas Bank - Retail Banking",
            "code": "LAVB_R",
            "bank_name": "Lakshmi Vilas Bank - Retail Banking",
            "bank_code": "LAVB_R",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "LAVB_R",
            "display_priority": 42,
            "display_name": "Lakshmi Vilas Bank - Retail Banking"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Dena Bank",
            "code": "BKDN",
            "bank_name": "Dena Bank",
            "bank_code": "BKDN",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "BKDN",
            "display_priority": 43,
            "display_name": "Dena Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Federal Bank",
            "code": "FDRL",
            "bank_name": "Federal Bank",
            "bank_code": "FDRL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_FED",
            "display_priority": 44,
            "display_name": "Federal Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Indian Bank",
            "code": "IDIB",
            "bank_name": "Indian Bank",
            "bank_code": "IDIB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_INDB",
            "display_priority": 45,
            "display_name": "Indian Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "South Indian Bank",
            "code": "SIBL",
            "bank_name": "South Indian Bank",
            "bank_code": "SIBL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SOIB",
            "display_priority": 46,
            "display_name": "South Indian Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "IDBI",
            "code": "IBKL",
            "bank_name": "IDBI",
            "bank_code": "IBKL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "IBKL",
            "display_priority": 49,
            "display_name": "IDBI"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Karur Vysya Bank",
            "code": "KVBL",
            "bank_name": "Karur Vysya Bank",
            "bank_code": "KVBL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_KVB",
            "display_priority": 50,
            "display_name": "Karur Vysya Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Punjab & Sind Bank",
            "code": "PSIB",
            "bank_name": "Punjab & Sind Bank",
            "bank_code": "PSIB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "PSIB",
            "display_priority": 52,
            "display_name": "Punjab & Sind Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "UCO Bank",
            "code": "UCBA",
            "bank_name": "UCO Bank",
            "bank_code": "UCBA",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "UCBA",
            "display_priority": 53,
            "display_name": "UCO Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Bank of Bahrein and Kuwait",
            "code": "BBKM",
            "bank_name": "Bank of Bahrein and Kuwait",
            "bank_code": "BBKM",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "BBKM",
            "display_priority": 54,
            "display_name": "Bank of Bahrein and Kuwait"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Yes Bank",
            "code": "YESB",
            "bank_name": "Yes Bank",
            "bank_code": "YESB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_YESB",
            "display_priority": 55,
            "display_name": "Yes Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Punjab & Maharashtra Co-operative Bank",
            "code": "PMCB",
            "bank_name": "Punjab & Maharashtra Co-operative Bank",
            "bank_code": "PMCB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "PMCB",
            "display_priority": 56,
            "display_name": "Punjab & Maharashtra Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Bank of India",
            "code": "BKID",
            "bank_name": "Bank of India",
            "bank_code": "BKID",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_BOI",
            "display_priority": 57,
            "display_name": "Bank of India"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Bank of Maharashtra",
            "code": "MAHB",
            "bank_name": "Bank of Maharashtra",
            "bank_code": "MAHB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_BOM",
            "display_priority": 58,
            "display_name": "Bank of Maharashtra"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "IDFC Bank",
            "code": "IDFB",
            "bank_name": "IDFC Bank",
            "bank_code": "IDFB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "IDFB",
            "display_priority": 59,
            "display_name": "IDFC Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Janata Sahakari Bank (Pune)",
            "code": "JSBP",
            "bank_name": "Janata Sahakari Bank (Pune)",
            "bank_code": "JSBP",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "JSBP",
            "display_priority": 60,
            "display_name": "Janata Sahakari Bank (Pune)"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Shamrao Vithal Co-operative Bank",
            "code": "SVCB",
            "bank_name": "Shamrao Vithal Co-operative Bank",
            "bank_code": "SVCB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "SVCB",
            "display_priority": 61,
            "display_name": "Shamrao Vithal Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Cosmos Co-operative Bank",
            "code": "COSB",
            "bank_name": "Cosmos Co-operative Bank",
            "bank_code": "COSB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "COSB",
            "display_priority": 62,
            "display_name": "Cosmos Co-operative Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "State Bank of Mysore",
            "code": "SBMY",
            "bank_name": "State Bank of Mysore",
            "bank_code": "SBMY",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SBM",
            "display_priority": 63,
            "display_name": "State Bank of Mysore"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Andhra Bank",
            "code": "ANDB",
            "bank_name": "Andhra Bank",
            "bank_code": "ANDB",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "ANDB",
            "display_priority": 65,
            "display_name": "Andhra Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Jammu and Kashmir Bank",
            "code": "JAKA",
            "bank_name": "Jammu and Kashmir Bank",
            "bank_code": "JAKA",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_JNK",
            "display_priority": 66,
            "display_name": "Jammu and Kashmir Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "United Bank of India",
            "code": "UTBI",
            "bank_name": "United Bank of India",
            "bank_code": "UTBI",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "UTBI",
            "display_priority": 67,
            "display_name": "United Bank of India"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Lakshmi Vilas Bank - Corporate Banking",
            "code": "LAVB_C",
            "bank_name": "Lakshmi Vilas Bank - Corporate Banking",
            "bank_code": "LAVB_C",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "LAVB_C",
            "display_priority": 69,
            "display_name": "Lakshmi Vilas Bank - Corporate Banking"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "State Bank of Patiala",
            "code": "STBP",
            "bank_name": "State Bank of Patiala",
            "bank_code": "STBP",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_SBP",
            "display_priority": 70,
            "display_name": "State Bank of Patiala"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "DCB Bank",
            "code": "DCBL",
            "bank_name": "DCB Bank",
            "bank_code": "DCBL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "DCBL",
            "display_priority": 71,
            "display_name": "DCB Bank"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Union Bank of India",
            "code": "UBIN",
            "bank_name": "Union Bank of India",
            "bank_code": "UBIN",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "NB_UBI",
            "display_priority": 73,
            "display_name": "Union Bank of India"
          },
          {
            "aggregator_name": "Razorpay",
            "name": "Standard Chartered Bank",
            "code": "SCBL",
            "bank_name": "Standard Chartered Bank",
            "bank_code": "SCBL",
            "url": "https://hdn-1.fynd.com/payment/NB_generic.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/NB_generic.png",
              "large": "https://hdn-1.fynd.com/payment/NB_generic.png"
            },
            "merchant_code": "SCBL",
            "display_priority": 74,
            "display_name": "Standard Chartered Bank"
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
            "code": "PAYTM",
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
            "wallet_name": "Mobikwik",
            "wallet_code": "mobikwik",
            "name": "Mobikwik",
            "display_name": "Mobikwik",
            "code": "MOBIKWIK",
            "wallet_id": 5,
            "merchant_code": "MOBIKWIK",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/mobikwik_logo_small.png",
              "large": "https://hdn-1.fynd.com/payment/mobikwik_logo_small.png"
            },
            "aggregator_name": "Juspay",
            "display_priority": 3
          },
          {
            "wallet_name": "Ola Money",
            "wallet_code": "olamoney",
            "name": "Ola Money",
            "display_name": "Ola Money",
            "code": "OLAMONEY",
            "wallet_id": 6,
            "merchant_code": "OLAMONEY",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/olamoney.png",
              "large": "https://hdn-1.fynd.com/payment/olamoney.png"
            },
            "aggregator_name": "Razorpay",
            "display_priority": 4
          },
          {
            "wallet_name": "Amazon Pay",
            "wallet_code": "amazonpay",
            "name": "Amazon Pay",
            "display_name": "Amazon Pay",
            "code": "AMAZONPAY",
            "wallet_id": 10,
            "merchant_code": "AMAZONPAY",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/amazon-pay.png",
              "large": "https://hdn-1.fynd.com/payment/amazon-pay.png"
            },
            "aggregator_name": "Razorpay",
            "display_priority": 9
          },
          {
            "wallet_name": "PayPal",
            "wallet_code": "paypal",
            "name": "PayPal",
            "display_name": "PayPal",
            "code": "PAYPAL",
            "wallet_id": 11,
            "merchant_code": "PAYPAL",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/paypal.jpg",
              "large": "https://hdn-1.fynd.com/payment/paypal.jpg"
            },
            "aggregator_name": "Razorpay",
            "display_priority": 10
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
              "large": "https://hdn-1.fynd.com/payment/upi_150x100.png",
              "small": "https://hdn-1.fynd.com/payment/upi_100x78.png"
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
      },
      {
        "name": "EMI",
        "display_priority": 18,
        "payment_mode_id": 19,
        "display_name": "Easy EMI",
        "list": [
          {
            "aggregator_name": "Razorpay",
            "name": "EMI",
            "display_name": "Easy EMI",
            "code": "EMI",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
              "small": "https://hdn-1.fynd.com/payment/Pos+Logo.png"
            },
            "merchant_code": "EMI"
          }
        ]
      },
      {
        "name": "JUSPAYPG",
        "display_priority": 18,
        "payment_mode_id": 23,
        "display_name": "Pay Using Juspay",
        "list": [
          {
            "aggregator_name": "Juspay",
            "name": "JUSPAYPG",
            "display_name": "Pay Using Juspay",
            "code": "JUSPAYPG",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/netbanking.png",
              "small": "https://hdn-1.fynd.com/payment/netbanking.png"
            },
            "merchant_code": "JUSPAYPG"
          }
        ]
      },
      {
        "name": "PG_PAYMENT",
        "display_priority": 20,
        "display_name": "Other payment gateway",
        "list": [
          {
            "aggregator_name": "Stripe",
            "name": "STRIPEPG",
            "display_name": "Pay using Stripe",
            "code": "STRIPEPG",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
              "small": "https://hdn-1.fynd.com/payment/Pos+Logo.png"
            },
            "merchant_code": "STRIPEPG"
          },
          {
            "aggregator_name": "Ccavenue",
            "name": "CCAVENUEPG",
            "display_name": "Pay using Ccavenue",
            "code": "CCAVENUEPG",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
              "small": "https://hdn-1.fynd.com/payment/Pos+Logo.png"
            },
            "merchant_code": "CCAVENUEPG"
          },
          {
            "aggregator_name": "Payumoney",
            "name": "PAYUMONEYPG",
            "display_name": "Pay using Payumoney",
            "code": "PAYUMONEYPG",
            "logo_url": {
              "large": "https://fynd-obscuro-media-new.s3.amazonaws.com/payment/payu_logo_large.png",
              "small": "https://fynd-obscuro-media-new.s3.amazonaws.com/payment/payu_logo_small.png"
            },
            "merchant_code": "PAYUMONEYPG"
          },
          {
            "aggregator_name": "Payubiz",
            "name": "PAYUBIZPG",
            "display_name": "Pay using Payubiz",
            "code": "PAYUBIZPG",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/payu.png",
              "small": "https://hdn-1.fynd.com/payment/payu.png"
            },
            "merchant_code": "PAYUBIZPG"
          }
        ]
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
            "code": "SIMPL",
            "merchant_code": "SIMPL",
            "logo": "https://hdn-1.fynd.com/payment/simpl_logo.png",
            "logo_url": {
              "small": "https://hdn-1.fynd.com/payment/simpl_logo.png",
              "large": "https://hdn-1.fynd.com/payment/simpl_logo.png"
            }
          },
          {
            "aggregator_name": "Rupifi",
            "name": "RUPIFIPG",
            "display_name": "Pay using Rupifi",
            "code": "RUPIFIPG",
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/Rupifi.png",
              "small": "https://hdn-1.fynd.com/payment/Rupifi.png"
            },
            "merchant_code": "RUPIFIPG"
          }
        ]
      }
    ]
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


#### initialisePayment
Initialize payment.




```swift
platformClient.application("<APPLICATION_ID>").payment.initialisePayment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentInitializationRequest | yes | Request body |


Start the payment initiation process for UPI and QR code.

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
Check and update payment status.




```swift
platformClient.application("<APPLICATION_ID>").payment.checkAndUpdatePaymentStatus(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentStatusUpdateRequest | yes | Request body |


Verify and modify the status of a payment.

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


#### resendOrCancelPayment
Resend or cancel payment.




```swift
platformClient.application("<APPLICATION_ID>").payment.resendOrCancelPayment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ResendOrCancelPaymentRequest | yes | Request body |


Resend or cancel a payment link.

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


#### paymentStatusBulk
Payment status bulk.




```swift
platformClient.application("<APPLICATION_ID>").payment.paymentStatusBulk(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentStatusBulkHandlerRequest | yes | Request body |


Retrieve the status of multiple payments in bulk.

*Returned Response:*




[PaymentStatusBulkHandlerResponse](#PaymentStatusBulkHandlerResponse)

Success. Returns the status of payment. Check the example shown below or refer `PaymentConfirmationResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "status": 0,
  "success": "true",
  "count": 2,
  "data": [
    {
      "merchant_order_id": "FY63C7B7D860DFC8F71A",
      "payment_object_list": [
        {
          "id": "FY63C7B7D860DFC8F71A",
          "payment_id": "123",
          "amount_in_paisa": "10000",
          "currency": "INR",
          "current_status": "started",
          "all_status": [
            "started",
            "pending",
            "complete"
          ],
          "payment_mode": "Udhaari",
          "payment_mode_identifier": "Udhaari",
          "payment_gateway": "Fynd",
          "application_id": "5cc04264ad924cea93ded855",
          "company_id": "1",
          "collected_by": "fynd",
          "refunded_by": "fynd",
          "created_on": "2023-01-18 14:41:53",
          "modified_on": "2023-01-18 14:41:53",
          "user_object": {
            "id": "615d39cf8a3b80b2427a4644",
            "email": "pratikpatel@gofynd.com",
            "mobile_number": "8879805874",
            "merchant_user_id": "615d39cf8a3b80b2427a4644"
          },
          "aggregator_payment_object": {
            "trans_id": "123"
          },
          "refund_object": {}
        },
        {
          "id": "FY63C7B7D860DFC8F71A",
          "payment_id": "123",
          "amount_in_paisa": "2180000",
          "currency": "INR",
          "current_status": "started",
          "all_status": [
            "started",
            "pending",
            "complete"
          ],
          "payment_mode": "UPI",
          "payment_mode_identifier": "UPI",
          "payment_gateway": "Razorpay",
          "application_id": "5cc04264ad924cea93ded855",
          "company_id": "1",
          "collected_by": "fynd",
          "refunded_by": "fynd",
          "created_on": "2023-01-18 14:41:53",
          "modified_on": "2023-01-18 14:41:53",
          "user_object": {
            "id": "615d39cf8a3b80b2427a4644",
            "email": "pratikpatel@gofynd.com",
            "mobile_number": "8879805874",
            "merchant_user_id": "615d39cf8a3b80b2427a4644"
          },
          "aggregator_payment_object": {
            "trans_id": "123"
          },
          "refund_object": {}
        }
      ]
    }
  ]
}
```
</details>









---


#### updatePaymentSession
Update payment session.




```swift
platformClient.application("<APPLICATION_ID>").payment.updatePaymentSession(gid: gid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| gid | String | yes | global identifier of the entity (e.g. order, cart etc.) against which payment_session was initiated. This is generated by Fynd payments platform and is unique. |  
| body | PaymentSessionRequestSerializer | yes | Request body |


Modify the details of a payment session.

*Returned Response:*




[PaymentSessionResponseSerializer](#PaymentSessionResponseSerializer)

Success. Returns the status of Update or not. Check the example shown below or refer `PaymentSessionResponseSerializer` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; status_update_success</i></summary>

```json
{
  "summary": "payment status updated successfully",
  "value": {
    "gid": "Payment Received",
    "status": "initiated",
    "total_amount": 100,
    "currency": "INR",
    "platform_transaction_details": [
      {
        "object": "platform_payment",
        "transaction_id": "pay_wtt5r23mpebexcjsxzylyjhn7a",
        "payment_id": "pay_wtt5r23mpebexcjsxzylyjhn7a"
      }
    ]
  }
}
```
</details>

</details>









---


#### updateRefundSession
Update refund session.




```swift
platformClient.application("<APPLICATION_ID>").payment.updateRefundSession(gid: gid, requestId: requestId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| gid | String | yes | global identifier of the entity (e.g. order, cart etc.) against which payment_session was initiated. This is generated by Fynd payments platform and is unique. |   
| requestId | String | yes | A unique id that was used to initiate a refund session. This is generated by Fynd platform and is usually shipment_id. |  
| body | RefundSessionRequestSerializer | yes | Request body |


Modify the details of a refund session.

*Returned Response:*




[RefundSessionResponseSerializer](#RefundSessionResponseSerializer)

Returns the response weather it is success or not. Check the example shown below or refer `RefundSessionResponseSerializer` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; status_update_success</i></summary>

```json
{
  "summary": "refund status is updated successfully",
  "value": {
    "gid": "FY615DE25839C4AF3A1A",
    "status": "initiated",
    "total_refund_amount": 100,
    "currency": "INR",
    "platform_refund_details": [
      {
        "transaction_id": "pay_wtt5r23mpebexcjsxzylyjhn7a",
        "refund_id": "act_4lan4lrf2bxexdbinmqoln4nda"
      }
    ]
  }
}
```
</details>

</details>









---




#### oauthGetUrl
Get OAuth URL.




```swift
platformClient.application("<APPLICATION_ID>").payment.oauthGetUrl(aggregator: aggregator, successRedirectUrl: successRedirectUrl, failureRedirectUrl: failureRedirectUrl) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregator | String | yes | aggregator |   
| successRedirectUrl | String? | no |  |   
| failureRedirectUrl | String? | no |  |  



Retrieve an OAuth URL for PG API authentication.

*Returned Response:*




[GetOauthUrlResponse](#GetOauthUrlResponse)

Success. Returns the status of payment. Check the example shown below or refer `GetOauthUrlResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "url": "https://auth.razorpay.com/authorize?client_id=LlCp1Mj6YW6jFc&response_type=code&redirect_uri=http://localhost:8000/v1.0/partnership/authorize/razorpay&scope=read_only&state=000000000000000000000001"
}
```
</details>









---


#### revokeOauthToken
Revoke OAuth token.




```swift
platformClient.application("<APPLICATION_ID>").payment.revokeOauthToken(aggregator: aggregator) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregator | String | yes | aggregator_slug |  



Invalidate an OAuth token.

*Returned Response:*




[RevokeOAuthToken](#RevokeOAuthToken)

Success. Returns the status of revokation. Check the example shown below or refer `RevokeOAuthTokenSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Token Revoked"
}
```
</details>









---




#### repaymentDetails
Repayment details for BNPL.




```swift
platformClient.application("<APPLICATION_ID>").payment.repaymentDetails(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | RepaymentDetailsSerialiserPayAll | yes | Request body |


Retrieve information about repayment transactions.

*Returned Response:*




[RepaymentResponse](#RepaymentResponse)

Success. Returns the status of API. Check the example shown below or refer `RepaymentResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "status": true
  }
}
```
</details>









---


#### merchantOnBoarding
Merchant onboarding for BNPL.




```swift
platformClient.application("<APPLICATION_ID>").payment.merchantOnBoarding(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | MerchantOnBoardingRequest | yes | Request body |


Initiate the onboarding process for a merchant.

*Returned Response:*




[MerchantOnBoardingResponse](#MerchantOnBoardingResponse)

Success. Returns the status of API. Check the example shown below or refer `RepaymentResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "status": true,
    "status_code": 200,
    "message": "Merchant onboarding details saved"
  }
}
```
</details>









---


#### verifyCustomerForPayment
Verify customer for payment.




```swift
platformClient.application("<APPLICATION_ID>").payment.verifyCustomerForPayment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ValidateCustomerRequest | yes | Request body |


Retrieve a link for making payments.

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




#### getPaymentLink
Get payment link.




```swift
platformClient.application("<APPLICATION_ID>").payment.getPaymentLink(paymentLinkId: paymentLinkId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| paymentLinkId | String? | no |  |  



Retrieve a link for making payments.

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
Create payment link.




```swift
platformClient.application("<APPLICATION_ID>").payment.createPaymentLink(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreatePaymentLinkRequest | yes | Request body |


Generate a new link for accepting payments.

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


#### pollingPaymentLink
Polling payment link.




```swift
platformClient.application("<APPLICATION_ID>").payment.pollingPaymentLink(paymentLinkId: paymentLinkId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| paymentLinkId | String? | no |  |  



Continuously check the status of a payment link.

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


#### resendPaymentLink
Resend payment link.




```swift
platformClient.application("<APPLICATION_ID>").payment.resendPaymentLink(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CancelOrResendPaymentLinkRequest | yes | Request body |


Reissue a payment link to a recipient.

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
Cancel payment link.




```swift
platformClient.application("<APPLICATION_ID>").payment.cancelPaymentLink(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CancelOrResendPaymentLinkRequest | yes | Request body |


Deactivate and cancel a payment link.

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




#### getPaymentModeControlRoutes
Get details for the given offline / advance payment mode for merchant




```swift
platformClient.application("<APPLICATION_ID>").payment.getPaymentModeControlRoutes(mode: mode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| mode | String | yes | offline / advance  modes to get the payment modes |  



Use this API to get details for the given offline / advance payment mode for merchant

*Returned Response:*




[PlatformPaymentModeResponse](#PlatformPaymentModeResponse)

Success. Returns user cod limit , remaining limit and usage of user for COD. Check the example shown below or refer `GetUserCODLimitResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "get offline / advance payment mode details",
  "items": [
    {
      "display_name": "Store OS",
      "business_unit": "pos",
      "config": [
        {
          "anonymous": false,
          "charges": 100,
          "charges_max_value": 1000,
          "charges_min_value": 0,
          "max_order_value": 30000,
          "min_order_value": 0,
          "is_active": true,
          "name": "Cash on Delivery (COD)",
          "slug": "cod",
          "user_limit": 10000
        }
      ]
    }
  ]
}
```
</details>









---


#### setMerchantModeControlRoutes
Update offline payment mode details for the merchant




```swift
platformClient.application("<APPLICATION_ID>").payment.setMerchantModeControlRoutes(mode: mode, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| mode | String | yes | offline / advance payment mode |  
| body | MerchantPaymentModeRequest | yes | Request body |


Use this API to update given offline / advance payment mode details for the merchant

*Returned Response:*




[PlatformPaymentModeResponse](#PlatformPaymentModeResponse)

Success. Returns true or false for user cod option for payment. Check the example shown below or refer `GetUserCODLimitResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "",
  "items": [
    {
      "anonymous": false,
      "charges": 100,
      "charges_max_value": 1000,
      "charges_min_value": 0,
      "max_order_value": 30000,
      "min_order_value": 0,
      "is_active": true,
      "name": "Cash on Delivery (COD)",
      "slug": "cod",
      "user_limit": 10000
    }
  ]
}
```
</details>









---


#### getPaymentModeCustomConfig
Get details of advance payment custom configurations of merchant




```swift
platformClient.application("<APPLICATION_ID>").payment.getPaymentModeCustomConfig(mode: mode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| mode | String | yes | offline / advance  mode |  



Use this API to Get details of advance payment custom configurations of merchant

*Returned Response:*




[PaymentCustomConfigResponseSchema](#PaymentCustomConfigResponseSchema)

Success. Get Advance Payment Custom Configurations.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "",
  "items": [
    {
      "display_name": "Store OS",
      "business_unit": "pos",
      "custom_config": {
        "customer": {
          "restriction": "ALL_CUSTOMER",
          "groups": [
            1,
            2,
            3
          ],
          "types": [
            "ALL_CUSTOMER",
            "CUSTOMER_GROUP",
            "REGISTERED_CUSTOMER"
          ]
        },
        "payment_mode": {
          "available": true,
          "pre_order": [
            "NB",
            "UPI"
          ],
          "post_order": [
            "NB",
            "UPI"
          ]
        },
        "min_order_value": 50
      }
    },
    {
      "display_name": "StoreFront",
      "business_unit": "storefront",
      "custom_config": {
        "customer": {
          "restriction": "ALL_CUSTOMER",
          "groups": [
            1,
            2,
            3
          ],
          "types": [
            "ALL_CUSTOMER",
            "CUSTOMER_GROUP",
            "REGISTERED_CUSTOMER"
          ]
        },
        "payment_mode": {
          "available": true,
          "pre_order": [
            "NB",
            "UPI"
          ],
          "post_order": [
            "NB",
            "UPI"
          ]
        },
        "min_order_value": 50
      }
    }
  ]
}
```
</details>









---


#### setPaymentModeCustomConfig
Update details of advance payment custom configurations of merchant




```swift
platformClient.application("<APPLICATION_ID>").payment.setPaymentModeCustomConfig(mode: mode, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| mode | String | yes | offline / advance payment mode |  
| body | PaymentCustomConfigRequestSchema | yes | Request body |


Use this API to update given details of advance payment custom configurations of merchant

*Returned Response:*




[PaymentCustomConfigResponseSchema](#PaymentCustomConfigResponseSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "",
  "items": [
    {
      "display_name": "Store OS",
      "business_unit": "pos",
      "custom_config": {
        "customer": {
          "restriction": "ALL_CUSTOMER",
          "groups": [
            1,
            2,
            3
          ],
          "types": [
            "ALL_CUSTOMER",
            "CUSTOMER_GROUP",
            "REGISTERED_CUSTOMER"
          ]
        },
        "payment_mode": {
          "available": true,
          "pre_order": [
            "NB",
            "UPI"
          ],
          "post_order": [
            "NB",
            "UPI"
          ]
        },
        "min_order_value": 50
      }
    },
    {
      "display_name": "StoreFront",
      "business_unit": "storefront",
      "custom_config": {
        "customer": {
          "restriction": "ALL_CUSTOMER",
          "groups": [
            1,
            2,
            3
          ],
          "types": [
            "ALL_CUSTOMER",
            "CUSTOMER_GROUP",
            "REGISTERED_CUSTOMER"
          ]
        },
        "payment_mode": {
          "available": true,
          "pre_order": [
            "NB",
            "UPI"
          ],
          "post_order": [
            "NB",
            "UPI"
          ]
        },
        "min_order_value": 50
      }
    }
  ]
}
```
</details>









---


#### getPaymentSession
API to get payment session details




```swift
platformClient.application("<APPLICATION_ID>").payment.getPaymentSession(gid: gid, lineItem: lineItem) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| gid | String | yes | global identifier of the entity (e.g. order, cart etc.) against which payment session was initiated. This is generated by Fynd payments platform and is unique. |   
| lineItem | Bool? | no | line-item to add extra data into response (e.g. cart details) |  



Use this API to fetch the payment session details for given order ID or Transaction ID.

*Returned Response:*




[PaymentSessionSerializer](#PaymentSessionSerializer)

Success. Returns the details of payment session. Check the example shown below or refer `PaymentSessionSerializer` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "gid": "TR9C4AF3A615DE251A23",
  "status": "complete",
  "total_amount": 10000,
  "currency": "INR",
  "payment_details": {
    "gid": "TR9C4AF3A615DE251A23",
    "payment_mode": "JIOPAY",
    "aggregator_order_id": "10772307355840195000",
    "aggregator_customer_id": "63073b48e8d90abe20c42eb8",
    "payment_mode_identifier": "JIOPAY",
    "g_user_id": "63073b48e8d90abe20c42eb8",
    "payment_id": "10772307355847914000",
    "mode": "live",
    "amount": 56700,
    "currency": "INR",
    "cancel_url": "",
    "success_url": "",
    "amount_captured": 56700,
    "status": "refund_done",
    "payment_methods": [],
    "meta": {
      "cod_eligibile": true
    }
  },
  "refund_details": [
    {
      "currency": "INR",
      "request_id": "16787880654271907518",
      "status": "refund_done",
      "created": "2023-03-14 10:54:24",
      "payment_id": "10772307355847914000",
      "refund_utr": "10772307355847914000",
      "amount": 56700
    }
  ],
  "cart_details": {
    "cart_value": 56700,
    "total_quantity": 10,
    "articles": [],
    "items": {}
  }
}
```
</details>









---


#### getMerchantPaymentOption
Get merchant payment option




```swift
platformClient.application("<APPLICATION_ID>").payment.getMerchantPaymentOption() { (response, error) in
    // Use response
}
```






Retrieve all the available Paymet Gateways for merchant and its offline payment mode details.

*Returned Response:*




[PlatformPaymentModeResponse](#PlatformPaymentModeResponse)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; merchant_payment_response_success</i></summary>

```json
{
  "summary": "List of active PGs for merchant and its offline payment configurations",
  "value": {
    "success": true,
    "message": "",
    "items": [
      {
        "online": {
          "is_active": true,
          "aggregators": [
            {
              "id": 1,
              "name": "Simpl",
              "logo": "https://hdn-1.fynd.com/payment/simpl-pg-logo.jpg"
            }
          ]
        },
        "offline": {
          "is_active": true,
          "payment_modes": {
            "cod": [
              {
                "name": "Cash on Delivery",
                "slug": "cod",
                "is_active": true,
                "logos": {
                  "small": "https://hdn-1.fynd.com/payment/cod.png",
                  "large": "https://hdn-1.fynd.com/payment/cod.png"
                }
              }
            ]
          }
        },
        "advance": {
          "is_active": true,
          "payment_modes": {
            "split": [
              {
                "name": "Split Payment",
                "slug": "split",
                "id": 48,
                "is_active": true
              }
            ]
          }
        }
      }
    ]
  }
}
```
</details>

</details>









---


#### patchMerchantPaymentOption
Patch merchant payment option




```swift
platformClient.application("<APPLICATION_ID>").payment.patchMerchantPaymentOption(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | MerchnatPaymentModeRequest | yes | Request body |


To updated online payment as active/inactive or offline payment configuration like cod charges, anonymous cod allowed flags.

*Returned Response:*




[PlatformPaymentModeResponse](#PlatformPaymentModeResponse)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; merchant_payment_response_success</i></summary>

```json
{
  "summary": "updated payment mode configurations.",
  "value": {
    "success": true,
    "message": "",
    "items": [
      {
        "aggregators": [
          {
            "id": 1,
            "name": "Simpl"
          }
        ]
      }
    ],
    "offline": {
      "is_active": true,
      "payment_modes": {
        "cod": {
          "name": "Cash on Delivery (COD)",
          "slug": "cod",
          "is_active": true
        }
      }
    }
  }
}
```
</details>

</details>









---


#### getMerchantRefundPriority
Get merchant refund priority




```swift
platformClient.application("<APPLICATION_ID>").payment.getMerchantRefundPriority(configType: configType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | configuration for merchant or customer |  



Get merchant refund priority.

*Returned Response:*




[RefundPriorityResponseSerializer](#RefundPriorityResponseSerializer)

Success. Returns the status of Update or not. Check the example shown below or refer `RefundPriorityResponseSerializer` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "summary": "success",
  "value": {
    "success": true,
    "message": "Created successfully",
    "apportion": true,
    "configuration": "merchant",
    "refund_sources_priority": [
      {
        "source": "back_to_online_source,",
        "description": "Back to online payment source",
        "priority": 0
      },
      {
        "source": "RONE",
        "description": "Rone wallet",
        "priority": 1
      },
      {
        "source": "FC",
        "description": "Fynd Cash",
        "priority": 2
      },
      {
        "source": "CreditNote",
        "description": "Credit Note",
        "priority": 3
      }
    ]
  }
}
```
</details>

</details>









---


#### createMerchantRefundPriority
Crete merchant refund priority




```swift
platformClient.application("<APPLICATION_ID>").payment.createMerchantRefundPriority(configType: configType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | configuration for merchant or customer |  
| body | RefundPriorityRequestSerializer | yes | Request body |


Crete merchant refund priority.

*Returned Response:*




[RefundPriorityResponseSerializer](#RefundPriorityResponseSerializer)

Success. Returns the status of Update or not. Check the example shown below or refer `RefundPriorityResponseSerializer` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "summary": "success",
  "value": {
    "success": true,
    "message": "Created successfully",
    "apportion": true,
    "configuration": "merchant",
    "refund_sources_priority": [
      {
        "source": "back_to_online_source,",
        "description": "Back to online payment source",
        "priority": 0
      },
      {
        "source": "RONE",
        "description": "Rone wallet",
        "priority": 1
      },
      {
        "source": "FC",
        "description": "Fynd Cash",
        "priority": 2
      },
      {
        "source": "CreditNote",
        "description": "Credit Note",
        "priority": 3
      }
    ]
  }
}
```
</details>

</details>









---


#### updateMerchantRefundPriority
API to update merchant refund priority




```swift
platformClient.application("<APPLICATION_ID>").payment.updateMerchantRefundPriority(configType: configType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | configuration for merchant or customer |  
| body | RefundPriorityRequestSerializer | yes | Request body |


API to update merchant refund priority

*Returned Response:*




[RefundPriorityResponseSerializer](#RefundPriorityResponseSerializer)

Success. Returns the status of Update or not. Check the example shown below or refer `RefundPriorityResponseSerializer` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "summary": "success",
  "value": {
    "success": true,
    "message": "Created successfully",
    "apportion": true,
    "configuration": "merchant",
    "refund_sources_priority": [
      {
        "source": "back_to_online_source,",
        "description": "Back to online payment source",
        "priority": 0
      },
      {
        "source": "RONE",
        "description": "Rone wallet",
        "priority": 1
      },
      {
        "source": "FC",
        "description": "Fynd Cash",
        "priority": 2
      },
      {
        "source": "CreditNote",
        "description": "Credit Note",
        "priority": 3
      }
    ]
  }
}
```
</details>

</details>









---


#### createPaymentOrder
Create Order




```swift
platformClient.application("<APPLICATION_ID>").payment.createPaymentOrder(body: body) { (response, error) in
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


#### getMerchantAggregatorAppVersion
Get app version required for Payment Mode.




```swift
platformClient.application("<APPLICATION_ID>").payment.getMerchantAggregatorAppVersion(aggregatorId: aggregatorId, businessUnit: businessUnit, device: device, paymentModeId: paymentModeId, subPaymentMode: subPaymentMode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregatorId | Int | yes | Aggregators Id |   
| businessUnit | String | yes |  |   
| device | String | yes |  |   
| paymentModeId | Int? | no |  |   
| subPaymentMode | String? | no |  |  



This api provide read operations on the app version required for Payment Mode or sub payment mode for an Aggregator.

*Returned Response:*




[AggregatorVersionResponse](#AggregatorVersionResponse)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; merchant_payment_response_success</i></summary>

```json
{
  "summary": "List of active PGs for merchant and its offline payment configurations",
  "value": {
    "success": true,
    "message": "",
    "items": {
      "is_equal_to": 13,
      "is_less_than": 12,
      "is_greater_than\"": 10
    }
  }
}
```
</details>

</details>









---


#### patchMerchantPaymentOptionVersion
Update app version required for Payment Mode.




```swift
platformClient.application("<APPLICATION_ID>").payment.patchMerchantPaymentOptionVersion(aggregatorId: aggregatorId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregatorId | Int | yes | Aggregators Id |  
| body | AggregatorControlRequest | yes | Request body |


This api provide wrote operations on the app version required for Payment Mode or sub payment mode for an Aggregator.

*Returned Response:*




[PlatformPaymentModeResponse](#PlatformPaymentModeResponse)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; merchant_payment_response_success</i></summary>

```json
{
  "summary": "updated payment mode configurations.",
  "value": {
    "success": true,
    "message": "request is being performed",
    "items": null
  }
}
```
</details>

</details>









---




#### getPaymentCodeOption
Get payment mode code.




```swift
platformClient.application("<APPLICATION_ID>").payment.getPaymentCodeOption() { (response, error) in
    // Use response
}
```






Retrieve options for payment codes.

*Returned Response:*




[GetPaymentCodeResponse](#GetPaymentCodeResponse)

List Order Beneficiary




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "description": "Successful Payment",
    "method_code": {
      "name": "Wallet",
      "networks": "network",
      "types": "",
      "codes": {
        "code": "W",
        "merchant_code": "MOBIKWIK",
        "MOBIKWIK": null,
        "name": "Mobikwik"
      }
    },
    "networks": [],
    "types": [],
    "name": "Net Banking",
    "codes": {
      "HDFC": {
        "merchant_code": "HDFC",
        "name": "HDFC Bank"
      },
      "ICIC": {
        "merchant_code": "ICIC",
        "name": "ICICI Bank"
      }
    },
    "CARD": {
      "codes": {
        "ICICI": {
          "merchant_code": "ICICI",
          "name": "ICICI Bank"
        },
        "AXIS": {
          "merchant_code": "AXIS",
          "name": "AXIS Bank"
        }
      },
      "networks": [
        "RUPAY",
        "VISA",
        "MASTERCARD",
        "MAESTRO",
        "AMERICANEXPRESS",
        "DINERSCLUB"
      ],
      "types": [
        "CREDIT",
        "DEBIT"
      ],
      "name": "CARD"
    }
  }
}
```
</details>









---




#### getMerchantAggregatorPaymentModeDetails
Get merchant aggregator payment mode details.




```swift
platformClient.application("<APPLICATION_ID>").payment.getMerchantAggregatorPaymentModeDetails(aggregatorId: aggregatorId, businessUnit: businessUnit, device: device) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregatorId | Int | yes | Aggregators Id |   
| businessUnit | String | yes |  |   
| device | String | yes |  |  



swagger not found. so operationId not found

*Returned Response:*




[PlatformPaymentModeResponse](#PlatformPaymentModeResponse)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "business_unit": "storefront",
  "device": "android",
  "is_active": true,
  "items": [
    {
      "id": 1,
      "is_active": true
    }
  ]
}
```
</details>









---


#### patchMerchantAggregatorPaymentModeDetails
Patch merchant aggregator payment mode details.




```swift
platformClient.application("<APPLICATION_ID>").payment.patchMerchantAggregatorPaymentModeDetails(aggregatorId: aggregatorId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| aggregatorId | Int | yes | Aggregators Id |  
| body | PlatformPaymentModeResponse | yes | Request body |


swagger not found. so operationId not found

*Returned Response:*




[PlatformPaymentModeResponse](#PlatformPaymentModeResponse)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "business_unit": "storefront",
  "device": "android",
  "is_active": true,
  "items": [
    {
      "id": 1,
      "is_active": true
    }
  ]
}
```
</details>









---


#### getPGConfigAggregators
Get PG (Payment Gateway) config aggregators.




```swift
platformClient.application("<APPLICATION_ID>").payment.getPGConfigAggregators() { (response, error) in
    // Use response
}
```






swagger not found. so operationId not found

*Returned Response:*




[PlatformPaymentModeResponse](#PlatformPaymentModeResponse)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "",
  "items": [
    {
      "id": 8,
      "name": "Jio",
      "slug": "jio",
      "logos": {
        "large": "",
        "small": ""
      },
      "is_active": true,
      "config": [
        "self",
        "fynd"
      ],
      "status": "active"
    }
  ]
}
```
</details>









---




### Schemas

 
 
 #### [PaymentGatewayConfigResponse](#PaymentGatewayConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregators | [[String: Any]]? |  yes  | List of all speceific Payment options with their Details. |
 | appId | String |  no  | Application Id to which Payment config Mapped |
 | excludedFields | [String] |  no  | List of all excluded  options with their Details. |
 | success | Bool |  no  | Response is successful or not |
 | created | Bool |  no  | Response is created or not |
 | displayFields | [String] |  no  | List of all included  options with their Details. |

---


 
 
 #### [ErrorCodeDescription](#ErrorCodeDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  | Error human understandable description. |
 | code | String |  no  | Error descrption code. |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [PaymentGatewayConfig](#PaymentGatewayConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secret | String |  no  | Secret Key of the payment aggregator |
 | configType | String |  no  | Config Type of the aggregator |
 | isActive | Bool? |  yes  | Enable or Disable Flag |
 | key | String |  no  | Api key of the payment aggregator |
 | merchantSalt | String |  no  | Merchant key of the payment aggregator |

---


 
 
 #### [PaymentGatewayConfigRequest](#PaymentGatewayConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  | Application Id to which Payment config Mapped |
 | isActive | Bool? |  yes  | Enable or Disable Flag |
 | aggregatorName | [PaymentGatewayConfig](#PaymentGatewayConfig)? |  yes  |  |

---


 
 
 #### [PaymentGatewayToBeReviewed](#PaymentGatewayToBeReviewed)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | [String] |  no  | List of added payment gateway |
 | success | Bool |  no  | Response is successful or not |

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


 
 
 #### [IntentAppErrorList](#IntentAppErrorList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | packageName | String? |  yes  | package_name |
 | code | String? |  yes  | code |

---


 
 
 #### [ProductCODData](#ProductCODData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [String: Any]? |  yes  | item id with its cod availability. |
 | codCharges | [CODChargesLimitsResponse](#CODChargesLimitsResponse)? |  yes  |  |

---


 
 
 #### [CODChargesLimitsResponse](#CODChargesLimitsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxCartValue | Double? |  yes  | max allowed cart value for cod order. |
 | minCartValue | Double? |  yes  | min allowed cart value for cod order. |
 | codCharge | Double? |  yes  | cod charges to be applied on order. |

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
 | packageName | String? |  yes  | package_name |
 | displayName | String? |  yes  | display_name |
 | code | String? |  yes  | code |
 | logos | [PaymentModeLogo](#PaymentModeLogo)? |  yes  |  |

---


 
 
 #### [PaymentModeList](#PaymentModeList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | remainingLimit | Double? |  yes  | Remaining limit |
 | cardBrand | String? |  yes  | card_brand |
 | cardFingerprint | String? |  yes  | card_fingerprint |
 | merchantCode | String? |  yes  | merchant code |
 | intentFlow | Bool? |  yes  | intent_flow |
 | code | String? |  yes  | code |
 | cardIssuer | String? |  yes  | card_issuer |
 | codLimitPerOrder | Double? |  yes  | Cod limit per order |
 | cardReference | String? |  yes  | card_reference |
 | cardType | String? |  yes  | card_type |
 | cardIsin | String? |  yes  | card_isin |
 | expMonth | Int? |  yes  | exp_month |
 | fyndVpa | String? |  yes  | fynd_vpa |
 | cardNumber | String? |  yes  | card_number |
 | displayPriority | Int? |  yes  | Dispaly Priority |
 | displayName | String? |  yes  | display name |
 | cardId | String? |  yes  | card_id |
 | retryCount | Int? |  yes  | retry_count |
 | cardName | String? |  yes  | card_name |
 | timeout | Int? |  yes  | timeout |
 | intentAppErrorDictList | [[IntentAppErrorList](#IntentAppErrorList)]? |  yes  | intent_app_error_dict_list |
 | cardBrandImage | String? |  yes  | card_brand_image |
 | expired | Bool? |  yes  | expired |
 | logoUrl | [PaymentModeLogo](#PaymentModeLogo)? |  yes  |  |
 | cardToken | String? |  yes  | card_token |
 | aggregatorName | String |  no  | aggregator_name |
 | codCharges | Double? |  yes  | cod charges to be applied on order. |
 | productCodData | [ProductCODData](#ProductCODData)? |  yes  |  |
 | codLimit | Double? |  yes  | cod limit |
 | intentApp | [[IntentApp](#IntentApp)]? |  yes  | intent_app |
 | nickname | String? |  yes  | nickname |
 | compliantWithTokenisationGuidelines | Bool? |  yes  | If card is tokenised or not |
 | expYear | Int? |  yes  | exp_year |
 | name | String? |  yes  | name |
 | intentAppErrorList | [String]? |  yes  | intent_app_error_list |

---


 
 
 #### [RootPaymentMode](#RootPaymentMode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | list | [[PaymentModeList](#PaymentModeList)]? |  yes  | Payment mode |
 | displayPriority | Int |  no  | Dispaly Priority |
 | addCardEnabled | Bool? |  yes  | Annonymous card flag |
 | saveCard | Bool? |  yes  | Card save or not |
 | isPayByCardPl | Bool? |  yes  | This flag will be true in case of Payment link payment through card |
 | displayName | String |  no  | Payment mode display name |
 | anonymousEnable | Bool? |  yes  | Annonymous card flag |
 | name | String |  no  | Payment mode name |
 | aggregatorName | String? |  yes  | Dispaly Priority |

---


 
 
 #### [PaymentOptions](#PaymentOptions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOption | [[RootPaymentMode](#RootPaymentMode)] |  no  | Payment options |

---


 
 
 #### [AggregatorRoute](#AggregatorRoute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any]? |  yes  | Data |
 | paymentFlowData | String? |  yes  | payment_flow_data |
 | paymentFlow | String? |  yes  | payment_flow |
 | apiLink | String? |  yes  | api_link |

---


 
 
 #### [PaymentDefaultSelection](#PaymentDefaultSelection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String? |  yes  | Default Selection Payment Mode |
 | identifier | String? |  yes  | Identifier for Payment Mode |
 | skip | Bool? |  yes  | Decide if the default payment mode will skip the payment options page altogether or just be preferred on the Frontend |

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

---


 
 
 #### [PaymentOptionAndFlow](#PaymentOptionAndFlow)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOption | [[RootPaymentMode](#RootPaymentMode)] |  no  | Payment options |
 | paymentFlows | [PaymentFlow](#PaymentFlow) |  no  |  |
 | paymentDefaultSelection | [PaymentDefaultSelection](#PaymentDefaultSelection)? |  yes  |  |

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


 
 
 #### [PaymentOptionsResponse](#PaymentOptionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOptions | [PaymentOptions](#PaymentOptions) |  no  |  |
 | success | Bool |  no  | Response is successful or not |
 | paymentBreakup | [String: Any]? |  yes  | Payment Breakup for advance payment |

---


 
 
 #### [PayoutCustomer](#PayoutCustomer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueExternalId | String? |  yes  | unique_external_id |
 | mobile | String? |  yes  | Customer Mobile No |
 | name | String? |  yes  | Customer Name |
 | email | String? |  yes  | Customer Email |
 | id | Int? |  yes  | Customer ID |

---


 
 
 #### [PayoutMoreAttributes](#PayoutMoreAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | branchName | String? |  yes  | Branch Name |
 | city | String? |  yes  | City |
 | accountNo | String? |  yes  | Account Number |
 | country | String? |  yes  | Country |
 | state | String? |  yes  | State |
 | accountHolder | String? |  yes  | Account Holder Name |
 | ifscCode | String? |  yes  | IFSC Code |
 | accountType | String? |  yes  | Account Type Saving or Current |
 | bankName | String? |  yes  | Name of Bank |

---


 
 
 #### [PayoutAggregator](#PayoutAggregator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregatorId | Int? |  yes  | aggregator_id |
 | aggregatorFundId | Int? |  yes  | aggregator_fund_id |
 | payoutDetailsId | Int? |  yes  | payout_details_id |

---


 
 
 #### [Payout](#Payout)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customers | [PayoutCustomer](#PayoutCustomer) |  no  |  |
 | moreAttributes | [PayoutMoreAttributes](#PayoutMoreAttributes) |  no  |  |
 | isDefault | Bool |  no  | default or not  |
 | payoutsAggregators | [[PayoutAggregator](#PayoutAggregator)]? |  yes  |  |
 | uniqueTransferNo | String |  no  | display priority of the payment mode |
 | isActive | Bool |  no  | Enable/DIsable Flag Payout |
 | transferType | String |  no  | transafer type |

---


 
 
 #### [PayoutsResponse](#PayoutsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Response is successful or not |
 | items | [[Payout](#Payout)] |  no  | contains list of PayoutSchema |

---


 
 
 #### [PayoutBankDetails](#PayoutBankDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ifscCode | String |  no  |  |
 | accountHolder | String? |  yes  |  |
 | state | String? |  yes  |  |
 | country | String? |  yes  |  |
 | accountType | String |  no  |  |
 | accountNo | String? |  yes  |  |
 | city | String? |  yes  |  |
 | bankName | String? |  yes  |  |
 | branchName | String? |  yes  |  |
 | pincode | Int? |  yes  |  |

---


 
 
 #### [PayoutRequest](#PayoutRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String |  no  | Aggregator Name |
 | users | [String: Any] |  no  | payout users object |
 | uniqueExternalId | String |  no  | Unique Id of Payout |
 | isActive | Bool |  no  | Enable or Disable Flag Payout |
 | bankDetails | [PayoutBankDetails](#PayoutBankDetails) |  no  |  |
 | transferType | String |  no  | transafer type |

---


 
 
 #### [PayoutResponse](#PayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentStatus | String |  no  | status of payment |
 | users | [String: Any] |  no  | users details object |
 | aggregator | String |  no  | Aggregator Name |
 | uniqueTransferNo | String |  no  | unique transfer no |
 | isActive | Bool |  no  | Enable or DIsable Flag Payout |
 | bankDetails | [String: Any] |  no  | payout bank_details object |
 | success | Bool |  no  | Response is successful or not |
 | transferType | String |  no  | transfer type |
 | created | Bool |  no  | created flag |
 | payouts | [String: Any] |  no  | payout  object |

---


 
 
 #### [UpdatePayoutResponse](#UpdatePayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool |  no  | Enable or Disable Default Payout |
 | isActive | Bool |  no  | Enable or DIsable Flag Payout |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [UpdatePayoutRequest](#UpdatePayoutRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool |  no  | Enable or Disable Default Payout |
 | isActive | Bool |  no  | Enable or Disable Flag Payout |
 | uniqueExternalId | String |  no  | Unique Id of Payout |

---


 
 
 #### [DeletePayoutResponse](#DeletePayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [SubscriptionPaymentMethodResponse](#SubscriptionPaymentMethodResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[String: Any]] |  no  | Subscription Payment Method Object |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [DeleteSubscriptionPaymentMethodResponse](#DeleteSubscriptionPaymentMethodResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Success or failure. |

---


 
 
 #### [SubscriptionConfigResponse](#SubscriptionConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String |  no  | Aggregator Name |
 | config | [String: Any] |  no  | Aggregator Config |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [SaveSubscriptionSetupIntentRequest](#SaveSubscriptionSetupIntentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueExternalId | String |  no  | Unique id i.e company:id |

---


 
 
 #### [SaveSubscriptionSetupIntentResponse](#SaveSubscriptionSetupIntentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any] |  no  | Subscription Payment Method Object |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [RefundAccountResponse](#RefundAccountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isVerifiedFlag | Bool? |  yes  |  |
 | message | String |  no  | Response message |
 | data | [String: Any]? |  yes  | Refund account data. |
 | success | Bool |  no  | Success or failure flag. |

---


 
 
 #### [NotFoundResourceError](#NotFoundResourceError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  | Not Found |
 | code | String |  no  | Bad Request Data |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [BankDetailsForOTP](#BankDetailsForOTP)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ifscCode | String |  no  |  |
 | accountNo | String |  no  |  |
 | branchName | String |  no  |  |
 | bankName | String |  no  |  |
 | accountHolder | String |  no  |  |

---


 
 
 #### [AddBeneficiaryDetailsOTPRequest](#AddBeneficiaryDetailsOTPRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  |  |
 | details | [BankDetailsForOTP](#BankDetailsForOTP) |  no  |  |

---


 
 
 #### [IfscCodeResponse](#IfscCodeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | branchName | String |  no  | Branch Name Of Account |
 | success | Bool? |  yes  | Response is successful or not |
 | bankName | String |  no  | Bank Name Of Account |

---


 
 
 #### [OrderBeneficiaryDetails](#OrderBeneficiaryDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subtitle | String |  no  | SHort Title Of Account |
 | id | Int |  no  |   |
 | title | String |  no  | Title Of Account |
 | accountHolder | String |  no  | Account Holder Name |
 | ifscCode | String |  no  | Ifsc Code Of Account |
 | comment | String? |  yes  | Remarks |
 | createdOn | String |  no  | Creation Date of Beneficiary |
 | displayName | String |  no  | Display Name Of Account |
 | delightsUserName | String? |  yes  | User Id Who filled the Beneficiary  |
 | transferMode | String |  no  | Transfer Mode Of Account |
 | email | String |  no  | EMail of User |
 | isActive | Bool |  no  | Boolean Flag whether Beneficiary set or not |
 | branchName | String? |  yes  | Branch Name Of Account |
 | address | String |  no  | Address of User |
 | modifiedOn | String |  no  | MOdification Date of Beneficiary |
 | beneficiaryId | String |  no  | Benenficiary Id |
 | accountNo | String |  no  | Account Number |
 | bankName | String |  no  | Bank Name Of Account |
 | mobile | String? |  yes  | MObile no of User |

---


 
 
 #### [OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | beneficiaries | [[OrderBeneficiaryDetails](#OrderBeneficiaryDetails)]? |  yes  | All Beneficiaries Of An Order |
 | showBeneficiaryDetails | Bool? |  yes  | Show beneficiary details or not. |

---


 
 
 #### [MultiTenderPaymentMeta](#MultiTenderPaymentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | extraMeta | [String: Any]? |  yes  |  |
 | orderId | String? |  yes  |  |
 | paymentId | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | paymentGateway | String? |  yes  |  |

---


 
 
 #### [MultiTenderPaymentMethod](#MultiTenderPaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Payment mode name |
 | meta | [MultiTenderPaymentMeta](#MultiTenderPaymentMeta)? |  yes  |  |
 | amount | Double |  no  | Payment amount |
 | mode | String |  no  |  |

---


 
 
 #### [PaymentConfirmationRequest](#PaymentConfirmationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  | Unique order id |
 | paymentMethods | [[MultiTenderPaymentMethod](#MultiTenderPaymentMethod)] |  no  |  |

---


 
 
 #### [PaymentConfirmationResponse](#PaymentConfirmationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  | Unique order id |
 | message | String |  no  | Message |
 | success | Bool |  no  | Payment confirmation updated or not. |

---


 
 
 #### [CODdata](#CODdata)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | remainingLimit | Int |  no  | Remaining Limit for COD of User |
 | userId | String |  no  | Payment mode name |
 | isActive | Bool |  no  | COD option is active or not |
 | limit | Int |  no  | Total Limit of user |
 | usages | Int |  no  | Used COD limit from the user Limit |

---


 
 
 #### [GetUserCODLimitResponse](#GetUserCODLimitResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userCodData | [CODdata](#CODdata) |  no  |  |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [SetCODForUserRequest](#SetCODForUserRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobileno | String |  no  | Mobile No. of User |
 | isActive | Bool |  no  | either true or false |
 | merchantUserId | String |  no  | Merchant User id |

---


 
 
 #### [SetCODOptionResponse](#SetCODOptionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Message |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [EdcModelData](#EdcModelData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String |  no  | Name of aggregator |
 | aggregatorId | Int |  no  | ID of aggregator |
 | models | [String] |  no  | List of string of edc models |

---


 
 
 #### [EdcAggregatorAndModelListResponse](#EdcAggregatorAndModelListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[EdcModelData](#EdcModelData)] |  no  | List of aggregators and their edc models |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [StatisticsData](#StatisticsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inactiveDeviceCount | Int |  no  | No of inactive devices |
 | activeDeviceCount | Int |  no  | No of active devices |

---


 
 
 #### [EdcDeviceStatsResponse](#EdcDeviceStatsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statistics | [StatisticsData](#StatisticsData) |  no  |  |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [EdcAddRequest](#EdcAddRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | edcModel | String |  no  | Model of the edc machine |
 | storeId | Int |  no  | Store at which devices is to used |
 | aggregatorId | Int |  no  | Aggregator which will accept payment |
 | edcDeviceSerialNo | String |  no  | Serial number or imei of EDC device |
 | terminalSerialNo | String |  no  | Device serial number of terminal(android tablet) |
 | deviceTag | String? |  yes  | Device tag of edc device to identify it |

---


 
 
 #### [EdcDevice](#EdcDevice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | edcModel | String? |  yes  | Name of the model |
 | storeId | Int |  no  | Store at which devices is to used |
 | aggregatorId | Int |  no  | Aggregator which will accept payment |
 | terminalUniqueIdentifier | String |  no  | Genearated unique value for edc device |
 | edcDeviceSerialNo | String |  no  | Serial number of EDC device |
 | isActive | Bool |  no  | State whether device is active or inactive |
 | aggregatorName | String? |  yes  | Name of the corresponding aggregator |
 | terminalSerialNo | String |  no  | Device serial number of terminal(android tablet) |
 | merchantStorePosCode | String? |  yes  | This is provided by pinelabs |
 | deviceTag | String |  no  | Device tag of edc device to identify it |
 | applicationId | String |  no  | Application ID |

---


 
 
 #### [EdcDeviceAddResponse](#EdcDeviceAddResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [EdcDevice](#EdcDevice) |  no  |  |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [EdcDeviceDetailsResponse](#EdcDeviceDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [EdcDevice](#EdcDevice) |  no  |  |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [EdcUpdateRequest](#EdcUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | edcModel | String? |  yes  | Model of the edc machine |
 | storeId | Int? |  yes  | Store at which devices is to used |
 | aggregatorId | Int? |  yes  | Aggregator which will accept payment |
 | edcDeviceSerialNo | String? |  yes  | Serial number or imei of EDC device |
 | isActive | Bool? |  yes  | State whether device is active or inactive |
 | merchantStorePosCode | String? |  yes  | This is provided by pinelabs |
 | deviceTag | String? |  yes  | Device tag of edc device to identify it |

---


 
 
 #### [EdcDeviceUpdateResponse](#EdcDeviceUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int |  no  | Total number of pages |
 | hasNext | Bool |  no  | Whether there exist next page or not |
 | current | Int |  no  | Current page number |
 | type | String |  no  | Type of pagination used |
 | itemTotal | Int |  no  | Total number of items |

---


 
 
 #### [EdcDeviceListResponse](#EdcDeviceListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EdcDevice](#EdcDevice)] |  no  | List of all edc mapped to the application options with their Details. |
 | page | [Page](#Page) |  no  |  |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [PaymentInitializationRequest](#PaymentInitializationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | razorpayPaymentId | String? |  yes  | Payment gateway payment id |
 | deviceId | String? |  yes  | EDC machine Unique Identifier |
 | email | String |  no  | Customer valid email |
 | customerId | String |  no  | Payment gateway customer id. |
 | vpa | String? |  yes  | Customer vpa address |
 | aggregator | String |  no  | Payment gateway name |
 | orderId | String |  no  | Payment gateway order id |
 | currency | String |  no  | Currency code. |
 | amount | Int |  no  | Payable amount. |
 | contact | String |  no  | Customer valid mobile number |
 | timeout | Int? |  yes  | Payment polling timeout if not recieved response |
 | merchantOrderId | String |  no  | Unique fynd order id |
 | method | String |  no  | Payment method |

---


 
 
 #### [PaymentInitializationResponse](#PaymentInitializationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | razorpayPaymentId | String? |  yes  | Payment  id. |
 | deviceId | String? |  yes  | EDC machine Unique Identifier |
 | upiPollUrl | String? |  yes  | UPI poll url. |
 | customerId | String? |  yes  | Payment gateway customer id. |
 | pollingUrl | String |  no  | Polling url. |
 | vpa | String? |  yes  | Customer vpa address |
 | aggregator | String |  no  | Payment gateway name |
 | currency | String? |  yes  | Currency code. |
 | merchantOrderId | String |  no  | order id |
 | amount | Int? |  yes  | Payable amount. |
 | timeout | Int? |  yes  | timeout. |
 | virtualId | String? |  yes  | Payment virtual address. |
 | bqrImage | String? |  yes  | Bharath qr image url. |
 | aggregatorOrderId | String? |  yes  | Payment order id |
 | success | Bool |  no  | Response is successful or not. |
 | status | String? |  yes  | Status of payment. |
 | method | String |  no  | Payment method |

---


 
 
 #### [PaymentStatusUpdateRequest](#PaymentStatusUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deviceId | String? |  yes  | EDC machine Unique Identifier |
 | email | String |  no  | Customer valid email |
 | customerId | String |  no  | Payment gateway customer id. |
 | vpa | String? |  yes  | Customer vpa address |
 | aggregator | String |  no  | Payment gateway name |
 | orderId | String |  no  | Payment gateway order id |
 | currency | String |  no  | Currency code. |
 | amount | Int |  no  | Payable amount. |
 | contact | String |  no  | Customer valid mobile number |
 | merchantOrderId | String |  no  | Unique fynd order id |
 | status | String |  no  | Status of payment. |
 | method | String |  no  | Payment method |
 | merchantTransactionId | String |  no  | Unique fynd transaction id |

---


 
 
 #### [PaymentStatusUpdateResponse](#PaymentStatusUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | redirectUrl | String? |  yes  | Redirect url |
 | retry | Bool |  no  | Response is successful or not. |
 | success | Bool? |  yes  | Response is successful or not |
 | status | String |  no  | Payment status |
 | aggregatorName | String |  no  | Payment gateway name |

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
 | status | String |  no  | Link action status |
 | message | String |  no  | Message |

---


 
 
 #### [ResendOrCancelPaymentResponse](#ResendOrCancelPaymentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [LinkStatus](#LinkStatus) |  no  |  |
 | success | Bool |  no  | Response is successful or not. |

---


 
 
 #### [PaymentStatusBulkHandlerRequest](#PaymentStatusBulkHandlerRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | merchantOrderId | [String] |  no  | List of order ids |

---


 
 
 #### [PaymentObjectListSerializer](#PaymentObjectListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userObject | [String: Any] |  no  |  |
 | modifiedOn | String |  no  |  |
 | collectedBy | String |  no  |  |
 | createdOn | String |  no  |  |
 | refundObject | [String: Any]? |  yes  |  |
 | id | String |  no  |  |
 | paymentId | String? |  yes  |  |
 | currency | String |  no  |  |
 | currentStatus | String |  no  |  |
 | aggregatorPaymentObject | [String: Any]? |  yes  |  |
 | paymentMode | String |  no  |  |
 | refundedBy | String |  no  |  |
 | amountInPaisa | String |  no  |  |
 | paymentGateway | String |  no  |  |
 | companyId | String |  no  |  |
 | paymentModeIdentifier | String |  no  |  |
 | applicationId | String |  no  |  |
 | allStatus | [String] |  no  |  |

---


 
 
 #### [PaymentStatusObject](#PaymentStatusObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | merchantOrderId | String |  no  |  |
 | paymentObjectList | [[PaymentObjectListSerializer](#PaymentObjectListSerializer)]? |  yes  |  |

---


 
 
 #### [PaymentStatusBulkHandlerResponse](#PaymentStatusBulkHandlerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |
 | data | [[PaymentStatusObject](#PaymentStatusObject)]? |  yes  |  |
 | success | String |  no  |  |
 | error | String? |  yes  |  |
 | status | Int |  no  |  |

---


 
 
 #### [GetOauthUrlResponse](#GetOauthUrlResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  | The url to call for authenticating |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [RevokeOAuthToken](#RevokeOAuthToken)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | The confirmation message of the token revoke. |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [RepaymentRequestDetails](#RepaymentRequestDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fwdShipmentId | String |  no  | Purchase Shipment Id |
 | aggregator | String |  no  | Name of Payment Gateway |
 | currentStatus | String |  no  | Status |
 | merchantOrderId | String |  no  | Merchant's Order Id |
 | amount | Double |  no  | Amount to paid back |
 | paymentMode | String |  no  | Payment Mode |
 | outstandingDetailsId | Int |  no  | Outstanding details ID |
 | aggregatorTransactionId | String |  no  | Unique Id for the transaction |
 | aggregatorOrderId | String |  no  | Id of payment gateway |
 | paymentModeIdentifier | String |  no  | Payment Mode Id |

---


 
 
 #### [RepaymentDetailsSerialiserPayAll](#RepaymentDetailsSerialiserPayAll)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalAmount | Double |  no  | total amount |
 | extensionOrderId | String |  no  | Order id created in extension |
 | aggregatorTransactionId | String |  no  | Unique Id for the transaction |
 | aggregatorOrderId | String |  no  | Id of payment gateway |
 | shipmentDetails | [[RepaymentRequestDetails](#RepaymentRequestDetails)]? |  yes  |  |

---


 
 
 #### [RepaymentResponse](#RepaymentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any] |  no  |  |
 | success | Bool |  no  | Success/Failure of the transaction |

---


 
 
 #### [MerchantOnBoardingRequest](#MerchantOnBoardingRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditLineId | String |  no  | Merchant ID at Ajiodhan's end |
 | aggregator | String |  no  | Payment aggregator name |
 | appId | String |  no  | Application id |
 | userId | String |  no  | Deadlock or Grimlock user id |
 | status | String |  no  | Status |

---


 
 
 #### [MerchantOnBoardingResponse](#MerchantOnBoardingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any] |  no  |  |
 | success | Bool |  no  | Success/Failure of the transaction |

---


 
 
 #### [ValidateCustomerRequest](#ValidateCustomerRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String |  no  | User mobile number without country code. |
 | aggregator | String |  no  | Payment gateway name in camel case i.e Simpl, Rupifi |
 | payload | String? |  yes  | Hashed payload string. |
 | deliveryAddress | [String: Any]? |  yes  | Extra meta fields. |
 | transactionAmountInPaise | Int |  no  | Payable amount in paise |
 | orderItems | [[String: Any]]? |  yes  | Extra meta fields. |
 | merchantParams | [String: Any]? |  yes  | Extra meta fields. |
 | billingAddress | [String: Any]? |  yes  | Extra meta fields. |

---


 
 
 #### [ValidateCustomerResponse](#ValidateCustomerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Error or success message. |
 | data | [String: Any] |  no  | Payment gateway response data |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [GetPaymentLinkResponse](#GetPaymentLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Message |
 | statusCode | Int |  no  | HTTP status code |
 | amount | Double? |  yes  | Total value of order |
 | merchantName | String? |  yes  | Merchant name |
 | paymentLinkUrl | String? |  yes  | Url of payment link |
 | paymentLinkCurrentStatus | String? |  yes  | Status of payment link |
 | externalOrderId | String? |  yes  | Merchant order id |
 | pollingTimeout | Int? |  yes  | Polling request timeout |
 | success | Bool |  no  | Successful or failure |

---


 
 
 #### [ErrorDescription](#ErrorDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | msg | String? |  yes  | Message |
 | paymentTransactionId | String? |  yes  | Payment transaction id |
 | invalidId | Bool? |  yes  | Payment link id is valid or not |
 | merchantOrderId | String? |  yes  | Order id |
 | merchantName | String? |  yes  | Name of merchant that created payment link |
 | amount | Double? |  yes  | Amount paid |
 | expired | Bool? |  yes  | Payment link expired or not |
 | cancelled | Bool? |  yes  | Payment link is cancelled or not |

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
 | amount | String |  no  |  |
 | assignCardId | String? |  yes  |  |

---


 
 
 #### [CreatePaymentLinkRequest](#CreatePaymentLinkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  | Email to which the payment link is to be sent |
 | amount | Double |  no  | Total value of order |
 | mobileNumber | String |  no  | Mobile number to which the payment link is to be sent |
 | countryPhoneCode | String? |  yes  | Phone country code for complete mobile number |
 | description | String? |  yes  | Merchant order id |
 | meta | [CreatePaymentLinkMeta](#CreatePaymentLinkMeta) |  no  |  |
 | externalOrderId | String |  no  | Merchant order id |

---


 
 
 #### [CreatePaymentLinkResponse](#CreatePaymentLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Message |
 | statusCode | Int |  no  | HTTP status code |
 | paymentLinkUrl | String? |  yes  | Url of payment link |
 | pollingTimeout | Int? |  yes  | Polling request timeout |
 | success | Bool |  no  | Successful or failure |
 | paymentLinkId | String? |  yes  | Unique id of payment link |

---


 
 
 #### [PollingPaymentLinkResponse](#PollingPaymentLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Message |
 | httpStatus | Int? |  yes  | HTTP status code |
 | statusCode | Int? |  yes  | HTTP status code |
 | redirectUrl | String? |  yes  | Url to redirect to |
 | amount | Double? |  yes  | Amount |
 | orderId | String? |  yes  | Fynd order id |
 | success | Bool? |  yes  | Successful or failure |
 | paymentLinkId | String? |  yes  | Payment link id |
 | status | String? |  yes  | Status of payment link |
 | aggregatorName | String? |  yes  | Aggregator name |

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
 | message | String |  no  | Message |
 | pollingTimeout | Int? |  yes  | Polling request timeout |
 | success | Bool |  no  | Successful or failure |

---


 
 
 #### [CancelPaymentLinkResponse](#CancelPaymentLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  | HTTP status code |
 | message | String |  no  | Message |
 | success | Bool |  no  | Successful or failure |

---


 
 
 #### [Code](#Code)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  | Name of payment method |
 | merchantCode | String |  no  | Merchant Payment Code |
 | code | String |  no  | Payment Method Code |

---


 
 
 #### [PaymentCode](#PaymentCode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | networks | String |  no  | payment networks |
 | codes | [Code](#Code) |  no  |  |
 | name | String |  no  | name of payment name |
 | types | String |  no  | Type of payment mode |

---


 
 
 #### [GetPaymentCode](#GetPaymentCode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | methodCode | [PaymentCode](#PaymentCode) |  no  |  |

---


 
 
 #### [GetPaymentCodeResponse](#GetPaymentCodeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GetPaymentCode](#GetPaymentCode) |  no  |  |
 | success | Bool |  no  | Response is successful or not. |

---


 
 
 #### [PlatformPaymentModeResponse](#PlatformPaymentModeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Message |
 | items | [[String: Any]]? |  yes  | List of all aggregator and payment mode details. |
 | success | Bool |  no  | Response is successful or not. |

---


 
 
 #### [MerchnatPaymentModeRequest](#MerchnatPaymentModeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | offline | [String: Any]? |  yes  | Details to be updated for online payment configuration. |
 | online | [String: Any]? |  yes  | Details to be updated for offline payment configuration. |

---


 
 
 #### [OrderDetail](#OrderDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gid | String |  no  | Global identifier of the entity (e.g. order, cart etc.) against which payment_session was initiated. This is generated by Fynd payments platform and is unique. |
 | amount | Int |  no  | amount paid. |
 | status | String |  no  | order status created by payment gateway aggregator. |
 | currency | String |  no  | currency of the payment. |
 | aggregatorOrderDetails | [String: Any] |  no  | aggregator order details generated by the payment gateway. |
 | aggregator | String |  no  | name of the payment gateway aggregator. |

---


 
 
 #### [AddressDetail](#AddressDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | googleMapPoint | [String: Any]? |  yes  | google map point of location |
 | landmark | String? |  yes  | landmark |
 | phone | String |  no  | phone number |
 | countryIsoCode | String |  no  | country's code name e.g. `IN`, `GB` |
 | areaCode | String |  no  | customer pin/zip code |
 | country | String |  no  | country name |
 | expireAt | String? |  yes  | address expiry timestamp |
 | geoLocation | [String: Any]? |  yes  | location latitude and logitude |
 | state | String |  no  | state of the customer |
 | area | String |  no  | area details |
 | gAddressId | String |  no  | unique address id generated by Fynd platform |
 | areaCodeSlug | String |  no  | area slug code, use pin or zip code if not available |
 | countryPhoneCode | String |  no  | country's phone code |
 | name | String |  no  | customer name |
 | addressType | String? |  yes  | address type e.g. home, office |
 | address | String |  no  | address details |
 | email | String? |  yes  | customer email |
 | city | String |  no  | city name |
 | tags | [[String: Any]]? |  yes  | optional address tag |

---


 
 
 #### [PaymentSessionDetail](#PaymentSessionDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentId | String |  no  | unique transaction id generated by payment gateway |
 | mode | String |  no  | test or live, test mode uses test credentials so that actual payment is not created. |
 | amount | Int |  no  | amount paid. |
 | successUrl | String |  no  | success url sent by Fynd platform at the time of payment creation |
 | shippingAddress | [AddressDetail](#AddressDetail)? |  yes  | shipping address |
 | amountCaptured | Int |  no  | amount which is captured or credited to merchant account |
 | amountRefunded | Int? |  yes  |  |
 | aggregatorCustomerId | String? |  yes  | unique customer id generated by payment gateway, not required for standard checkout. |
 | cancelUrl | String |  no  | cancel url sent by Fynd platform at the time of payment creation |
 | paymentMethods | [[String: Any]] |  no  | method of payment |
 | created | String? |  yes  | timestamp in epoch |
 | gUserId | String |  no  | global user identifier - unique user id generated by Fynd platform |
 | currency | String |  no  | currency of the payment. |
 | merchantLocale | String? |  yes  | merchant's locale |
 | locale | String? |  yes  | user's locale |
 | aggregatorOrderId | String |  no  | unique order id or payment request id generated by payment gateway |
 | gid | String |  no  | Global identifier of the entity (e.g. order, cart etc.) against which payment_session was initiated. This is generated by Fynd payments platform and is unique. |
 | kind | String? |  yes  | optional kind of purchase or payment - one time payment (sale) or subcription. defaults to sale. |
 | billingAddress | [AddressDetail](#AddressDetail)? |  yes  | billing address |
 | captured | Bool? |  yes  | whether the payment is captured (credited to merchant account) by payment gateway. |
 | meta | [String: Any]? |  yes  | Metadata |
 | status | String |  no  | stautus of the payment |

---


 
 
 #### [PaymentSessionRequestSerializer](#PaymentSessionRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  | meta |
 | gid | String |  no  | Global identifier of the entity (e.g. order, cart etc.) against which payment_session was initiated. This is generated by Fynd payments platform and is unique. |
 | orderDetails | [OrderDetail](#OrderDetail) |  no  | The details of the order. |
 | status | String |  no  | status of the payment. |
 | currency | String |  no  | currency of the payment. |
 | paymentDetails | [[PaymentSessionDetail](#PaymentSessionDetail)] |  no  | The payment details with the schema `PaymentSessionDetail`. |
 | totalAmount | Int |  no  | amount paid. |
 | checksum | String |  no  | Checksum to verify the payload |

---


 
 
 #### [PaymentSessionResponseSerializer](#PaymentSessionResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gid | String |  no  | Global identifier of the entity (e.g. order, cart etc.) against which payment_session was initiated. This is generated by Fynd payments platform and is unique. |
 | platformTransactionDetails | [[String: Any]] |  no  | platform transaction details. |
 | status | String |  no  | status of the payment. |
 | currency | String |  no  | currency of the payment. |
 | totalAmount | Int |  no  | amount paid. |

---


 
 
 #### [RefundSessionDetail](#RefundSessionDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundUtr | String? |  yes  | Unique refund utr generated by payment gateway. |
 | requestId | String |  no  | refund request id, unique id generated by Fynd platform |
 | paymentId | String |  no  | Unique payment id generated by payment gateway. |
 | amount | Int |  no  | amount refunded. |
 | reason | String? |  yes  | reason for refund, optional |
 | status | String |  no  | status of the refund. |
 | created | String |  no  | timestamp in epoch. |
 | sourceTransferReversal | String? |  yes  | description in case of reversal of payment. |
 | receiptNumber | String? |  yes  | unique receipt for refund, generated by payment gateway, if not available can be utr. |
 | currency | String |  no  | currency of the payment. |
 | transferReversal | String? |  yes  | description in case of reversal of payment. |
 | balanceTransaction | String? |  yes  | balance transaction. |

---


 
 
 #### [RefundSessionRequestSerializer](#RefundSessionRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  | meta |
 | gid | String |  no  | Global identifier of the entity (e.g. order, cart etc.) against which payment_session was initiated. This is generated by Fynd payments platform and is unique. |
 | status | String |  no  | The status of the refund. |
 | currency | String |  no  | The currency of the payment. |
 | paymentDetails | [PaymentSessionDetail](#PaymentSessionDetail) |  no  | details of the payment |
 | totalAmount | Int |  no  | The total amount refunded. |
 | refundDetails | [[RefundSessionDetail](#RefundSessionDetail)] |  no  | details of the refund |
 | error | [ErrorDescription](#ErrorDescription)? |  yes  |  |
 | message | String? |  yes  | The status of the refund. |
 | checksum | String |  no  | Checksum to verify payload |

---


 
 
 #### [RefundSessionResponseSerializer](#RefundSessionResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gid | String |  no  | Global identifier of the entity (e.g. order, cart etc.) against which payment_session was initiated. This is generated by Fynd payments platform and is unique. |
 | status | String |  no  | The status of the refund. |
 | currency | String |  no  | The currency of the payment. |
 | platformRefundDetails | [[String: Any]] |  no  | details of the refund |
 | totalRefundAmount | Int |  no  | The total amount refunded. |

---


 
 
 #### [PaymentDetailsSerializer](#PaymentDetailsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [[String: Any]] |  no  | method of payment |
 | gid | String |  no  | Global identifier of the entity (e.g. order, cart etc.) against which payment_session was initiated. This is generated by Fynd payments platform and is unique. |
 | amountRefunded | Int? |  yes  |  |
 | currency | String |  no  | currency of the payment. |
 | mode | String |  no  | test or live, test mode uses test credentials so that actual payment is not created. |
 | merchantLocale | String? |  yes  | merchant's locale |
 | meta | [String: Any]? |  yes  | metadata |
 | kind | String? |  yes  | optional kind of purchase/payment - one time payment (sale) or subcription. defaults to sale. |
 | successUrl | String? |  yes  | success url sent by Fynd platform at the time of payment creation |
 | status | String |  no  | stautus of the payment |
 | captured | Bool? |  yes  | whether the payment is captured (credited to merchant account) by payment gateway. |
 | paymentId | String? |  yes  | unique transaction id generated by payment gateway |
 | gUserId | String |  no  | global user identifier - unique user id generated by Fynd platform |
 | locale | String? |  yes  | user's locale |
 | cancelUrl | String? |  yes  | cancel url sent by Fynd platform at the time of payment creation |
 | created | String? |  yes  | timestamp in epoch |
 | amountCaptured | Int |  no  | amount which is captured or credited to merchant account |
 | amount | Int |  no  | amount paid. |
 | aggregatorCustomerId | String? |  yes  | unique customer id generated by payment gateway, not required for standard checkout. |
 | aggregatorOrderId | String? |  yes  | unique order id or payment request id generated by payment gateway |

---


 
 
 #### [CartDetailsSerializer](#CartDetailsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [String: Any] |  no  | Items that are added in cart |
 | articles | [[String: Any]] |  no  | list of articles that are added in cart |
 | cartValue | Double |  no  | total cart value i.e. amount to be paid |
 | totalQuantity | Int? |  yes  | total number of items in cart |

---


 
 
 #### [RefundDetailsSerializer](#RefundDetailsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Int |  no  | refunded amount |
 | currency | String |  no  | The currency of the payment. |
 | requestId | String |  no  | refund request id, unique id generated by Fynd platform |
 | status | String |  no  | The status of the refund. |
 | created | String |  no  | timestamp in epoch. |
 | refundUtr | String |  no  | Unique refund utr generated by payment gateway. |

---


 
 
 #### [PaymentSessionSerializer](#PaymentSessionSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentDetails | [String: Any] |  no  | object of payment details |
 | currency | String? |  yes  | The currency of the payment. |
 | status | String |  no  | The status of the payment session. |
 | totalAmount | Int |  no  | total amount to be paid |
 | gid | String |  no  | Global identifier of the entity (e.g. order, cart etc.) against which payment_session was initiated. This is generated by Fynd payments platform and is unique. |
 | cartDetails | [CartDetailsSerializer](#CartDetailsSerializer)? |  yes  |  |
 | refundDetails | [[RefundDetailsSerializer](#RefundDetailsSerializer)] |  no  | object of refund details |

---


 
 
 #### [RefundSourcesPriority](#RefundSourcesPriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  | description of refund source |
 | priority | Int |  no  | priority of refund source, 0 being highest |
 | source | String |  no  | source of refund |

---


 
 
 #### [RefundPriorityResponseSerializer](#RefundPriorityResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configuration | String |  no  | configuration for merchant or customer |
 | success | Bool |  no  | success |
 | apportion | Bool |  no  | apportion refund to multiple sources |
 | refundSourcesPriority | [[RefundSourcesPriority](#RefundSourcesPriority)] |  no  | refund sources priority |
 | message | String? |  yes  | message |

---


 
 
 #### [RefundPriorityRequestSerializer](#RefundPriorityRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apportion | Bool |  no  | apportion refund to multiple sources |
 | refundSourcesPriority | [[RefundSourcesPriority](#RefundSourcesPriority)] |  no  | refund sources priority |

---


 
 
 #### [MerchantPaymentModeRequest](#MerchantPaymentModeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | businessUnit | String |  no  | Business unit |
 | items | [[String: Any]] |  no  | List of item details with respect to payment_mode |
 | device | [String: Any] |  no  | List of devices and its activation status |

---


 
 
 #### [FromConfig](#FromConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | device | String |  no  | Device name |
 | businessUnit | String |  no  | Business unit name |

---


 
 
 #### [ToConfig](#ToConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | device | [[String: Any]] |  no  | Device name to copy the config to |
 | businessUnit | String |  no  | Business unit name |

---


 
 
 #### [PlatformPaymentModeCopyConfigRequest](#PlatformPaymentModeCopyConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromConfig | [FromConfig](#FromConfig) |  no  |  |
 | toConfig | [ToConfig](#ToConfig) |  no  |  |

---


 
 
 #### [PaymentMethodsMetaOrder](#PaymentMethodsMetaOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentIdentifier | String |  no  | Payment identifier |
 | merchantCode | String |  no  | Merchant code |
 | paymentGateway | String |  no  | Payment gateway name |

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
 | orderId | String |  no  | Order id |
 | paymentMethods | [[PaymentOrderMethods](#PaymentOrderMethods)]? |  yes  |  |
 | shipmentId | String? |  yes  | shipment_id |

---


 
 
 #### [PaymentOrderData](#PaymentOrderData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | contact | String? |  yes  | Mobile number |
 | aggregator | String? |  yes  | Aggregator name |
 | amount | Double? |  yes  | Amount |
 | customerId | String? |  yes  | Aggregator customer id |
 | currency | String? |  yes  | Currency |
 | email | String? |  yes  | Email |
 | callbackUrl | String? |  yes  | Callback url for aggregator |
 | orderId | String? |  yes  | Aggregator order id |
 | method | String? |  yes  | Method |
 | merchantOrderId | String? |  yes  | Merchant order id |

---


 
 
 #### [PaymentOrderResponse](#PaymentOrderResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Message |
 | success | Bool |  no  | Successful or failure |
 | paymentConfirmUrl | String? |  yes  | Payment confirm url for aggregator |
 | callbackUrl | String? |  yes  | Callback url for aggregator |
 | statusCode | Int |  no  | HTTP status code |
 | orderId | String? |  yes  | Merchant order id |
 | data | [PaymentOrderData](#PaymentOrderData)? |  yes  |  |

---


 
 
 #### [AggregatorVersionItemSchema](#AggregatorVersionItemSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isEqualTo | String? |  yes  |  |
 | isLessThan | String? |  yes  |  |
 | isGreaterThan | String? |  yes  |  |

---


 
 
 #### [AggregatorVersionResponse](#AggregatorVersionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Message |
 | success | Bool |  no  | Successful or failure |
 | items | [AggregatorVersionItemSchema](#AggregatorVersionItemSchema)? |  yes  |  |

---


 
 
 #### [AggregatorVersionRequestSchema](#AggregatorVersionRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isEqualTo | String? |  yes  |  |
 | isLessThan | String? |  yes  |  |
 | isGreaterThan | String? |  yes  |  |

---


 
 
 #### [AggregatorControlRequest](#AggregatorControlRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | businessUnit | String? |  yes  | Business unit |
 | items | [[String: Any]]? |  yes  | List of item details with respect to payment_mode |
 | device | String? |  yes  | Device name |
 | version | [AggregatorVersionRequestSchema](#AggregatorVersionRequestSchema)? |  yes  |  |

---


 
 
 #### [PaymentModeCustomConfigSchema](#PaymentModeCustomConfigSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String |  no  | The display name of the store. |
 | businessUnit | String |  no  | The business unit to which the store belongs. |
 | customConfig | [PaymentCustomConfigDetailsSchema](#PaymentCustomConfigDetailsSchema) |  no  |  |

---


 
 
 #### [PaymentCustomConfigDetailsSchema](#PaymentCustomConfigDetailsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customer | [PaymentCustomConfigCustomerSchema](#PaymentCustomConfigCustomerSchema) |  no  |  |
 | paymentMode | [PaymentCustomConfigModeSchema](#PaymentCustomConfigModeSchema) |  no  |  |
 | minOrderValue | Double |  no  | The minimum order value for the store |

---


 
 
 #### [PaymentCustomConfigCustomerSchema](#PaymentCustomConfigCustomerSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | restriction | String |  no  | Customer restriction type. |
 | groups | [Int]? |  yes  | Customer groups. |
 | types | [String]? |  yes  | Customer types. |

---


 
 
 #### [PaymentCustomConfigModeSchema](#PaymentCustomConfigModeSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | available | Bool |  no  | Indicates whether the payment mode is available. |
 | preOrder | [String]? |  yes  | Payment modes available for pre-order. |
 | postOrder | [String]? |  yes  | Payment modes available for post-order. |

---


 
 
 #### [PaymentCustomConfigDetailsRequestSchema](#PaymentCustomConfigDetailsRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customer | [PaymentCustomConfigCustomerRequestSchema](#PaymentCustomConfigCustomerRequestSchema) |  no  |  |
 | paymentMode | [PaymentCustomConfigModeSchema](#PaymentCustomConfigModeSchema) |  no  |  |
 | minOrderValue | Double |  no  | The minimum order value for the store |

---


 
 
 #### [PaymentCustomConfigCustomerRequestSchema](#PaymentCustomConfigCustomerRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | restriction | String |  no  | Customer restriction type. |
 | groups | [Int]? |  yes  | Customer groups. |

---


 
 
 #### [PaymentCustomConfigRequestSchema](#PaymentCustomConfigRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | businessUnit | String |  no  | The business unit to which the store belongs. |
 | items | [[PaymentCustomConfigDetailsRequestSchema](#PaymentCustomConfigDetailsRequestSchema)] |  no  |  |

---


 
 
 #### [PaymentCustomConfigResponseSchema](#PaymentCustomConfigResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |
 | items | [[PaymentModeCustomConfigSchema](#PaymentModeCustomConfigSchema)] |  no  |  |

---



