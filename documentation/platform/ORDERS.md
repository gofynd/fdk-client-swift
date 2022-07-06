



##### [Back to Platform docs](./README.md)

## Orders Methods
Handles all platform order and shipment api(s)
* [getShipmentDetails](#getshipmentdetails)
* [getOrderShipmentDetails](#getordershipmentdetails)



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



### Schemas

 
 
 #### [OrderDetailsData](#OrderDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | String? |  yes  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeName | String |  no  |  |
 | country | String |  no  |  |
 | code | String |  no  |  |
 | address | String |  no  |  |
 | city | String |  no  |  |
 | id | String |  no  |  |
 | state | String |  no  |  |
 | pincode | String |  no  |  |
 | fulfillmentChannel | String |  no  |  |
 | contactPerson | String |  no  |  |
 | phone | String |  no  |  |

---


 
 
 #### [DPDetails](#DPDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | awbNo | String? |  yes  |  |
 | name | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | ewayBillId | String? |  yes  |  |
 | id | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | trackUrl | String? |  yes  |  |

---


 
 
 #### [UserDetailsData](#UserDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | address | String |  no  |  |
 | phone | String |  no  |  |
 | name | String |  no  |  |
 | email | String |  no  |  |
 | state | String |  no  |  |
 | pincode | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [ShipmentPricesData](#ShipmentPricesData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | valueOfGood | Int? |  yes  |  |
 | brandCalculatedAmount | Int? |  yes  |  |
 | gstinCode | String? |  yes  |  |
 | gstFee | Int? |  yes  |  |
 | taxCollectedAtSource | Int? |  yes  |  |

---


 
 
 #### [Shipment](#Shipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | [OrderDetailsData](#OrderDetailsData)? |  yes  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | bags | [String: Any] |  no  |  |
 | journeyType | String |  no  |  |
 | paymentMode | String |  no  |  |
 | dpDetails | [DPDetails](#DPDetails)? |  yes  |  |
 | deliverySlot | [String: Any] |  no  |  |
 | billingDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | shipmentPrices | [ShipmentPricesData](#ShipmentPricesData)? |  yes  |  |
 | shipmentQuantity | Int |  no  |  |
 | bagStatusHistory | [String]? |  yes  |  |
 | shipmentId | String |  no  |  |
 | deliveryDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |

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



