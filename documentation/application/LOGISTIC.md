



##### [Back to Application docs](./README.md)

## Logistic Methods
Logistics Promise Engine APIs allows you to configure zone, pincode, TAT, logistics and many more useful features.
* [getPincodeCity](#getpincodecity)
* [getTatProduct](#gettatproduct)
* [getAllCountries](#getallcountries)
* [getPincodeZones](#getpincodezones)
* [getOptimalLocations](#getoptimallocations)
* [getCountries](#getcountries)
* [getCountry](#getcountry)
* [getLocalities](#getlocalities)
* [getLocality](#getlocality)



## Methods with example and description


#### getPincodeCity
Get Pincode API




```swift
applicationClient.logistic.getPincodeCity(pincode: pincode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pincode | String | yes | A `pincode` contains a specific address of a location. |  



Get pincode data

*Returned Response:*




[PincodeApiResponse](#PincodeApiResponse)

Get pincode data




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Pincode data found</i></summary>

```json
{
  "value": {
    "data": [
      {
        "sub_type": "pincode",
        "name": "421202",
        "error": {
          "type": null,
          "value": null,
          "message": null
        },
        "uid": "pincode:INDIA|MAHARASHTRA|MUMBAI|421202",
        "display_name": "421202",
        "meta": {
          "zone": "West",
          "internal_zone_id": 4
        },
        "meta_code": {
          "country_code": "IND",
          "isd_code": "+91"
        },
        "parents": [
          {
            "sub_type": "country",
            "name": "India",
            "display_name": "India",
            "uid": "country:INDIA"
          },
          {
            "sub_type": "state",
            "name": "Maharashtra",
            "display_name": "Maharashtra",
            "uid": "state:INDIA|MAHARASHTRA"
          },
          {
            "sub_type": "city",
            "name": "Thane",
            "display_name": "Thane",
            "uid": "city:INDIA|MAHARASHTRA|MUMBAI"
          }
        ],
        "lat_long": {
          "type": "Point",
          "coordinates": [
            "3.8858955",
            "7.2272335"
          ]
        }
      }
    ],
    "request_uuid": "fce9f431215e71c9ee0e86e792ae1dce4",
    "stormbreaker_uuid": "56cca764-9fab-41f4-adb8-6e9683532aa5",
    "error": {
      "type": null,
      "value": null,
      "message": null
    },
    "success": true
  }
}
```
</details>

<details>
<summary><i>&nbsp; Pincode not found</i></summary>

```json
{
  "value": {
    "data": [
      {
        "sub_type": "pincode",
        "name": "999999",
        "error": {
          "type": "DoesNotExist",
          "value": "999999",
          "message": "pincode 999999 does not exist"
        }
      }
    ],
    "request_uuid": "fce9fb9215e71c9ee0e86e792ae1dce4",
    "stormbreaker_uuid": "03b353ed-9dbd-4629-80b2-2be337859a20",
    "error": {
      "type": null,
      "value": null,
      "message": null
    },
    "success": false
  }
}
```
</details>

</details>









---


#### getTatProduct
Get TAT API




```swift
applicationClient.logistic.getTatProduct(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | TATViewRequest | yes | Request body |


Get TAT data

*Returned Response:*




[TATViewResponse](#TATViewResponse)

Get TAT  data




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Pincode data found</i></summary>

```json
{
  "value": {
    "source": "FYND-APP",
    "identifier": "PDP",
    "journey": "forward",
    "action": "get_tat",
    "to_pincode": "143001",
    "location_details": [
      {
        "fulfillment_id": 8,
        "from_pincode": "560023",
        "articles": [
          {
            "category": {
              "level": "l3",
              "id": 155
            },
            "manufacturing_time": 2,
            "manufacturing_time_unit": "days",
            "promise": {
              "timestamp": {
                "min": 1663564548,
                "max": 1663650948
              },
              "formatted": {
                "min": "19 Sep, Monday",
                "max": "20 Sep, Tuesday"
              }
            },
            "error": {
              "type": null,
              "value": null,
              "message": null
            },
            "is_cod_available": true,
            "_manufacturing_time_seconds": 172800
          }
        ]
      }
    ],
    "request_uuid": "b4adf5508e34f17971817c3581e16310",
    "stormbreaker_uuid": "4b8084d4-ea74-45af-8ddc-c38e29bf0cfb",
    "error": {
      "type": null,
      "value": null,
      "message": null
    },
    "to_city": "Amritsar",
    "payment_mode": "prepaid",
    "is_cod_available": true,
    "success": true
  }
}
```
</details>

<details>
<summary><i>&nbsp; Pincode not found</i></summary>

```json
{
  "value": {
    "source": "FYND-APP",
    "identifier": "PDP",
    "journey": "forward",
    "action": "get_tat",
    "to_pincode": "99999",
    "location_details": [
      {
        "fulfillment_id": 8,
        "from_pincode": "560023",
        "articles": [
          {
            "category": {
              "level": "l3",
              "id": 155
            },
            "manufacturing_time": 2,
            "manufacturing_time_unit": "days",
            "promise": {},
            "error": {
              "type": "ValueError",
              "value": "99999",
              "message": "We are not delivering to 99999"
            }
          }
        ]
      }
    ],
    "request_uuid": "4b99d15fddb2b9fc2d6ab99a1c933010",
    "stormbreaker_uuid": "6a847909-1d59-43e7-9ae0-15f5de8fc7d7",
    "error": {
      "type": "ValueError",
      "value": "99999",
      "message": "All of the items in your cart are not deliverable to 99999"
    },
    "to_city": "",
    "payment_mode": "prepaid",
    "is_cod_available": true,
    "success": false
  }
}
```
</details>

</details>









---


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


#### getCountries
Get all countries and associated data.




```swift
applicationClient.logistic.getCountries(onboarding: onboarding) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| onboarding | Bool? | no | Only fetch countries which allowed for onboard on Platform. |  



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
        "name": "INDIA",
        "sub_type": "country",
        "uid": "64c6ac280000000000000000",
        "iso2": "IN",
        "iso3": "IND",
        "timezones": [
          "Asia/Kolkata"
        ],
        "currency": "INR",
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
        "sub_type": "country",
        "uid": "66a931280000000000000000",
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
        "currency": "USD",
        "phone_code": "+1",
        "hierarchy": {
          "value": [
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
        "name": "United Arab Emirates",
        "sub_type": "country",
        "uid": "669ea5280000000000000000",
        "iso2": "AE",
        "iso3": "ARE",
        "timezones": [
          "Asia/Dubai"
        ],
        "currency": "DIR",
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
    "sub_type": "country",
    "uid": "64c6ac280000000000000000",
    "iso2": "IN",
    "iso3": "IND",
    "timezones": [
      "Asia/Kolkata"
    ],
    "currency": "INR",
    "phone_code": "+91",
    "hierarchy": {
      "value": [
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
    "fields": {
      "serviceability_fields": [
        "pincode"
      ],
      "form_template": [
        {
          "form_app_checkout": "{address} {area}_{landmark} {pincode}_{city}_{state}_{address_type}_{name} {phonenumber}_{email}"
        },
        {
          "form_pltm_store": "{address}_{area}_{pincode}_{city}_{state}"
        },
        {
          "form_pln_onboarding": "{pincode}_{city}{state}"
        },
        {
          "display": "{address}{area}_{landmark}_{city} {pincode}_{state}{country}"
        }
      ],
      "address": {
        "$ref": "#/components/examples/AddressFields"
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
    "name": "United Arab Emirates",
    "sub_type": "country",
    "uid": "669ea5280000000000000000",
    "iso2": "AE",
    "iso3": "ARE",
    "timezones": [
      "Asia/Dubai"
    ],
    "currency": "DIR",
    "phone_code": "+971",
    "hierarchy": {
      "value": [
        {
          "name": "City",
          "slug": "city"
        },
        {
          "name": "Area",
          "slug": "sector"
        }
      ]
    },
    "fields": {
      "serviceability_fields": [
        "pincode"
      ],
      "form_template": [
        {
          "form_app_checkout": "{address}_{area}_{city}{sector}_{landmark}_{address_type}_{name} {phonenumber}_{email}"
        },
        {
          "form_pltm_store": "{city}_{sector}"
        },
        {
          "form_pln_onboarding": "{city}{sector}"
        },
        {
          "address_display": "{address}_{area}_{city} {sector}_{country}"
        }
      ],
      "address": {
        "$ref": "#/components/examples/AddressFields"
      }
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
applicationClient.logistic.getLocalities(localityType: localityType, country: country, state: state, city: city) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| localityType | String | yes | A `locality_type` contains unique geographical division. |   
| country | String? | no | A `country` contains a specific value of the country iso2 code. |   
| state | String? | no | A `state` contains a specific value of the state, province. |   
| city | String? | no | A `city` contains a specific value of the city. |  



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
        "uid": "64b78b60707446a37f2afbbb",
        "name": "Maharashtra",
        "display_name": "Maharashtra",
        "type": "region",
        "sub_type": "state",
        "parent_id": [
          "64b78b60707446a37f2aec6f"
        ]
      },
      {
        "uid": "64c7fda80000000000000000",
        "name": "400603",
        "display_name": "400603",
        "type": "region",
        "sub_type": "pincode",
        "parent_id": [
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
        "uid": "63d95e280000000000000000",
        "name": "Thane",
        "display_name": "Thane",
        "type": "region",
        "sub_type": "city",
        "parent_id": [
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
| localityValue | String | yes | A `locality_value` contains a specific value of the locality. |   
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
    "uid": "649f1f280000000000000000",
    "name": "Abu Dhabi",
    "display_name": "Abu Dhabi",
    "type": "region",
    "sub_type": "city",
    "parent_id": [
      "64b78b60707446a37f2aec6f"
    ]
  }
}
```
</details>

<details>
<summary><i>&nbsp; Country 2</i></summary>

```json
{
  "value": {
    "uid": "649887a80000000000000000",
    "name": "Sila",
    "display_name": "Sila",
    "type": "region",
    "sub_type": "sector",
    "parent_id": [
      "64b78b60707446a37f2aec6f",
      "64b78b60707446a37f2aec4b"
    ]
  }
}
```
</details>

</details>









---



### Schemas

 
 
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


 
 
 #### [GetCountries](#GetCountries)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [String: Any]? |  yes  |  |
 | items | [[String: Any]]? |  yes  |  |

---


 
 
 #### [GetCountry](#GetCountry)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | actions | [String: Any]? |  yes  |  |
 | ios2 | String? |  yes  |  |
 | timezones | [String]? |  yes  |  |
 | hierarchy | [String: Any]? |  yes  |  |
 | ios3 | String? |  yes  |  |
 | phoneCode | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | uid | String? |  yes  |  |

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


 
 
 #### [LogisticsDPSchema](#LogisticsDPSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dp | [String: Any]? |  yes  |  |

---


 
 
 #### [Locality](#Locality)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | parentId | [String]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | logistics | [LogisticsDPSchema](#LogisticsDPSchema)? |  yes  |  |
 | uid | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [GetLocalities](#GetLocalities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | regions | [[Locality](#Locality)]? |  yes  |  |

---


 
 
 #### [GetLocality](#GetLocality)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | regions | [Locality](#Locality)? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |

---



