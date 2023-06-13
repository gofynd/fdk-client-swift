



##### [Back to Partner docs](./README.md)

## Partner Methods
Partner configuration apis
* [submitExtensionForReview](#submitextensionforreview)
* [unpubishExtension](#unpubishextension)
* [createExtension](#createextension)
* [getExtensionById](#getextensionbyid)



## Methods with example and description


#### submitExtensionForReview
Submit extension for review




```swift
partnerClient.partner.submitExtensionForReview(organizationId: organizationId, extensionId: extensionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | Organization id (partner account id) |   
| extensionId | String | yes | Extension id |  
| body | ExtensionDraftRequest | yes | Request body |


Use this API to submit the extension for review

*Returned Response:*




[ExtensionLatestReview](#ExtensionLatestReview)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "listing_info": {
    "name": "testxt",
    "keywords": [],
    "tagline": "teTestteTestteTestteTestteTestteTestteTestteTestteTest",
    "icon": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1566539375/production/media/store/logo/jwosxsgh9ufoucdxpm10.png"
  },
  "details": {
    "benefits": [
      {
        "title": "Test",
        "description": "test"
      }
    ],
    "screenshots": {
      "desktop": [
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/ZQASnZk1V-1600x900.png",
        "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/CO9LcfUJh-desk-sc-2.jpeg",
        "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/CMktmxc2I-desk-sc-3.jpeg"
      ],
      "mobile": [
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/QFtQTD97o-800x1200.png",
        "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/BP88G87Qz-mob-sc-2.jpeg",
        "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/z0iWBUIwp-mob-sc-3.jpeg"
      ]
    },
    "description": "<p>Test</p>",
    "demo_url": "",
    "video_url": [
      {
        "type": "youtube",
        "url": "https://www.youtube.com/embed/4vpfmr6M4FU?loop=1"
      },
      {
        "type": "youtube",
        "url": "https://www.youtube.com/embed/4vpfmr6M4FU?loop=1"
      }
    ],
    "integrations": []
  },
  "contact_info": {
    "submission_email": "regrowth@gofynd.com",
    "review_notification_email": "regrowth@gofynd.com",
    "support": {
      "email": "regrowth@gofynd.com",
      "phone": "8767087087",
      "website_url": "",
      "faq_url": "",
      "privacy_policy_url": ""
    }
  },
  "category": {
    "categories_l1": [],
    "categories_l2": []
  },
  "_id": "619f62a74a74abb3324a6cad",
  "scope": [
    "company/profile"
  ],
  "plans": [
    {
      "name": "Test",
      "features": "test",
      "type": "free",
      "price": {
        "amount": 0,
        "currency": "INR"
      },
      "trial_days": 0,
      "additional_charges": ""
    }
  ],
  "extension_id": "6113bcfe193f517dfbd6f29b",
  "slug": "testxt",
  "plan_type": "free",
  "plans_url": "",
  "review_instructions": "",
  "current_status": "pending",
  "organization_id": "610d178e2ab8f356aa98481b",
  "created_at": "2021-11-25T10:17:11.300Z",
  "modified_at": "2022-10-28T06:17:24.245Z",
  "is_coming_soon": false
}
```
</details>









---


#### unpubishExtension
Submit extension for unpublish




```swift
partnerClient.partner.unpubishExtension(organizationId: organizationId, extensionId: extensionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | Organization id (partner account id) |   
| extensionId | String | yes | Extension id |  
| body | ExtensionUnpublishRequest | yes | Request body |


Use this API to unpublish the extension

*Returned Response:*




[ExtensionLatestReview](#ExtensionLatestReview)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "listing_info": {
    "name": "testxt",
    "keywords": [],
    "tagline": "teTestteTestteTestteTestteTestteTestteTestteTestteTest",
    "icon": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1566539375/production/media/store/logo/jwosxsgh9ufoucdxpm10.png"
  },
  "details": {
    "benefits": [
      {
        "title": "Test",
        "description": "test"
      }
    ],
    "screenshots": {
      "desktop": [
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/ZQASnZk1V-1600x900.png",
        "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/CO9LcfUJh-desk-sc-2.jpeg",
        "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/CMktmxc2I-desk-sc-3.jpeg"
      ],
      "mobile": [
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/QFtQTD97o-800x1200.png",
        "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/BP88G87Qz-mob-sc-2.jpeg",
        "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/z0iWBUIwp-mob-sc-3.jpeg"
      ]
    },
    "description": "<p>Test</p>",
    "demo_url": "",
    "video_url": [
      {
        "type": "youtube",
        "url": "https://www.youtube.com/embed/4vpfmr6M4FU?loop=1"
      },
      {
        "type": "youtube",
        "url": "https://www.youtube.com/embed/4vpfmr6M4FU?loop=1"
      }
    ],
    "integrations": []
  },
  "contact_info": {
    "submission_email": "regrowth@gofynd.com",
    "review_notification_email": "regrowth@gofynd.com",
    "support": {
      "email": "regrowth@gofynd.com",
      "phone": "8767087087",
      "website_url": "",
      "faq_url": "",
      "privacy_policy_url": ""
    }
  },
  "category": {
    "categories_l1": [],
    "categories_l2": []
  },
  "_id": "619f62a74a74abb3324a6cad",
  "scope": [
    "company/profile"
  ],
  "plans": [
    {
      "name": "Test",
      "features": "test",
      "type": "free",
      "price": {
        "amount": 0,
        "currency": "INR"
      },
      "trial_days": 0,
      "additional_charges": ""
    }
  ],
  "extension_id": "6113bcfe193f517dfbd6f29b",
  "slug": "testxt",
  "plan_type": "free",
  "plans_url": "",
  "review_instructions": "",
  "current_status": "pending",
  "organization_id": "610d178e2ab8f356aa98481b",
  "created_at": "2021-11-25T10:17:11.300Z",
  "modified_at": "2022-10-28T06:17:24.245Z",
  "is_coming_soon": false
}
```
</details>









---


#### createExtension
Create new extension




```swift
partnerClient.partner.createExtension(organizationId: organizationId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | Organization id (partner account id) |  
| body | ExtensionCommon | yes | Request body |


Use this API to create new extension

*Returned Response:*




[CreateExtensionResponse](#CreateExtensionResponse)

Extension updated successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "name": "Test extension",
  "description": "test description here!!",
  "base_url": "https://www.google.com",
  "logo": {
    "small": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/BrAaFIpjs-logo.jpeg",
    "large": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/pictures/free-icon/original/BrAaFIpjs-logo.jpeg"
  },
  "whitelisted_urls": [],
  "ext_version": "1.0.0",
  "extention_type": "public",
  "is_application_level": false,
  "is_saleschannel": false,
  "organization_id": "610d178e2ab8f356aa98481b",
  "contact_email": "karankaneria@gofynd.com",
  "scope": [
    "company/profile",
    "company/saleschannel",
    "company/application/customer",
    "company/application/analytics",
    "company/application/storage"
  ],
  "callbacks": {
    "setup": "https://www.google.com/fp/setup",
    "auth": "https://www.google.com/fp/auth",
    "install": "https://www.google.com/fp/install",
    "uninstall": "https://www.google.com/fp/uninstall",
    "auto_install": "https://www.google.com/fp/auto_install"
  },
  "developed_by_name": "Fynd",
  "is_hidden": false,
  "_id": "635112da7c82c9ef35a0cffe",
  "created_at": "2022-10-20T09:20:26.397Z",
  "modified_at": "2022-10-20T09:20:26.397Z",
  "__v": 0,
  "client_id": "635112da7c82c9ef35a0cffe",
  "secret": [
    "xxxxxxx"
  ],
  "cluster": "https://api.fyndx0.de"
}
```
</details>









---


#### getExtensionById
Get the details of extension




```swift
partnerClient.partner.getExtensionById(organizationId: organizationId, extensionId: extensionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| organizationId | String | yes | Organization id (partner account id) |   
| extensionId | String | yes | Extension id |  



Use this API to get details of extension

*Returned Response:*




[Extension](#Extension)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "logo": {
    "small": "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/o5h6JynOE-logo.png",
    "large": "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/o5h6JynOE-logo.png"
  },
  "callbacks": {
    "setup": "https://email.extensions.fyndx0.de/fp/setup",
    "auth": "https://email.extensions.fyndx0.de/fp/auth",
    "install": "https://email.extensions.fyndx0.de/fp/install",
    "uninstall": "https://email.extensions.fyndx0.de/fp/uninstall",
    "auto_install": "https://email.extensions.fyndx0.de/fp/auto_install"
  },
  "_id": "61922f28c3b74507646b4421",
  "description": "",
  "whitelisted_urls": [],
  "ext_version": "1.0.0",
  "extention_type": "private",
  "is_application_level": false,
  "is_saleschannel": false,
  "scope": [
    "company/profile",
    "company/saleschannel"
  ],
  "name": "Email Inventory",
  "base_url": "https://email.extensions.fyndx0.de",
  "developed_by_name": "Fynd",
  "contact_email": "regrowth@gofynd.com",
  "organization_id": "610d178e2ab8f356aa98481b",
  "created_at": "2021-11-15T09:58:00.574Z",
  "modified_at": "2022-06-16T15:18:23.523Z",
  "__v": 0,
  "is_hidden": false,
  "client_data": {
    "client_id": "xxxxxx",
    "secret": [
      "xxxxxx"
    ]
  }
}
```
</details>









---



### Schemas

 
 
 #### [Extension](#Extension)

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
 | clientData | [ClientData](#ClientData)? |  yes  |  |

---


 
 
 #### [CreateExtensionResponse](#CreateExtensionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdAt | String? |  yes  |  |
 | isHidden | Bool? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | organizationId | String? |  yes  |  |
 | whitelistedUrls | [String]? |  yes  |  |
 | id | String? |  yes  |  |
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
 | secret | [String]? |  yes  |  |

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


 
 
 #### [ClientData](#ClientData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | clientId | String? |  yes  |  |
 | secret | [String]? |  yes  |  |

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
 | whitelistedUrls | [String]? |  yes  |  |
 | logo | [Logo](#Logo)? |  yes  |  |
 | name | String? |  yes  |  |
 | scope | [String]? |  yes  |  |
 | organizationId | String? |  yes  |  |

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


 
 
 #### [Category](#Category)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categoriesL1 | [[CategoryL1](#CategoryL1)]? |  yes  |  |
 | categoriesL2 | [[CategoryL2](#CategoryL2)]? |  yes  |  |

---


 
 
 #### [ContactInfo](#ContactInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reviewNotificationEmail | String? |  yes  |  |
 | submissionEmail | String? |  yes  |  |
 | support | [Support](#Support)? |  yes  |  |

---


 
 
 #### [Benefits](#Benefits)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | image | String? |  yes  |  |

---


 
 
 #### [Screenshots](#Screenshots)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | [String]? |  yes  |  |
 | mobile | [String]? |  yes  |  |

---


 
 
 #### [ExtensionExtraDetails](#ExtensionExtraDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | benefits | [[Benefits](#Benefits)]? |  yes  |  |
 | demoUrl | String? |  yes  |  |
 | description | String? |  yes  |  |
 | integration | [String]? |  yes  |  |
 | videoUrl | [[String: Any]]? |  yes  |  |
 | youtube | [String]? |  yes  |  |
 | screenshots | [Screenshots](#Screenshots)? |  yes  |  |
 | integrations | [String]? |  yes  |  |
 | featuredBanner | String? |  yes  |  |

---


 
 
 #### [ListingInfo](#ListingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | icon | String? |  yes  |  |
 | keywords | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | tagline | String? |  yes  |  |

---


 
 
 #### [OrganizationBasicInfo](#OrganizationBasicInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |

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
 | customMeta | [String: Any]? |  yes  |  |

---


 
 
 #### [ExtensionLatestReview](#ExtensionLatestReview)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [Category](#Category)? |  yes  |  |
 | contactInfo | [ContactInfo](#ContactInfo)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | details | [ExtensionExtraDetails](#ExtensionExtraDetails)? |  yes  |  |
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


 
 
 #### [ExtensionDraftRequest](#ExtensionDraftRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [Category](#Category)? |  yes  |  |
 | contactInfo | [ContactInfo](#ContactInfo)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | details | [ExtensionExtraDetails](#ExtensionExtraDetails)? |  yes  |  |
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
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [ExtensionUnpublishRequest](#ExtensionUnpublishRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reason | String? |  yes  |  |
 | description | String? |  yes  |  |

---



