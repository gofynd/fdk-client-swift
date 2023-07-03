



##### [Back to Platform docs](./README.md)

## Billing Methods
Handle platform subscription
* [checkCouponValidity](#checkcouponvalidity)
* [createSubscriptionCharge](#createsubscriptioncharge)
* [getSubscriptionCharge](#getsubscriptioncharge)
* [cancelSubscriptionCharge](#cancelsubscriptioncharge)
* [getInvoices](#getinvoices)
* [getInvoiceById](#getinvoicebyid)
* [getCustomerDetail](#getcustomerdetail)
* [upsertCustomerDetail](#upsertcustomerdetail)
* [getSubscription](#getsubscription)
* [getFeatureLimitConfig](#getfeaturelimitconfig)
* [activateSubscriptionPlan](#activatesubscriptionplan)
* [cancelSubscriptionPlan](#cancelsubscriptionplan)



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
            null,
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
          "pg_payment_method_id": null
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
          null,
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
        "pg_payment_method_id": null
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
        "start": "2020-12-17T13:45:36.722Z",
        "end": "2021-01-17T13:45:36.722Z"
      },
      "pause_collection": {},
      "trial": {},
      "invoice_settings": {
        "generation": true,
        "charging": true
      },
      "is_active": true,
      "cancel_at_period_end": false,
      "_id": "5f3a8a00668947663b7fbd38",
      "subscriber_id": "5ee773e1351e5e84289ed9cf",
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
      "current_status": "active",
      "collection_method": "charge_automatically",
      "created_at": "2020-08-17T13:45:36.731Z",
      "modified_at": "2020-12-17T11:01:15.960Z",
      "latest_invoice": "5fdb3a7bfc849c2153b944d5"
    }
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
platformClient.billing.getFeatureLimitConfig() { (response, error) in
    // Use response
}
```






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



### Schemas

 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | current | Int? |  yes  |  |
 | type | String |  no  |  |
 | size | Int? |  yes  |  |

---


 
 
 #### [UnauthenticatedUser](#UnauthenticatedUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Failure message. |

---


 
 
 #### [UnauthenticatedApplication](#UnauthenticatedApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Failure message. |

---


 
 
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


 
 
 #### [DetailedPlanComponents](#DetailedPlanComponents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | description | String? |  yes  |  |
 | group | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | links | [String: Any]? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | displayText | String? |  yes  |  |

---


 
 
 #### [DetailedPlan](#DetailedPlan)

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
 | components | [[DetailedPlanComponents](#DetailedPlanComponents)]? |  yes  |  |

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
 | term | String? |  yes  |  |
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


 
 
 #### [InvoiceDetailsPaymentMethodsDataChecks](#InvoiceDetailsPaymentMethodsDataChecks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cvcCheck | String? |  yes  |  |
 | addressLine1Check | String? |  yes  |  |
 | addressPostalCodeCheck | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsDataNetworks](#InvoiceDetailsPaymentMethodsDataNetworks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | available | [String]? |  yes  |  |
 | preferred | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsDataThreeDSecureUsage](#InvoiceDetailsPaymentMethodsDataThreeDSecureUsage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | supported | Bool? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsData](#InvoiceDetailsPaymentMethodsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | String? |  yes  |  |
 | last4 | String? |  yes  |  |
 | checks | [InvoiceDetailsPaymentMethodsDataChecks](#InvoiceDetailsPaymentMethodsDataChecks)? |  yes  |  |
 | wallet | String? |  yes  |  |
 | country | String? |  yes  |  |
 | funding | String? |  yes  |  |
 | expYear | Int? |  yes  |  |
 | networks | [InvoiceDetailsPaymentMethodsDataNetworks](#InvoiceDetailsPaymentMethodsDataNetworks)? |  yes  |  |
 | expMonth | Int? |  yes  |  |
 | fingerprint | String? |  yes  |  |
 | generatedFrom | String? |  yes  |  |
 | threeDSecureUsage | [InvoiceDetailsPaymentMethodsDataThreeDSecureUsage](#InvoiceDetailsPaymentMethodsDataThreeDSecureUsage)? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethods](#InvoiceDetailsPaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | pgPaymentMethodId | String? |  yes  |  |
 | data | [InvoiceDetailsPaymentMethodsData](#InvoiceDetailsPaymentMethodsData)? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

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

---


 
 
 #### [SubscriptionStatus](#SubscriptionStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isEnabled | Bool? |  yes  |  |
 | subscription | [Subscription](#Subscription)? |  yes  |  |

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



