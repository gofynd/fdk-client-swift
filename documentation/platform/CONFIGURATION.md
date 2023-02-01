



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
* [getAppSupportedCurrency](#getappsupportedcurrency)
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
Get configuration of latest mobile build




```swift
client.application("<APPLICATION_ID>").configuration.getBuildConfig(platformType: platformType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platformType | String | yes | The device platform for which the mobile app is built, e.g. android, ios. |  



Fetch latest build configuration, such as app name, landing page image, splash image used in a mobile build.

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
Update the configuration for next mobile build




```swift
client.application("<APPLICATION_ID>").configuration.updateBuildConfig(platformType: platformType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platformType | String | yes | The device platform for which the mobile app is built, e.g. android, ios. |  
| body | MobileAppConfigRequest | yes | Request body |


Modify the existing build configuration, such as app name, landing page image, splash image used in a mobile build.

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
Get details of previous mobile builds




```swift
client.application("<APPLICATION_ID>").configuration.getPreviousVersions(platformType: platformType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platformType | String | yes | The device platform for which the mobile app is built, e.g. android, ios. |  



Fetch version details of the app, this includes the build status, build date, version name, latest version, and a lot more.

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
Get the sales channel configuration and features




```swift
client.application("<APPLICATION_ID>").configuration.getAppFeatures() { (response, error) in
    // Use response
}
```






Shows feature configuration of sales channel websites, such as product detail, landing page, options in the login/registration screen, home page, listing page, reward points, communication opt-in, cart options and many more.

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
Update the sales channel configuration and features




```swift
client.application("<APPLICATION_ID>").configuration.updateAppFeatures(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AppFeatureRequest | yes | Request body |


Modify the feature configuration of sales channel websites, such as product detail, landing page, options in the login/registration screen, home page, listing page, reward points, communication opt-in, cart options and many more.

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
Get sales channel details




```swift
client.application("<APPLICATION_ID>").configuration.getAppBasicDetails() { (response, error) in
    // Use response
}
```






Shows basic sales channel details like name, description, logo, domain, company ID, and other related information.

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
Update sales channel details




```swift
client.application("<APPLICATION_ID>").configuration.updateAppBasicDetails(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ApplicationDetail | yes | Request body |


Modify sales channel details like name, description, logo, domain, company ID, and other related information.

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
Get current information of the sales channel




```swift
client.application("<APPLICATION_ID>").configuration.getAppContactInfo() { (response, error) in
    // Use response
}
```






Fetch data such as social links, copyright text, business highlights, address and contact information of the company/seller/brand operating the application.

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
          "number": "9988998899"
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
Save or update current information of the sales channel




```swift
client.application("<APPLICATION_ID>").configuration.updateAppContactInfo(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ApplicationInformation | yes | Request body |


Modify the social links, copyright text, business highlights, address and contact information of the company/seller/brand operating the application.

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
        "number": "9988998899"
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
Get social tokens for the sales channel




```swift
client.application("<APPLICATION_ID>").configuration.getAppApiTokens() { (response, error) in
    // Use response
}
```






Use this API to retrieve the tokens used for integrating Firebase, MoEngage, Segment, GTM, Freshchat, Safetynet, Google Map, Google, and Facebook auth. **Note** - Token values are encrypted with AES encryption using a secret key.

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
Add or update social tokens for the sales channel




```swift
client.application("<APPLICATION_ID>").configuration.updateAppApiTokens(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | TokenResponse | yes | Request body |


Use this API to add or edit the tokens used for integrating Firebase, MoEngage, Segment, GTM, Freshchat, Safetynet, Google Map, Google and Facebook auth.

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
Get companies enabled in the sales channel inventory




```swift
client.application("<APPLICATION_ID>").configuration.getAppCompanies(uid: uid, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uid | Int? | no | UID of companies to be fetched |   
| pageNo | Int? | no | The current page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Fetch info of all the companies (e.g. name, uid, and company type) whose inventory is fetched into the current sales channel application

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
Get stores enabled in the sales channel inventory




```swift
client.application("<APPLICATION_ID>").configuration.getAppStores(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The current page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Fetch info of all the companies (e.g. uid, name, display name, store type, store code and company id) whose inventory is fetched into the current sales channel application

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
Get sales channel configuration




```swift
client.application("<APPLICATION_ID>").configuration.getInventoryConfig() { (response, error) in
    // Use response
}
```






Use this API to fetch configuration details of authentication, inventory, article assignment rules, reward points, cart, payment, order, logistics, etc.

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
    "bulk_coupons": true,
    "revenue_engine_coupon": false
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
Update sales channel configuration




```swift
client.application("<APPLICATION_ID>").configuration.updateInventoryConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ApplicationInventory | yes | Request body |


Modify the configuration details of authentication, inventory, article assignment rules, reward points, cart, payment, order, logistics, etc.

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
    "bulk_coupons": true,
    "revenue_engine_coupon": false
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
Partially update sales channel configuration




```swift
client.application("<APPLICATION_ID>").configuration.partiallyUpdateInventoryConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AppInventoryPartialUpdate | yes | Request body |


Partially update the configuration details of authentication, inventory, article assignment rules, reward points, cart, payment, order, logistics, etc.

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
    "bulk_coupons": true,
    "revenue_engine_coupon": false
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
Get currencies supported in the application




```swift
client.application("<APPLICATION_ID>").configuration.getAppCurrencyConfig() { (response, error) in
    // Use response
}
```






Get a list of currencies supported in the current sales channel. Moreover, get the cuurency that is set as the default one in the application.

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
Update initial sales channel supported currency




```swift
client.application("<APPLICATION_ID>").configuration.updateAppCurrencyConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AppSupportedCurrency | yes | Request body |


Use this API to add and edit the currencies supported in the application. Initially, INR will be enabled by default.

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


#### getAppSupportedCurrency
Get currencies enabled in the application




```swift
client.application("<APPLICATION_ID>").configuration.getAppSupportedCurrency() { (response, error) in
    // Use response
}
```






Use this API to get a list of currencies allowed in the current application. Moreover, get the name, code, symbol, and the decimal digits of the currencies.

*Returned Response:*




[AppCurrencyResponse](#AppCurrencyResponse)

Success. Check the example shown below or refer `AppCurrencyResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "application": "000000000000000000000001",
  "default_currency": {
    "ref": "5ecf6122d953d4242c044907",
    "code": "INR"
  },
  "supported_currency": [
    {
      "_id": "5ecf6122d953d4242c044907",
      "is_active": true,
      "name": "Indian Rupee",
      "code": "INR",
      "decimal_digits": 2,
      "symbol": "₹",
      "created_at": "2020-05-28T06:58:42.532Z",
      "modified_at": "2021-04-05T16:44:14.358Z"
    }
  ]
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
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  
| body | FilterOrderingStoreRequest | yes | Request body |


Use this API to use filters and retrieve the details of the deployment stores (the selling locations where the application will be utilised for placing orders).

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


Use this API to edit the details of the deployment stores (the selling locations where the application will be utilised for placing orders)

*Returned Response:*




[DeploymentMeta](#DeploymentMeta)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "deployment_meta": {
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
  },
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
Fetch all the domains added to an  application (sales channel website), including pre-defined domain (free domain) or custom domain (owned by the brand). Know the verification status of each domain name, and find out which one is the primary domain, short link domain, or both.




```swift
client.application("<APPLICATION_ID>").configuration.getDomains() { (response, error) in
    // Use response
}
```






Get list of domains

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
      "is_shortlink": false,
      "is_predefined": true
    },
    {
      "verified": true,
      "is_primary": false,
      "is_shortlink": true,
      "_id": "5f0858c5f86e00cd42dccc8d",
      "name": "jd.hostx0.de",
      "is_predefined": true
    },
    {
      "verified": true,
      "is_primary": false,
      "is_shortlink": false,
      "_id": "6048497e87f5730423149190",
      "name": "testdm.hostx0.de",
      "is_predefined": true
    }
  ]
}
```
</details>









---


#### addDomain
Add new domain to current sales channel




```swift
client.application("<APPLICATION_ID>").configuration.addDomain(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DomainAddRequest | yes | Request body |


Add a new domain to current sales channel, including pre-defined domain (free domain) or custom domain (owned by the brand)

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
Remove attached domain from current sales channel




```swift
client.application("<APPLICATION_ID>").configuration.removeDomainById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | The unique identifier (24-digit Mongo Object ID) of the domain |  



Delete a domain (secondary or shortlink domain) added to a sales channel. It will disable user's access to website, shared links, and other features associated with this domain.

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
Change the type of domain in the current sales channel




```swift
client.application("<APPLICATION_ID>").configuration.changeDomainType(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateDomainTypeRequest | yes | Request body |


Primary domain is used as the URL of your website. Short link domain is comparatively smaller and used while generating short links. Use this API to change a domain to either Primary or a Shortlink domain.

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
Get the status of connected domain




```swift
client.application("<APPLICATION_ID>").configuration.getDomainStatus(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DomainStatusRequest | yes | Request body |


Shows if the A records and TXT records of the domain correctly points to appropriate IP on Fynd Servers.

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
Create a new sales channel




```swift
client.configuration.createApplication(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateApplicationRequest | yes | Request body |


Applications are sales channel websites which can be configured, personalized and customized. Use this API to create a new application in the current company.

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
Get list of registered sales channels under company




```swift
client.configuration.getApplications(pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| q | String? | no | Search string to search saleschannel by name |  



Applications are sales channel websites which can be configured, personalized and customised. Use this API to fetch a list of applications created within a company.

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
Get sales channel data by ID




```swift
client.application("<APPLICATION_ID>").configuration.getApplicationById() { (response, error) in
    // Use response
}
```






Use application ID to get the current sales channel details which includes channel name, description, banner, logo, favicon, domain details, token, etc.

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






Use this API to get a list of currencies allowed in the company. Moreover, get the name, code, symbol, and the decimal digits of the currencies.

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
Check domain availability before linking to application




```swift
client.configuration.getDomainAvailibility(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DomainSuggestionsRequest | yes | Request body |


Use this API to check the domain availability before linking it to application. Also sends domain suggestions that are similar to the queried domain. Note - Custom domain search is currently powered by GoDaddy provider.

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
Get integration data by its ID




```swift
client.configuration.getIntegrationById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | Int | yes | Integration id |  



Use this API to fetch the details of an integration (such as Ginesys, SAP, etc.) using its ID

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
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Use this API to get a list of all available integrations in a company

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
| level | String | yes | store or company |   
| uid | Int | yes | Unique identifier of the selected integration level. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Use this API to get the store-level/company-level integrations configured in a company

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
Get integration config at a particular level (store/company)




```swift
client.configuration.getIntegrationByLevelId(id: id, level: level, uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Integration ID (24-digit Mongo Object ID) |   
| level | String | yes | Integration level, `store` or `company` |   
| uid | Int | yes | Unique identifier of integration level (store/company) |  



Use this API to get the configuration details of an integration such as token, permissions, level, opted value, uid, meta, location ID, etc. at a particular level (store/company).

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
Update integration level by store UID




```swift
client.configuration.updateLevelUidIntegration(id: id, level: level, uid: uid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Integration ID (24-digit Mongo Object ID) |   
| level | String | yes | Integration level, `store` or `company` |   
| uid | Int | yes | Unique identifier of integration level (store/company) |  
| body | IntegrationLevel | yes | Request body |


Update the level of integration by store UID

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
Check active integration at store




```swift
client.configuration.getLevelActiveIntegrations(id: id, level: level, uid: uid, permission: permission) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Integration ID (24-digit Mongo Object ID) |   
| level | String | yes | Integration level, `store` or `company` |   
| uid | Int | yes | Unique identifier of integration level (store/company) |   
| permission | String? | no | Check opt-in for specific integration permissions |  



Use this API to check if a store is already opted-in for any integration

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
Update a store level integration you opted




```swift
client.configuration.updateLevelIntegration(id: id, level: level, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Integration ID (24-digit Mongo Object ID) |   
| level | String | yes | Integration level, `store` or `company` |  
| body | UpdateIntegrationLevelRequest | yes | Request body |


Use this API to update the configuration details of an integration such as token, permissions, level, opted value, uid, meta, location ID, etc. at a particular level (store/company).

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
Get brands by company.




```swift
client.configuration.getBrandsByCompany(q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | Search text for brand name |  



Use this API to get all the brands added in a company. Get all the brand names, along with URLs of their logo, banner, and portrait image.

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
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  
| body | CompanyByBrandsRequest | yes | Request body |


Use this API to get a list of companies by the brands they deal

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
Get stores by brand uids for the current company




```swift
client.configuration.getStoreByBrands(pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  
| body | StoreByBrandsRequest | yes | Request body |


Use this API to get a list of selling locations (stores) by the brands they deal. Store has information about store name, store type, store code, store address, and company detail.

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
Get other seller sales channels




```swift
client.configuration.getOtherSellerApplications(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Use this API to fetch all other seller applications that were not created within the current company. but have opted for the current company's inventory

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
Get other seller's sales channel by ID




```swift
client.configuration.getOtherSellerApplicationById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Application Id |  



Use application ID to fetch details of a seller application that was not created within the current company. but has opted for the current company's inventory

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
Opt-out company or store from other seller application




```swift
client.configuration.optOutFromApplication(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Alphanumeric ID allotted to an application (sales channel website) created within a business account. |  
| body | OptOutInventory | yes | Request body |


Use this API to opt-out your company or store from other seller application. The specific seller application will no longer fetch inventory from your company or store.

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
 | business | String? |  yes  | Indicates the business type for sales channel e.g. retail or wholesale |
 | commsEnabled | Bool? |  yes  | Shows communication(comms) is enabled or not for sales channel inventory |
 | platforms | [String]? |  yes  |  |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the sales channel inventory |
 | loyaltyPoints | [LoyaltyPointsConfig](#LoyaltyPointsConfig)? |  yes  |  |
 | app | String? |  yes  | Current sales channel ID |
 | createdAt | String? |  yes  | ISO 8601 timestamp of sales channel inventory creation |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of sales channel inventory updation |
 | modifiedBy | String? |  yes  | User ID of the person who made the latest changes in the sales channel inventory |

---


 
 
 #### [AppInventoryConfig](#AppInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [InventoryBrand](#InventoryBrand)? |  yes  |  |
 | store | [InventoryStore](#InventoryStore)? |  yes  |  |
 | category | [InventoryCategory](#InventoryCategory)? |  yes  |  |
 | price | [InventoryPrice](#InventoryPrice)? |  yes  |  |
 | discount | [InventoryDiscount](#InventoryDiscount)? |  yes  |  |
 | outOfStock | Bool? |  yes  | Indicates whether out of stock products are allowed to show up on the website |
 | onlyVerifiedProducts | Bool? |  yes  | Show only verified products (the ones whose data has been verified by the admin) |
 | franchiseEnabled | Bool? |  yes  | Allow other businesses (companies) to consume the current sales channel's inventory and sell products |
 | excludeCategory | [[String: Any]]? |  yes  | List of excluded brands category |
 | image | [String]? |  yes  |  |
 | companyStore | [[String: Any]]? |  yes  | List of selling locations whose inventory is available to the sales channel for displaying on the website |

---


 
 
 #### [InventoryBrand](#InventoryBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  | All brands or specific (explicit) brands to be shown on the website |
 | brands | [[String: Any]]? |  yes  | List of brands |

---


 
 
 #### [InventoryStore](#InventoryStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  | All stores or specific (explicit) stores to be shown on the website |
 | stores | [[String: Any]]? |  yes  | List of stores |
 | rules | [AppStoreRules](#AppStoreRules)? |  yes  |  |

---


 
 
 #### [AppStoreRules](#AppStoreRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companies | [Int]? |  yes  | List of companies whose inventory is available to the sales channel for displaying on the website |
 | brands | [[String: Any]]? |  yes  | List of brands whose products will be shown on the website |

---


 
 
 #### [InventoryCategory](#InventoryCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  |  |
 | categories | [[String: Any]]? |  yes  | List of categories whose products will be shown on the website |

---


 
 
 #### [InventoryPrice](#InventoryPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Double? |  yes  | Minimum inventory price |
 | max | Double? |  yes  | Maximum inventory price |

---


 
 
 #### [InventoryDiscount](#InventoryDiscount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Double? |  yes  | Minimum inventory discount |
 | max | Double? |  yes  | Maximum inventory discount |

---


 
 
 #### [AuthenticationConfig](#AuthenticationConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | required | Bool? |  yes  | Shows sales channel inventory authentication is required or not |
 | provider | String? |  yes  | Shows inventory authentication provider |

---


 
 
 #### [ArticleAssignmentConfig](#ArticleAssignmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rules | [ArticleAssignmentRules](#ArticleAssignmentRules)? |  yes  |  |
 | postOrderReassignment | Bool? |  yes  | Allow post order reassigment of article |

---


 
 
 #### [ArticleAssignmentRules](#ArticleAssignmentRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storePriority | [StorePriority](#StorePriority)? |  yes  |  |

---


 
 
 #### [StorePriority](#StorePriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Shows store priority is enabled or disabled for assignment of article |
 | storetypeOrder | [[String: Any]]? |  yes  | List of store types for article assignment e.g. warehouse, mall, highstreet |

---


 
 
 #### [AppCartConfig](#AppCartConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryCharges | [DeliveryCharges](#DeliveryCharges)? |  yes  |  |
 | enabled | Bool? |  yes  | Shows whether cart configuration is enabled or not |
 | maxCartItems | Int? |  yes  | Maximum number of items that can be added to cart by the customer |
 | minCartValue | Double? |  yes  | Minimum cart value below which customer cannot place an order |
 | bulkCoupons | Bool? |  yes  | Allow creation of bulk coupons |
 | revenueEngineCoupon | Bool? |  yes  | Allow coupon apply and credits together. Default value is false. |
 | emptyCart | Bool? |  yes  | Enable/disable to allow adding cart items added before login to user's cart once user is logged in |

---


 
 
 #### [DeliveryCharges](#DeliveryCharges)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Allow delivery charges |
 | charges | [Charges](#Charges)? |  yes  |  |

---


 
 
 #### [Charges](#Charges)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | threshold | Double? |  yes  | The order value below which an extra delivery fee will be applicable |
 | charges | Double? |  yes  | Delivery amount to be charged when order value is below the defined threshold value |

---


 
 
 #### [AppPaymentConfig](#AppPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | callbackUrl | [CallbackUrl](#CallbackUrl)? |  yes  |  |
 | methods | [Methods](#Methods)? |  yes  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | modeOfPayment | String? |  yes  | Mode of payment for sales channel payment, e.g. 'ECOMM'. |
 | source | String? |  yes  | Source of the payment mode, e.g. 'ECOMM'. Default value is FYND. |
 | enabled | Bool? |  yes  | Allow payment option within sales channel |
 | codAmountLimit | Double? |  yes  | Maximum amount allowed for COD order. Beyond this, customer cannot opt for COD. |
 | codCharges | Double? |  yes  | Extra charge applicable for COD orders |
 | anonymousCod | Bool? |  yes  | Allow cash on delivery for anonymous user |

---


 
 
 #### [CallbackUrl](#CallbackUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | String? |  yes  | Payment callback url for app |
 | web | String? |  yes  | Payment callback url for web |

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
 | enabled | Bool? |  yes  | Shows if a given payment method is enabled or not, e.g. if 'nb' is enabled, customer can use NetBanking for payment. |

---


 
 
 #### [PaymentSelectionLock](#PaymentSelectionLock)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Shows whether payment mode is restricted to a specific option, e.g. 'HDFC Netbanking' |
 | defaultOptions | String? |  yes  | Shows default payment method, e.g. COD |
 | paymentIdentifier | String? |  yes  | Payment method chosen from default options, e.g. COD |

---


 
 
 #### [AppOrderConfig](#AppOrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Allow orders to be accepted from the sales channel |
 | forceReassignment | Bool? |  yes  | Allow force reassigning of an order |
 | message | String? |  yes  | Reason for reassigning an order |

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
 | enabled | Bool? |  yes  | Shows loyalty points is enabled or not enabled |
 | autoApply | Bool? |  yes  | Allow auto apply of loyalty points |

---


 
 
 #### [AppInventoryPartialUpdate](#AppInventoryPartialUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rewardPoints | [RewardPointsConfig](#RewardPointsConfig)? |  yes  |  |
 | cart | [AppCartConfig](#AppCartConfig)? |  yes  |  |
 | payment | [AppPaymentConfig](#AppPaymentConfig)? |  yes  |  |
 | loyaltyPoints | [LoyaltyPointsConfig](#LoyaltyPointsConfig)? |  yes  |  |
 | commsEnabled | Bool? |  yes  | Shows communication (comms) is enabled or not for sales channel partial inventory update |

---


 
 
 #### [BrandCompanyInfo](#BrandCompanyInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyName | String? |  yes  | Name of the company dealing with the brand |
 | companyId | Int? |  yes  | Numeric ID allotted to a business account |

---


 
 
 #### [CompanyByBrandsRequest](#CompanyByBrandsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | Int |  no  | Brand UID |
 | searchText | String? |  yes  | A search field for finding a company by its name |

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
 | companyId | Int? |  yes  | Current company ID for current company stores only. Don't send in case cross-selling (franchise) is enabled. |
 | brands | Int |  no  | Brand UID |
 | searchText | String? |  yes  | Search store by its name or store code |

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
 | storeName | String? |  yes  | Name of the selling location (store) |
 | storeId | Int? |  yes  | The unique identifier of the selling location (store) |
 | storeType | String? |  yes  | Store type of the brand like warehouse, high_street, mall |
 | storeCode | String? |  yes  | Store code of the brand. It is unique for every brand store. |
 | storeAddress | [OptedStoreAddress](#OptedStoreAddress)? |  yes  |  |
 | company | [OptedCompany](#OptedCompany)? |  yes  |  |

---


 
 
 #### [CompanyBrandInfo](#CompanyBrandInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Brand name, e.g. Raymonds |
 | value | Int? |  yes  | Brand UID for identifying the brand |
 | brandLogoUrl | String? |  yes  | Hosted URL of the brand's logo |
 | brandBannerUrl | String? |  yes  | Hosted URL of the brand's banner image |
 | brandBannerPortraitUrl | String? |  yes  | Hosted URL of the brand's portrait banner |

---


 
 
 #### [BrandsByCompanyResponse](#BrandsByCompanyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | [CompanyBrandInfo](#CompanyBrandInfo)? |  yes  |  |

---


 
 
 #### [ValidationFailedResponse](#ValidationFailedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Response message for failed validation |

---


 
 
 #### [NotFound](#NotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Response message for not found |

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
 | isActive | Bool? |  yes  | Indicates the availability of the mobile build |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) for mobile application configuration |
 | appName | String? |  yes  | Name of the mobile app |
 | landingImage | [LandingImage](#LandingImage)? |  yes  |  |
 | splashImage | [SplashImage](#SplashImage)? |  yes  |  |
 | application | String? |  yes  | Application ID of the current sales channel |
 | platformType | String? |  yes  | Device platform for which the mobile app was built, e.g. android, ios. |
 | createdAt | String? |  yes  | ISO 8601 timestamp of application configuration creation |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of last known modifications to the app build |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero. |
 | packageName | String? |  yes  | Shows bundle identifier if device platform is iOS, and directory of the app if device platform is Android |

---


 
 
 #### [LandingImage](#LandingImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  | Width-to-height ratio of landing image |
 | secureUrl | String? |  yes  | URL where the landing image is hosted |

---


 
 
 #### [SplashImage](#SplashImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  | Width-to-height ratio of splash image |
 | secureUrl | String? |  yes  | URL where the splash image is hosted |

---


 
 
 #### [MobileAppConfigRequest](#MobileAppConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appName | String? |  yes  | Name of the mobile app |
 | landingImage | [LandingImage](#LandingImage)? |  yes  |  |
 | splashImage | [SplashImage](#SplashImage)? |  yes  |  |
 | isActive | Bool? |  yes  | shows update in mobile app config is active or not |

---


 
 
 #### [BuildVersionHistory](#BuildVersionHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | versions | [BuildVersion](#BuildVersion)? |  yes  |  |
 | latestAvailableVersionName | String? |  yes  | Latest version number of the mobile build, in dot-decimal notation |

---


 
 
 #### [BuildVersion](#BuildVersion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | 24-digit Mongo Object ID |
 | application | String? |  yes  | Application ID of the sales channel |
 | platformType | String? |  yes  | Device platform for which the mobile app was built, e.g. android, ios. |
 | buildStatus | String? |  yes  | Current progress of the mobile build, e.g. pending, cancelled, failed, success |
 | versionName | String? |  yes  | Version number of the mobile build, in dot-decimal notation |
 | versionCode | Int? |  yes  | A positive integer used as an internal version number |
 | createdAt | String? |  yes  | ISO 8601 timestamp of app creation |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of last known modifications to the app build |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero. |

---


 
 
 #### [AppSupportedCurrency](#AppSupportedCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the currency configuration supported by the application |
 | supportedCurrency | [String]? |  yes  |  |
 | application | String? |  yes  | Alphanumeric ID allotted to an application (sales channel website) created within a business account. |
 | defaultCurrency | [DefaultCurrency](#DefaultCurrency)? |  yes  |  |
 | createdAt | String? |  yes  | ISO 8601 timestamp when currency was added in the list of currencies supported by the sales channel |
 | updatedAt | String? |  yes  | ISO 8601 timestamp when currency was updated in the list of currencies supported by the sales channel |

---


 
 
 #### [DefaultCurrency](#DefaultCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ref | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the default currency |
 | code | String? |  yes  | 3-character code of the default currency, e.g. INR, EUR, USD |

---


 
 
 #### [CurrencyConfig](#CurrencyConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of all the currency configuration |
 | isActive | Bool? |  yes  | Currency is enabled or not for the current sales channel |
 | name | String? |  yes  | Name of the currency, e.g Indian Rupee |
 | code | String? |  yes  | 3-character currency code, e.g. INR, USD, EUR. |
 | createdAt | String? |  yes  | ISO 8601 timestamp of a given currency creation |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of a given currency updation |
 | decimalDigits | Int? |  yes  | Acceptable decimal limits for a given currency, e.g. 1.05$ means upto 2 decimal digits can be accepted as a valid value of a currency. |
 | symbol | String? |  yes  | Unique symbol for identifying the currency, e.g. ₹ |

---


 
 
 #### [DomainAdd](#DomainAdd)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Full domain name, e.g. uniket.hostx0.de |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the domain |
 | verified | Bool? |  yes  | Domain is verified or not (indicates if A records and TXT records are correct) |
 | isPrimary | Bool? |  yes  | Domain is primary or not (indicates if the domain has been made the main URL of the sales channel) |
 | isShortlink | Bool? |  yes  | Indicates if the domain is a short link domain (short URL e.g. bitly) |
 | message | String? |  yes  | Shows the message shown after adding a domain successfully, e.g. 'New domain added successfully' |
 | txtRecords | [String]? |  yes  |  |

---


 
 
 #### [DomainAddRequest](#DomainAddRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | [DomainAdd](#DomainAdd)? |  yes  |  |

---


 
 
 #### [Domain](#Domain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Full domain name |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the sales channel domain |
 | verified | Bool? |  yes  | Domain is verified or not. TXT and A records should propagate correctly. |
 | isPrimary | Bool? |  yes  | Domain is primary or not. Primary domain is the default/main domain. |
 | isShortlink | Bool? |  yes  | Shortlink is present or not for the domain |
 | isPredefined | Bool? |  yes  | Domain is hosting domain or not. |

---


 
 
 #### [DomainsResponse](#DomainsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [[Domain](#Domain)]? |  yes  |  |

---


 
 
 #### [UpdateDomain](#UpdateDomain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Full domain name, e.g. zenz.com |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the domain |
 | verified | Bool? |  yes  | Domain is verified or not (indicates if A records and TXT records are correct) |
 | isPrimary | Bool? |  yes  | Domain is primary or not (indicates if the domain has been made the main URL of the sales channel) |
 | isShortlink | Bool? |  yes  | Indicates if the domain is a short link domain (short URL e.g. bit.ly) |

---


 
 
 #### [UpdateDomainTypeRequest](#UpdateDomainTypeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | [UpdateDomain](#UpdateDomain)? |  yes  |  |
 | action | String? |  yes  | Shows domain is made primary domain for the sales channel or shorlink is created for the sales channel domain |

---


 
 
 #### [DomainStatusRequest](#DomainStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domainUrl | String? |  yes  | URL of the domain, e.g. uniket.hostx0.de |

---


 
 
 #### [DomainStatus](#DomainStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  | Shows TXT record and A records for the domain |
 | status | Bool? |  yes  | Shows whether TXT record or A records for the domain are correctly propagating via DNS servers |

---


 
 
 #### [DomainStatusResponse](#DomainStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | connected | Bool? |  yes  | Check if domain is live and mapped to appropriate IP of Fynd Servers |
 | status | [[DomainStatus](#DomainStatus)]? |  yes  |  |

---


 
 
 #### [DomainSuggestionsRequest](#DomainSuggestionsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domainUrl | String? |  yes  | Domain url |
 | custom | Bool? |  yes  | Get suggestions for custom domains or Fynd domains |

---


 
 
 #### [DomainSuggestion](#DomainSuggestion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  | URL of the custom domain |
 | unsupported | Bool? |  yes  | Shows whether TLD domain is supported or not |
 | isAvailable | Bool |  no  | Shows whether the custom domain of your choice is available or not available |
 | price | Double? |  yes  | Cost of purchasing a custom domain. Not present for Fynd domains. |
 | currency | String? |  yes  | Custom domain currency. Not present for Fynd domains. |

---


 
 
 #### [DomainSuggestionsResponse](#DomainSuggestionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [[DomainSuggestion](#DomainSuggestion)]? |  yes  | Domain URL |

---


 
 
 #### [SuccessMessageResponse](#SuccessMessageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Shows whether domain was deleted successfully |
 | message | String? |  yes  | Success message shown to the user (in a string format) |

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
 | description | String? |  yes  | Basic description about the opted integration |
 | descriptionHtml | String? |  yes  | Basic HTML description about the opted integration |
 | constants | String? |  yes  |  |
 | companies | [[String: Any]]? |  yes  |  |
 | support | [String]? |  yes  |  |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the opted integration |
 | name | String? |  yes  | Nmae of the opted integration, e.g. SAP RBL Integration |
 | meta | [[IntegrationMeta](#IntegrationMeta)]? |  yes  |  |
 | icon | String? |  yes  | Hosted URL of the icon image |
 | owner | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the user who created the integration |
 | createdAt | String? |  yes  | ISO 8601 timestamp of integration creation |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of integration updation |
 | token | String? |  yes  | Randomly generated fixed-length string for opted integration. It is auto-generated. It would never change once it is generated. |
 | secret | String? |  yes  | Randomly generated fixed-length string for opted integration. It is auto-generated. It would never change once it is generated. |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero. |

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
 | browserScript | String? |  yes  | Browser script for the company validator |

---


 
 
 #### [JsonSchema](#JsonSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  | Display text of the validator JSON schema. It will show in the UI. |
 | key | String? |  yes  | Key related to the display text of the validator JSON schema |
 | type | String? |  yes  | Indicates the type of form field, e.g. Text, Dropdown. |
 | tooltip | String? |  yes  | Tooltip text for the UI of the validator JSON schema. It will show in the UI. |

---


 
 
 #### [StoreValidator](#StoreValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)]? |  yes  |  |
 | browserScript | String? |  yes  | Browser script for the store validator |

---


 
 
 #### [InventoryValidator](#InventoryValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)]? |  yes  |  |
 | browserScript | String? |  yes  | Browser script for the inventory validator |

---


 
 
 #### [OrderValidator](#OrderValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)]? |  yes  |  |
 | browserScript | String? |  yes  | Browser script for the order validator |

---


 
 
 #### [IntegrationMeta](#IntegrationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPublic | Bool? |  yes  |  |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the integration meta |
 | name | String? |  yes  | Nmae of integration meta, e.g. price_level |
 | value | String? |  yes  | Value related to integration meta name, e.g. store |

---


 
 
 #### [Integration](#Integration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | validators | [Validators](#Validators)? |  yes  |  |
 | description | String? |  yes  | Basic description about the integration |
 | descriptionHtml | String? |  yes  | Basic HTML description about the integration |
 | constants | [String: Any]? |  yes  |  |
 | companies | [[String: Any]]? |  yes  |  |
 | support | [String]? |  yes  |  |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the integration |
 | name | String? |  yes  | Name of the integration, e.g. SAP RBL Integration |
 | meta | [[IntegrationMeta](#IntegrationMeta)]? |  yes  |  |
 | icon | String? |  yes  | Hosted URL of the icon image |
 | owner | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the user who created the integration |
 | createdAt | String? |  yes  | ISO 8601 timestamp of integration creation |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of integration updation |
 | token | String? |  yes  | Randomly generated fixed-length string for opted integration. It is auto-generated. It would never change once it is generated. |
 | secret | String? |  yes  | Randomly generated fixed-length string for opted integration. It is auto-generated. It would never change once it is generated. |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero. |

---


 
 
 #### [IntegrationConfigResponse](#IntegrationConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[IntegrationLevel](#IntegrationLevel)]? |  yes  |  |

---


 
 
 #### [IntegrationLevel](#IntegrationLevel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opted | Bool? |  yes  | Shows this integration is opted or not opted for the current company |
 | permissions | [[String: Any]]? |  yes  |  |
 | lastPatch | [[LastPatch](#LastPatch)]? |  yes  |  |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the integration config |
 | integration | String? |  yes  | Integration id. Shows which integration you are enabling. |
 | level | String? |  yes  | Shows for what level the integration is set up. It can be company level or store level. |
 | uid | Int? |  yes  | It can be store uid or company uid. Depends on the level of integration. |
 | meta | [[IntegrationMeta](#IntegrationMeta)]? |  yes  |  |
 | token | String? |  yes  | Randomly generated fixed-length string for opted integration. It is auto-generated. It would never change once it is generated. |
 | createdAt | String? |  yes  | ISO 8601 timestamp of integration config creation |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of integration config updation |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero. |
 | data | [String: Any]? |  yes  | Schema data of the integration stored in key-value pairs |

---


 
 
 #### [UpdateIntegrationLevelRequest](#UpdateIntegrationLevelRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[IntegrationLevel](#IntegrationLevel)]? |  yes  |  |

---


 
 
 #### [OptedStoreIntegration](#OptedStoreIntegration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otherOpted | Bool? |  yes  | Allow user to opt same store in other integration |
 | otherIntegration | [IntegrationOptIn](#IntegrationOptIn)? |  yes  |  |
 | otherEntity | [OtherEntity](#OtherEntity)? |  yes  |  |

---


 
 
 #### [OtherEntity](#OtherEntity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opted | Bool? |  yes  | Allow other entity opted in integration |
 | permissions | [String]? |  yes  |  |
 | lastPatch | [[LastPatch](#LastPatch)]? |  yes  |  |
 | id | String? |  yes  | The unique identifier of the other entity for opted store integration |
 | integration | String? |  yes  | Integration ID. Shows which integration you are enabling. |
 | level | String? |  yes  | Indicates integration level. It can be company level or store level. |
 | uid | Int? |  yes  | It can be store uid or company uid. Depends on the level of integration. |
 | data | [OtherEntityData](#OtherEntityData)? |  yes  |  |
 | meta | [[String: Any]]? |  yes  |  |
 | token | String? |  yes  | Randomly generated fixed-length string for opted integration. It is auto-generated. It would never change once it is generated. |
 | createdAt | String? |  yes  | ISO 8601 timestamp of other entity creation for opted store integration |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of other entity updation for opted store integration |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero. |

---


 
 
 #### [LastPatch](#LastPatch)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | op | String? |  yes  |  |
 | path | String? |  yes  |  |
 | value | String? |  yes  | It can be inventory level or order level |

---


 
 
 #### [OtherEntityData](#OtherEntityData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleIdentifier | String? |  yes  |  |

---


 
 
 #### [App](#App)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | String? |  yes  | Numeric ID allotted to a business account on Fynd Platform. |
 | channelType | String? |  yes  | It indicates different channel types like store, website-and-mobile-apps. Default value is store |
 | auth | [ApplicationAuth](#ApplicationAuth)? |  yes  |  |
 | name | String? |  yes  | User-friendly name for sales channel, e.g. Zenz Fashion |
 | desc | String? |  yes  | Detailed description about the sales channel |

---


 
 
 #### [AppInventory](#AppInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [InventoryBrandRule](#InventoryBrandRule)? |  yes  |  |
 | store | [InventoryStoreRule](#InventoryStoreRule)? |  yes  |  |
 | image | [String]? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  | Allow other businesses (companies) to consume the current sales channel's inventory and sell products |
 | outOfStock | Bool? |  yes  | Indicates whether out of stock products are allowed to show up on the website. |
 | onlyVerifiedProducts | Bool? |  yes  | Show only verified products (the ones whose data have been verified by the admin) |
 | payment | [InventoryPaymentConfig](#InventoryPaymentConfig)? |  yes  |  |
 | articleAssignment | [InventoryArticleAssignment](#InventoryArticleAssignment)? |  yes  |  |

---


 
 
 #### [AppDomain](#AppDomain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Domain URL of current sales channel, e.g. zenz.com |

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
 | uid | Int? |  yes  | UID of the company, e.g. 108 |
 | name | String? |  yes  | Name of the company, e.g. Newton Traders |
 | companyType | String? |  yes  | Indicates the type of the company, e.g. franchisee, distributor, etc. |

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
 | id | String? |  yes  | The unique identifier of the store (24-digit Mongo Object ID) in the sales channel inventory |
 | modifiedOn | String? |  yes  | ISO 8601 timestamp of last known updation to the stores in sales channel inventory |
 | uid | Int? |  yes  | Sales channel inventory store UID |
 | name | String? |  yes  | Name of the store in the sales channel inventory, e.g. Reebok Mumbai |
 | displayName | String? |  yes  | Display name of the sales channel inventory store (can be different than the actual store name), e.g. Reebok MUM |
 | storeType | String? |  yes  | Store type of the sales channel inventory store, such as mall, warehouse, high_street |
 | storeCode | String? |  yes  | Store code of the enabled inventory store, e.g. HS-c9bac. It is unique for every store. |
 | companyId | Int? |  yes  | Company ID of the selling location (store) added to the sales channel's inventory |

---


 
 
 #### [FilterOrderingStoreRequest](#FilterOrderingStoreRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allStores | Bool? |  yes  | Allow all stores from the ordering stores |
 | deployedStores | [Int]? |  yes  |  |
 | q | String? |  yes  | Store code or name of the ordering store |
 | onlyDeployed | Bool? |  yes  |  |

---


 
 
 #### [DeploymentMeta](#DeploymentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deployedStores | [Int]? |  yes  |  |
 | allStores | Bool? |  yes  | Allow all stores from the ordering store |
 | enabled | Bool? |  yes  | Allow ordering stores for current sales channel |
 | type | String? |  yes  | Permitted values are 'hard' and 'soft'. For hard type delivery, store selection is compulsory. For soft type, delivery store selection is optional. |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the ordering stores |
 | app | String? |  yes  | Alphanumeric ID allotted to an application (sales channel website) created within a business account |

---


 
 
 #### [OrderingStoreConfig](#OrderingStoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deploymentMeta | [DeploymentMeta](#DeploymentMeta)? |  yes  |  |

---


 
 
 #### [OtherSellerCompany](#OtherSellerCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  | Uid of the seller company |
 | name | String? |  yes  | Name of the seller company |

---


 
 
 #### [OtherSellerApplication](#OtherSellerApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Name of the other seller's sales channel |
 | description | String? |  yes  | Basic details about the other seller's sales channel |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the other seller's sales channel |
 | domain | String? |  yes  | Domain URL of the other seller's sales channel |
 | company | [OtherSellerCompany](#OtherSellerCompany)? |  yes  |  |
 | optType | String? |  yes  | Inventory opted by the other seller's sales channel. It can be the current company or stores in the current company. |

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
 | name | String? |  yes  | Name of the other seller's sales channel |
 | description | String? |  yes  | Basic details about the other seller's sales channel |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the other seller's sales channel |
 | domain | String? |  yes  | Domain URL of the other seller's sales channel |
 | company | [OptedCompany](#OptedCompany)? |  yes  |  |
 | optedInventory | [OptedInventory](#OptedInventory)? |  yes  |  |
 | optOutInventory | [OptOutInventory](#OptOutInventory)? |  yes  |  |

---


 
 
 #### [OptedCompany](#OptedCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  | Company UID opted by the other seller's sales channel in its inventory. It has unique value for the company. |
 | name | String? |  yes  | Name of the company opted by the other seller's sales channel in its inventory |

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
 | key | String? |  yes  | Opted type of inventory store. It can be store or company. |
 | display | String? |  yes  | Display text of opted type for inventory store |

---


 
 
 #### [OptedStore](#OptedStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Name of the inventory store opted by other seller's application |
 | storeCode | String? |  yes  | Store code of the opted inventory store. It is unique for every store. |
 | id | String? |  yes  | The unique identifier of the opted inventory store |
 | modifiedOn | String? |  yes  | ISO 8601 timestamp of opted inventory store creation |
 | uid | Int? |  yes  | UID of opted inventory store |
 | address | [OptedStoreAddress](#OptedStoreAddress)? |  yes  |  |
 | displayName | String? |  yes  | Display name of the opted inventory store |
 | storeType | String? |  yes  | Store type of the opted inventory store like warehouse, high_street, mall. |
 | companyId | Int? |  yes  | Company ID of the opted inventory store |

---


 
 
 #### [OptOutInventory](#OptOutInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [Int] |  no  | List of selling locations (stores) opted out from the inventory of other seller's application |
 | company | [Int] |  no  | List of companies opted out from the inventory of other seller's application |

---


 
 
 #### [TokenResponse](#TokenResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tokens | [Tokens](#Tokens)? |  yes  |  |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the token |
 | application | String? |  yes  | Alphanumeric ID allotted to the current application created within the current business account |
 | createdAt | String? |  yes  | ISO 8601 timestamp of token creation |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of token updation |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero. |

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
 | enabled | Bool? |  yes  | Shows whether Firebase integration is enabled or disabled for the sales channel |

---


 
 
 #### [Credentials](#Credentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ios | [Ios](#Ios)? |  yes  |  |
 | android | [Android](#Android)? |  yes  |  |
 | projectId | String? |  yes  | Project ID for Firebase integration. Project ID is a unique identifier for a project and is used only within the console. |
 | gcmSenderId | String? |  yes  | Google Cloud Manager's Sender ID for Firebase. It is a unique numerical value which is created when you configure your project in the Google Developers Console/Google Cloud Console. |
 | applicationId | String? |  yes  | Alphanumeric ID allotted to the current application created within the current business account |
 | apiKey | String? |  yes  | An API key is a unique string that's used to route requests to your Firebase project when interacting with Firebase. |

---


 
 
 #### [Ios](#Ios)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  | Alphanumeric ID allotted to a sales channel application created within a business account |
 | apiKey | String? |  yes  | Firebase secret credential API key for IOS |

---


 
 
 #### [Android](#Android)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  | Alphanumeric ID allotted to a sales channel application created within a business account |
 | apiKey | String? |  yes  | Firebase secret credential API key for Android |

---


 
 
 #### [Moengage](#Moengage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [MoengageCredentials](#MoengageCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  | Shows whether MoEngage integation is enabled or disabled for the sales channel |

---


 
 
 #### [MoengageCredentials](#MoengageCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  | APP ID provided by MoEngage to identify a specific app. The app_id for your MoEngage account is available on the MoEngage Dashboard. |

---


 
 
 #### [Segment](#Segment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [SegmentCredentials](#SegmentCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  | Shows whether Segment integration is enabled or disabled for the sales channel |

---


 
 
 #### [SegmentCredentials](#SegmentCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | writeKey | String? |  yes  | The unique identifier for a source that tells Segment from which source data is coming from, to which workspace the data belongs, and which destinations should receive the data. |

---


 
 
 #### [Gtm](#Gtm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [GtmCredentials](#GtmCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  | Shows whether GTM integration is enabled or disabled for the sales channel |

---


 
 
 #### [GtmCredentials](#GtmCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String? |  yes  | Secret credential API key for GTM |

---


 
 
 #### [Freshchat](#Freshchat)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [FreshchatCredentials](#FreshchatCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  | Shows whether Freshchat integration is enabled or disabled for the sales channel |

---


 
 
 #### [FreshchatCredentials](#FreshchatCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  | The unique app_id of your Freshchat account for integrating Freshchat with your sales channel |
 | appKey | String? |  yes  | The unique app_key of your Freshchat account for integrating Freshchat with your sales channel |
 | webToken | String? |  yes  | Web token used for accessing the Freshchat APIs |

---


 
 
 #### [Safetynet](#Safetynet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [SafetynetCredentials](#SafetynetCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  | Shows whether Safetynet integration is enabled or disabled for the sales channel |

---


 
 
 #### [SafetynetCredentials](#SafetynetCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String? |  yes  | Secret credential API key for Safetynet. This API key is used for calling the methods of Safetynet APIs. |

---


 
 
 #### [FyndRewards](#FyndRewards)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [FyndRewardsCredentials](#FyndRewardsCredentials)? |  yes  |  |

---


 
 
 #### [FyndRewardsCredentials](#FyndRewardsCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | publicKey | String? |  yes  | Public key for integrating with Fynd rewards. |

---


 
 
 #### [GoogleMap](#GoogleMap)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [GoogleMapCredentials](#GoogleMapCredentials)? |  yes  |  |

---


 
 
 #### [GoogleMapCredentials](#GoogleMapCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String? |  yes  | Secret API key for Google Maps. A unique identifier that authenticates requests made to Google Maps API. |

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
 | enabled | Bool? |  yes  | Shows whether reward points should be credited |

---


 
 
 #### [Debit](#Debit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Shows whether reward points are available for debit |
 | autoApply | Bool? |  yes  | Allow automatic debit of reward points |
 | strategyChannel | String? |  yes  | Strategy channel for debiting reward points |

---


 
 
 #### [ProductDetailFeature](#ProductDetailFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | similar | [String]? |  yes  | Configuration to show similar products, other products from same seller, other products in same category, other products in same price range, etc. |
 | sellerSelection | Bool? |  yes  | Shows whether the customers can choose the seller on PDP |
 | updateProductMeta | Bool? |  yes  | Allow user to update product meta. Default value is true. |
 | requestProduct | Bool? |  yes  | Indicates whether customers can request for a product. Default value is false. |

---


 
 
 #### [LaunchPage](#LaunchPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageType | String? |  yes  | Type of the launch page |
 | params | [String: Any]? |  yes  | Launch page params. It can be nullable. |
 | query | [String: Any]? |  yes  | Query related to launch page. It can be nullable. |

---


 
 
 #### [LandingPageFeature](#LandingPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | launchPage | [LaunchPage](#LaunchPage)? |  yes  |  |
 | continueAsGuest | Bool? |  yes  | Shows whether a guest can checkout from cart without logging in |
 | loginBtnText | String? |  yes  | Shows the text displayed over the login button |
 | showDomainTextbox | Bool? |  yes  | Shows whether a textbox for entering domain is available |
 | showRegisterBtn | Bool? |  yes  | Shows whether register button is available in the login/landing page |

---


 
 
 #### [RegistrationPageFeature](#RegistrationPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | askStoreAddress | Bool? |  yes  | Shows whether a form to collect the address of the store, should be displayed upon visiting the website |

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
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) for the sales channel features |
 | app | String? |  yes  | Application ID of the sales channel |
 | createdAt | String? |  yes  | ISO 8601 timestamp showing the date when the features were configured |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of last known modifications to the sales channel feature configuration |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero |

---


 
 
 #### [HomePageFeature](#HomePageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderProcessing | Bool? |  yes  | Shows whether order processing is enabled or not enabled |

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
 | visibility | Bool? |  yes  | Shows whether WhatsApp communication is enabled |

---


 
 
 #### [DeploymentStoreSelectionFeature](#DeploymentStoreSelectionFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Shows whether selection of store (for deploying the application) is permitted |
 | type | String? |  yes  | Permitted values are 'hard' and 'soft'. For hard type delivery, store selection is compulsory. For soft type, delivery store selection is optional. |

---


 
 
 #### [ListingPriceFeature](#ListingPriceFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  | Shows which price to display on PLP if one product has multiple prices (for each size), valid values are 'min', 'max', 'range'. Default value is range. |
 | sort | String? |  yes  | Sorting of listing price with min or max value. Default value is min. |

---


 
 
 #### [CurrencyFeature](#CurrencyFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | [String]? |  yes  | 3-letter currency code |
 | type | String? |  yes  | If 'explicit', currency formatting shows currency code with price. For explicit or all currency selection. |
 | defaultCurrency | String? |  yes  | 3-letter code of the default currency used in the application. Default vaule is 'INR'. |

---


 
 
 #### [RevenueEngineFeature](#RevenueEngineFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Enable revenue engine. Default value is false. |

---


 
 
 #### [FeedbackFeature](#FeedbackFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Shows whether customer feedback is enabled on PDP. Default value is false. |

---


 
 
 #### [CompareProductsFeature](#CompareProductsFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Shows whether product comparison feature is enabled on PDP |

---


 
 
 #### [CartFeature](#CartFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstInput | Bool? |  yes  | Shows whether customer is allowed to enter GST on the cart page for claiming input credits |
 | staffSelection | Bool? |  yes  | Shows whether staff selection is enabled on cart page |
 | placingForCustomer | Bool? |  yes  | Shows whether the staff is placing order on behalf of customer. Default value is true. |
 | googleMap | Bool? |  yes  | Allow adding of Google Maps. Default value is true. |
 | revenueEngineCoupon | Bool? |  yes  | Allow coupon apply and credits, together. Default value is false. |

---


 
 
 #### [QrFeature](#QrFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | Bool? |  yes  | Shows whether sharing of mobile app via QR code is allowed. Default value is false. |
 | products | Bool? |  yes  | Shows whether sharing product via QR code is allowed. Default value is false. |
 | collections | Bool? |  yes  | Shows whether sharing collection via QR code is allowed. Default value is false. |

---


 
 
 #### [PcrFeature](#PcrFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | staffSelection | Bool? |  yes  | Allow staff selection. Default value is false. |

---


 
 
 #### [OrderFeature](#OrderFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | buyAgain | Bool? |  yes  | Allow buy again option for order. Default value is false. |

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
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the current sales channel supported currency |
 | isActive | Bool? |  yes  | Shows currency is enabled or not in current sales channel |
 | name | String? |  yes  | Name of the currency, e.g Indian Rupee |
 | code | String? |  yes  | 3-character currency code, e.g. INR, USD, EUR. |
 | createdAt | String? |  yes  | ISO 8601 timestamp of sales channel support currency creation |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of sales channel support currency updation |
 | decimalDigits | Int? |  yes  | Acceptable decimal limits for a given currency, e.g. 1.05$ means upto 2 decimal digits can be accepted as a valid value of a currency. |
 | symbol | String? |  yes  | Unique symbol for identifying the currency, e.g. ₹ |

---


 
 
 #### [ApplicationWebsite](#ApplicationWebsite)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Shows whether sales channel website URL is enabled or not |
 | basepath | String? |  yes  | Base path for the current sales channel website |

---


 
 
 #### [ApplicationCors](#ApplicationCors)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [String]? |  yes  |  |

---


 
 
 #### [ApplicationAuth](#ApplicationAuth)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Shows sales channel auth is enabled or not enabled. |

---


 
 
 #### [ApplicationRedirections](#ApplicationRedirections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | redirectFrom | String? |  yes  | Old domain url of the sales channel |
 | redirectTo | String? |  yes  | New domain URL of the sales channel. Users will be automatically redirected from old domain to new domain. |
 | type | String? |  yes  | It shows domain redirection type. Permanent redirection is for long time period redirection, and temporary redirection for a short time period. |

---


 
 
 #### [ApplicationMeta](#ApplicationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Indicates to name of application meta |
 | value | String? |  yes  | Value related to application meta name |

---


 
 
 #### [SecureUrl](#SecureUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String? |  yes  | Hosted URL of the image |

---


 
 
 #### [Application](#Application)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | website | [ApplicationWebsite](#ApplicationWebsite)? |  yes  |  |
 | cors | [ApplicationCors](#ApplicationCors)? |  yes  |  |
 | auth | [ApplicationAuth](#ApplicationAuth)? |  yes  |  |
 | description | String? |  yes  | It contains detailed information about the sales channel. |
 | channelType | String? |  yes  | It indicates different channel types like store, website-and-mobile-apps. Default value is store |
 | cacheTtl | Int? |  yes  | An integer value that specifies the number of seconds until the key expires |
 | isInternal | Bool? |  yes  | Indicates whether a sales channel is internal or not |
 | isActive | Bool? |  yes  | Indicates sales channel is active or not active |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the sales channel |
 | name | String? |  yes  | Name of the sales channel, e.g. Zenz Fashion |
 | owner | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of owner who owns the application |
 | companyId | Int? |  yes  | Numeric ID allotted to a business account where the sales channel exists |
 | token | String? |  yes  | Random generated fix length string for sales channel. It is required and auto-generated. |
 | redirections | [[ApplicationRedirections](#ApplicationRedirections)]? |  yes  |  |
 | meta | [[ApplicationMeta](#ApplicationMeta)]? |  yes  |  |
 | createdAt | String? |  yes  | ISO 8601 timestamp of sales channel creation |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of sales channel updation |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero. |
 | banner | [SecureUrl](#SecureUrl)? |  yes  |  |
 | logo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | favicon | [SecureUrl](#SecureUrl)? |  yes  |  |
 | domains | [[Domain](#Domain)]? |  yes  |  |
 | appType | String? |  yes  | It shows application is live or in development mode. |
 | mobileLogo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | domain | [Domain](#Domain)? |  yes  |  |

---


 
 
 #### [UnhandledError](#UnhandledError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [InvalidPayloadRequest](#InvalidPayloadRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Error message when request body payload is improper |

---


 
 
 #### [InventoryBrandRule](#InventoryBrandRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  | Whether all brands are enabled, or explicitly few brands in the inventory |
 | brands | [Int]? |  yes  |  |

---


 
 
 #### [StoreCriteriaRule](#StoreCriteriaRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companies | [Int]? |  yes  | List of company UID |
 | brands | [Int]? |  yes  | List of brand UID |

---


 
 
 #### [InventoryStoreRule](#InventoryStoreRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  | Whether all stores are enabled, or explicitly few stores in the inventory, or use brands and company filter. |
 | rules | [[StoreCriteriaRule](#StoreCriteriaRule)]? |  yes  | List of rules with company and brands uids. Used when critera is `filter`. |
 | stores | [Int]? |  yes  | List of store uids. Used when critera is `explicit`. |

---


 
 
 #### [InventoryPaymentConfig](#InventoryPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modeOfPayment | String? |  yes  | Mode of payment for the inventory of sales channel. It is required and default value is null. |
 | source | String? |  yes  | Source of the payment mode for the inventory payment of sales channel. Default value is FYND. |

---


 
 
 #### [StorePriorityRule](#StorePriorityRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Shows store priority is enabled or not enabled for the article assignment. |
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
 | postOrderReassignment | Bool? |  yes  | Allow post order reassigment of article |
 | rules | [ArticleAssignmentRule](#ArticleAssignmentRule)? |  yes  |  |

---


 
 
 #### [CompanyAboutAddress](#CompanyAboutAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int? |  yes  | 6-digit PIN code of the city, e.g. 400001 |
 | address1 | String? |  yes  | Primary address line of the company |
 | address2 | String? |  yes  | Secondary address line of the company |
 | city | String? |  yes  | City name, e.g. Mumbai |
 | state | String? |  yes  | State name, e.g. Maharashtra |
 | country | String? |  yes  | Country name, e.g. India |
 | addressType | String? |  yes  | Indicates different office types like office, registered, and home. |

---


 
 
 #### [UserEmail](#UserEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  | Current email is active or not active |
 | primary | Bool? |  yes  | Indicates current email is primay email or not primary email of user |
 | verified | Bool? |  yes  | Indicates current email is verified email or not verified email |
 | email | String? |  yes  | Email address of the user |

---


 
 
 #### [UserPhoneNumber](#UserPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  | Current phone number is active or not active |
 | primary | Bool? |  yes  | Indicates current phone number is primay  or not primary of user |
 | verified | Bool? |  yes  | Indicates current phone number is verified or not verified |
 | countryCode | Int? |  yes  | Country code, e.g. +91 |
 | phone | String? |  yes  | Phone number of the user |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  | Page type |
 | size | Int? |  yes  | The number of items to retrieve in each page. Default value is 10. |
 | current | Int? |  yes  | Current page number |
 | hasNext | Bool? |  yes  | Next page is present or not |
 | itemTotal | Int? |  yes  | Total number of items to retrieve |
 | nextId | String? |  yes  | Next page ID |
 | hasPrevious | Bool? |  yes  | Previous page is present or not |

---


 
 
 #### [ApplicationInformation](#ApplicationInformation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [InformationAddress](#InformationAddress)? |  yes  |  |
 | support | [InformationSupport](#InformationSupport)? |  yes  |  |
 | socialLinks | [SocialLinks](#SocialLinks)? |  yes  |  |
 | links | [Links](#Links)? |  yes  |  |
 | copyrightText | String? |  yes  | Copyright statement usually seen at the site's footer |
 | id | String? |  yes  | Unique identifier (24-digit Mongo Object ID) of the application information |
 | businessHighlights | [BusinessHighlights](#BusinessHighlights)? |  yes  |  |
 | application | String? |  yes  | Alphanumeric ID allotted to a sales channel application created within a business account |
 | createdAt | String? |  yes  | ISO 8601 timestamp of creation of the application information |
 | updatedAt | String? |  yes  | ISO 8601 timestamp of updation of the application information |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero. |

---


 
 
 #### [InformationAddress](#InformationAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | loc | String? |  yes  | Co-ordinates of the location |
 | addressLine | [String]? |  yes  | Contact address of the sales channel |
 | phone | [InformationPhone](#InformationPhone)? |  yes  |  |
 | city | String? |  yes  | Name of the city, e.g. Mumbai |
 | country | String? |  yes  | Name of the country, e.g. India |
 | pincode | Int? |  yes  | 6-digit PIN Code of the city, e.g. 400001 |

---


 
 
 #### [InformationPhone](#InformationPhone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  | Country code for contact number, e.g. +91 (for India) |
 | number | String? |  yes  | 10-digit mobile number |

---


 
 
 #### [InformationSupport](#InformationSupport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [String]? |  yes  |  |
 | email | [String]? |  yes  |  |
 | timing | String? |  yes  | Working hours of support team, e.g. 9 AM to 9 PM |

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
 | title | String? |  yes  | Name of the social media platform, e.g. Facebook |
 | icon | String? |  yes  | Hosted URL of social icon image shown on the website |
 | link | String? |  yes  | Web URL of brand's Facebook page |

---


 
 
 #### [InstagramLink](#InstagramLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Name of the social media platform, e.g. Instagram |
 | icon | String? |  yes  | Hosted URL of social icon image shown on the website |
 | link | String? |  yes  | Web URL of brand's Instagram page |

---


 
 
 #### [TwitterLink](#TwitterLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Name of the social media platform, e.g. Twitter |
 | icon | String? |  yes  | Hosted URL of social icon image shown on the website |
 | link | String? |  yes  | Web URL of brand's Twitter account |

---


 
 
 #### [PinterestLink](#PinterestLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Name of the social media platform, e.g. Pinterest |
 | icon | String? |  yes  | Hosted URL of social icon image shown on the website |
 | link | String? |  yes  | Web URL of brand's Pinterest page |

---


 
 
 #### [GooglePlusLink](#GooglePlusLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Name of the social media platform, e.g. Google+ |
 | icon | String? |  yes  | Hosted URL of social icon image shown on the website |
 | link | String? |  yes  | Web URL of brand's Google+ account |

---


 
 
 #### [YoutubeLink](#YoutubeLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Name of the social media platform, e.g. YouTube |
 | icon | String? |  yes  | Hosted URL of social icon image shown on the website |
 | link | String? |  yes  | Web URL of brand's YouTube channel |

---


 
 
 #### [LinkedInLink](#LinkedInLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Name of the social media platform, e.g. LinkedIn |
 | icon | String? |  yes  | Hosted URL of social icon image shown on the website |
 | link | String? |  yes  | Web URL of brand's LinkedIn channel |

---


 
 
 #### [VimeoLink](#VimeoLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Name of the video hosting platform, e.g. Vimeo |
 | icon | String? |  yes  | Hosted URL of social icon image shown on the website |
 | link | String? |  yes  | Web URL of brand's Vimeo channel |

---


 
 
 #### [BlogLink](#BlogLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Name of the brand's blog page |
 | icon | String? |  yes  | Hosted URL of icon image shown on the website |
 | link | String? |  yes  | Web URL of brand's blog page |

---


 
 
 #### [Links](#Links)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Name of the related page or link |
 | link | String? |  yes  | Web URL for redirecting to a related page |

---


 
 
 #### [BusinessHighlights](#BusinessHighlights)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Unique identifier (24-digit Mongo Object ID) of the related business |
 | title | String? |  yes  | Title of the business highlight, e.g. Superfast Delivery |
 | icon | String? |  yes  | Hosted URL of icon image representing the business highlight |
 | subTitle | String? |  yes  | Detailed information about the highlight |

---


 
 
 #### [ApplicationDetail](#ApplicationDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  | Name of the sales channel. It is required. |
 | description | String |  no  | It gives a detailed information about the sales channel. It is required. |
 | logo | [SecureUrl](#SecureUrl) |  no  |  |
 | mobileLogo | [SecureUrl](#SecureUrl) |  no  |  |
 | favicon | [SecureUrl](#SecureUrl) |  no  |  |
 | banner | [SecureUrl](#SecureUrl) |  no  |  |
 | domain | [Domain](#Domain)? |  yes  |  |
 | domains | [[Domain](#Domain)]? |  yes  |  |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) for the sales channel details |

---


 
 
 #### [CurrenciesResponse](#CurrenciesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Currency](#Currency)]? |  yes  |  |

---


 
 
 #### [AppCurrencyResponse](#AppCurrencyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  | Alphanumeric ID allotted to an application (sales channel website) created within a business account |
 | defaultCurrency | [DefaultCurrency](#DefaultCurrency)? |  yes  |  |
 | supportedCurrency | [[Currency](#Currency)]? |  yes  |  |

---


 
 
 #### [StoreLatLong](#StoreLatLong)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | Coordinates type of the opted store |
 | coordinates | [Double]? |  yes  |  |

---


 
 
 #### [OptedStoreAddress](#OptedStoreAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String? |  yes  | State of the opted store, e.g. Maharashtra |
 | address1 | String? |  yes  | Address of the opted store |
 | latLong | [StoreLatLong](#StoreLatLong)? |  yes  |  |
 | address2 | String? |  yes  | Address of the opted store |
 | pincode | Int? |  yes  | 6-digit PIN code of the opted store location |
 | country | String? |  yes  | Country of the opted store, e.g. India |
 | city | String? |  yes  | City of the opted store, e.g. Mumbai |

---


 
 
 #### [OrderingStore](#OrderingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [OptedStoreAddress](#OptedStoreAddress)? |  yes  |  |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the ordering store |
 | uid | Int? |  yes  | Ordering store UID |
 | name | String? |  yes  | Store name of the ordering store |
 | displayName | String? |  yes  | Display name of the ordering store |
 | storeType | String? |  yes  | Store type of the ordering store, e.g. high_street, mall, warehouse |
 | storeCode | String? |  yes  | Store code of the ordering store, e.g. MUM-102 |
 | pincode | Int? |  yes  | 6-digit PIN Code  of the ordering store, e.g. 400001 |
 | code | String? |  yes  | Code of the ordering store (usually same as Store Code) |

---


 
 
 #### [OrderingStores](#OrderingStores)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[OrderingStore](#OrderingStore)]? |  yes  |  |
 | deployedStores | [Int]? |  yes  |  |
 | allStores | Bool? |  yes  | Allow all stores of the ordering stores |
 | enabled | Bool? |  yes  | Allow ordering stores for current sales channel |
 | type | String? |  yes  | For hard type delivery, store selection is compulsory. For soft type, delivery store selection is optional. |
 | id | String? |  yes  | The unique identifier (24-digit Mongo Object ID) of the ordering store |
 | app | String? |  yes  | Alphanumeric ID allotted to an application (sales channel website) created within a business account |
 | v | Int? |  yes  | Version key for tracking ordering stores. Default value is zero. |

---


 
 
 #### [OrderingStoresResponse](#OrderingStoresResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[OrderingStore](#OrderingStore)]? |  yes  |  |

---



