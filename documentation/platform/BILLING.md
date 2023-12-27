



##### [Back to Platform docs](./README.md)

## Billing Methods
Handle platform subscription

Default
* [checkCouponValidity](#checkcouponvalidity)
* [createSubscriptionCharge](#createsubscriptioncharge)
* [getSubscriptionCharge](#getsubscriptioncharge)
* [cancelSubscriptionCharge](#cancelsubscriptioncharge)
* [createOneTimeCharge](#createonetimecharge)
* [getChargeDetails](#getchargedetails)
* [getInvoices](#getinvoices)
* [getInvoiceById](#getinvoicebyid)
* [getCustomerDetail](#getcustomerdetail)
* [upsertCustomerDetail](#upsertcustomerdetail)
* [getSubscription](#getsubscription)
* [getFeatureLimitConfig](#getfeaturelimitconfig)
* [activateSubscriptionPlan](#activatesubscriptionplan)
* [cancelSubscriptionPlan](#cancelsubscriptionplan)
* [getEnterprisePlans](#getenterpriseplans)
* [planStatusUpdate](#planstatusupdate)
* [subscripePlan](#subscripeplan)
* [getentityDetail](#getentitydetail)




## Methods with example and description



#### checkCouponValidity
Check coupon validity




```swift
platformClient.billing.checkCouponValidity(plan: plan, couponCode: couponCode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| plan | String | yes | ID of the plan. |   
| couponCode | String | yes | Coupon code. |  



Check coupon validity.

*Returned Response:*




[CheckValidityResponse](#CheckValidityResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createSubscriptionCharge
Create subscription charge




```swift
platformClient.billing.createSubscriptionCharge(extensionId: extensionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Extension _id |  
| body | CreateSubscriptionCharge | yes | Request body |


Register subscription charge for a seller of your extension.

*Returned Response:*




[CreateSubscriptionResponse](#CreateSubscriptionResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getSubscriptionCharge
Get subscription charge details




```swift
platformClient.billing.getSubscriptionCharge(extensionId: extensionId, subscriptionId: subscriptionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Extension _id |   
| subscriptionId | String | yes | Subscription charge _id |  



Get created subscription charge details

*Returned Response:*




[EntitySubscription](#EntitySubscription)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### cancelSubscriptionCharge
Cancel subscription charge




```swift
platformClient.billing.cancelSubscriptionCharge(extensionId: extensionId, subscriptionId: subscriptionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Extension _id |   
| subscriptionId | String | yes | Subscription charge _id |  



Cancel subscription and attached charges.

*Returned Response:*




[EntitySubscription](#EntitySubscription)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createOneTimeCharge
Create one time subscription charge




```swift
platformClient.billing.createOneTimeCharge(extensionId: extensionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Extension _id |  
| body | CreateOneTimeCharge | yes | Request body |


Register one time subscription charge for a seller of your extension.

*Returned Response:*




[CreateOneTimeChargeResponse](#CreateOneTimeChargeResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getChargeDetails
Get subscription charge details




```swift
platformClient.billing.getChargeDetails(extensionId: extensionId, chargeId: chargeId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Extension _id |   
| chargeId | String | yes | Standalone charge _id |  



Get created subscription charge details

*Returned Response:*




[OneTimeChargeEntity](#OneTimeChargeEntity)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getInvoices
Get invoices




```swift
platformClient.billing.getInvoices() { (response, error) in
    // Use response
}
```






Get invoices.

*Returned Response:*




[Invoices](#Invoices)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "data": [
      {
        "_id": "5f7acb709e76da30e3b92cdb",
        "client": {
          "name": "RELIANCE RETAIL LTD",
          "email": "ZAK@GMAIL.COM",
          "phone": "91 1234567890",
          "address_lines": [
            "TV TOWER, Foot Over Bridge Khar",
            "Mumbai, 400079, Maharashtra, India"
          ]
        },
        "auto_advance": true,
        "currency": "INR",
        "paid": true,
        "attemp": 3,
        "collection_method": "charge_automatically",
        "subscriber_id": "5ee773e1351e5e84289ed9cf",
        "invoice_url": "",
        "number": "FP-1-72020-736",
        "pg_data": {},
        "period": {
          "start": "2020-08-17T13:45:36.722Z",
          "end": "2020-09-17T13:45:36.722Z"
        },
        "receipt_number": "5fd9b08464dc6ac048a08988",
        "statement_descriptor": "RELIANCE RETAIL LTD",
        "current_status": "paid",
        "status_trail": [
          {
            "_id": "5f7ad29bd562744eab216379",
            "value": "draft",
            "timestamp": "2020-10-05T08:00:27.753Z"
          },
          {
            "_id": "5fcf40ce1613c029aff417dd",
            "value": "open",
            "timestamp": "2020-12-08T09:01:02.038Z"
          },
          {
            "_id": "5fd9b08664dc6a1ad0a08989",
            "value": "paid",
            "timestamp": "2020-12-16T07:00:22.973Z"
          }
        ],
        "subtotal": 15720.08,
        "total": 15720.08,
        "subscription": "5f3a8a00668947663b7fbd38",
        "next_action_time": "2020-10-05T09:00:27.754Z",
        "created_at": "2020-10-05T07:29:52.876Z",
        "modified_at": "2020-12-16T07:00:22.980Z",
        "hash_identifier": "575999aca03e36f0fa54db5235bc7f25",
        "payment_method": {
          "pg_payment_method_id": ""
        },
        "invoice_items": [
          {
            "_id": "5f7acb709e76da48b1b92cdd",
            "currency": "INR",
            "plan": {
              "recurring": {
                "interval": "month",
                "interval_count": 1
              },
              "is_trial_plan": false,
              "plan_group": "default",
              "tag_lines": [],
              "currency": "INR",
              "is_active": true,
              "is_visible": true,
              "trial_period": 0,
              "addons": [],
              "tags": [],
              "type": "public",
              "country": "IN",
              "_id": "5f3a8786c90d780037723a14",
              "name": "Professional",
              "description": "Professional",
              "amount": 1499,
              "product_suite_id": "5f3a8786c90d7800377239f3",
              "created_at": "2020-08-17T13:35:02.802Z",
              "modified_at": "2020-08-17T13:35:02.802Z"
            },
            "name": "Professional",
            "quantity": 1,
            "description": "Professional",
            "period": {
              "start": "2020-08-17T13:45:36.722Z",
              "end": "2020-10-05T07:29:52.868Z"
            },
            "unit_amount": 2356.77,
            "amount": 2356.77,
            "type": "subscription",
            "invoice_id": "5f7acb709e76da30e3b92cdb",
            "created_at": "2020-10-05T07:29:52.886Z",
            "modified_at": "2020-10-05T07:29:52.886Z"
          },
          {
            "_id": "5f7acf199aa6830c4fe5e984",
            "currency": "INR",
            "plan": {
              "recurring": {
                "interval": "month",
                "interval_count": 1
              },
              "is_trial_plan": false,
              "plan_group": "default",
              "tag_lines": [],
              "currency": "INR",
              "is_active": true,
              "is_visible": true,
              "trial_period": 0,
              "addons": [],
              "tags": [
                "popular"
              ],
              "type": "public",
              "country": "IN",
              "_id": "5f3a8786c90d780037723a13",
              "name": "Premium",
              "description": "Premium",
              "amount": 2499,
              "product_suite_id": "5f3a8786c90d7800377239f3",
              "created_at": "2020-08-17T13:35:02.547Z",
              "modified_at": "2020-08-17T13:35:02.547Z"
            },
            "name": "Premium",
            "quantity": 1,
            "description": "Premium",
            "period": {
              "start": "2020-08-17T13:45:36.722Z",
              "end": "2020-10-05T07:45:29.755Z"
            },
            "unit_amount": 3929.87,
            "amount": 3929.87,
            "type": "subscription",
            "invoice_id": "5f7acb709e76da30e3b92cdb",
            "created_at": "2020-10-05T07:45:29.765Z",
            "modified_at": "2020-10-05T07:45:29.765Z"
          },
          {
            "_id": "5f7acf7da10a707fc502dcd4",
            "currency": "INR",
            "plan": {
              "recurring": {
                "interval": "month",
                "interval_count": 1
              },
              "is_trial_plan": false,
              "plan_group": "default",
              "tag_lines": [],
              "currency": "INR",
              "is_active": true,
              "is_visible": true,
              "trial_period": 0,
              "addons": [],
              "tags": [],
              "type": "public",
              "country": "IN",
              "_id": "5f3a8786c90d780037723a16",
              "name": "Ultra Premium",
              "description": "Ultra Premium",
              "amount": 2999,
              "product_suite_id": "5f3a8786c90d7800377239f3",
              "created_at": "2020-08-17T13:35:02.802Z",
              "modified_at": "2020-08-17T13:35:02.802Z"
            },
            "name": "Ultra Premium",
            "quantity": 1,
            "description": "Ultra Premium",
            "period": {
              "start": "2020-08-17T13:45:36.722Z",
              "end": "2020-10-05T07:47:09.532Z"
            },
            "unit_amount": 4716.27,
            "amount": 4716.27,
            "type": "subscription",
            "invoice_id": "5f7acb709e76da30e3b92cdb",
            "created_at": "2020-10-05T07:47:09.541Z",
            "modified_at": "2020-10-05T07:47:09.541Z"
          },
          {
            "_id": "5f7ad29bd56274f23321637a",
            "currency": "INR",
            "plan": {
              "recurring": {
                "interval": "month",
                "interval_count": 1
              },
              "is_trial_plan": false,
              "plan_group": "default",
              "tag_lines": [],
              "currency": "INR",
              "is_active": true,
              "is_visible": true,
              "trial_period": 0,
              "addons": [],
              "tags": [],
              "type": "public",
              "country": "IN",
              "_id": "5f3a8786c90d780037723a16",
              "name": "Ultra Premium",
              "description": "Ultra Premium",
              "amount": 2999,
              "product_suite_id": "5f3a8786c90d7800377239f3",
              "created_at": "2020-08-17T13:35:02.802Z",
              "modified_at": "2020-08-17T13:35:02.802Z"
            },
            "name": "Ultra Premium",
            "quantity": 1,
            "description": "Ultra Premium",
            "period": {
              "start": "2020-08-17T13:45:36.722Z",
              "end": "2020-10-05T08:00:27.753Z"
            },
            "unit_amount": 4717.17,
            "amount": 4717.17,
            "type": "subscription",
            "invoice_id": "5f7acb709e76da30e3b92cdb",
            "created_at": "2020-10-05T08:00:27.768Z",
            "modified_at": "2020-10-05T08:00:27.768Z"
          }
        ]
      }
    ],
    "start": 0,
    "end": 10,
    "limit": 10,
    "page": 1,
    "total": 1
  }
}
```
</details>

</details>









---


#### getInvoiceById
Get invoice by id




```swift
platformClient.billing.getInvoiceById(invoiceId: invoiceId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| invoiceId | String | yes | Invoice id |  



Get invoice by id.

*Returned Response:*




[Invoice](#Invoice)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "invoice": {
      "period": {
        "start": "2020-08-17T13:45:36.722Z",
        "end": "2020-09-17T13:45:36.722Z"
      },
      "client": {
        "address_lines": [
          "TV TOWER, Foot Over Bridge Khar",
          "",
          "Mumbai, 400079, Maharashtra, India"
        ],
        "name": "RELIANCE RETAIL LTD",
        "email": "ZAK@GMAIL.COM",
        "phone": "91 1234567890"
      },
      "auto_advance": true,
      "currency": "INR",
      "paid": true,
      "attemp": 3,
      "_id": "5f7acb709e76da30e3b92cdb",
      "collection_method": "charge_automatically",
      "subscriber_id": "5ee773e1351e5e84289ed9cf",
      "invoice_url": "",
      "number": "FP-1-72020-736",
      "pg_data": {},
      "receipt_number": "5fd9b08464dc6ac048a08988",
      "statement_descriptor": "RELIANCE RETAIL LTD",
      "current_status": "paid",
      "status_trail": [
        {
          "_id": "5f7ad29bd562744eab216379",
          "value": "draft",
          "timestamp": "2020-10-05T08:00:27.753Z"
        },
        {
          "_id": "5fcf40ce1613c029aff417dd",
          "value": "open",
          "timestamp": "2020-12-08T09:01:02.038Z"
        },
        {
          "_id": "5fd9b08664dc6a1ad0a08989",
          "value": "paid",
          "timestamp": "2020-12-16T07:00:22.973Z"
        }
      ],
      "subtotal": 15720.08,
      "total": 15720.08,
      "subscription": "5f3a8a00668947663b7fbd38",
      "next_action_time": "2020-10-05T09:00:27.754Z",
      "created_at": "2020-10-05T07:29:52.876Z",
      "modified_at": "2020-12-16T07:00:22.980Z",
      "hash_identifier": "575999aca03e36f0fa54db5235bc7f25",
      "payment_method": {
        "pg_payment_method_id": ""
      }
    },
    "invoice_items": [
      {
        "_id": "5f7acb709e76da48b1b92cdd",
        "currency": "INR",
        "plan": {
          "recurring": {
            "interval": "month",
            "interval_count": 1
          },
          "is_trial_plan": false,
          "plan_group": "default",
          "tag_lines": [],
          "currency": "INR",
          "is_active": true,
          "is_visible": true,
          "trial_period": 0,
          "addons": [],
          "tags": [],
          "type": "public",
          "country": "IN",
          "_id": "5f3a8786c90d780037723a14",
          "name": "Professional",
          "description": "Professional",
          "amount": 1499,
          "product_suite_id": "5f3a8786c90d7800377239f3",
          "created_at": "2020-08-17T13:35:02.802Z",
          "modified_at": "2020-08-17T13:35:02.802Z"
        },
        "name": "Professional",
        "quantity": 1,
        "description": "Professional",
        "period": {
          "start": "2020-08-17T13:45:36.722Z",
          "end": "2020-10-05T07:29:52.868Z"
        },
        "unit_amount": 2356.77,
        "amount": 2356.77,
        "type": "subscription",
        "invoice_id": "5f7acb709e76da30e3b92cdb",
        "created_at": "2020-10-05T07:29:52.886Z",
        "modified_at": "2020-10-05T07:29:52.886Z"
      },
      {
        "_id": "5f7acf199aa6830c4fe5e984",
        "currency": "INR",
        "plan": {
          "recurring": {
            "interval": "month",
            "interval_count": 1
          },
          "is_trial_plan": false,
          "plan_group": "default",
          "tag_lines": [],
          "currency": "INR",
          "is_active": true,
          "is_visible": true,
          "trial_period": 0,
          "addons": [],
          "tags": [
            "popular"
          ],
          "type": "public",
          "country": "IN",
          "_id": "5f3a8786c90d780037723a13",
          "name": "Premium",
          "description": "Premium",
          "amount": 2499,
          "product_suite_id": "5f3a8786c90d7800377239f3",
          "created_at": "2020-08-17T13:35:02.547Z",
          "modified_at": "2020-08-17T13:35:02.547Z"
        },
        "name": "Premium",
        "quantity": 1,
        "description": "Premium",
        "period": {
          "start": "2020-08-17T13:45:36.722Z",
          "end": "2020-10-05T07:45:29.755Z"
        },
        "unit_amount": 3929.87,
        "amount": 3929.87,
        "type": "subscription",
        "invoice_id": "5f7acb709e76da30e3b92cdb",
        "created_at": "2020-10-05T07:45:29.765Z",
        "modified_at": "2020-10-05T07:45:29.765Z"
      },
      {
        "_id": "5f7acf7da10a707fc502dcd4",
        "currency": "INR",
        "plan": {
          "recurring": {
            "interval": "month",
            "interval_count": 1
          },
          "is_trial_plan": false,
          "plan_group": "default",
          "tag_lines": [],
          "currency": "INR",
          "is_active": true,
          "is_visible": true,
          "trial_period": 0,
          "addons": [],
          "tags": [],
          "type": "public",
          "country": "IN",
          "_id": "5f3a8786c90d780037723a16",
          "name": "Ultra Premium",
          "description": "Ultra Premium",
          "amount": 2999,
          "product_suite_id": "5f3a8786c90d7800377239f3",
          "created_at": "2020-08-17T13:35:02.802Z",
          "modified_at": "2020-08-17T13:35:02.802Z"
        },
        "name": "Ultra Premium",
        "quantity": 1,
        "description": "Ultra Premium",
        "period": {
          "start": "2020-08-17T13:45:36.722Z",
          "end": "2020-10-05T07:47:09.532Z"
        },
        "unit_amount": 4716.27,
        "amount": 4716.27,
        "type": "subscription",
        "invoice_id": "5f7acb709e76da30e3b92cdb",
        "created_at": "2020-10-05T07:47:09.541Z",
        "modified_at": "2020-10-05T07:47:09.541Z"
      },
      {
        "_id": "5f7ad29bd56274f23321637a",
        "currency": "INR",
        "plan": {
          "recurring": {
            "interval": "month",
            "interval_count": 1
          },
          "is_trial_plan": false,
          "plan_group": "default",
          "tag_lines": [],
          "currency": "INR",
          "is_active": true,
          "is_visible": true,
          "trial_period": 0,
          "addons": [],
          "tags": [],
          "type": "public",
          "country": "IN",
          "_id": "5f3a8786c90d780037723a16",
          "name": "Ultra Premium",
          "description": "Ultra Premium",
          "amount": 2999,
          "product_suite_id": "5f3a8786c90d7800377239f3",
          "created_at": "2020-08-17T13:35:02.802Z",
          "modified_at": "2020-08-17T13:35:02.802Z"
        },
        "name": "Ultra Premium",
        "quantity": 1,
        "description": "Ultra Premium",
        "period": {
          "start": "2020-08-17T13:45:36.722Z",
          "end": "2020-10-05T08:00:27.753Z"
        },
        "unit_amount": 4717.17,
        "amount": 4717.17,
        "type": "subscription",
        "invoice_id": "5f7acb709e76da30e3b92cdb",
        "created_at": "2020-10-05T08:00:27.768Z",
        "modified_at": "2020-10-05T08:00:27.768Z"
      }
    ]
  }
}
```
</details>

</details>









---


#### getCustomerDetail
Get subscription customer detail




```swift
platformClient.billing.getCustomerDetail() { (response, error) in
    // Use response
}
```






Get subscription customer detail.

*Returned Response:*




[SubscriptionCustomer](#SubscriptionCustomer)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "phone": {
      "phone_number": "1234567890",
      "phone_country_code": "91"
    },
    "billing_address": {
      "country": "India",
      "state": "Maharastra",
      "city": "Mumbai",
      "line1": "test1",
      "line2": "test2",
      "postal_code": "400059"
    },
    "_id": "5ee773e1351e5e84289ed9cf",
    "unique_id": "1",
    "type": "company",
    "name": "test retail",
    "email": "test@gmail.com",
    "created_at": "2020-06-15T13:13:05.267Z",
    "modified_at": "2021-02-04T00:58:45.356Z",
    "data": {
      "pg_user_exists": true,
      "id": 2
    }
  }
}
```
</details>

</details>









---


#### upsertCustomerDetail
Upsert subscription customer detail




```swift
platformClient.billing.upsertCustomerDetail(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SubscriptionCustomerCreate | yes | Request body |


Upsert subscription customer detail.

*Returned Response:*




[SubscriptionCustomer](#SubscriptionCustomer)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "phone": {
      "phone_number": "1234567890",
      "phone_country_code": "91"
    },
    "billing_address": {
      "country": "India",
      "state": "Maharastra",
      "city": "Mumbai",
      "line1": "test1",
      "line2": "test2",
      "postal_code": "400059"
    },
    "_id": "5ee773e1351e5e84289ed9cf",
    "unique_id": "1",
    "type": "company",
    "name": "test retail",
    "email": "test@gmail.com",
    "created_at": "2020-06-15T13:13:05.267Z",
    "modified_at": "2021-02-04T00:58:45.356Z",
    "data": {
      "pg_user_exists": true,
      "id": 2
    }
  }
}
```
</details>

</details>









---


#### getSubscription
Get current subscription detail




```swift
platformClient.billing.getSubscription() { (response, error) in
    // Use response
}
```






If subscription is active then it will return is_enabled true and return subscription object. If subscription is not active then is_enabled false and message.


*Returned Response:*




[SubscriptionStatus](#SubscriptionStatus)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Active subscription</i></summary>

```json
{
  "value": {
    "is_enabled": true,
    "subscription": {
      "current_period": {
        "start": "2023-05-23T07:00:31.345Z",
        "end": "2023-06-22T07:00:31.345Z"
      },
      "pause_collection": {},
      "trial": {},
      "invoice_settings": {
        "generation": true,
        "charging": true
      },
      "is_active": true,
      "cancel_at_period_end": false,
      "freezed": false,
      "channel_type": "ecomm",
      "_id": "6385dc9389fe3577db6935f3",
      "subscriber_id": "6385dc9289fe356a346935eb",
      "plan_id": "5f2e30cad1456d00386abf1c",
      "product_suite_id": "5f2e30cad1456d00386abefc",
      "plan_data": {
        "plan_components": [
          {
            "is_active": true,
            "display_text": null,
            "_id": "5f2e30cbd1456d00386ac008",
            "plan_id": "5f2e30cad1456d00386abf1c",
            "created_at": "2020-08-08T04:57:47.829Z",
            "modified_at": "2021-07-31T12:13:51.221Z",
            "component": {
              "is_visible": true,
              "is_active": true,
              "is_display": true,
              "_id": "5f2e30cad1456d00386abefd",
              "component_price_config": {
                "type": "display",
                "display_text": "4%"
              },
              "name": "Transaction Fees",
              "slug": "transaction-fee",
              "description": "Transaction fees is inclusive of Payment Gateway",
              "group": "Key Features",
              "icon": "",
              "product_suite_id": "5f2e30cad1456d00386abefc",
              "created_at": "2020-08-08T04:57:46.648Z",
              "modified_at": "2021-07-31T12:13:50.344Z",
              "links": {}
            },
            "component_price": {
              "display_text": "3.5%",
              "is_default": false,
              "is_active": true,
              "processing_type": "display",
              "tags": [],
              "_id": "5f2e30cbd1456d00386abf77",
              "component_id": "5f2e30cad1456d00386abefd",
              "created_at": "2020-08-08T04:57:47.433Z",
              "modified_at": "2023-04-21T07:04:22.574Z",
              "__v": 0
            }
          }
        ],
        "components": [
          {
            "_id": "634569a3675d1912531e5ef3",
            "component_price_config": {
              "type": "revenue",
              "default_config": {
                "recurring": {
                  "aggregate_usage": "sum",
                  "usage_type": "licensed",
                  "interval_count": 1
                },
                "transform_quantity": {
                  "divide_by": 1,
                  "round": "up"
                },
                "free_tier": {
                  "type": "TIME_BASED",
                  "value": 0
                },
                "unit_amount": 0,
                "quantity": 1,
                "price_type": "static",
                "price_ui_type": "standard",
                "bill_type": "one_time",
                "billing_scheme": "per_unit",
                "display_text": "Yes",
                "tiers": [],
                "currency": "INR"
              },
              "display_text": "Free",
              "price_meta": {
                "unit_amount": 0,
                "price_type": "static",
                "bill_type": "one_time",
                "billing_scheme": "per_unit",
                "transform_quantity": {
                  "divide_by": 1,
                  "round": "up"
                }
              }
            },
            "is_visible": true,
            "is_active": true,
            "is_display": true,
            "product_suite_id": "5ececa006415744de9228e2e",
            "name": "SSL Certificates",
            "slug": "ssl-certificates",
            "description": "",
            "group": "Key Features",
            "icon": "",
            "links": {},
            "created_at": "2022-10-11T13:03:31.767Z",
            "modified_at": "2023-04-21T07:04:23.544Z"
          }
        ],
        "fee_components": [],
        "recurring": {
          "interval_count": 1,
          "interval": "month"
        },
        "taxation": {
          "gst": 0.18
        },
        "one_time_fees": {
          "developement": 0,
          "marketing": 0
        },
        "credit_line": {
          "is_active": false
        },
        "is_trial_plan": false,
        "plan_group": "default",
        "tag_lines": [],
        "currency": "INR",
        "is_active": true,
        "is_visible": true,
        "trial_period": 0,
        "addons": [],
        "tags": [
          "popular"
        ],
        "type": "public",
        "country": "IN",
        "company_ids": [],
        "channel_type": "ecomm",
        "_id": "5f2e30cad1456d00386abf1c",
        "tagLines": [],
        "name": "Premium",
        "description": "For scaled up businesses",
        "amount": 2499,
        "product_suite_id": "5f2e30cad1456d00386abefc",
        "created_at": "2020-08-08T04:57:46.830Z",
        "modified_at": "2023-04-21T07:04:22.363Z",
        "current_status": "active",
        "plan_leeway_after_activation": 7,
        "activated_on": "2023-06-02T07:57:16.638Z"
      },
      "current_status": "active",
      "collection_method": "charge_automatically",
      "created_at": "2022-11-29T10:18:59.466Z",
      "modified_at": "2023-06-02T07:57:17.254Z",
      "latest_invoice": "6479a0dda77a156ad997bd4d"
    },
    "latest_invoice": {
      "documents": {},
      "payment": {},
      "period": {
        "start": "2023-05-23T07:00:31.345Z",
        "end": "2023-06-22T07:00:31.345Z"
      },
      "client": {
        "address_lines": [
          "TEST, TEST ,TEST, TEST",
          "",
          "NAVI MUMBAI, 400614, MAHARASHTRA, INDIA"
        ],
        "name": "avi_test",
        "email": "avinashsharma@gofynd.com",
        "phone": "undefined undefined"
      },
      "discount": {},
      "taxation": {
        "cgst": 0.09,
        "sgst": 0.09,
        "igst": 0
      },
      "auto_advance": false,
      "currency": "INR",
      "paid": true,
      "attemp": 1,
      "credit_note_amount": 1768.82,
      "_id": "6479a0dda77a156ad997bd4d",
      "collection_method": "charge_automatically",
      "subscriber_id": "6385dc9289fe356a346935eb",
      "invoice_url": "",
      "number": "PS-P-A00515-FY24",
      "pg_data": {},
      "old_settlement": 999.33,
      "credit_balance": null,
      "receipt_number": "",
      "statement_descriptor": "avi_test",
      "current_status": "paid",
      "status_trail": [
        {
          "_id": "6479a0dda77a157bd397bd4e",
          "value": "open",
          "timestamp": "2023-06-02T07:57:17.096Z"
        },
        {
          "_id": "6479a196244a37915c4b9448",
          "value": "paid",
          "timestamp": "2023-06-02T08:00:22.059Z"
        },
        {
          "_id": "6479a196e3c6582ed5ea7157",
          "value": "paid",
          "timestamp": "2023-06-02T08:00:22.099Z"
        }
      ],
      "subtotal": 2555.4900000000002,
      "total": 786.67,
      "subscription": "6385dc9389fe3577db6935f3",
      "next_action_time": "2023-06-02T07:57:17.112Z",
      "meta": {
        "old_plan_amount": 499.67,
        "new_plan_amount": 1666,
        "credit_note_id": "FP-C27-A00055-24",
        "isPlanChanged": true
      },
      "created_at": "2023-06-02T07:57:17.128Z",
      "modified_at": "2023-06-02T08:00:23.182Z",
      "hash_identifier": "987abf78c61bfef585242bbbeaab1b59",
      "pdf_url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/company/13781/self/subscription/documents/invoices/original/U6ffgNlo_-PS-P-A00515-FY24-paid.pdf"
    },
    "latestInvoice": {
      "documents": {},
      "payment": {},
      "period": {
        "start": "2023-05-23T07:00:31.345Z",
        "end": "2023-06-22T07:00:31.345Z"
      },
      "client": {
        "address_lines": [
          "TEST, TEST ,TEST, TEST",
          "",
          "NAVI MUMBAI, 400614, MAHARASHTRA, INDIA"
        ],
        "name": "avi_test",
        "email": "avinashsharma@gofynd.com",
        "phone": "undefined undefined"
      },
      "discount": {},
      "taxation": {
        "cgst": 0.09,
        "sgst": 0.09,
        "igst": 0
      },
      "auto_advance": false,
      "currency": "INR",
      "paid": true,
      "attemp": 1,
      "credit_note_amount": 1768.82,
      "_id": "6479a0dda77a156ad997bd4d",
      "collection_method": "charge_automatically",
      "subscriber_id": "6385dc9289fe356a346935eb",
      "invoice_url": "",
      "number": "PS-P-A00515-FY24",
      "pg_data": {},
      "old_settlement": 999.33,
      "credit_balance": null,
      "receipt_number": "",
      "statement_descriptor": "avi_test",
      "current_status": "paid",
      "status_trail": [
        {
          "_id": "6479a0dda77a157bd397bd4e",
          "value": "open",
          "timestamp": "2023-06-02T07:57:17.096Z"
        },
        {
          "_id": "6479a196244a37915c4b9448",
          "value": "paid",
          "timestamp": "2023-06-02T08:00:22.059Z"
        },
        {
          "_id": "6479a196e3c6582ed5ea7157",
          "value": "paid",
          "timestamp": "2023-06-02T08:00:22.099Z"
        }
      ],
      "subtotal": 2555.4900000000002,
      "total": 786.67,
      "subscription": "6385dc9389fe3577db6935f3",
      "next_action_time": "2023-06-02T07:57:17.112Z",
      "meta": {
        "old_plan_amount": 499.67,
        "new_plan_amount": 1666,
        "credit_note_id": "FP-C27-A00055-24",
        "isPlanChanged": true
      },
      "created_at": "2023-06-02T07:57:17.128Z",
      "modified_at": "2023-06-02T08:00:23.182Z",
      "hash_identifier": "987abf78c61bfef585242bbbeaab1b59",
      "pdf_url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/company/13781/self/subscription/documents/invoices/original/U6ffgNlo_-PS-P-A00515-FY24-paid.pdf"
    },
    "mandate_amount": "630000",
    "current_subscriptions": [
      {
        "current_period": {
          "start": "2023-05-23T07:00:31.345Z",
          "end": "2023-06-22T07:00:31.345Z"
        },
        "pause_collection": {},
        "trial": {},
        "invoice_settings": {
          "generation": true,
          "charging": true
        },
        "is_active": true,
        "cancel_at_period_end": false,
        "freezed": false,
        "channel_type": "ecomm",
        "_id": "6385dc9389fe3577db6935f3",
        "subscriber_id": "6385dc9289fe356a346935eb",
        "plan_id": "5f2e30cad1456d00386abf1c",
        "product_suite_id": "5f2e30cad1456d00386abefc",
        "plan_data": {
          "plan_components": [
            {
              "is_active": true,
              "display_text": null,
              "_id": "5f2e30cbd1456d00386ac008",
              "plan_id": "5f2e30cad1456d00386abf1c",
              "created_at": "2020-08-08T04:57:47.829Z",
              "modified_at": "2021-07-31T12:13:51.221Z",
              "component": {
                "is_visible": true,
                "is_active": true,
                "is_display": true,
                "_id": "5f2e30cad1456d00386abefd",
                "component_price_config": {
                  "type": "display",
                  "display_text": "4%"
                },
                "name": "Transaction Fees",
                "slug": "transaction-fee",
                "description": "Transaction fees is inclusive of Payment Gateway",
                "group": "Key Features",
                "icon": "",
                "product_suite_id": "5f2e30cad1456d00386abefc",
                "created_at": "2020-08-08T04:57:46.648Z",
                "modified_at": "2021-07-31T12:13:50.344Z",
                "links": {}
              },
              "component_price": {
                "display_text": "3.5%",
                "is_default": false,
                "is_active": true,
                "processing_type": "display",
                "tags": [],
                "_id": "5f2e30cbd1456d00386abf77",
                "component_id": "5f2e30cad1456d00386abefd",
                "created_at": "2020-08-08T04:57:47.433Z",
                "modified_at": "2023-04-21T07:04:22.574Z",
                "__v": 0
              }
            }
          ],
          "components": [
            {
              "_id": "634569a3675d1912531e5ef3",
              "component_price_config": {
                "type": "revenue",
                "default_config": {
                  "recurring": {
                    "aggregate_usage": "sum",
                    "usage_type": "licensed",
                    "interval_count": 1
                  },
                  "transform_quantity": {
                    "divide_by": 1,
                    "round": "up"
                  },
                  "free_tier": {
                    "type": "TIME_BASED",
                    "value": 0
                  },
                  "unit_amount": 0,
                  "quantity": 1,
                  "price_type": "static",
                  "price_ui_type": "standard",
                  "bill_type": "one_time",
                  "billing_scheme": "per_unit",
                  "display_text": "Yes",
                  "tiers": [],
                  "currency": "INR"
                },
                "display_text": "Free",
                "price_meta": {
                  "unit_amount": 0,
                  "price_type": "static",
                  "bill_type": "one_time",
                  "billing_scheme": "per_unit",
                  "transform_quantity": {
                    "divide_by": 1,
                    "round": "up"
                  }
                }
              },
              "is_visible": true,
              "is_active": true,
              "is_display": true,
              "product_suite_id": "5ececa006415744de9228e2e",
              "name": "SSL Certificates",
              "slug": "ssl-certificates",
              "description": "",
              "group": "Key Features",
              "icon": "",
              "links": {},
              "created_at": "2022-10-11T13:03:31.767Z",
              "modified_at": "2023-04-21T07:04:23.544Z"
            }
          ],
          "fee_components": [],
          "recurring": {
            "interval_count": 1,
            "interval": "month"
          },
          "taxation": {
            "gst": 0.18
          },
          "one_time_fees": {
            "developement": 0,
            "marketing": 0
          },
          "credit_line": {
            "is_active": false
          },
          "is_trial_plan": false,
          "plan_group": "default",
          "tag_lines": [],
          "currency": "INR",
          "is_active": true,
          "is_visible": true,
          "trial_period": 0,
          "addons": [],
          "tags": [
            "popular"
          ],
          "type": "public",
          "country": "IN",
          "company_ids": [],
          "channel_type": "ecomm",
          "_id": "5f2e30cad1456d00386abf1c",
          "tagLines": [],
          "name": "Premium",
          "description": "For scaled up businesses",
          "amount": 2499,
          "product_suite_id": "5f2e30cad1456d00386abefc",
          "created_at": "2020-08-08T04:57:46.830Z",
          "modified_at": "2023-04-21T07:04:22.363Z",
          "current_status": "active",
          "plan_leeway_after_activation": 7,
          "activated_on": "2023-06-02T07:57:16.638Z"
        },
        "current_status": "active",
        "collection_method": "charge_automatically",
        "created_at": "2022-11-29T10:18:59.466Z",
        "modified_at": "2023-06-02T07:57:17.254Z",
        "latest_invoice": "6479a0dda77a156ad997bd4d"
      }
    ]
  }
}
```
</details>

<details>
<summary><i>&nbsp; Inactive subscription</i></summary>

```json
{
  "value": {
    "is_enabled": true,
    "message": "Subscription not enabled"
  }
}
```
</details>

</details>









---


#### getFeatureLimitConfig
Get subscription subscription limits




```swift
platformClient.billing.getFeatureLimitConfig(productSuite: productSuite, type: type) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| productSuite | String? | no |  |   
| type | String? | no |  |  



Get subscription subscription limits.

*Returned Response:*




[SubscriptionLimit](#SubscriptionLimit)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "application": {
      "enabled": true,
      "hard_limit": 25,
      "soft_limit": 25
    },
    "marketplace": {
      "enabled": true
    },
    "other_platform": {
      "enabled": true
    },
    "team": {
      "limit": -1
    },
    "products": {
      "bulk": true,
      "limit": -1
    },
    "extensions": {
      "enabled": true,
      "limit": -1
    },
    "integrations": {
      "enabled": true,
      "limit": -1
    },
    "is_trial_plan": false
  }
}
```
</details>

</details>









---


#### activateSubscriptionPlan
Activate subscription




```swift
platformClient.billing.activateSubscriptionPlan(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SubscriptionActivateReq | yes | Request body |


It will activate subscription plan for customer

*Returned Response:*




[SubscriptionActivateRes](#SubscriptionActivateRes)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "success": true,
    "data": {
      "pause_collection": {},
      "trial": {},
      "invoice_settings": {
        "generation": true,
        "charging": true
      },
      "is_active": true,
      "cancel_at_period_end": false,
      "_id": "601b8e4a32d3e837ec662f5c",
      "subscriber_id": "5ef5f810961ddf004c1457ac",
      "plan_id": "5f3a8786c90d780037723a12",
      "product_suite_id": "5f3a8786c90d7800377239f3",
      "plan_data": {
        "recurring": {
          "interval": "month",
          "interval_count": 1
        },
        "is_trial_plan": false,
        "plan_group": "default",
        "tag_lines": [],
        "currency": "INR",
        "is_active": true,
        "is_visible": true,
        "trial_period": 0,
        "addons": [],
        "tags": [],
        "type": "public",
        "country": "IN",
        "_id": "5f3a8786c90d780037723a12",
        "name": "Standard",
        "description": "Standard",
        "amount": 999,
        "product_suite_id": "5f3a8786c90d7800377239f3",
        "created_at": "2020-08-17T13:35:02.547Z",
        "modified_at": "2020-08-17T13:35:02.547Z"
      },
      "current_period": {
        "start": "2021-02-04T06:03:54.567Z",
        "end": "2021-03-04T06:03:54.567Z"
      },
      "current_status": "active",
      "collection_method": "charge_automatically",
      "created_at": "2021-02-04T06:03:54.580Z",
      "modified_at": "2021-02-04T06:03:54.580Z"
    }
  }
}
```
</details>

</details>









---


#### cancelSubscriptionPlan
Cancel subscription




```swift
platformClient.billing.cancelSubscriptionPlan(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CancelSubscriptionReq | yes | Request body |


It will cancel current active subscription.

*Returned Response:*




[CancelSubscriptionRes](#CancelSubscriptionRes)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "success": true,
    "data": {
      "current_period": {
        "start": "2021-02-04T06:03:54.567Z",
        "end": "2021-03-04T06:03:54.567Z"
      },
      "pause_collection": {},
      "trial": {},
      "invoice_settings": {
        "generation": true,
        "charging": true
      },
      "is_active": false,
      "cancel_at_period_end": false,
      "_id": "601b8e4a32d3e837ec662f5c",
      "subscriber_id": "5ef5f810961ddf004c1457ac",
      "plan_id": "5f3a8786c90d780037723a12",
      "product_suite_id": "5f3a8786c90d7800377239f3",
      "plan_data": {
        "recurring": {
          "interval": "month",
          "interval_count": 1
        },
        "is_trial_plan": false,
        "plan_group": "default",
        "tag_lines": [],
        "currency": "INR",
        "is_active": true,
        "is_visible": true,
        "trial_period": 0,
        "addons": [],
        "tags": [],
        "type": "public",
        "country": "IN",
        "_id": "5f3a8786c90d780037723a12",
        "name": "Standard",
        "description": "Standard",
        "amount": 999,
        "product_suite_id": "5f3a8786c90d7800377239f3",
        "created_at": "2020-08-17T13:35:02.547Z",
        "modified_at": "2020-08-17T13:35:02.547Z"
      },
      "current_status": "canceled",
      "collection_method": "charge_automatically",
      "created_at": "2021-02-04T06:03:54.580Z",
      "modified_at": "2021-02-04T08:52:25.806Z",
      "cancel_at": "2021-02-04T08:52:25.802Z",
      "canceled_at": "2021-02-04T08:52:25.802Z"
    }
  }
}
```
</details>

</details>









---


#### getEnterprisePlans
Get Enterprise Plans




```swift
platformClient.billing.getEnterprisePlans() { (response, error) in
    // Use response
}
```






Get Enterprise Plans.


*Returned Response:*




[[Plan]](#[Plan])

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Enterprise Plans</i></summary>

```json
{
  "value": [
    {
      "recurring": {
        "interval": "month",
        "interval_count": 1
      },
      "is_trial_plan": false,
      "plan_group": "default",
      "tag_lines": [],
      "currency": "INR",
      "is_active": true,
      "is_visible": true,
      "trial_period": 0,
      "addons": [],
      "tags": [],
      "type": "public",
      "country": "IN",
      "_id": "60093f1aabffb61debbcb44b",
      "product_suite_id": "60093f13632a0a1d6fb5cdc3",
      "name": "2020won",
      "description": "2020won",
      "amount": 21,
      "meta": {
        "tags": [
          "2020won"
        ]
      },
      "created_at": "2021-01-21T08:45:14.601Z",
      "modified_at": "2021-01-21T08:45:14.601Z"
    },
    {
      "recurring": {
        "interval": "month",
        "interval_count": 1
      },
      "is_trial_plan": false,
      "plan_group": "default",
      "tag_lines": [],
      "currency": "INR",
      "is_active": true,
      "is_visible": true,
      "trial_period": 0,
      "addons": [],
      "tags": [],
      "type": "public",
      "country": "IN",
      "_id": "60093f13632a0a1d6fb5cddc",
      "name": "Standard",
      "description": "Standard",
      "amount": 999,
      "product_suite_id": "60093f13632a0a1d6fb5cdc3",
      "created_at": "2021-01-21T08:45:07.979Z",
      "modified_at": "2021-01-21T08:45:07.979Z"
    },
    {
      "recurring": {
        "interval": "month",
        "interval_count": 1
      },
      "is_trial_plan": false,
      "plan_group": "default",
      "tag_lines": [],
      "currency": "INR",
      "is_active": true,
      "is_visible": true,
      "trial_period": 0,
      "addons": [],
      "tags": [],
      "type": "public",
      "country": "IN",
      "_id": "60093f13632a0a1d6fb5cde0",
      "name": "Professional",
      "description": "Professional",
      "amount": 1499,
      "product_suite_id": "60093f13632a0a1d6fb5cdc3",
      "created_at": "2021-01-21T08:45:07.985Z",
      "modified_at": "2021-01-21T08:45:07.985Z"
    },
    {
      "recurring": {
        "interval": "month",
        "interval_count": 1
      },
      "is_trial_plan": false,
      "plan_group": "default",
      "tag_lines": [],
      "currency": "INR",
      "is_active": true,
      "is_visible": true,
      "trial_period": 0,
      "addons": [],
      "tags": [
        "popular"
      ],
      "type": "public",
      "country": "IN",
      "_id": "60093f13632a0a1d6fb5cde1",
      "name": "Premium",
      "description": "Premium",
      "amount": 2499,
      "product_suite_id": "60093f13632a0a1d6fb5cdc3",
      "created_at": "2021-01-21T08:45:07.985Z",
      "modified_at": "2021-01-21T08:45:07.985Z"
    },
    {
      "recurring": {
        "interval": "month",
        "interval_count": 1
      },
      "is_trial_plan": false,
      "plan_group": "default",
      "tag_lines": [],
      "currency": "INR",
      "is_active": true,
      "is_visible": true,
      "trial_period": 0,
      "addons": [],
      "tags": [],
      "type": "public",
      "country": "IN",
      "_id": "60093f13632a0a1d6fb5cddf",
      "name": "Ultra Premium",
      "description": "Ultra Premium",
      "amount": 2999,
      "product_suite_id": "60093f13632a0a1d6fb5cdc3",
      "created_at": "2021-01-21T08:45:07.979Z",
      "modified_at": "2021-01-21T08:45:07.979Z"
    }
  ]
}
```
</details>

</details>









---


#### planStatusUpdate
Update Status of The plan




```swift
platformClient.billing.planStatusUpdate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PlanStatusUpdateReq | yes | Request body |


It will update the status of the plan

*Returned Response:*




[Plan](#Plan)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "recurring": {
      "interval": "month",
      "interval_count": 1
    },
    "is_trial_plan": false,
    "plan_group": "default",
    "tag_lines": [],
    "currency": "INR",
    "is_active": true,
    "is_visible": true,
    "trial_period": 0,
    "addons": [],
    "tags": [],
    "type": "public",
    "country": "IN",
    "_id": "5f3a8786c90d780037723a12",
    "name": "Standard",
    "description": "Standard",
    "amount": 999,
    "product_suite_id": "5f3a8786c90d7800377239f3",
    "created_at": "2020-08-17T13:35:02.547Z",
    "modified_at": "2020-08-17T13:35:02.547Z",
    "components": [
      {
        "name": "Shipping",
        "slug": "shipping",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "As per rate card"
      },
      {
        "name": "Transaction Fee",
        "slug": "transaction-fee",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "4.5%"
      },
      {
        "name": "Number of Customers",
        "slug": "customers",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "Unlimited"
      },
      {
        "name": "Team Management",
        "slug": "team-management",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "20"
      },
      {
        "name": "Selling Locations",
        "slug": "selling-locations",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "10"
      },
      {
        "name": "Number of Products",
        "slug": "products",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "Unlimited"
      },
      {
        "name": "Fynd supported Payment Gateway",
        "slug": "fynd-supported-payment-gateway",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "Yes"
      },
      {
        "name": "SSL Certificates",
        "slug": "ssl-certificates",
        "description": "SSL certificates",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "Free"
      },
      {
        "name": "Themes",
        "slug": "themes",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "Basic Themes <br> Use themes by Partners"
      },
      {
        "name": "Email Campaign",
        "slug": "email-campagin",
        "description": "email-campagin",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "Free 5000 email <br> Additional email charged at 0.25 INR per email"
      },
      {
        "name": "Sale Websites",
        "slug": "sale-websites",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "2"
      },
      {
        "name": "SMS campaign",
        "slug": "sms-campagin",
        "description": "Sms campagin",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "Free 5000 SMS <br> Additional SMS charged at 0.25 INR per SMS"
      },
      {
        "name": "Analytics - Campaign Source",
        "slug": "analytics-campaign-source",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "CSV + Basic Events"
      },
      {
        "name": "Content Management",
        "slug": "content-managment",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "Yes"
      },
      {
        "name": "Custom Domain",
        "slug": "custom-domain",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "Yes"
      },
      {
        "name": "Service-Level Agreement",
        "slug": "sla",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "48Hr"
      },
      {
        "name": "Support",
        "slug": "support",
        "description": "",
        "group": "feature",
        "icon": "",
        "links": {},
        "enabled": true,
        "display_text": "Email"
      }
    ]
  }
}
```
</details>

</details>









---


#### subscripePlan
Subscribe plan.




```swift
platformClient.billing.subscripePlan(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SunscribePlan | yes | Request body |


It will subscribe a plan.

*Returned Response:*




[SubscribePlanRes](#SubscribePlanRes)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "redirect_url": "https://platform.fyndx1.de/company/8029/subscription/renew-plan?plan_id=64e8c18e548ddf67f0c4cb1f&transaction_id=64ec54e3202d2b0bd9fcd120&renew=true&callback_url=https://platform.fyndx1.de/company/8029/billing/bills&meta={\"subscribe\":true,\"is_custom_plan\":true,\"is_plan_upgrade\":false}",
    "transaction_id": "64ec54e3202d2b0bd9fcd120",
    "current_status": "initiated",
    "meta": {
      "subscribe": true,
      "is_custom_plan": true,
      "is_plan_upgrade": false
    }
  }
}
```
</details>

</details>









---


#### getentityDetail
Generic api to get the entity detail




```swift
platformClient.billing.getentityDetail(entityName: entityName, entityId: entityId, channel: channel, component: component, componentName: componentName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| entityName | String | yes | Entity name. |   
| entityId | String? | no | Entity unique id. |   
| channel | String | yes | Ordering channel. |   
| component | String? | no | The coponents the user would like to know. |   
| componentName | String? | no | The name of component the preferred to be fetched. |  



Generic api to get the entity detail

*Returned Response:*




[EntityResponse](#EntityResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---




### Schemas

 
 
 #### [BadRequest](#BadRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Failure message. |

---


 
 
 #### [ResourceNotFound](#ResourceNotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Resource not found with {id} |

---


 
 
 #### [InternalServerError](#InternalServerError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Internal server Server error |
 | code | String? |  yes  | Error code |

---


 
 
 #### [CheckValidityResponse](#CheckValidityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isValid | Bool? |  yes  |  |
 | discountAmount | Double? |  yes  |  |

---


 
 
 #### [PlanRecurring](#PlanRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String? |  yes  |  |
 | intervalCount | Double? |  yes  |  |

---


 
 
 #### [Plan](#Plan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [PlanRecurring](#PlanRecurring)? |  yes  |  |
 | isTrialPlan | Bool? |  yes  |  |
 | planGroup | String? |  yes  |  |
 | tagLines | [String]? |  yes  |  |
 | currency | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | isVisible | Bool? |  yes  |  |
 | trialPeriod | Double? |  yes  |  |
 | addons | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | country | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | amount | Double? |  yes  |  |
 | productSuiteId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |

---


 
 
 #### [SubscriptionTrialPeriod](#SubscriptionTrialPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |

---


 
 
 #### [EntityChargePrice](#EntityChargePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double |  no  | Amount for price. Minimum value 1 |
 | currencyCode | String |  no  |  |

---


 
 
 #### [EntityChargeRecurring](#EntityChargeRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String |  no  |  |

---


 
 
 #### [ChargeLineItem](#ChargeLineItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | term | String |  no  |  |
 | pricingType | String |  no  |  |
 | price | [EntityChargePrice](#EntityChargePrice) |  no  |  |
 | recurring | [EntityChargeRecurring](#EntityChargeRecurring)? |  yes  |  |
 | cappedAmount | Double? |  yes  |  |
 | trialDays | Int? |  yes  |  |
 | isTest | Bool? |  yes  |  |
 | metadata | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateSubscriptionCharge](#CreateSubscriptionCharge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | trialDays | Int? |  yes  |  |
 | lineItems | [[ChargeLineItem](#ChargeLineItem)] |  no  |  |
 | isTest | Bool? |  yes  |  |
 | returnUrl | String |  no  |  |

---


 
 
 #### [OneTimeChargeItem](#OneTimeChargeItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | term | String? |  yes  |  |
 | pricingType | String |  no  |  |
 | price | [EntityChargePrice](#EntityChargePrice) |  no  |  |
 | cappedAmount | Double? |  yes  |  |
 | isTest | Bool? |  yes  |  |
 | metadata | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateOneTimeCharge](#CreateOneTimeCharge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | charge | [OneTimeChargeItem](#OneTimeChargeItem) |  no  |  |
 | isTest | Bool? |  yes  |  |
 | returnUrl | String |  no  |  |

---


 
 
 #### [CurrentPeriod](#CurrentPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |

---


 
 
 #### [SubscriptionCharge](#SubscriptionCharge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | term | String? |  yes  | Brief description for a charge |
 | pricingType | String? |  yes  |  |
 | price | [EntityChargePrice](#EntityChargePrice)? |  yes  |  |
 | recurring | [EntityChargeRecurring](#EntityChargeRecurring)? |  yes  |  |
 | cappedAmount | Double? |  yes  |  |
 | activatedOn | String? |  yes  |  |
 | cancelledOn | String? |  yes  |  |
 | billingDate | String? |  yes  |  |
 | currentPeriod | [CurrentPeriod](#CurrentPeriod)? |  yes  |  |
 | status | String? |  yes  |  |
 | isTest | Bool? |  yes  |  |
 | metadata | [String: Any]? |  yes  |  |

---


 
 
 #### [EntitySubscription](#EntitySubscription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | status | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | activatedOn | String? |  yes  |  |
 | cancelledOn | String? |  yes  |  |
 | trialDays | Int? |  yes  |  |
 | trialPeriod | [SubscriptionTrialPeriod](#SubscriptionTrialPeriod)? |  yes  |  |
 | metadata | [String: Any]? |  yes  |  |
 | lineItems | [[SubscriptionCharge](#SubscriptionCharge)]? |  yes  |  |

---


 
 
 #### [OneTimeChargeEntity](#OneTimeChargeEntity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | status | String? |  yes  |  |
 | activatedOn | String? |  yes  |  |
 | cancelledOn | String? |  yes  |  |
 | metadata | [String: Any]? |  yes  |  |
 | returnUrl | String? |  yes  |  |
 | isTest | Bool? |  yes  |  |
 | pricingType | String? |  yes  |  |
 | subscriberId | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | entityId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | price | [EntityChargePrice](#EntityChargePrice)? |  yes  |  |

---


 
 
 #### [CreateOneTimeChargeResponse](#CreateOneTimeChargeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | charge | [OneTimeChargeEntity](#OneTimeChargeEntity)? |  yes  |  |
 | confirmUrl | String? |  yes  |  |

---


 
 
 #### [CreateSubscriptionResponse](#CreateSubscriptionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscription | [EntitySubscription](#EntitySubscription)? |  yes  |  |
 | confirmUrl | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPeriod](#InvoiceDetailsPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsClient](#InvoiceDetailsClient)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addressLines | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | phone | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | value | String? |  yes  |  |
 | timestamp | String? |  yes  |  |

---


 
 
 #### [InvoicePaymentMethod](#InvoicePaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pgPaymentMethodId | String? |  yes  |  |

---


 
 
 #### [InvoiceDetails](#InvoiceDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | period | [InvoiceDetailsPeriod](#InvoiceDetailsPeriod)? |  yes  |  |
 | client | [InvoiceDetailsClient](#InvoiceDetailsClient)? |  yes  |  |
 | autoAdvance | Bool? |  yes  |  |
 | currency | String? |  yes  |  |
 | paid | Bool? |  yes  |  |
 | attemp | Int? |  yes  |  |
 | id | String? |  yes  |  |
 | collectionMethod | String? |  yes  |  |
 | subscriberId | String? |  yes  |  |
 | invoiceUrl | String? |  yes  |  |
 | number | String? |  yes  |  |
 | pgData | [String: Any]? |  yes  |  |
 | receiptNumber | String? |  yes  |  |
 | statementDescriptor | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | statusTrail | [[InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)]? |  yes  |  |
 | subtotal | Double? |  yes  |  |
 | total | Double? |  yes  |  |
 | subscription | String? |  yes  |  |
 | nextActionTime | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | hashIdentifier | String? |  yes  |  |
 | paymentMethod | [InvoicePaymentMethod](#InvoicePaymentMethod)? |  yes  |  |

---


 
 
 #### [InvoiceItemsPlanRecurring](#InvoiceItemsPlanRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String? |  yes  |  |
 | intervalCount | Int? |  yes  |  |

---


 
 
 #### [InvoiceItemsPlan](#InvoiceItemsPlan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [InvoiceItemsPlanRecurring](#InvoiceItemsPlanRecurring)? |  yes  |  |
 | isTrialPlan | Bool? |  yes  |  |
 | planGroup | String? |  yes  |  |
 | tagLines | [String]? |  yes  |  |
 | currency | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | isVisible | Bool? |  yes  |  |
 | trialPeriod | Int? |  yes  |  |
 | addons | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | country | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | amount | Int? |  yes  |  |
 | productSuiteId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |

---


 
 
 #### [InvoiceItemsPeriod](#InvoiceItemsPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [InvoiceItems](#InvoiceItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | plan | [InvoiceItemsPlan](#InvoiceItemsPlan)? |  yes  |  |
 | name | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | description | String? |  yes  |  |
 | period | [InvoiceItemsPeriod](#InvoiceItemsPeriod)? |  yes  |  |
 | unitAmount | Double? |  yes  |  |
 | amount | Double? |  yes  |  |
 | type | String? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |

---


 
 
 #### [Invoice](#Invoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoice | [InvoiceDetails](#InvoiceDetails)? |  yes  |  |
 | invoiceItems | [[InvoiceItems](#InvoiceItems)]? |  yes  |  |

---


 
 
 #### [InvoicesDataClient](#InvoicesDataClient)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | addressLines | [String]? |  yes  |  |

---


 
 
 #### [InvoicesDataPeriod](#InvoicesDataPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [InvoicesDataPaymentMethod](#InvoicesDataPaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pgPaymentMethodId | String? |  yes  |  |

---


 
 
 #### [InvoicesData](#InvoicesData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | client | [InvoicesDataClient](#InvoicesDataClient)? |  yes  |  |
 | autoAdvance | Bool? |  yes  |  |
 | currency | String? |  yes  |  |
 | paid | Bool? |  yes  |  |
 | attemp | Int? |  yes  |  |
 | collectionMethod | String? |  yes  |  |
 | subscriberId | String? |  yes  |  |
 | invoiceUrl | String? |  yes  |  |
 | number | String? |  yes  |  |
 | pgData | [String: Any]? |  yes  |  |
 | period | [InvoicesDataPeriod](#InvoicesDataPeriod)? |  yes  |  |
 | receiptNumber | String? |  yes  |  |
 | statementDescriptor | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | statusTrail | [[InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)]? |  yes  |  |
 | subtotal | Double? |  yes  |  |
 | total | Double? |  yes  |  |
 | subscription | String? |  yes  |  |
 | nextActionTime | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | hashIdentifier | String? |  yes  |  |
 | paymentMethod | [InvoicesDataPaymentMethod](#InvoicesDataPaymentMethod)? |  yes  |  |
 | invoiceItems | [[InvoiceItems](#InvoiceItems)]? |  yes  |  |

---


 
 
 #### [Invoices](#Invoices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[InvoicesData](#InvoicesData)]? |  yes  |  |
 | start | Int? |  yes  |  |
 | end | Int? |  yes  |  |
 | limit | Int? |  yes  |  |
 | page | Int? |  yes  |  |
 | total | Int? |  yes  |  |

---


 
 
 #### [Phone](#Phone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String? |  yes  |  |
 | phoneCountryCode | String? |  yes  |  |

---


 
 
 #### [SubscriptionBillingAddress](#SubscriptionBillingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | state | String? |  yes  |  |
 | city | String? |  yes  |  |
 | line1 | String? |  yes  |  |
 | line2 | String? |  yes  |  |
 | postalCode | String? |  yes  |  |

---


 
 
 #### [SubscriptionCustomer](#SubscriptionCustomer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [Phone](#Phone)? |  yes  |  |
 | billingAddress | [SubscriptionBillingAddress](#SubscriptionBillingAddress)? |  yes  |  |
 | id | String? |  yes  |  |
 | uniqueId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [SubscriptionCustomerCreate](#SubscriptionCustomerCreate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [Phone](#Phone)? |  yes  |  |
 | billingAddress | [SubscriptionBillingAddress](#SubscriptionBillingAddress)? |  yes  |  |
 | uniqueId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [SubscriptionCurrentPeriod](#SubscriptionCurrentPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [SubscriptionPauseCollection](#SubscriptionPauseCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | behavior | String? |  yes  |  |
 | resumeAt | String? |  yes  |  |

---


 
 
 #### [SubscriptionTrial](#SubscriptionTrial)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [SubscriptionInvoiceSettings](#SubscriptionInvoiceSettings)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | generation | Bool? |  yes  |  |
 | charging | Bool? |  yes  |  |

---


 
 
 #### [Subscription](#Subscription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currentPeriod | [SubscriptionCurrentPeriod](#SubscriptionCurrentPeriod)? |  yes  |  |
 | pauseCollection | [SubscriptionPauseCollection](#SubscriptionPauseCollection)? |  yes  |  |
 | trial | [SubscriptionTrial](#SubscriptionTrial)? |  yes  |  |
 | invoiceSettings | [SubscriptionInvoiceSettings](#SubscriptionInvoiceSettings)? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | cancelAtPeriodEnd | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | subscriberId | String? |  yes  |  |
 | planId | String? |  yes  |  |
 | productSuiteId | String? |  yes  |  |
 | planData | [Plan](#Plan)? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | collectionMethod | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | latestInvoice | String? |  yes  |  |
 | channelType | String? |  yes  |  |

---


 
 
 #### [SubscriptionStatus](#SubscriptionStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isEnabled | Bool? |  yes  |  |
 | subscription | [Subscription](#Subscription)? |  yes  |  |
 | latestInvoice | [InvoicesData](#InvoicesData)? |  yes  |  |
 | nextPlan | [Plan](#Plan)? |  yes  |  |
 | currentSubscriptions | [[Subscription](#Subscription)]? |  yes  |  |
 | mandateAmount | String? |  yes  |  |

---


 
 
 #### [SubscriptionLimitApplication](#SubscriptionLimitApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | hardLimit | Int? |  yes  |  |
 | softLimit | Int? |  yes  |  |

---


 
 
 #### [SubscriptionLimitMarketplace](#SubscriptionLimitMarketplace)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [SubscriptionLimitOtherPlatform](#SubscriptionLimitOtherPlatform)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [SubscriptionLimitTeam](#SubscriptionLimitTeam)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | limit | Int? |  yes  |  |

---


 
 
 #### [SubscriptionLimitProducts](#SubscriptionLimitProducts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bulk | Bool? |  yes  |  |
 | limit | Int? |  yes  |  |

---


 
 
 #### [SubscriptionLimitExtensions](#SubscriptionLimitExtensions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | limit | Int? |  yes  |  |

---


 
 
 #### [SubscriptionLimitIntegrations](#SubscriptionLimitIntegrations)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | limit | Int? |  yes  |  |

---


 
 
 #### [SubscriptionLimit](#SubscriptionLimit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | [SubscriptionLimitApplication](#SubscriptionLimitApplication)? |  yes  |  |
 | marketplace | [SubscriptionLimitMarketplace](#SubscriptionLimitMarketplace)? |  yes  |  |
 | otherPlatform | [SubscriptionLimitOtherPlatform](#SubscriptionLimitOtherPlatform)? |  yes  |  |
 | team | [SubscriptionLimitTeam](#SubscriptionLimitTeam)? |  yes  |  |
 | products | [SubscriptionLimitProducts](#SubscriptionLimitProducts)? |  yes  |  |
 | extensions | [SubscriptionLimitExtensions](#SubscriptionLimitExtensions)? |  yes  |  |
 | integrations | [SubscriptionLimitIntegrations](#SubscriptionLimitIntegrations)? |  yes  |  |
 | isTrialPlan | Bool? |  yes  |  |

---


 
 
 #### [SubscriptionActivateReq](#SubscriptionActivateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | productSuite | String? |  yes  |  |
 | planId | String? |  yes  |  |
 | paymentMethod | String? |  yes  |  |

---


 
 
 #### [SubscriptionActivateRes](#SubscriptionActivateRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [Subscription](#Subscription)? |  yes  |  |

---


 
 
 #### [CancelSubscriptionReq](#CancelSubscriptionReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | productSuite | String? |  yes  |  |
 | subscriptionId | String? |  yes  |  |

---


 
 
 #### [CancelSubscriptionRes](#CancelSubscriptionRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [Subscription](#Subscription)? |  yes  |  |

---


 
 
 #### [PlanStatusUpdateReq](#PlanStatusUpdateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | planId | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | sellerStatus | String? |  yes  |  |

---


 
 
 #### [SunscribePlan](#SunscribePlan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityType | String? |  yes  |  |
 | collectionType | String? |  yes  |  |
 | planId | String? |  yes  |  |
 | callbackUrl | String? |  yes  |  |
 | meta | [Meta](#Meta)? |  yes  |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscribe | Bool? |  yes  |  |
 | isCustomPlan | Bool? |  yes  |  |
 | isPlanUpgrade | Bool? |  yes  |  |

---


 
 
 #### [SubscribePlanRes](#SubscribePlanRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | redirectUrl | String? |  yes  |  |
 | transactionId | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | meta | [Meta](#Meta)? |  yes  |  |

---


 
 
 #### [Features](#Features)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | description | String? |  yes  |  |
 | group | String? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | displayText | String? |  yes  |  |

---


 
 
 #### [FeeComponents](#FeeComponents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [String]? |  yes  |  |
 | location | [String]? |  yes  |  |
 | channel | [[String: Any]]? |  yes  |  |
 | businessLead | String? |  yes  |  |
 | settlementType | String? |  yes  |  |
 | settleCyclePeriod | [String: Any]? |  yes  |  |
 | components | [[String: Any]]? |  yes  |  |

---


 
 
 #### [Details](#Details)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feeComponents | [[FeeComponents](#FeeComponents)]? |  yes  |  |
 | features | [[Features](#Features)]? |  yes  |  |

---


 
 
 #### [EntityResponse](#EntityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | page | Int? |  yes  |  |
 | pageSize | Int? |  yes  |  |
 | items | [[Details](#Details)]? |  yes  |  |

---



