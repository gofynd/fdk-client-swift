



##### [Back to Application docs](./README.md)

## Logistic Methods
Logistics Promise Engine APIs allows you to configure zone, pincode, TAT, logistics and many more useful features. 
* [getPincodeCity](#getpincodecity)
* [getTatProduct](#gettatproduct)
* [getPincodeZones](#getpincodezones)
* [assignStore](#assignstore)



## Methods with example and description


#### getPincodeCity
Get Pincode API




```swift
logistic.getPincodeCity(pincode: pincode) { (response, error) in
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
        ]
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
logistic.getTatProduct(body: body) { (response, error) in
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
            "promise": null,
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


#### getPincodeZones
GET zone from the Pincode.




```swift
logistic.getPincodeZones(body: body) { (response, error) in
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


#### assignStore
GET zone from the Pincode.




```swift
logistic.assignStore(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AssignStoreRequest | yes | Request body |


This API returns zone from the Pincode View.

*Returned Response:*




[AssignStoreResponse](#AssignStoreResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [PincodeParentsResponse](#PincodeParentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | subType | String? |  yes  |  |

---


 
 
 #### [PincodeMetaResponse](#PincodeMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | internalZoneId | Int? |  yes  |  |
 | zone | String? |  yes  |  |

---


 
 
 #### [PincodeErrorSchemaResponse](#PincodeErrorSchemaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [PincodeDataResponse](#PincodeDataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | parents | [[PincodeParentsResponse](#PincodeParentsResponse)]? |  yes  |  |
 | displayName | String? |  yes  |  |
 | meta | [PincodeMetaResponse](#PincodeMetaResponse)? |  yes  |  |
 | uid | String? |  yes  |  |
 | name | String? |  yes  |  |
 | error | [PincodeErrorSchemaResponse](#PincodeErrorSchemaResponse) |  no  |  |
 | subType | String? |  yes  |  |

---


 
 
 #### [PincodeApiResponse](#PincodeApiResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[PincodeDataResponse](#PincodeDataResponse)]? |  yes  |  |
 | success | Bool |  no  |  |
 | error | [PincodeErrorSchemaResponse](#PincodeErrorSchemaResponse) |  no  |  |

---


 
 
 #### [TATCategoryRequest](#TATCategoryRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [TATArticlesRequest](#TATArticlesRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manufacturingTime | Int? |  yes  |  |
 | manufacturingTimeUnit | String? |  yes  |  |
 | category | [TATCategoryRequest](#TATCategoryRequest)? |  yes  |  |

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
 | locationDetails | [[TATLocationDetailsRequest](#TATLocationDetailsRequest)]? |  yes  |  |
 | source | String? |  yes  |  |
 | action | String? |  yes  |  |
 | journey | String? |  yes  |  |
 | toPincode | String? |  yes  |  |
 | identifier | String? |  yes  |  |

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


 
 
 #### [TATErrorSchemaResponse](#TATErrorSchemaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [TATArticlesResponse](#TATArticlesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manufacturingTime | Int? |  yes  |  |
 | manufacturingTimeUnit | String? |  yes  |  |
 | manufacturingTimeSeconds | Int? |  yes  |  |
 | category | [TATCategoryRequest](#TATCategoryRequest)? |  yes  |  |
 | promise | [TATPromiseResponse](#TATPromiseResponse)? |  yes  |  |
 | error | [TATErrorSchemaResponse](#TATErrorSchemaResponse)? |  yes  |  |
 | isCodAvailable | Bool? |  yes  |  |

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
 | locationDetails | [[TATLocationDetailsResponse](#TATLocationDetailsResponse)]? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | requestUuid | String? |  yes  |  |
 | source | String? |  yes  |  |
 | toCity | String? |  yes  |  |
 | action | String? |  yes  |  |
 | journey | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | toPincode | String? |  yes  |  |
 | identifier | String? |  yes  |  |
 | stormbreakerUuid | String? |  yes  |  |
 | error | [TATErrorSchemaResponse](#TATErrorSchemaResponse)? |  yes  |  |
 | isCodAvailable | Bool? |  yes  |  |

---


 
 
 #### [GetZoneFromPincodeViewRequest](#GetZoneFromPincodeViewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [GetZoneFromPincodeViewResponse](#GetZoneFromPincodeViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | serviceabilityType | String |  no  |  |
 | zones | [String] |  no  |  |

---


 
 
 #### [AssignStoreRequest](#AssignStoreRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articles | [[String: Any]] |  no  |  |
 | customerDetails | [String: Any] |  no  |  |
 | toPincode | String |  no  |  |
 | identifier | String |  no  |  |
 | applicationConfig | [String: Any] |  no  |  |
 | extensionConfig | [String: Any] |  no  |  |
 | pageNo | Int |  no  |  |
 | pageSize | Int |  no  |  |
 | items | [String: Any] |  no  |  |

---


 
 
 #### [AssignStoreResponse](#AssignStoreResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | assignedStores | [[String: Any]] |  no  |  |
 | company | [String: Any] |  no  |  |
 | articles | [[String: Any]]? |  yes  |  |
 | customerDetails | [String: Any] |  no  |  |
 | success | Bool |  no  |  |
 | toPincode | String |  no  |  |
 | pageSize | Int |  no  |  |
 | store | [String: Any] |  no  |  |
 | pageNo | Int |  no  |  |
 | error | [String: Any] |  no  |  |
 | items | [String: Any] |  no  |  |
 | pystormbreakerUuid | String |  no  |  |
 | article | [String: Any] |  no  |  |

---



