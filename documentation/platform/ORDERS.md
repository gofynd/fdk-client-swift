



##### [Back to Platform docs](./README.md)

## Orders Methods
Handles all platform order and shipment api(s)
* [getShipmentDetails](#getshipmentdetails)
* [getLaneConfig](#getlaneconfig)
* [getOrderShipmentDetails](#getordershipmentdetails)
* [getShipmentList](#getshipmentlist)
* [getShipmentToManifest](#getshipmenttomanifest)
* [getOrders](#getorders)



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
client.orders.getLaneConfig(superLane: superLane, groupEntity: groupEntity, fromDate: fromDate, toDate: toDate) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| superLane | String? | no |  |   
| groupEntity | String? | no |  |   
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
client.orders.getShipmentList(lane: lane, searchType: searchType, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannel: salesChannel, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, isPrioritySort: isPrioritySort) { (response, error) in
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
| dpIds | String? | no |  |   
| orderingCompanyId | String? | no |  |   
| stores | String? | no |  |   
| salesChannel | String? | no |  |   
| requestByExt | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| isPrioritySort | Bool? | no |  |  





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


#### getOrders





```swift
client.orders.getOrders(lane: lane, searchType: searchType, searchValue: searchValue, fromDate: fromDate, toDate: toDate, dpIds: dpIds, stores: stores, salesChannel: salesChannel, pageNo: pageNo, pageSize: pageSize, isPrioritySort: isPrioritySort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no |  |   
| searchType | String? | no |  |   
| searchValue | String? | no |  |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no |  |   
| stores | String? | no |  |   
| salesChannel | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| isPrioritySort | Bool? | no |  |  





*Returned Response:*




[OrderListingResponse](#OrderListingResponse)

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
 | gstTag | String? |  yes  |  |
 | id | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | ewayBillId | String? |  yes  |  |
 | trackUrl | String? |  yes  |  |
 | awbNo | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [UserDetailsData](#UserDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | phone | String |  no  |  |
 | email | String |  no  |  |
 | pincode | String |  no  |  |
 | address | String |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [OrderDetailsData](#OrderDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | String? |  yes  |  |

---


 
 
 #### [ShipmentPricesData](#ShipmentPricesData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Int? |  yes  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | valueOfGood | Int? |  yes  |  |
 | gstinCode | String? |  yes  |  |
 | gstFee | Int? |  yes  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentChannel | String |  no  |  |
 | id | String |  no  |  |
 | country | String |  no  |  |
 | phone | String |  no  |  |
 | pincode | String |  no  |  |
 | address | String |  no  |  |
 | city | String |  no  |  |
 | storeName | String |  no  |  |
 | state | String |  no  |  |
 | contactPerson | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [Shipment](#Shipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpDetails | [DPDetails](#DPDetails)? |  yes  |  |
 | deliverySlot | [String: Any] |  no  |  |
 | shipmentQuantity | Int |  no  |  |
 | deliveryDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | journeyType | String |  no  |  |
 | shipmentId | String |  no  |  |
 | paymentMode | String |  no  |  |
 | order | [OrderDetailsData](#OrderDetailsData)? |  yes  |  |
 | bagStatusHistory | [String]? |  yes  |  |
 | billingDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | shipmentPrices | [ShipmentPricesData](#ShipmentPricesData)? |  yes  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
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
 | success | Bool? |  yes  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [SubLane](#SubLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | currentState | [String]? |  yes  |  |
 | value | String |  no  |  |
 | nextState | [String]? |  yes  |  |
 | index | Int |  no  |  |
 | totalShipments | Int |  no  |  |

---


 
 
 #### [SuperLane](#SuperLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | options | [[SubLane](#SubLane)]? |  yes  |  |
 | value | String |  no  |  |

---


 
 
 #### [LaneConfigResponse](#LaneConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | superLanes | [[SuperLane](#SuperLane)]? |  yes  |  |

---


 
 
 #### [FilterInfoOption](#FilterInfoOption)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [FiltersInfo](#FiltersInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | options | [[FilterInfoOption](#FilterInfoOption)]? |  yes  |  |
 | value | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [PaymentModeInfo](#PaymentModeInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [UserDataInfo](#UserDataInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | email | String |  no  |  |
 | lastName | String |  no  |  |
 | mobile | String |  no  |  |
 | uid | Int |  no  |  |
 | isAnonymousUser | Bool |  no  |  |
 | gender | String |  no  |  |
 | avisUserId | String |  no  |  |

---


 
 
 #### [FulFillingStore](#FulFillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opsStatus | String |  no  |  |
 | status | String |  no  |  |
 | actualStatus | String |  no  |  |
 | title | String |  no  |  |
 | hexCode | String |  no  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundCredit | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | refundAmount | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | amountPaidRoundoff | Double |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | discount | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | cashback | Double |  no  |  |
 | codCharges | Double |  no  |  |

---


 
 
 #### [GST](#GST)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Double |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | gstinCode | String |  no  |  |
 | gstFee | Double |  no  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l3Category | Int |  no  |  |
 | id | Int |  no  |  |
 | canCancel | Bool |  no  |  |
 | image | [String]? |  yes  |  |
 | color | String? |  yes  |  |
 | l3CategoryName | String |  no  |  |
 | l1Category | [String]? |  yes  |  |
 | size | String |  no  |  |
 | canReturn | Bool |  no  |  |
 | departmentId | Int |  no  |  |
 | code | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [BagUnit](#BagUnit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalShipmentBags | Int |  no  |  |
 | itemQuantity | Int |  no  |  |
 | status | [String: Any] |  no  |  |
 | shipmentId | String |  no  |  |
 | gst | [GST](#GST)? |  yes  |  |
 | item | [Item](#Item)? |  yes  |  |
 | orderingChannel | String |  no  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | bagId | Int |  no  |  |

---


 
 
 #### [ShipmentItem](#ShipmentItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalBagsCount | Int |  no  |  |
 | id | String |  no  |  |
 | fulfillingCentre | String |  no  |  |
 | channel | [String: Any]? |  yes  |  |
 | paymentModeInfo | [PaymentModeInfo](#PaymentModeInfo)? |  yes  |  |
 | user | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | fulfillingStore | [FulFillingStore](#FulFillingStore)? |  yes  |  |
 | sla | [String: Any]? |  yes  |  |
 | shipmentStatus | [ShipmentStatus](#ShipmentStatus)? |  yes  |  |
 | totalShipmentsInOrder | Int |  no  |  |
 | createdAt | String |  no  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | application | [String: Any]? |  yes  |  |
 | shipmentCreatedAt | Int |  no  |  |
 | bags | [[BagUnit](#BagUnit)]? |  yes  |  |

---


 
 
 #### [ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [String: Any]? |  yes  |  |
 | filters | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | items | [[ShipmentItem](#ShipmentItem)]? |  yes  |  |
 | appliedFilters | [String: Any]? |  yes  |  |

---


 
 
 #### [ShipmentPricesDataSet](#ShipmentPricesDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundCredit | Int? |  yes  |  |
 | fyndCredits | Int? |  yes  |  |
 | deliveryCharge | Int? |  yes  |  |
 | brandCalculatedAmount | Int? |  yes  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | priceEffective | Int? |  yes  |  |
 | valueOfGood | Int? |  yes  |  |
 | cashbackApplied | Int? |  yes  |  |
 | discount | String? |  yes  |  |
 | amountPaid | Int? |  yes  |  |
 | priceMarked | Int? |  yes  |  |
 | gstFee | Int? |  yes  |  |
 | cashback | Int? |  yes  |  |
 | codCharges | Int? |  yes  |  |
 | couponEffectiveDiscount | Int? |  yes  |  |

---


 
 
 #### [Shipment1](#Shipment1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rtdDone | String |  no  |  |
 | shipmentId | String |  no  |  |
 | prices | [ShipmentPricesDataSet](#ShipmentPricesDataSet)? |  yes  |  |
 | totalItems | String |  no  |  |
 | shipmentStatus | String |  no  |  |
 | orderId | String |  no  |  |

---


 
 
 #### [ManifestShipmentResponse](#ManifestShipmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | shipments | [[Shipment1](#Shipment1)]? |  yes  |  |

---


 
 
 #### [ErrorSchemaDataSet](#ErrorSchemaDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [ShipmentPricesDataInfo](#ShipmentPricesDataInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | codCharges | Int? |  yes  |  |
 | refundCredit | Int? |  yes  |  |
 | fyndCredits | Int? |  yes  |  |
 | refundAmount | Int? |  yes  |  |
 | deliveryCharge | Int? |  yes  |  |
 | priceEffective | Int? |  yes  |  |
 | valueOfGood | Int? |  yes  |  |
 | cashbackApplied | Int? |  yes  |  |
 | discount | Int? |  yes  |  |
 | amountPaid | Int? |  yes  |  |
 | priceMarked | Int? |  yes  |  |
 | cashback | Int? |  yes  |  |
 | couponValue | String? |  yes  |  |

---


 
 
 #### [ShipmentDataSet](#ShipmentDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalBags | Int |  no  |  |
 | refundCredit | Int? |  yes  |  |
 | fyndCredits | Int? |  yes  |  |
 | deliveryCharge | Int? |  yes  |  |
 | brandCalculatedAmount | Int? |  yes  |  |
 | shipmentId | String |  no  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | priceEffective | Int? |  yes  |  |
 | valueOfGood | Int? |  yes  |  |
 | cashbackApplied | Int? |  yes  |  |
 | prices | [ShipmentPricesDataInfo](#ShipmentPricesDataInfo)? |  yes  |  |
 | shipmentImages | [String]? |  yes  |  |
 | cashback | Int? |  yes  |  |
 | totalItems | Int |  no  |  |
 | shipmentStatus | [String: Any] |  no  |  |
 | couponEffectiveDiscount | Int? |  yes  |  |

---


 
 
 #### [UserDataSet](#UserDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gender | String? |  yes  |  |
 | email | String? |  yes  |  |
 | mobile | Int |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [OrderDataSet](#OrderDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[ShipmentDataSet](#ShipmentDataSet)]? |  yes  |  |
 | orderCreatedTime | String |  no  |  |
 | userInfo | [UserDataSet](#UserDataSet)? |  yes  |  |
 | orderId | String |  no  |  |

---


 
 
 #### [OrderListingResponse](#OrderListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | orders | [[OrderDataSet](#OrderDataSet)]? |  yes  |  |

---


 
 
 #### [OrderErrorSchemaDataSet](#OrderErrorSchemaDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | reason | String? |  yes  |  |

---



