



##### [Back to Public docs](./README.md)

## Partner Methods
Partner configuration apis
* [getPanelExtensionDetails](#getpanelextensiondetails)



## Methods with example and description


#### getPanelExtensionDetails
Get extension details




```swift
publicClient.partner.getPanelExtensionDetails(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | pass the slug of the extension |  



Use this API to get extension details

*Returned Response:*




[ExtensionUsingSlug](#ExtensionUsingSlug)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "633ab5cb635a41fdde9fb648",
  "organization_id": "6333fef3b1d85e44e738c138",
  "extension_id": "633425ebb1d85e44e738c2ab",
  "slug": "example-extension-1",
  "scope": [
    "company/profile",
    "company/saleschannel",
    "company/product",
    "company/order",
    "company/application/customer",
    "company/application/analytics",
    "company/application/storage",
    "company/application/marketing",
    "company/application/catalogue",
    "company/application/communication",
    "company/application/support",
    "company/application/order",
    "company/application/settings"
  ],
  "category": {
    "categories_l1": [],
    "categories_l2": []
  },
  "listing_info": {
    "name": "ujjawal-example-extension-1",
    "keywords": [],
    "tagline": "test-extension for test how extensions look and work and how to create them",
    "icon": "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/AMwIEOw0U-logo.png"
  },
  "details": {
    "benefits": [
      {
        "title": "Works fast",
        "description": "works fast",
        "_id": "633ab5cb635a41fdde9fb649"
      }
    ],
    "screenshots": {
      "desktop": [
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/g95yHXkou-1024x576.png",
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/IKdHxP2fN-1024x576.png",
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/_auq1yvEp-1024x576.png"
      ],
      "mobile": [
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/E_YAHM9cU-600x900.png",
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/vEnXw9cCg-600x900.png",
        "https://hdn-1.addsale.com/x0/misc/pictures/free-icon/original/O3Wng4Rqn-600x900.png"
      ]
    },
    "description": "Sample public extension",
    "demo_url": "",
    "video_url": [
      {
        "type": "video",
        "url": "https://hdn-1.addsale.com/x0/products/videos/item/free/original/kizLVNWyS-video-sc-1.mp4"
      }
    ],
    "integrations": []
  },
  "plan_type": "free",
  "plans": [
    {
      "name": "Custom Free",
      "features": "provides ease",
      "type": "free",
      "price": {
        "amount": 0,
        "currency": "INR"
      },
      "trial_days": 0,
      "additional_charges": ""
    }
  ],
  "plans_url": "",
  "contact_info": {
    "support": {
      "email": "ujjawaltaleja@gofynd.com",
      "phone": "7988169279",
      "website_url": "",
      "faq_url": "",
      "privacy_policy_url": ""
    }
  },
  "current_status": "active",
  "coming_soon": {
    "is_coming_soon": false,
    "upvote_count": 0
  },
  "created_at": "2022-10-03T10:13:31.607Z",
  "modified_at": "2022-10-03T10:13:31.607Z",
  "organization": {
    "name": "ujjawal-partners-fashion",
    "slug": "ujjawa-w7t-68"
  }
}
```
</details>









---



### Schemas

 
 
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


 
 
 #### [CategoryCommon](#CategoryCommon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categoryL1 | [[CategoryL1](#CategoryL1)]? |  yes  |  |
 | categoryL2 | [[CategoryL2](#CategoryL2)]? |  yes  |  |

---


 
 
 #### [ContactInfo](#ContactInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | support | [Support](#Support)? |  yes  |  |

---


 
 
 #### [ExtensionUsingSlug](#ExtensionUsingSlug)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategoryCommon](#CategoryCommon)? |  yes  |  |
 | contactInfo | [ContactInfo](#ContactInfo)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | details | [Details](#Details)? |  yes  |  |
 | extensionId | String? |  yes  |  |
 | isComingSoon | Bool? |  yes  |  |
 | listingInfo | [ListingInfo](#ListingInfo)? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | organization | [Organization](#Organization)? |  yes  |  |
 | organizationId | String? |  yes  |  |
 | planType | String? |  yes  |  |
 | plans | [[Plans](#Plans)]? |  yes  |  |
 | plansUrl | String? |  yes  |  |
 | reviewInstructions | String? |  yes  |  |
 | scope | [String]? |  yes  |  |
 | slug | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [Organization](#Organization)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |

---


 
 
 #### [ListingInfo](#ListingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | icon | String? |  yes  |  |
 | keywords | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | tagline | String? |  yes  |  |

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


 
 
 #### [Details](#Details)

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


 
 
 #### [Plans](#Plans)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | additionalCharges | String? |  yes  |  |
 | features | String? |  yes  |  |
 | name | String? |  yes  |  |
 | trialDays | Double? |  yes  |  |
 | type | String? |  yes  |  |
 | price | [Price](#Price)? |  yes  |  |
 | recurring | [Recurring](#Recurring)? |  yes  |  |

---


 
 
 #### [Recurring](#Recurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurringTime | Double? |  yes  |  |
 | yearlyAmount | Double? |  yes  |  |
 | type | String? |  yes  |  |

---



