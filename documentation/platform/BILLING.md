



##### [Back to Platform docs](./README.md)

## Billing Methods
Handle platform subscription
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


#### createSubscriptionCharge
Create subscription charge




```swift
client.billing.createSubscriptionCharge(extensionId: extensionId, body: body) { (response, error) in
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
client.billing.getSubscriptionCharge(extensionId: extensionId, subscriptionId: subscriptionId) { (response, error) in
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
client.billing.cancelSubscriptionCharge(extensionId: extensionId, subscriptionId: subscriptionId) { (response, error) in
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
client.billing.getInvoices() { (response, error) in
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
  "$ref": "#/components/examples/Invoices"
}
```
</details>

</details>









---


#### getInvoiceById
Get invoice by id




```swift
client.billing.getInvoiceById(invoiceId: invoiceId) { (response, error) in
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
  "$ref": "#/components/examples/Invoice"
}
```
</details>

</details>









---


#### getCustomerDetail
Get subscription customer detail




```swift
client.billing.getCustomerDetail() { (response, error) in
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
  "$ref": "#/components/examples/SubscriptionCustomerRes"
}
```
</details>

</details>









---


#### upsertCustomerDetail
Upsert subscription customer detail




```swift
client.billing.upsertCustomerDetail(body: body) { (response, error) in
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
  "$ref": "#/components/examples/SubscriptionCustomerRes"
}
```
</details>

</details>









---


#### getSubscription
Get current subscription detail




```swift
client.billing.getSubscription() { (response, error) in
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
  "$ref": "#/components/examples/SubscriptionActiveRes"
}
```
</details>

<details>
<summary><i>&nbsp; Inactive subscription</i></summary>

```json
{
  "$ref": "#/components/examples/SubscriptionInavtiveRes"
}
```
</details>

</details>









---


#### getFeatureLimitConfig
Get subscription subscription limits




```swift
client.billing.getFeatureLimitConfig() { (response, error) in
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
  "$ref": "#/components/examples/CurrentLimitRes"
}
```
</details>

</details>









---


#### activateSubscriptionPlan
Activate subscription




```swift
client.billing.activateSubscriptionPlan(body: body) { (response, error) in
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
  "$ref": "#/components/examples/SubscriptionActivateRes"
}
```
</details>

</details>









---


#### cancelSubscriptionPlan
Cancel subscription




```swift
client.billing.cancelSubscriptionPlan(body: body) { (response, error) in
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
  "$ref": "#/components/examples/CancelSubscriptionRes"
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
 | amount | Double |  no  |  |
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



