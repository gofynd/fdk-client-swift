



##### [Back to Application docs](./README.md)

## Logistic Methods
Handles Platform websites OMS
* [getTatProduct](#gettatproduct)
* [getPincodeZones](#getpincodezones)
* [getPincodeCity](#getpincodecity)



## Methods with example and description


#### getTatProduct
Get TAT of a product




```swift
logistic.getTatProduct(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetTatProductReqBody | yes | Request body |


Use this API to know the delivery turnaround time (TAT) by entering the product details along with the PIN Code of the location.

*Returned Response:*




[GetTatProductResponse](#GetTatProductResponse)

Success. Check the example shown below or refer `GetTatProductResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getPincodeZones
Get Pincode Zones




```swift
logistic.getPincodeZones(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetPincodeZonesReqBody | yes | Request body |


Get to know the zones of a specefic pincode

*Returned Response:*




[GetPincodeZonesResponse](#GetPincodeZonesResponse)

Success. Check the example shown below or refer `GetTatProductResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getPincodeCity
Get city from PIN Code




```swift
logistic.getPincodeCity(pincode: pincode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pincode | String | yes | The PIN Code of the area, e.g. 400059 |  



Use this API to retrieve a city by its PIN Code.

*Returned Response:*




[GetPincodeCityResponse](#GetPincodeCityResponse)

Success. Returns a JSON object containing the city name, state and country identified by its PIN Code. Check the example shown below or refer `GetPincodeCityResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [GetPincodeCityResponse](#GetPincodeCityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestUuid | String |  no  |  |
 | stormbreakerUuid | String |  no  |  |
 | success | Bool |  no  |  |
 | data | [[LogisticPincodeData](#LogisticPincodeData)] |  no  |  |

---


 
 
 #### [LogisticPincodeData](#LogisticPincodeData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [LogisticMeta](#LogisticMeta)? |  yes  |  |
 | parents | [[LogisticParents](#LogisticParents)]? |  yes  |  |
 | subType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | error | [LogisticError](#LogisticError)? |  yes  |  |
 | uid | String? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [LogisticMeta](#LogisticMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zone | String? |  yes  |  |
 | deliverables | [[String: Any]]? |  yes  |  |

---


 
 
 #### [LogisticParents](#LogisticParents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | uid | String? |  yes  |  |

---


 
 
 #### [LogisticError](#LogisticError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [GetPincodeZonesReqBody](#GetPincodeZonesReqBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [GetPincodeZonesResponse](#GetPincodeZonesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zones | [[String: Any]] |  no  |  |
 | serviceabilityType | String |  no  |  |

---


 
 
 #### [GetTatProductReqBody](#GetTatProductReqBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locationDetails | [[LocationDetailsReq](#LocationDetailsReq)] |  no  |  |
 | toPincode | String |  no  |  |
 | action | String? |  yes  |  |

---


 
 
 #### [LocationDetailsReq](#LocationDetailsReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromPincode | String? |  yes  |  |
 | articles | [[TatReqProductArticles](#TatReqProductArticles)]? |  yes  |  |
 | fulfillmentId | Int? |  yes  |  |

---


 
 
 #### [TatReqProductArticles](#TatReqProductArticles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manufacturingTime | Int? |  yes  |  |
 | manufacturingTimeUnit | String? |  yes  |  |
 | category | [LogisticRequestCategory](#LogisticRequestCategory)? |  yes  |  |

---


 
 
 #### [LogisticRequestCategory](#LogisticRequestCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [GetTatProductResponse](#GetTatProductResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locationDetails | [[LocationDetails](#LocationDetails)] |  no  |  |
 | requestUuid | String |  no  |  |
 | error | [String: Any] |  no  |  |
 | toCity | String |  no  |  |
 | source | String |  no  |  |
 | toPincode | String |  no  |  |
 | action | String |  no  |  |
 | stormbreakerUuid | String |  no  |  |
 | success | Bool |  no  |  |
 | identifier | String |  no  |  |
 | journey | String |  no  |  |

---


 
 
 #### [LocationDetails](#LocationDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromPincode | String? |  yes  |  |
 | articles | [[TatProductArticles](#TatProductArticles)]? |  yes  |  |
 | fulfillmentId | Int? |  yes  |  |

---


 
 
 #### [TatProductArticles](#TatProductArticles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [String: Any]? |  yes  |  |
 | category | [LogisticResponseCategory](#LogisticResponseCategory)? |  yes  |  |
 | promise | [LogisticPromise](#LogisticPromise)? |  yes  |  |

---


 
 
 #### [LogisticResponseCategory](#LogisticResponseCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [LogisticPromise](#LogisticPromise)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | [LogisticTimestamp](#LogisticTimestamp)? |  yes  |  |
 | formatted | [Formatted](#Formatted)? |  yes  |  |

---


 
 
 #### [LogisticTimestamp](#LogisticTimestamp)

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


 
 
 #### [ApefaceApiError](#ApefaceApiError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---



