



##### [Back to Platform docs](./README.md)

## CompanyProfile Methods

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




[ProfileSuccessResponse](#ProfileSuccessResponse)

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




[ProfileSuccessResponse](#ProfileSuccessResponse)

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




[ProfileSuccessResponse](#ProfileSuccessResponse)

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




[ProfileSuccessResponse](#ProfileSuccessResponse)

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
client.companyprofile.getLocations(storeType: storeType, q: q, stage: stage, pageNo: pageNo, pageSize: pageSize, locationIds: locationIds) { (response, error) in
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
| locationIds | [Int]? | no | Helps to filter stores on the basis of uids. |  



This API allows to view all the locations associated to a company.

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
Create a location associated to a company.




```swift
client.companyprofile.createLocation(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | LocationSerializer | yes | Request body |


This API allows to edit a location associated to a company.

*Returned Response:*




[ProfileSuccessResponse](#ProfileSuccessResponse)

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




[ProfileSuccessResponse](#ProfileSuccessResponse)

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




[ProfileSuccessResponse](#ProfileSuccessResponse)

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

 
 
 #### [CompanyTaxesSerializer](#CompanyTaxesSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | effectiveDate | String? |  yes  |  |
 | rate | Double? |  yes  |  |
 | enable | Bool? |  yes  |  |

---


 
 
 #### [BusinessCountryInfo](#BusinessCountryInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [UserSerializer](#UserSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | contact | String? |  yes  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | verified | Bool? |  yes  |  |
 | url | String? |  yes  |  |
 | legalName | String? |  yes  |  |
 | value | String |  no  |  |

---


 
 
 #### [GetAddressSerializer](#GetAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int? |  yes  |  |
 | landmark | String? |  yes  |  |
 | country | String? |  yes  |  |
 | city | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | state | String? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | address2 | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

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


 
 
 #### [SellerPhoneNumber](#SellerPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | String |  no  |  |
 | countryCode | Int |  no  |  |

---


 
 
 #### [ContactDetails](#ContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | emails | [String]? |  yes  |  |

---


 
 
 #### [GetCompanyProfileSerializerResponse](#GetCompanyProfileSerializerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | taxes | [[CompanyTaxesSerializer](#CompanyTaxesSerializer)]? |  yes  |  |
 | businessCountryInfo | [BusinessCountryInfo](#BusinessCountryInfo)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | mode | String? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | uid | Int |  no  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | name | String? |  yes  |  |
 | businessInfo | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | stage | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | businessDetails | [BusinessDetails](#BusinessDetails)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | companyType | String |  no  |  |
 | businessType | String |  no  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | contactDetails | [ContactDetails](#ContactDetails)? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [CompanyTaxesSerializer1](#CompanyTaxesSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | effectiveDate | String? |  yes  |  |
 | rate | Double? |  yes  |  |
 | enable | Bool? |  yes  |  |

---


 
 
 #### [CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int |  no  |  |
 | landmark | String? |  yes  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |
 | addressType | String |  no  |  |
 | state | String |  no  |  |
 | longitude | Double |  no  |  |
 | latitude | Double |  no  |  |
 | address2 | String? |  yes  |  |
 | address1 | String |  no  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [UpdateCompany](#UpdateCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyType | String? |  yes  |  |
 | businessType | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | taxes | [[CompanyTaxesSerializer1](#CompanyTaxesSerializer1)]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | businessInfo | String? |  yes  |  |
 | addresses | [[CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)]? |  yes  |  |
 | name | String? |  yes  |  |
 | businessDetails | [BusinessDetails](#BusinessDetails)? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | contactDetails | [ContactDetails](#ContactDetails)? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |

---


 
 
 #### [ProfileSuccessResponse](#ProfileSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [DocumentsObj](#DocumentsObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Int? |  yes  |  |
 | pending | Int? |  yes  |  |

---


 
 
 #### [MetricsSerializer](#MetricsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeDocuments | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | store | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | brand | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | product | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | companyDocuments | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | stage | String? |  yes  |  |

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
 | createdOn | String? |  yes  |  |
 | synonyms | [String]? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | mode | String? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String |  no  |  |
 | verifiedOn | String? |  yes  |  |
 | localeLanguage | [String: Any]? |  yes  |  |
 | stage | String? |  yes  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer)? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [CreateUpdateBrandRequestSerializer](#CreateUpdateBrandRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String |  no  |  |
 | localeLanguage | [String: Any]? |  yes  |  |
 | brandTier | String? |  yes  |  |
 | logo | String |  no  |  |
 | synonyms | [String]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer)? |  yes  |  |

---


 
 
 #### [CompanySocialAccounts](#CompanySocialAccounts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [CompanyDetails](#CompanyDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | socials | [[CompanySocialAccounts](#CompanySocialAccounts)]? |  yes  |  |
 | websiteUrl | String? |  yes  |  |

---


 
 
 #### [CompanySerializer](#CompanySerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyType | String |  no  |  |
 | businessType | String |  no  |  |
 | details | [CompanyDetails](#CompanyDetails)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | name | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | businessCountryInfo | [BusinessCountryInfo](#BusinessCountryInfo)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | stage | String? |  yes  |  |
 | marketChannels | [String]? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |

---


 
 
 #### [CompanyBrandSerializer](#CompanyBrandSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | warnings | [String: Any]? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | brand | [GetBrandResponseSerializer](#GetBrandResponseSerializer)? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | company | [CompanySerializer](#CompanySerializer)? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | current | Int? |  yes  |  |
 | size | Int? |  yes  |  |

---


 
 
 #### [CompanyBrandListSerializer](#CompanyBrandListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CompanyBrandSerializer](#CompanyBrandSerializer)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

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


 
 
 #### [GetCompanySerializer](#GetCompanySerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyType | String? |  yes  |  |
 | businessType | String? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | name | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |

---


 
 
 #### [LocationTimingSerializer](#LocationTimingSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hour | Int |  no  |  |
 | minute | Int |  no  |  |

---


 
 
 #### [LocationDayWiseSerializer](#LocationDayWiseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | weekday | String |  no  |  |
 | opening | [LocationTimingSerializer](#LocationTimingSerializer)? |  yes  |  |
 | closing | [LocationTimingSerializer](#LocationTimingSerializer)? |  yes  |  |
 | open | Bool |  no  |  |

---


 
 
 #### [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | onSameStore | Bool? |  yes  |  |
 | storeUid | Int? |  yes  |  |

---


 
 
 #### [LocationManagerSerializer](#LocationManagerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | mobileNo | [SellerPhoneNumber](#SellerPhoneNumber) |  no  |  |

---


 
 
 #### [GetLocationSerializer](#GetLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | phoneNumber | String |  no  |  |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)? |  yes  |  |
 | code | String |  no  |  |
 | createdOn | String? |  yes  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer)? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | name | String |  no  |  |
 | verifiedOn | String? |  yes  |  |
 | address | [GetAddressSerializer](#GetAddressSerializer) |  no  |  |
 | storeType | String? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | stage | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)]? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | displayName | String |  no  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)? |  yes  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer)? |  yes  |  |

---


 
 
 #### [LocationListSerializer](#LocationListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GetLocationSerializer](#GetLocationSerializer)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [LocationSerializer](#LocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String |  no  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | name | String |  no  |  |
 | address | [GetAddressSerializer](#GetAddressSerializer) |  no  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer)? |  yes  |  |
 | code | String |  no  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)]? |  yes  |  |
 | storeType | String? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | stage | String? |  yes  |  |
 | company | Int |  no  |  |

---


 
 
 #### [BulkLocationSerializer](#BulkLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[LocationSerializer](#LocationSerializer)]? |  yes  |  |

---



