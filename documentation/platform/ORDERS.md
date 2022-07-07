



##### [Back to Platform docs](./README.md)

## Orders Methods
Handles all platform order and shipment api(s)
* [getShipmentDetails](#getshipmentdetails)
* [getLaneConfig](#getlaneconfig)
* [getOrderShipmentDetails](#getordershipmentdetails)
* [getShipmentList](#getshipmentlist)
* [getShipmentToManifest](#getshipmenttomanifest)



## Methods with example and description


#### getShipmentDetails





```swift
client.orders.getShipmentDetails(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes |  |  





*Returned Response:*




[ShipmentDetailsResponse](#ShipmentDetailsResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getLaneConfig





```swift
client.orders.getLaneConfig(superLane: superLane, fromDate: fromDate, toDate: toDate) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| superLane | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |  





*Returned Response:*




[LaneConfigResponse](#LaneConfigResponse)

Response containing count of shipments of the given status




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOrderShipmentDetails





```swift
client.orders.getOrderShipmentDetails(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes |  |  





*Returned Response:*




[ShipmentDetailsResponse](#ShipmentDetailsResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentList





```swift
client.orders.getShipmentList(lane: lane, searchType: searchType, searchId: searchId, fromDate: fromDate, toDate: toDate) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no |  |   
| searchType | String? | no |  |   
| searchId | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |  





*Returned Response:*




[ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentToManifest





```swift
client.orders.getShipmentToManifest(groupEntity: groupEntity, salesChannel: salesChannel, dpIds: dpIds) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| groupEntity | String | yes |  |   
| salesChannel | String? | no |  |   
| dpIds | String? | no |  |  





*Returned Response:*




[ManifestShipmentResponse](#ManifestShipmentResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [DPDetails](#DPDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | awbNo | String? |  yes  |  |
 | id | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | trackUrl | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | ewayBillId | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [OrderDetailsData](#OrderDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | String? |  yes  |  |

---


 
 
 #### [ShipmentPricesData](#ShipmentPricesData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstinCode | String? |  yes  |  |
 | brandCalculatedAmount | Int? |  yes  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | valueOfGood | Int? |  yes  |  |
 | gstFee | Int? |  yes  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentChannel | String |  no  |  |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | id | String |  no  |  |
 | code | String |  no  |  |
 | city | String |  no  |  |
 | storeName | String |  no  |  |
 | pincode | String |  no  |  |
 | phone | String |  no  |  |
 | address | String |  no  |  |
 | contactPerson | String |  no  |  |

---


 
 
 #### [UserDetailsData](#UserDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |
 | pincode | String |  no  |  |
 | phone | String |  no  |  |
 | address | String |  no  |  |
 | name | String |  no  |  |
 | email | String |  no  |  |

---


 
 
 #### [Shipment](#Shipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String |  no  |  |
 | dpDetails | [DPDetails](#DPDetails)? |  yes  |  |
 | order | [OrderDetailsData](#OrderDetailsData)? |  yes  |  |
 | shipmentQuantity | Int |  no  |  |
 | paymentMode | String |  no  |  |
 | deliverySlot | [String: Any] |  no  |  |
 | journeyType | String |  no  |  |
 | shipmentPrices | [ShipmentPricesData](#ShipmentPricesData)? |  yes  |  |
 | bagStatusHistory | [String]? |  yes  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | deliveryDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | billingDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | bags | [String: Any] |  no  |  |

---


 
 
 #### [ShipmentDetailsResponse](#ShipmentDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | shipments | [[Shipment](#Shipment)]? |  yes  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reason | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [SubLane](#SubLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String |  no  |  |
 | totalShipments | Int |  no  |  |
 | nextState | [String]? |  yes  |  |
 | currentState | [String]? |  yes  |  |
 | index | Int |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [SuperLane](#SuperLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | options | [[SubLane](#SubLane)]? |  yes  |  |
 | displayName | String |  no  |  |

---


 
 
 #### [LaneConfigResponse](#LaneConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | superLanes | [[SuperLane](#SuperLane)]? |  yes  |  |

---


 
 
 #### [FilterOption](#FilterOption)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | text | String |  no  |  |

---


 
 
 #### [Filters](#Filters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | options | [[FilterOption](#FilterOption)]? |  yes  |  |
 | type | String |  no  |  |
 | text | String |  no  |  |

---


 
 
 #### [PaymentModeInfo](#PaymentModeInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | lastName | String |  no  |  |
 | mobile | String |  no  |  |
 | isAnonymousUser | Bool |  no  |  |
 | email | String |  no  |  |
 | uid | Int |  no  |  |
 | gender | String |  no  |  |
 | avisUserId | String |  no  |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | hexCode | String |  no  |  |
 | title | String |  no  |  |
 | opsStatus | String |  no  |  |
 | actualStatus | String |  no  |  |

---


 
 
 #### [FulFillingStore](#FulFillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amountPaidRoundoff | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | refundCredit | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | discount | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | refundAmount | Double |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | cashback | Double |  no  |  |
 | valueOfGood | Double |  no  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | color | String? |  yes  |  |
 | departmentId | Int |  no  |  |
 | canReturn | Bool |  no  |  |
 | l3CategoryName | String |  no  |  |
 | id | Int |  no  |  |
 | code | String |  no  |  |
 | canCancel | Bool |  no  |  |
 | size | String |  no  |  |
 | image | [String]? |  yes  |  |
 | l3Category | Int |  no  |  |
 | l1Category | [String]? |  yes  |  |
 | name | String |  no  |  |

---


 
 
 #### [GST](#GST)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstinCode | String |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | gstFee | Double |  no  |  |

---


 
 
 #### [BagItem](#BagItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [String: Any] |  no  |  |
 | shipmentId | String |  no  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | item | [Item](#Item)? |  yes  |  |
 | bagId | Int |  no  |  |
 | orderingChannel | String |  no  |  |
 | gst | [GST](#GST)? |  yes  |  |
 | itemQuantity | Int |  no  |  |
 | totalShipmentBags | Int |  no  |  |

---


 
 
 #### [Channel](#Channel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [Application](#Application)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |

---


 
 
 #### [ShipmentItem](#ShipmentItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalBagsCount | Int |  no  |  |
 | shipmentCreatedAt | Int |  no  |  |
 | sla | [String: Any]? |  yes  |  |
 | paymentModeInfo | [PaymentModeInfo](#PaymentModeInfo)? |  yes  |  |
 | id | String |  no  |  |
 | totalShipmentsInOrder | Int |  no  |  |
 | user | [UserInfo](#UserInfo)? |  yes  |  |
 | shipmentStatus | [ShipmentStatus](#ShipmentStatus)? |  yes  |  |
 | createdAt | String |  no  |  |
 | fulfillingStore | [FulFillingStore](#FulFillingStore)? |  yes  |  |
 | fulfillingCentre | String |  no  |  |
 | bags | [[BagItem](#BagItem)]? |  yes  |  |
 | channel | [Channel](#Channel)? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | application | [Application](#Application)? |  yes  |  |

---


 
 
 #### [ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appliedFilters | [String: Any]? |  yes  |  |
 | filters | [[Filters](#Filters)]? |  yes  |  |
 | items | [[ShipmentItem](#ShipmentItem)]? |  yes  |  |
 | page | [String: Any]? |  yes  |  |

---


 
 
 #### [ShipmentPricesDataSet](#ShipmentPricesDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cashbackApplied | Int? |  yes  |  |
 | couponEffectiveDiscount | Int? |  yes  |  |
 | valueOfGood | Int? |  yes  |  |
 | refundCredit | Int? |  yes  |  |
 | deliveryCharge | Int? |  yes  |  |
 | brandCalculatedAmount | Int? |  yes  |  |
 | codCharges | Int? |  yes  |  |
 | priceEffective | Int? |  yes  |  |
 | priceMarked | Int? |  yes  |  |
 | amountPaid | Int? |  yes  |  |
 | discount | String? |  yes  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | fyndCredits | Int? |  yes  |  |
 | cashback | Int? |  yes  |  |
 | gstFee | Int? |  yes  |  |

---


 
 
 #### [Shipment1](#Shipment1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rtdDone | String |  no  |  |
 | shipmentId | String |  no  |  |
 | orderId | String |  no  |  |
 | totalItems | String |  no  |  |
 | shipmentStatus | String |  no  |  |
 | prices | [ShipmentPricesDataSet](#ShipmentPricesDataSet)? |  yes  |  |

---


 
 
 #### [ManifestShipmentResponse](#ManifestShipmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | shipments | [[Shipment1](#Shipment1)]? |  yes  |  |

---



