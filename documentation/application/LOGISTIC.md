



##### [Back to Application docs](./README.md)

## Logistic Methods
The Logistics module enhances delivery operations efficiency. It enables you to retrieve data and calculate precise delivery times. You can utilize the Country Information module to serve a global customer base and implement zone mapping for efficient delivery route planning. Additionally, this module offers the capability to optimize store assignments based on various criteria, including products, settings, and ignored locations. Furthermore, it supports Custom Packaging to enhance shipment creation.

Default
* [getAllCountries](#getallcountries)
* [getPincodeZones](#getpincodezones)
* [getOptimalLocations](#getoptimallocations)
* [getLocations](#getlocations)
* [getCountries](#getcountries)
* [getCountry](#getcountry)
* [getLocalities](#getlocalities)
* [getLocality](#getlocality)
* [validateAddress](#validateaddress)




## Methods with example and description



#### getAllCountries
Get Country List




```swift
applicationClient.logistic.getAllCountries() { (response, error) in
    // Use response
}
```






Get all countries

*Returned Response:*




[CountryListResponse](#CountryListResponse)

Get Country List




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getPincodeZones
GET zone from the Pincode.




```swift
applicationClient.logistic.getPincodeZones(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetZoneFromPincodeViewRequest | yes | Request body |


This API returns zone from the Pincode View.

*Returned Response:*




[GetZoneFromPincodeViewResponse](#GetZoneFromPincodeViewResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOptimalLocations
GET zone from the Pincode.




```swift
applicationClient.logistic.getOptimalLocations(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ReAssignStoreRequest | yes | Request body |


This API returns zone from the Pincode View.

*Returned Response:*




[ReAssignStoreResponse](#ReAssignStoreResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getLocations
GET locations from the Pincode.




```swift
applicationClient.logistic.getLocations(xApplicationId: xApplicationId, xApplicationData: xApplicationData, country: country, state: state, city: city, pincode: pincode, sector: sector, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| xApplicationId | String | yes | A `x-application-id` is a unique identifier for a particular sale channel. |   
| xApplicationData | String | yes | A `x-application-data` is a unique identifier for a particular sale channel. |   
| country | String? | no | A `country` contains a specific value of the country `iso2` code. |   
| state | String? | no | A `state` contains a specific value of the state, province. |   
| city | String? | no | A `city` contains a specific value of the city. |   
| pincode | Int? | no | A `pincode` contains a specific value of the city. |   
| sector | String? | no | A `sector` contains a specific value of the city. |   
| pageNo | Int? | no | page number. |   
| pageSize | Int? | no | page size. |  



This API returns store from the Pincode View.

*Returned Response:*




[GetStoreResponse](#GetStoreResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCountries
Get all countries and associated data.




```swift
applicationClient.logistic.getCountries(onboarding: onboarding, pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| onboarding | Bool? | no | Only fetch countries which allowed for onboard on Platform. |   
| pageNo | Int? | no | page number. |   
| pageSize | Int? | no | page size. |   
| q | String? | no | search. |  



Retrieve of all countries.

*Returned Response:*




[GetCountries](#GetCountries)

Successfully retrieved all countries with associated data.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Country List 1</i></summary>

```json
{
  "value": {
    "items": [
      {
        "id": "64c6ac280000000000000000",
        "name": "INDIA",
        "type": "country",
        "display_name": "India",
        "iso2": "IN",
        "iso3": "IND",
        "timezones": [
          "Asia/Kolkata"
        ],
        "latitude": "28.6667",
        "longitude": "77.2167",
        "currency": {
          "code": "INR",
          "name": "Indian Rupee",
          "symbol": "₹"
        },
        "phone_code": "+91",
        "hierarchy": [
          {
            "name": "State",
            "slug": "state"
          },
          {
            "name": "City",
            "slug": "city"
          },
          {
            "name": "Pincode",
            "slug": "pincode"
          }
        ]
      },
      {
        "name": "UNITED STATES",
        "display_name": "USA",
        "type": "country",
        "id": "66a931280000000000000000",
        "iso2": "US",
        "iso3": "USA",
        "timezones": [
          "America/St_Johns",
          "America/Halifax",
          "America/Glace_Bay",
          "America/Moncton",
          "America/Goose_Bay",
          "America/Blanc-Sablon",
          "America/Toronto",
          "America/Iqaluit",
          "America/Atikokan",
          "America/Winnipeg",
          "America/Resolute",
          "America/Rankin_Inlet",
          "America/Regina",
          "America/Swift_Current",
          "America/Edmonton",
          "America/Cambridge_Bay",
          "America/Inuvik",
          "America/Creston",
          "America/Dawson_Creek",
          "America/Fort_Nelson",
          "America/Whitehorse",
          "America/Dawson",
          "America/Vancouver"
        ],
        "latitude": "38.8951",
        "longitude": "-77.0364",
        "currency": {
          "code": "USD",
          "name": "United States Dollar",
          "symbol": "$"
        },
        "phone_code": "+1",
        "hierarchy": [
          {
            "name": "State",
            "slug": "state"
          },
          {
            "name": "City",
            "slug": "city"
          },
          {
            "name": "Zipcode",
            "slug": "pincode"
          }
        ]
      }
    ],
    "page": {
      "current": 1,
      "has_next": true,
      "has_previous": false,
      "item_total": 2,
      "size": 1,
      "type": "number"
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; Country List 2</i></summary>

```json
{
  "value": {
    "items": [
      {
        "id": "669ea5280000000000000000",
        "name": "United Arab Emirates",
        "display_name": "United Arab Emirates",
        "type": "country",
        "iso2": "AE",
        "iso3": "ARE",
        "timezones": [
          "Asia/Dubai"
        ],
        "latitude": "24.4648",
        "longitude": "54.3618",
        "currency": {
          "code": "AED",
          "name": "United Arab Emirates Dirham",
          "symbol": "AED"
        },
        "phone_code": "+971",
        "hierarchy": [
          {
            "name": "City",
            "slug": "city"
          },
          {
            "name": "Area",
            "slug": "sector"
          }
        ]
      }
    ],
    "page": {
      "current": 1,
      "has_next": true,
      "has_previous": false,
      "item_total": 1,
      "size": 1,
      "type": "number"
    }
  }
}
```
</details>

</details>









---


#### getCountry
Get single country and associated data.




```swift
applicationClient.logistic.getCountry(countryIsoCode: countryIsoCode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| countryIsoCode | String | yes | The `country_iso_code` is ISO-2 (alpha-2) code for the country. |  



Retrieve data for a single country and address format.

*Returned Response:*




[GetCountry](#GetCountry)

Get country data.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Country 1</i></summary>

```json
{
  "value": {
    "name": "INDIA",
    "display_name": "India",
    "type": "country",
    "id": "64c6ac280000000000000000",
    "iso2": "IN",
    "iso3": "IND",
    "timezones": [
      "Asia/Kolkata"
    ],
    "latitude": "28.6667",
    "longitude": "77.2167",
    "currency": {
      "code": "INR",
      "name": "Indian Rupee",
      "symbol": "₹"
    },
    "phone_code": "+91",
    "hierarchy": [
      {
        "name": "Pincode",
        "slug": "pincode"
      },
      {
        "name": "City",
        "slug": "city"
      },
      {
        "name": "State",
        "slug": "state"
      }
    ],
    "fields": {
      "serviceability_fields": [
        "pincode"
      ],
      "address_template": {
        "checkout_form": "{address} {area}_{landmark} {pincode}_{city} {state}_{name} {phone}_{email}",
        "store_os_form": "{pincode}_{address}_{area}_{landmark}",
        "default_display": "{address} {area}_{landmark}_{city} {state} {pincode}_{country}"
      },
      "address": [
        {
          "display_name": "Flat No/House No",
          "slug": "address",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": null,
          "validation": null,
          "error_text": null
        },
        {
          "display_name": "Building Name/street",
          "slug": "area",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": null,
          "validation": null,
          "error_text": null
        },
        {
          "display_name": "Locality/Landmark",
          "slug": "landmark",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": null,
          "validation": null,
          "error_text": null
        },
        {
          "display_name": "Pincode",
          "slug": "pincode",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": {
            "get_one": {
              "operation_id": "getLocality",
              "params": {
                "path": {
                  "locality_value": "400601",
                  "locality_type": "pincode"
                }
              }
            }
          },
          "validation": {
            "type": "regex",
            "regex": {
              "value": "^[0-9]{6}$",
              "length": {
                "min": 6,
                "max": 6
              }
            }
          },
          "error_text": "Invalid Pincode"
        },
        {
          "display_name": "City",
          "slug": "city",
          "input": "textbox",
          "required": true,
          "edit": false,
          "values": null,
          "validation": null,
          "error_text": "Invalid City"
        },
        {
          "display_name": "State",
          "slug": "state",
          "input": "textbox",
          "required": true,
          "edit": false,
          "values": null,
          "validation": null,
          "error_text": "Invalid State"
        },
        {
          "display_name": "Full Name",
          "slug": "name",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": null,
          "validation": {
            "type": "regex",
            "regex": {
              "value": ".*",
              "length": {
                "min": null,
                "max": null
              }
            }
          },
          "error_text": null
        },
        {
          "display_name": "Mobile Number",
          "slug": "phone",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": null,
          "validation": {
            "type": "regex",
            "regex": {
              "value": "^\\\\+[0-9]{2}\\\\s[0-9]{10}$",
              "length": {
                "min": 13,
                "max": 13
              }
            }
          },
          "error_text": "Invalid Phone Number"
        },
        {
          "display_name": "Email",
          "slug": "email",
          "input": "textbox",
          "required": false,
          "edit": true,
          "values": null,
          "validation": {
            "type": "regex",
            "regex": {
              "value": "^[\\w\\.-]+@[a-zA-Z\\d\\.-]+\\.[a-zA-Z]{2,}$",
              "length": {
                "min": null,
                "max": null
              }
            }
          },
          "error_text": "Invalid Email"
        }
      ]
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; Country 2</i></summary>

```json
{
  "value": {
    "name": "United Arab Emirates",
    "display_name": "United Arab Emirates",
    "type": "country",
    "id": "669ea5280000000000000000",
    "iso2": "AE",
    "iso3": "ARE",
    "timezones": [
      "Asia/Dubai"
    ],
    "latitude": "24.4648",
    "longitude": "54.3618",
    "currency": {
      "code": "AED",
      "name": "United Arab Emirates Dirham",
      "symbol": "AED"
    },
    "phone_code": "+971",
    "hierarchy": [
      {
        "name": "Area",
        "slug": "sector"
      },
      {
        "name": "City",
        "slug": "city"
      }
    ],
    "fields": {
      "serviceability_fields": [
        "city",
        "sector"
      ],
      "address_template": {
        "checkout_form": "{address} {area}_{landmark} {pincode}_{city} {state}_{name} {phone}_{email}",
        "store_os_form": "{address} {area}_{landmark} {pincode}_{city} {state}_{name} {phone}_{email}",
        "default_display": "{address} {area}_{landmark}_{city}_{sector} {country}"
      },
      "address": [
        {
          "display_name": "Flat No/House No",
          "slug": "address",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": null,
          "validation": null,
          "error_text": null
        },
        {
          "display_name": "Building Name/street",
          "slug": "area",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": null,
          "validation": null,
          "error_text": null
        },
        {
          "display_name": "Locality/Landmark",
          "slug": "landmark",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": null,
          "validation": null,
          "error_text": null
        },
        {
          "display_name": "City",
          "slug": "city",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": {
            "get_all": {
              "operation_id": "getLocalities",
              "params": {
                "path": {
                  "locality_type": "city"
                }
              }
            }
          },
          "validation": null,
          "error_text": "Invalid Pincode"
        },
        {
          "display_name": "Area",
          "slug": "sector",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": {
            "get_all": {
              "operation_id": "getLocalities",
              "params": {
                "path": {
                  "locality_type": "sector"
                },
                "query": {
                  "city": "THANE"
                }
              }
            }
          },
          "validation": null,
          "error_text": "Invalid Area"
        },
        {
          "display_name": "Full Name",
          "slug": "name",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": null,
          "validation": {
            "type": "regex",
            "regex": {
              "value": ".*",
              "length": {
                "min": null,
                "max": null
              }
            }
          },
          "error_text": null
        },
        {
          "display_name": "Mobile Number",
          "slug": "phone",
          "input": "textbox",
          "required": true,
          "edit": true,
          "values": null,
          "validation": {
            "type": "regex",
            "regex": {
              "value": "^\\\\+[0-9]{2}\\\\s[0-9]{10}$",
              "length": {
                "min": 13,
                "max": 13
              }
            }
          },
          "error_text": "Invalid Phone Number"
        },
        {
          "display_name": "Email",
          "slug": "email",
          "input": "textbox",
          "required": false,
          "edit": true,
          "values": null,
          "validation": {
            "type": "regex",
            "regex": {
              "value": "^[\\w\\.-]+@[a-zA-Z\\d\\.-]+\\.[a-zA-Z]{2,}$",
              "length": {
                "min": null,
                "max": null
              }
            }
          },
          "error_text": "Invalid Email"
        }
      ]
    }
  }
}
```
</details>

</details>









---


#### getLocalities
Get Localities.




```swift
applicationClient.logistic.getLocalities(localityType: localityType, country: country, state: state, city: city, pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| localityType | String | yes | A `locality_type` contains unique geographical division. |   
| country | String? | no | A `country` contains a specific value of the country iso2 code. |   
| state | String? | no | A `state` contains a specific value of the state, province. |   
| city | String? | no | A `city` contains a specific value of the city. |   
| pageNo | Int? | no | page number. |   
| pageSize | Int? | no | page size. |   
| q | String? | no | search. |  



Get Localities data.

*Returned Response:*




[GetLocalities](#GetLocalities)

Get Localities data




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Country 1</i></summary>

```json
{
  "value": {
    "items": [
      {
        "id": "64b78b60707446a37f2afbbb",
        "name": "Maharashtra",
        "display_name": "Maharashtra",
        "type": "state",
        "parent_ids": [
          "64b78b60707446a37f2aec6f"
        ]
      },
      {
        "id": "64c7fda80000000000000000",
        "name": "400603",
        "display_name": "400603",
        "type": "pincode",
        "parent_ids": [
          "64b78b60707446a37f2aec6f",
          "64b78b60707446a37f2aec4b",
          "64b78b60707446a37f2aec43"
        ]
      }
    ],
    "page": {
      "current": 1,
      "has_next": true,
      "has_previous": false,
      "item_total": 2,
      "size": 1,
      "type": "number"
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; Country 2</i></summary>

```json
{
  "value": {
    "items": [
      {
        "id": "63d95e280000000000000000",
        "name": "Thane",
        "display_name": "Thane",
        "type": "city",
        "parent_ids": [
          "64b78b60707446a37f2aec6f",
          "64b78b60707446a37f2aec4b"
        ]
      }
    ],
    "page": {
      "current": 1,
      "has_next": true,
      "has_previous": false,
      "item_total": 1,
      "size": 1,
      "type": "number"
    }
  }
}
```
</details>

</details>









---


#### getLocality
Get Locality API




```swift
applicationClient.logistic.getLocality(localityType: localityType, localityValue: localityValue, country: country, state: state, city: city) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| localityType | String | yes | A `locality_type` contains value geographical division. |   
| localityValue | String | yes | A `locality_value` contains a specific name of the locality. |   
| country | String? | no | A `country` contains a specific value of the country iso2 code. |   
| state | String? | no | A `state` contains a specific value of the state, province. |   
| city | String? | no | A `city` contains a specific value of the city. |  



Get Locality data

*Returned Response:*




[GetLocality](#GetLocality)

Get Locality data




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Country 1</i></summary>

```json
{
  "value": {
    "id": "649f1f280000000000000000",
    "name": "ABU DHABI",
    "display_name": "Abu Dhabi",
    "type": "city",
    "parent_ids": [
      "64b78b60707446a37f2aec6f"
    ],
    "parents": {
      "country": {
        "name": "United Arab Emirates",
        "id": "64b78b60707486a37f2apd00",
        "display_name": "United Arab Emirates",
        "type": "country",
        "parent_ids": []
      }
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; Country 2</i></summary>

```json
{
  "value": {
    "id": "649887a80000000000000000",
    "name": "400603",
    "display_name": "400603",
    "type": "pincode",
    "parent_ids": [
      "64b78b60707446a37f2aec6f",
      "64b78b60707446a37f2aec4b"
    ],
    "localities": [
      {
        "name": "THANE",
        "id": "64b78b60707446a37f2aed00",
        "display_name": "Thane",
        "type": "city",
        "parent_ids": [
          "64b78b60707446a37f2aec6f",
          "64b78b60707446a37f2aec4b"
        ]
      },
      {
        "name": "MAHARASHTRA",
        "id": "64b78b60707446a37f2aed00",
        "display_name": "Maharashtra",
        "type": "state",
        "parent_ids": [
          "64b78b60707446a37f2aec6f"
        ]
      },
      {
        "name": "INDIA",
        "id": "64b78b60707486a37f2apd00",
        "display_name": "India",
        "type": "country",
        "parent_ids": []
      }
    ]
  }
}
```
</details>

</details>









---


#### validateAddress
Validate given address wrt template




```swift
applicationClient.logistic.validateAddress(countryIsoCode: countryIsoCode, templateName: templateName, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| countryIsoCode | String | yes | The ISO code of the country. |   
| templateName | String | yes | The type of address form. |  
| body | ValidateAddressRequest | yes | Request body |


Validate given address wrt template

*Returned Response:*




[ValidateAddressRequest](#ValidateAddressRequest)

Valid




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; India</i></summary>

```json
{
  "value": {
    "address": "WeWork",
    "area": "Andheri",
    "landmark": "Police Station",
    "pincode": "400093",
    "city": "Mumbai",
    "state": "Maharashtra",
    "name": "WeWork",
    "phone": "9876543210",
    "email": "wework@w.com"
  }
}
```
</details>

<details>
<summary><i>&nbsp; UAE</i></summary>

```json
{
  "value": {
    "address1": "WeWork",
    "address2": "Andheri",
    "landmark": "Police Station",
    "city": "Abu Dhabi",
    "sector": "Abu Dhabi",
    "name": "WeWork",
    "phone": "9876543210",
    "email": "wework@w.com"
  }
}
```
</details>

</details>









---




### Schemas

 
 
 #### [GetStoreResponse](#GetStoreResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[StoreItemResponse](#StoreItemResponse)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [StoreItemResponse](#StoreItemResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | storeType | String? |  yes  |  |
 | fulfillmentType | String? |  yes  |  |
 | processingTime | Int? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |

---


 
 
 #### [ValidateAddressRequest](#ValidateAddressRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | String? |  yes  | A string representing the complete address, combining address line 1, address line 2, area, landmark, sector, city, state, and pincode. This provides a comprehensive view of the address details. |
 | address1 | String? |  yes  | A string representing the first line of the address, typically containing street or building information. |
 | address2 | String? |  yes  | A string representing the second line of the address, which can be used for additional address details if needed. |
 | area | String? |  yes  | A string specifying the locality or area associated with the address. |
 | landmark | String? |  yes  | A string representing a prominent nearby landmark that aids in locating the address. |
 | pincode | String? |  yes  | A string indicating the postal code or PIN code of the address area. |
 | sector | String? |  yes  | A string specifying the sector or district of the address if applicable. |
 | city | String? |  yes  | A string denoting the city or municipality of the address. |
 | state | String? |  yes  | A string indicating the state or province of the address. |
 | name | String? |  yes  | A string representing the recipient's name or the organization name associated with the address. |
 | phone | String? |  yes  | An integer representing the recipient's contact phone number. |
 | email | String? |  yes  | A string containing the recipient's email address. |

---


 
 
 #### [PincodeParentsResponse](#PincodeParentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subType | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | name | String? |  yes  |  |
 | uid | String? |  yes  |  |

---


 
 
 #### [PincodeMetaResponse](#PincodeMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zone | String? |  yes  |  |
 | internalZoneId | Int? |  yes  |  |

---


 
 
 #### [PincodeErrorSchemaResponse](#PincodeErrorSchemaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [CountryMetaResponse](#CountryMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | isdCode | String? |  yes  |  |

---


 
 
 #### [PincodeLatLongData](#PincodeLatLongData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | coordinates | [String]? |  yes  |  |

---


 
 
 #### [PincodeDataResponse](#PincodeDataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | parents | [[PincodeParentsResponse](#PincodeParentsResponse)]? |  yes  |  |
 | meta | [PincodeMetaResponse](#PincodeMetaResponse)? |  yes  |  |
 | displayName | String? |  yes  |  |
 | error | [PincodeErrorSchemaResponse](#PincodeErrorSchemaResponse) |  no  |  |
 | metaCode | [CountryMetaResponse](#CountryMetaResponse)? |  yes  |  |
 | latLong | [PincodeLatLongData](#PincodeLatLongData)? |  yes  |  |
 | subType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | uid | String? |  yes  |  |

---


 
 
 #### [PincodeApiResponse](#PincodeApiResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [[PincodeDataResponse](#PincodeDataResponse)]? |  yes  |  |
 | error | [PincodeErrorSchemaResponse](#PincodeErrorSchemaResponse) |  no  |  |

---


 
 
 #### [TATCategoryRequest](#TATCategoryRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | level | String? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [TATArticlesRequest](#TATArticlesRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [TATCategoryRequest](#TATCategoryRequest)? |  yes  |  |
 | manufacturingTimeUnit | String? |  yes  |  |
 | manufacturingTime | Int? |  yes  |  |

---


 
 
 #### [TATLocationDetailsRequest](#TATLocationDetailsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentId | Int? |  yes  |  |
 | fromPincode | String? |  yes  |  |
 | articles | [[TATArticlesRequest](#TATArticlesRequest)]? |  yes  |  |

---


 
 
 #### [TATViewRequest](#TATViewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | toPincode | String? |  yes  |  |
 | source | String? |  yes  |  |
 | action | String? |  yes  |  |
 | identifier | String? |  yes  |  |
 | locationDetails | [[TATLocationDetailsRequest](#TATLocationDetailsRequest)]? |  yes  |  |
 | journey | String? |  yes  |  |

---


 
 
 #### [TATErrorSchemaResponse](#TATErrorSchemaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [TATTimestampResponse](#TATTimestampResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int? |  yes  |  |
 | max | Int? |  yes  |  |

---


 
 
 #### [TATFormattedResponse](#TATFormattedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | String? |  yes  |  |
 | max | String? |  yes  |  |

---


 
 
 #### [TATPromiseResponse](#TATPromiseResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | [TATTimestampResponse](#TATTimestampResponse)? |  yes  |  |
 | formatted | [TATFormattedResponse](#TATFormattedResponse)? |  yes  |  |

---


 
 
 #### [TATArticlesResponse](#TATArticlesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manufacturingTimeUnit | String? |  yes  |  |
 | error | [TATErrorSchemaResponse](#TATErrorSchemaResponse)? |  yes  |  |
 | isCodAvailable | Bool? |  yes  |  |
 | promise | [TATPromiseResponse](#TATPromiseResponse)? |  yes  |  |
 | manufacturingTime | Int? |  yes  |  |
 | category | [TATCategoryRequest](#TATCategoryRequest)? |  yes  |  |
 | manufacturingTimeSeconds | Int? |  yes  |  |

---


 
 
 #### [TATLocationDetailsResponse](#TATLocationDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentId | Int? |  yes  |  |
 | fromPincode | String? |  yes  |  |
 | articles | [[TATArticlesResponse](#TATArticlesResponse)]? |  yes  |  |

---


 
 
 #### [TATViewResponse](#TATViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | toPincode | String? |  yes  |  |
 | requestUuid | String? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | error | [TATErrorSchemaResponse](#TATErrorSchemaResponse)? |  yes  |  |
 | isCodAvailable | Bool? |  yes  |  |
 | source | String? |  yes  |  |
 | action | String? |  yes  |  |
 | stormbreakerUuid | String? |  yes  |  |
 | toCity | String? |  yes  |  |
 | identifier | String? |  yes  |  |
 | locationDetails | [[TATLocationDetailsResponse](#TATLocationDetailsResponse)]? |  yes  |  |
 | journey | String? |  yes  |  |

---


 
 
 #### [DP](#DP)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fmPriority | Int |  no  |  |
 | lmPriority | Int |  no  |  |
 | rvpPriority | Int |  no  |  |
 | paymentMode | String |  no  |  |
 | operations | [String] |  no  |  |
 | areaCode | String? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | internalAccountId | String? |  yes  |  |
 | externalAccountId | String? |  yes  |  |
 | transportMode | String? |  yes  |  |

---


 
 
 #### [LogisticsResponse](#LogisticsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dp | [String: [DP](#DP)]? |  yes  |  |

---


 
 
 #### [CountryEntityResponse](#CountryEntityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [CountryMetaResponse](#CountryMetaResponse)? |  yes  |  |
 | logistics | [LogisticsResponse](#LogisticsResponse)? |  yes  |  |
 | displayName | String? |  yes  |  |
 | type | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | parentId | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | uid | String? |  yes  |  |

---


 
 
 #### [CountryListResponse](#CountryListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [[CountryEntityResponse](#CountryEntityResponse)]? |  yes  |  |

---


 
 
 #### [GetZoneFromPincodeViewRequest](#GetZoneFromPincodeViewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | String |  no  |  |
 | country | String |  no  |  |

---


 
 
 #### [GetZoneFromPincodeViewResponse](#GetZoneFromPincodeViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | serviceabilityType | String |  no  |  |
 | zones | [String] |  no  |  |

---


 
 
 #### [ReAssignStoreRequest](#ReAssignStoreRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configuration | [String: Any] |  no  |  |
 | toPincode | String |  no  |  |
 | ignoredLocations | [Int] |  no  |  |
 | identifier | String |  no  |  |
 | articles | [[String: Any]] |  no  |  |

---


 
 
 #### [ReAssignStoreResponse](#ReAssignStoreResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | toPincode | String |  no  |  |
 | pystormbreakerUuid | String |  no  |  |
 | success | Bool |  no  |  |
 | error | [String: Any] |  no  |  |
 | assignedStores | [[String: Any]]? |  yes  |  |

---


 
 
 #### [CountryHierarchy](#CountryHierarchy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |

---


 
 
 #### [CurrencyObject](#CurrencyObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | name | String? |  yes  |  |
 | symbol | String? |  yes  |  |

---


 
 
 #### [CountryObject](#CountryObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | iso2 | String? |  yes  |  |
 | iso3 | String? |  yes  |  |
 | timezones | [String]? |  yes  |  |
 | hierarchy | [[CountryHierarchy](#CountryHierarchy)]? |  yes  |  |
 | phoneCode | String? |  yes  |  |
 | latitude | String? |  yes  |  |
 | longitude | String? |  yes  |  |
 | currency | [CurrencyObject](#CurrencyObject)? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [GetCountries](#GetCountries)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CountryObject](#CountryObject)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [GetOneOrAllPath](#GetOneOrAllPath)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | localityType | String? |  yes  |  |
 | localityValue | String? |  yes  |  |

---


 
 
 #### [GetOneOrAllQuery](#GetOneOrAllQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | state | String? |  yes  |  |
 | city | String? |  yes  |  |
 | sector | String? |  yes  |  |

---


 
 
 #### [GetOneOrAllParams](#GetOneOrAllParams)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | path | [GetOneOrAllPath](#GetOneOrAllPath)? |  yes  |  |
 | query | [GetOneOrAllQuery](#GetOneOrAllQuery)? |  yes  |  |

---


 
 
 #### [GetOneOrAll](#GetOneOrAll)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | operationId | String? |  yes  |  |
 | params | [GetOneOrAllParams](#GetOneOrAllParams)? |  yes  |  |

---


 
 
 #### [LengthValidation](#LengthValidation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int? |  yes  |  |
 | max | Int? |  yes  |  |

---


 
 
 #### [FieldValidationRegex](#FieldValidationRegex)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | length | [LengthValidation](#LengthValidation)? |  yes  |  |

---


 
 
 #### [FieldValidation](#FieldValidation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | regex | [FieldValidationRegex](#FieldValidationRegex)? |  yes  |  |

---


 
 
 #### [GetCountryFieldsAddressValues](#GetCountryFieldsAddressValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | getOne | [GetOneOrAll](#GetOneOrAll)? |  yes  |  |
 | getAll | [GetOneOrAll](#GetOneOrAll)? |  yes  |  |

---


 
 
 #### [GetCountryFieldsAddress](#GetCountryFieldsAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String |  no  |  |
 | slug | String |  no  |  |
 | required | Bool |  no  |  |
 | edit | Bool? |  yes  |  |
 | input | String |  no  |  |
 | validation | [FieldValidation](#FieldValidation)? |  yes  |  |
 | values | [GetCountryFieldsAddressValues](#GetCountryFieldsAddressValues)? |  yes  |  |
 | errorText | String? |  yes  |  |

---


 
 
 #### [GetCountryFieldsAddressTemplate](#GetCountryFieldsAddressTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | checkoutForm | String |  no  |  |
 | storeOsForm | String |  no  |  |
 | defaultDisplay | String |  no  |  |

---


 
 
 #### [GetCountryFields](#GetCountryFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [[GetCountryFieldsAddress](#GetCountryFieldsAddress)] |  no  |  |
 | serviceabilityFields | [String] |  no  |  |
 | addressTemplate | [GetCountryFieldsAddressTemplate](#GetCountryFieldsAddressTemplate) |  no  |  |

---


 
 
 #### [GetCountry](#GetCountry)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | iso2 | String? |  yes  |  |
 | iso3 | String? |  yes  |  |
 | timezones | [String]? |  yes  |  |
 | hierarchy | [[CountryHierarchy](#CountryHierarchy)]? |  yes  |  |
 | phoneCode | String? |  yes  |  |
 | latitude | String? |  yes  |  |
 | longitude | String? |  yes  |  |
 | currency | [CurrencyObject](#CurrencyObject)? |  yes  |  |
 | type | String? |  yes  |  |
 | fields | [GetCountryFields](#GetCountryFields)? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasNext | Bool? |  yes  |  |
 | size | Int? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | current | Int? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Localities](#Localities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | parentIds | [String]? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [LocalityParent](#LocalityParent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | parentIds | [String]? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [GetLocalities](#GetLocalities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Localities](#Localities)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [GetLocality](#GetLocality)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | parentIds | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | localities | [[LocalityParent](#LocalityParent)]? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |

---



