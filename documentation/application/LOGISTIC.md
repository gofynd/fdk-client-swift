



##### [Back to Application docs](./README.md)

## Logistic Methods
Open API Documentation for opex-logistics domain
* [getPincodeView](#getpincodeview)
* [getTATView](#gettatview)



## Methods with example and description


#### getPincodeView
Get Pincode API




```swift
logistic.getPincodeView(pincode: pincode, xApplicationId: xApplicationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pincode | String | yes | A `pincode` contains a specific address of a location. |   
| xApplicationId | String? | no | Application id is neccessary for app authorizations & retrieving config of application |  



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


#### getTATView
Get TAT API




```swift
logistic.getTATView(xApplicationId: xApplicationId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| xApplicationId | String? | no | Application id is neccessary for app authorizations & retrieving config of application |  
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



### Schemas

 
 
 #### [ValidatePincodeSchema](#ValidatePincodeSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | journey | String? |  yes  |  |
 | source | String? |  yes  |  |
 | action | String |  no  |  |
 | toPincode | String |  no  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | journey | String |  no  |  |
 | message | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ValidatePincodeResponseSchema](#ValidatePincodeResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [ErrorResponse](#ErrorResponse) |  no  |  |
 | requestUuid | String |  no  |  |
 | journey | String? |  yes  |  |
 | action | String |  no  |  |
 | success | Bool |  no  |  |
 | toPincode | String |  no  |  |
 | source | String? |  yes  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | message | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | internalZoneId | Int? |  yes  |  |
 | zone | String? |  yes  |  |

---


 
 
 #### [Parents](#Parents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | subType | String? |  yes  |  |

---


 
 
 #### [DataResponse](#DataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [Error](#Error) |  no  |  |
 | subType | String? |  yes  |  |
 | meta | [Meta](#Meta)? |  yes  |  |
 | uid | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | parents | [[Parents](#Parents)]? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [PincodeApiResponse](#PincodeApiResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [Error](#Error) |  no  |  |
 | data | [[DataResponse](#DataResponse)]? |  yes  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [Category](#Category)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [Articles](#Articles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [Category](#Category)? |  yes  |  |
 | manufacturingTime | Int? |  yes  |  |
 | manufacturingTimeUnit | String? |  yes  |  |

---


 
 
 #### [LocationDetails](#LocationDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromPincode | String? |  yes  |  |
 | articles | [[Articles](#Articles)]? |  yes  |  |
 | fulfillmentId | Int? |  yes  |  |

---


 
 
 #### [TATViewRequest](#TATViewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locationDetails | [[LocationDetails](#LocationDetails)]? |  yes  |  |
 | identifier | String |  no  |  |
 | journey | String |  no  |  |
 | action | String |  no  |  |
 | toPincode | String |  no  |  |
 | source | String |  no  |  |

---


 
 
 #### [TATError](#TATError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | message | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Timestamp](#Timestamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int? |  yes  |  |
 | max | Int? |  yes  |  |

---


 
 
 #### [Formatted](#Formatted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | String? |  yes  |  |
 | max | String? |  yes  |  |

---


 
 
 #### [Promise](#Promise)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | [Timestamp](#Timestamp)? |  yes  |  |
 | formatted | [Formatted](#Formatted)? |  yes  |  |

---


 
 
 #### [ArticlesResponse](#ArticlesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [TATError](#TATError) |  no  |  |
 | promise | [Promise](#Promise)? |  yes  |  |
 | manufacturingTime | Int? |  yes  |  |
 | isCodAvailable | Bool? |  yes  |  |
 | manufacturingTimeUnit | String? |  yes  |  |
 | category | [Category](#Category)? |  yes  |  |
 | manufacturingTimeSeconds | String? |  yes  |  |

---


 
 
 #### [LocationDetailsResponse](#LocationDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromPincode | String? |  yes  |  |
 | articles | [[ArticlesResponse](#ArticlesResponse)]? |  yes  |  |
 | fulfillmentId | Int? |  yes  |  |

---


 
 
 #### [TATViewResponse](#TATViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locationDetails | [[LocationDetailsResponse](#LocationDetailsResponse)]? |  yes  |  |
 | identifier | String |  no  |  |
 | error | [TATError](#TATError) |  no  |  |
 | requestUuid | String |  no  |  |
 | journey | String |  no  |  |
 | action | String |  no  |  |
 | paymentMode | String |  no  |  |
 | isCodAvailable | Bool |  no  |  |
 | success | Bool |  no  |  |
 | toPincode | String |  no  |  |
 | toCity | String |  no  |  |
 | source | String |  no  |  |
 | stormbreakerUuid | String |  no  |  |

---



