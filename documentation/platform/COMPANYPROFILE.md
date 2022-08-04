



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
* [getCompanyRestrictedCategoryInfo](#getcompanyrestrictedcategoryinfo)
* [getCompanyRestrictedCategoryInfoOfOneType](#getcompanyrestrictedcategoryinfoofonetype)
* [createCompanyRestrictedCategoryDocument](#createcompanyrestrictedcategorydocument)
* [updateCompanyRestrictedCategoryDocument](#updatecompanyrestrictedcategorydocument)



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
  "company_name": "Test company",
  "modified_on": "2022-06-15T08:43:47.587000",
  "_locale_language": {},
  "slug_key": "company-brand-test-final",
  "banner": {
    "landscape": "http://cdn4.gofynd.com/media/banner/brand/original/7020_f9e91f7d501c4f2985c09bd196ed304d.jpg",
    "portrait": "http://cdn4.gofynd.com/media/banner_portrait/brand/original/7021_16fc50205c40477daf419b64ec64c64c.jpg"
  },
  "name": "company-brand-test-final",
  "warnings": {},
  "modified_by": {
    "user_id": "61bb02b3e4a82983f7236aa0",
    "username": "rajamishra_gofynd_com_02316"
  },
  "description": "Test brand",
  "created_on": "2022-06-15T08:43:46.203000",
  "company_id": 1,
  "created_by": {
    "user_id": "61bb02b3e4a82983f7236aa0",
    "username": "rajamishra_gofynd_com_02316"
  },
  "stage": "unverified",
  "uid": 2766,
  "mode": "live",
  "documents": [
    {
      "url": "https://hdn-1.addsale.com/x0/brands/pictures/portrait-banner/original/IYs5oSlUZ-Portrait-Banner.jpeg",
      "type": "test"
    }
  ],
  "logo": "http://cdn4.gofynd.com/media/logo/brand/original/4597_40d1ce44d61940d4829a3c54951bd9ee.jpg",
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
      "documents": [
        {
          "url": "https://hdn-1.addsale.com/x0/brands/pictures/square-logo/original/dHudsm4Bc-Logo.png",
          "verified": true,
          "document_type": "authorization_letter"
        }
      ],
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
  "integration_type": {
    "inventory": "pulse",
    "order": "pulse"
  },
  "notification_emails": [],
  "fulfilment_type": "DFC"
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


#### getCompanyRestrictedCategoryInfo
Get restricted category info




```swift
client.companyprofile.getCompanyRestrictedCategoryInfo() { (response, error) in
    // Use response
}
```






This API allows to view the restricted category info, i.e. the status of its stores and its restricted category info.

*Returned Response:*




[RestrictedCategoryMetricsResponseSerializer](#RestrictedCategoryMetricsResponseSerializer)

Metrics response object. See example below or refer `MetricsSerializer` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "food": {
    "unverified": 1,
    "correction": 0
  }
}
```
</details>









---


#### getCompanyRestrictedCategoryInfoOfOneType
Get restricted category info




```swift
client.companyprofile.getCompanyRestrictedCategoryInfoOfOneType() { (response, error) in
    // Use response
}
```






This API allows to view the restricted category info, i.e. the status of its stores and its restricted category info for one type of restrcited category such as food.

*Returned Response:*




[RestrictedCategoryListResponseSerializer](#RestrictedCategoryListResponseSerializer)

Metrics response object. See example below or refer `RestrictedCategorySerializer` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "store_name": "Archies Ltd",
  "store_type": "warehouse",
  "store_code": null,
  "company_id": 1,
  "category_type": "food",
  "store_id": 1,
  "documents": [
    {
      "uid": 1,
      "files": [
        {
          "url": "",
          "type": "declaration",
          "name": ""
        }
      ],
      "document_type": "fssai",
      "value": "1234567890",
      "stage": "verified",
      "issue_date": "2022-06-10T05:16:43.312000",
      "expiry_date": "2022-06-10T05:16:43.312000",
      "primary": true,
      "days_left": -5,
      "alert_type": "error"
    }
  ]
}
```
</details>









---


#### createCompanyRestrictedCategoryDocument
Create restricted category info




```swift
client.companyprofile.createCompanyRestrictedCategoryDocument() { (response, error) in
    // Use response
}
```






This API allows to create restricted category document for the given company

*Returned Response:*




[SuccessResponseSerializer](#SuccessResponseSerializer)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Success!!!"
}
```
</details>









---


#### updateCompanyRestrictedCategoryDocument
Update restricted category info




```swift
client.companyprofile.updateCompanyRestrictedCategoryDocument(documentId: documentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| documentId | String | yes | A `document_id` is a unique identifier for a particular restricted category document. |  



This API allows to update restricted category document for the given company

*Returned Response:*




[SuccessResponseSerializer](#SuccessResponseSerializer)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Success!!!"
}
```
</details>









---



### Schemas

 
 
 #### [UserSerializer](#UserSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | contact | String? |  yes  |  |
 | username | String? |  yes  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | legalName | String? |  yes  |  |
 | value | String |  no  |  |
 | verified | Bool? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [GetAddressSerializer](#GetAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address2 | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | state | String? |  yes  |  |
 | longitude | Double |  no  |  |
 | country | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | latitude | Double |  no  |  |
 | city | String? |  yes  |  |
 | pincode | Int? |  yes  |  |

---


 
 
 #### [BusinessCountryInfo](#BusinessCountryInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [CompanyTaxesSerializer](#CompanyTaxesSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rate | Double? |  yes  |  |
 | enable | Bool? |  yes  |  |
 | effectiveDate | String? |  yes  |  |

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
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | mode | String? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | corrections | [[String: Any]]? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | sellGstExemptedProducts | Bool? |  yes  |  |
 | aboutBusiness | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | stage | String? |  yes  |  |
 | uid | Int |  no  |  |
 | code | String? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | businessCountryInfo | [BusinessCountryInfo](#BusinessCountryInfo)? |  yes  |  |
 | annualTurnover | String? |  yes  |  |
 | taxes | [[CompanyTaxesSerializer](#CompanyTaxesSerializer)]? |  yes  |  |
 | businessDetails | [BusinessDetails](#BusinessDetails)? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | businessType | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | name | String? |  yes  |  |
 | businessInfo | String? |  yes  |  |
 | suppressions | [[String: Any]]? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | contactDetails | [ContactDetails](#ContactDetails)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | storeName | String? |  yes  |  |
 | companyType | String |  no  |  |

---


 
 
 #### [CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address2 | String? |  yes  |  |
 | state | String |  no  |  |
 | addressType | String |  no  |  |
 | longitude | Double |  no  |  |
 | country | String |  no  |  |
 | landmark | String? |  yes  |  |
 | address1 | String |  no  |  |
 | countryCode | String? |  yes  |  |
 | latitude | Double |  no  |  |
 | city | String |  no  |  |
 | pincode | Int |  no  |  |

---


 
 
 #### [UpdateCompany](#UpdateCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | compositeTaxation | String? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | aboutBusiness | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | code | String? |  yes  |  |
 | addresses | [[CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)]? |  yes  |  |
 | annualTurnover | String? |  yes  |  |
 | taxes | [[CompanyTaxesSerializer](#CompanyTaxesSerializer)]? |  yes  |  |
 | businessDetails | [BusinessDetails](#BusinessDetails)? |  yes  |  |
 | businessType | String? |  yes  |  |
 | websiteUrl | String? |  yes  |  |
 | name | String? |  yes  |  |
 | businessInfo | String? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | contactDetails | [ContactDetails](#ContactDetails)? |  yes  |  |
 | storeName | String? |  yes  |  |
 | companyType | String? |  yes  |  |

---


 
 
 #### [ProfileSuccessResponse](#ProfileSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | uid | Int? |  yes  |  |

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
 | brand | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | stage | String? |  yes  |  |
 | product | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | companyDocuments | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | store | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | storeDocuments | [DocumentsObj](#DocumentsObj)? |  yes  |  |

---


 
 
 #### [BrandDocumentsSerializer](#BrandDocumentsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [BrandBannerSerializer](#BrandBannerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | portrait | String |  no  |  |
 | landscape | String |  no  |  |

---


 
 
 #### [GetBrandResponseSerializer](#GetBrandResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandOwner | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | mode | String? |  yes  |  |
 | documents | [[BrandDocumentsSerializer](#BrandDocumentsSerializer)]? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | corrections | [[String: Any]]? |  yes  |  |
 | logo | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | description | String? |  yes  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer)? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | stage | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | ownerId | Int? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | synonyms | [String]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | name | String |  no  |  |
 | slugKey | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | localeLanguage | [String: Any]? |  yes  |  |

---


 
 
 #### [BrandDocumentSerializer](#BrandDocumentSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [CreateUpdateBrandRequestSerializer](#CreateUpdateBrandRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | companyId | Int? |  yes  |  |
 | synonyms | [String]? |  yes  |  |
 | logo | String |  no  |  |
 | documents | [[BrandDocumentSerializer](#BrandDocumentSerializer)]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | description | String? |  yes  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer) |  no  |  |
 | brandTier | String? |  yes  |  |
 | localeLanguage | [String: Any]? |  yes  |  |
 | uid | Int? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | itemTotal | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | size | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |

---


 
 
 #### [CompanyBrandDocumentsResponseSerializer](#CompanyBrandDocumentsResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [CompanySocialAccounts](#CompanySocialAccounts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [CompanyDetails](#CompanyDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | websiteUrl | String? |  yes  |  |
 | socials | [[CompanySocialAccounts](#CompanySocialAccounts)]? |  yes  |  |

---


 
 
 #### [CompanySerializer](#CompanySerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | marketChannels | [String]? |  yes  |  |
 | details | [CompanyDetails](#CompanyDetails)? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | companyType | String |  no  |  |
 | businessType | String |  no  |  |
 | notificationEmails | [String]? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | businessCountryInfo | [BusinessCountryInfo](#BusinessCountryInfo)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [CompanyBrandSerializer](#CompanyBrandSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | brand | [GetBrandResponseSerializer](#GetBrandResponseSerializer)? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | documents | [[CompanyBrandDocumentsResponseSerializer](#CompanyBrandDocumentsResponseSerializer)]? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | company | [CompanySerializer](#CompanySerializer)? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | corrections | [[String: Any]]? |  yes  |  |
 | stage | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [CompanyBrandListSerializer](#CompanyBrandListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[CompanyBrandSerializer](#CompanyBrandSerializer)]? |  yes  |  |

---


 
 
 #### [CompanyBrandDocumentsSerializer](#CompanyBrandDocumentsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [CompanyBrandPostRequestSerializer](#CompanyBrandPostRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | [Int] |  no  |  |
 | uid | Int? |  yes  |  |
 | documents | [[CompanyBrandDocumentsSerializer](#CompanyBrandDocumentsSerializer)]? |  yes  |  |
 | company | Int |  no  |  |

---


 
 
 #### [InvoiceCredSerializer](#InvoiceCredSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eInvoice | [InvoiceCredSerializer](#InvoiceCredSerializer)? |  yes  |  |
 | eWaybill | [InvoiceCredSerializer](#InvoiceCredSerializer)? |  yes  |  |

---


 
 
 #### [Correction](#Correction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonCode | String? |  yes  |  |
 | desc | String? |  yes  |  |

---


 
 
 #### [GetCompanySerializer](#GetCompanySerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | businessType | String? |  yes  |  |
 | companyType | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [LocationManagerSerializer](#LocationManagerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | mobileNo | [SellerPhoneNumber](#SellerPhoneNumber) |  no  |  |

---


 
 
 #### [Deactivation](#Deactivation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | reason | [String]? |  yes  |  |

---


 
 
 #### [Storeholiday](#Storeholiday)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | name | String |  no  |  |
 | year | Int |  no  |  |
 | slug | String |  no  |  |
 | endDate | String |  no  |  |
 | startDate | String |  no  |  |

---


 
 
 #### [LocationTimingSerializer](#LocationTimingSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hour | Int? |  yes  |  |
 | minute | Int? |  yes  |  |

---


 
 
 #### [LocationDayWiseSerializer](#LocationDayWiseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opening | [LocationTimingSerializer](#LocationTimingSerializer)? |  yes  |  |
 | weekday | String |  no  |  |
 | closing | [LocationTimingSerializer](#LocationTimingSerializer)? |  yes  |  |
 | open | Bool |  no  |  |

---


 
 
 #### [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeUid | Int? |  yes  |  |
 | onSameStore | Bool? |  yes  |  |

---


 
 
 #### [LocationIntegrationType](#LocationIntegrationType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | String? |  yes  |  |
 | order | String? |  yes  |  |

---


 
 
 #### [GetLocationSerializer](#GetLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | corrections | [[Correction](#Correction)]? |  yes  |  |
 | phoneNumber | String |  no  |  |
 | deactivationTime | String? |  yes  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer)? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | stage | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer)? |  yes  |  |
 | code | String |  no  |  |
 | fulfilmentType | String? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | deactivateReason | [Deactivation](#Deactivation)? |  yes  |  |
 | inventories | Int? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | name | String |  no  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | holiday | [[Storeholiday](#Storeholiday)]? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | storeType | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)]? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | integrationType | [LocationIntegrationType](#LocationIntegrationType)? |  yes  |  |
 | address | [GetAddressSerializer](#GetAddressSerializer) |  no  |  |
 | displayName | String |  no  |  |

---


 
 
 #### [LocationListSerializer](#LocationListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetLocationSerializer](#GetLocationSerializer)]? |  yes  |  |

---


 
 
 #### [Storeholiday1](#Storeholiday1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | name | String |  no  |  |
 | year | Int |  no  |  |
 | slug | String |  no  |  |
 | endDate | String |  no  |  |
 | startDate | String |  no  |  |

---


 
 
 #### [LocationSerializer](#LocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | company | Int |  no  |  |
 | warnings | [String: Any]? |  yes  |  |
 | fulfilmentType | String |  no  |  |
 | stage | String? |  yes  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | code | String |  no  |  |
 | name | String |  no  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | holiday | [[Storeholiday1](#Storeholiday1)]? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | storeType | String? |  yes  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)]? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)? |  yes  |  |
 | address | [GetAddressSerializer](#GetAddressSerializer) |  no  |  |
 | displayName | String |  no  |  |

---


 
 
 #### [BulkLocationSerializer](#BulkLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[LocationSerializer](#LocationSerializer)]? |  yes  |  |

---


 
 
 #### [DocumentObject](#DocumentObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | correctionRequested | Int? |  yes  |  |
 | unverified | Int? |  yes  |  |

---


 
 
 #### [RestrictedCategoryMetricsResponseSerializer](#RestrictedCategoryMetricsResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | drug | [DocumentObject](#DocumentObject)? |  yes  |  |
 | food | [DocumentObject](#DocumentObject)? |  yes  |  |

---


 
 
 #### [StageReasonResponse](#StageReasonResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desc | String? |  yes  |  |
 | reasonCode | String? |  yes  |  |

---


 
 
 #### [RestrictedCategoryFiles](#RestrictedCategoryFiles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [RestrictedCategoryResponseInfoSerializer](#RestrictedCategoryResponseInfoSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categoryType | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | stageReason | [[StageReasonResponse](#StageReasonResponse)]? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | expiryDate | String? |  yes  |  |
 | documentType | String? |  yes  |  |
 | documents | [[RestrictedCategoryFiles](#RestrictedCategoryFiles)]? |  yes  |  |
 | value | String? |  yes  |  |
 | issueDate | String? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | stage | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [RestrictedCategoryResponseSerializer](#RestrictedCategoryResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | fulfilmentType | String? |  yes  |  |
 | storeType | String |  no  |  |
 | uid | Int |  no  |  |
 | code | String |  no  |  |
 | restrictedCategories | [[RestrictedCategoryResponseInfoSerializer](#RestrictedCategoryResponseInfoSerializer)] |  no  |  |

---


 
 
 #### [RestrictedCategoryListResponseSerializer](#RestrictedCategoryListResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | declarationTemplate | [String: Any]? |  yes  |  |
 | items | [[RestrictedCategoryResponseSerializer](#RestrictedCategoryResponseSerializer)]? |  yes  |  |

---


 
 
 #### [SuccessResponseSerializer](#SuccessResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---



