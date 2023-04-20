



##### [Back to Application docs](./README.md)

## Order Methods
Handles Platform websites OMS
* [getOrders](#getorders)
* [getOrderById](#getorderbyid)
* [getShipmentById](#getshipmentbyid)
* [getShipmentReasons](#getshipmentreasons)
* [getShipmentBagReasons](#getshipmentbagreasons)
* [updateShipmentStatus](#updateshipmentstatus)
* [trackShipment](#trackshipment)
* [getPosOrderById](#getposorderbyid)
* [getCustomerDetailsByShipmentId](#getcustomerdetailsbyshipmentid)
* [sendOtpToShipmentCustomer](#sendotptoshipmentcustomer)
* [verifyOtpShipmentCustomer](#verifyotpshipmentcustomer)
* [getInvoiceByShipmentId](#getinvoicebyshipmentid)
* [getCreditNoteByShipmentId](#getcreditnotebyshipmentid)



## Methods with example and description


#### getOrders
Get all orders




```swift
order.getOrders(pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, status: status, customMeta: customMeta) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |   
| fromDate | String? | no | The date from which the orders should be retrieved. |   
| toDate | String? | no | The date till which the orders should be retrieved. |   
| status | Int? | no | A filter to retrieve orders by their current status such as _placed_, _delivered_, etc. |   
| customMeta | String? | no | A filter and retrieve data using special fields included for special use-cases |  



Use this API to retrieve all the orders.

*Returned Response:*




[OrderList](#OrderList)

Success. Returns all the orders. Check the example shown below or refer `OrderList` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOrderById
Get details of an order




```swift
order.getOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |  



Use this API to retrieve order details such as tracking details, shipment, store information using Fynd Order ID.

*Returned Response:*




[OrderById](#OrderById)

Success. Check the example shown below or refer `OrderById` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentById
Get details of a shipment




```swift
order.getShipmentById(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to retrieve shipment details such as price breakup, tracking details, store information, etc. using Shipment ID.

*Returned Response:*




[ShipmentById](#ShipmentById)

Success. Check the example shown below or refer `ShipmentById` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentReasons
Get reasons behind full or partial cancellation of a shipment




```swift
order.getShipmentReasons(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to retrieve the issues that led to the cancellation of bags within a shipment.

*Returned Response:*




[ShipmentReasons](#ShipmentReasons)

Success. Check the example shown below or refer `ShipmentReasons` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentBagReasons
Get reasons at l1,l2 and l3 for cancellation and return based on department




```swift
order.getShipmentBagReasons(shipmentId: shipmentId, bagId: bagId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| bagId | String | yes | ID of the bag. |  



Use this API to retrieve the issues that led to the cancellation of bags within a shipment.

*Returned Response:*




[ShipmentBagReasons](#ShipmentBagReasons)

Success. Check the example shown below or refer `ShipmentBagReasons` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateShipmentStatus
Update the shipment status




```swift
order.updateShipmentStatus(shipmentId: shipmentId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  
| body | ShipmentStatusUpdateBody | yes | Request body |


Use this API to update the status of a shipment using its shipment ID.

*Returned Response:*




[ShipmentStatusUpdate](#ShipmentStatusUpdate)

Success. Check the example shown below or refer `ShipmentStatusUpdateBody` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### trackShipment
Track shipment




```swift
order.trackShipment(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to track a shipment using its shipment ID.

*Returned Response:*




[ShipmentTrack](#ShipmentTrack)

Success. Check the example shown below or refer `ShipmentTrack` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getPosOrderById
Get POS Order




```swift
order.getPosOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |  



Use this API to retrieve a POS order and all its details such as tracking details, shipment, store information using Fynd Order ID.

*Returned Response:*




[PosOrderById](#PosOrderById)

Success. Check the example shown below or refer `PosOrderById` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCustomerDetailsByShipmentId
Get Customer Details by Shipment Id




```swift
order.getCustomerDetailsByShipmentId(orderId: orderId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |   
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to retrieve customer details such as mobileno using Shipment ID.

*Returned Response:*




[CustomerDetailsByShipmentId](#CustomerDetailsByShipmentId)

Success. Check the example shown below or refer `CustomerDetailsByShipmentId` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### sendOtpToShipmentCustomer
Send and Resend Otp code to Order-Shipment customer




```swift
order.sendOtpToShipmentCustomer(orderId: orderId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |   
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to send OTP to the customer of the mapped Shipment.

*Returned Response:*




[sendOTPApplicationResponse](#sendOTPApplicationResponse)

Success to acknowledge the service was notified




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### verifyOtpShipmentCustomer
Verify Otp code




```swift
order.verifyOtpShipmentCustomer(orderId: orderId, shipmentId: shipmentId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | A unique number used for identifying and tracking your orders. |   
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  
| body | ReqBodyVerifyOTPShipment | yes | Request body |


Use this API to verify OTP and create a session token with custom payload.

*Returned Response:*




[ResponseVerifyOTPShipment](#ResponseVerifyOTPShipment)

Success, the code is valid and returns a session token




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getInvoiceByShipmentId
Get Invoice URL




```swift
order.getInvoiceByShipmentId(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to get a generated Invoice URL for viewing or download.

*Returned Response:*




[ResponseGetInvoiceShipment](#ResponseGetInvoiceShipment)

Success, the code is valid and returns a SignedUrl




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCreditNoteByShipmentId
Get Credit Note URL




```swift
order.getCreditNoteByShipmentId(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to get a generated Credit Note URL for viewing or download.

*Returned Response:*




[ResponseGetCreditNoteShipment](#ResponseGetCreditNoteShipment)

Success, the code is valid and returns a SignedUrl




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [OrderById](#OrderById)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | [OrderSchema](#OrderSchema) |  no  |  |

---


 
 
 #### [OrderList](#OrderList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OrderSchema](#OrderSchema)] |  no  |  |
 | page | [OrderPage](#OrderPage) |  no  |  |
 | filters | [OrderFilters](#OrderFilters) |  no  |  |

---


 
 
 #### [OrderPage](#OrderPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |

---


 
 
 #### [OrderFilters](#OrderFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statuses | [[OrderStatuses](#OrderStatuses)]? |  yes  |  |

---


 
 
 #### [OrderStatuses](#OrderStatuses)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | value | Int? |  yes  |  |
 | isSelected | Bool? |  yes  |  |

---


 
 
 #### [ReqBodyVerifyOTPShipment](#ReqBodyVerifyOTPShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String |  no  |  |
 | otpCode | String |  no  |  |

---


 
 
 #### [ResponseGetCreditNoteShipment](#ResponseGetCreditNoteShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | presignedType | String |  no  |  |
 | shipmentId | String |  no  |  |
 | presignedUrl | String |  no  |  |

---


 
 
 #### [ResponseGetInvoiceShipment](#ResponseGetInvoiceShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | presignedType | String |  no  |  |
 | shipmentId | String |  no  |  |
 | presignedUrl | String |  no  |  |

---


 
 
 #### [ResponseVerifyOTPShipment](#ResponseVerifyOTPShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |

---


 
 
 #### [sendOTPApplicationResponse](#sendOTPApplicationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | requestId | String |  no  |  |
 | message | String |  no  |  |
 | resendTimer | Int |  no  |  |

---


 
 
 #### [ShipmentBagReasons](#ShipmentBagReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [[BagReasons](#BagReasons)] |  no  |  |

---


 
 
 #### [ShipmentById](#ShipmentById)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipment | [Shipments](#Shipments) |  no  |  |

---


 
 
 #### [CustomerDetailsByShipmentId](#CustomerDetailsByShipmentId)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  |  |
 | shipmentId | String |  no  |  |
 | name | String |  no  |  |
 | phone | String |  no  |  |
 | country | String |  no  |  |

---


 
 
 #### [ShipmentReasons](#ShipmentReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [[Reasons](#Reasons)] |  no  |  |

---


 
 
 #### [ShipmentStatusUpdateBody](#ShipmentStatusUpdateBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statuses | [[StatusesBody](#StatusesBody)] |  no  |  |
 | forceTransition | Bool |  no  |  |
 | task | Bool? |  yes  |  |

---


 
 
 #### [StatusesBody](#StatusesBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | shipments | [String: Any]? |  yes  |  |

---


 
 
 #### [ShipmentStatusUpdate](#ShipmentStatusUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | [[String: Any]] |  no  |  |
 | status | Bool |  no  |  |

---


 
 
 #### [ShipmentTrack](#ShipmentTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [[Track](#Track)] |  no  |  |

---


 
 
 #### [OrderSchema](#OrderSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String? |  yes  |  |
 | breakupValues | [[BreakupValues](#BreakupValues)]? |  yes  |  |
 | orderCreatedTime | String? |  yes  |  |
 | shipments | [[Shipments](#Shipments)]? |  yes  |  |
 | totalShipmentsInOrder | Int? |  yes  |  |
 | userInfo | [UserInfo](#UserInfo)? |  yes  |  |
 | bagsForReorder | [[BagsForReorder](#BagsForReorder)]? |  yes  |  |

---


 
 
 #### [BagsForReorder](#BagsForReorder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int? |  yes  |  |
 | itemSize | String? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | sellerId | Int? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | articleAssignment | [BagsForReorderArticleAssignment](#BagsForReorderArticleAssignment)? |  yes  |  |

---


 
 
 #### [BagsForReorderArticleAssignment](#BagsForReorderArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | level | String? |  yes  |  |
 | strategy | String? |  yes  |  |

---


 
 
 #### [PosOrderById](#PosOrderById)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | [OrderSchema](#OrderSchema) |  no  |  |

---


 
 
 #### [BagReasons](#BagReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [Item](#Item)? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | currentStatus | [CurrentStatus](#CurrentStatus)? |  yes  |  |
 | id | Int? |  yes  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)]? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | deliveryDate | String? |  yes  |  |
 | returnableDate | String? |  yes  |  |
 | appliedPromos | [[AppliedPromos](#AppliedPromos)]? |  yes  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [ItemBrand](#ItemBrand)? |  yes  |  |
 | name | String? |  yes  |  |
 | size | String? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | image | [String]? |  yes  |  |
 | code | String? |  yes  |  |
 | id | Double? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amountPaidRoundoff | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | addedToFyndCash | Bool? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |

---


 
 
 #### [CurrentStatus](#CurrentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | status | String? |  yes  |  |
 | name | String? |  yes  |  |
 | journeyType | String? |  yes  |  |

---


 
 
 #### [FinancialBreakup](#FinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | gstFee | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | size | String? |  yes  |  |
 | totalUnits | Int? |  yes  |  |
 | discount | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | addedToFyndCash | Bool? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | identifiers | [Identifiers](#Identifiers)? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | itemName | String? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |

---


 
 
 #### [Identifiers](#Identifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String? |  yes  |  |
 | skuCode | String? |  yes  |  |

---


 
 
 #### [ItemBrand](#ItemBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [AppliedPromos](#AppliedPromos)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double? |  yes  |  |
 | promoId | String? |  yes  |  |
 | promotionName | String? |  yes  |  |
 | promotionType | String? |  yes  |  |
 | articleQuantity | Double? |  yes  |  |
 | mrpPromotion | Bool? |  yes  |  |
 | appliedFreeArticles | [AppliedFreeArticles](#AppliedFreeArticles)? |  yes  |  |

---


 
 
 #### [AppliedFreeArticles](#AppliedFreeArticles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | quantity | Double? |  yes  |  |
 | articleId | String? |  yes  |  |
 | parentItemIdentifier | String? |  yes  |  |
 | freeGiftItemDetails | [[FreeGiftItemDetails](#FreeGiftItemDetails)]? |  yes  |  |

---


 
 
 #### [FreeGiftItemDetails](#FreeGiftItemDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | String? |  yes  |  |
 | itemName | String? |  yes  |  |
 | itemBrandName | String? |  yes  |  |
 | itemPriceDetails | [ItemPriceDetails](#ItemPriceDetails)? |  yes  |  |

---


 
 
 #### [ItemPriceDetails](#ItemPriceDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currency | String? |  yes  |  |
 | marked | [MarkedValues](#MarkedValues)? |  yes  |  |
 | effective | [EffectiveValues](#EffectiveValues)? |  yes  |  |

---


 
 
 #### [MarkedValues](#MarkedValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Double? |  yes  |  |
 | min | Double? |  yes  |  |

---


 
 
 #### [EffectiveValues](#EffectiveValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Double? |  yes  |  |
 | min | Double? |  yes  |  |

---


 
 
 #### [BreakupValues](#BreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | value | Double? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [DeliveryAddress](#DeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | state | String? |  yes  |  |
 | version | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | area | String? |  yes  |  |
 | city | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | email | String? |  yes  |  |
 | country | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | name | String? |  yes  |  |
 | address | String? |  yes  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | companyName | String? |  yes  |  |

---


 
 
 #### [Invoice](#Invoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedDate | String? |  yes  |  |
 | invoiceUrl | String? |  yes  |  |
 | labelUrl | String? |  yes  |  |

---


 
 
 #### [Promise](#Promise)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | showPromise | Bool? |  yes  |  |
 | timestamp | [Timestamp](#Timestamp)? |  yes  |  |

---


 
 
 #### [Timestamp](#Timestamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | String? |  yes  |  |
 | max | String? |  yes  |  |

---


 
 
 #### [Reasons](#Reasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonText | String? |  yes  |  |
 | showTextArea | Bool? |  yes  |  |
 | feedbackType | String? |  yes  |  |
 | flow | String? |  yes  |  |
 | reasonId | Int? |  yes  |  |
 | priority | Int? |  yes  |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | hexCode | String? |  yes  |  |

---


 
 
 #### [ShipmentUserInfo](#ShipmentUserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gender | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |

---


 
 
 #### [Shipments](#Shipments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String? |  yes  |  |
 | breakupValues | [[BreakupValues](#BreakupValues)]? |  yes  |  |
 | trackUrl | String? |  yes  |  |
 | trakingNo | String? |  yes  |  |
 | awbNo | String? |  yes  |  |
 | dpName | String? |  yes  |  |
 | trackingDetails | [[TrackingDetails](#TrackingDetails)]? |  yes  |  |
 | beneficiaryDetails | Bool? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | canBreak | [String: Any]? |  yes  |  |
 | deliveryDate | String? |  yes  |  |
 | returnableDate | String? |  yes  |  |
 | showDownloadInvoice | Bool? |  yes  |  |
 | showTrackLink | Bool? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | needHelpUrl | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | totalBags | Int? |  yes  |  |
 | deliveryAddress | [DeliveryAddress](#DeliveryAddress)? |  yes  |  |
 | invoice | [Invoice](#Invoice)? |  yes  |  |
 | comment | String? |  yes  |  |
 | orderType | String? |  yes  |  |
 | customMeta | [[String: Any]]? |  yes  |  |
 | promise | [Promise](#Promise)? |  yes  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | bags | [[Bags](#Bags)]? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | payment | [ShipmentPayment](#ShipmentPayment)? |  yes  |  |
 | shipmentCreatedAt | String? |  yes  |  |
 | shipmentStatus | [ShipmentStatus](#ShipmentStatus)? |  yes  |  |
 | userInfo | [ShipmentUserInfo](#ShipmentUserInfo)? |  yes  |  |
 | sizeInfo | [String: Any]? |  yes  |  |
 | totalDetails | [ShipmentTotalDetails](#ShipmentTotalDetails)? |  yes  |  |
 | returnMeta | [ReturnMetaData](#ReturnMetaData)? |  yes  |  |

---


 
 
 #### [ShipmentTotalDetails](#ShipmentTotalDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalPrice | Double? |  yes  |  |
 | sizes | Int? |  yes  |  |
 | pieces | Int? |  yes  |  |

---


 
 
 #### [ShipmentPayment](#ShipmentPayment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String? |  yes  |  |
 | mode | String? |  yes  |  |
 | mop | String? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [ReturnMetaData](#ReturnMetaData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | images | [[ReturnMetaDataImages](#ReturnMetaDataImages)]? |  yes  |  |

---


 
 
 #### [ReturnMetaDataImages](#ReturnMetaDataImages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [Track](#Track)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | awb | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | lastLocationRecievedAt | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | shipmentType | String? |  yes  |  |
 | status | String? |  yes  |  |
 | updatedTime | String? |  yes  |  |
 | accountName | String? |  yes  |  |

---


 
 
 #### [TrackingDetails](#TrackingDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCurrent | Bool? |  yes  |  |
 | status | String? |  yes  |  |
 | time | String? |  yes  |  |
 | isPassed | Bool? |  yes  |  |
 | trackingDetails | [[NestedTrackingDetails](#NestedTrackingDetails)]? |  yes  |  |

---


 
 
 #### [NestedTrackingDetails](#NestedTrackingDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCurrent | Bool? |  yes  |  |
 | status | String? |  yes  |  |
 | time | String? |  yes  |  |
 | isPassed | Bool? |  yes  |  |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gender | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [ApefaceApiError](#ApefaceApiError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---



