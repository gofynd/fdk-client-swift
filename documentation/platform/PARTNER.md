



##### [Back to Platform docs](./README.md)

## Partner Methods
Partner configuration apis
* [subscribeExtension](#subscribeextension)
* [getExtensionsForCompany](#getextensionsforcompany)
* [getPublicExtension](#getpublicextension)
* [getExtensionById](#getextensionbyid)
* [deleteExtensionById](#deleteextensionbyid)
* [getPrivateExtensions](#getprivateextensions)
* [getExtensionsSuggestions](#getextensionssuggestions)
* [getPartnerInvites](#getpartnerinvites)
* [getPartnerRequestDetails](#getpartnerrequestdetails)
* [modifyPartnerRequest](#modifypartnerrequest)
* [setupProducts](#setupproducts)
* [getProxyPath](#getproxypath)
* [addProxyPath](#addproxypath)
* [getProxyPathAttachedPath](#getproxypathattachedpath)
* [removeProxyPath](#removeproxypath)



## Methods with example and description


#### subscribeExtension
Subscribe for extension plan




```swift
platformClient.partner.subscribeExtension(entity: entity, extensionId: extensionId, entityId: entityId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| entity | String | yes | entity |   
| extensionId | String | yes | extension id |   
| entityId | String | yes | entity id |  
| body | SubscriptionRequest | yes | Request body |


Use this API to select plan for paid extension

*Returned Response:*




[SubscriptionRes](#SubscriptionRes)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "redirect_url": "https://playground-js.extensions.fyndx0.de/company/1/subscription-status?approved=true&subscription_id=636a43c96d9bff8bd968290c&company_id=1&entity=subscription"
}
```
</details>









---


#### getExtensionsForCompany
Get the list of all the extensions




```swift
platformClient.partner.getExtensionsForCompany(pageSize: pageSize, tag: tag, currentPage: currentPage, pageNo: pageNo, filterBy: filterBy, query: query) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageSize | Double? | no | Number of records you want to get in single page |   
| tag | String? | no | tag |   
| currentPage | String? | no | tag |   
| pageNo | Double? | no | Current page number |   
| filterBy | String? | no | Filter by |   
| query | String? | no | query |  



Use this API to get the the extensions for the company

*Returned Response:*




[ExtensionList](#ExtensionList)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "extension_id": "609400409d0dcbdc2e6b76a5",
      "name": "Newsletter Subscription",
      "description": "Newsletter Subscription\nNewsletter Subscription",
      "base_url": "https://newsletter.extensions.fyndx0.de",
      "logo": {
        "small": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/kVa_Ej41--logo.png",
        "large": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/kVa_Ej41--logo.png"
      },
      "launch_url": "https://newsletter.extensions.fyndx0.de/fp/install?company_id=1&cluster_url=https%3A%2F%2Fapi.fyndx0.de&client_id=609400409d0dcbdc2e6b76a5",
      "extention_type": "public",
      "developed_by_name": "Fynd",
      "ext_version": "1.0",
      "company": "1",
      "scope": [
        {
          "name": "Sales Channels",
          "description": "Allows to add and manage new and existing sales channels"
        },
        {
          "name": "Settings",
          "description": "Allows you to configure and customize features across multiple touchpoints in the application."
        }
      ],
      "installed": true,
      "is_saleschannel": false
    }
  ],
  "page": {
    "type": "number",
    "item_total": 98,
    "size": 10,
    "current": 1,
    "has_next": true
  }
}
```
</details>









---


#### getPublicExtension
Get details of public extension




```swift
platformClient.partner.getPublicExtension(extensionId: extensionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Extension id |  



Use this API to get the details of public extensions

*Returned Response:*




[PublicExtension](#PublicExtension)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "category": {
    "categories_l1": [
      {
        "id": "62320b45f4213eb19aa8f44c",
        "slug": "marketing",
        "_id": "62320b45f4213eb19aa8f44c"
      }
    ],
    "categories_l2": [
      {
        "id": "62320b45f4213eb19aa8f4aa",
        "slug": "advertisement",
        "_id": "62320b45f4213eb19aa8f4aa",
        "parent": "62320b45f4213eb19aa8f44c"
      },
      {
        "id": "62320b45f4213eb19aa8f4c6",
        "slug": "marketing-analytics",
        "_id": "62320b45f4213eb19aa8f4c6",
        "parent": "62320b45f4213eb19aa8f44c"
      }
    ]
  },
  "listing_info": {
    "keywords": [],
    "name": "Newsletter Subscription",
    "tagline": "dsvsv",
    "icon": "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/F9IzVxMC2-logo.png"
  },
  "details": {
    "screenshots": {
      "desktop": [
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/nKlrV_01V-desk-sc-1.png",
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/UZ0zmE2sW-desk-sc-2.png",
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/cGtO7qpge-desk-sc-3.png"
      ],
      "mobile": [
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/10Twf0N0R-mob-sc-1.png",
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/CRHrGZf5n-mob-sc-2.png",
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/nDsWxx2rB-mob-sc-3.png"
      ]
    },
    "integrations": [],
    "benefits": [
      {
        "_id": "623db9405ce44ba088b9c5bc",
        "title": "dsvsv",
        "description": "dvssdvdvdv"
      }
    ],
    "description": "Now you can run referral campaigns that lets you and your existing customers refer their friends and family to register on your website.Features Configure reward for the referrer Configurereward for the one being referred Set validity of referral and the reward Enable/Disable referral campaigns",
    "demo_url": "",
    "video_url": []
  },
  "contact_info": {
    "support": {
      "email": "aayushvjain@gofynd.com",
      "phone": "8767087087",
      "website_url": "",
      "faq_url": "",
      "privacy_policy_url": ""
    }
  },
  "coming_soon": {
    "upvote_count": 0,
    "is_coming_soon": false
  },
  "_id": "60bf7f734fe0a3c8e90e5b83",
  "scope": [
    "company/saleschannel",
    "company/application/settings"
  ],
  "plans": [
    {
      "name": "dbfd",
      "features": "ngfnfgm",
      "type": "free",
      "price": {
        "amount": 0,
        "currency": "INR"
      },
      "trial_days": 0,
      "additional_charges": ""
    }
  ],
  "extension_id": "609400409d0dcbdc2e6b76a5",
  "slug": "newsletter-subscription",
  "plan_type": "free",
  "current_status": "active",
  "organization_id": "610d178e2ab8f356aa98481b",
  "created_at": "2021-06-08T14:32:19.574Z",
  "modified_at": "2022-03-25T12:44:48.325Z",
  "plans_url": ""
}
```
</details>









---


#### getExtensionById
Get extension details




```swift
platformClient.partner.getExtensionById(extensionId: extensionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Extension id |  



Use this API to get the details of extension

*Returned Response:*




[ExtensionCommon](#ExtensionCommon)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "extension_id": "609400409d0dcbdc2e6b76a5",
  "name": "Newsletter Subscription",
  "description": "Newsletter Subscription\nNewsletter Subscription",
  "base_url": "https://newsletter.extensions.fyndx0.de",
  "logo": {
    "small": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/kVa_Ej41--logo.png",
    "large": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/kVa_Ej41--logo.png"
  },
  "launch_url": "https://newsletter.extensions.fyndx0.de/fp/install?company_id=1&cluster_url=https%3A%2F%2Fapi.fyndx0.de&client_id=609400409d0dcbdc2e6b76a5",
  "extention_type": "public",
  "developed_by_name": "Fynd",
  "ext_version": "1.0",
  "company": "1",
  "scope": [
    "company/saleschannel",
    "company/application/settings"
  ],
  "installed": true,
  "is_saleschannel": false
}
```
</details>









---


#### deleteExtensionById
Uninstall extension




```swift
platformClient.partner.deleteExtensionById(extensionId: extensionId, message: message, uninstallReasonType: uninstallReasonType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Extension id |   
| message | String | yes | Message while uninstalling extension |   
| uninstallReasonType | String | yes | Reason for uninstalling extension |  



Use this API to remove extension from yout company or channel

*Returned Response:*




[UninstallExtension](#UninstallExtension)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getPrivateExtensions
Get the list of private extensions




```swift
platformClient.partner.getPrivateExtensions(pageSize: pageSize, pageNo: pageNo, query: query) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageSize | Double? | no | Number of records you want to get in single page |   
| pageNo | Double? | no | Number of page |   
| query | [String: Any]? | no | Filter query which we want to pass |  



Use this API to get the list of private extensions

*Returned Response:*




[ExtensionResponse](#ExtensionResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "_id": "610d2ad295dcfa14eb408bad",
      "description": "Generate thousands of unique coupon codes instantly for your sales campaigns!",
      "whitelisted_urls": [],
      "ext_version": "1.0.0",
      "extention_type": "public",
      "is_application_level": true,
      "is_saleschannel": false,
      "scope": [
        "company/saleschannel",
        "company/application/marketing"
      ],
      "name": "Bulk Coupons Generator",
      "base_url": "https://bulkcoupon.extensions.fyndx0.de",
      "logo": {
        "small": "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/I9ujthIoU-logo.png",
        "large": "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/I9ujthIoU-logo.png"
      },
      "callbacks": {
        "setup": "https://bulkcoupon.extensions.fyndx0.de/fp/setup",
        "auth": "https://bulkcoupon.extensions.fyndx0.de/fp/auth",
        "install": "https://bulkcoupon.extensions.fyndx0.de/fp/install",
        "uninstall": "https://bulkcoupon.extensions.fyndx0.de/fp/uninstall",
        "auto_install": "https://bulkcoupon.extensions.fyndx0.de/fp/auto_install"
      },
      "developed_by_name": "Rushabh Shah",
      "contact_email": "rushabhmshah@gofynd.com",
      "organization_id": "610d29f395dcfaba6b408ba6",
      "created_at": "2021-08-06T12:28:02.036Z",
      "modified_at": "2022-10-26T17:23:33.762Z",
      "__v": 0,
      "is_coming_soon": false,
      "is_hidden": false,
      "auto_install": true,
      "id": "610d2ad295dcfa14eb408bad",
      "installed": false
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 10,
    "item_total": 34,
    "has_next": true
  }
}
```
</details>









---


#### getExtensionsSuggestions
Get the list of all the extension suggestions




```swift
platformClient.partner.getExtensionsSuggestions(pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageSize | Double? | no | Number of records you want to get in single page |  



Use this API to get the the extensions suggestions

*Returned Response:*




[ExtensionSuggestionList](#ExtensionSuggestionList)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "listing_info": {
        "keywords": [],
        "name": "AutoHotkey script file",
        "tagline": "adsadsas",
        "icon": "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/bpxzObuk5-logo.png"
      },
      "plans": [
        {
          "name": "dsfdsfdsf",
          "features": "sdfdsf",
          "type": "free",
          "price": {
            "amount": 0,
            "currency": "INR"
          },
          "trial_days": 0,
          "additional_charges": ""
        }
      ],
      "organization_id": "61d80723d3d67a97b6713faf",
      "slug": "autohotkey-script-file",
      "organization": {
        "name": "Coditas",
        "slug": "Codita-dsn-6"
      }
    }
  ]
}
```
</details>









---


#### getPartnerInvites
Get partner invites




```swift
platformClient.partner.getPartnerInvites(requestStatus: requestStatus, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| requestStatus | String? | no | status of the request |   
| pageSize | String? | no | Number of records per page |   
| pageNo | String? | no | Number of page the user want to fetch |  



Use this API to get pending, accepted and rejected partner invites in platform

*Returned Response:*




[PartnerRequestList](#PartnerRequestList)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": {
    "_id": "627a68b3ac2caa3c22edd238",
    "request_status": "accepted",
    "comment": "",
    "company_id": 1,
    "account_type": "live",
    "requested_permissions": {
      "company_permissions": [
        "profile",
        "product",
        "order",
        "extension",
        "developer",
        "marketplace",
        "otherseller",
        "settings",
        "audit-trail"
      ],
      "application_permissions": [
        "settings",
        "staff",
        "marketing",
        "communication",
        "catalogue",
        "customer",
        "analytics",
        "storage",
        "support",
        "point_of_sale",
        "order"
      ],
      "company_role": [
        "custom"
      ],
      "application_role": [
        "admin"
      ]
    },
    "approved_permissions": {
      "company_permissions": [
        "profile",
        "product",
        "order",
        "extension",
        "developer",
        "marketplace",
        "otherseller",
        "settings",
        "audit-trail"
      ],
      "application_permissions": {
        "6110bfb0d4beb6b2c08f8a79": {
          "permissions": [
            "settings",
            "staff",
            "marketing",
            "communication",
            "catalogue",
            "customer",
            "analytics",
            "storage",
            "support",
            "point_of_sale",
            "order"
          ],
          "roles": [
            "admin"
          ]
        }
      }
    },
    "company_name": "Reliance Digital P. LTDv",
    "user_id": "043f885d2ec5dd975a9aeac4",
    "organization_id": "62737a7bffaf722a1d7cebf6",
    "created_at": "2022-05-10T13:29:23.042Z",
    "modified_at": "2022-09-15T06:03:53.663Z",
    "approver_id": "dcbe84c5e68d8c4348c224dd",
    "organization_name": "Viking Ext Hitesh"
  },
  "page": {
    "type": "number",
    "current": 1,
    "size": 10,
    "item_total": 3,
    "has_next": false
  }
}
```
</details>









---


#### getPartnerRequestDetails
Get partner request details




```swift
platformClient.partner.getPartnerRequestDetails(inviteId: inviteId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| inviteId | String | yes | invitation id |  



Use this API to get details of pending partner request

*Returned Response:*




[PartnerInviteDetails](#PartnerInviteDetails)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "637488936815adc2cd51e43a",
  "user_id": "27408062cc44eed4e39a7992",
  "organization_id": "610d178e2ab8f356aa98481b",
  "company_id": 559,
  "company_name": "Fynd1",
  "account_type": "live",
  "request_status": "pending",
  "requested_permissions": {
    "company_permissions": [
      "profile",
      "product",
      "order",
      "extension",
      "developer",
      "marketplace",
      "otherseller",
      "settings",
      "audit-trail"
    ],
    "application_permissions": [
      "settings",
      "staff",
      "marketing",
      "communication",
      "catalogue",
      "customer",
      "analytics",
      "storage",
      "support",
      "point_of_sale",
      "order"
    ],
    "company_role": [
      "custom"
    ],
    "application_role": [
      "admin"
    ]
  },
  "approved_permissions": {
    "company_permissions": [],
    "company_role": [
      "custom"
    ],
    "application_role": [
      "public"
    ]
  },
  "comment": "",
  "created_at": "2022-11-16T06:52:03.904Z",
  "modified_at": "2022-11-16T06:52:03.904Z",
  "organization_name": "Fynd"
}
```
</details>









---


#### modifyPartnerRequest
Act on the pending partner request




```swift
platformClient.partner.modifyPartnerRequest(inviteId: inviteId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| inviteId | String | yes | invitation id |  
| body | ModifyPartnerReq | yes | Request body |


Use this API to approve or reject the pending partner request

*Returned Response:*




[PartnerInviteDetails](#PartnerInviteDetails)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "637488936815adc2cd51e43a",
  "user_id": "27408062cc44eed4e39a7992",
  "organization_id": "610d178e2ab8f356aa98481b",
  "company_id": 559,
  "company_name": "Fynd1",
  "account_type": "live",
  "request_status": "pending",
  "requested_permissions": {
    "company_permissions": [
      "profile",
      "product",
      "order",
      "extension",
      "developer",
      "marketplace",
      "otherseller",
      "settings",
      "audit-trail"
    ],
    "application_permissions": [
      "settings",
      "staff",
      "marketing",
      "communication",
      "catalogue",
      "customer",
      "analytics",
      "storage",
      "support",
      "point_of_sale",
      "order"
    ],
    "company_role": [
      "custom"
    ],
    "application_role": [
      "admin"
    ]
  },
  "approved_permissions": {
    "company_permissions": [],
    "company_role": [
      "custom"
    ],
    "application_role": [
      "public"
    ]
  },
  "comment": "",
  "created_at": "2022-11-16T06:52:03.904Z",
  "modified_at": "2022-11-16T06:52:03.904Z"
}
```
</details>









---


#### setupProducts





```swift
platformClient.partner.setupProducts(requestId: requestId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| requestId | String? | no | extrequest id |  



Use this API for setup

*Returned Response:*




[SetupProductRes](#SetupProductRes)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Brand Updated Successfully",
  "request_id": "f1af3b4a-b32a-414f-a139-2d453f645b72",
  "next_step": 2,
  "cli_wait_time": 100
}
```
</details>









---


#### getProxyPath
Proxy




```swift
platformClient.application("<APPLICATION_ID>").partner.getProxyPath(extensionId: extensionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | extension id |  



Use this API to get proxy url

*Returned Response:*




[getProxyPathRes](#getProxyPathRes)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "_id": "new ObjectId(\"646615041424726893f0bbb6\")",
      "company_id": "1",
      "application_id": "000000000000000000000001",
      "extension_id": "new ObjectId(\"60bdd9f98dac231699a1325d\")",
      "attached_path": "test",
      "proxy_url": "https://test.com",
      "created_at": "2023-05-18T12:07:32.227Z",
      "modified_at": "2023-05-18T12:07:32.227Z"
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 10,
    "item_total": 1,
    "has_next": false
  }
}
```
</details>









---


#### addProxyPath
Create proxy URL for the external URL




```swift
platformClient.application("<APPLICATION_ID>").partner.addProxyPath(extensionId: extensionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Extension id for which proxy URL will be generated |  
| body | AddProxyReq | yes | Request body |


Use this API to generate proxy URL for the external URL

*Returned Response:*




[AddProxyResponse](#AddProxyResponse)

Proxy created successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "607406b8a472cd527303692f",
  "attached_path": "test",
  "proxy_url": "https://www.abc.com",
  "company_id": "1",
  "application_id": "000000000000000000000004",
  "extension_id": "6073280be899ea5b1150fd9d",
  "created_at": "2021-04-12T08:37:12.077Z",
  "modified_at": "2021-04-12T08:37:12.077Z"
}
```
</details>









---


#### getProxyPathAttachedPath
Proxy




```swift
platformClient.application("<APPLICATION_ID>").partner.getProxyPathAttachedPath(extensionId: extensionId, attachedPath: attachedPath) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | extension id |   
| attachedPath | String | yes | application id |  



Use this API to get proxy url

*Returned Response:*




[AddProxyResponse](#AddProxyResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "company_id": "1",
  "application_id": "000000000000000000000001",
  "extension_id": "60bdd9f98dac231699a1325d",
  "attached_path": "test",
  "proxy_url": "https://test.com",
  "_id": "6466282572420072b4eb4545",
  "created_at": "2023-05-18T13:29:09.436Z",
  "modified_at": "2023-05-18T13:29:09.436Z"
}
```
</details>









---


#### removeProxyPath
Remove proxy URL for the external URL




```swift
platformClient.application("<APPLICATION_ID>").partner.removeProxyPath(extensionId: extensionId, attachedPath: attachedPath) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Extension id for which proxy URL needs to be removed |   
| attachedPath | String | yes | Attachaed path slug |  



Use this API to remove the proxy URL which is already generated for the external URL

*Returned Response:*




[RemoveProxyResponse](#RemoveProxyResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Proxy URL deleted",
  "data": {
    "_id": "607406b8a472cd527303692f",
    "attached_path": "test",
    "proxy_url": "https://www.abc.com",
    "company_id": "1",
    "application_id": "000000000000000000000004",
    "extension_id": "6073280be899ea5b1150fd9d",
    "created_at": "2021-04-12T08:37:12.077Z",
    "modified_at": "2021-04-12T08:37:12.077Z"
  }
}
```
</details>









---



### Schemas

 
 
 #### [ExtensionResponse](#ExtensionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ExtensionListItems](#ExtensionListItems)]? |  yes  |  |
 | page | [Pagination](#Pagination)? |  yes  |  |

---


 
 
 #### [ExtensionListItems](#ExtensionListItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | baseUrl | String? |  yes  |  |
 | callbacks | [Callback](#Callback)? |  yes  |  |
 | contactEmail | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | description | String? |  yes  |  |
 | developedByName | String? |  yes  |  |
 | extVersion | String? |  yes  |  |
 | extentionType | String? |  yes  |  |
 | isApplicationLevel | Bool? |  yes  |  |
 | isComingSoon | Bool? |  yes  |  |
 | isSaleschannel | Bool? |  yes  |  |
 | logo | [Logo](#Logo)? |  yes  |  |
 | name | String? |  yes  |  |
 | scope | [String]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | isHidden | Bool? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | organizationId | String? |  yes  |  |
 | whitelistedUrls | [String]? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [ExtensionCommon](#ExtensionCommon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | baseUrl | String? |  yes  |  |
 | callbacks | [Callback](#Callback)? |  yes  |  |
 | contactEmail | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | description | String? |  yes  |  |
 | developedByName | String? |  yes  |  |
 | extVersion | String? |  yes  |  |
 | extentionType | String? |  yes  |  |
 | isApplicationLevel | Bool? |  yes  |  |
 | isComingSoon | Bool? |  yes  |  |
 | isSaleschannel | Bool? |  yes  |  |
 | logo | [Logo](#Logo)? |  yes  |  |
 | name | String? |  yes  |  |
 | scope | [String]? |  yes  |  |

---


 
 
 #### [ExtensionList](#ExtensionList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ExtensionItems](#ExtensionItems)]? |  yes  |  |
 | page | [Pagination](#Pagination)? |  yes  |  |

---


 
 
 #### [ExtensionItems](#ExtensionItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | baseUrl | String? |  yes  |  |
 | company | String? |  yes  |  |
 | description | String? |  yes  |  |
 | developedByName | String? |  yes  |  |
 | extVersion | String? |  yes  |  |
 | extensionId | String? |  yes  |  |
 | extentionType | String? |  yes  |  |
 | installed | Bool? |  yes  |  |
 | isSaleschannel | Bool? |  yes  |  |
 | launchUrl | String? |  yes  |  |
 | name | String? |  yes  |  |
 | logo | [Logo](#Logo)? |  yes  |  |
 | scope | [[Scope](#Scope)]? |  yes  |  |

---


 
 
 #### [Scope](#Scope)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [Pagination](#Pagination)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Double? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Double? |  yes  |  |
 | size | Double? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ExtensionSuggestionList](#ExtensionSuggestionList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ExtensionSuggestion](#ExtensionSuggestion)]? |  yes  |  |

---


 
 
 #### [OrganizationBasicInfo](#OrganizationBasicInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |

---


 
 
 #### [ExtensionSuggestion](#ExtensionSuggestion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | listingInfo | [ListingInfo](#ListingInfo)? |  yes  |  |
 | organization | [OrganizationBasicInfo](#OrganizationBasicInfo)? |  yes  |  |
 | organizationId | String? |  yes  |  |
 | plans | [[Plan](#Plan)]? |  yes  |  |
 | slug | String? |  yes  |  |

---


 
 
 #### [Plan](#Plan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | additionalCharges | String? |  yes  |  |
 | features | String? |  yes  |  |
 | name | String? |  yes  |  |
 | trialDays | Double? |  yes  |  |
 | type | String? |  yes  |  |
 | price | [Price](#Price)? |  yes  |  |

---


 
 
 #### [ListingInfo](#ListingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | icon | String? |  yes  |  |
 | name | String? |  yes  |  |
 | tagline | String? |  yes  |  |
 | keywords | [String]? |  yes  |  |

---


 
 
 #### [Callback](#Callback)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | auth | String? |  yes  |  |
 | autoInstall | String? |  yes  |  |
 | install | String? |  yes  |  |
 | setup | String? |  yes  |  |
 | uninstall | String? |  yes  |  |

---


 
 
 #### [Logo](#Logo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | large | String? |  yes  |  |
 | small | String? |  yes  |  |

---


 
 
 #### [Category](#Category)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categoryL1 | [[CategoryL1](#CategoryL1)]? |  yes  |  |
 | categoryL2 | [[CategoryL2](#CategoryL2)]? |  yes  |  |

---


 
 
 #### [CommingSoon](#CommingSoon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isComingSoon | Bool? |  yes  |  |
 | upvoteCount | Double? |  yes  |  |

---


 
 
 #### [ContactInfo](#ContactInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | support | [Support](#Support)? |  yes  |  |

---


 
 
 #### [Benefits](#Benefits)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [Screenshots](#Screenshots)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | [String]? |  yes  |  |
 | mobile | [String]? |  yes  |  |

---


 
 
 #### [ExtensionDetails](#ExtensionDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | benefits | [[Benefits](#Benefits)]? |  yes  |  |
 | demoUrl | String? |  yes  |  |
 | description | String? |  yes  |  |
 | integration | [String]? |  yes  |  |
 | videoUrl | [[String: Any]]? |  yes  |  |
 | youtube | [String]? |  yes  |  |
 | screenshots | [Screenshots](#Screenshots)? |  yes  |  |

---


 
 
 #### [Plans](#Plans)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | additionalCharges | String? |  yes  |  |
 | features | String? |  yes  |  |
 | name | String? |  yes  |  |
 | price | [Price](#Price)? |  yes  |  |
 | trialDays | Double? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [PublicExtension](#PublicExtension)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [Category](#Category)? |  yes  |  |
 | comingSoon | [CommingSoon](#CommingSoon)? |  yes  |  |
 | contactInfo | [ContactInfo](#ContactInfo)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | details | [ExtensionDetails](#ExtensionDetails)? |  yes  |  |
 | extensionId | String? |  yes  |  |
 | isComingSoon | Bool? |  yes  |  |
 | listingInfo | [ListingInfo](#ListingInfo)? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | organization | [OrganizationBasicInfo](#OrganizationBasicInfo)? |  yes  |  |
 | organizationId | String? |  yes  |  |
 | planType | String? |  yes  |  |
 | plans | [[Plans](#Plans)]? |  yes  |  |
 | plansUrl | String? |  yes  |  |
 | reviewInstructions | String? |  yes  |  |
 | scope | [String]? |  yes  |  |
 | slug | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [CategoryL1](#CategoryL1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | display | String? |  yes  |  |
 | level | Double? |  yes  |  |
 | logo | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | value | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [CategoryL2](#CategoryL2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | parent | String? |  yes  |  |
 | display | String? |  yes  |  |
 | level | Double? |  yes  |  |
 | slug | String? |  yes  |  |
 | value | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [Support](#Support)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | faqUrl | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | privacyPolicyUrl | String? |  yes  |  |
 | websiteUrl | String? |  yes  |  |

---


 
 
 #### [Price](#Price)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double? |  yes  |  |
 | currency | String? |  yes  |  |

---


 
 
 #### [UninstallExtension](#UninstallExtension)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [SubscriptionRequest](#SubscriptionRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | approved | String? |  yes  |  |
 | clientId | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | creditBalance | String? |  yes  |  |
 | requestId | String? |  yes  |  |

---


 
 
 #### [SubscriptionRes](#SubscriptionRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | redirectUrl | String? |  yes  |  |

---


 
 
 #### [PartnerInviteDetails](#PartnerInviteDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accountType | String? |  yes  |  |
 | approvedPermissions | [ApprovedPermissions](#ApprovedPermissions)? |  yes  |  |
 | comment | String? |  yes  |  |
 | companyId | Double? |  yes  |  |
 | companyName | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | organizationId | String? |  yes  |  |
 | organizationName | String? |  yes  |  |
 | requestStatus | String? |  yes  |  |
 | requestedPermissions | [RequestedPermissions](#RequestedPermissions)? |  yes  |  |
 | userId | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [ApprovedPermissions](#ApprovedPermissions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationRole | [String]? |  yes  |  |
 | companyPermissions | [String]? |  yes  |  |
 | companyRole | [String]? |  yes  |  |

---


 
 
 #### [RequestedPermissions](#RequestedPermissions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationPermissions | [String]? |  yes  |  |
 | applicationRole | [String]? |  yes  |  |
 | companyPermissions | [String]? |  yes  |  |
 | companyRole | [String]? |  yes  |  |

---


 
 
 #### [ModifyPartnerReq](#ModifyPartnerReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accountType | String? |  yes  |  |
 | approvedPermissions | [ApprovedPermissionsInfo](#ApprovedPermissionsInfo)? |  yes  |  |
 | comment | String? |  yes  |  |
 | companyId | Double? |  yes  |  |
 | companyName | String? |  yes  |  |
 | organizationId | String? |  yes  |  |
 | organizationName | String? |  yes  |  |
 | requestStatus | String? |  yes  |  |
 | requestedPermissions | [RequestedPermissions](#RequestedPermissions)? |  yes  |  |
 | userId | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [ApprovedPermissionsInfo](#ApprovedPermissionsInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationPermissions | [String: [ApplicationPermissions](#ApplicationPermissions)]? |  yes  |  |
 | companyPermissions | [String]? |  yes  |  |

---


 
 
 #### [ApplicationPermissions](#ApplicationPermissions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | permissions | [String]? |  yes  |  |
 | roles | [String]? |  yes  |  |

---


 
 
 #### [PartnerRequestList](#PartnerRequestList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [PartnerList](#PartnerList)? |  yes  |  |
 | page | [Pagination](#Pagination)? |  yes  |  |

---


 
 
 #### [PartnerList](#PartnerList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accountType | String? |  yes  |  |
 | approvedPermissions | [ApprovedPermissionsInfo](#ApprovedPermissionsInfo)? |  yes  |  |
 | approverId | String? |  yes  |  |
 | comment | String? |  yes  |  |
 | companyId | Double? |  yes  |  |
 | companyName | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | organizationId | String? |  yes  |  |
 | organizationName | String? |  yes  |  |
 | requestStatus | String? |  yes  |  |
 | requestedPermissions | [RequestedPermissions](#RequestedPermissions)? |  yes  |  |
 | userId | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [SetupProductRes](#SetupProductRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | requestId | String? |  yes  |  |
 | nextStep | Double? |  yes  |  |
 | cliWaitTime | Double? |  yes  |  |

---


 
 
 #### [AddProxyReq](#AddProxyReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attachedPath | String? |  yes  | Proxy path slug |
 | proxyUrl | String? |  yes  | The external URL for which the proxy URL will be generated |

---


 
 
 #### [AddProxyResponse](#AddProxyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | attachedPath | String? |  yes  |  |
 | proxyUrl | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | extensionId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |

---


 
 
 #### [getProxyPathRes](#getProxyPathRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Pagination](#Pagination)? |  yes  |  |
 | items | [[AddProxyResponse](#AddProxyResponse)]? |  yes  |  |

---


 
 
 #### [RemoveProxyResponse](#RemoveProxyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [APIError](#APIError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | message | String? |  yes  |  |
 | info | String? |  yes  | Error code description link |
 | requestId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---



