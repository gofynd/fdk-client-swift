



##### [Back to Platform docs](./README.md)

## Orders Methods
Handles all platform order and shipment api(s)
* [getOrderShipmentDetails](#getordershipmentdetails)
* [getShipmentDetails](#getshipmentdetails)
* [getShipmentToManifest](#getshipmenttomanifest)



## Methods with example and description


#### getOrderShipmentDetails





```swift
client.orders.getOrderShipmentDetails(shipmentId: shipmentId) { (response, error) in
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


#### getShipmentDetails





```swift
client.orders.getShipmentDetails(orderId: orderId) { (response, error) in
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

 
 
 #### [OrderDetailsData](#OrderDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | String? |  yes  |  |

---


 
 
 #### [UserDetailsData](#UserDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String |  no  |  |
 | phone | String |  no  |  |
 | address | String |  no  |  |
 | country | String |  no  |  |
 | email | String |  no  |  |
 | name | String |  no  |  |
 | pincode | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [ShipmentPricesData](#ShipmentPricesData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Int? |  yes  |  |
 | brandCalculatedAmount | Int? |  yes  |  |
 | valueOfGood | Int? |  yes  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | gstinCode | String? |  yes  |  |

---


 
 
 #### [DPDetails](#DPDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ewayBillId | String? |  yes  |  |
 | id | String? |  yes  |  |
 | trackUrl | String? |  yes  |  |
 | country | String? |  yes  |  |
 | awbNo | String? |  yes  |  |
 | name | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | gstTag | String? |  yes  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentChannel | String |  no  |  |
 | state | String |  no  |  |
 | phone | String |  no  |  |
 | id | String |  no  |  |
 | contactPerson | String |  no  |  |
 | address | String |  no  |  |
 | country | String |  no  |  |
 | storeName | String |  no  |  |
 | pincode | String |  no  |  |
 | city | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [Shipment](#Shipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | journeyType | String |  no  |  |
 | deliverySlot | [String: Any] |  no  |  |
 | order | [OrderDetailsData](#OrderDetailsData)? |  yes  |  |
 | deliveryDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | paymentMode | String |  no  |  |
 | billingDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | shipmentPrices | [ShipmentPricesData](#ShipmentPricesData)? |  yes  |  |
 | dpDetails | [DPDetails](#DPDetails)? |  yes  |  |
 | bagStatusHistory | [String]? |  yes  |  |
 | shipmentId | String |  no  |  |
 | shipmentQuantity | Int |  no  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | bags | [String: Any] |  no  |  |

---


 
 
 #### [ShipmentDetailsResponse](#ShipmentDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[Shipment](#Shipment)]? |  yes  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reason | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ShipmentPricesDataSet](#ShipmentPricesDataSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstFee | Int? |  yes  |  |
 | couponEffectiveDiscount | Int? |  yes  |  |
 | refundCredit | Int? |  yes  |  |
 | brandCalculatedAmount | Int? |  yes  |  |
 | valueOfGood | Int? |  yes  |  |
 | cashbackApplied | Int? |  yes  |  |
 | taxCollectedAtSource | Int? |  yes  |  |
 | discount | String? |  yes  |  |
 | codCharges | Int? |  yes  |  |
 | fyndCredits | Int? |  yes  |  |
 | deliveryCharge | Int? |  yes  |  |
 | priceMarked | Int? |  yes  |  |
 | amountPaid | Int? |  yes  |  |
 | priceEffective | Int? |  yes  |  |
 | cashback | Int? |  yes  |  |

---


 
 
 #### [Shipment1](#Shipment1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentStatus | String |  no  |  |
 | prices | [ShipmentPricesDataSet](#ShipmentPricesDataSet)? |  yes  |  |
 | rtdDone | String |  no  |  |
 | orderId | String |  no  |  |
 | shipmentId | String |  no  |  |
 | totalItems | String |  no  |  |

---


 
 
 #### [ManifestShipmentResponse](#ManifestShipmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[Shipment1](#Shipment1)]? |  yes  |  |
 | success | Bool |  no  |  |

---



