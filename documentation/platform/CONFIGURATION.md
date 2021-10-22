



##### [Back to Platform docs](./README.md)

## Configuration Methods
Application configuration apis
* [getBuildConfig](#getbuildconfig)
* [updateBuildConfig](#updatebuildconfig)
* [getPreviousVersions](#getpreviousversions)
* [getAppFeatures](#getappfeatures)
* [updateAppFeatures](#updateappfeatures)
* [getAppBasicDetails](#getappbasicdetails)
* [updateAppBasicDetails](#updateappbasicdetails)
* [getAppContactInfo](#getappcontactinfo)
* [updateAppContactInfo](#updateappcontactinfo)
* [getAppApiTokens](#getappapitokens)
* [updateAppApiTokens](#updateappapitokens)
* [getAppCompanies](#getappcompanies)
* [getAppStores](#getappstores)
* [getInventoryConfig](#getinventoryconfig)
* [updateInventoryConfig](#updateinventoryconfig)
* [partiallyUpdateInventoryConfig](#partiallyupdateinventoryconfig)
* [getAppCurrencyConfig](#getappcurrencyconfig)
* [updateAppCurrencyConfig](#updateappcurrencyconfig)
* [getOrderingStoresByFilter](#getorderingstoresbyfilter)
* [updateOrderingStoreConfig](#updateorderingstoreconfig)
* [getStaffOrderingStores](#getstafforderingstores)
* [getDomains](#getdomains)
* [addDomain](#adddomain)
* [removeDomainById](#removedomainbyid)
* [changeDomainType](#changedomaintype)
* [getDomainStatus](#getdomainstatus)
* [createApplication](#createapplication)
* [getApplications](#getapplications)
* [getApplicationById](#getapplicationbyid)
* [getCurrencies](#getcurrencies)
* [getDomainAvailibility](#getdomainavailibility)
* [getIntegrationById](#getintegrationbyid)
* [getAvailableOptIns](#getavailableoptins)
* [getSelectedOptIns](#getselectedoptins)
* [getIntegrationLevelConfig](#getintegrationlevelconfig)
* [getIntegrationByLevelId](#getintegrationbylevelid)
* [updateLevelUidIntegration](#updateleveluidintegration)
* [getLevelActiveIntegrations](#getlevelactiveintegrations)
* [updateLevelIntegration](#updatelevelintegration)
* [getBrandsByCompany](#getbrandsbycompany)
* [getCompanyByBrands](#getcompanybybrands)
* [getStoreByBrands](#getstorebybrands)
* [getOtherSellerApplications](#getothersellerapplications)
* [getOtherSellerApplicationById](#getothersellerapplicationbyid)
* [optOutFromApplication](#optoutfromapplication)



## Methods with example and description


#### getBuildConfig
Get latest build config




```swift
client.application("<APPLICATION_ID>").configuration.getBuildConfig(platformType: platformType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platformType | String | yes | Current platform name |  



Get latest build config

*Returned Response:*




[MobileAppConfiguration](#MobileAppConfiguration)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "is_active": true,
  "_id": "5ea9b318bc23a343ab6d442f",
  "app_name": "TestUniket",
  "landing_image": {
    "aspect_ratio": "57/51",
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/mobile-build/pictures/free-landing/original/yKnXY1ATx-store-landing-image.png"
  },
  "splash_image": {
    "aspect_ratio": "1/1",
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/mobile-build/pictures/free-splash/original/s6d7oYfY6-store-splash-image.png"
  },
  "application": "000000000000000000000004",
  "platform_type": "android",
  "created_at": "2020-04-29T17:02:16.976Z",
  "modified_at": "2021-02-23T17:10:26.872Z",
  "__v": 0,
  "package_name": "com.fynd.store.x000000000000000000000004"
}
```
</details>









---


#### updateBuildConfig
Update build config for next build




```swift
client.application("<APPLICATION_ID>").configuration.updateBuildConfig(platformType: platformType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platformType | String | yes | Current platform name |  
| body | MobileAppConfigRequest | yes | Request body |


Update build config for next build

*Returned Response:*




[MobileAppConfiguration](#MobileAppConfiguration)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "is_active": true,
  "_id": "5ea9b318bc23a343ab6d442f",
  "app_name": "TestUniket",
  "landing_image": {
    "aspect_ratio": "57/51",
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/mobile-build/pictures/free-landing/original/yKnXY1ATx-store-landing-image.png"
  },
  "splash_image": {
    "aspect_ratio": "1/1",
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/mobile-build/pictures/free-splash/original/s6d7oYfY6-store-splash-image.png"
  },
  "application": "000000000000000000000004",
  "platform_type": "android",
  "created_at": "2020-04-29T17:02:16.976Z",
  "modified_at": "2021-02-23T17:10:26.872Z",
  "__v": 0,
  "package_name": "com.fynd.store.x000000000000000000000004"
}
```
</details>









---


#### getPreviousVersions
Get previous build versions




```swift
client.application("<APPLICATION_ID>").configuration.getPreviousVersions(platformType: platformType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platformType | String | yes | Current platform name |  



Get previous build versions

*Returned Response:*




[BuildVersionHistory](#BuildVersionHistory)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "versions": [
    {
      "_id": "6035376ab937c5f7c5462888",
      "application": "000000000000000000000004",
      "platform_type": "android",
      "build_status": "pending",
      "version_name": "0.5.6",
      "version_code": 1,
      "created_at": "2021-02-23T17:12:10.977Z",
      "modified_at": "2021-02-23T17:12:10.977Z",
      "__v": 0
    }
  ],
  "latest_available_version_name": "0.5.7"
}
```
</details>









---


#### getAppFeatures
Get features of application




```swift
client.application("<APPLICATION_ID>").configuration.getAppFeatures() { (response, error) in
    // Use response
}
```






Get features of application

*Returned Response:*




[AppFeatureResponse](#AppFeatureResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "feature": {
    "product_detail": {
      "similar": [
        "basic",
        "visual",
        "brand",
        "category",
        "seller",
        "price",
        "specs"
      ],
      "seller_selection": true,
      "update_product_meta": true,
      "request_product": true
    },
    "landing_page": {
      "launch_page": {
        "page_type": "home",
        "params": null,
        "query": null
      },
      "continue_as_guest": true,
      "login_btn_text": "Click here to sign-in",
      "show_domain_textbox": true,
      "show_register_btn": true
    },
    "registration_page": {
      "ask_store_address": false
    },
    "home_page": {
      "order_processing": true
    },
    "common": {
      "communication_optin_dialog": {
        "visibility": true
      },
      "deployment_store_selection": {
        "enabled": true,
        "type": "hard"
      },
      "listing_price": {
        "value": "min",
        "sort": "min"
      },
      "currency": {
        "value": [
          "INR"
        ],
        "type": "explicit",
        "default_currency": "INR"
      },
      "revenue_engine": {
        "enabled": false
      },
      "feedback": {
        "enabled": true
      },
      "compare_products": {
        "enabled": true
      },
      "reward_points": {
        "credit": {
          "enabled": true
        },
        "debit": {
          "enabled": true,
          "auto_apply": false,
          "strategy_channel": "REWARDS"
        }
      }
    },
    "cart": {
      "gst_input": true,
      "staff_selection": true,
      "placing_for_customer": true,
      "google_map": true,
      "revenue_engine_coupon": false
    },
    "qr": {
      "application": true,
      "products": true,
      "collections": true
    },
    "pcr": {
      "staff_selection": true
    },
    "order": {
      "buy_again": true
    },
    "_id": "5e57643c986e4119c973df7d",
    "app": "000000000000000000000004",
    "created_at": "2020-02-27T06:39:56.088Z",
    "modified_at": "2021-02-02T11:04:14.289Z",
    "__v": 1
  }
}
```
</details>









---


#### updateAppFeatures
Update features of application




```swift
client.application("<APPLICATION_ID>").configuration.updateAppFeatures(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AppFeatureRequest | yes | Request body |


Update features of application

*Returned Response:*




[AppFeature](#AppFeature)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "product_detail": {
    "similar": [
      "basic",
      "visual",
      "brand",
      "category",
      "seller",
      "price",
      "specs"
    ],
    "seller_selection": true,
    "update_product_meta": true,
    "request_product": true
  },
  "landing_page": {
    "launch_page": {
      "page_type": "home",
      "params": null,
      "query": null
    },
    "continue_as_guest": true,
    "login_btn_text": "Click here to sign-in",
    "show_domain_textbox": true,
    "show_register_btn": true
  },
  "registration_page": {
    "ask_store_address": false
  },
  "home_page": {
    "order_processing": true
  },
  "common": {
    "communication_optin_dialog": {
      "visibility": true
    },
    "deployment_store_selection": {
      "enabled": true,
      "type": "hard"
    },
    "listing_price": {
      "value": "min",
      "sort": "min"
    },
    "currency": {
      "value": [
        "INR"
      ],
      "type": "explicit",
      "default_currency": "INR"
    },
    "revenue_engine": {
      "enabled": false
    },
    "feedback": {
      "enabled": true
    },
    "compare_products": {
      "enabled": true
    }
  },
  "cart": {
    "gst_input": true,
    "staff_selection": true,
    "placing_for_customer": true,
    "google_map": true,
    "revenue_engine_coupon": false
  },
  "qr": {
    "application": true,
    "products": true,
    "collections": true
  },
  "pcr": {
    "staff_selection": true
  },
  "order": {
    "buy_again": true
  },
  "_id": "5e57643c986e4119c973df7d",
  "app": "000000000000000000000004",
  "created_at": "2020-02-27T06:39:56.088Z",
  "modified_at": "2021-03-09T15:40:29.188Z",
  "__v": 1
}
```
</details>









---


#### getAppBasicDetails
Get basic application details




```swift
client.application("<APPLICATION_ID>").configuration.getAppBasicDetails() { (response, error) in
    // Use response
}
```






Get basic application details like name

*Returned Response:*




[ApplicationDetail](#ApplicationDetail)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "name": "Uniket B2B",
  "description": "Uniket B2B - India's Fastest Growing Retail Store - Aapki Badhti Dukaan",
  "logo": {
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/application/pictures/free-logo/original/oEf3SQjda-Uniket-B2B.png"
  },
  "mobile_logo": {
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/application/pictures/free-logo/original/oEf3SQjda-Uniket-B2B.png"
  },
  "favicon": {
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/application/pictures/favicon/original/y3h6SSlY5-Uniket-B2B.png"
  },
  "banner": {
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/application/pictures/landscape-banner/original/uSwlNpygq-Uniket-B2B.png"
  },
  "domain": {
    "verified": true,
    "is_primary": true,
    "is_shortlink": false,
    "_id": "5eb1177748312a3bd55d0f1e",
    "name": "uniket.hostx0.de"
  },
  "domains": [
    {
      "verified": true,
      "is_primary": true,
      "is_shortlink": false,
      "_id": "5eb1177748312a3bd55d0f1e",
      "name": "uniket.hostx0.de"
    },
    {
      "verified": true,
      "is_primary": false,
      "is_shortlink": true,
      "_id": "5f0858c5f86e00cd42dccc8d",
      "name": "jd.hostx0.de"
    }
  ],
  "company_id": 1,
  "_id": "000000000000000000000004"
}
```
</details>









---


#### updateAppBasicDetails
Add or update application's basic details




```swift
client.application("<APPLICATION_ID>").configuration.updateAppBasicDetails(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ApplicationDetail | yes | Request body |


Add or update application's basic details

*Returned Response:*




[ApplicationDetail](#ApplicationDetail)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "name": "Uniket B2B",
  "description": "Uniket B2B - India's Fastest Growing Retail Store - Aapki Badhti Dukaan",
  "logo": {
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/application/pictures/free-logo/original/oEf3SQjda-Uniket-B2B.png"
  },
  "mobile_logo": {
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/application/pictures/free-logo/original/oEf3SQjda-Uniket-B2B.png"
  },
  "favicon": {
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/application/pictures/favicon/original/y3h6SSlY5-Uniket-B2B.png"
  },
  "banner": {
    "secure_url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/application/pictures/landscape-banner/original/uSwlNpygq-Uniket-B2B.png"
  },
  "domain": {
    "verified": true,
    "is_primary": true,
    "is_shortlink": false,
    "_id": "5eb1177748312a3bd55d0f1e",
    "name": "uniket.hostx0.de"
  },
  "domains": [
    {
      "verified": true,
      "is_primary": true,
      "is_shortlink": false,
      "_id": "5eb1177748312a3bd55d0f1e",
      "name": "uniket.hostx0.de"
    },
    {
      "verified": true,
      "is_primary": false,
      "is_shortlink": true,
      "_id": "5f0858c5f86e00cd42dccc8d",
      "name": "jd.hostx0.de"
    }
  ]
}
```
</details>









---


#### getAppContactInfo
Get application information




```swift
client.application("<APPLICATION_ID>").configuration.getAppContactInfo() { (response, error) in
    // Use response
}
```






Get Application Current Information. This includes information about social links, address and contact information of company/seller/brand of the application.

*Returned Response:*




[ApplicationInformation](#ApplicationInformation)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "value": {
    "address": {
      "loc": null,
      "address_line": [
        "Warehouse 5, Near Industrial Complex",
        "2nd Lane, Andheri"
      ],
      "phone": [
        {
          "code": "+91",
          "number": "9988776654"
        }
      ],
      "city": "Mumbai , Maharashtra , India",
      "country": "India",
      "pincode": 400059
    },
    "support": {
      "phone": [],
      "email": [],
      "timing": "9 AM to 9 PM"
    },
    "social_links": {
      "facebook": {
        "title": "Facebook",
        "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/hQAbAKdvHK-facebookfooteraopcjq.svg",
        "link": ""
      },
      "instagram": {
        "title": "Instagram",
        "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/UZYsGWOqXp-instagramfooterl3utrr.svg",
        "link": ""
      },
      "twitter": {
        "title": "Twitter",
        "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/oT2hW-BJjq-twitterfooternajsyr.svg",
        "link": ""
      },
      "pinterest": {
        "title": "Pinterest",
        "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/v0erlcMk8p-pinterestfooternzmq4b.svg",
        "link": ""
      },
      "google_plus": {
        "title": "Google+",
        "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/lw3Y5S58h4-googleplusysukr1.png",
        "link": ""
      },
      "youtube": {
        "title": "Youtube",
        "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/EYV03PDST_-youtubefootermqhcr7.svg",
        "link": ""
      },
      "linked_in": {
        "title": "LinkedIn",
        "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/qa7gx_bW9O-linkedinfooterrcr0yq.svg",
        "link": ""
      },
      "vimeo": {
        "title": "Vimeo",
        "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/Ttc80b3U78-vimeofooternho4br.svg",
        "link": ""
      },
      "blog_link": {
        "title": "Blog",
        "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/LKpxTk1I3s-mediumfooterdtvrva.svg",
        "link": ""
      }
    },
    "links": [
      {
        "title": "Shipping",
        "link": "www.uniket.store/shipping-details"
      },
      {
        "title": "Returns",
        "link": "www.uniket.store/policy/return-policy"
      },
      {
        "title": "Privacy",
        "link": "www.uniket.store/policy/privacy-policy"
      },
      {
        "title": "Terms",
        "link": "www.uniket.store/policy/terms-conditions"
      }
    ],
    "copyright_text": "#MadeInIndia © 2020 Shopsense Retail Technologies",
    "_id": "5e6627bd0732616083e83750",
    "business_highlights": [
      {
        "_id": "5fc901611dfba6c2e87d1ca9",
        "title": "100% Genuine Products",
        "icon": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/business-highlights/pictures/square-logo/original/bVlx43F2a-H6pvZ9tzp-business-logo-icon.png",
        "sub_title": "Directly from brands"
      },
      {
        "_id": "5fc901611dfba64ce57d1caa",
        "title": "Credit Facility Available",
        "icon": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/business-highlights/pictures/square-logo/original/VMnltS1m3-QuUnEjOsA-business-logo-icon.png",
        "sub_title": "Free 30 Days Credit"
      },
      {
        "_id": "5fc901611dfba64b2e7d1cab",
        "title": "Assured Returns",
        "icon": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/business-highlights/pictures/square-logo/original/cTHzgHJXK-sROtLMalN-business-logo-icon.png",
        "sub_title": "For all damaged/wrong items"
      }
    ],
    "application": "000000000000000000000004",
    "created_at": "2020-03-09T11:25:49.921Z",
    "modified_at": "2020-12-03T15:16:49.087Z",
    "__v": 99
  }
}
```
</details>









---


#### updateAppContactInfo
Get application information




```swift
client.application("<APPLICATION_ID>").configuration.updateAppContactInfo(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ApplicationInformation | yes | Request body |


Save Application Current Information. This includes information about social links, address and contact information of an application.

*Returned Response:*




[ApplicationInformation](#ApplicationInformation)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "5e6627bd0732616083e83750",
  "address": {
    "address_line": [
      "Warehouse 5, Near Industrial Complex",
      "2nd Lane, Andheri"
    ],
    "phone": [
      {
        "code": "+91",
        "number": "9988776654"
      }
    ],
    "city": "Mumbai , Maharashtra , India",
    "country": "India",
    "pincode": 400059,
    "loc": null
  },
  "social_links": {
    "facebook": {
      "title": "Facebook",
      "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/hQAbAKdvHK-facebookfooteraopcjq.svg",
      "link": ""
    },
    "instagram": {
      "title": "Instagram",
      "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/UZYsGWOqXp-instagramfooterl3utrr.svg",
      "link": ""
    },
    "twitter": {
      "title": "Twitter",
      "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/oT2hW-BJjq-twitterfooternajsyr.svg",
      "link": ""
    },
    "pinterest": {
      "title": "Pinterest",
      "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/v0erlcMk8p-pinterestfooternzmq4b.svg",
      "link": ""
    },
    "google_plus": {
      "title": "Google+",
      "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/lw3Y5S58h4-googleplusysukr1.png",
      "link": ""
    },
    "youtube": {
      "title": "Youtube",
      "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/EYV03PDST_-youtubefootermqhcr7.svg",
      "link": ""
    },
    "linked_in": {
      "title": "LinkedIn",
      "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/qa7gx_bW9O-linkedinfooterrcr0yq.svg",
      "link": ""
    },
    "blog_link": {
      "title": "Blog",
      "icon": "https://hdn-1.fynd.com/system/svg/social-media/icon/original/LKpxTk1I3s-mediumfooterdtvrva.svg",
      "link": ""
    }
  },
  "links": [
    {
      "title": "Shipping",
      "link": "www.uniket.store/shipping-details"
    },
    {
      "title": "Returns",
      "link": "www.uniket.store/policy/return-policy"
    },
    {
      "title": "Privacy",
      "link": "www.uniket.store/policy/privacy-policy"
    },
    {
      "title": "Terms",
      "link": "www.uniket.store/policy/terms-conditions"
    }
  ],
  "copyright_text": "#MadeInIndia © 2020 Shopsense Retail Technologies",
  "support": {
    "timing": "9 AM to 9 PM",
    "phone": [],
    "email": []
  },
  "business_highlights": [
    {
      "_id": "60479413a32f774d754b00ef",
      "title": "100% Genuine Products",
      "icon": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/business-highlights/pictures/square-logo/original/bVlx43F2a-H6pvZ9tzp-business-logo-icon.png",
      "sub_title": "Directly from brands"
    },
    {
      "_id": "60479413a32f7717df4b00f0",
      "title": "Credit Facility Available",
      "icon": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/business-highlights/pictures/square-logo/original/VMnltS1m3-QuUnEjOsA-business-logo-icon.png",
      "sub_title": "Free 30 Days Credit"
    },
    {
      "_id": "60479413a32f77e70b4b00f1",
      "title": "Assured Returns",
      "icon": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000004/business-highlights/pictures/square-logo/original/cTHzgHJXK-sROtLMalN-business-logo-icon.png",
      "sub_title": "For all damaged/wrong items"
    }
  ],
  "application": "000000000000000000000004",
  "created_at": "2020-03-09T11:25:49.921Z",
  "modified_at": "2021-03-09T15:28:19.598Z",
  "__v": 101
}
```
</details>









---


#### getAppApiTokens
Get social tokens




```swift
client.application("<APPLICATION_ID>").configuration.getAppApiTokens() { (response, error) in
    // Use response
}
```






Get social tokens.

*Returned Response:*




[TokenResponse](#TokenResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "tokens": {
    "firebase": {
      "credentials": {
        "ios": {
          "application_id": "test",
          "api_key": "test"
        },
        "android": {
          "application_id": "test",
          "api_key": "test"
        },
        "project_id": "uniket-d8cdc",
        "gcm_sender_id": "test",
        "application_id": "test",
        "api_key": "test"
      },
      "enabled": true
    },
    "moengage": {
      "credentials": {
        "app_id": "test"
      },
      "enabled": true
    },
    "segment": {
      "credentials": {
        "write_key": "test"
      },
      "enabled": true
    },
    "gtm": {
      "credentials": {
        "api_key": "test"
      },
      "enabled": false
    },
    "freshchat": {
      "credentials": {
        "app_id": "123456",
        "app_key": "123456789",
        "web_token": ""
      },
      "enabled": false
    },
    "safetynet": {
      "credentials": {
        "api_key": "test"
      },
      "enabled": true
    },
    "fynd_rewards": {
      "credentials": {
        "public_key": "test"
      }
    },
    "auth": {
      "google": {
        "appId": "test"
      },
      "facebook": {
        "appId": "test"
      },
      "accountkit": {
        "appId": ""
      }
    },
    "google_map": {
      "credentials": {
        "api_key": "test"
      }
    }
  },
  "_id": "5e66282a073261060ee83751",
  "application": "000000000000000000000004",
  "created_at": "2020-03-09T11:27:38.894Z",
  "modified_at": "2020-12-24T05:39:17.054Z",
  "__v": 0
}
```
</details>









---


#### updateAppApiTokens
Add social tokens




```swift
client.application("<APPLICATION_ID>").configuration.updateAppApiTokens(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | TokenResponse | yes | Request body |


Add social tokens.

*Returned Response:*




[TokenResponse](#TokenResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "tokens": {
    "firebase": {
      "credentials": {
        "ios": {
          "application_id": "test",
          "api_key": "test"
        },
        "android": {
          "application_id": "test",
          "api_key": "test"
        },
        "project_id": "uniket-d8cdc",
        "gcm_sender_id": "test",
        "application_id": "test",
        "api_key": "test"
      },
      "enabled": true
    },
    "moengage": {
      "credentials": {
        "app_id": "test"
      },
      "enabled": true
    },
    "segment": {
      "credentials": {
        "write_key": "test"
      },
      "enabled": true
    },
    "gtm": {
      "credentials": {
        "api_key": "1234567890"
      },
      "enabled": false
    },
    "freshchat": {
      "credentials": {
        "app_id": "123456",
        "app_key": "123456789",
        "web_token": ""
      },
      "enabled": false
    },
    "safetynet": {
      "credentials": {
        "api_key": "test"
      },
      "enabled": true
    },
    "fynd_rewards": {
      "credentials": {
        "public_key": "test"
      }
    },
    "auth": {
      "google": {
        "appId": "test"
      },
      "facebook": {
        "appId": "test"
      },
      "accountkit": {
        "appId": ""
      }
    },
    "google_map": {
      "credentials": {
        "api_key": "test"
      }
    }
  },
  "_id": "5e66282a073261060ee83751",
  "application": "000000000000000000000004",
  "created_at": "2020-03-09T11:27:38.894Z",
  "modified_at": "2020-12-24T05:39:17.054Z",
  "__v": 0
}
```
</details>









---


#### getAppCompanies
Application inventory enabled companies




```swift
client.application("<APPLICATION_ID>").configuration.getAppCompanies(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Application inventory enabled companies.

*Returned Response:*




[CompaniesResponse](#CompaniesResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "uid": 108,
      "name": "Sample2 Company",
      "company_type": "mbo"
    },
    {
      "uid": 13,
      "name": "Isabel Mazanec",
      "company_type": "franchisee"
    },
    {
      "uid": 7,
      "name": "Zack Burgdorf",
      "company_type": "distributor"
    }
  ],
  "page": {
    "type": "number",
    "size": 200,
    "current": 1,
    "has_next": false,
    "item_total": 3
  }
}
```
</details>









---


#### getAppStores
Application inventory enabled stores




```swift
client.application("<APPLICATION_ID>").configuration.getAppStores(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Application inventory enabled stores.

*Returned Response:*




[StoresResponse](#StoresResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "_id": "5ec2c0b168fc2800017112f5",
      "uid": 1,
      "name": "RRL01",
      "display_name": "RRL01",
      "store_type": "warehouse",
      "store_code": "WH_8513",
      "company_id": 1
    },
    {
      "_id": "5ec3b09a68fc28000171137c",
      "modified_on": "2020-06-30T10:02:41.208Z",
      "uid": 10,
      "name": "Saran Ledonne",
      "display_name": "",
      "store_type": "high_street",
      "store_code": "af6198fe-2c23-4441-bbf4-e694c96e255c",
      "company_id": 1
    },
    {
      "_id": "5f099b2c931b1c0001e7ccb2",
      "display_name": "cbs 2",
      "store_code": "HS-c9bac",
      "name": "cbs 2",
      "company_id": 80,
      "store_type": "high_street",
      "uid": 11014
    }
  ],
  "page": {
    "type": "number",
    "size": 200,
    "current": 1,
    "has_next": true,
    "item_total": 3
  }
}
```
</details>









---


#### getInventoryConfig
Get application configuration




```swift
client.application("<APPLICATION_ID>").configuration.getInventoryConfig() { (response, error) in
    // Use response
}
```






Get application configuration for various features and data

*Returned Response:*




[ApplicationInventory](#ApplicationInventory)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "inventory": {
    "brand": {
      "criteria": "all",
      "brands": []
    },
    "store": {
      "criteria": "filter",
      "stores": [],
      "rules": [
        {
          "companies": [
            1,
            3,
            4
          ],
          "brands": []
        }
      ]
    },
    "category": {
      "criteria": "all",
      "categories": []
    },
    "price": {
      "min": 1,
      "max": 10000
    },
    "discount": {
      "min": 0,
      "max": 100
    },
    "out_of_stock": true,
    "franchise_enabled": true,
    "exclude_category": [],
    "image": [
      "standard",
      "substandard",
      "default"
    ],
    "company_store": []
  },
  "authentication": {
    "required": true,
    "provider": "fynd"
  },
  "article_assignment": {
    "rules": {
      "store_priority": {
        "enabled": false,
        "storetype_order": []
      }
    },
    "post_order_reassignment": true
  },
  "reward_points": {
    "credit": {
      "enabled": true
    },
    "debit": {
      "enabled": true,
      "auto_apply": false,
      "strategy_channel": "rewards"
    }
  },
  "cart": {
    "delivery_charges": {
      "enabled": true,
      "charges": [
        {
          "threshold": 1000,
          "charges": 49
        },
        {
          "threshold": 200000,
          "charges": 79
        }
      ]
    },
    "enabled": true,
    "max_cart_items": 0,
    "min_cart_value": 120,
    "bulk_coupons": true
  },
  "payment": {
    "callback_url": {
      "app": "",
      "web": ""
    },
    "methods": {
      "pl": {
        "enabled": true
      },
      "card": {
        "enabled": true
      },
      "nb": {
        "enabled": true
      },
      "wl": {
        "enabled": true
      },
      "ps": {
        "enabled": true
      },
      "upi": {
        "enabled": true
      },
      "qr": {
        "enabled": true
      },
      "cod": {
        "enabled": true
      },
      "pp": {
        "enabled": true
      },
      "jp": {
        "enabled": false
      },
      "pac": {
        "enabled": false
      },
      "fc": {
        "enabled": false
      },
      "jiopp": {
        "enabled": false
      },
      "stripepg": {
        "enabled": true
      },
      "juspaypg": {
        "enabled": false
      },
      "payubizpg": {
        "enabled": true
      },
      "payumoneypg": {
        "enabled": true
      },
      "rupifipg": {
        "enabled": false
      },
      "simpl": {
        "enabled": true
      }
    },
    "payment_selection_lock": {
      "enabled": false,
      "default_options": "",
      "payment_identifier": ""
    },
    "mode_of_payment": "uniket_b2b",
    "source": "uniket",
    "enabled": true,
    "cod_amount_limit": 100000,
    "cod_charges": 1500
  },
  "order": {
    "enabled": true,
    "force_reassignment": false
  },
  "logistics": {
    "logistics_by_seller": false,
    "serviceability_check": true,
    "same_day_delivery": true,
    "dp_assignment": true
  },
  "business": "retail",
  "comms_enabled": true,
  "platforms": [
    "uniket_wholesale"
  ],
  "_id": "5e04c76b8dd8c003577fdd0a",
  "loyalty_points": {
    "enabled": true,
    "auto_apply": false
  },
  "app": "000000000000000000000004",
  "created_at": "2019-12-26t14:44:59.835z",
  "modified_at": "2021-03-09t15:40:29.208z",
  "__v": 3,
  "modified_by": "5e199eed98cfe16dc61385de"
}
```
</details>









---


#### updateInventoryConfig
Update application configuration




```swift
client.application("<APPLICATION_ID>").configuration.updateInventoryConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ApplicationInventory | yes | Request body |


Update application configuration for various features and data

*Returned Response:*




[ApplicationInventory](#ApplicationInventory)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "inventory": {
    "brand": {
      "criteria": "all",
      "brands": []
    },
    "store": {
      "criteria": "filter",
      "stores": [],
      "rules": [
        {
          "companies": [
            1,
            3,
            4
          ],
          "brands": []
        }
      ]
    },
    "category": {
      "criteria": "all",
      "categories": []
    },
    "price": {
      "min": 1,
      "max": 10000
    },
    "discount": {
      "min": 0,
      "max": 100
    },
    "out_of_stock": true,
    "franchise_enabled": true,
    "exclude_category": [],
    "image": [
      "standard",
      "substandard",
      "default"
    ],
    "company_store": []
  },
  "authentication": {
    "required": true,
    "provider": "fynd"
  },
  "article_assignment": {
    "rules": {
      "store_priority": {
        "enabled": false,
        "storetype_order": []
      }
    },
    "post_order_reassignment": true
  },
  "reward_points": {
    "credit": {
      "enabled": true
    },
    "debit": {
      "enabled": true,
      "auto_apply": false,
      "strategy_channel": "REWARDS"
    }
  },
  "cart": {
    "delivery_charges": {
      "enabled": true,
      "charges": [
        {
          "threshold": 1000,
          "charges": 49
        },
        {
          "threshold": 200000,
          "charges": 79
        }
      ]
    },
    "enabled": true,
    "max_cart_items": 0,
    "min_cart_value": 120,
    "bulk_coupons": true
  },
  "payment": {
    "callback_url": {
      "app": "",
      "web": ""
    },
    "methods": {
      "PL": {
        "enabled": true
      },
      "CARD": {
        "enabled": true
      },
      "NB": {
        "enabled": true
      },
      "WL": {
        "enabled": true
      },
      "PS": {
        "enabled": true
      },
      "UPI": {
        "enabled": true
      },
      "QR": {
        "enabled": true
      },
      "COD": {
        "enabled": true
      },
      "PP": {
        "enabled": true
      },
      "JP": {
        "enabled": false
      },
      "PAC": {
        "enabled": false
      },
      "FC": {
        "enabled": false
      },
      "JIOPP": {
        "enabled": false
      },
      "STRIPEPG": {
        "enabled": true
      },
      "JUSPAYPG": {
        "enabled": false
      },
      "PAYUBIZPG": {
        "enabled": true
      },
      "PAYUMONEYPG": {
        "enabled": true
      },
      "RUPIFIPG": {
        "enabled": false
      },
      "SIMPL": {
        "enabled": true
      }
    },
    "payment_selection_lock": {
      "enabled": false,
      "default_options": "",
      "payment_identifier": ""
    },
    "mode_of_payment": "UNIKET_B2B",
    "source": "UNIKET",
    "enabled": true,
    "cod_amount_limit": 100000,
    "cod_charges": 1500
  },
  "order": {
    "enabled": true,
    "force_reassignment": false
  },
  "logistics": {
    "logistics_by_seller": false,
    "serviceability_check": true,
    "same_day_delivery": true,
    "dp_assignment": true
  },
  "business": "retail",
  "comms_enabled": true,
  "platforms": [
    "uniket_wholesale"
  ],
  "_id": "5e04c76b8dd8c003577fdd0a",
  "loyalty_points": {
    "enabled": true,
    "auto_apply": false
  },
  "app": "000000000000000000000004",
  "created_at": "2019-12-26T14:44:59.835Z",
  "modified_at": "2021-03-09T15:40:29.208Z",
  "__v": 3,
  "modified_by": "5e199eed98cfe16dc61385de"
}
```
</details>









---


#### partiallyUpdateInventoryConfig
Partially update application configuration




```swift
client.application("<APPLICATION_ID>").configuration.partiallyUpdateInventoryConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AppInventoryPartialUpdate | yes | Request body |


Partially update application configuration for various features and data

*Returned Response:*




[ApplicationInventory](#ApplicationInventory)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "inventory": {
    "brand": {
      "criteria": "all",
      "brands": []
    },
    "store": {
      "criteria": "filter",
      "stores": [],
      "rules": [
        {
          "companies": [
            1,
            3,
            4
          ],
          "brands": []
        }
      ]
    },
    "category": {
      "criteria": "all",
      "categories": []
    },
    "price": {
      "min": 1,
      "max": 10000
    },
    "discount": {
      "min": 0,
      "max": 100
    },
    "out_of_stock": true,
    "franchise_enabled": true,
    "exclude_category": [],
    "image": [
      "standard",
      "substandard",
      "default"
    ],
    "company_store": []
  },
  "authentication": {
    "required": true,
    "provider": "fynd"
  },
  "article_assignment": {
    "rules": {
      "store_priority": {
        "enabled": false,
        "storetype_order": []
      }
    },
    "post_order_reassignment": true
  },
  "reward_points": {
    "credit": {
      "enabled": true
    },
    "debit": {
      "enabled": true,
      "auto_apply": false,
      "strategy_channel": "REWARDS"
    }
  },
  "cart": {
    "delivery_charges": {
      "enabled": true,
      "charges": [
        {
          "threshold": 1000,
          "charges": 49
        },
        {
          "threshold": 200000,
          "charges": 79
        }
      ]
    },
    "enabled": true,
    "max_cart_items": 0,
    "min_cart_value": 120,
    "bulk_coupons": true
  },
  "payment": {
    "callback_url": {
      "app": "",
      "web": ""
    },
    "methods": {
      "PL": {
        "enabled": true
      },
      "CARD": {
        "enabled": true
      },
      "NB": {
        "enabled": true
      },
      "WL": {
        "enabled": true
      },
      "PS": {
        "enabled": true
      },
      "UPI": {
        "enabled": true
      },
      "QR": {
        "enabled": true
      },
      "COD": {
        "enabled": true
      },
      "PP": {
        "enabled": true
      },
      "JP": {
        "enabled": false
      },
      "PAC": {
        "enabled": false
      },
      "FC": {
        "enabled": false
      },
      "JIOPP": {
        "enabled": false
      },
      "STRIPEPG": {
        "enabled": true
      },
      "JUSPAYPG": {
        "enabled": false
      },
      "PAYUBIZPG": {
        "enabled": true
      },
      "PAYUMONEYPG": {
        "enabled": true
      },
      "RUPIFIPG": {
        "enabled": false
      },
      "SIMPL": {
        "enabled": true
      }
    },
    "payment_selection_lock": {
      "enabled": false,
      "default_options": "",
      "payment_identifier": ""
    },
    "mode_of_payment": "UNIKET_B2B",
    "source": "UNIKET",
    "enabled": true,
    "cod_amount_limit": 100000,
    "cod_charges": 1500
  },
  "order": {
    "enabled": true,
    "force_reassignment": false
  },
  "logistics": {
    "logistics_by_seller": false,
    "serviceability_check": true,
    "same_day_delivery": true,
    "dp_assignment": true
  },
  "business": "retail",
  "comms_enabled": true,
  "platforms": [
    "uniket_wholesale"
  ],
  "_id": "5e04c76b8dd8c003577fdd0a",
  "loyalty_points": {
    "enabled": true,
    "auto_apply": false
  },
  "app": "000000000000000000000004",
  "created_at": "2019-12-26T14:44:59.835Z",
  "modified_at": "2021-03-09T15:40:29.208Z",
  "__v": 3,
  "modified_by": "5e199eed98cfe16dc61385de"
}
```
</details>









---


#### getAppCurrencyConfig
Get application enabled currency list




```swift
client.application("<APPLICATION_ID>").configuration.getAppCurrencyConfig() { (response, error) in
    // Use response
}
```






Get application enabled currency list

*Returned Response:*




[AppSupportedCurrency](#AppSupportedCurrency)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "5ec7a85965c3893857538d93",
  "supported_currency": [
    "5ec75d11f7bfb5a7d38f3524",
    "5ec75d11f7bfb54d798f3516",
    "5ec75d11f7bfb553b88f355f",
    "5ec75d11f7bfb559d08f34d5",
    "5ec75d11f7bfb5d1e98f34da"
  ],
  "application": "000000000000000000000004",
  "default_currency": {
    "ref": "5ec75d11f7bfb54d798f3516",
    "code": "USD"
  },
  "created_at": "2020-05-22T10:24:25.984Z",
  "modified_at": "2021-03-09T10:47:32.664Z"
}
```
</details>









---


#### updateAppCurrencyConfig
Add initial application supported currency




```swift
client.application("<APPLICATION_ID>").configuration.updateAppCurrencyConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AppSupportedCurrency | yes | Request body |


Add initial application supported currency for various features and data. Default INR will be enabled.

*Returned Response:*




[AppSupportedCurrency](#AppSupportedCurrency)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "5ec7a85965c3893857538d93",
  "supported_currency": [
    "5ec75d11f7bfb5a7d38f3524",
    "5ec75d11f7bfb54d798f3516",
    "5ec75d11f7bfb553b88f355f",
    "5ec75d11f7bfb559d08f34d5",
    "5ec75d11f7bfb5d1e98f34da"
  ],
  "application": "000000000000000000000004",
  "default_currency": {
    "ref": "5ec75d11f7bfb54d798f3516",
    "code": "USD"
  },
  "created_at": "2020-05-22T10:24:25.984Z",
  "modified_at": "2021-03-09T10:47:32.664Z"
}
```
</details>









---


#### getOrderingStoresByFilter
Get ordering store by filter




```swift
client.application("<APPLICATION_ID>").configuration.getOrderingStoresByFilter(pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  
| body | FilterOrderingStoreRequest | yes | Request body |


Get ordering store by filter

*Returned Response:*




[OrderingStores](#OrderingStores)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": true,
    "item_total": 583
  },
  "items": [
    {
      "address": {
        "state": "MAHARASHTRA",
        "address1": "SAGAR TECH PLAZA, SAKINAKA",
        "lat_long": {
          "type": "Point",
          "coordinates": [
            1,
            1
          ]
        },
        "pincode": 400070,
        "country": "INDIA",
        "city": "MUMBAI"
      },
      "_id": "5f586563f509dd000145c02d",
      "store_type": "high_street",
      "uid": 11016,
      "store_code": "HS-0c532",
      "display_name": " Brand Company Store 11",
      "name": " Brand Company Store 11",
      "pincode": 400070,
      "code": "HS-0c532"
    },
    {
      "address": {
        "state": "MAHARASHTRA",
        "address1": "UNNAMED ROAD, VASAI EAST SALT PLANT",
        "lat_long": {
          "type": "Point",
          "coordinates": [
            72.84293219999999,
            19.3805675
          ]
        },
        "address2": "VASAI EAST SALT PLANT, VASAI EAST, ",
        "pincode": 401208,
        "country": "INDIA",
        "city": "VIRAR",
        "landmark": ""
      },
      "_id": "5f585934f509dd000145c025",
      "store_type": "high_street",
      "uid": 11567,
      "store_code": "123456",
      "display_name": "2nd Store",
      "name": "2nd Store",
      "pincode": 401208,
      "code": "123456"
    },
    {
      "address": {
        "state": "GUJARAT",
        "address1": "32, AANAND SHOPPING CENTRE ",
        "lat_long": {
          "type": "Point",
          "coordinates": [
            1,
            1
          ]
        },
        "pincode": 380001,
        "country": "INDIA",
        "city": "AHMEDABAD"
      },
      "_id": "5f587b5ef509dd000145c02f",
      "store_type": "high_street",
      "uid": 11568,
      "store_code": "12345",
      "display_name": "3rd ",
      "name": "3rd ",
      "pincode": 380001,
      "code": "12345"
    }
  ]
}
```
</details>









---


#### updateOrderingStoreConfig
Add/Update ordering store config




```swift
client.application("<APPLICATION_ID>").configuration.updateOrderingStoreConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | OrderingStoreConfig | yes | Request body |


Add/Update ordering store config.

*Returned Response:*




[DeploymentMeta](#DeploymentMeta)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "deployed_stores": [
    1,
    10
  ],
  "all_stores": false,
  "enabled": true,
  "type": "hard",
  "_id": "5e7e5e4d6b5f3b4b54c95f9c",
  "app": "000000000000000000000004",
  "__v": 6
}
```
</details>









---


#### getStaffOrderingStores
Get deployment stores




```swift
client.application("<APPLICATION_ID>").configuration.getStaffOrderingStores(pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |   
| q | String? | no | Store code or name of the ordering store. |  



Use this API to retrieve the details of all stores access given to the staff member (the selling locations where the application will be utilized for placing orders).

*Returned Response:*




[OrderingStoresResponse](#OrderingStoresResponse)

Success. Check the example shown below or refer `OrderingStoresResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getDomains
Get attached domain list




```swift
client.application("<APPLICATION_ID>").configuration.getDomains() { (response, error) in
    // Use response
}
```






Get attached domain list.

*Returned Response:*




[DomainsResponse](#DomainsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "domains": [
    {
      "_id": "5eb1177748312a3bd55d0f1e",
      "verified": true,
      "name": "uniket.hostx0.de",
      "is_primary": true,
      "is_shortlink": false
    },
    {
      "verified": true,
      "is_primary": false,
      "is_shortlink": true,
      "_id": "5f0858c5f86e00cd42dccc8d",
      "name": "jd.hostx0.de"
    },
    {
      "verified": true,
      "is_primary": false,
      "is_shortlink": false,
      "_id": "6048497e87f5730423149190",
      "name": "testdm.hostx0.de"
    }
  ]
}
```
</details>









---


#### addDomain
Add new domain to application




```swift
client.application("<APPLICATION_ID>").configuration.addDomain(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DomainAddRequest | yes | Request body |


Add new domain to application.

*Returned Response:*




[Domain](#Domain)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "name": "testdm.hostx0.de",
  "verified": true,
  "txtRecords": [],
  "message": "New domain added successfully",
  "is_primary": false,
  "is_shortlink": false,
  "_id": "6048497e87f5730423149190"
}
```
</details>









---


#### removeDomainById
Remove attached domain




```swift
client.application("<APPLICATION_ID>").configuration.removeDomainById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Domain _id |  



Remove attached domain.

*Returned Response:*




[SuccessMessageResponse](#SuccessMessageResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Domain removed successfully"
}
```
</details>









---


#### changeDomainType
Change domain type




```swift
client.application("<APPLICATION_ID>").configuration.changeDomainType(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateDomainTypeRequest | yes | Request body |


Change a domain to Primary or Shortlink domain

*Returned Response:*




[DomainsResponse](#DomainsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "domains": [
    {
      "_id": "5eb1177748312a3bd55d0f1e",
      "verified": true,
      "name": "uniket.hostx0.de",
      "is_primary": true,
      "is_shortlink": false
    },
    {
      "verified": true,
      "is_primary": false,
      "is_shortlink": true,
      "_id": "5f0858c5f86e00cd42dccc8d",
      "name": "jd.hostx0.de"
    },
    {
      "verified": true,
      "is_primary": false,
      "is_shortlink": false,
      "_id": "6048497e87f5730423149190",
      "name": "testdm.hostx0.de"
    }
  ]
}
```
</details>









---


#### getDomainStatus
Get domain connected status.




```swift
client.application("<APPLICATION_ID>").configuration.getDomainStatus(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DomainStatusRequest | yes | Request body |


Get domain connected status. Check if domain is live and mapped to appropriate IP to fynd servers.

*Returned Response:*




[DomainStatusResponse](#DomainStatusResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "connected": true,
  "status": [
    {
      "display": "Domain TXT record entry 5d65089e031f9029f8e8dc2f",
      "status": true
    },
    {
      "display": "Domain pointing to 18.217.232.69 A record",
      "status": true
    },
    {
      "display": "Domain pointing to 18.188.115.251 A record",
      "status": true
    }
  ]
}
```
</details>









---


#### createApplication
Create application




```swift
client.configuration.createApplication(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateApplicationRequest | yes | Request body |


Create new application

*Returned Response:*




[CreateAppResponse](#CreateAppResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getApplications
Get list of application under company




```swift
client.configuration.getApplications(pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| q | String? | no | Url encoded object used as mongodb query |  



Get list of application under company

*Returned Response:*




[ApplicationsResponse](#ApplicationsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getApplicationById
Get application data from id




```swift
client.application("<APPLICATION_ID>").configuration.getApplicationById() { (response, error) in
    // Use response
}
```






Get application data from id

*Returned Response:*




[Application](#Application)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCurrencies
Get all currencies




```swift
client.configuration.getCurrencies() { (response, error) in
    // Use response
}
```






Get all currencies

*Returned Response:*




[CurrenciesResponse](#CurrenciesResponse)

Currencies Success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "_id": "5ec75d11f7bfb54d798f3516",
      "is_active": true,
      "name": "United States Dollar",
      "code": "USD",
      "created_at": "2020-05-22T05:03:13.354Z",
      "modified_at": "2020-06-05T09:12:04.248Z",
      "decimal_digits": 2,
      "symbol": "$"
    }
  ]
}
```
</details>









---


#### getDomainAvailibility
Check domain availibility before linking to application




```swift
client.configuration.getDomainAvailibility(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DomainSuggestionsRequest | yes | Request body |


Check domain availibility before linking to application. Also sends domain suggestions with similar to queried domain. \ Custom domain search is currently powered by GoDaddy provider.

*Returned Response:*




[DomainSuggestionsResponse](#DomainSuggestionsResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Suggestions for fynd domains</i></summary>

```json
{
  "value": {
    "domains": [
      {
        "name": "test.hostx1.de",
        "is_available": false
      },
      {
        "name": "testhive.hostx1.de",
        "is_available": true
      }
    ]
  }
}
```
</details>

<details>
<summary><i>&nbsp; Suggestions for custom domains</i></summary>

```json
{
  "value": {
    "domains": [
      {
        "name": "test25.in",
        "unsupported": false,
        "is_available": false
      },
      {
        "name": "try25.in",
        "unsupported": false,
        "is_available": true,
        "price": 14.99,
        "currency": "USD"
      }
    ]
  }
}
```
</details>

</details>









---


#### getIntegrationById
Get integration data




```swift
client.configuration.getIntegrationById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | Int | yes | Integration id |  



Get integration data

*Returned Response:*




[Integration](#Integration)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "5ec376ce848a005189acb312",
  "validators": {
    "company": {
      "browser_script": "",
      "json_schema": {
        "type": "object",
        "required": [
          "ip_address",
          "icode",
          "gds_entity_id",
          "auth_key"
        ],
        "properties": {
          "gds_entity_id": {
            "type": "string",
            "title": "GDS Entity ID",
            "minLength": 3,
            "maxLength": 10,
            "pattern": "^[a-zA-Z0-9]+$",
            "description": "GDS Entity ID is a unique identifier provided by Ginesys to you."
          },
          "ip_address": {
            "type": "string",
            "title": "IP Address",
            "pattern": "(\\d{1,3}\\.){3}\\d{1,3}",
            "description": "Enter IP address provided by Ginesys for your POS server"
          },
          "auth_key": {
            "title": "Auth Key",
            "type": "string",
            "maxLength": 500,
            "description": "Provide authentication token provided by Ginesys to you."
          },
          "icode": {
            "title": "ICODE",
            "type": "string",
            "enum": [
              "ean",
              "upc",
              "alu",
              "sku_code"
            ],
            "description": "Please select the correct SKU identifier that you use to provide inventory to Fynd."
          }
        }
      }
    },
    "store": {
      "browser_script": "",
      "json_schema": {
        "type": "object",
        "properties": {
          "location_id": {
            "type": "string",
            "title": "Location ID",
            "description": "Provide site code as per POS/SAP."
          },
          "ip_address": {
            "type": "string",
            "title": "IP Address",
            "pattern": "(\\d{1,3}\\.){3}\\d{1,3}",
            "description": "Enter IP address provided by Ginesys for your POS server"
          }
        }
      }
    }
  },
  "description": "Sap Integration west ELM brands",
  "constants": {},
  "name": "SAP RBL Integration",
  "meta": [
    {
      "public": true,
      "_id": "5ee3e246129be17ce0b59ef4",
      "name": "price_level",
      "value": "store"
    }
  ],
  "icon": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1589868232/addsale/platform/integrations/icon/z3kj9p8nidx4zzmdutdu.svg",
  "owner": "5e60e43dcd08cf01069eb23e",
  "created_at": "2020-05-19T06:03:58.757Z",
  "modified_at": "2020-06-15T12:00:42.598Z",
  "token": "qk60vXqk-",
  "secret": "Gp0dYInpUV",
  "__v": 13,
  "description_html": ""
}
```
</details>









---


#### getAvailableOptIns
Get all available integration opt-ins




```swift
client.configuration.getAvailableOptIns(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Get all available integration opt-ins

*Returned Response:*




[GetIntegrationsOptInsResponse](#GetIntegrationsOptInsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "validators": {
        "company": {
          "json_schema": [
            {
              "display": "Host",
              "key": "host",
              "type": "text",
              "tooltip": "Enter host address"
            }
          ],
          "browser_script": ""
        },
        "store": {
          "json_schema": [],
          "browser_script": ""
        },
        "inventory": {
          "json_schema": [],
          "browser_script": ""
        },
        "order": {
          "json_schema": [],
          "browser_script": ""
        }
      },
      "description": "awesome integration",
      "description_html": "",
      "constants": "{\"mop_mapping\":{\"FYND\":\"FYND\"}}",
      "companies": [],
      "support": [
        "inventory",
        "order"
      ],
      "_id": "5e56089f4265cf2846d1e58c",
      "name": "x0-1",
      "meta": [
        {
          "public": true,
          "_id": "5e56089f4265cf81e1d1e58e",
          "name": "wow",
          "value": "1"
        }
      ],
      "icon": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1582696589/addsale/platform/integrations/icon/jihgcoibfmdttgiukwg0.png",
      "owner": "5e55fe074bda3c392ed9eab2",
      "created_at": "2020-02-26T05:56:47.214Z",
      "modified_at": "2021-03-02T12:29:03.554Z",
      "token": "fKoHRW5H",
      "secret": "d1E85CTmf",
      "__v": 12
    },
    {
      "validators": {
        "company": {
          "json_schema": [],
          "browser_script": ""
        },
        "store": {
          "json_schema": [],
          "browser_script": ""
        },
        "inventory": {
          "json_schema": [],
          "browser_script": ""
        },
        "order": {
          "json_schema": [],
          "browser_script": ""
        }
      },
      "description": "jabardast",
      "description_html": "",
      "constants": "{\"mop_mapping\":{\"FYND\":\"FYND\"}}",
      "companies": [],
      "support": [
        "inventory",
        "order"
      ],
      "_id": "5e5608bf4265cf7198d1e58f",
      "name": "x0-2",
      "meta": [
        {
          "public": false,
          "_id": "5e5608bf4265cf813fd1e590",
          "name": "wow",
          "value": "1"
        }
      ],
      "icon": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1582696633/addsale/platform/integrations/icon/cstvvkgjgip1ja56gq4x.png",
      "owner": "5e55fe074bda3c392ed9eab2",
      "created_at": "2020-02-26T05:57:19.875Z",
      "modified_at": "2021-02-15T05:23:55.962Z",
      "token": "3h3_mnzp",
      "secret": "dgGHrIlFG",
      "__v": 7
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 50,
    "item_total": 24,
    "has_next": false
  }
}
```
</details>









---


#### getSelectedOptIns
Get company/store level integration opt-ins




```swift
client.configuration.getSelectedOptIns(level: level, uid: uid, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| level | String | yes | Integration level |   
| uid | Int | yes | Integration level uid |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Get company/store level integration opt-ins

*Returned Response:*




[GetIntegrationsOptInsResponse](#GetIntegrationsOptInsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "validators": {
        "company": {
          "json_schema": [
            {
              "display": "Host",
              "key": "host",
              "type": "text",
              "tooltip": "Enter host address"
            }
          ],
          "browser_script": ""
        },
        "store": {
          "json_schema": [],
          "browser_script": ""
        },
        "inventory": {
          "json_schema": [],
          "browser_script": ""
        },
        "order": {
          "json_schema": [],
          "browser_script": ""
        }
      },
      "description": "awesome integration",
      "description_html": "",
      "constants": "{\"mop_mapping\":{\"FYND\":\"FYND\"}}",
      "companies": [],
      "support": [
        "inventory",
        "order"
      ],
      "_id": "5e56089f4265cf2846d1e58c",
      "name": "x0-1",
      "meta": [
        {
          "public": true,
          "_id": "5e56089f4265cf81e1d1e58e",
          "name": "wow",
          "value": "1"
        }
      ],
      "icon": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1582696589/addsale/platform/integrations/icon/jihgcoibfmdttgiukwg0.png",
      "owner": "5e55fe074bda3c392ed9eab2",
      "created_at": "2020-02-26T05:56:47.214Z",
      "modified_at": "2021-03-02T12:29:03.554Z",
      "token": "fKoHRW5H",
      "secret": "d1E85CTmf",
      "__v": 12
    },
    {
      "validators": {
        "company": {
          "json_schema": [],
          "browser_script": ""
        },
        "store": {
          "json_schema": [],
          "browser_script": ""
        },
        "inventory": {
          "json_schema": [],
          "browser_script": ""
        },
        "order": {
          "json_schema": [],
          "browser_script": ""
        }
      },
      "description": "jabardast",
      "description_html": "",
      "constants": "{\"mop_mapping\":{\"FYND\":\"FYND\"}}",
      "companies": [],
      "support": [
        "inventory",
        "order"
      ],
      "_id": "5e5608bf4265cf7198d1e58f",
      "name": "x0-2",
      "meta": [
        {
          "public": false,
          "_id": "5e5608bf4265cf813fd1e590",
          "name": "wow",
          "value": "1"
        }
      ],
      "icon": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1582696633/addsale/platform/integrations/icon/cstvvkgjgip1ja56gq4x.png",
      "owner": "5e55fe074bda3c392ed9eab2",
      "created_at": "2020-02-26T05:57:19.875Z",
      "modified_at": "2021-02-15T05:23:55.962Z",
      "token": "3h3_mnzp",
      "secret": "dgGHrIlFG",
      "__v": 7
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 50,
    "item_total": 24,
    "has_next": false
  }
}
```
</details>









---


#### getIntegrationLevelConfig
Get integration level config




```swift
client.configuration.getIntegrationLevelConfig(id: id, level: level, opted: opted, checkPermission: checkPermission) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Integration id |   
| level | String | yes | Integration level |   
| opted | Bool? | no | Filter on opted stores |   
| checkPermission | Bool? | no | Filter on if permissions are present |  



Get integration/integration-opt-in level config

*Returned Response:*




[IntegrationConfigResponse](#IntegrationConfigResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "opted": false,
      "permissions": [],
      "last_patch": [],
      "_id": "5ec377f2848a0073feacb31b",
      "integration": "5ec376ce848a005189acb312",
      "level": "store",
      "uid": 1,
      "meta": [],
      "token": "1RuGX0Fyp",
      "created_at": "2020-05-19T06:08:50.199Z",
      "modified_at": "2020-08-17T07:54:01.809Z",
      "__v": 14,
      "data": {
        "location_id": "09876",
        "ip_address": "1.2.3.4"
      }
    }
  ]
}
```
</details>









---


#### getIntegrationByLevelId
Get level data for integration




```swift
client.configuration.getIntegrationByLevelId(id: id, level: level, uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Integration id |   
| level | String | yes | Integration level |   
| uid | Int | yes | Integration level uid |  



Get level data for integration

*Returned Response:*




[IntegrationLevel](#IntegrationLevel)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "opted": false,
  "permissions": [],
  "last_patch": [],
  "_id": "5ec377f2848a0073feacb31b",
  "integration": "5ec376ce848a005189acb312",
  "level": "store",
  "uid": 1,
  "meta": [],
  "token": "1RuGX0Fyp",
  "created_at": "2020-05-19T06:08:50.199Z",
  "modified_at": "2020-08-17T07:54:01.809Z",
  "__v": 14,
  "data": {
    "location_id": "09876",
    "ip_address": "1.2.3.4"
  }
}
```
</details>









---


#### updateLevelUidIntegration
Update a store level opt-in for integration




```swift
client.configuration.updateLevelUidIntegration(id: id, level: level, uid: uid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Integration id |   
| level | String | yes | Integration level |   
| uid | Int | yes | Integration level uid |  
| body | IntegrationLevel | yes | Request body |


Update a store level opt-in for integration

*Returned Response:*




[IntegrationLevel](#IntegrationLevel)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "opted": false,
  "permissions": [],
  "last_patch": [],
  "_id": "5ec377f2848a0073feacb31b",
  "integration": "5ec376ce848a005189acb312",
  "level": "store",
  "uid": 1,
  "meta": [],
  "token": "1RuGX0Fyp",
  "created_at": "2020-05-19T06:08:50.199Z",
  "modified_at": "2020-08-17T07:54:01.809Z",
  "__v": 14,
  "data": {
    "location_id": "09876",
    "ip_address": "1.2.3.4"
  }
}
```
</details>









---


#### getLevelActiveIntegrations
Check store has active integration




```swift
client.configuration.getLevelActiveIntegrations(id: id, level: level, uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Integration id |   
| level | String | yes | Integration level |   
| uid | Int | yes | Integration level uid |  



API checks if a store is already opted in any other integrations

*Returned Response:*




[OptedStoreIntegration](#OptedStoreIntegration)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "opted": false,
  "permissions": [],
  "last_patch": [],
  "_id": "5ec377f2848a0073feacb31b",
  "integration": "5ec376ce848a005189acb312",
  "level": "store",
  "uid": 1,
  "meta": [],
  "token": "1RuGX0Fyp",
  "created_at": "2020-05-19T06:08:50.199Z",
  "modified_at": "2020-08-17T07:54:01.809Z",
  "__v": 14,
  "data": {
    "location_id": "09876",
    "ip_address": "1.2.3.4"
  }
}
```
</details>









---


#### updateLevelIntegration
Update a store level opt-in for integration




```swift
client.configuration.updateLevelIntegration(id: id, level: level, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Integration id |   
| level | String | yes | Integration level |  
| body | UpdateIntegrationLevelRequest | yes | Request body |


Update a store level opt-in for integration

*Returned Response:*




[IntegrationLevel](#IntegrationLevel)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "opted": false,
  "permissions": [],
  "last_patch": [],
  "_id": "5ec377f2848a0073feacb31b",
  "integration": "5ec376ce848a005189acb312",
  "level": "store",
  "uid": 1,
  "meta": [],
  "token": "1RuGX0Fyp",
  "created_at": "2020-05-19T06:08:50.199Z",
  "modified_at": "2020-08-17T07:54:01.809Z",
  "__v": 14,
  "data": {
    "location_id": "09876",
    "ip_address": "1.2.3.4"
  }
}
```
</details>









---


#### getBrandsByCompany
Get brands by company




```swift
client.configuration.getBrandsByCompany(q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | Search text for brand name |  



Get brands by company

*Returned Response:*




[BrandsByCompanyResponse](#BrandsByCompanyResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "brands": [
    {
      "name": "5th Avenue",
      "value": 476,
      "brand_logo_url": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/--unnamed--/1595615012186.jpeg",
      "brand_banner_url": "https://hdn-1.addsale.com/x0/seller/pictures/landscape-banner/original/--unnamed--/1595615012724.jpeg",
      "brand_banner_portrait_url": "https://hdn-1.addsale.com/x0/seller/pictures/portrait-banner/original/--unnamed--/1595615013203.jpeg"
    },
    {
      "name": "Abhay",
      "value": 47,
      "brand_logo_url": "https://hdn-1.fynd.com/brands/pictures/square-logo/resize-h:200,w:0/9fG6jZUJV-brand-Slamay.png",
      "brand_banner_url": "https://hdn-1.addsale.com/x0/seller/pictures/landscape-banner/original/cpApcg_insta_01.jpg034422ca-b739-4a30-ba9c-87ca32e8c2ef/cpApcg_insta_01.jpg",
      "brand_banner_portrait_url": "https://hdn-1.addsale.com/x0/seller/pictures/portrait-banner/original/mtaSMv_insta_01.jpga088b881-886d-4b5a-b82f-139bd2aa3f35/mtaSMv_insta_01.jpg"
    }
  ]
}
```
</details>









---


#### getCompanyByBrands
Get company by brand uids




```swift
client.configuration.getCompanyByBrands(pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  
| body | CompanyByBrandsRequest | yes | Request body |


Get company by brand uids

*Returned Response:*




[CompanyByBrandsResponse](#CompanyByBrandsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "company_name": "RELIANCE RETAIL LTD",
      "company_id": 1
    },
    {
      "company_name": "SARASUOLE PRIVATE LIMITED",
      "company_id": 3
    },
    {
      "company_name": "Lloyd Palek",
      "company_id": 4
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 200,
    "item_total": 171,
    "has_next": false
  }
}
```
</details>









---


#### getStoreByBrands
Get stores by brand uids




```swift
client.configuration.getStoreByBrands(pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  
| body | StoreByBrandsRequest | yes | Request body |


Get stores by brand uids

*Returned Response:*




[StoreByBrandsResponse](#StoreByBrandsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "store_name": "RRL01",
      "store_id": 1,
      "store_type": "warehouse",
      "store_code": "WH_8513",
      "store_address": {
        "state": "MAHARASHTRA",
        "address1": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED 1ST FLOOR WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR,",
        "lat_long": {
          "type": "Point",
          "coordinates": [
            72.8691788,
            19.1174114
          ]
        },
        "address2": "KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTRA 400069",
        "pincode": 400059,
        "country": "INDIA",
        "city": "MUMBAI"
      },
      "company": {
        "uid": 1,
        "name": "RELIANCE RETAIL LTD"
      }
    },
    {
      "store_name": "RUOSH WAREHOUSE",
      "store_id": 2,
      "store_type": "warehouse",
      "store_code": "RUOSH43",
      "store_address": {
        "state": "MAHARASHTRA",
        "address1": "RAUNAK CITY SECTOR 4 D10, SAPAD GAON",
        "lat_long": {
          "type": "Point",
          "coordinates": [
            73.121952,
            19.2645048
          ]
        },
        "address2": "SAPAD GAON, KHADAKPADA, ",
        "pincode": 421301,
        "country": "INDIA",
        "city": "THANE",
        "landmark": "near taj"
      },
      "company": {
        "uid": 3,
        "name": "SARASUOLE PRIVATE LIMITED"
      }
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 200,
    "item_total": 762,
    "has_next": true
  }
}
```
</details>









---


#### getOtherSellerApplications
Get other seller applications




```swift
client.configuration.getOtherSellerApplications(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Get other seller applications who has opted current company as inventory

*Returned Response:*




[OtherSellerApplications](#OtherSellerApplications)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "name": "intent 2",
      "description": "",
      "_id": "5f030880f019afd636889afc",
      "domain": "intent.hostx0.de",
      "company": {
        "uid": 94,
        "name": "DummyImran"
      },
      "opt_type": "store"
    },
    {
      "name": "new application imran",
      "description": "",
      "_id": "5f03f5d17692029e2d1a50a5",
      "domain": "imranstore.hostx0.de",
      "company": {
        "uid": 94,
        "name": "DummyImran"
      },
      "opt_type": "store"
    },
    {
      "name": "helo",
      "description": "",
      "_id": "5f03f63b769202170c1a50a9",
      "domain": "helo.hostx0.de",
      "company": {
        "uid": 7,
        "name": "Zack Burgdorf"
      },
      "opt_type": "store"
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 10,
    "item_total": 20,
    "has_next": true
  }
}
```
</details>









---


#### getOtherSellerApplicationById
Get other seller applications




```swift
client.configuration.getOtherSellerApplicationById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Application Id |  



Get other seller application

*Returned Response:*




[OptedApplicationResponse](#OptedApplicationResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "name": "intent 2",
  "description": "",
  "_id": "5f030880f019afd636889afc",
  "domain": "intent.hostx0.de",
  "company": {
    "uid": 94,
    "name": "DummyImran"
  },
  "opted_inventory": {
    "opt_type": {
      "key": "store",
      "display": "Store"
    },
    "items": [
      {
        "name": "RRL01",
        "id": 1,
        "store_code": "WH_8513",
        "_id": "5ec2c0b168fc2800017112f5",
        "modified_on": "2020-09-09T04:25:55.843Z",
        "uid": 1,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED 1ST FLOOR WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR,",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              72.8691788,
              19.1174114
            ]
          },
          "address2": "KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTRA 400069",
          "pincode": 400059,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "display_name": "RRL01",
        "store_type": "warehouse",
        "company_id": 1
      }
    ]
  },
  "opt_out_inventory": {
    "store": [],
    "company": []
  }
}
```
</details>









---


#### optOutFromApplication
Opt out company or store from other seller application




```swift
client.configuration.optOutFromApplication(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Application Id |  
| body | OptOutInventory | yes | Request body |


Opt out company or store from other seller application

*Returned Response:*




[SuccessMessageResponse](#SuccessMessageResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Updated opt out data"
}
```
</details>









---



### Schemas

 
 
 #### [ApplicationInventory](#ApplicationInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | [AppInventoryConfig](#AppInventoryConfig)? |  yes  |  |
 | authentication | [AuthenticationConfig](#AuthenticationConfig)? |  yes  |  |
 | articleAssignment | [ArticleAssignmentConfig](#ArticleAssignmentConfig)? |  yes  |  |
 | rewardPoints | [RewardPointsConfig](#RewardPointsConfig)? |  yes  |  |
 | cart | [AppCartConfig](#AppCartConfig)? |  yes  |  |
 | payment | [AppPaymentConfig](#AppPaymentConfig)? |  yes  |  |
 | order | [AppOrderConfig](#AppOrderConfig)? |  yes  |  |
 | logistics | [AppLogisticsConfig](#AppLogisticsConfig)? |  yes  |  |
 | business | String? |  yes  |  |
 | commsEnabled | Bool? |  yes  |  |
 | platforms | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | loyaltyPoints | [LoyaltyPointsConfig](#LoyaltyPointsConfig)? |  yes  |  |
 | app | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | modifiedBy | String? |  yes  |  |

---


 
 
 #### [AppInventoryConfig](#AppInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [InventoryBrand](#InventoryBrand)? |  yes  |  |
 | store | [InventoryStore](#InventoryStore)? |  yes  |  |
 | category | [InventoryCategory](#InventoryCategory)? |  yes  |  |
 | price | [InventoryPrice](#InventoryPrice)? |  yes  |  |
 | discount | [InventoryDiscount](#InventoryDiscount)? |  yes  |  |
 | outOfStock | Bool? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | excludeCategory | [[String: Any]]? |  yes  |  |
 | image | [String]? |  yes  |  |
 | companyStore | [[String: Any]]? |  yes  |  |

---


 
 
 #### [InventoryBrand](#InventoryBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  |  |
 | brands | [[String: Any]]? |  yes  |  |

---


 
 
 #### [InventoryStore](#InventoryStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  |  |
 | stores | [[String: Any]]? |  yes  |  |
 | rules | [AppStoreRules](#AppStoreRules)? |  yes  |  |

---


 
 
 #### [AppStoreRules](#AppStoreRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companies | [Int]? |  yes  |  |
 | brands | [[String: Any]]? |  yes  |  |

---


 
 
 #### [InventoryCategory](#InventoryCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  |  |
 | categories | [[String: Any]]? |  yes  |  |

---


 
 
 #### [InventoryPrice](#InventoryPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Double? |  yes  |  |
 | max | Double? |  yes  |  |

---


 
 
 #### [InventoryDiscount](#InventoryDiscount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Double? |  yes  |  |
 | max | Double? |  yes  |  |

---


 
 
 #### [AuthenticationConfig](#AuthenticationConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | required | Bool? |  yes  |  |
 | provider | String? |  yes  |  |

---


 
 
 #### [ArticleAssignmentConfig](#ArticleAssignmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rules | [ArticleAssignmentRules](#ArticleAssignmentRules)? |  yes  |  |
 | postOrderReassignment | Bool? |  yes  |  |

---


 
 
 #### [ArticleAssignmentRules](#ArticleAssignmentRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storePriority | [StorePriority](#StorePriority)? |  yes  |  |

---


 
 
 #### [StorePriority](#StorePriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | storetypeOrder | [[String: Any]]? |  yes  |  |

---


 
 
 #### [AppCartConfig](#AppCartConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryCharges | [DeliveryCharges](#DeliveryCharges)? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | maxCartItems | Int? |  yes  |  |
 | minCartValue | Double? |  yes  |  |
 | bulkCoupons | Bool? |  yes  |  |

---


 
 
 #### [DeliveryCharges](#DeliveryCharges)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | charges | [Charges](#Charges)? |  yes  |  |

---


 
 
 #### [Charges](#Charges)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | threshold | Double? |  yes  |  |
 | charges | Double? |  yes  |  |

---


 
 
 #### [AppPaymentConfig](#AppPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | callbackUrl | [CallbackUrl](#CallbackUrl)? |  yes  |  |
 | methods | [Methods](#Methods)? |  yes  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |
 | source | String? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | codAmountLimit | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |

---


 
 
 #### [CallbackUrl](#CallbackUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | String? |  yes  |  |
 | web | String? |  yes  |  |

---


 
 
 #### [Methods](#Methods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pl | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | card | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | nb | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | wl | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | ps | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | upi | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | qr | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | cod | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | pp | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | jp | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | pac | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | fc | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | jiopp | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | stripepg | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | juspaypg | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | payubizpg | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | payumoneypg | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | rupifipg | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | simpl | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |

---


 
 
 #### [PaymentModeConfig](#PaymentModeConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [PaymentSelectionLock](#PaymentSelectionLock)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | defaultOptions | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |

---


 
 
 #### [AppOrderConfig](#AppOrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | forceReassignment | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [AppLogisticsConfig](#AppLogisticsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logisticsBySeller | Bool? |  yes  |  |
 | serviceabilityCheck | Bool? |  yes  |  |
 | sameDayDelivery | Bool? |  yes  |  |
 | dpAssignment | Bool? |  yes  |  |

---


 
 
 #### [LoyaltyPointsConfig](#LoyaltyPointsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | autoApply | Bool? |  yes  |  |

---


 
 
 #### [AppInventoryPartialUpdate](#AppInventoryPartialUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rewardPoints | [RewardPointsConfig](#RewardPointsConfig)? |  yes  |  |
 | cart | [AppCartConfig](#AppCartConfig)? |  yes  |  |
 | payment | [AppPaymentConfig](#AppPaymentConfig)? |  yes  |  |
 | loyaltyPoints | [LoyaltyPointsConfig](#LoyaltyPointsConfig)? |  yes  |  |
 | commsEnabled | Bool? |  yes  |  |

---


 
 
 #### [BrandCompanyInfo](#BrandCompanyInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyName | String? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [CompanyByBrandsRequest](#CompanyByBrandsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | Int |  no  | Brand uids |
 | searchText | String? |  yes  | Search company by name |

---


 
 
 #### [CompanyByBrandsResponse](#CompanyByBrandsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BrandCompanyInfo](#BrandCompanyInfo)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [StoreByBrandsRequest](#StoreByBrandsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  | Current company id for current company stores only. Don't send in case of cross selling enabled |
 | brands | Int |  no  | Brand uids |
 | searchText | String? |  yes  | Search store by name or store code |

---


 
 
 #### [StoreByBrandsResponse](#StoreByBrandsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BrandStoreInfo](#BrandStoreInfo)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [BrandStoreInfo](#BrandStoreInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeName | String? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | storeType | String? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | storeAddress | [OptedStoreAddress](#OptedStoreAddress)? |  yes  |  |
 | company | [OptedCompany](#OptedCompany)? |  yes  |  |

---


 
 
 #### [CompanyBrandInfo](#CompanyBrandInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | value | Int? |  yes  |  |
 | brandLogoUrl | String? |  yes  |  |
 | brandBannerUrl | String? |  yes  |  |
 | brandBannerPortraitUrl | String? |  yes  |  |

---


 
 
 #### [BrandsByCompanyResponse](#BrandsByCompanyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | [CompanyBrandInfo](#CompanyBrandInfo)? |  yes  |  |

---


 
 
 #### [CreateApplicationRequest](#CreateApplicationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | [App](#App)? |  yes  |  |
 | configuration | [AppInventory](#AppInventory)? |  yes  |  |
 | domain | [AppDomain](#AppDomain)? |  yes  |  |

---


 
 
 #### [CreateAppResponse](#CreateAppResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | [Application](#Application)? |  yes  |  |
 | configuration | [ApplicationInventory](#ApplicationInventory)? |  yes  |  |

---


 
 
 #### [ApplicationsResponse](#ApplicationsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Application](#Application)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [MobileAppConfiguration](#MobileAppConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | appName | String? |  yes  |  |
 | landingImage | [LandingImage](#LandingImage)? |  yes  |  |
 | splashImage | [SplashImage](#SplashImage)? |  yes  |  |
 | application | String? |  yes  |  |
 | platformType | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | packageName | String? |  yes  |  |

---


 
 
 #### [LandingImage](#LandingImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [SplashImage](#SplashImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [MobileAppConfigRequest](#MobileAppConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appName | String? |  yes  |  |
 | landingImage | [LandingImage](#LandingImage)? |  yes  |  |
 | splashImage | [SplashImage](#SplashImage)? |  yes  |  |
 | isActive | Bool? |  yes  |  |

---


 
 
 #### [BuildVersionHistory](#BuildVersionHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | versions | [BuildVersion](#BuildVersion)? |  yes  |  |
 | latestAvailableVersionName | String? |  yes  |  |

---


 
 
 #### [BuildVersion](#BuildVersion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | platformType | String? |  yes  |  |
 | buildStatus | String? |  yes  |  |
 | versionName | String? |  yes  |  |
 | versionCode | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [AppSupportedCurrency](#AppSupportedCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | supportedCurrency | [String]? |  yes  |  |
 | application | String? |  yes  |  |
 | defaultCurrency | [DefaultCurrency](#DefaultCurrency)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [DefaultCurrency](#DefaultCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ref | String? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [CurrencyConfig](#CurrencyConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | code | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | decimalDigits | Int? |  yes  |  |
 | symbol | String? |  yes  |  |

---


 
 
 #### [DomainAdd](#DomainAdd)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Full domain name |

---


 
 
 #### [DomainAddRequest](#DomainAddRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | [DomainAdd](#DomainAdd)? |  yes  |  |

---


 
 
 #### [DomainsResponse](#DomainsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [[Domain](#Domain)]? |  yes  |  |

---


 
 
 #### [UpdateDomain](#UpdateDomain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |

---


 
 
 #### [UpdateDomainTypeRequest](#UpdateDomainTypeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | [UpdateDomain](#UpdateDomain)? |  yes  |  |
 | action | String? |  yes  |  |

---


 
 
 #### [DomainStatusRequest](#DomainStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domainUrl | String? |  yes  | Domain url |

---


 
 
 #### [DomainStatus](#DomainStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | status | Bool? |  yes  |  |

---


 
 
 #### [DomainStatusResponse](#DomainStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | connected | Bool? |  yes  |  |
 | status | [[DomainStatus](#DomainStatus)]? |  yes  |  |

---


 
 
 #### [DomainSuggestionsRequest](#DomainSuggestionsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domainUrl | String? |  yes  | Domain url |
 | custom | Bool? |  yes  | Get suggestion for custom domains or fynd domains |

---


 
 
 #### [DomainSuggestion](#DomainSuggestion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | unsupported | Bool? |  yes  | Whether TLD domain is supported or not |
 | isAvailable | Bool |  no  |  |
 | price | Double? |  yes  | Price for purchasing a custom domain. Not present for fynd domain |
 | currency | String? |  yes  | Custom domain price currency. Not present for fynd domain |

---


 
 
 #### [DomainSuggestionsResponse](#DomainSuggestionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [[DomainSuggestion](#DomainSuggestion)]? |  yes  | Domain url |

---


 
 
 #### [GetIntegrationsOptInsResponse](#GetIntegrationsOptInsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[IntegrationOptIn](#IntegrationOptIn)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [IntegrationOptIn](#IntegrationOptIn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | validators | [Validators](#Validators)? |  yes  |  |
 | description | String? |  yes  |  |
 | descriptionHtml | String? |  yes  |  |
 | constants | String? |  yes  |  |
 | companies | [[String: Any]]? |  yes  |  |
 | support | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | meta | [[IntegrationMeta](#IntegrationMeta)]? |  yes  |  |
 | icon | String? |  yes  |  |
 | owner | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | token | String? |  yes  |  |
 | secret | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Validators](#Validators)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company | [CompanyValidator](#CompanyValidator)? |  yes  |  |
 | store | [StoreValidator](#StoreValidator)? |  yes  |  |
 | inventory | [InventoryValidator](#InventoryValidator)? |  yes  |  |
 | order | [OrderValidator](#OrderValidator)? |  yes  |  |

---


 
 
 #### [CompanyValidator](#CompanyValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)]? |  yes  |  |
 | browserScript | String? |  yes  |  |

---


 
 
 #### [JsonSchema](#JsonSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | key | String? |  yes  |  |
 | type | String? |  yes  |  |
 | tooltip | String? |  yes  |  |

---


 
 
 #### [StoreValidator](#StoreValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)]? |  yes  |  |
 | browserScript | String? |  yes  |  |

---


 
 
 #### [InventoryValidator](#InventoryValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)]? |  yes  |  |
 | browserScript | String? |  yes  |  |

---


 
 
 #### [OrderValidator](#OrderValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)]? |  yes  |  |
 | browserScript | String? |  yes  |  |

---


 
 
 #### [IntegrationMeta](#IntegrationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPublic | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [Integration](#Integration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | validators | [Validators](#Validators)? |  yes  |  |
 | description | String? |  yes  |  |
 | descriptionHtml | String? |  yes  |  |
 | constants | [String: Any]? |  yes  |  |
 | companies | [[String: Any]]? |  yes  |  |
 | support | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | meta | [IntegrationMeta](#IntegrationMeta)? |  yes  |  |
 | icon | String? |  yes  |  |
 | owner | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | token | String? |  yes  |  |
 | secret | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [IntegrationConfigResponse](#IntegrationConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[IntegrationLevel](#IntegrationLevel)]? |  yes  |  |

---


 
 
 #### [IntegrationLevel](#IntegrationLevel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opted | Bool? |  yes  |  |
 | permissions | [[String: Any]]? |  yes  |  |
 | lastPatch | [[LastPatch](#LastPatch)]? |  yes  |  |
 | id | String? |  yes  |  |
 | integration | String? |  yes  |  |
 | level | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | meta | [[String: Any]]? |  yes  |  |
 | token | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [UpdateIntegrationLevelRequest](#UpdateIntegrationLevelRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[IntegrationLevel](#IntegrationLevel)]? |  yes  |  |

---


 
 
 #### [OptedStoreIntegration](#OptedStoreIntegration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otherOpted | Bool? |  yes  |  |
 | otherIntegration | [IntegrationOptIn](#IntegrationOptIn)? |  yes  |  |
 | otherEntity | [OtherEntity](#OtherEntity)? |  yes  |  |

---


 
 
 #### [OtherEntity](#OtherEntity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opted | Bool? |  yes  |  |
 | permissions | [String]? |  yes  |  |
 | lastPatch | [[LastPatch](#LastPatch)]? |  yes  |  |
 | id | String? |  yes  |  |
 | integration | String? |  yes  |  |
 | level | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | data | [OtherEntityData](#OtherEntityData)? |  yes  |  |
 | meta | [[String: Any]]? |  yes  |  |
 | token | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [LastPatch](#LastPatch)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | op | String? |  yes  |  |
 | path | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [OtherEntityData](#OtherEntityData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleIdentifier | String? |  yes  |  |

---


 
 
 #### [App](#App)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | String? |  yes  | Current company id |
 | channelType | String? |  yes  |  |
 | auth | [ApplicationAuth](#ApplicationAuth)? |  yes  |  |
 | name | String? |  yes  | User friendly name for application |
 | desc | String? |  yes  | Basic description of application |

---


 
 
 #### [AppInventory](#AppInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [InventoryBrandRule](#InventoryBrandRule)? |  yes  |  |
 | store | [InventoryStoreRule](#InventoryStoreRule)? |  yes  |  |
 | image | [String]? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | outOfStock | Bool? |  yes  |  |
 | payment | [InventoryPaymentConfig](#InventoryPaymentConfig)? |  yes  |  |
 | articleAssignment | [InventoryArticleAssignment](#InventoryArticleAssignment)? |  yes  |  |

---


 
 
 #### [AppDomain](#AppDomain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |

---


 
 
 #### [CompaniesResponse](#CompaniesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [AppInventoryCompanies](#AppInventoryCompanies)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [AppInventoryCompanies](#AppInventoryCompanies)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | companyType | String? |  yes  |  |

---


 
 
 #### [StoresResponse](#StoresResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [AppInventoryStores](#AppInventoryStores)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [AppInventoryStores](#AppInventoryStores)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | storeType | String? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [FilterOrderingStoreRequest](#FilterOrderingStoreRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allStores | Bool? |  yes  |  |
 | deployedStores | [Int]? |  yes  |  |
 | q | String? |  yes  |  |

---


 
 
 #### [DeploymentMeta](#DeploymentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deployedStores | [Int]? |  yes  |  |
 | allStores | Bool? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | id | String? |  yes  |  |
 | app | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [OrderingStoreConfig](#OrderingStoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deploymentMeta | [DeploymentMeta](#DeploymentMeta)? |  yes  |  |

---


 
 
 #### [OtherSellerCompany](#OtherSellerCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [OtherSellerApplication](#OtherSellerApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | id | String? |  yes  |  |
 | domain | String? |  yes  |  |
 | company | [OtherSellerCompany](#OtherSellerCompany)? |  yes  |  |
 | optType | String? |  yes  |  |

---


 
 
 #### [OtherSellerApplications](#OtherSellerApplications)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OtherSellerApplication](#OtherSellerApplication)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [OptedApplicationResponse](#OptedApplicationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | id | String? |  yes  |  |
 | domain | String? |  yes  |  |
 | company | [OptedCompany](#OptedCompany)? |  yes  |  |
 | optedInventory | [OptedInventory](#OptedInventory)? |  yes  |  |
 | optOutInventory | [OptOutInventory](#OptOutInventory)? |  yes  |  |

---


 
 
 #### [OptedCompany](#OptedCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [OptedInventory](#OptedInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | optType | [OptType](#OptType)? |  yes  |  |
 | items | [String: Any]? |  yes  |  |

---


 
 
 #### [OptType](#OptType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | display | String? |  yes  |  |

---


 
 
 #### [OptedStore](#OptedStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | id | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | address | [OptedStoreAddress](#OptedStoreAddress)? |  yes  |  |
 | displayName | String? |  yes  |  |
 | storeType | String? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [OptOutInventory](#OptOutInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [Int] |  no  |  |
 | company | [Int] |  no  |  |

---


 
 
 #### [TokenResponse](#TokenResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tokens | [Tokens](#Tokens)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Tokens](#Tokens)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firebase | [Firebase](#Firebase)? |  yes  |  |
 | moengage | [Moengage](#Moengage)? |  yes  |  |
 | segment | [Segment](#Segment)? |  yes  |  |
 | gtm | [Gtm](#Gtm)? |  yes  |  |
 | freshchat | [Freshchat](#Freshchat)? |  yes  |  |
 | safetynet | [Safetynet](#Safetynet)? |  yes  |  |
 | fyndRewards | [FyndRewards](#FyndRewards)? |  yes  |  |
 | googleMap | [GoogleMap](#GoogleMap)? |  yes  |  |

---


 
 
 #### [Firebase](#Firebase)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [Credentials](#Credentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [Credentials](#Credentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ios | [Ios](#Ios)? |  yes  |  |
 | android | [Android](#Android)? |  yes  |  |
 | projectId | String? |  yes  |  |
 | gcmSenderId | String? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [Ios](#Ios)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  |  |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [Android](#Android)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  |  |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [Moengage](#Moengage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [MoengageCredentials](#MoengageCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [MoengageCredentials](#MoengageCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |

---


 
 
 #### [Segment](#Segment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [SegmentCredentials](#SegmentCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [SegmentCredentials](#SegmentCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | writeKey | String? |  yes  |  |

---


 
 
 #### [Gtm](#Gtm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [GtmCredentials](#GtmCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [GtmCredentials](#GtmCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [Freshchat](#Freshchat)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [FreshchatCredentials](#FreshchatCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [FreshchatCredentials](#FreshchatCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |
 | appKey | String? |  yes  |  |
 | webToken | String? |  yes  |  |

---


 
 
 #### [Safetynet](#Safetynet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [SafetynetCredentials](#SafetynetCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [SafetynetCredentials](#SafetynetCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [FyndRewards](#FyndRewards)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [FyndRewardsCredentials](#FyndRewardsCredentials)? |  yes  |  |

---


 
 
 #### [FyndRewardsCredentials](#FyndRewardsCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | publicKey | String? |  yes  |  |

---


 
 
 #### [GoogleMap](#GoogleMap)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [GoogleMapCredentials](#GoogleMapCredentials)? |  yes  |  |

---


 
 
 #### [GoogleMapCredentials](#GoogleMapCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [RewardPointsConfig](#RewardPointsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credit | [Credit](#Credit)? |  yes  |  |
 | debit | [Debit](#Debit)? |  yes  |  |

---


 
 
 #### [Credit](#Credit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [Debit](#Debit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | autoApply | Bool? |  yes  |  |
 | strategyChannel | String? |  yes  |  |

---


 
 
 #### [ProductDetailFeature](#ProductDetailFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | similar | [String]? |  yes  |  |
 | sellerSelection | Bool? |  yes  |  |
 | updateProductMeta | Bool? |  yes  |  |
 | requestProduct | Bool? |  yes  |  |

---


 
 
 #### [LaunchPage](#LaunchPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageType | String? |  yes  |  |
 | params | [String: Any]? |  yes  |  |
 | query | [String: Any]? |  yes  |  |

---


 
 
 #### [LandingPageFeature](#LandingPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | launchPage | [LaunchPage](#LaunchPage)? |  yes  |  |
 | continueAsGuest | Bool? |  yes  |  |
 | loginBtnText | String? |  yes  |  |
 | showDomainTextbox | Bool? |  yes  |  |
 | showRegisterBtn | Bool? |  yes  |  |

---


 
 
 #### [RegistrationPageFeature](#RegistrationPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | askStoreAddress | Bool? |  yes  |  |

---


 
 
 #### [AppFeature](#AppFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productDetail | [ProductDetailFeature](#ProductDetailFeature)? |  yes  |  |
 | landingPage | [LandingPageFeature](#LandingPageFeature)? |  yes  |  |
 | registrationPage | [RegistrationPageFeature](#RegistrationPageFeature)? |  yes  |  |
 | homePage | [HomePageFeature](#HomePageFeature)? |  yes  |  |
 | common | [CommonFeature](#CommonFeature)? |  yes  |  |
 | cart | [CartFeature](#CartFeature)? |  yes  |  |
 | qr | [QrFeature](#QrFeature)? |  yes  |  |
 | pcr | [PcrFeature](#PcrFeature)? |  yes  |  |
 | order | [OrderFeature](#OrderFeature)? |  yes  |  |
 | id | String? |  yes  |  |
 | app | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [HomePageFeature](#HomePageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderProcessing | Bool? |  yes  |  |

---


 
 
 #### [CommonFeature](#CommonFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | communicationOptinDialog | [CommunicationOptinDialogFeature](#CommunicationOptinDialogFeature)? |  yes  |  |
 | deploymentStoreSelection | [DeploymentStoreSelectionFeature](#DeploymentStoreSelectionFeature)? |  yes  |  |
 | listingPrice | [ListingPriceFeature](#ListingPriceFeature)? |  yes  |  |
 | currency | [CurrencyFeature](#CurrencyFeature)? |  yes  |  |
 | revenueEngine | [RevenueEngineFeature](#RevenueEngineFeature)? |  yes  |  |
 | feedback | [FeedbackFeature](#FeedbackFeature)? |  yes  |  |
 | compareProducts | [CompareProductsFeature](#CompareProductsFeature)? |  yes  |  |
 | rewardPoints | [RewardPointsConfig](#RewardPointsConfig)? |  yes  |  |

---


 
 
 #### [CommunicationOptinDialogFeature](#CommunicationOptinDialogFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | visibility | Bool? |  yes  |  |

---


 
 
 #### [DeploymentStoreSelectionFeature](#DeploymentStoreSelectionFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ListingPriceFeature](#ListingPriceFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |

---


 
 
 #### [CurrencyFeature](#CurrencyFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | defaultCurrency | String? |  yes  |  |

---


 
 
 #### [RevenueEngineFeature](#RevenueEngineFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [FeedbackFeature](#FeedbackFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [CompareProductsFeature](#CompareProductsFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [CartFeature](#CartFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstInput | Bool? |  yes  |  |
 | staffSelection | Bool? |  yes  |  |
 | placingForCustomer | Bool? |  yes  |  |
 | googleMap | Bool? |  yes  |  |
 | revenueEngineCoupon | Bool? |  yes  |  |

---


 
 
 #### [QrFeature](#QrFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | Bool? |  yes  |  |
 | products | Bool? |  yes  |  |
 | collections | Bool? |  yes  |  |

---


 
 
 #### [PcrFeature](#PcrFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | staffSelection | Bool? |  yes  |  |

---


 
 
 #### [OrderFeature](#OrderFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | buyAgain | Bool? |  yes  |  |

---


 
 
 #### [AppFeatureRequest](#AppFeatureRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feature | [AppFeature](#AppFeature)? |  yes  |  |

---


 
 
 #### [AppFeatureResponse](#AppFeatureResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feature | [AppFeature](#AppFeature)? |  yes  |  |

---


 
 
 #### [Currency](#Currency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | code | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | decimalDigits | Int? |  yes  |  |
 | symbol | String? |  yes  |  |

---


 
 
 #### [Domain](#Domain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool? |  yes  |  |
 | isPrimary | Bool? |  yes  |  |
 | isShortlink | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ApplicationWebsite](#ApplicationWebsite)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | basepath | String? |  yes  |  |

---


 
 
 #### [ApplicationCors](#ApplicationCors)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [String]? |  yes  |  |

---


 
 
 #### [ApplicationAuth](#ApplicationAuth)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [ApplicationRedirections](#ApplicationRedirections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | redirectFrom | String? |  yes  |  |
 | redirectTo | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ApplicationMeta](#ApplicationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [SecureUrl](#SecureUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [Application](#Application)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | website | [ApplicationWebsite](#ApplicationWebsite)? |  yes  |  |
 | cors | [ApplicationCors](#ApplicationCors)? |  yes  |  |
 | auth | [ApplicationAuth](#ApplicationAuth)? |  yes  |  |
 | description | String? |  yes  |  |
 | channelType | String? |  yes  |  |
 | cacheTtl | Int? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | owner | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | token | String? |  yes  |  |
 | redirections | [[ApplicationRedirections](#ApplicationRedirections)]? |  yes  |  |
 | meta | [[ApplicationMeta](#ApplicationMeta)]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | banner | [SecureUrl](#SecureUrl)? |  yes  |  |
 | logo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | favicon | [SecureUrl](#SecureUrl)? |  yes  |  |
 | domains | [[Domain](#Domain)]? |  yes  |  |
 | appType | String? |  yes  |  |
 | mobileLogo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | domain | [Domain](#Domain)? |  yes  |  |

---


 
 
 #### [NotFound](#NotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [UnhandledError](#UnhandledError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [InvalidPayloadRequest](#InvalidPayloadRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [SuccessMessageResponse](#SuccessMessageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [InventoryBrandRule](#InventoryBrandRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  | Whether enable all or explicitly few brands as inventory |
 | brands | [Int]? |  yes  | Brand uids in case of explicit criteria |

---


 
 
 #### [StoreCriteriaRule](#StoreCriteriaRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companies | [Int]? |  yes  | list of company uids |
 | brands | [Int]? |  yes  | list of brand uids |

---


 
 
 #### [InventoryStoreRule](#InventoryStoreRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  | Whether enable all or explicitly few stores or use filter of brands and company as inventory stores |
 | rules | [[StoreCriteriaRule](#StoreCriteriaRule)]? |  yes  | List of rules with company and brands uids. Used when critera is `filter` |
 | stores | [Int]? |  yes  | List of store uids. Used when critera is `explicit` |

---


 
 
 #### [InventoryPaymentConfig](#InventoryPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modeOfPayment | String? |  yes  |  |
 | source | String? |  yes  |  |

---


 
 
 #### [StorePriorityRule](#StorePriorityRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | storetypeOrder | [String]? |  yes  |  |

---


 
 
 #### [ArticleAssignmentRule](#ArticleAssignmentRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storePriority | [StorePriorityRule](#StorePriorityRule)? |  yes  |  |

---


 
 
 #### [InventoryArticleAssignment](#InventoryArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | postOrderReassignment | Bool? |  yes  |  |
 | rules | [ArticleAssignmentRule](#ArticleAssignmentRule)? |  yes  |  |

---


 
 
 #### [CompanyAboutAddress](#CompanyAboutAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int? |  yes  |  |
 | address1 | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | state | String? |  yes  |  |
 | country | String? |  yes  |  |
 | addressType | String? |  yes  |  |

---


 
 
 #### [UserEmail](#UserEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [UserPhoneNumber](#UserPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | countryCode | Int? |  yes  |  |
 | phone | String? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |

---


 
 
 #### [ApplicationInformation](#ApplicationInformation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [InformationAddress](#InformationAddress)? |  yes  |  |
 | support | [InformationSupport](#InformationSupport)? |  yes  |  |
 | socialLinks | [SocialLinks](#SocialLinks)? |  yes  |  |
 | links | [Links](#Links)? |  yes  |  |
 | copyrightText | String? |  yes  |  |
 | id | String? |  yes  |  |
 | businessHighlights | [BusinessHighlights](#BusinessHighlights)? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [InformationAddress](#InformationAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | loc | String? |  yes  |  |
 | addressLine | [String]? |  yes  |  |
 | phone | [InformationPhone](#InformationPhone)? |  yes  |  |
 | city | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | Int? |  yes  |  |

---


 
 
 #### [InformationPhone](#InformationPhone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | number | String? |  yes  |  |

---


 
 
 #### [InformationSupport](#InformationSupport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [String]? |  yes  |  |
 | email | [String]? |  yes  |  |
 | timing | String? |  yes  |  |

---


 
 
 #### [SocialLinks](#SocialLinks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [FacebookLink](#FacebookLink)? |  yes  |  |
 | instagram | [InstagramLink](#InstagramLink)? |  yes  |  |
 | twitter | [TwitterLink](#TwitterLink)? |  yes  |  |
 | pinterest | [PinterestLink](#PinterestLink)? |  yes  |  |
 | googlePlus | [GooglePlusLink](#GooglePlusLink)? |  yes  |  |
 | youtube | [YoutubeLink](#YoutubeLink)? |  yes  |  |
 | linkedIn | [LinkedInLink](#LinkedInLink)? |  yes  |  |
 | vimeo | [VimeoLink](#VimeoLink)? |  yes  |  |
 | blogLink | [BlogLink](#BlogLink)? |  yes  |  |

---


 
 
 #### [FacebookLink](#FacebookLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [InstagramLink](#InstagramLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [TwitterLink](#TwitterLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [PinterestLink](#PinterestLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [GooglePlusLink](#GooglePlusLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [YoutubeLink](#YoutubeLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [LinkedInLink](#LinkedInLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [VimeoLink](#VimeoLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [BlogLink](#BlogLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [Links](#Links)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [BusinessHighlights](#BusinessHighlights)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | subTitle | String? |  yes  |  |

---


 
 
 #### [ApplicationDetail](#ApplicationDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | logo | [SecureUrl](#SecureUrl) |  no  |  |
 | mobileLogo | [SecureUrl](#SecureUrl) |  no  |  |
 | favicon | [SecureUrl](#SecureUrl) |  no  |  |
 | banner | [SecureUrl](#SecureUrl) |  no  |  |
 | domain | [Domain](#Domain)? |  yes  |  |
 | domains | [[Domain](#Domain)]? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [CurrenciesResponse](#CurrenciesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Currency](#Currency)]? |  yes  |  |

---


 
 
 #### [AppCurrencyResponse](#AppCurrencyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | defaultCurrency | [DefaultCurrency](#DefaultCurrency)? |  yes  |  |
 | supportedCurrency | [[Currency](#Currency)]? |  yes  |  |

---


 
 
 #### [StoreLatLong](#StoreLatLong)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | coordinates | [Double]? |  yes  |  |

---


 
 
 #### [OptedStoreAddress](#OptedStoreAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | latLong | [StoreLatLong](#StoreLatLong)? |  yes  |  |
 | address2 | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | country | String? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [OrderingStore](#OrderingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [OptedStoreAddress](#OptedStoreAddress)? |  yes  |  |
 | id | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | storeType | String? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [OrderingStores](#OrderingStores)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[OrderingStore](#OrderingStore)]? |  yes  |  |
 | deployedStores | [Int]? |  yes  |  |
 | allStores | Bool? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | id | String? |  yes  |  |
 | app | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [OrderingStoresResponse](#OrderingStoresResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[OrderingStore](#OrderingStore)]? |  yes  |  |

---



