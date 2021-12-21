



##### [Back to Platform docs](./README.md)

## CompanyProfile Methods
Company Profile API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features. 
* [cbsOnboardGet](#cbsonboardget)
* [updateCompany](#updatecompany)
* [getCompanyMetrics](#getcompanymetrics)
* [getBrand](#getbrand)
* [editBrand](#editbrand)
* [createBrand](#createbrand)
* [getBrands](#getbrands)
* [createCompanyBrandMapping](#createcompanybrandmapping)
* [getLocations](#getlocations)
* [createLocation](#createlocation)
* [getLocationDetail](#getlocationdetail)
* [updateLocation](#updatelocation)
* [createLocationBulk](#createlocationbulk)



## Methods with example and description


#### cbsOnboardGet
Get company profile




```swift
client.companyprofile.cbsOnboardGet() { (response, error) in
    // Use response
}
```






This API allows to view the company profile of the seller account.

*Returned Response:*




[GetCompanyProfileSerializerResponse](#GetCompanyProfileSerializerResponse)

Company profile object. See example below or refer `GetCompanyProfileSerializerResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "documents": [
    {
      "verified": true,
      "legal_name": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED",
      "value": "AALCA0442L",
      "type": "pan"
    }
  ],
  "created_by": {
    "user_id": "123",
    "username": "917827311650_22960"
  },
  "business_info": "I sell",
  "franchise_enabled": true,
  "company_type": "mbo",
  "warnings": {},
  "business_details": {
    "website": {
      "url": "https://www.google.com"
    }
  },
  "addresses": [
    {
      "country": "India",
      "longitude": 72.8231511,
      "state": "Maharashtra",
      "address1": "A/204, Sai Vandan, Tulinj Road. Nallasopara East, ",
      "country_code": "IN",
      "latitude": 19.4232024,
      "pincode": 401209,
      "address_type": "office",
      "city": "Mumbai"
    },
    {
      "country": "India",
      "longitude": 72.8231511,
      "state": "Maharashtra",
      "address1": "A/204, Sai Vandan, Tulinj Road. Nallasopara East, ",
      "country_code": "IN",
      "latitude": 19.4232024,
      "pincode": 401209,
      "address_type": "registered",
      "city": "Mumbai"
    }
  ],
  "modified_by": {
    "user_id": "123",
    "username": "917827311650_22960"
  },
  "notification_emails": [
    "gaurangpatel@gofynd.com"
  ],
  "business_type": "huf",
  "name": "Cache Company",
  "stage": "verified",
  "uid": 1,
  "business_country_info": {
    "country": "India",
    "country_code": "IN"
  }
}
```
</details>









---


#### updateCompany
Edit company profile




```swift
client.companyprofile.updateCompany(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateCompany | yes | Request body |


This API allows to edit the company profile of the seller account.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success message




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": 1,
  "success": true
}
```
</details>









---


#### getCompanyMetrics
Get company metrics




```swift
client.companyprofile.getCompanyMetrics() { (response, error) in
    // Use response
}
```






This API allows to view the company metrics, i.e. the status of its brand and stores. Also its allows to view the number of products, company documents & store documents which are verified and unverified.

*Returned Response:*




[MetricsSerializer](#MetricsSerializer)

Metrics response object. See example below or refer `MetricsSerializer` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": 1,
  "stage": "complete",
  "store": {
    "verified": 1,
    "pending": 1
  },
  "brand": {
    "verified": 1,
    "pending": 1
  },
  "product": {
    "verified": 0,
    "pending": 0
  },
  "company_documents": {
    "verified": 1,
    "pending": 0
  },
  "store_documents": {
    "verified": 0,
    "pending": 2
  }
}
```
</details>









---


#### getBrand
Get a single brand.




```swift
client.companyprofile.getBrand(brandId: brandId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| brandId | String | yes | Id of the brand to be viewed. |  



This API helps to get data associated to a particular brand.

*Returned Response:*




[GetBrandResponseSerializer](#GetBrandResponseSerializer)

Brand object. See example below or refer `GetBrandResponseSerializer` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "stage": "verified",
  "_custom_json": {},
  "uid": 1,
  "logo": "http://cdn4.gofynd.com/media/logo/brand/original/4597_40d1ce44d61940d4829a3c54951bd9ee.jpg",
  "warnings": {},
  "_locale_language": {},
  "name": "edited brand",
  "slug_key": "brand-2",
  "banner": {
    "portrait": "http://cdn4.gofynd.com/media/banner_portrait/brand/original/7021_16fc50205c40477daf419b64ec64c64c.jpg",
    "landscape": "http://cdn4.gofynd.com/media/banner/brand/original/7020_f9e91f7d501c4f2985c09bd196ed304d.jpg"
  },
  "created_by": {
    "username": "silverbolt",
    "user_id": "0"
  },
  "modified_by": {
    "username": "917827311650_22960",
    "user_id": "123"
  },
  "verified_by": {
    "username": "917827311650_22960",
    "user_id": "123"
  },
  "synonyms": [
    "xyz"
  ]
}
```
</details>









---


#### editBrand
Edit a brand.




```swift
client.companyprofile.editBrand(brandId: brandId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| brandId | String | yes | Id of the brand to be viewed. |  
| body | CreateUpdateBrandRequestSerializer | yes | Request body |


This API allows to edit meta of a brand.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": 1,
  "success": true
}
```
</details>









---


#### createBrand
Create a Brand.




```swift
client.companyprofile.createBrand(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateUpdateBrandRequestSerializer | yes | Request body |


This API allows to create a brand associated to a company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": 1,
  "success": true
}
```
</details>









---


#### getBrands
Get brands associated to a company




```swift
client.companyprofile.getBrands(pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |   
| q | String? | no | Search term for name. |  



This API helps to get view brands associated to a particular company.

*Returned Response:*




[CompanyBrandListSerializer](#CompanyBrandListSerializer)

Brand object. See example below or refer `CompanyBrandListSerializer` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "brand": {
        "stage": "complete",
        "uid": 2,
        "banner": {
          "portrait": "http://cdn4.gofynd.com/media/banner_portrait/brand/original/7021_16fc50205c40477daf419b64ec64c64c.jpg",
          "landscape": "http://cdn4.gofynd.com/media/banner/brand/original/7020_f9e91f7d501c4f2985c09bd196ed304d.jpg"
        },
        "modified_by": {
          "user_id": "123",
          "username": "917827311650_22960"
        },
        "slug_key": "test-post",
        "synonyms": [
          "xyz"
        ],
        "created_on": "2021-02-25T15:21:57.666000+00:00",
        "created_by": {
          "user_id": "123",
          "username": "917827311650_22960"
        },
        "modified_on": "2021-02-25T15:21:57.666000+00:00",
        "name": "test_post",
        "logo": "http://cdn4.gofynd.com/media/logo/brand/original/4597_40d1ce44d61940d4829a3c54951bd9ee.jpg"
      },
      "stage": "complete",
      "uid": 2,
      "modified_by": {
        "user_id": "123",
        "username": "917827311650_22960"
      },
      "company": {
        "business_type": "huf",
        "stage": "complete",
        "uid": 1,
        "addresses": [
          {
            "city": "Mumbai Suburban",
            "latitude": 19.058461,
            "longitude": 72.871395,
            "address1": "Chunabhatti Phatak, Maharashtra Nagar, Maharashtra Nagar, ",
            "country_code": "IN",
            "state": "Maharashtra",
            "country": "India",
            "pincode": 400070,
            "address_type": "office"
          },
          {
            "city": "Mumbai Suburban",
            "latitude": 19.058461,
            "longitude": 72.871395,
            "address1": "Chunabhatti Phatak, Maharashtra Nagar, Maharashtra Nagar, ",
            "country_code": "IN",
            "state": "Maharashtra",
            "country": "India",
            "pincode": 400070,
            "address_type": "registered"
          }
        ],
        "modified_by": {
          "user_id": "-1",
          "username": "silverbolt"
        },
        "company_type": "mbo",
        "created_on": "2021-02-25T15:21:51.526000+00:00",
        "created_by": {
          "user_id": "123",
          "username": "917827311650_22960"
        },
        "modified_on": "2021-02-25T17:44:55.722000+00:00",
        "name": "Cache Company"
      },
      "created_by": {
        "user_id": "123",
        "username": "917827311650_22960"
      }
    }
  ],
  "page": {
    "current": 1,
    "size": 1,
    "has_previous": false,
    "has_next": false,
    "item_count": 1
  }
}
```
</details>









---


#### createCompanyBrandMapping
Create a company brand mapping.




```swift
client.companyprofile.createCompanyBrandMapping(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CompanyBrandPostRequestSerializer | yes | Request body |


This API allows to create a company brand mapping, for a already existing brand in the system.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getLocations
Get list of locations




```swift
client.companyprofile.getLocations(storeType: storeType, q: q, stage: stage, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| storeType | String? | no | Helps to sort the location list on the basis of location type. |   
| q | String? | no | Query that is to be searched. |   
| stage | String? | no | to filter companies on basis of verified or unverified companies. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |  



This API allows to view all the locations asscoiated to a company.

*Returned Response:*




[LocationListSerializer](#LocationListSerializer)

Company profile object. See example below or refer `LocationListSerializer` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "company": {
        "business_type": "huf",
        "stage": "complete",
        "uid": 1,
        "addresses": [
          {
            "city": "Mumbai Suburban",
            "latitude": 19.058461,
            "longitude": 72.871395,
            "address1": "Chunabhatti Phatak, Maharashtra Nagar, Maharashtra Nagar, ",
            "country_code": "IN",
            "state": "Maharashtra",
            "country": "India",
            "pincode": 400070,
            "address_type": "office"
          },
          {
            "city": "Mumbai Suburban",
            "latitude": 19.058461,
            "longitude": 72.871395,
            "address1": "Chunabhatti Phatak, Maharashtra Nagar, Maharashtra Nagar, ",
            "country_code": "IN",
            "state": "Maharashtra",
            "country": "India",
            "pincode": 400070,
            "address_type": "registered"
          }
        ],
        "modified_by": {
          "user_id": "-1",
          "username": "silverbolt"
        },
        "company_type": "mbo",
        "created_on": "2021-02-25T15:21:51.526000+00:00",
        "created_by": {
          "user_id": "123",
          "username": "917827311650_22960"
        },
        "modified_on": "2021-02-25T17:44:55.722000+00:00",
        "name": "Cache Company"
      },
      "address": {
        "city": "MUMBAI",
        "latitude": 19.4232024,
        "longitude": 72.8231511,
        "address1": "A/204, SAI VANDAN, NARAYAN NAGAR, TULINJ ROAD",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": 401209
      },
      "timing": [
        {
          "closing": {
            "minute": 0,
            "hour": 22
          },
          "opening": {
            "minute": 0,
            "hour": 11
          },
          "open": true,
          "weekday": "monday"
        },
        {
          "closing": {
            "minute": 0,
            "hour": 22
          },
          "opening": {
            "minute": 0,
            "hour": 11
          },
          "open": true,
          "weekday": "tuesday"
        },
        {
          "closing": {
            "minute": 0,
            "hour": 22
          },
          "opening": {
            "minute": 0,
            "hour": 11
          },
          "open": true,
          "weekday": "wednesday"
        },
        {
          "closing": {
            "minute": 0,
            "hour": 22
          },
          "opening": {
            "minute": 0,
            "hour": 11
          },
          "open": true,
          "weekday": "thursday"
        },
        {
          "closing": {
            "minute": 0,
            "hour": 22
          },
          "opening": {
            "minute": 0,
            "hour": 11
          },
          "open": true,
          "weekday": "friday"
        },
        {
          "closing": {
            "minute": 0,
            "hour": 22
          },
          "opening": {
            "minute": 0,
            "hour": 11
          },
          "open": true,
          "weekday": "saturday"
        },
        {
          "closing": {
            "minute": 0,
            "hour": 22
          },
          "opening": {
            "minute": 0,
            "hour": 11
          },
          "open": true,
          "weekday": "sunday"
        }
      ],
      "documents": [],
      "display_name": "new store",
      "manager": {
        "name": "Yrf",
        "mobile_no": {
          "country_code": 91,
          "number": "83456774567"
        },
        "email": "gbp@jkl.com"
      },
      "code": "code2",
      "product_return_config": {
        "on_same_store": true
      },
      "created_on": "2021-02-25T15:22:04.913000+00:00",
      "created_by": {
        "user_id": "123",
        "username": "917827311650_22960"
      },
      "name": "location2",
      "gst_credentials": {
        "e_invoice": {
          "enabled": false
        }
      },
      "store_type": "high_street",
      "contact_numbers": [
        {
          "country_code": 91,
          "number": "7208229698"
        }
      ],
      "stage": "complete",
      "uid": 2,
      "notification_emails": []
    }
  ],
  "page": {
    "current": 1,
    "size": 1,
    "has_previous": false,
    "has_next": false,
    "item_count": 1
  }
}
```
</details>









---


#### createLocation
Create a location asscoiated to a company.




```swift
client.companyprofile.createLocation(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | LocationSerializer | yes | Request body |


This API allows to create a location associated to a company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": 1,
  "success": true
}
```
</details>









---


#### getLocationDetail
Get details of a specific location.




```swift
client.companyprofile.getLocationDetail(locationId: locationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| locationId | String | yes | Id of the location which you want to view. |  



This API helps to get data associated to a specific location.

*Returned Response:*




[GetLocationSerializer](#GetLocationSerializer)

Brand object. See example below or refer `GetLocationSerializer` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "verified_on": "2021-02-25T15:22:07.140000+00:00",
  "company": {
    "business_type": "huf",
    "stage": "complete",
    "uid": 1,
    "addresses": [
      {
        "city": "Mumbai Suburban",
        "latitude": 19.058461,
        "longitude": 72.871395,
        "address1": "Chunabhatti Phatak, Maharashtra Nagar, Maharashtra Nagar, ",
        "country_code": "IN",
        "state": "Maharashtra",
        "country": "India",
        "pincode": 400070,
        "address_type": "office"
      },
      {
        "city": "Mumbai Suburban",
        "latitude": 19.058461,
        "longitude": 72.871395,
        "address1": "Chunabhatti Phatak, Maharashtra Nagar, Maharashtra Nagar, ",
        "country_code": "IN",
        "state": "Maharashtra",
        "country": "India",
        "pincode": 400070,
        "address_type": "registered"
      }
    ],
    "modified_by": {
      "user_id": "-1",
      "username": "silverbolt"
    },
    "company_type": "mbo",
    "created_by": {
      "user_id": "123",
      "username": "917827311650_22960"
    },
    "name": "Cache Company"
  },
  "address": {
    "city": "MUMBAI",
    "landmark": "",
    "latitude": 19.4232024,
    "longitude": 72.8231511,
    "address2": "",
    "address1": "A/204, SAI VANDAN, NARAYAN NAGAR, TULINJ ROAD",
    "state": "MAHARASHTRA",
    "country": "INDIA",
    "pincode": 401209
  },
  "timing": [
    {
      "closing": {
        "minute": 0,
        "hour": 22
      },
      "opening": {
        "minute": 0,
        "hour": 11
      },
      "open": true,
      "weekday": "monday"
    },
    {
      "closing": {
        "minute": 0,
        "hour": 22
      },
      "opening": {
        "minute": 0,
        "hour": 11
      },
      "open": true,
      "weekday": "tuesday"
    },
    {
      "closing": {
        "minute": 0,
        "hour": 22
      },
      "opening": {
        "minute": 0,
        "hour": 11
      },
      "open": true,
      "weekday": "wednesday"
    },
    {
      "closing": {
        "minute": 0,
        "hour": 22
      },
      "opening": {
        "minute": 0,
        "hour": 11
      },
      "open": true,
      "weekday": "thursday"
    },
    {
      "closing": {
        "minute": 0,
        "hour": 22
      },
      "opening": {
        "minute": 0,
        "hour": 11
      },
      "open": true,
      "weekday": "friday"
    },
    {
      "closing": {
        "minute": 0,
        "hour": 22
      },
      "opening": {
        "minute": 0,
        "hour": 11
      },
      "open": true,
      "weekday": "saturday"
    },
    {
      "closing": {
        "minute": 0,
        "hour": 22
      },
      "opening": {
        "minute": 0,
        "hour": 11
      },
      "open": true,
      "weekday": "sunday"
    }
  ],
  "documents": [],
  "warnings": {},
  "display_name": "new store",
  "manager": {
    "name": "Yrf",
    "mobile_no": {
      "country_code": 91,
      "number": "83456774567"
    },
    "email": "gbp@jkl.com"
  },
  "code": "store1",
  "product_return_config": {
    "on_same_store": true
  },
  "modified_by": {
    "user_id": "-1",
    "username": "silverbolt"
  },
  "created_by": {
    "user_id": "123",
    "username": "917827311650_22960"
  },
  "name": "edited_store",
  "gst_credentials": {
    "e_invoice": {
      "enabled": false
    }
  },
  "verified_by": {
    "user_id": "-1",
    "username": "silverbolt"
  },
  "store_type": "high_street",
  "contact_numbers": [
    {
      "country_code": 91,
      "number": "7208229698"
    }
  ],
  "stage": "verified",
  "uid": 1,
  "integration_type": {
    "inventory": "pulse",
    "order": "pulse"
  },
  "notification_emails": []
}
```
</details>









---


#### updateLocation
Edit a location asscoiated to a company.




```swift
client.companyprofile.updateLocation(locationId: locationId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| locationId | String | yes | Id of the location which you want to edit. |  
| body | LocationSerializer | yes | Request body |


This API allows to edit a location associated to a company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": 1,
  "success": true
}
```
</details>









---


#### createLocationBulk
Create a location asscoiated to a company in bulk.




```swift
client.companyprofile.createLocationBulk(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BulkLocationSerializer | yes | Request body |


This API allows to create a location associated to a company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "10 stores inserted",
  "success": true
}
```
</details>









---



### Schemas

 
 
 #### [GetAddressSerializer](#GetAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | longitude | Double? |  yes  |  |

---


 
 
 #### [UserSerializer](#UserSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | contact | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | legalName | String? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | url | String? |  yes  |  |
 | value | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [Website](#Website)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [BusinessDetails](#BusinessDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | website | [Website](#Website)? |  yes  |  |

---


 
 
 #### [BusinessCountryInfo](#BusinessCountryInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [SellerPhoneNumber](#SellerPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | Int |  no  |  |
 | number | String |  no  |  |

---


 
 
 #### [ContactDetails](#ContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | emails | [String]? |  yes  |  |
 | phone | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |

---


 
 
 #### [GetCompanyProfileSerializerResponse](#GetCompanyProfileSerializerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | name | String? |  yes  |  |
 | uid | Int |  no  |  |
 | businessType | String |  no  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | businessInfo | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | businessDetails | [BusinessDetails](#BusinessDetails)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | companyType | String |  no  |  |
 | warnings | [String: Any]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | businessCountryInfo | [BusinessCountryInfo](#BusinessCountryInfo)? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | contactDetails | [ContactDetails](#ContactDetails)? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String |  no  |  |
 | addressType | String |  no  |  |
 | landmark | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | latitude | Double |  no  |  |
 | countryCode | String? |  yes  |  |
 | address1 | String |  no  |  |
 | city | String |  no  |  |
 | country | String |  no  |  |
 | pincode | Int |  no  |  |
 | longitude | Double |  no  |  |

---


 
 
 #### [UpdateCompany](#UpdateCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addresses | [[CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)]? |  yes  |  |
 | name | String? |  yes  |  |
 | businessType | String? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | companyType | String? |  yes  |  |
 | businessInfo | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | businessDetails | [BusinessDetails](#BusinessDetails)? |  yes  |  |
 | contactDetails | [ContactDetails](#ContactDetails)? |  yes  |  |

---


 
 
 #### [SuccessResponse](#SuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [DocumentsObj](#DocumentsObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pending | Int? |  yes  |  |
 | verified | Int? |  yes  |  |

---


 
 
 #### [MetricsSerializer](#MetricsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeDocuments | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | brand | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | companyDocuments | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | stage | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | product | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | store | [DocumentsObj](#DocumentsObj)? |  yes  |  |

---


 
 
 #### [UserSerializer1](#UserSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | contact | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [BrandBannerSerializer](#BrandBannerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | portrait | String? |  yes  |  |
 | landscape | String? |  yes  |  |

---


 
 
 #### [GetBrandResponseSerializer](#GetBrandResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String? |  yes  |  |
 | description | String? |  yes  |  |
 | name | String |  no  |  |
 | customJson | [String: Any]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | localeLanguage | [String: Any]? |  yes  |  |
 | modifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | verifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer)? |  yes  |  |
 | stage | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | synonyms | [String]? |  yes  |  |
 | logo | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | createdBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |

---


 
 
 #### [CreateUpdateBrandRequestSerializer](#CreateUpdateBrandRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | synonyms | [String]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | description | String? |  yes  |  |
 | name | String |  no  |  |
 | logo | String |  no  |  |
 | brandTier | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | localeLanguage | [String: Any]? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | nextId | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | type | String |  no  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |

---


 
 
 #### [GetCompanySerializer](#GetCompanySerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | name | String? |  yes  |  |
 | businessType | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | companyType | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | uid | Int? |  yes  |  |

---


 
 
 #### [CompanyBrandSerializer](#CompanyBrandSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company | [GetCompanySerializer](#GetCompanySerializer)? |  yes  |  |
 | modifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | brand | [GetBrandResponseSerializer](#GetBrandResponseSerializer)? |  yes  |  |
 | verifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | createdBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |

---


 
 
 #### [CompanyBrandListSerializer](#CompanyBrandListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[CompanyBrandSerializer](#CompanyBrandSerializer)]? |  yes  |  |

---


 
 
 #### [CompanyBrandPostRequestSerializer](#CompanyBrandPostRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | brands | [Int] |  no  |  |
 | company | Int |  no  |  |

---


 
 
 #### [InvoiceCredSerializer](#InvoiceCredSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | password | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eWaybill | [InvoiceCredSerializer](#InvoiceCredSerializer)? |  yes  |  |
 | eInvoice | [InvoiceCredSerializer](#InvoiceCredSerializer)? |  yes  |  |

---


 
 
 #### [LocationTimingSerializer](#LocationTimingSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minute | Int? |  yes  |  |
 | hour | Int? |  yes  |  |

---


 
 
 #### [LocationDayWiseSerializer](#LocationDayWiseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opening | [LocationTimingSerializer](#LocationTimingSerializer)? |  yes  |  |
 | closing | [LocationTimingSerializer](#LocationTimingSerializer)? |  yes  |  |
 | open | Bool |  no  |  |
 | weekday | String |  no  |  |

---


 
 
 #### [LocationManagerSerializer](#LocationManagerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | mobileNo | [SellerPhoneNumber](#SellerPhoneNumber) |  no  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [LocationIntegrationType](#LocationIntegrationType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | String? |  yes  |  |
 | inventory | String? |  yes  |  |

---


 
 
 #### [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeUid | Int? |  yes  |  |
 | onSameStore | Bool? |  yes  |  |

---


 
 
 #### [GetLocationSerializer](#GetLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [GetAddressSerializer](#GetAddressSerializer) |  no  |  |
 | name | String |  no  |  |
 | code | String |  no  |  |
 | customJson | [String: Any]? |  yes  |  |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)? |  yes  |  |
 | storeType | String? |  yes  |  |
 | displayName | String |  no  |  |
 | uid | Int? |  yes  |  |
 | modifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | verifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | phoneNumber | String |  no  |  |
 | verifiedOn | String? |  yes  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)]? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer)? |  yes  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer)? |  yes  |  |
 | integrationType | [LocationIntegrationType](#LocationIntegrationType)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | createdBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)? |  yes  |  |

---


 
 
 #### [LocationListSerializer](#LocationListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetLocationSerializer](#GetLocationSerializer)]? |  yes  |  |

---


 
 
 #### [GetAddressSerializer1](#GetAddressSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | longitude | Double? |  yes  |  |

---


 
 
 #### [LocationSerializer](#LocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [GetAddressSerializer1](#GetAddressSerializer1) |  no  |  |
 | company | Int |  no  |  |
 | name | String |  no  |  |
 | code | String |  no  |  |
 | customJson | [String: Any]? |  yes  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)? |  yes  |  |
 | storeType | String? |  yes  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)]? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | stage | String? |  yes  |  |
 | displayName | String |  no  |  |
 | uid | Int? |  yes  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer)? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)? |  yes  |  |

---


 
 
 #### [BulkLocationSerializer](#BulkLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[LocationSerializer](#LocationSerializer)]? |  yes  |  |

---



