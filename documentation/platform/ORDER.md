



##### [Back to Platform docs](./README.md)

## Order Methods
Handles Platform websites OMS
* [shipmentStatusUpdate](#shipmentstatusupdate)
* [activityStatus](#activitystatus)
* [storeProcessShipmentUpdate](#storeprocessshipmentupdate)
* [checkRefund](#checkrefund)
* [shipmentBagsCanBreak](#shipmentbagscanbreak)
* [getOrdersByCompanyId](#getordersbycompanyid)
* [getOrderLanesCountByCompanyId](#getorderlanescountbycompanyid)
* [getOrderDetails](#getorderdetails)
* [getOrderDetails1](#getorderdetails1)
* [getPicklistOrdersByCompanyId](#getpicklistordersbycompanyid)
* [trackShipmentPlatform](#trackshipmentplatform)
* [trackOrder](#trackorder)
* [failedOrders](#failedorders)
* [reprocessOrder](#reprocessorder)
* [updateShipment](#updateshipment)
* [getPlatformShipmentReasons](#getplatformshipmentreasons)
* [getShipmentTrackDetails](#getshipmenttrackdetails)
* [getShipmentAddress](#getshipmentaddress)
* [updateShipmentAddress](#updateshipmentaddress)
* [getOrdersByApplicationId](#getordersbyapplicationid)
* [getPing](#getping)
* [voiceCallback](#voicecallback)
* [voiceClickToCall](#voiceclicktocall)
* [createOrder](#createorder)
* [invalidateShipmentCache](#invalidateshipmentcache)
* [reassignLocation](#reassignlocation)
* [updateShipmentLock](#updateshipmentlock)
* [updateShipmentStatus](#updateshipmentstatus)
* [getShipmentById](#getshipmentbyid)
* [getShipments](#getshipments)
* [getOrderById](#getorderbyid)
* [getOrders](#getorders)
* [getBags](#getbags)
* [getBagById](#getbagbyid)



## Methods with example and description


#### shipmentStatusUpdate
Update status of Shipment




```swift
client.order.shipmentStatusUpdate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateShipmentStatusBody | yes | Request body |


Update Shipment Status

*Returned Response:*




[UpdateShipmentStatusResponse](#UpdateShipmentStatusResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### activityStatus
Get Activity Status




```swift
client.order.activityStatus(bagId: bagId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagId | String | yes | Bag Id |  



Get Activity Status

*Returned Response:*




[GetActivityStatus](#GetActivityStatus)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### storeProcessShipmentUpdate
Update Store Process-Shipment




```swift
client.order.storeProcessShipmentUpdate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateProcessShipmenstRequestBody | yes | Request body |


Update Store Process-Shipment

*Returned Response:*




[UpdateProcessShipmenstRequestResponse](#UpdateProcessShipmenstRequestResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### checkRefund
Check Refund is available or not




```swift
client.order.checkRefund(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | Shipment Id |  



Check Refund is available or not

*Returned Response:*




[[String: Any]](#[String: Any])

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### shipmentBagsCanBreak
Decides if Shipment bags can break




```swift
client.order.shipmentBagsCanBreak(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CanBreakRequestBody | yes | Request body |


Decides if Shipment bags can break

*Returned Response:*




[CanBreakResponse](#CanBreakResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOrdersByCompanyId
Get Orders for company based on Company Id




```swift
client.order.getOrdersByCompanyId(pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, isPrioritySort: isPrioritySort, lockStatus: lockStatus, q: q, stage: stage, salesChannels: salesChannels, orderId: orderId, stores: stores, deploymentStores: deploymentStores, status: status, dp: dp, shortenUrls: shortenUrls, filterType: filterType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | String? | no | Current page number |   
| pageSize | String? | no | Page limit |   
| fromDate | String? | no | From Date |   
| toDate | String? | no | To Date |   
| isPrioritySort | Bool? | no | Sorting Order |   
| lockStatus | Bool? | no | Hide Lock Status |   
| q | String? | no | Keyword for Search |   
| stage | String? | no | Specefic Order Stage |   
| salesChannels | String? | no | Selected Sales Channel |   
| orderId | String? | no | Order Id |   
| stores | String? | no | Selected Stores |   
| deploymentStores | String? | no | Selected Deployment Stores |   
| status | String? | no | Status of order |   
| dp | String? | no | Delivery Partners |   
| shortenUrls | Bool? | no | Shorten URL option |   
| filterType | String? | no | Filters |  



Get Orders

*Returned Response:*




[OrderListing](#OrderListing)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOrderLanesCountByCompanyId
Get Order Lanes Count for company based on Company Id




```swift
client.order.getOrderLanesCountByCompanyId(pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, q: q, stage: stage, salesChannels: salesChannels, orderId: orderId, stores: stores, status: status, shortenUrls: shortenUrls, filterType: filterType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | String? | no | Current page number |   
| pageSize | String? | no | Page limit |   
| fromDate | String? | no | From Date |   
| toDate | String? | no | To Date |   
| q | String? | no | Keyword for Search |   
| stage | String? | no | Specefic Order Stage |   
| salesChannels | String? | no | Selected Sales Channel |   
| orderId | String? | no | Order Id |   
| stores | String? | no | Selected Stores |   
| status | String? | no | Status of order |   
| shortenUrls | Bool? | no | Shorten URL option |   
| filterType | String? | no | Filters |  



Get Orders Seperate Lane Count

*Returned Response:*




[OrderLanesCount](#OrderLanesCount)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOrderDetails
Get Order Details for company based on Company Id and Order Id




```swift
client.order.getOrderDetails(orderId: orderId, next: next, previous: previous) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String? | no | Order Id |   
| next | String? | no | Next |   
| previous | String? | no | Previous |  



Get Orders

*Returned Response:*




[OrderDetails](#OrderDetails)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOrderDetails1
Get Order Details for company based on Company Id and Order Id




```swift
client.application("<APPLICATION_ID>").order.getOrderDetails1(orderId: orderId, next: next, previous: previous) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String? | no | Order Id |   
| next | String? | no | Next |   
| previous | String? | no | Previous |  



Get Orders

*Returned Response:*




[OrderDetails](#OrderDetails)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getPicklistOrdersByCompanyId
Get Orders for company based on Company Id




```swift
client.order.getPicklistOrdersByCompanyId(pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, q: q, stage: stage, salesChannels: salesChannels, orderId: orderId, stores: stores, status: status, shortenUrls: shortenUrls, filterType: filterType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | String? | no | Current page number |   
| pageSize | String? | no | Page limit |   
| fromDate | String? | no | From Date |   
| toDate | String? | no | To Date |   
| q | String? | no | Keyword for Search |   
| stage | String? | no | Specefic Order Stage |   
| salesChannels | String? | no | Selected Sales Channel |   
| orderId | String? | no | Order Id |   
| stores | String? | no | Selected Stores |   
| status | String? | no | Status of order |   
| shortenUrls | Bool? | no | Shorten URL option |   
| filterType | String? | no | Filters |  



Get Orders

*Returned Response:*




[OrderPicklistListing](#OrderPicklistListing)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### trackShipmentPlatform
Track Shipment by shipment id, for application based on application Id




```swift
client.application("<APPLICATION_ID>").order.trackShipmentPlatform(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | Shipment Id |  



Shipment Track

*Returned Response:*




[PlatformShipmentTrack](#PlatformShipmentTrack)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### trackOrder
Track Order by order id, for application based on application Id




```swift
client.application("<APPLICATION_ID>").order.trackOrder(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | Order Id |  



Order Track

*Returned Response:*




[PlatformOrderTrack](#PlatformOrderTrack)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### failedOrders
Get all failed orders application wise




```swift
client.application("<APPLICATION_ID>").order.failedOrders() { (response, error) in
    // Use response
}
```






Failed Orders

*Returned Response:*




[FailedOrders](#FailedOrders)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### reprocessOrder
Reprocess order by order id




```swift
client.application("<APPLICATION_ID>").order.reprocessOrder(orderId: orderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | Order Id |  



Order Reprocess

*Returned Response:*




[UpdateOrderReprocessResponse](#UpdateOrderReprocessResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateShipment
Use this API to update the shipment using its shipment ID.




```swift
client.application("<APPLICATION_ID>").order.updateShipment(shipmentId: shipmentId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  
| body | ShipmentUpdateRequest | yes | Request body |


Update the shipment

*Returned Response:*




[ShipmentUpdateResponse](#ShipmentUpdateResponse)

Success. Check the example shown below or refer `ShipmentUpdateRequest` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getPlatformShipmentReasons
Use this API to retrieve the issues that led to the cancellation of bags within a shipment.




```swift
client.application("<APPLICATION_ID>").order.getPlatformShipmentReasons(action: action) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| action | String | yes | Action |  



Get reasons behind full or partial cancellation of a shipment

*Returned Response:*




[ShipmentReasonsResponse](#ShipmentReasonsResponse)

Success. Check the example shown below or refer `ShipmentReasonsResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentTrackDetails
Use this API to track a shipment using its shipment ID.




```swift
client.application("<APPLICATION_ID>").order.getShipmentTrackDetails(orderId: orderId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes | ID of the order. |   
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Track shipment

*Returned Response:*




[ShipmentTrackResponse](#ShipmentTrackResponse)

Success. Check the example shown below or refer `ShipmentTrackResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentAddress
Use this API to get address of a shipment using its shipment ID and Address Category.




```swift
client.order.getShipmentAddress(shipmentId: shipmentId, addressCategory: addressCategory) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| addressCategory | String | yes | Category of the address it falls into(billing or delivery). |  



Get Shipment Address

*Returned Response:*




[GetShipmentAddressResponse](#GetShipmentAddressResponse)

Success. Check the example shown below or refer `GetShipmentAddressResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateShipmentAddress
Use this API to update address of a shipment using its shipment ID and Address Category.




```swift
client.order.updateShipmentAddress(shipmentId: shipmentId, addressCategory: addressCategory, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| addressCategory | String | yes | Category of the address it falls into(billing or delivery). |  
| body | UpdateShipmentAddressRequest | yes | Request body |


Update Shipment Address

*Returned Response:*




[UpdateShipmentAddressResponse](#UpdateShipmentAddressResponse)

Success. Check the example shown below or refer `UpdateShipmentAddressResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOrdersByApplicationId
Get Orders for company based on Company Id




```swift
client.application("<APPLICATION_ID>").order.getOrdersByApplicationId(pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, q: q, stage: stage, salesChannels: salesChannels, orderId: orderId, stores: stores, status: status, dp: dp, shortenUrls: shortenUrls, filterType: filterType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | String? | no | Current page number |   
| pageSize | String? | no | Page limit |   
| fromDate | String? | no | From Date |   
| toDate | String? | no | To Date |   
| q | String? | no | Keyword for Search |   
| stage | String? | no | Specefic Order Stage |   
| salesChannels | String? | no | Selected Sales Channel |   
| orderId | String? | no | Order Id |   
| stores | String? | no | Selected Stores |   
| status | String? | no | Status of order |   
| dp | String? | no | Delivery Partners |   
| shortenUrls | Bool? | no | Shorten URL option |   
| filterType | String? | no | Filters |  



Get Orders at Application Level

*Returned Response:*




[OrderListing](#OrderListing)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getPing
Get Ping




```swift
client.order.getPing() { (response, error) in
    // Use response
}
```






Get Ping

*Returned Response:*




[GetPingResponse](#GetPingResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### voiceCallback
Get Voice Callback




```swift
client.order.voiceCallback() { (response, error) in
    // Use response
}
```






Voice Callback

*Returned Response:*




[GetVoiceCallbackResponse](#GetVoiceCallbackResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### voiceClickToCall
Get Voice Click to Call




```swift
client.order.voiceClickToCall(caller: caller, receiver: receiver) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| caller | String | yes | Caller contact number |   
| receiver | String | yes | Receiver contact number |  



Voice Click to Call

*Returned Response:*




[GetClickToCallResponse](#GetClickToCallResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createOrder





```swift
client.order.createOrder(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateOrderPayload | yes | Request body |




*Returned Response:*




[CreateOrderResponse](#CreateOrderResponse)

Successfully created an order!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### invalidateShipmentCache





```swift
client.order.invalidateShipmentCache(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InvalidateShipmentCachePayload | yes | Request body |


Invalidate shipment Cache

*Returned Response:*




[InvalidateShipmentCacheResponse](#InvalidateShipmentCacheResponse)

Successfully updated shipment cache!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### reassignLocation





```swift
client.order.reassignLocation(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | StoreReassign | yes | Request body |


Reassign Location

*Returned Response:*




[StoreReassignResponse](#StoreReassignResponse)

Successfully reassigned location!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateShipmentLock





```swift
client.order.updateShipmentLock(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateShipmentLockPayload | yes | Request body |


update shipment lock

*Returned Response:*




[UpdateShipmentLockResponse](#UpdateShipmentLockResponse)

Successfully updated shipment cache!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateShipmentStatus





```swift
client.order.updateShipmentStatus(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateShipmentStatusPayload | yes | Request body |




*Returned Response:*




[UpdateShipmentStatusResponse1](#UpdateShipmentStatusResponse1)

Successfully updated entities !




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentById





```swift
client.order.getShipmentById(shipmentId: shipmentId, channelOrderId: channelOrderId, channelShipmentId: channelShipmentId, channelBagId: channelBagId, channelId: channelId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String? | no |  |   
| channelOrderId | String? | no |  |   
| channelShipmentId | String? | no |  |   
| channelBagId | String? | no |  |   
| channelId | String? | no |  |  





*Returned Response:*




[ShipmentDetailsPlatformResponse](#ShipmentDetailsPlatformResponse)

Successfully retrived shipment details!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "shipment_id": "16599806855311914452",
  "affiliate_details": {
    "id": "5dd3ce1f1662684aa7019f1e",
    "affiliate_bag_id": "19207348",
    "affiliate_order_id": "FY62F14B8501F18E8FD3",
    "company_affiliate_tag": "OpexTesting",
    "affiliate_id": "5dd3ce1f1662684aa7019f1e",
    "affiliate_shipment_id": "16599806855311914452",
    "shipment_meta": {
      "dp_id": "7",
      "weight": 250,
      "external": {},
      "formatted": {
        "max": "Mon, 15 Aug",
        "min": "Sat, 13 Aug"
      },
      "timestamp": {
        "max": 1660585474,
        "min": 1660412674
      },
      "bag_weight": {
        "19207348": 250
      },
      "debug_info": {
        "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
      },
      "dp_options": {
        "7": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 2,
          "operations": [
            "inter_city"
          ],
          "r_priority": 1,
          "fm_priority": 2,
          "lm_priority": 2,
          "payment_mode": "all",
          "rvp_priority": 1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "7"
        },
        "29": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 4,
          "operations": [
            "inter_city"
          ],
          "r_priority": 3,
          "fm_priority": 4,
          "lm_priority": 4,
          "payment_mode": "all",
          "rvp_priority": 3,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "29"
        },
        "36": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 6,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 6,
          "lm_priority": 6,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "36"
        },
        "37": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 7,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 7,
          "lm_priority": 7,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "37"
        }
      },
      "order_type": null,
      "dp_sort_key": "fm_priority",
      "ewaybill_info": {},
      "packaging_name": "POLYB_M_1411P5",
      "assign_dp_from_sb": true,
      "same_store_available": false,
      "fulfilment_priority_text": null,
      "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
      "auto_trigger_dp_assignment_ACF": true
    },
    "affiliate_meta": {
      "fynd": {
        "fulfilment_identifier": "pulse"
      },
      "channel_shipment_id": null,
      "channel_order_id": null,
      "due_date": null,
      "is_priority": false,
      "box_type": null,
      "coupon_code": null,
      "size_level_total_qty": 924,
      "loyalty_discount": 0,
      "employee_discount": 0
    },
    "affiliate_store_id": "10182",
    "pdf_links": {
      "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
      "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
      "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
      "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
      "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
      "label_type": "fynd",
      "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
      "invoice_type": "fynd"
    },
    "config": {
      "id": "5dd3ce1f1662684aa7019f1e",
      "meta": [],
      "name": "OpexTesting",
      "owner": "000000000000000000000020",
      "token": "np0tHm04",
      "secret": "dTSEQkEE7",
      "createdAt": null,
      "updatedAt": null,
      "description": "Opex testing app",
      "dp_assignment": true,
      "app_company_id": 61,
      "article_assignment": {
        "level": "multi-companies",
        "strategy": "optimal"
      },
      "force_reassignment": false,
      "post_order_reassignment": true
    }
  },
  "app_id": "5dd3ce1f1662684aa7019f1e",
  "article_details": {
    "status": {
      "delivery_done": {
        "5f8a4751d2f36f00014ff8ed": {
          "uid": "5f8a4751d2f36f00014ff8ed",
          "_id": "5f8a4751d2f36f00014ff8ed",
          "is_set": false,
          "bag_ids": [
            19207348
          ],
          "quantity": 1,
          "reasons": {
            "90": [
              {
                "slug": "others",
                "display_name": "Others",
                "id": 90,
                "state": "bag_confirmed",
                "text": "FY62F14B8501F18E8FD3",
                "bag_id": 19207348
              }
            ]
          }
        }
      }
    }
  },
  "bag_status_history": [
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:14:46+00:00",
      "state_id": 89,
      "store_id": 10182,
      "state_type": "operational",
      "status": "pending",
      "shipment_id": "16599806855311914452",
      "id": 120514809,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 89,
        "display_name": "Pending",
        "notify_customer": true,
        "app_display_name": "Pending",
        "state_type": "operational",
        "app_state_name": "pending",
        "name": "pending",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:14:46+00:00",
      "state_id": 1,
      "store_id": 10182,
      "state_type": "operational",
      "status": "placed",
      "shipment_id": "16599806855311914452",
      "id": 120514810,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 1,
        "display_name": "Placed",
        "notify_customer": true,
        "app_display_name": "Processing",
        "state_type": "operational",
        "app_state_name": "processing",
        "name": "placed",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:14+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:15:14+00:00",
      "state_id": 2,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_confirmed",
      "shipment_id": "16599806855311914452",
      "id": 120514842,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 2,
        "display_name": "Confirmed",
        "notify_customer": false,
        "app_display_name": "Confirmed",
        "state_type": "operational",
        "app_state_name": "confirmed",
        "name": "bag_confirmed",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3n"
        }
      ]
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:15:20+00:00",
      "state_id": 91,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_invoiced",
      "shipment_id": "16599806855311914452",
      "id": 120514845,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 91,
        "display_name": "Bag Invoiced",
        "notify_customer": false,
        "app_display_name": "Bag Invoiced",
        "state_type": "operational",
        "app_state_name": "bag_invoiced",
        "name": "bag_invoiced",
        "is_active": true,
        "app_facing": false,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:15:20+00:00",
      "state_id": 113,
      "store_id": 10182,
      "state_type": "operational",
      "status": "ready_for_dp_assignment",
      "shipment_id": "16599806855311914452",
      "id": 120514846,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 113,
        "display_name": "Ready For Dp Assignment",
        "notify_customer": false,
        "app_display_name": "Ready For Dp Assignment",
        "state_type": "operational",
        "app_state_name": "ready_for_dp_assignment",
        "name": "ready_for_dp_assignment",
        "is_active": true,
        "app_facing": false,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:23+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:23+00:00",
      "state_id": 7,
      "store_id": 10182,
      "state_type": "operational",
      "status": "dp_assigned",
      "shipment_id": "16599806855311914452",
      "id": 120514848,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 7,
        "display_name": "DP Assigned",
        "notify_customer": false,
        "app_display_name": "DP Assigned",
        "state_type": "operational",
        "app_state_name": "dp_assigned",
        "name": "dp_assigned",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:33+00:00",
      "state_id": 8,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_packed",
      "shipment_id": "16599806855311914452",
      "id": 120514898,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 8,
        "display_name": "Bag Packed",
        "notify_customer": true,
        "app_display_name": "Bag Packed",
        "state_type": "operational",
        "app_state_name": "bag_packed",
        "name": "bag_packed",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "missed_state_ingestion",
          "display_name": "Missed state is ingested",
          "id": 162,
          "state": "missed_state",
          "text": "Missed state is ingested"
        }
      ]
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:33+00:00",
      "state_id": 12,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_picked",
      "shipment_id": "16599806855311914452",
      "id": 120514899,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 12,
        "display_name": "In Transit",
        "notify_customer": false,
        "app_display_name": "In Transit",
        "state_type": "operational",
        "app_state_name": "in_transit",
        "name": "bag_picked",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3"
        }
      ]
    },
    {
      "created_at": "2022-08-08T23:15:45+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:45+00:00",
      "state_id": 14,
      "store_id": 10182,
      "state_type": "operational",
      "status": "delivery_done",
      "shipment_id": "16599806855311914452",
      "id": 120514917,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 14,
        "display_name": "Delivery Done",
        "notify_customer": true,
        "app_display_name": "Delivered",
        "state_type": "operational",
        "app_state_name": "delivered",
        "name": "delivery_done",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3"
        }
      ]
    }
  ],
  "bags": [
    {
      "id": 19207348,
      "display_name": "Bag",
      "entity_type": "bag",
      "type": "single",
      "status": {
        "is_returnable": true,
        "can_be_cancelled": true,
        "enable_tracking": false,
        "is_customer_return_allowed": true,
        "is_active": false
      },
      "financial_breakup": [
        {
          "price_effective": 10000,
          "discount": 0,
          "amount_paid": 10000,
          "coupon_effective_discount": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cod_charges": 0,
          "refund_credit": 0,
          "cashback": 0,
          "refund_amount": 10000,
          "added_to_fynd_cash": false,
          "cashback_applied": 0,
          "gst_tax_percentage": 12,
          "value_of_good": 8928.57,
          "price_marked": 10000,
          "transfer_price": 0,
          "brand_calculated_amount": 10000,
          "tax_collected_at_source": 0,
          "tcs_percentage": 0,
          "promotion_effective_discount": 0,
          "coupon_value": 0,
          "amount_paid_roundoff": 10000,
          "size": "S",
          "total_units": 1,
          "hsn_code": "61091000",
          "identifiers": {
            "sku_code": "MT-100 WHITE_S"
          },
          "item_name": "White Printed T-Shirt",
          "gst_fee": 1071.43,
          "gst_tag": "IGST"
        }
      ],
      "bag_id": 19207348,
      "bag_update_time": 1659980745.2105737,
      "current_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": 1660000545,
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        }
      },
      "bag_status": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 89,
          "store_id": 10182,
          "state_type": "operational",
          "status": "pending",
          "shipment_id": "16599806855311914452",
          "id": 120514809,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 89,
            "display_name": "Pending",
            "notify_customer": true,
            "app_display_name": "Pending",
            "state_type": "operational",
            "app_state_name": "pending",
            "name": "pending",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 1,
          "store_id": 10182,
          "state_type": "operational",
          "status": "placed",
          "shipment_id": "16599806855311914452",
          "id": 120514810,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 1,
            "display_name": "Placed",
            "notify_customer": true,
            "app_display_name": "Processing",
            "state_type": "operational",
            "app_state_name": "processing",
            "name": "placed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:14+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000514,
          "state_id": 2,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_confirmed",
          "shipment_id": "16599806855311914452",
          "id": 120514842,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 2,
            "display_name": "Confirmed",
            "notify_customer": false,
            "app_display_name": "Confirmed",
            "state_type": "operational",
            "app_state_name": "confirmed",
            "name": "bag_confirmed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3n"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 91,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_invoiced",
          "shipment_id": "16599806855311914452",
          "id": 120514845,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 91,
            "display_name": "Bag Invoiced",
            "notify_customer": false,
            "app_display_name": "Bag Invoiced",
            "state_type": "operational",
            "app_state_name": "bag_invoiced",
            "name": "bag_invoiced",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 113,
          "store_id": 10182,
          "state_type": "operational",
          "status": "ready_for_dp_assignment",
          "shipment_id": "16599806855311914452",
          "id": 120514846,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 113,
            "display_name": "Ready For Dp Assignment",
            "notify_customer": false,
            "app_display_name": "Ready For Dp Assignment",
            "state_type": "operational",
            "app_state_name": "ready_for_dp_assignment",
            "name": "ready_for_dp_assignment",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000523,
          "state_id": 7,
          "store_id": 10182,
          "state_type": "operational",
          "status": "dp_assigned",
          "shipment_id": "16599806855311914452",
          "id": 120514848,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 7,
            "display_name": "DP Assigned",
            "notify_customer": false,
            "app_display_name": "DP Assigned",
            "state_type": "operational",
            "app_state_name": "dp_assigned",
            "name": "dp_assigned",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 8,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_packed",
          "shipment_id": "16599806855311914452",
          "id": 120514898,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 8,
            "display_name": "Bag Packed",
            "notify_customer": true,
            "app_display_name": "Bag Packed",
            "state_type": "operational",
            "app_state_name": "bag_packed",
            "name": "bag_packed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "missed_state_ingestion",
              "display_name": "Missed state is ingested",
              "id": 162,
              "state": "missed_state",
              "text": "Missed state is ingested"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 12,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_picked",
          "shipment_id": "16599806855311914452",
          "id": 120514899,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 12,
            "display_name": "In Transit",
            "notify_customer": false,
            "app_display_name": "In Transit",
            "state_type": "operational",
            "app_state_name": "in_transit",
            "name": "bag_picked",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000545,
          "state_id": 14,
          "store_id": 10182,
          "state_type": "operational",
          "status": "delivery_done",
          "shipment_id": "16599806855311914452",
          "id": 120514917,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 14,
            "display_name": "Delivery Done",
            "notify_customer": true,
            "app_display_name": "Delivered",
            "state_type": "operational",
            "app_state_name": "delivered",
            "name": "delivery_done",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        }
      ],
      "item": {
        "brand": "play clan",
        "can_return": true,
        "id": 95944,
        "webstore_product_url": null,
        "last_updated_at": 1660000486,
        "slug_key": "play-clan-white-printed-t-shirt-387",
        "attributes": {
          "color": "White",
          "gender": [
            "Men"
          ],
          "season": "SS16",
          "pattern": "Printed",
          "essential": "Yes",
          "brand_name": "play clan",
          "net-quantity": "1 U",
          "marketer-name": "Fynd",
          "primary_color": "White",
          "sleeve_length": "Short",
          "marketer-address": "Fynd",
          "primary_material": "Others",
          "primary_color_hex": "FFFFFF"
        },
        "meta": {
          "departments": [
            21
          ]
        },
        "gender": null,
        "l3_category": 192,
        "color": null,
        "can_cancel": true,
        "l3_category_name": "T-Shirts",
        "l1_category": [
          "Clothing"
        ],
        "brand_id": 85,
        "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
        "l2_category": [
          "Polos & T-Shirts"
        ],
        "name": "White Printed T-Shirt",
        "code": "MT-100 WHITE",
        "department_id": 21,
        "size": "S",
        "image": [
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
        ]
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3",
          "bag_id": 19207348
        }
      ],
      "article": {
        "identifiers": {
          "sku_code": "MT-100 WHITE_S"
        },
        "esp_modified": false,
        "size": "S",
        "code": "",
        "raw_meta": null,
        "set": {},
        "is_set": false,
        "seller_identifier": "MT-100 WHITE_S",
        "return_config": {
          "time": 30,
          "unit": "days",
          "returnable": true
        },
        "_id": "5f8a4751d2f36f00014ff8ed",
        "uid": "5f8a4751d2f36f00014ff8ed",
        "child_details": {}
      },
      "journey_type": "forward",
      "current_operational_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": "2022-08-08T23:15:45+00:00",
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        },
        "reasons": [
          {
            "slug": "others",
            "display_name": "Others",
            "id": 90,
            "state": "bag_confirmed",
            "text": "FY62F14B8501F18E8FD3"
          }
        ]
      },
      "dates": {
        "order_created": "2022-08-08T23:14:45+00:00",
        "delivery_date": "2022-08-08T23:15:45+00:00"
      },
      "prices": {
        "price_effective": 10000,
        "discount": 0,
        "amount_paid": 10000,
        "coupon_effective_discount": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cod_charges": 0,
        "refund_credit": 0,
        "cashback": 0,
        "refund_amount": 10000,
        "added_to_fynd_cash": false,
        "cashback_applied": 0,
        "gst_tax_percentage": 12,
        "value_of_good": 8928.57,
        "price_marked": 10000,
        "transfer_price": 0,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "tcs_percentage": 0,
        "promotion_effective_discount": 0,
        "coupon_value": 0,
        "amount_paid_roundoff": 10000
      },
      "payment_methods": {
        "COD": {
          "amount": 10000
        }
      },
      "gst_details": {
        "gstin_code": "null",
        "gst_tag": "IGST",
        "hsn_code": "61091000",
        "value_of_good": 8928.57,
        "gst_tax_percentage": 12,
        "is_default_hsn_code": false,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
        "gst_fee": 1071.43,
        "igst_tax_percentage": 12,
        "sgst_tax_percentage": 0,
        "cgst_tax_percentage": 0,
        "igst_gst_fee": 1071.43,
        "cgst_gst_fee": "0",
        "sgst_gst_fee": "0"
      },
      "brand": {
        "credit_note_allowed": false,
        "id": 85,
        "script_last_ran": null,
        "pickup_location": null,
        "invoice_prefix": "pc",
        "brand_name": "play clan",
        "is_virtual_invoice": false,
        "created_on": 1452571237,
        "modified_on": 1623871060,
        "company": 61,
        "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
        "credit_note_expiry_days": null,
        "start_date": null
      },
      "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
      "affiliate_bag_details": {
        "affiliate_bag_id": "19207348",
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "affiliate_meta": {
          "fynd": {
            "fulfilment_identifier": "pulse"
          },
          "channel_shipment_id": null,
          "channel_order_id": null,
          "due_date": null,
          "is_priority": false,
          "box_type": null,
          "coupon_code": null,
          "size_level_total_qty": 924,
          "loyalty_discount": 0,
          "employee_discount": 0
        },
        "loyalty_discount": 0,
        "employee_discount": 0
      },
      "meta": {},
      "applied_promos": []
    }
  ],
  "brand": {
    "credit_note_allowed": false,
    "id": 85,
    "script_last_ran": null,
    "pickup_location": null,
    "invoice_prefix": "pc",
    "brand_name": "play clan",
    "is_virtual_invoice": false,
    "created_on": 1452571237,
    "modified_on": 1623871060,
    "company": 61,
    "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
    "credit_note_expiry_days": null,
    "start_date": null
  },
  "cart_id": 41262745,
  "comment": "",
  "company": {
    "modified_on": 1656409302,
    "company_type": "distributor",
    "id": 61,
    "commission": 0,
    "meta": {
      "stage": "verified",
      "address": [
        {
          "city": "GHORMACH",
          "state": "BADGHIS",
          "country": "AFGHANISTAN",
          "pincode": 401209,
          "address1": "A/204, SAI VANDAN",
          "address2": "TULINJ ROAD, NALLASOPARA EAST",
          "landmark": "Near Utsav Hotel",
          "latitude": 35.6495457,
          "longitude": 63.9113296,
          "address_type": "office",
          "country_code": "IN"
        },
        {
          "city": "GHORMACH",
          "state": "BADGHIS",
          "country": "AFGHANISTAN",
          "pincode": 401209,
          "address1": "A/204, SAI VANDAN",
          "address2": "TULINJ ROAD, NALLASOPARA EAST",
          "landmark": "Near Utsav Hotel",
          "latitude": 35.6495457,
          "longitude": 63.9113296,
          "address_type": "registered",
          "country_code": "IN"
        }
      ],
      "documents": {
        "cin": {
          "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/ZjGFzuE8_-20_Python_Libraries.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=IC%2FgIDdSymHbSKJGT12Zq9zOe4M%3D",
          "type": "cin",
          "value": "L21700MH1907PLC000260",
          "verified": true,
          "legal_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED"
        },
        "gst": {
          "type": "gst",
          "value": "27AALCA0442L1ZM",
          "verified": true,
          "legal_name": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED"
        },
        "pan": {
          "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/oURvMfX1p-2de4a88b_ticket.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=lG1wi0G6cqtav0i9cOf3dFNBuNY%3D",
          "type": "pan",
          "value": "AALCA0442L",
          "verified": true,
          "legal_name": ""
        },
        "digital_signature": {
          "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/iigdJTk27-3.png?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=Nc38H2KxR1ymSZz8jVRQyUCXobs%3D",
          "type": "digital_signature",
          "value": "Aayush Jain",
          "verified": true,
          "legal_name": "Aayush Jain"
        }
      },
      "business_info": "This is a description area to write about the company.",
      "contact_details": {
        "phone": [
          {
            "number": "7009853732",
            "country_code": 91
          },
          {
            "number": "9821012533",
            "country_code": 91
          }
        ],
        "emails": [
          "aayushvjain@gofynd.com",
          "abc@gmail.com",
          "asmaidris1994@gmail.com"
        ]
      },
      "business_details": {
        "website": {
          "url": "https://www.playclan.com"
        }
      },
      "notification_emails": [
        "pranavverma@gofynd.com",
        "vermapranav28@gmail.com",
        "vaishakhshetty@gofynd.com"
      ]
    },
    "exchange_allowed": false,
    "payment_procesing_charge": 0,
    "tan_no": "11",
    "vat_no": null,
    "exchange_within_days": null,
    "gst_number": "27AALCA0442L1ZM",
    "created_on": 1452571141,
    "company_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED",
    "fynd_a_fit_available": false,
    "return_allowed": true,
    "return_within_days": 30,
    "payment_type": "Happay",
    "business_type": "ltd/pvt ltd",
    "agreement_start_date": 1503532800,
    "cst": null,
    "pan_no": "AALCA0442L"
  },
  "coupon": {},
  "delivery_address": {
    "area": "Bhagyoday Society",
    "city": "Palanpur",
    "email": "",
    "phone": "7621937989",
    "state": "Gujarat",
    "country": "India",
    "pincode": "385001",
    "version": "1.0",
    "address1": "11",
    "address2": "",
    "landmark": "mansarovar road",
    "latitude": 24.1724338,
    "longitude": 72.434581,
    "created_at": "2022-08-08T23:14:45+00:00",
    "updated_at": "2022-08-08T23:14:45+00:00",
    "address_type": "home",
    "contact_person": "Rahul",
    "address_category": "delivery",
    "name": "Rahul",
    "address": "11"
  },
  "delivery_slot": {
    "slot": "By 17:00 PM",
    "upper_bound": "2022-08-15T17:44:34+00:00",
    "lower_bound": "2022-08-13T17:44:34+00:00",
    "date": "2022-08-15T17:44:34+00:00",
    "type": "order_window"
  },
  "dp_details": {
    "id": 22,
    "name": "fyndr",
    "awb_no": "4982512202351",
    "eway_bill_id": null,
    "track_url": null,
    "dp_charges": 110,
    "dp_return_charges": 70,
    "amount_handling_charges": 15,
    "gst_tag": "sgst"
  },
  "einvoice_info": null,
  "fallback_user": {
    "email": "",
    "mobile": "7621937989"
  },
  "fulfilling_store": {
    "login_username": "TEST_FFSPS_61",
    "mall_area": null,
    "updated_at": "2022-05-19T15:46:52+00:00",
    "packaging_material_count": 0,
    "id": 10182,
    "store_address_json": {
      "area": "",
      "city": "MUMBAI SUBURBAN",
      "email": "javedkazi@gofynd.com",
      "phone": "918286865180",
      "state": "MAHARASHTRA",
      "country": "INDIA",
      "pincode": "400093",
      "version": "1.0",
      "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
      "address2": "",
      "landmark": "Opposite MIDC police station",
      "latitude": 19.1174798,
      "longitude": 72.8691603,
      "created_at": "2022-05-24 18:35:09",
      "updated_at": "2022-05-24 18:35:09",
      "address_type": "store",
      "contact_person": "Javed",
      "address_category": "store"
    },
    "is_archived": false,
    "meta": {
      "stage": "verified",
      "timing": [
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "monday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "tuesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "wednesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 14,
            "minute": 12
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "thursday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "friday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "saturday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "sunday"
        }
      ],
      "documents": {},
      "gst_number": null,
      "display_name": "Fuschia",
      "gst_credentials": {
        "e_invoice": {
          "enabled": false
        },
        "e_waybill": {
          "enabled": false
        }
      },
      "notification_emails": [
        "vaishakhshetty@gofynd.com"
      ],
      "product_return_config": {
        "on_same_store": true
      },
      "additional_contact_details": {
        "number": [
          "91 - 8286865180"
        ]
      },
      "ewaybill_portal_details": null
    },
    "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
    "parent_store_id": null,
    "alohomora_user_id": 11070,
    "store_active_from": null,
    "vat_no": null,
    "longitude": 72.8292187,
    "location_type": "mall",
    "latitude": 19.0551125,
    "created_at": "2020-01-15T05:30:41+00:00",
    "fulfillment_channel": "pulse",
    "brand_id": null,
    "is_active": false,
    "name": "Fuschia",
    "mall_name": null,
    "company_id": 61,
    "is_enabled_for_recon": false,
    "code": "FFSPS",
    "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
    "address2": "",
    "city": "MUMBAI SUBURBAN",
    "state": "MAHARASHTRA",
    "country": "INDIA",
    "pincode": "400093",
    "store_email": "javedkazi@gofynd.com",
    "contact_person": "Javed",
    "phone": "918286865180",
    "brand_store_tags": [
      "pulse"
    ]
  },
  "fyndstore_emp": {},
  "invoice": {
    "updated_date": 1660000520,
    "store_invoice_id": "1659980720191361",
    "invoice_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_a4.pdf",
    "label_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_pos.pdf"
  },
  "is_processing": false,
  "journey_type": "forward",
  "lock_status": false,
  "no_of_bags_order": 1,
  "operational_status": "delivery_done",
  "order": {
    "raw_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
    "affiliate_order_date": "2022-08-08T23:14:45+00:00",
    "total_order_value": 10000,
    "transaction_id": "FY62F14B8501F18E8FD3",
    "refund_by": "fynd",
    "headers": {
      "host": "fplt-gringotts-main-svc.default.svc.cluster.local",
      "user-agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
      "cookie": "G_ENABLED_IDPS=google; f.session=s%3AHQX0JDLgWOHd8z7NOu-E9mT9yBDaqfPR.6T82v4OlerGY6lfKfATfojYQzDCtSRhEJkIA%2FyH%2Fz%2BM; ordering_store=s%3A15114.6VinzJtp1QRjsKZ52NWvXXPoTuLc38KYLxiLJSMl6CE",
      "x-application-id": "5dd3ce1f1662684aa7019f1e",
      "x-application-token": "np0tHm04",
      "x-currency-code": "INR",
      "authorization": "04a544ac-7e85-437f-b6d6-0adb694c4045",
      "accept": "*/*",
      "accept-encoding": "gzip, deflate",
      "content-length": "17443",
      "content-type": "text/plain; charset=utf-8",
      "x-newrelic-id": "VQcHWVJVDhAHXFFVBAUEUVI=",
      "x-newrelic-transaction": "PxQPAlJaXgNRVQUDVAgOAlUFFB8EBw8RVU4aWlsMDVQDBAgFUAIKWwAHA0NKQQEDAlBWAQ4AFTs=",
      "request-source": "Fynd",
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
      "source": "uniket-desktop",
      "user_agent_version": null,
      "deprecated": false
    },
    "id": 13030531,
    "cod_charges": 0,
    "collect_by": "fynd",
    "tax_details": {
      "gstin": null
    },
    "promotion_effective_discount": 0,
    "affiliate_order_id": "FY62F14B8501F18E8FD3",
    "meta": {
      "files": [],
      "staff": {},
      "comment": "",
      "extra_meta": {},
      "order_type": "HomeDelivery",
      "employee_id": null,
      "payment_type": "fynd",
      "mongo_cart_id": 41262745,
      "order_platform": "platform-site",
      "ordering_store": 15114,
      "order_child_entities": [
        "shipment",
        "bag"
      ]
    },
    "order_value": 10000,
    "fynd_credits": 0,
    "mode_of_payment": "FYND",
    "discount": 0,
    "payment_methods": {
      "COD": {
        "meta": {
          "logo_url": {
            "large": "https://hdn-1.fynd.com/payment/cod.png",
            "small": "https://hdn-1.fynd.com/payment/cod.png"
          },
          "payment_id": "FY62F14B8501F18E8FD3",
          "merchant_code": "",
          "payment_gateway": "Fynd",
          "payment_identifier": "11"
        },
        "mode": "COD",
        "name": "COD",
        "amount": 10000,
        "refund_by": "fynd",
        "collect_by": "fynd"
      }
    },
    "fynd_order_id": "FY62F14B8501F18E8FD3",
    "delivery_charges": 0,
    "mongo_cart_id": 41262745,
    "source": "uniket-desktop",
    "created_time": 1660000485,
    "payment_mode_id": 2,
    "currency": "INR",
    "coupon_value": 0,
    "cashback_value": 0,
    "cashback_applied": 0,
    "ordering_channel": "FYND_STORE",
    "user_id": 17952150,
    "affiliate_id": "5dd3ce1f1662684aa7019f1e",
    "ordering_channel_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/fynd_store_logo.png",
    "prices": {
      "amount_paid": 10000,
      "refund_amount": 10000,
      "price_marked": 10000,
      "cod_charges": 0,
      "discount": 0,
      "cashback_applied": 0,
      "delivery_charge": 0,
      "fynd_credits": 0,
      "cashback": 0,
      "price_effective": 10000,
      "refund_credit": 0,
      "value_of_good": 8928.57,
      "coupon_value": 0,
      "tax_collected_at_source": 0,
      "promotion_effective_discount": 0,
      "amount_paid_roundoff": 10000
    }
  },
  "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
  "order_source": "uniket-desktop",
  "order_type": "forward",
  "order_value": 10000,
  "ordering_store": {
    "login_username": null,
    "mall_area": null,
    "updated_at": "2022-04-21T14:44:10+00:00",
    "packaging_material_count": 0,
    "id": 15114,
    "store_address_json": {
      "area": "",
      "city": "MUMBAI",
      "email": "talha1891@gmail.com",
      "phone": "918104556147",
      "state": "MAHARASHTRA",
      "country": "INDIA",
      "pincode": "421301",
      "version": "1.0",
      "address1": "KALYAN, MAHARASHTRA 421301",
      "address2": "",
      "landmark": "",
      "latitude": 73.1290596,
      "longitude": 19.2527132,
      "created_at": "2022-05-10 18:50:25",
      "updated_at": "2022-05-10 18:50:25",
      "address_type": "store",
      "contact_person": "talha",
      "address_category": "store"
    },
    "is_archived": false,
    "meta": {
      "stage": "verified",
      "timing": [
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "monday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "tuesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "wednesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "thursday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "friday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "saturday"
        },
        {
          "open": false,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "sunday"
        }
      ],
      "documents": {},
      "gst_number": null,
      "display_name": "0Test Loc",
      "gst_credentials": {
        "e_invoice": {
          "enabled": false
        },
        "e_waybill": {
          "enabled": false
        }
      },
      "notification_emails": [
        "talha1891@gmail.com"
      ],
      "product_return_config": {
        "on_same_store": true
      },
      "additional_contact_details": {
        "number": [
          "91 - 8104556147"
        ]
      },
      "ewaybill_portal_details": null
    },
    "order_integration_id": null,
    "parent_store_id": null,
    "alohomora_user_id": null,
    "store_active_from": null,
    "vat_no": null,
    "longitude": null,
    "location_type": "high_street",
    "latitude": null,
    "created_at": "2022-04-21T14:44:10+00:00",
    "fulfillment_channel": "pulse",
    "brand_id": null,
    "is_active": false,
    "name": "0Test Loc",
    "mall_name": null,
    "company_id": 61,
    "is_enabled_for_recon": false,
    "code": "0_loc_code",
    "address1": "KALYAN, MAHARASHTRA 421301",
    "address2": "",
    "city": "MUMBAI",
    "state": "MAHARASHTRA",
    "country": "INDIA",
    "pincode": "421301",
    "store_email": "talha1891@gmail.com",
    "contact_person": "talha",
    "phone": "918104556147"
  },
  "original_bag_list": [
    19207348
  ],
  "payment_methods": {
    "COD": {
      "amount": 10000,
      "mode": "COD",
      "name": "COD",
      "collect_by": "fynd",
      "refund_by": "fynd",
      "meta": {
        "logo_url": {
          "large": "https://hdn-1.fynd.com/payment/cod.png",
          "small": "https://hdn-1.fynd.com/payment/cod.png"
        },
        "payment_id": "FY62F14B8501F18E8FD3",
        "merchant_code": "",
        "payment_gateway": "Fynd",
        "payment_identifier": "11"
      }
    }
  },
  "payment_type": "fynd",
  "payments": {
    "mode": "COD",
    "is_active": true,
    "display_priority": 1,
    "display_name": "Cash on Delivery",
    "id": 2,
    "logo": "https://hdn-1.fynd.com/payment/cod.png",
    "source": "Cash on Delivery",
    "payment_identifier": "11",
    "source_nickname": ""
  },
  "prices": {
    "amount_paid": 10000,
    "refund_amount": 10000,
    "price_marked": 10000,
    "cod_charges": 0,
    "discount": 0,
    "cashback_applied": 0,
    "delivery_charge": 0,
    "fynd_credits": 0,
    "cashback": 0,
    "price_effective": 10000,
    "refund_credit": 0,
    "value_of_good": 8928.57,
    "coupon_value": 0,
    "tax_collected_at_source": 0,
    "promotion_effective_discount": 0,
    "amount_paid_roundoff": 10000
  },
  "products": [
    {
      "id": 19207348,
      "display_name": "Bag",
      "entity_type": "bag",
      "type": "single",
      "status": {
        "is_returnable": true,
        "can_be_cancelled": true,
        "enable_tracking": false,
        "is_customer_return_allowed": true,
        "is_active": false
      },
      "financial_breakup": [
        {
          "price_effective": 10000,
          "discount": 0,
          "amount_paid": 10000,
          "coupon_effective_discount": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cod_charges": 0,
          "refund_credit": 0,
          "cashback": 0,
          "refund_amount": 10000,
          "added_to_fynd_cash": false,
          "cashback_applied": 0,
          "gst_tax_percentage": 12,
          "value_of_good": 8928.57,
          "price_marked": 10000,
          "transfer_price": 0,
          "brand_calculated_amount": 10000,
          "tax_collected_at_source": 0,
          "tcs_percentage": 0,
          "promotion_effective_discount": 0,
          "coupon_value": 0,
          "amount_paid_roundoff": 10000,
          "size": "S",
          "total_units": 1,
          "hsn_code": "61091000",
          "identifiers": {
            "sku_code": "MT-100 WHITE_S"
          },
          "item_name": "White Printed T-Shirt",
          "gst_fee": 1071.43,
          "gst_tag": "IGST"
        }
      ],
      "bag_id": 19207348,
      "bag_update_time": 1659980745.2105737,
      "current_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": 1660000545,
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        }
      },
      "bag_status": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 89,
          "store_id": 10182,
          "state_type": "operational",
          "status": "pending",
          "shipment_id": "16599806855311914452",
          "id": 120514809,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 89,
            "display_name": "Pending",
            "notify_customer": true,
            "app_display_name": "Pending",
            "state_type": "operational",
            "app_state_name": "pending",
            "name": "pending",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 1,
          "store_id": 10182,
          "state_type": "operational",
          "status": "placed",
          "shipment_id": "16599806855311914452",
          "id": 120514810,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 1,
            "display_name": "Placed",
            "notify_customer": true,
            "app_display_name": "Processing",
            "state_type": "operational",
            "app_state_name": "processing",
            "name": "placed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:14+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000514,
          "state_id": 2,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_confirmed",
          "shipment_id": "16599806855311914452",
          "id": 120514842,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 2,
            "display_name": "Confirmed",
            "notify_customer": false,
            "app_display_name": "Confirmed",
            "state_type": "operational",
            "app_state_name": "confirmed",
            "name": "bag_confirmed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3n"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 91,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_invoiced",
          "shipment_id": "16599806855311914452",
          "id": 120514845,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 91,
            "display_name": "Bag Invoiced",
            "notify_customer": false,
            "app_display_name": "Bag Invoiced",
            "state_type": "operational",
            "app_state_name": "bag_invoiced",
            "name": "bag_invoiced",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 113,
          "store_id": 10182,
          "state_type": "operational",
          "status": "ready_for_dp_assignment",
          "shipment_id": "16599806855311914452",
          "id": 120514846,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 113,
            "display_name": "Ready For Dp Assignment",
            "notify_customer": false,
            "app_display_name": "Ready For Dp Assignment",
            "state_type": "operational",
            "app_state_name": "ready_for_dp_assignment",
            "name": "ready_for_dp_assignment",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000523,
          "state_id": 7,
          "store_id": 10182,
          "state_type": "operational",
          "status": "dp_assigned",
          "shipment_id": "16599806855311914452",
          "id": 120514848,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 7,
            "display_name": "DP Assigned",
            "notify_customer": false,
            "app_display_name": "DP Assigned",
            "state_type": "operational",
            "app_state_name": "dp_assigned",
            "name": "dp_assigned",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 8,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_packed",
          "shipment_id": "16599806855311914452",
          "id": 120514898,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 8,
            "display_name": "Bag Packed",
            "notify_customer": true,
            "app_display_name": "Bag Packed",
            "state_type": "operational",
            "app_state_name": "bag_packed",
            "name": "bag_packed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "missed_state_ingestion",
              "display_name": "Missed state is ingested",
              "id": 162,
              "state": "missed_state",
              "text": "Missed state is ingested"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 12,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_picked",
          "shipment_id": "16599806855311914452",
          "id": 120514899,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 12,
            "display_name": "In Transit",
            "notify_customer": false,
            "app_display_name": "In Transit",
            "state_type": "operational",
            "app_state_name": "in_transit",
            "name": "bag_picked",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000545,
          "state_id": 14,
          "store_id": 10182,
          "state_type": "operational",
          "status": "delivery_done",
          "shipment_id": "16599806855311914452",
          "id": 120514917,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 14,
            "display_name": "Delivery Done",
            "notify_customer": true,
            "app_display_name": "Delivered",
            "state_type": "operational",
            "app_state_name": "delivered",
            "name": "delivery_done",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        }
      ],
      "item": {
        "brand": "play clan",
        "can_return": true,
        "id": 95944,
        "webstore_product_url": null,
        "last_updated_at": 1660000486,
        "slug_key": "play-clan-white-printed-t-shirt-387",
        "attributes": {
          "color": "White",
          "gender": [
            "Men"
          ],
          "season": "SS16",
          "pattern": "Printed",
          "essential": "Yes",
          "brand_name": "play clan",
          "net-quantity": "1 U",
          "marketer-name": "Fynd",
          "primary_color": "White",
          "sleeve_length": "Short",
          "marketer-address": "Fynd",
          "primary_material": "Others",
          "primary_color_hex": "FFFFFF"
        },
        "meta": {
          "departments": [
            21
          ]
        },
        "gender": null,
        "l3_category": 192,
        "color": null,
        "can_cancel": true,
        "l3_category_name": "T-Shirts",
        "l1_category": [
          "Clothing"
        ],
        "brand_id": 85,
        "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
        "l2_category": [
          "Polos & T-Shirts"
        ],
        "name": "White Printed T-Shirt",
        "code": "MT-100 WHITE",
        "department_id": 21,
        "size": "S",
        "image": [
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
        ]
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3",
          "bag_id": 19207348
        }
      ],
      "article": {
        "identifiers": {
          "sku_code": "MT-100 WHITE_S"
        },
        "esp_modified": false,
        "size": "S",
        "code": "",
        "raw_meta": null,
        "set": {},
        "is_set": false,
        "seller_identifier": "MT-100 WHITE_S",
        "return_config": {
          "time": 30,
          "unit": "days",
          "returnable": true
        },
        "_id": "5f8a4751d2f36f00014ff8ed",
        "uid": "5f8a4751d2f36f00014ff8ed",
        "child_details": {}
      },
      "journey_type": "forward",
      "current_operational_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": "2022-08-08T23:15:45+00:00",
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        },
        "reasons": [
          {
            "slug": "others",
            "display_name": "Others",
            "id": 90,
            "state": "bag_confirmed",
            "text": "FY62F14B8501F18E8FD3"
          }
        ]
      },
      "dates": {
        "order_created": "2022-08-08T23:14:45+00:00",
        "delivery_date": "2022-08-08T23:15:45+00:00"
      },
      "prices": {
        "price_effective": 10000,
        "discount": 0,
        "amount_paid": 10000,
        "coupon_effective_discount": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cod_charges": 0,
        "refund_credit": 0,
        "cashback": 0,
        "refund_amount": 10000,
        "added_to_fynd_cash": false,
        "cashback_applied": 0,
        "gst_tax_percentage": 12,
        "value_of_good": 8928.57,
        "price_marked": 10000,
        "transfer_price": 0,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "tcs_percentage": 0,
        "promotion_effective_discount": 0,
        "coupon_value": 0,
        "amount_paid_roundoff": 10000
      },
      "payment_methods": {
        "COD": {
          "amount": 10000
        }
      },
      "gst_details": {
        "gstin_code": "null",
        "gst_tag": "IGST",
        "hsn_code": "61091000",
        "value_of_good": 8928.57,
        "gst_tax_percentage": 12,
        "is_default_hsn_code": false,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
        "gst_fee": 1071.43,
        "igst_tax_percentage": 12,
        "sgst_tax_percentage": 0,
        "cgst_tax_percentage": 0,
        "igst_gst_fee": 1071.43,
        "cgst_gst_fee": "0",
        "sgst_gst_fee": "0"
      },
      "brand": {
        "credit_note_allowed": false,
        "id": 85,
        "script_last_ran": null,
        "pickup_location": null,
        "invoice_prefix": "pc",
        "brand_name": "play clan",
        "is_virtual_invoice": false,
        "created_on": 1452571237,
        "modified_on": 1623871060,
        "company": 61,
        "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
        "credit_note_expiry_days": null,
        "start_date": null
      },
      "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
      "affiliate_bag_details": {
        "affiliate_bag_id": "19207348",
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "affiliate_meta": {
          "fynd": {
            "fulfilment_identifier": "pulse"
          },
          "channel_shipment_id": null,
          "channel_order_id": null,
          "due_date": null,
          "is_priority": false,
          "box_type": null,
          "coupon_code": null,
          "size_level_total_qty": 924,
          "loyalty_discount": 0,
          "employee_discount": 0
        },
        "loyalty_discount": 0,
        "employee_discount": 0
      },
      "meta": {},
      "applied_promos": []
    }
  ],
  "qc_required": null,
  "requested_dp_conf": {
    "awb_type": "express",
    "exclude_dps": [
      27,
      29
    ],
    "ewbn": null,
    "id": 22,
    "is_dp_assigned_manually": true
  },
  "restore_coupon": false,
  "restore_promos": {},
  "rto_address": {
    "store_address_json": {
      "area": "",
      "city": "MUMBAI SUBURBAN",
      "email": "javedkazi@gofynd.com",
      "phone": "918286865180",
      "state": "MAHARASHTRA",
      "country": "INDIA",
      "pincode": "400093",
      "version": "1.0",
      "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
      "address2": "",
      "landmark": "Opposite MIDC police station",
      "latitude": 19.1174798,
      "longitude": 72.8691603,
      "created_at": "2022-05-24 18:35:09",
      "updated_at": "2022-05-24 18:35:09",
      "address_type": "store",
      "contact_person": "Javed",
      "address_category": "store"
    },
    "name": "Fuschia",
    "longitude": 72.8292187,
    "company_id": 61,
    "location_type": "mall",
    "latitude": 19.0551125,
    "id": 10182,
    "code": "FFSPS",
    "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
    "address2": "",
    "city": "MUMBAI SUBURBAN",
    "state": "MAHARASHTRA",
    "country": "INDIA",
    "pincode": "400093",
    "store_email": "javedkazi@gofynd.com",
    "contact_person": "Javed",
    "phone": "918286865180"
  },
  "search_key": {
    "shipment_id": "914452",
    "order_id": "8E8FD3"
  },
  "shipment": {
    "type": "shipment",
    "tags": [
      "bag"
    ],
    "billing_address_json": {
      "area": "Bhagyoday Society",
      "city": "Palanpur",
      "email": "",
      "phone": "7621937989",
      "state": "Gujarat",
      "country": "India",
      "pincode": "385001",
      "version": "1.0",
      "address1": "11",
      "address2": "",
      "landmark": "mansarovar road",
      "latitude": 24.1724338,
      "longitude": 72.434581,
      "created_at": "2022-08-08 23:14:45",
      "updated_at": "2022-08-08 23:14:45",
      "address_type": "home",
      "contact_person": "Rahul",
      "address_category": "billing"
    },
    "id": "16599806855311914452",
    "previous_shipment_id": null,
    "meta": {
      "dp_id": "7",
      "weight": 250,
      "external": {},
      "formatted": {
        "max": "Mon, 15 Aug",
        "min": "Sat, 13 Aug"
      },
      "timestamp": {
        "max": 1660585474,
        "min": 1660412674
      },
      "bag_weight": {
        "19207348": 250
      },
      "debug_info": {
        "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
      },
      "dp_options": {
        "7": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 2,
          "operations": [
            "inter_city"
          ],
          "r_priority": 1,
          "fm_priority": 2,
          "lm_priority": 2,
          "payment_mode": "all",
          "rvp_priority": 1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "7"
        },
        "29": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 4,
          "operations": [
            "inter_city"
          ],
          "r_priority": 3,
          "fm_priority": 4,
          "lm_priority": 4,
          "payment_mode": "all",
          "rvp_priority": 3,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "29"
        },
        "36": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 6,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 6,
          "lm_priority": 6,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "36"
        },
        "37": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 7,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 7,
          "lm_priority": 7,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "37"
        }
      },
      "order_type": null,
      "dp_sort_key": "fm_priority",
      "ewaybill_info": {},
      "packaging_name": "POLYB_M_1411P5",
      "assign_dp_from_sb": true,
      "same_store_available": false,
      "fulfilment_priority_text": null,
      "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
      "auto_trigger_dp_assignment_ACF": true
    },
    "fynd_order_id": "FY62F14B8501F18E8FD3",
    "delivery_awb_number": "4982512202351",
    "lock_status": "",
    "pdf_links": {
      "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
      "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
      "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
      "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
      "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
      "label_type": "fynd",
      "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
      "invoice_type": "fynd"
    },
    "parent_type": null,
    "store_invoice_id": "1659980720191361",
    "delivery_address_json": {
      "area": "Bhagyoday Society",
      "city": "Palanpur",
      "email": "",
      "phone": "7621937989",
      "state": "Gujarat",
      "country": "India",
      "pincode": "385001",
      "version": "1.0",
      "address1": "11",
      "address2": "",
      "landmark": "mansarovar road",
      "latitude": 24.1724338,
      "longitude": 72.434581,
      "created_at": "2022-08-08T23:14:45+00:00",
      "updated_at": "2022-08-08T23:14:45+00:00",
      "address_type": "home",
      "contact_person": "Rahul",
      "address_category": "delivery",
      "name": "Rahul",
      "address": "11"
    },
    "created_at": 1660000486,
    "hand_over_contact_json": {
      "email": "",
      "phone": "7621937989",
      "version": "1.0",
      "created_at": "2022-08-08 23:14:45",
      "updated_at": "2022-08-08 23:14:45",
      "contact_person": "Rahul"
    },
    "parent_id": "",
    "is_active": true,
    "affiliate_id": "5dd3ce1f1662684aa7019f1e",
    "affiliate_shipment_id": "16599806855311914452",
    "fulfilment_priority": 10,
    "credit_note_id": null,
    "eway_bill_id": null,
    "packaging_type": "POLYB_M_1411P5"
  },
  "shipment_details": {
    "dp_id": "7",
    "dp_options": {
      "7": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 2,
        "operations": [
          "inter_city"
        ],
        "r_priority": 1,
        "fm_priority": 2,
        "lm_priority": 2,
        "payment_mode": "all",
        "rvp_priority": 1,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "7"
      },
      "29": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 4,
        "operations": [
          "inter_city"
        ],
        "r_priority": 3,
        "fm_priority": 4,
        "lm_priority": 4,
        "payment_mode": "all",
        "rvp_priority": 3,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "29"
      },
      "36": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 6,
        "operations": [
          "inter_city"
        ],
        "r_priority": -1,
        "fm_priority": 6,
        "lm_priority": 6,
        "payment_mode": "all",
        "rvp_priority": -1,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "36"
      },
      "37": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 7,
        "operations": [
          "inter_city"
        ],
        "r_priority": -1,
        "fm_priority": 7,
        "lm_priority": 7,
        "payment_mode": "all",
        "rvp_priority": -1,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "37"
      }
    }
  },
  "shipment_gst": {
    "value_of_good": 8928.57,
    "gst_fee": 1071.43,
    "brand_calculated_amount": 10000,
    "tax_collected_at_source": 0,
    "gstin_code": "null"
  },
  "shipment_quantity": 1,
  "shipment_status": {
    "created_at": 1660000545,
    "shipment_id": "16599806855311914452",
    "status": "delivery_done",
    "bag_list": [
      "19207348"
    ],
    "id": 78707677,
    "current_shipment_status": "delivery_done",
    "status_created_at": 1660000545
  },
  "shipment_status_history": [
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "shipment_id": "16599806855311914452",
      "status": "pending",
      "bag_list": [
        "19207348"
      ],
      "id": 78707571
    },
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "shipment_id": "16599806855311914452",
      "status": "placed",
      "bag_list": [
        "19207348"
      ],
      "id": 78707572
    },
    {
      "created_at": "2022-08-08T23:15:12+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_confirmed",
      "bag_list": [
        "19207348"
      ],
      "id": 78707602
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_invoiced",
      "bag_list": [
        "19207348"
      ],
      "id": 78707605
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "shipment_id": "16599806855311914452",
      "status": "ready_for_dp_assignment",
      "bag_list": [
        "19207348"
      ],
      "id": 78707606
    },
    {
      "created_at": "2022-08-08T23:15:23+00:00",
      "shipment_id": "16599806855311914452",
      "status": "dp_assigned",
      "bag_list": [
        "19207348"
      ],
      "id": 78707608
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_packed",
      "bag_list": [
        "19207348"
      ],
      "id": 78707658
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_picked",
      "bag_list": [
        "19207348"
      ],
      "id": 78707659
    },
    {
      "created_at": "2022-08-08T23:15:45+00:00",
      "shipment_id": "16599806855311914452",
      "status": "delivery_done",
      "bag_list": [
        "19207348"
      ],
      "id": 78707677,
      "current_shipment_status": "delivery_done",
      "status_created_at": "2022-08-08T23:15:45+00:00"
    }
  ],
  "shipment_update_time": 1659980745.2105737,
  "shipment_value": 10000,
  "tags": [
    "bag"
  ],
  "total_shipment_bags": 1,
  "total_shipments_in_order": 1,
  "transaction_type": "shipment",
  "user": {
    "email": "rahulrathod@gofynd.com",
    "user_oid": "000000000000000014402534",
    "last_name": "Rathod",
    "gender": "male",
    "mongo_user_id": "14402534",
    "mobile": "7621937989",
    "first_name": "Rahul",
    "id": 17952150,
    "is_anonymous_user": false
  },
  "weight": {
    "value": 250,
    "unit": "gram"
  },
  "id": "62f14b93af6c692530bb0df6"
}
```
</details>









---


#### getShipments





```swift
client.order.getShipments(bagIds: bagIds, shipmentIds: shipmentIds, orderIds: orderIds, channelBagIds: channelBagIds, channelShipmentIds: channelShipmentIds, channelOrderIds: channelOrderIds, channelId: channelId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagIds | String? | no |  |   
| shipmentIds | String? | no |  |   
| orderIds | String? | no |  |   
| channelBagIds | String? | no |  |   
| channelShipmentIds | String? | no |  |   
| channelOrderIds | String? | no |  |   
| channelId | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |  





*Returned Response:*




[BulkShipmentDetailsPlatformResponse](#BulkShipmentDetailsPlatformResponse)

Successfully retrived all the given shipments details!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "shipment_id": "16599806855311914452",
      "affiliate_details": {
        "id": "5dd3ce1f1662684aa7019f1e",
        "affiliate_bag_id": "19207348",
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "company_affiliate_tag": "OpexTesting",
        "affiliate_id": "5dd3ce1f1662684aa7019f1e",
        "affiliate_shipment_id": "16599806855311914452",
        "shipment_meta": {
          "dp_id": "7",
          "weight": 250,
          "external": {},
          "formatted": {
            "max": "Mon, 15 Aug",
            "min": "Sat, 13 Aug"
          },
          "timestamp": {
            "max": 1660585474,
            "min": 1660412674
          },
          "bag_weight": {
            "19207348": 250
          },
          "debug_info": {
            "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
          },
          "dp_options": {
            "7": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 2,
              "operations": [
                "inter_city"
              ],
              "r_priority": 1,
              "fm_priority": 2,
              "lm_priority": 2,
              "payment_mode": "all",
              "rvp_priority": 1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "7"
            },
            "29": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 4,
              "operations": [
                "inter_city"
              ],
              "r_priority": 3,
              "fm_priority": 4,
              "lm_priority": 4,
              "payment_mode": "all",
              "rvp_priority": 3,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "29"
            },
            "36": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 6,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 6,
              "lm_priority": 6,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "36"
            },
            "37": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 7,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 7,
              "lm_priority": 7,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "37"
            }
          },
          "order_type": null,
          "dp_sort_key": "fm_priority",
          "ewaybill_info": {},
          "packaging_name": "POLYB_M_1411P5",
          "assign_dp_from_sb": true,
          "same_store_available": false,
          "fulfilment_priority_text": null,
          "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
          "auto_trigger_dp_assignment_ACF": true
        },
        "affiliate_meta": {
          "fynd": {
            "fulfilment_identifier": "pulse"
          },
          "channel_shipment_id": null,
          "channel_order_id": null,
          "due_date": null,
          "is_priority": false,
          "box_type": null,
          "coupon_code": null,
          "size_level_total_qty": 924,
          "loyalty_discount": 0,
          "employee_discount": 0
        },
        "affiliate_store_id": "10182",
        "pdf_links": {
          "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
          "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
          "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
          "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
          "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
          "label_type": "fynd",
          "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
          "invoice_type": "fynd"
        },
        "config": {
          "id": "5dd3ce1f1662684aa7019f1e",
          "meta": [],
          "name": "OpexTesting",
          "owner": "000000000000000000000020",
          "token": "np0tHm04",
          "secret": "dTSEQkEE7",
          "createdAt": null,
          "updatedAt": null,
          "description": "Opex testing app",
          "dp_assignment": true,
          "app_company_id": 61,
          "article_assignment": {
            "level": "multi-companies",
            "strategy": "optimal"
          },
          "force_reassignment": false,
          "post_order_reassignment": true
        }
      },
      "app_id": "5dd3ce1f1662684aa7019f1e",
      "article_details": {
        "status": {
          "delivery_done": {
            "5f8a4751d2f36f00014ff8ed": {
              "uid": "5f8a4751d2f36f00014ff8ed",
              "_id": "5f8a4751d2f36f00014ff8ed",
              "is_set": false,
              "bag_ids": [
                19207348
              ],
              "quantity": 1,
              "reasons": {
                "90": [
                  {
                    "slug": "others",
                    "display_name": "Others",
                    "id": 90,
                    "state": "bag_confirmed",
                    "text": "FY62F14B8501F18E8FD3",
                    "bag_id": 19207348
                  }
                ]
              }
            }
          }
        }
      },
      "bag_status_history": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:14:46+00:00",
          "state_id": 89,
          "store_id": 10182,
          "state_type": "operational",
          "status": "pending",
          "shipment_id": "16599806855311914452",
          "id": 120514809,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 89,
            "display_name": "Pending",
            "notify_customer": true,
            "app_display_name": "Pending",
            "state_type": "operational",
            "app_state_name": "pending",
            "name": "pending",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:14:46+00:00",
          "state_id": 1,
          "store_id": 10182,
          "state_type": "operational",
          "status": "placed",
          "shipment_id": "16599806855311914452",
          "id": 120514810,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 1,
            "display_name": "Placed",
            "notify_customer": true,
            "app_display_name": "Processing",
            "state_type": "operational",
            "app_state_name": "processing",
            "name": "placed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:14+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:15:14+00:00",
          "state_id": 2,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_confirmed",
          "shipment_id": "16599806855311914452",
          "id": 120514842,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 2,
            "display_name": "Confirmed",
            "notify_customer": false,
            "app_display_name": "Confirmed",
            "state_type": "operational",
            "app_state_name": "confirmed",
            "name": "bag_confirmed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3n"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:15:20+00:00",
          "state_id": 91,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_invoiced",
          "shipment_id": "16599806855311914452",
          "id": 120514845,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 91,
            "display_name": "Bag Invoiced",
            "notify_customer": false,
            "app_display_name": "Bag Invoiced",
            "state_type": "operational",
            "app_state_name": "bag_invoiced",
            "name": "bag_invoiced",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:15:20+00:00",
          "state_id": 113,
          "store_id": 10182,
          "state_type": "operational",
          "status": "ready_for_dp_assignment",
          "shipment_id": "16599806855311914452",
          "id": 120514846,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 113,
            "display_name": "Ready For Dp Assignment",
            "notify_customer": false,
            "app_display_name": "Ready For Dp Assignment",
            "state_type": "operational",
            "app_state_name": "ready_for_dp_assignment",
            "name": "ready_for_dp_assignment",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:23+00:00",
          "state_id": 7,
          "store_id": 10182,
          "state_type": "operational",
          "status": "dp_assigned",
          "shipment_id": "16599806855311914452",
          "id": 120514848,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 7,
            "display_name": "DP Assigned",
            "notify_customer": false,
            "app_display_name": "DP Assigned",
            "state_type": "operational",
            "app_state_name": "dp_assigned",
            "name": "dp_assigned",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:33+00:00",
          "state_id": 8,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_packed",
          "shipment_id": "16599806855311914452",
          "id": 120514898,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 8,
            "display_name": "Bag Packed",
            "notify_customer": true,
            "app_display_name": "Bag Packed",
            "state_type": "operational",
            "app_state_name": "bag_packed",
            "name": "bag_packed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "missed_state_ingestion",
              "display_name": "Missed state is ingested",
              "id": 162,
              "state": "missed_state",
              "text": "Missed state is ingested"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:33+00:00",
          "state_id": 12,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_picked",
          "shipment_id": "16599806855311914452",
          "id": 120514899,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 12,
            "display_name": "In Transit",
            "notify_customer": false,
            "app_display_name": "In Transit",
            "state_type": "operational",
            "app_state_name": "in_transit",
            "name": "bag_picked",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:45+00:00",
          "state_id": 14,
          "store_id": 10182,
          "state_type": "operational",
          "status": "delivery_done",
          "shipment_id": "16599806855311914452",
          "id": 120514917,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 14,
            "display_name": "Delivery Done",
            "notify_customer": true,
            "app_display_name": "Delivered",
            "state_type": "operational",
            "app_state_name": "delivered",
            "name": "delivery_done",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        }
      ],
      "bags": [
        {
          "id": 19207348,
          "display_name": "Bag",
          "entity_type": "bag",
          "type": "single",
          "status": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": false,
            "is_customer_return_allowed": true,
            "is_active": false
          },
          "financial_breakup": [
            {
              "price_effective": 10000,
              "discount": 0,
              "amount_paid": 10000,
              "coupon_effective_discount": 0,
              "delivery_charge": 0,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 10000,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 12,
              "value_of_good": 8928.57,
              "price_marked": 10000,
              "transfer_price": 0,
              "brand_calculated_amount": 10000,
              "tax_collected_at_source": 0,
              "tcs_percentage": 0,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "amount_paid_roundoff": 10000,
              "size": "S",
              "total_units": 1,
              "hsn_code": "61091000",
              "identifiers": {
                "sku_code": "MT-100 WHITE_S"
              },
              "item_name": "White Printed T-Shirt",
              "gst_fee": 1071.43,
              "gst_tag": "IGST"
            }
          ],
          "bag_id": 19207348,
          "bag_update_time": 1659980745.2105737,
          "current_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": 1660000545,
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            }
          },
          "bag_status": [
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 89,
              "store_id": 10182,
              "state_type": "operational",
              "status": "pending",
              "shipment_id": "16599806855311914452",
              "id": 120514809,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 89,
                "display_name": "Pending",
                "notify_customer": true,
                "app_display_name": "Pending",
                "state_type": "operational",
                "app_state_name": "pending",
                "name": "pending",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 1,
              "store_id": 10182,
              "state_type": "operational",
              "status": "placed",
              "shipment_id": "16599806855311914452",
              "id": 120514810,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 1,
                "display_name": "Placed",
                "notify_customer": true,
                "app_display_name": "Processing",
                "state_type": "operational",
                "app_state_name": "processing",
                "name": "placed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:14+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000514,
              "state_id": 2,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_confirmed",
              "shipment_id": "16599806855311914452",
              "id": 120514842,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 2,
                "display_name": "Confirmed",
                "notify_customer": false,
                "app_display_name": "Confirmed",
                "state_type": "operational",
                "app_state_name": "confirmed",
                "name": "bag_confirmed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3n"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 91,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_invoiced",
              "shipment_id": "16599806855311914452",
              "id": 120514845,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 91,
                "display_name": "Bag Invoiced",
                "notify_customer": false,
                "app_display_name": "Bag Invoiced",
                "state_type": "operational",
                "app_state_name": "bag_invoiced",
                "name": "bag_invoiced",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 113,
              "store_id": 10182,
              "state_type": "operational",
              "status": "ready_for_dp_assignment",
              "shipment_id": "16599806855311914452",
              "id": 120514846,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 113,
                "display_name": "Ready For Dp Assignment",
                "notify_customer": false,
                "app_display_name": "Ready For Dp Assignment",
                "state_type": "operational",
                "app_state_name": "ready_for_dp_assignment",
                "name": "ready_for_dp_assignment",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:23+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000523,
              "state_id": 7,
              "store_id": 10182,
              "state_type": "operational",
              "status": "dp_assigned",
              "shipment_id": "16599806855311914452",
              "id": 120514848,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 7,
                "display_name": "DP Assigned",
                "notify_customer": false,
                "app_display_name": "DP Assigned",
                "state_type": "operational",
                "app_state_name": "dp_assigned",
                "name": "dp_assigned",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 8,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_packed",
              "shipment_id": "16599806855311914452",
              "id": 120514898,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 8,
                "display_name": "Bag Packed",
                "notify_customer": true,
                "app_display_name": "Bag Packed",
                "state_type": "operational",
                "app_state_name": "bag_packed",
                "name": "bag_packed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "missed_state_ingestion",
                  "display_name": "Missed state is ingested",
                  "id": 162,
                  "state": "missed_state",
                  "text": "Missed state is ingested"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 12,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_picked",
              "shipment_id": "16599806855311914452",
              "id": 120514899,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 12,
                "display_name": "In Transit",
                "notify_customer": false,
                "app_display_name": "In Transit",
                "state_type": "operational",
                "app_state_name": "in_transit",
                "name": "bag_picked",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:45+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000545,
              "state_id": 14,
              "store_id": 10182,
              "state_type": "operational",
              "status": "delivery_done",
              "shipment_id": "16599806855311914452",
              "id": 120514917,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 14,
                "display_name": "Delivery Done",
                "notify_customer": true,
                "app_display_name": "Delivered",
                "state_type": "operational",
                "app_state_name": "delivered",
                "name": "delivery_done",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            }
          ],
          "item": {
            "brand": "play clan",
            "can_return": true,
            "id": 95944,
            "webstore_product_url": null,
            "last_updated_at": 1660000486,
            "slug_key": "play-clan-white-printed-t-shirt-387",
            "attributes": {
              "color": "White",
              "gender": [
                "Men"
              ],
              "season": "SS16",
              "pattern": "Printed",
              "essential": "Yes",
              "brand_name": "play clan",
              "net-quantity": "1 U",
              "marketer-name": "Fynd",
              "primary_color": "White",
              "sleeve_length": "Short",
              "marketer-address": "Fynd",
              "primary_material": "Others",
              "primary_color_hex": "FFFFFF"
            },
            "meta": {
              "departments": [
                21
              ]
            },
            "gender": null,
            "l3_category": 192,
            "color": null,
            "can_cancel": true,
            "l3_category_name": "T-Shirts",
            "l1_category": [
              "Clothing"
            ],
            "brand_id": 85,
            "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
            "l2_category": [
              "Polos & T-Shirts"
            ],
            "name": "White Printed T-Shirt",
            "code": "MT-100 WHITE",
            "department_id": 21,
            "size": "S",
            "image": [
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
            ]
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3",
              "bag_id": 19207348
            }
          ],
          "article": {
            "identifiers": {
              "sku_code": "MT-100 WHITE_S"
            },
            "esp_modified": false,
            "size": "S",
            "code": "",
            "raw_meta": null,
            "set": {},
            "is_set": false,
            "seller_identifier": "MT-100 WHITE_S",
            "return_config": {
              "time": 30,
              "unit": "days",
              "returnable": true
            },
            "_id": "5f8a4751d2f36f00014ff8ed",
            "uid": "5f8a4751d2f36f00014ff8ed",
            "child_details": {}
          },
          "journey_type": "forward",
          "current_operational_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": "2022-08-08T23:15:45+00:00",
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            },
            "reasons": [
              {
                "slug": "others",
                "display_name": "Others",
                "id": 90,
                "state": "bag_confirmed",
                "text": "FY62F14B8501F18E8FD3"
              }
            ]
          },
          "dates": {
            "order_created": "2022-08-08T23:14:45+00:00",
            "delivery_date": "2022-08-08T23:15:45+00:00"
          },
          "prices": {
            "price_effective": 10000,
            "discount": 0,
            "amount_paid": 10000,
            "coupon_effective_discount": 0,
            "delivery_charge": 0,
            "fynd_credits": 0,
            "cod_charges": 0,
            "refund_credit": 0,
            "cashback": 0,
            "refund_amount": 10000,
            "added_to_fynd_cash": false,
            "cashback_applied": 0,
            "gst_tax_percentage": 12,
            "value_of_good": 8928.57,
            "price_marked": 10000,
            "transfer_price": 0,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "tcs_percentage": 0,
            "promotion_effective_discount": 0,
            "coupon_value": 0,
            "amount_paid_roundoff": 10000
          },
          "payment_methods": {
            "COD": {
              "amount": 10000
            }
          },
          "gst_details": {
            "gstin_code": "null",
            "gst_tag": "IGST",
            "hsn_code": "61091000",
            "value_of_good": 8928.57,
            "gst_tax_percentage": 12,
            "is_default_hsn_code": false,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
            "gst_fee": 1071.43,
            "igst_tax_percentage": 12,
            "sgst_tax_percentage": 0,
            "cgst_tax_percentage": 0,
            "igst_gst_fee": 1071.43,
            "cgst_gst_fee": "0",
            "sgst_gst_fee": "0"
          },
          "brand": {
            "credit_note_allowed": false,
            "id": 85,
            "script_last_ran": null,
            "pickup_location": null,
            "invoice_prefix": "pc",
            "brand_name": "play clan",
            "is_virtual_invoice": false,
            "created_on": 1452571237,
            "modified_on": 1623871060,
            "company": 61,
            "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
            "credit_note_expiry_days": null,
            "start_date": null
          },
          "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
          "affiliate_bag_details": {
            "affiliate_bag_id": "19207348",
            "affiliate_order_id": "FY62F14B8501F18E8FD3",
            "affiliate_meta": {
              "fynd": {
                "fulfilment_identifier": "pulse"
              },
              "channel_shipment_id": null,
              "channel_order_id": null,
              "due_date": null,
              "is_priority": false,
              "box_type": null,
              "coupon_code": null,
              "size_level_total_qty": 924,
              "loyalty_discount": 0,
              "employee_discount": 0
            },
            "loyalty_discount": 0,
            "employee_discount": 0
          },
          "meta": {},
          "applied_promos": []
        }
      ],
      "brand": {
        "credit_note_allowed": false,
        "id": 85,
        "script_last_ran": null,
        "pickup_location": null,
        "invoice_prefix": "pc",
        "brand_name": "play clan",
        "is_virtual_invoice": false,
        "created_on": 1452571237,
        "modified_on": 1623871060,
        "company": 61,
        "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
        "credit_note_expiry_days": null,
        "start_date": null
      },
      "cart_id": 41262745,
      "comment": "",
      "company": {
        "modified_on": 1656409302,
        "company_type": "distributor",
        "id": 61,
        "commission": 0,
        "meta": {
          "stage": "verified",
          "address": [
            {
              "city": "GHORMACH",
              "state": "BADGHIS",
              "country": "AFGHANISTAN",
              "pincode": 401209,
              "address1": "A/204, SAI VANDAN",
              "address2": "TULINJ ROAD, NALLASOPARA EAST",
              "landmark": "Near Utsav Hotel",
              "latitude": 35.6495457,
              "longitude": 63.9113296,
              "address_type": "office",
              "country_code": "IN"
            },
            {
              "city": "GHORMACH",
              "state": "BADGHIS",
              "country": "AFGHANISTAN",
              "pincode": 401209,
              "address1": "A/204, SAI VANDAN",
              "address2": "TULINJ ROAD, NALLASOPARA EAST",
              "landmark": "Near Utsav Hotel",
              "latitude": 35.6495457,
              "longitude": 63.9113296,
              "address_type": "registered",
              "country_code": "IN"
            }
          ],
          "documents": {
            "cin": {
              "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/ZjGFzuE8_-20_Python_Libraries.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=IC%2FgIDdSymHbSKJGT12Zq9zOe4M%3D",
              "type": "cin",
              "value": "L21700MH1907PLC000260",
              "verified": true,
              "legal_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED"
            },
            "gst": {
              "type": "gst",
              "value": "27AALCA0442L1ZM",
              "verified": true,
              "legal_name": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED"
            },
            "pan": {
              "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/oURvMfX1p-2de4a88b_ticket.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=lG1wi0G6cqtav0i9cOf3dFNBuNY%3D",
              "type": "pan",
              "value": "AALCA0442L",
              "verified": true,
              "legal_name": ""
            },
            "digital_signature": {
              "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/iigdJTk27-3.png?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=Nc38H2KxR1ymSZz8jVRQyUCXobs%3D",
              "type": "digital_signature",
              "value": "Aayush Jain",
              "verified": true,
              "legal_name": "Aayush Jain"
            }
          },
          "business_info": "This is a description area to write about the company.",
          "contact_details": {
            "phone": [
              {
                "number": "7009853732",
                "country_code": 91
              },
              {
                "number": "9821012533",
                "country_code": 91
              }
            ],
            "emails": [
              "aayushvjain@gofynd.com",
              "abc@gmail.com",
              "asmaidris1994@gmail.com"
            ]
          },
          "business_details": {
            "website": {
              "url": "https://www.playclan.com"
            }
          },
          "notification_emails": [
            "pranavverma@gofynd.com",
            "vermapranav28@gmail.com",
            "vaishakhshetty@gofynd.com"
          ]
        },
        "exchange_allowed": false,
        "payment_procesing_charge": 0,
        "tan_no": "11",
        "vat_no": null,
        "exchange_within_days": null,
        "gst_number": "27AALCA0442L1ZM",
        "created_on": 1452571141,
        "company_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED",
        "fynd_a_fit_available": false,
        "return_allowed": true,
        "return_within_days": 30,
        "payment_type": "Happay",
        "business_type": "ltd/pvt ltd",
        "agreement_start_date": 1503532800,
        "cst": null,
        "pan_no": "AALCA0442L"
      },
      "coupon": {},
      "delivery_address": {
        "area": "Bhagyoday Society",
        "city": "Palanpur",
        "email": "",
        "phone": "7621937989",
        "state": "Gujarat",
        "country": "India",
        "pincode": "385001",
        "version": "1.0",
        "address1": "11",
        "address2": "",
        "landmark": "mansarovar road",
        "latitude": 24.1724338,
        "longitude": 72.434581,
        "created_at": "2022-08-08T23:14:45+00:00",
        "updated_at": "2022-08-08T23:14:45+00:00",
        "address_type": "home",
        "contact_person": "Rahul",
        "address_category": "delivery",
        "name": "Rahul",
        "address": "11"
      },
      "delivery_slot": {
        "slot": "By 17:00 PM",
        "upper_bound": "2022-08-15T17:44:34+00:00",
        "lower_bound": "2022-08-13T17:44:34+00:00",
        "date": "2022-08-15T17:44:34+00:00",
        "type": "order_window"
      },
      "dp_details": {
        "id": 22,
        "name": "fyndr",
        "awb_no": "4982512202351",
        "eway_bill_id": null,
        "track_url": null,
        "dp_charges": 110,
        "dp_return_charges": 70,
        "amount_handling_charges": 15,
        "gst_tag": "sgst"
      },
      "einvoice_info": null,
      "fallback_user": {
        "email": "",
        "mobile": "7621937989"
      },
      "fulfilling_store": {
        "login_username": "TEST_FFSPS_61",
        "mall_area": null,
        "updated_at": "2022-05-19T15:46:52+00:00",
        "packaging_material_count": 0,
        "id": 10182,
        "store_address_json": {
          "area": "",
          "city": "MUMBAI SUBURBAN",
          "email": "javedkazi@gofynd.com",
          "phone": "918286865180",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "pincode": "400093",
          "version": "1.0",
          "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
          "address2": "",
          "landmark": "Opposite MIDC police station",
          "latitude": 19.1174798,
          "longitude": 72.8691603,
          "created_at": "2022-05-24 18:35:09",
          "updated_at": "2022-05-24 18:35:09",
          "address_type": "store",
          "contact_person": "Javed",
          "address_category": "store"
        },
        "is_archived": false,
        "meta": {
          "stage": "verified",
          "timing": [
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "monday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "tuesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "wednesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 14,
                "minute": 12
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "thursday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "friday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "saturday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "sunday"
            }
          ],
          "documents": {},
          "gst_number": null,
          "display_name": "Fuschia",
          "gst_credentials": {
            "e_invoice": {
              "enabled": false
            },
            "e_waybill": {
              "enabled": false
            }
          },
          "notification_emails": [
            "vaishakhshetty@gofynd.com"
          ],
          "product_return_config": {
            "on_same_store": true
          },
          "additional_contact_details": {
            "number": [
              "91 - 8286865180"
            ]
          },
          "ewaybill_portal_details": null
        },
        "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
        "parent_store_id": null,
        "alohomora_user_id": 11070,
        "store_active_from": null,
        "vat_no": null,
        "longitude": 72.8292187,
        "location_type": "mall",
        "latitude": 19.0551125,
        "created_at": "2020-01-15T05:30:41+00:00",
        "fulfillment_channel": "pulse",
        "brand_id": null,
        "is_active": false,
        "name": "Fuschia",
        "mall_name": null,
        "company_id": 61,
        "is_enabled_for_recon": false,
        "code": "FFSPS",
        "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
        "address2": "",
        "city": "MUMBAI SUBURBAN",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": "400093",
        "store_email": "javedkazi@gofynd.com",
        "contact_person": "Javed",
        "phone": "918286865180",
        "brand_store_tags": [
          "pulse"
        ]
      },
      "fyndstore_emp": {},
      "invoice": {
        "updated_date": 1660000520,
        "store_invoice_id": "1659980720191361",
        "invoice_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_a4.pdf",
        "label_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_pos.pdf"
      },
      "is_processing": false,
      "journey_type": "forward",
      "lock_status": false,
      "no_of_bags_order": 1,
      "operational_status": "delivery_done",
      "order": {
        "raw_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
        "affiliate_order_date": "2022-08-08T23:14:45+00:00",
        "total_order_value": 10000,
        "transaction_id": "FY62F14B8501F18E8FD3",
        "refund_by": "fynd",
        "headers": {
          "host": "fplt-gringotts-main-svc.default.svc.cluster.local",
          "user-agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
          "cookie": "G_ENABLED_IDPS=google; f.session=s%3AHQX0JDLgWOHd8z7NOu-E9mT9yBDaqfPR.6T82v4OlerGY6lfKfATfojYQzDCtSRhEJkIA%2FyH%2Fz%2BM; ordering_store=s%3A15114.6VinzJtp1QRjsKZ52NWvXXPoTuLc38KYLxiLJSMl6CE",
          "x-application-id": "5dd3ce1f1662684aa7019f1e",
          "x-application-token": "np0tHm04",
          "x-currency-code": "INR",
          "authorization": "04a544ac-7e85-437f-b6d6-0adb694c4045",
          "accept": "*/*",
          "accept-encoding": "gzip, deflate",
          "content-length": "17443",
          "content-type": "text/plain; charset=utf-8",
          "x-newrelic-id": "VQcHWVJVDhAHXFFVBAUEUVI=",
          "x-newrelic-transaction": "PxQPAlJaXgNRVQUDVAgOAlUFFB8EBw8RVU4aWlsMDVQDBAgFUAIKWwAHA0NKQQEDAlBWAQ4AFTs=",
          "request-source": "Fynd",
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
          "source": "uniket-desktop",
          "user_agent_version": null,
          "deprecated": false
        },
        "id": 13030531,
        "cod_charges": 0,
        "collect_by": "fynd",
        "tax_details": {
          "gstin": null
        },
        "promotion_effective_discount": 0,
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "meta": {
          "files": [],
          "staff": {},
          "comment": "",
          "extra_meta": {},
          "order_type": "HomeDelivery",
          "employee_id": null,
          "payment_type": "fynd",
          "mongo_cart_id": 41262745,
          "order_platform": "platform-site",
          "ordering_store": 15114,
          "order_child_entities": [
            "shipment",
            "bag"
          ]
        },
        "order_value": 10000,
        "fynd_credits": 0,
        "mode_of_payment": "FYND",
        "discount": 0,
        "payment_methods": {
          "COD": {
            "meta": {
              "logo_url": {
                "large": "https://hdn-1.fynd.com/payment/cod.png",
                "small": "https://hdn-1.fynd.com/payment/cod.png"
              },
              "payment_id": "FY62F14B8501F18E8FD3",
              "merchant_code": "",
              "payment_gateway": "Fynd",
              "payment_identifier": "11"
            },
            "mode": "COD",
            "name": "COD",
            "amount": 10000,
            "refund_by": "fynd",
            "collect_by": "fynd"
          }
        },
        "fynd_order_id": "FY62F14B8501F18E8FD3",
        "delivery_charges": 0,
        "mongo_cart_id": 41262745,
        "source": "uniket-desktop",
        "created_time": 1660000485,
        "payment_mode_id": 2,
        "currency": "INR",
        "coupon_value": 0,
        "cashback_value": 0,
        "cashback_applied": 0,
        "ordering_channel": "FYND_STORE",
        "user_id": 17952150,
        "affiliate_id": "5dd3ce1f1662684aa7019f1e",
        "ordering_channel_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/fynd_store_logo.png",
        "prices": {
          "amount_paid": 10000,
          "refund_amount": 10000,
          "price_marked": 10000,
          "cod_charges": 0,
          "discount": 0,
          "cashback_applied": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cashback": 0,
          "price_effective": 10000,
          "refund_credit": 0,
          "value_of_good": 8928.57,
          "coupon_value": 0,
          "tax_collected_at_source": 0,
          "promotion_effective_discount": 0,
          "amount_paid_roundoff": 10000
        }
      },
      "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
      "order_source": "uniket-desktop",
      "order_type": "forward",
      "order_value": 10000,
      "ordering_store": {
        "login_username": null,
        "mall_area": null,
        "updated_at": "2022-04-21T14:44:10+00:00",
        "packaging_material_count": 0,
        "id": 15114,
        "store_address_json": {
          "area": "",
          "city": "MUMBAI",
          "email": "talha1891@gmail.com",
          "phone": "918104556147",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "pincode": "421301",
          "version": "1.0",
          "address1": "KALYAN, MAHARASHTRA 421301",
          "address2": "",
          "landmark": "",
          "latitude": 73.1290596,
          "longitude": 19.2527132,
          "created_at": "2022-05-10 18:50:25",
          "updated_at": "2022-05-10 18:50:25",
          "address_type": "store",
          "contact_person": "talha",
          "address_category": "store"
        },
        "is_archived": false,
        "meta": {
          "stage": "verified",
          "timing": [
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "monday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "tuesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "wednesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "thursday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "friday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "saturday"
            },
            {
              "open": false,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "sunday"
            }
          ],
          "documents": {},
          "gst_number": null,
          "display_name": "0Test Loc",
          "gst_credentials": {
            "e_invoice": {
              "enabled": false
            },
            "e_waybill": {
              "enabled": false
            }
          },
          "notification_emails": [
            "talha1891@gmail.com"
          ],
          "product_return_config": {
            "on_same_store": true
          },
          "additional_contact_details": {
            "number": [
              "91 - 8104556147"
            ]
          },
          "ewaybill_portal_details": null
        },
        "order_integration_id": null,
        "parent_store_id": null,
        "alohomora_user_id": null,
        "store_active_from": null,
        "vat_no": null,
        "longitude": null,
        "location_type": "high_street",
        "latitude": null,
        "created_at": "2022-04-21T14:44:10+00:00",
        "fulfillment_channel": "pulse",
        "brand_id": null,
        "is_active": false,
        "name": "0Test Loc",
        "mall_name": null,
        "company_id": 61,
        "is_enabled_for_recon": false,
        "code": "0_loc_code",
        "address1": "KALYAN, MAHARASHTRA 421301",
        "address2": "",
        "city": "MUMBAI",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": "421301",
        "store_email": "talha1891@gmail.com",
        "contact_person": "talha",
        "phone": "918104556147"
      },
      "original_bag_list": [
        19207348
      ],
      "payment_methods": {
        "COD": {
          "amount": 10000,
          "mode": "COD",
          "name": "COD",
          "collect_by": "fynd",
          "refund_by": "fynd",
          "meta": {
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/cod.png",
              "small": "https://hdn-1.fynd.com/payment/cod.png"
            },
            "payment_id": "FY62F14B8501F18E8FD3",
            "merchant_code": "",
            "payment_gateway": "Fynd",
            "payment_identifier": "11"
          }
        }
      },
      "payment_type": "fynd",
      "payments": {
        "mode": "COD",
        "is_active": true,
        "display_priority": 1,
        "display_name": "Cash on Delivery",
        "id": 2,
        "logo": "https://hdn-1.fynd.com/payment/cod.png",
        "source": "Cash on Delivery",
        "payment_identifier": "11",
        "source_nickname": ""
      },
      "prices": {
        "amount_paid": 10000,
        "refund_amount": 10000,
        "price_marked": 10000,
        "cod_charges": 0,
        "discount": 0,
        "cashback_applied": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cashback": 0,
        "price_effective": 10000,
        "refund_credit": 0,
        "value_of_good": 8928.57,
        "coupon_value": 0,
        "tax_collected_at_source": 0,
        "promotion_effective_discount": 0,
        "amount_paid_roundoff": 10000
      },
      "products": [
        {
          "id": 19207348,
          "display_name": "Bag",
          "entity_type": "bag",
          "type": "single",
          "status": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": false,
            "is_customer_return_allowed": true,
            "is_active": false
          },
          "financial_breakup": [
            {
              "price_effective": 10000,
              "discount": 0,
              "amount_paid": 10000,
              "coupon_effective_discount": 0,
              "delivery_charge": 0,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 10000,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 12,
              "value_of_good": 8928.57,
              "price_marked": 10000,
              "transfer_price": 0,
              "brand_calculated_amount": 10000,
              "tax_collected_at_source": 0,
              "tcs_percentage": 0,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "amount_paid_roundoff": 10000,
              "size": "S",
              "total_units": 1,
              "hsn_code": "61091000",
              "identifiers": {
                "sku_code": "MT-100 WHITE_S"
              },
              "item_name": "White Printed T-Shirt",
              "gst_fee": 1071.43,
              "gst_tag": "IGST"
            }
          ],
          "bag_id": 19207348,
          "bag_update_time": 1659980745.2105737,
          "current_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": 1660000545,
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            }
          },
          "bag_status": [
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 89,
              "store_id": 10182,
              "state_type": "operational",
              "status": "pending",
              "shipment_id": "16599806855311914452",
              "id": 120514809,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 89,
                "display_name": "Pending",
                "notify_customer": true,
                "app_display_name": "Pending",
                "state_type": "operational",
                "app_state_name": "pending",
                "name": "pending",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 1,
              "store_id": 10182,
              "state_type": "operational",
              "status": "placed",
              "shipment_id": "16599806855311914452",
              "id": 120514810,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 1,
                "display_name": "Placed",
                "notify_customer": true,
                "app_display_name": "Processing",
                "state_type": "operational",
                "app_state_name": "processing",
                "name": "placed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:14+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000514,
              "state_id": 2,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_confirmed",
              "shipment_id": "16599806855311914452",
              "id": 120514842,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 2,
                "display_name": "Confirmed",
                "notify_customer": false,
                "app_display_name": "Confirmed",
                "state_type": "operational",
                "app_state_name": "confirmed",
                "name": "bag_confirmed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3n"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 91,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_invoiced",
              "shipment_id": "16599806855311914452",
              "id": 120514845,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 91,
                "display_name": "Bag Invoiced",
                "notify_customer": false,
                "app_display_name": "Bag Invoiced",
                "state_type": "operational",
                "app_state_name": "bag_invoiced",
                "name": "bag_invoiced",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 113,
              "store_id": 10182,
              "state_type": "operational",
              "status": "ready_for_dp_assignment",
              "shipment_id": "16599806855311914452",
              "id": 120514846,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 113,
                "display_name": "Ready For Dp Assignment",
                "notify_customer": false,
                "app_display_name": "Ready For Dp Assignment",
                "state_type": "operational",
                "app_state_name": "ready_for_dp_assignment",
                "name": "ready_for_dp_assignment",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:23+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000523,
              "state_id": 7,
              "store_id": 10182,
              "state_type": "operational",
              "status": "dp_assigned",
              "shipment_id": "16599806855311914452",
              "id": 120514848,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 7,
                "display_name": "DP Assigned",
                "notify_customer": false,
                "app_display_name": "DP Assigned",
                "state_type": "operational",
                "app_state_name": "dp_assigned",
                "name": "dp_assigned",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 8,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_packed",
              "shipment_id": "16599806855311914452",
              "id": 120514898,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 8,
                "display_name": "Bag Packed",
                "notify_customer": true,
                "app_display_name": "Bag Packed",
                "state_type": "operational",
                "app_state_name": "bag_packed",
                "name": "bag_packed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "missed_state_ingestion",
                  "display_name": "Missed state is ingested",
                  "id": 162,
                  "state": "missed_state",
                  "text": "Missed state is ingested"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 12,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_picked",
              "shipment_id": "16599806855311914452",
              "id": 120514899,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 12,
                "display_name": "In Transit",
                "notify_customer": false,
                "app_display_name": "In Transit",
                "state_type": "operational",
                "app_state_name": "in_transit",
                "name": "bag_picked",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:45+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000545,
              "state_id": 14,
              "store_id": 10182,
              "state_type": "operational",
              "status": "delivery_done",
              "shipment_id": "16599806855311914452",
              "id": 120514917,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 14,
                "display_name": "Delivery Done",
                "notify_customer": true,
                "app_display_name": "Delivered",
                "state_type": "operational",
                "app_state_name": "delivered",
                "name": "delivery_done",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            }
          ],
          "item": {
            "brand": "play clan",
            "can_return": true,
            "id": 95944,
            "webstore_product_url": null,
            "last_updated_at": 1660000486,
            "slug_key": "play-clan-white-printed-t-shirt-387",
            "attributes": {
              "color": "White",
              "gender": [
                "Men"
              ],
              "season": "SS16",
              "pattern": "Printed",
              "essential": "Yes",
              "brand_name": "play clan",
              "net-quantity": "1 U",
              "marketer-name": "Fynd",
              "primary_color": "White",
              "sleeve_length": "Short",
              "marketer-address": "Fynd",
              "primary_material": "Others",
              "primary_color_hex": "FFFFFF"
            },
            "meta": {
              "departments": [
                21
              ]
            },
            "gender": null,
            "l3_category": 192,
            "color": null,
            "can_cancel": true,
            "l3_category_name": "T-Shirts",
            "l1_category": [
              "Clothing"
            ],
            "brand_id": 85,
            "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
            "l2_category": [
              "Polos & T-Shirts"
            ],
            "name": "White Printed T-Shirt",
            "code": "MT-100 WHITE",
            "department_id": 21,
            "size": "S",
            "image": [
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
            ]
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3",
              "bag_id": 19207348
            }
          ],
          "article": {
            "identifiers": {
              "sku_code": "MT-100 WHITE_S"
            },
            "esp_modified": false,
            "size": "S",
            "code": "",
            "raw_meta": null,
            "set": {},
            "is_set": false,
            "seller_identifier": "MT-100 WHITE_S",
            "return_config": {
              "time": 30,
              "unit": "days",
              "returnable": true
            },
            "_id": "5f8a4751d2f36f00014ff8ed",
            "uid": "5f8a4751d2f36f00014ff8ed",
            "child_details": {}
          },
          "journey_type": "forward",
          "current_operational_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": "2022-08-08T23:15:45+00:00",
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            },
            "reasons": [
              {
                "slug": "others",
                "display_name": "Others",
                "id": 90,
                "state": "bag_confirmed",
                "text": "FY62F14B8501F18E8FD3"
              }
            ]
          },
          "dates": {
            "order_created": "2022-08-08T23:14:45+00:00",
            "delivery_date": "2022-08-08T23:15:45+00:00"
          },
          "prices": {
            "price_effective": 10000,
            "discount": 0,
            "amount_paid": 10000,
            "coupon_effective_discount": 0,
            "delivery_charge": 0,
            "fynd_credits": 0,
            "cod_charges": 0,
            "refund_credit": 0,
            "cashback": 0,
            "refund_amount": 10000,
            "added_to_fynd_cash": false,
            "cashback_applied": 0,
            "gst_tax_percentage": 12,
            "value_of_good": 8928.57,
            "price_marked": 10000,
            "transfer_price": 0,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "tcs_percentage": 0,
            "promotion_effective_discount": 0,
            "coupon_value": 0,
            "amount_paid_roundoff": 10000
          },
          "payment_methods": {
            "COD": {
              "amount": 10000
            }
          },
          "gst_details": {
            "gstin_code": "null",
            "gst_tag": "IGST",
            "hsn_code": "61091000",
            "value_of_good": 8928.57,
            "gst_tax_percentage": 12,
            "is_default_hsn_code": false,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
            "gst_fee": 1071.43,
            "igst_tax_percentage": 12,
            "sgst_tax_percentage": 0,
            "cgst_tax_percentage": 0,
            "igst_gst_fee": 1071.43,
            "cgst_gst_fee": "0",
            "sgst_gst_fee": "0"
          },
          "brand": {
            "credit_note_allowed": false,
            "id": 85,
            "script_last_ran": null,
            "pickup_location": null,
            "invoice_prefix": "pc",
            "brand_name": "play clan",
            "is_virtual_invoice": false,
            "created_on": 1452571237,
            "modified_on": 1623871060,
            "company": 61,
            "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
            "credit_note_expiry_days": null,
            "start_date": null
          },
          "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
          "affiliate_bag_details": {
            "affiliate_bag_id": "19207348",
            "affiliate_order_id": "FY62F14B8501F18E8FD3",
            "affiliate_meta": {
              "fynd": {
                "fulfilment_identifier": "pulse"
              },
              "channel_shipment_id": null,
              "channel_order_id": null,
              "due_date": null,
              "is_priority": false,
              "box_type": null,
              "coupon_code": null,
              "size_level_total_qty": 924,
              "loyalty_discount": 0,
              "employee_discount": 0
            },
            "loyalty_discount": 0,
            "employee_discount": 0
          },
          "meta": {},
          "applied_promos": []
        }
      ],
      "qc_required": null,
      "requested_dp_conf": {
        "awb_type": "express",
        "exclude_dps": [
          27,
          29
        ],
        "ewbn": null,
        "id": 22,
        "is_dp_assigned_manually": true
      },
      "restore_coupon": false,
      "restore_promos": {},
      "rto_address": {
        "store_address_json": {
          "area": "",
          "city": "MUMBAI SUBURBAN",
          "email": "javedkazi@gofynd.com",
          "phone": "918286865180",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "pincode": "400093",
          "version": "1.0",
          "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
          "address2": "",
          "landmark": "Opposite MIDC police station",
          "latitude": 19.1174798,
          "longitude": 72.8691603,
          "created_at": "2022-05-24 18:35:09",
          "updated_at": "2022-05-24 18:35:09",
          "address_type": "store",
          "contact_person": "Javed",
          "address_category": "store"
        },
        "name": "Fuschia",
        "longitude": 72.8292187,
        "company_id": 61,
        "location_type": "mall",
        "latitude": 19.0551125,
        "id": 10182,
        "code": "FFSPS",
        "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
        "address2": "",
        "city": "MUMBAI SUBURBAN",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": "400093",
        "store_email": "javedkazi@gofynd.com",
        "contact_person": "Javed",
        "phone": "918286865180"
      },
      "search_key": {
        "shipment_id": "914452",
        "order_id": "8E8FD3"
      },
      "shipment": {
        "type": "shipment",
        "tags": [
          "bag"
        ],
        "billing_address_json": {
          "area": "Bhagyoday Society",
          "city": "Palanpur",
          "email": "",
          "phone": "7621937989",
          "state": "Gujarat",
          "country": "India",
          "pincode": "385001",
          "version": "1.0",
          "address1": "11",
          "address2": "",
          "landmark": "mansarovar road",
          "latitude": 24.1724338,
          "longitude": 72.434581,
          "created_at": "2022-08-08 23:14:45",
          "updated_at": "2022-08-08 23:14:45",
          "address_type": "home",
          "contact_person": "Rahul",
          "address_category": "billing"
        },
        "id": "16599806855311914452",
        "previous_shipment_id": null,
        "meta": {
          "dp_id": "7",
          "weight": 250,
          "external": {},
          "formatted": {
            "max": "Mon, 15 Aug",
            "min": "Sat, 13 Aug"
          },
          "timestamp": {
            "max": 1660585474,
            "min": 1660412674
          },
          "bag_weight": {
            "19207348": 250
          },
          "debug_info": {
            "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
          },
          "dp_options": {
            "7": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 2,
              "operations": [
                "inter_city"
              ],
              "r_priority": 1,
              "fm_priority": 2,
              "lm_priority": 2,
              "payment_mode": "all",
              "rvp_priority": 1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "7"
            },
            "29": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 4,
              "operations": [
                "inter_city"
              ],
              "r_priority": 3,
              "fm_priority": 4,
              "lm_priority": 4,
              "payment_mode": "all",
              "rvp_priority": 3,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "29"
            },
            "36": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 6,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 6,
              "lm_priority": 6,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "36"
            },
            "37": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 7,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 7,
              "lm_priority": 7,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "37"
            }
          },
          "order_type": null,
          "dp_sort_key": "fm_priority",
          "ewaybill_info": {},
          "packaging_name": "POLYB_M_1411P5",
          "assign_dp_from_sb": true,
          "same_store_available": false,
          "fulfilment_priority_text": null,
          "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
          "auto_trigger_dp_assignment_ACF": true
        },
        "fynd_order_id": "FY62F14B8501F18E8FD3",
        "delivery_awb_number": "4982512202351",
        "lock_status": "",
        "pdf_links": {
          "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
          "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
          "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
          "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
          "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
          "label_type": "fynd",
          "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
          "invoice_type": "fynd"
        },
        "parent_type": null,
        "store_invoice_id": "1659980720191361",
        "delivery_address_json": {
          "area": "Bhagyoday Society",
          "city": "Palanpur",
          "email": "",
          "phone": "7621937989",
          "state": "Gujarat",
          "country": "India",
          "pincode": "385001",
          "version": "1.0",
          "address1": "11",
          "address2": "",
          "landmark": "mansarovar road",
          "latitude": 24.1724338,
          "longitude": 72.434581,
          "created_at": "2022-08-08T23:14:45+00:00",
          "updated_at": "2022-08-08T23:14:45+00:00",
          "address_type": "home",
          "contact_person": "Rahul",
          "address_category": "delivery",
          "name": "Rahul",
          "address": "11"
        },
        "created_at": 1660000486,
        "hand_over_contact_json": {
          "email": "",
          "phone": "7621937989",
          "version": "1.0",
          "created_at": "2022-08-08 23:14:45",
          "updated_at": "2022-08-08 23:14:45",
          "contact_person": "Rahul"
        },
        "parent_id": "",
        "is_active": true,
        "affiliate_id": "5dd3ce1f1662684aa7019f1e",
        "affiliate_shipment_id": "16599806855311914452",
        "fulfilment_priority": 10,
        "credit_note_id": null,
        "eway_bill_id": null,
        "packaging_type": "POLYB_M_1411P5"
      },
      "shipment_details": {
        "dp_id": "7",
        "dp_options": {
          "7": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 2,
            "operations": [
              "inter_city"
            ],
            "r_priority": 1,
            "fm_priority": 2,
            "lm_priority": 2,
            "payment_mode": "all",
            "rvp_priority": 1,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "7"
          },
          "29": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 4,
            "operations": [
              "inter_city"
            ],
            "r_priority": 3,
            "fm_priority": 4,
            "lm_priority": 4,
            "payment_mode": "all",
            "rvp_priority": 3,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "29"
          },
          "36": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 6,
            "operations": [
              "inter_city"
            ],
            "r_priority": -1,
            "fm_priority": 6,
            "lm_priority": 6,
            "payment_mode": "all",
            "rvp_priority": -1,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "36"
          },
          "37": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 7,
            "operations": [
              "inter_city"
            ],
            "r_priority": -1,
            "fm_priority": 7,
            "lm_priority": 7,
            "payment_mode": "all",
            "rvp_priority": -1,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "37"
          }
        }
      },
      "shipment_gst": {
        "value_of_good": 8928.57,
        "gst_fee": 1071.43,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "gstin_code": "null"
      },
      "shipment_quantity": 1,
      "shipment_status": {
        "created_at": 1660000545,
        "shipment_id": "16599806855311914452",
        "status": "delivery_done",
        "bag_list": [
          "19207348"
        ],
        "id": 78707677,
        "current_shipment_status": "delivery_done",
        "status_created_at": 1660000545
      },
      "shipment_status_history": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "shipment_id": "16599806855311914452",
          "status": "pending",
          "bag_list": [
            "19207348"
          ],
          "id": 78707571
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "shipment_id": "16599806855311914452",
          "status": "placed",
          "bag_list": [
            "19207348"
          ],
          "id": 78707572
        },
        {
          "created_at": "2022-08-08T23:15:12+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_confirmed",
          "bag_list": [
            "19207348"
          ],
          "id": 78707602
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_invoiced",
          "bag_list": [
            "19207348"
          ],
          "id": 78707605
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "shipment_id": "16599806855311914452",
          "status": "ready_for_dp_assignment",
          "bag_list": [
            "19207348"
          ],
          "id": 78707606
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "shipment_id": "16599806855311914452",
          "status": "dp_assigned",
          "bag_list": [
            "19207348"
          ],
          "id": 78707608
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_packed",
          "bag_list": [
            "19207348"
          ],
          "id": 78707658
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_picked",
          "bag_list": [
            "19207348"
          ],
          "id": 78707659
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "shipment_id": "16599806855311914452",
          "status": "delivery_done",
          "bag_list": [
            "19207348"
          ],
          "id": 78707677,
          "current_shipment_status": "delivery_done",
          "status_created_at": "2022-08-08T23:15:45+00:00"
        }
      ],
      "shipment_update_time": 1659980745.2105737,
      "shipment_value": 10000,
      "tags": [
        "bag"
      ],
      "total_shipment_bags": 1,
      "total_shipments_in_order": 1,
      "transaction_type": "shipment",
      "user": {
        "email": "rahulrathod@gofynd.com",
        "user_oid": "000000000000000014402534",
        "last_name": "Rathod",
        "gender": "male",
        "mongo_user_id": "14402534",
        "mobile": "7621937989",
        "first_name": "Rahul",
        "id": 17952150,
        "is_anonymous_user": false
      },
      "weight": {
        "value": 250,
        "unit": "gram"
      },
      "id": "62f14b93af6c692530bb0df6"
    }
  ],
  "page": {
    "type": "number",
    "size": 1,
    "current": 1,
    "has_next": false,
    "item_total": 1
  }
}
```
</details>









---


#### getOrderById





```swift
client.order.getOrderById(fyndOrderId: fyndOrderId, channelOrderId: channelOrderId, channelShipmentId: channelShipmentId, channelBagId: channelBagId, channelId: channelId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| fyndOrderId | String? | no |  |   
| channelOrderId | String? | no |  |   
| channelShipmentId | String? | no |  |   
| channelBagId | String? | no |  |   
| channelId | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |  





*Returned Response:*




[OrderDetailsPlatformResponse](#OrderDetailsPlatformResponse)

Successfully retrieved shipment details!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "shipment_id": "16599806855311914452",
  "affiliate_details": {
    "id": "5dd3ce1f1662684aa7019f1e",
    "affiliate_bag_id": "19207348",
    "affiliate_order_id": "FY62F14B8501F18E8FD3",
    "company_affiliate_tag": "OpexTesting",
    "affiliate_id": "5dd3ce1f1662684aa7019f1e",
    "affiliate_shipment_id": "16599806855311914452",
    "shipment_meta": {
      "dp_id": "7",
      "weight": 250,
      "external": {},
      "formatted": {
        "max": "Mon, 15 Aug",
        "min": "Sat, 13 Aug"
      },
      "timestamp": {
        "max": 1660585474,
        "min": 1660412674
      },
      "bag_weight": {
        "19207348": 250
      },
      "debug_info": {
        "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
      },
      "dp_options": {
        "7": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 2,
          "operations": [
            "inter_city"
          ],
          "r_priority": 1,
          "fm_priority": 2,
          "lm_priority": 2,
          "payment_mode": "all",
          "rvp_priority": 1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "7"
        },
        "29": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 4,
          "operations": [
            "inter_city"
          ],
          "r_priority": 3,
          "fm_priority": 4,
          "lm_priority": 4,
          "payment_mode": "all",
          "rvp_priority": 3,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "29"
        },
        "36": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 6,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 6,
          "lm_priority": 6,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "36"
        },
        "37": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 7,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 7,
          "lm_priority": 7,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "37"
        }
      },
      "order_type": null,
      "dp_sort_key": "fm_priority",
      "ewaybill_info": {},
      "packaging_name": "POLYB_M_1411P5",
      "assign_dp_from_sb": true,
      "same_store_available": false,
      "fulfilment_priority_text": null,
      "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
      "auto_trigger_dp_assignment_ACF": true
    },
    "affiliate_meta": {
      "fynd": {
        "fulfilment_identifier": "pulse"
      },
      "channel_shipment_id": null,
      "channel_order_id": null,
      "due_date": null,
      "is_priority": false,
      "box_type": null,
      "coupon_code": null,
      "size_level_total_qty": 924,
      "loyalty_discount": 0,
      "employee_discount": 0
    },
    "affiliate_store_id": "10182",
    "pdf_links": {
      "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
      "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
      "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
      "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
      "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
      "label_type": "fynd",
      "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
      "invoice_type": "fynd"
    },
    "config": {
      "id": "5dd3ce1f1662684aa7019f1e",
      "meta": [],
      "name": "OpexTesting",
      "owner": "000000000000000000000020",
      "token": "np0tHm04",
      "secret": "dTSEQkEE7",
      "createdAt": null,
      "updatedAt": null,
      "description": "Opex testing app",
      "dp_assignment": true,
      "app_company_id": 61,
      "article_assignment": {
        "level": "multi-companies",
        "strategy": "optimal"
      },
      "force_reassignment": false,
      "post_order_reassignment": true
    }
  },
  "app_id": "5dd3ce1f1662684aa7019f1e",
  "article_details": {
    "status": {
      "delivery_done": {
        "5f8a4751d2f36f00014ff8ed": {
          "uid": "5f8a4751d2f36f00014ff8ed",
          "_id": "5f8a4751d2f36f00014ff8ed",
          "is_set": false,
          "bag_ids": [
            19207348
          ],
          "quantity": 1,
          "reasons": {
            "90": [
              {
                "slug": "others",
                "display_name": "Others",
                "id": 90,
                "state": "bag_confirmed",
                "text": "FY62F14B8501F18E8FD3",
                "bag_id": 19207348
              }
            ]
          }
        }
      }
    }
  },
  "bag_status_history": [
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:14:46+00:00",
      "state_id": 89,
      "store_id": 10182,
      "state_type": "operational",
      "status": "pending",
      "shipment_id": "16599806855311914452",
      "id": 120514809,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 89,
        "display_name": "Pending",
        "notify_customer": true,
        "app_display_name": "Pending",
        "state_type": "operational",
        "app_state_name": "pending",
        "name": "pending",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:14:46+00:00",
      "state_id": 1,
      "store_id": 10182,
      "state_type": "operational",
      "status": "placed",
      "shipment_id": "16599806855311914452",
      "id": 120514810,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 1,
        "display_name": "Placed",
        "notify_customer": true,
        "app_display_name": "Processing",
        "state_type": "operational",
        "app_state_name": "processing",
        "name": "placed",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:14+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:15:14+00:00",
      "state_id": 2,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_confirmed",
      "shipment_id": "16599806855311914452",
      "id": 120514842,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 2,
        "display_name": "Confirmed",
        "notify_customer": false,
        "app_display_name": "Confirmed",
        "state_type": "operational",
        "app_state_name": "confirmed",
        "name": "bag_confirmed",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3n"
        }
      ]
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:15:20+00:00",
      "state_id": 91,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_invoiced",
      "shipment_id": "16599806855311914452",
      "id": 120514845,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 91,
        "display_name": "Bag Invoiced",
        "notify_customer": false,
        "app_display_name": "Bag Invoiced",
        "state_type": "operational",
        "app_state_name": "bag_invoiced",
        "name": "bag_invoiced",
        "is_active": true,
        "app_facing": false,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:15:20+00:00",
      "state_id": 113,
      "store_id": 10182,
      "state_type": "operational",
      "status": "ready_for_dp_assignment",
      "shipment_id": "16599806855311914452",
      "id": 120514846,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 113,
        "display_name": "Ready For Dp Assignment",
        "notify_customer": false,
        "app_display_name": "Ready For Dp Assignment",
        "state_type": "operational",
        "app_state_name": "ready_for_dp_assignment",
        "name": "ready_for_dp_assignment",
        "is_active": true,
        "app_facing": false,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:23+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:23+00:00",
      "state_id": 7,
      "store_id": 10182,
      "state_type": "operational",
      "status": "dp_assigned",
      "shipment_id": "16599806855311914452",
      "id": 120514848,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 7,
        "display_name": "DP Assigned",
        "notify_customer": false,
        "app_display_name": "DP Assigned",
        "state_type": "operational",
        "app_state_name": "dp_assigned",
        "name": "dp_assigned",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:33+00:00",
      "state_id": 8,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_packed",
      "shipment_id": "16599806855311914452",
      "id": 120514898,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 8,
        "display_name": "Bag Packed",
        "notify_customer": true,
        "app_display_name": "Bag Packed",
        "state_type": "operational",
        "app_state_name": "bag_packed",
        "name": "bag_packed",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "missed_state_ingestion",
          "display_name": "Missed state is ingested",
          "id": 162,
          "state": "missed_state",
          "text": "Missed state is ingested"
        }
      ]
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:33+00:00",
      "state_id": 12,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_picked",
      "shipment_id": "16599806855311914452",
      "id": 120514899,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 12,
        "display_name": "In Transit",
        "notify_customer": false,
        "app_display_name": "In Transit",
        "state_type": "operational",
        "app_state_name": "in_transit",
        "name": "bag_picked",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3"
        }
      ]
    },
    {
      "created_at": "2022-08-08T23:15:45+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:45+00:00",
      "state_id": 14,
      "store_id": 10182,
      "state_type": "operational",
      "status": "delivery_done",
      "shipment_id": "16599806855311914452",
      "id": 120514917,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 14,
        "display_name": "Delivery Done",
        "notify_customer": true,
        "app_display_name": "Delivered",
        "state_type": "operational",
        "app_state_name": "delivered",
        "name": "delivery_done",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3"
        }
      ]
    }
  ],
  "bags": [
    {
      "id": 19207348,
      "display_name": "Bag",
      "entity_type": "bag",
      "type": "single",
      "status": {
        "is_returnable": true,
        "can_be_cancelled": true,
        "enable_tracking": false,
        "is_customer_return_allowed": true,
        "is_active": false
      },
      "financial_breakup": [
        {
          "price_effective": 10000,
          "discount": 0,
          "amount_paid": 10000,
          "coupon_effective_discount": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cod_charges": 0,
          "refund_credit": 0,
          "cashback": 0,
          "refund_amount": 10000,
          "added_to_fynd_cash": false,
          "cashback_applied": 0,
          "gst_tax_percentage": 12,
          "value_of_good": 8928.57,
          "price_marked": 10000,
          "transfer_price": 0,
          "brand_calculated_amount": 10000,
          "tax_collected_at_source": 0,
          "tcs_percentage": 0,
          "promotion_effective_discount": 0,
          "coupon_value": 0,
          "amount_paid_roundoff": 10000,
          "size": "S",
          "total_units": 1,
          "hsn_code": "61091000",
          "identifiers": {
            "sku_code": "MT-100 WHITE_S"
          },
          "item_name": "White Printed T-Shirt",
          "gst_fee": 1071.43,
          "gst_tag": "IGST"
        }
      ],
      "bag_id": 19207348,
      "bag_update_time": 1659980745.2105737,
      "current_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": 1660000545,
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        }
      },
      "bag_status": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 89,
          "store_id": 10182,
          "state_type": "operational",
          "status": "pending",
          "shipment_id": "16599806855311914452",
          "id": 120514809,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 89,
            "display_name": "Pending",
            "notify_customer": true,
            "app_display_name": "Pending",
            "state_type": "operational",
            "app_state_name": "pending",
            "name": "pending",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 1,
          "store_id": 10182,
          "state_type": "operational",
          "status": "placed",
          "shipment_id": "16599806855311914452",
          "id": 120514810,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 1,
            "display_name": "Placed",
            "notify_customer": true,
            "app_display_name": "Processing",
            "state_type": "operational",
            "app_state_name": "processing",
            "name": "placed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:14+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000514,
          "state_id": 2,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_confirmed",
          "shipment_id": "16599806855311914452",
          "id": 120514842,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 2,
            "display_name": "Confirmed",
            "notify_customer": false,
            "app_display_name": "Confirmed",
            "state_type": "operational",
            "app_state_name": "confirmed",
            "name": "bag_confirmed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3n"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 91,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_invoiced",
          "shipment_id": "16599806855311914452",
          "id": 120514845,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 91,
            "display_name": "Bag Invoiced",
            "notify_customer": false,
            "app_display_name": "Bag Invoiced",
            "state_type": "operational",
            "app_state_name": "bag_invoiced",
            "name": "bag_invoiced",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 113,
          "store_id": 10182,
          "state_type": "operational",
          "status": "ready_for_dp_assignment",
          "shipment_id": "16599806855311914452",
          "id": 120514846,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 113,
            "display_name": "Ready For Dp Assignment",
            "notify_customer": false,
            "app_display_name": "Ready For Dp Assignment",
            "state_type": "operational",
            "app_state_name": "ready_for_dp_assignment",
            "name": "ready_for_dp_assignment",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000523,
          "state_id": 7,
          "store_id": 10182,
          "state_type": "operational",
          "status": "dp_assigned",
          "shipment_id": "16599806855311914452",
          "id": 120514848,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 7,
            "display_name": "DP Assigned",
            "notify_customer": false,
            "app_display_name": "DP Assigned",
            "state_type": "operational",
            "app_state_name": "dp_assigned",
            "name": "dp_assigned",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 8,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_packed",
          "shipment_id": "16599806855311914452",
          "id": 120514898,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 8,
            "display_name": "Bag Packed",
            "notify_customer": true,
            "app_display_name": "Bag Packed",
            "state_type": "operational",
            "app_state_name": "bag_packed",
            "name": "bag_packed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "missed_state_ingestion",
              "display_name": "Missed state is ingested",
              "id": 162,
              "state": "missed_state",
              "text": "Missed state is ingested"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 12,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_picked",
          "shipment_id": "16599806855311914452",
          "id": 120514899,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 12,
            "display_name": "In Transit",
            "notify_customer": false,
            "app_display_name": "In Transit",
            "state_type": "operational",
            "app_state_name": "in_transit",
            "name": "bag_picked",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000545,
          "state_id": 14,
          "store_id": 10182,
          "state_type": "operational",
          "status": "delivery_done",
          "shipment_id": "16599806855311914452",
          "id": 120514917,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 14,
            "display_name": "Delivery Done",
            "notify_customer": true,
            "app_display_name": "Delivered",
            "state_type": "operational",
            "app_state_name": "delivered",
            "name": "delivery_done",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        }
      ],
      "item": {
        "brand": "play clan",
        "can_return": true,
        "id": 95944,
        "webstore_product_url": null,
        "last_updated_at": 1660000486,
        "slug_key": "play-clan-white-printed-t-shirt-387",
        "attributes": {
          "color": "White",
          "gender": [
            "Men"
          ],
          "season": "SS16",
          "pattern": "Printed",
          "essential": "Yes",
          "brand_name": "play clan",
          "net-quantity": "1 U",
          "marketer-name": "Fynd",
          "primary_color": "White",
          "sleeve_length": "Short",
          "marketer-address": "Fynd",
          "primary_material": "Others",
          "primary_color_hex": "FFFFFF"
        },
        "meta": {
          "departments": [
            21
          ]
        },
        "gender": null,
        "l3_category": 192,
        "color": null,
        "can_cancel": true,
        "l3_category_name": "T-Shirts",
        "l1_category": [
          "Clothing"
        ],
        "brand_id": 85,
        "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
        "l2_category": [
          "Polos & T-Shirts"
        ],
        "name": "White Printed T-Shirt",
        "code": "MT-100 WHITE",
        "department_id": 21,
        "size": "S",
        "image": [
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
        ]
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3",
          "bag_id": 19207348
        }
      ],
      "article": {
        "identifiers": {
          "sku_code": "MT-100 WHITE_S"
        },
        "esp_modified": false,
        "size": "S",
        "code": "",
        "raw_meta": null,
        "set": {},
        "is_set": false,
        "seller_identifier": "MT-100 WHITE_S",
        "return_config": {
          "time": 30,
          "unit": "days",
          "returnable": true
        },
        "_id": "5f8a4751d2f36f00014ff8ed",
        "uid": "5f8a4751d2f36f00014ff8ed",
        "child_details": {}
      },
      "journey_type": "forward",
      "current_operational_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": "2022-08-08T23:15:45+00:00",
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        },
        "reasons": [
          {
            "slug": "others",
            "display_name": "Others",
            "id": 90,
            "state": "bag_confirmed",
            "text": "FY62F14B8501F18E8FD3"
          }
        ]
      },
      "dates": {
        "order_created": "2022-08-08T23:14:45+00:00",
        "delivery_date": "2022-08-08T23:15:45+00:00"
      },
      "prices": {
        "price_effective": 10000,
        "discount": 0,
        "amount_paid": 10000,
        "coupon_effective_discount": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cod_charges": 0,
        "refund_credit": 0,
        "cashback": 0,
        "refund_amount": 10000,
        "added_to_fynd_cash": false,
        "cashback_applied": 0,
        "gst_tax_percentage": 12,
        "value_of_good": 8928.57,
        "price_marked": 10000,
        "transfer_price": 0,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "tcs_percentage": 0,
        "promotion_effective_discount": 0,
        "coupon_value": 0,
        "amount_paid_roundoff": 10000
      },
      "payment_methods": {
        "COD": {
          "amount": 10000
        }
      },
      "gst_details": {
        "gstin_code": "null",
        "gst_tag": "IGST",
        "hsn_code": "61091000",
        "value_of_good": 8928.57,
        "gst_tax_percentage": 12,
        "is_default_hsn_code": false,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
        "gst_fee": 1071.43,
        "igst_tax_percentage": 12,
        "sgst_tax_percentage": 0,
        "cgst_tax_percentage": 0,
        "igst_gst_fee": 1071.43,
        "cgst_gst_fee": "0",
        "sgst_gst_fee": "0"
      },
      "brand": {
        "credit_note_allowed": false,
        "id": 85,
        "script_last_ran": null,
        "pickup_location": null,
        "invoice_prefix": "pc",
        "brand_name": "play clan",
        "is_virtual_invoice": false,
        "created_on": 1452571237,
        "modified_on": 1623871060,
        "company": 61,
        "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
        "credit_note_expiry_days": null,
        "start_date": null
      },
      "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
      "affiliate_bag_details": {
        "affiliate_bag_id": "19207348",
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "affiliate_meta": {
          "fynd": {
            "fulfilment_identifier": "pulse"
          },
          "channel_shipment_id": null,
          "channel_order_id": null,
          "due_date": null,
          "is_priority": false,
          "box_type": null,
          "coupon_code": null,
          "size_level_total_qty": 924,
          "loyalty_discount": 0,
          "employee_discount": 0
        },
        "loyalty_discount": 0,
        "employee_discount": 0
      },
      "meta": {},
      "applied_promos": []
    }
  ],
  "brand": {
    "credit_note_allowed": false,
    "id": 85,
    "script_last_ran": null,
    "pickup_location": null,
    "invoice_prefix": "pc",
    "brand_name": "play clan",
    "is_virtual_invoice": false,
    "created_on": 1452571237,
    "modified_on": 1623871060,
    "company": 61,
    "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
    "credit_note_expiry_days": null,
    "start_date": null
  },
  "cart_id": 41262745,
  "comment": "",
  "company": {
    "modified_on": 1656409302,
    "company_type": "distributor",
    "id": 61,
    "commission": 0,
    "meta": {
      "stage": "verified",
      "address": [
        {
          "city": "GHORMACH",
          "state": "BADGHIS",
          "country": "AFGHANISTAN",
          "pincode": 401209,
          "address1": "A/204, SAI VANDAN",
          "address2": "TULINJ ROAD, NALLASOPARA EAST",
          "landmark": "Near Utsav Hotel",
          "latitude": 35.6495457,
          "longitude": 63.9113296,
          "address_type": "office",
          "country_code": "IN"
        },
        {
          "city": "GHORMACH",
          "state": "BADGHIS",
          "country": "AFGHANISTAN",
          "pincode": 401209,
          "address1": "A/204, SAI VANDAN",
          "address2": "TULINJ ROAD, NALLASOPARA EAST",
          "landmark": "Near Utsav Hotel",
          "latitude": 35.6495457,
          "longitude": 63.9113296,
          "address_type": "registered",
          "country_code": "IN"
        }
      ],
      "documents": {
        "cin": {
          "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/ZjGFzuE8_-20_Python_Libraries.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=IC%2FgIDdSymHbSKJGT12Zq9zOe4M%3D",
          "type": "cin",
          "value": "L21700MH1907PLC000260",
          "verified": true,
          "legal_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED"
        },
        "gst": {
          "type": "gst",
          "value": "27AALCA0442L1ZM",
          "verified": true,
          "legal_name": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED"
        },
        "pan": {
          "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/oURvMfX1p-2de4a88b_ticket.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=lG1wi0G6cqtav0i9cOf3dFNBuNY%3D",
          "type": "pan",
          "value": "AALCA0442L",
          "verified": true,
          "legal_name": ""
        },
        "digital_signature": {
          "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/iigdJTk27-3.png?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=Nc38H2KxR1ymSZz8jVRQyUCXobs%3D",
          "type": "digital_signature",
          "value": "Aayush Jain",
          "verified": true,
          "legal_name": "Aayush Jain"
        }
      },
      "business_info": "This is a description area to write about the company.",
      "contact_details": {
        "phone": [
          {
            "number": "7009853732",
            "country_code": 91
          },
          {
            "number": "9821012533",
            "country_code": 91
          }
        ],
        "emails": [
          "aayushvjain@gofynd.com",
          "abc@gmail.com",
          "asmaidris1994@gmail.com"
        ]
      },
      "business_details": {
        "website": {
          "url": "https://www.playclan.com"
        }
      },
      "notification_emails": [
        "pranavverma@gofynd.com",
        "vermapranav28@gmail.com",
        "vaishakhshetty@gofynd.com"
      ]
    },
    "exchange_allowed": false,
    "payment_procesing_charge": 0,
    "tan_no": "11",
    "vat_no": null,
    "exchange_within_days": null,
    "gst_number": "27AALCA0442L1ZM",
    "created_on": 1452571141,
    "company_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED",
    "fynd_a_fit_available": false,
    "return_allowed": true,
    "return_within_days": 30,
    "payment_type": "Happay",
    "business_type": "ltd/pvt ltd",
    "agreement_start_date": 1503532800,
    "cst": null,
    "pan_no": "AALCA0442L"
  },
  "coupon": {},
  "delivery_address": {
    "area": "Bhagyoday Society",
    "city": "Palanpur",
    "email": "",
    "phone": "7621937989",
    "state": "Gujarat",
    "country": "India",
    "pincode": "385001",
    "version": "1.0",
    "address1": "11",
    "address2": "",
    "landmark": "mansarovar road",
    "latitude": 24.1724338,
    "longitude": 72.434581,
    "created_at": "2022-08-08T23:14:45+00:00",
    "updated_at": "2022-08-08T23:14:45+00:00",
    "address_type": "home",
    "contact_person": "Rahul",
    "address_category": "delivery",
    "name": "Rahul",
    "address": "11"
  },
  "delivery_slot": {
    "slot": "By 17:00 PM",
    "upper_bound": "2022-08-15T17:44:34+00:00",
    "lower_bound": "2022-08-13T17:44:34+00:00",
    "date": "2022-08-15T17:44:34+00:00",
    "type": "order_window"
  },
  "dp_details": {
    "id": 22,
    "name": "fyndr",
    "awb_no": "4982512202351",
    "eway_bill_id": null,
    "track_url": null,
    "dp_charges": 110,
    "dp_return_charges": 70,
    "amount_handling_charges": 15,
    "gst_tag": "sgst"
  },
  "einvoice_info": null,
  "fallback_user": {
    "email": "",
    "mobile": "7621937989"
  },
  "fulfilling_store": {
    "login_username": "TEST_FFSPS_61",
    "mall_area": null,
    "updated_at": "2022-05-19T15:46:52+00:00",
    "packaging_material_count": 0,
    "id": 10182,
    "store_address_json": {
      "area": "",
      "city": "MUMBAI SUBURBAN",
      "email": "javedkazi@gofynd.com",
      "phone": "918286865180",
      "state": "MAHARASHTRA",
      "country": "INDIA",
      "pincode": "400093",
      "version": "1.0",
      "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
      "address2": "",
      "landmark": "Opposite MIDC police station",
      "latitude": 19.1174798,
      "longitude": 72.8691603,
      "created_at": "2022-05-24 18:35:09",
      "updated_at": "2022-05-24 18:35:09",
      "address_type": "store",
      "contact_person": "Javed",
      "address_category": "store"
    },
    "is_archived": false,
    "meta": {
      "stage": "verified",
      "timing": [
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "monday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "tuesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "wednesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 14,
            "minute": 12
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "thursday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "friday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "saturday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "sunday"
        }
      ],
      "documents": {},
      "gst_number": null,
      "display_name": "Fuschia",
      "gst_credentials": {
        "e_invoice": {
          "enabled": false
        },
        "e_waybill": {
          "enabled": false
        }
      },
      "notification_emails": [
        "vaishakhshetty@gofynd.com"
      ],
      "product_return_config": {
        "on_same_store": true
      },
      "additional_contact_details": {
        "number": [
          "91 - 8286865180"
        ]
      },
      "ewaybill_portal_details": null
    },
    "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
    "parent_store_id": null,
    "alohomora_user_id": 11070,
    "store_active_from": null,
    "vat_no": null,
    "longitude": 72.8292187,
    "location_type": "mall",
    "latitude": 19.0551125,
    "created_at": "2020-01-15T05:30:41+00:00",
    "fulfillment_channel": "pulse",
    "brand_id": null,
    "is_active": false,
    "name": "Fuschia",
    "mall_name": null,
    "company_id": 61,
    "is_enabled_for_recon": false,
    "code": "FFSPS",
    "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
    "address2": "",
    "city": "MUMBAI SUBURBAN",
    "state": "MAHARASHTRA",
    "country": "INDIA",
    "pincode": "400093",
    "store_email": "javedkazi@gofynd.com",
    "contact_person": "Javed",
    "phone": "918286865180",
    "brand_store_tags": [
      "pulse"
    ]
  },
  "fyndstore_emp": {},
  "invoice": {
    "updated_date": 1660000520,
    "store_invoice_id": "1659980720191361",
    "invoice_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_a4.pdf",
    "label_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_pos.pdf"
  },
  "is_processing": false,
  "journey_type": "forward",
  "lock_status": false,
  "no_of_bags_order": 1,
  "operational_status": "delivery_done",
  "order": {
    "raw_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
    "affiliate_order_date": "2022-08-08T23:14:45+00:00",
    "total_order_value": 10000,
    "transaction_id": "FY62F14B8501F18E8FD3",
    "refund_by": "fynd",
    "headers": {
      "host": "fplt-gringotts-main-svc.default.svc.cluster.local",
      "user-agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
      "cookie": "G_ENABLED_IDPS=google; f.session=s%3AHQX0JDLgWOHd8z7NOu-E9mT9yBDaqfPR.6T82v4OlerGY6lfKfATfojYQzDCtSRhEJkIA%2FyH%2Fz%2BM; ordering_store=s%3A15114.6VinzJtp1QRjsKZ52NWvXXPoTuLc38KYLxiLJSMl6CE",
      "x-application-id": "5dd3ce1f1662684aa7019f1e",
      "x-application-token": "np0tHm04",
      "x-currency-code": "INR",
      "authorization": "04a544ac-7e85-437f-b6d6-0adb694c4045",
      "accept": "*/*",
      "accept-encoding": "gzip, deflate",
      "content-length": "17443",
      "content-type": "text/plain; charset=utf-8",
      "x-newrelic-id": "VQcHWVJVDhAHXFFVBAUEUVI=",
      "x-newrelic-transaction": "PxQPAlJaXgNRVQUDVAgOAlUFFB8EBw8RVU4aWlsMDVQDBAgFUAIKWwAHA0NKQQEDAlBWAQ4AFTs=",
      "request-source": "Fynd",
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
      "source": "uniket-desktop",
      "user_agent_version": null,
      "deprecated": false
    },
    "id": 13030531,
    "cod_charges": 0,
    "collect_by": "fynd",
    "tax_details": {
      "gstin": null
    },
    "promotion_effective_discount": 0,
    "affiliate_order_id": "FY62F14B8501F18E8FD3",
    "meta": {
      "files": [],
      "staff": {},
      "comment": "",
      "extra_meta": {},
      "order_type": "HomeDelivery",
      "employee_id": null,
      "payment_type": "fynd",
      "mongo_cart_id": 41262745,
      "order_platform": "platform-site",
      "ordering_store": 15114,
      "order_child_entities": [
        "shipment",
        "bag"
      ]
    },
    "order_value": 10000,
    "fynd_credits": 0,
    "mode_of_payment": "FYND",
    "discount": 0,
    "payment_methods": {
      "COD": {
        "meta": {
          "logo_url": {
            "large": "https://hdn-1.fynd.com/payment/cod.png",
            "small": "https://hdn-1.fynd.com/payment/cod.png"
          },
          "payment_id": "FY62F14B8501F18E8FD3",
          "merchant_code": "",
          "payment_gateway": "Fynd",
          "payment_identifier": "11"
        },
        "mode": "COD",
        "name": "COD",
        "amount": 10000,
        "refund_by": "fynd",
        "collect_by": "fynd"
      }
    },
    "fynd_order_id": "FY62F14B8501F18E8FD3",
    "delivery_charges": 0,
    "mongo_cart_id": 41262745,
    "source": "uniket-desktop",
    "created_time": 1660000485,
    "payment_mode_id": 2,
    "currency": "INR",
    "coupon_value": 0,
    "cashback_value": 0,
    "cashback_applied": 0,
    "ordering_channel": "FYND_STORE",
    "user_id": 17952150,
    "affiliate_id": "5dd3ce1f1662684aa7019f1e",
    "ordering_channel_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/fynd_store_logo.png",
    "prices": {
      "amount_paid": 10000,
      "refund_amount": 10000,
      "price_marked": 10000,
      "cod_charges": 0,
      "discount": 0,
      "cashback_applied": 0,
      "delivery_charge": 0,
      "fynd_credits": 0,
      "cashback": 0,
      "price_effective": 10000,
      "refund_credit": 0,
      "value_of_good": 8928.57,
      "coupon_value": 0,
      "tax_collected_at_source": 0,
      "promotion_effective_discount": 0,
      "amount_paid_roundoff": 10000
    }
  },
  "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
  "order_source": "uniket-desktop",
  "order_type": "forward",
  "order_value": 10000,
  "ordering_store": {
    "login_username": null,
    "mall_area": null,
    "updated_at": "2022-04-21T14:44:10+00:00",
    "packaging_material_count": 0,
    "id": 15114,
    "store_address_json": {
      "area": "",
      "city": "MUMBAI",
      "email": "talha1891@gmail.com",
      "phone": "918104556147",
      "state": "MAHARASHTRA",
      "country": "INDIA",
      "pincode": "421301",
      "version": "1.0",
      "address1": "KALYAN, MAHARASHTRA 421301",
      "address2": "",
      "landmark": "",
      "latitude": 73.1290596,
      "longitude": 19.2527132,
      "created_at": "2022-05-10 18:50:25",
      "updated_at": "2022-05-10 18:50:25",
      "address_type": "store",
      "contact_person": "talha",
      "address_category": "store"
    },
    "is_archived": false,
    "meta": {
      "stage": "verified",
      "timing": [
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "monday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "tuesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "wednesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "thursday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "friday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "saturday"
        },
        {
          "open": false,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "sunday"
        }
      ],
      "documents": {},
      "gst_number": null,
      "display_name": "0Test Loc",
      "gst_credentials": {
        "e_invoice": {
          "enabled": false
        },
        "e_waybill": {
          "enabled": false
        }
      },
      "notification_emails": [
        "talha1891@gmail.com"
      ],
      "product_return_config": {
        "on_same_store": true
      },
      "additional_contact_details": {
        "number": [
          "91 - 8104556147"
        ]
      },
      "ewaybill_portal_details": null
    },
    "order_integration_id": null,
    "parent_store_id": null,
    "alohomora_user_id": null,
    "store_active_from": null,
    "vat_no": null,
    "longitude": null,
    "location_type": "high_street",
    "latitude": null,
    "created_at": "2022-04-21T14:44:10+00:00",
    "fulfillment_channel": "pulse",
    "brand_id": null,
    "is_active": false,
    "name": "0Test Loc",
    "mall_name": null,
    "company_id": 61,
    "is_enabled_for_recon": false,
    "code": "0_loc_code",
    "address1": "KALYAN, MAHARASHTRA 421301",
    "address2": "",
    "city": "MUMBAI",
    "state": "MAHARASHTRA",
    "country": "INDIA",
    "pincode": "421301",
    "store_email": "talha1891@gmail.com",
    "contact_person": "talha",
    "phone": "918104556147"
  },
  "original_bag_list": [
    19207348
  ],
  "payment_methods": {
    "COD": {
      "amount": 10000,
      "mode": "COD",
      "name": "COD",
      "collect_by": "fynd",
      "refund_by": "fynd",
      "meta": {
        "logo_url": {
          "large": "https://hdn-1.fynd.com/payment/cod.png",
          "small": "https://hdn-1.fynd.com/payment/cod.png"
        },
        "payment_id": "FY62F14B8501F18E8FD3",
        "merchant_code": "",
        "payment_gateway": "Fynd",
        "payment_identifier": "11"
      }
    }
  },
  "payment_type": "fynd",
  "payments": {
    "mode": "COD",
    "is_active": true,
    "display_priority": 1,
    "display_name": "Cash on Delivery",
    "id": 2,
    "logo": "https://hdn-1.fynd.com/payment/cod.png",
    "source": "Cash on Delivery",
    "payment_identifier": "11",
    "source_nickname": ""
  },
  "prices": {
    "amount_paid": 10000,
    "refund_amount": 10000,
    "price_marked": 10000,
    "cod_charges": 0,
    "discount": 0,
    "cashback_applied": 0,
    "delivery_charge": 0,
    "fynd_credits": 0,
    "cashback": 0,
    "price_effective": 10000,
    "refund_credit": 0,
    "value_of_good": 8928.57,
    "coupon_value": 0,
    "tax_collected_at_source": 0,
    "promotion_effective_discount": 0,
    "amount_paid_roundoff": 10000
  },
  "products": [
    {
      "id": 19207348,
      "display_name": "Bag",
      "entity_type": "bag",
      "type": "single",
      "status": {
        "is_returnable": true,
        "can_be_cancelled": true,
        "enable_tracking": false,
        "is_customer_return_allowed": true,
        "is_active": false
      },
      "financial_breakup": [
        {
          "price_effective": 10000,
          "discount": 0,
          "amount_paid": 10000,
          "coupon_effective_discount": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cod_charges": 0,
          "refund_credit": 0,
          "cashback": 0,
          "refund_amount": 10000,
          "added_to_fynd_cash": false,
          "cashback_applied": 0,
          "gst_tax_percentage": 12,
          "value_of_good": 8928.57,
          "price_marked": 10000,
          "transfer_price": 0,
          "brand_calculated_amount": 10000,
          "tax_collected_at_source": 0,
          "tcs_percentage": 0,
          "promotion_effective_discount": 0,
          "coupon_value": 0,
          "amount_paid_roundoff": 10000,
          "size": "S",
          "total_units": 1,
          "hsn_code": "61091000",
          "identifiers": {
            "sku_code": "MT-100 WHITE_S"
          },
          "item_name": "White Printed T-Shirt",
          "gst_fee": 1071.43,
          "gst_tag": "IGST"
        }
      ],
      "bag_id": 19207348,
      "bag_update_time": 1659980745.2105737,
      "current_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": 1660000545,
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        }
      },
      "bag_status": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 89,
          "store_id": 10182,
          "state_type": "operational",
          "status": "pending",
          "shipment_id": "16599806855311914452",
          "id": 120514809,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 89,
            "display_name": "Pending",
            "notify_customer": true,
            "app_display_name": "Pending",
            "state_type": "operational",
            "app_state_name": "pending",
            "name": "pending",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 1,
          "store_id": 10182,
          "state_type": "operational",
          "status": "placed",
          "shipment_id": "16599806855311914452",
          "id": 120514810,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 1,
            "display_name": "Placed",
            "notify_customer": true,
            "app_display_name": "Processing",
            "state_type": "operational",
            "app_state_name": "processing",
            "name": "placed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:14+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000514,
          "state_id": 2,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_confirmed",
          "shipment_id": "16599806855311914452",
          "id": 120514842,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 2,
            "display_name": "Confirmed",
            "notify_customer": false,
            "app_display_name": "Confirmed",
            "state_type": "operational",
            "app_state_name": "confirmed",
            "name": "bag_confirmed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3n"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 91,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_invoiced",
          "shipment_id": "16599806855311914452",
          "id": 120514845,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 91,
            "display_name": "Bag Invoiced",
            "notify_customer": false,
            "app_display_name": "Bag Invoiced",
            "state_type": "operational",
            "app_state_name": "bag_invoiced",
            "name": "bag_invoiced",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 113,
          "store_id": 10182,
          "state_type": "operational",
          "status": "ready_for_dp_assignment",
          "shipment_id": "16599806855311914452",
          "id": 120514846,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 113,
            "display_name": "Ready For Dp Assignment",
            "notify_customer": false,
            "app_display_name": "Ready For Dp Assignment",
            "state_type": "operational",
            "app_state_name": "ready_for_dp_assignment",
            "name": "ready_for_dp_assignment",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000523,
          "state_id": 7,
          "store_id": 10182,
          "state_type": "operational",
          "status": "dp_assigned",
          "shipment_id": "16599806855311914452",
          "id": 120514848,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 7,
            "display_name": "DP Assigned",
            "notify_customer": false,
            "app_display_name": "DP Assigned",
            "state_type": "operational",
            "app_state_name": "dp_assigned",
            "name": "dp_assigned",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 8,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_packed",
          "shipment_id": "16599806855311914452",
          "id": 120514898,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 8,
            "display_name": "Bag Packed",
            "notify_customer": true,
            "app_display_name": "Bag Packed",
            "state_type": "operational",
            "app_state_name": "bag_packed",
            "name": "bag_packed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "missed_state_ingestion",
              "display_name": "Missed state is ingested",
              "id": 162,
              "state": "missed_state",
              "text": "Missed state is ingested"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 12,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_picked",
          "shipment_id": "16599806855311914452",
          "id": 120514899,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 12,
            "display_name": "In Transit",
            "notify_customer": false,
            "app_display_name": "In Transit",
            "state_type": "operational",
            "app_state_name": "in_transit",
            "name": "bag_picked",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000545,
          "state_id": 14,
          "store_id": 10182,
          "state_type": "operational",
          "status": "delivery_done",
          "shipment_id": "16599806855311914452",
          "id": 120514917,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 14,
            "display_name": "Delivery Done",
            "notify_customer": true,
            "app_display_name": "Delivered",
            "state_type": "operational",
            "app_state_name": "delivered",
            "name": "delivery_done",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        }
      ],
      "item": {
        "brand": "play clan",
        "can_return": true,
        "id": 95944,
        "webstore_product_url": null,
        "last_updated_at": 1660000486,
        "slug_key": "play-clan-white-printed-t-shirt-387",
        "attributes": {
          "color": "White",
          "gender": [
            "Men"
          ],
          "season": "SS16",
          "pattern": "Printed",
          "essential": "Yes",
          "brand_name": "play clan",
          "net-quantity": "1 U",
          "marketer-name": "Fynd",
          "primary_color": "White",
          "sleeve_length": "Short",
          "marketer-address": "Fynd",
          "primary_material": "Others",
          "primary_color_hex": "FFFFFF"
        },
        "meta": {
          "departments": [
            21
          ]
        },
        "gender": null,
        "l3_category": 192,
        "color": null,
        "can_cancel": true,
        "l3_category_name": "T-Shirts",
        "l1_category": [
          "Clothing"
        ],
        "brand_id": 85,
        "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
        "l2_category": [
          "Polos & T-Shirts"
        ],
        "name": "White Printed T-Shirt",
        "code": "MT-100 WHITE",
        "department_id": 21,
        "size": "S",
        "image": [
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
        ]
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3",
          "bag_id": 19207348
        }
      ],
      "article": {
        "identifiers": {
          "sku_code": "MT-100 WHITE_S"
        },
        "esp_modified": false,
        "size": "S",
        "code": "",
        "raw_meta": null,
        "set": {},
        "is_set": false,
        "seller_identifier": "MT-100 WHITE_S",
        "return_config": {
          "time": 30,
          "unit": "days",
          "returnable": true
        },
        "_id": "5f8a4751d2f36f00014ff8ed",
        "uid": "5f8a4751d2f36f00014ff8ed",
        "child_details": {}
      },
      "journey_type": "forward",
      "current_operational_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": "2022-08-08T23:15:45+00:00",
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        },
        "reasons": [
          {
            "slug": "others",
            "display_name": "Others",
            "id": 90,
            "state": "bag_confirmed",
            "text": "FY62F14B8501F18E8FD3"
          }
        ]
      },
      "dates": {
        "order_created": "2022-08-08T23:14:45+00:00",
        "delivery_date": "2022-08-08T23:15:45+00:00"
      },
      "prices": {
        "price_effective": 10000,
        "discount": 0,
        "amount_paid": 10000,
        "coupon_effective_discount": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cod_charges": 0,
        "refund_credit": 0,
        "cashback": 0,
        "refund_amount": 10000,
        "added_to_fynd_cash": false,
        "cashback_applied": 0,
        "gst_tax_percentage": 12,
        "value_of_good": 8928.57,
        "price_marked": 10000,
        "transfer_price": 0,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "tcs_percentage": 0,
        "promotion_effective_discount": 0,
        "coupon_value": 0,
        "amount_paid_roundoff": 10000
      },
      "payment_methods": {
        "COD": {
          "amount": 10000
        }
      },
      "gst_details": {
        "gstin_code": "null",
        "gst_tag": "IGST",
        "hsn_code": "61091000",
        "value_of_good": 8928.57,
        "gst_tax_percentage": 12,
        "is_default_hsn_code": false,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
        "gst_fee": 1071.43,
        "igst_tax_percentage": 12,
        "sgst_tax_percentage": 0,
        "cgst_tax_percentage": 0,
        "igst_gst_fee": 1071.43,
        "cgst_gst_fee": "0",
        "sgst_gst_fee": "0"
      },
      "brand": {
        "credit_note_allowed": false,
        "id": 85,
        "script_last_ran": null,
        "pickup_location": null,
        "invoice_prefix": "pc",
        "brand_name": "play clan",
        "is_virtual_invoice": false,
        "created_on": 1452571237,
        "modified_on": 1623871060,
        "company": 61,
        "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
        "credit_note_expiry_days": null,
        "start_date": null
      },
      "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
      "affiliate_bag_details": {
        "affiliate_bag_id": "19207348",
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "affiliate_meta": {
          "fynd": {
            "fulfilment_identifier": "pulse"
          },
          "channel_shipment_id": null,
          "channel_order_id": null,
          "due_date": null,
          "is_priority": false,
          "box_type": null,
          "coupon_code": null,
          "size_level_total_qty": 924,
          "loyalty_discount": 0,
          "employee_discount": 0
        },
        "loyalty_discount": 0,
        "employee_discount": 0
      },
      "meta": {},
      "applied_promos": []
    }
  ],
  "qc_required": null,
  "requested_dp_conf": {
    "awb_type": "express",
    "exclude_dps": [
      27,
      29
    ],
    "ewbn": null,
    "id": 22,
    "is_dp_assigned_manually": true
  },
  "restore_coupon": false,
  "restore_promos": {},
  "rto_address": {
    "store_address_json": {
      "area": "",
      "city": "MUMBAI SUBURBAN",
      "email": "javedkazi@gofynd.com",
      "phone": "918286865180",
      "state": "MAHARASHTRA",
      "country": "INDIA",
      "pincode": "400093",
      "version": "1.0",
      "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
      "address2": "",
      "landmark": "Opposite MIDC police station",
      "latitude": 19.1174798,
      "longitude": 72.8691603,
      "created_at": "2022-05-24 18:35:09",
      "updated_at": "2022-05-24 18:35:09",
      "address_type": "store",
      "contact_person": "Javed",
      "address_category": "store"
    },
    "name": "Fuschia",
    "longitude": 72.8292187,
    "company_id": 61,
    "location_type": "mall",
    "latitude": 19.0551125,
    "id": 10182,
    "code": "FFSPS",
    "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
    "address2": "",
    "city": "MUMBAI SUBURBAN",
    "state": "MAHARASHTRA",
    "country": "INDIA",
    "pincode": "400093",
    "store_email": "javedkazi@gofynd.com",
    "contact_person": "Javed",
    "phone": "918286865180"
  },
  "search_key": {
    "shipment_id": "914452",
    "order_id": "8E8FD3"
  },
  "shipment": {
    "type": "shipment",
    "tags": [
      "bag"
    ],
    "billing_address_json": {
      "area": "Bhagyoday Society",
      "city": "Palanpur",
      "email": "",
      "phone": "7621937989",
      "state": "Gujarat",
      "country": "India",
      "pincode": "385001",
      "version": "1.0",
      "address1": "11",
      "address2": "",
      "landmark": "mansarovar road",
      "latitude": 24.1724338,
      "longitude": 72.434581,
      "created_at": "2022-08-08 23:14:45",
      "updated_at": "2022-08-08 23:14:45",
      "address_type": "home",
      "contact_person": "Rahul",
      "address_category": "billing"
    },
    "id": "16599806855311914452",
    "previous_shipment_id": null,
    "meta": {
      "dp_id": "7",
      "weight": 250,
      "external": {},
      "formatted": {
        "max": "Mon, 15 Aug",
        "min": "Sat, 13 Aug"
      },
      "timestamp": {
        "max": 1660585474,
        "min": 1660412674
      },
      "bag_weight": {
        "19207348": 250
      },
      "debug_info": {
        "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
      },
      "dp_options": {
        "7": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 2,
          "operations": [
            "inter_city"
          ],
          "r_priority": 1,
          "fm_priority": 2,
          "lm_priority": 2,
          "payment_mode": "all",
          "rvp_priority": 1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "7"
        },
        "29": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 4,
          "operations": [
            "inter_city"
          ],
          "r_priority": 3,
          "fm_priority": 4,
          "lm_priority": 4,
          "payment_mode": "all",
          "rvp_priority": 3,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "29"
        },
        "36": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 6,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 6,
          "lm_priority": 6,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "36"
        },
        "37": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 7,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 7,
          "lm_priority": 7,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "37"
        }
      },
      "order_type": null,
      "dp_sort_key": "fm_priority",
      "ewaybill_info": {},
      "packaging_name": "POLYB_M_1411P5",
      "assign_dp_from_sb": true,
      "same_store_available": false,
      "fulfilment_priority_text": null,
      "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
      "auto_trigger_dp_assignment_ACF": true
    },
    "fynd_order_id": "FY62F14B8501F18E8FD3",
    "delivery_awb_number": "4982512202351",
    "lock_status": "",
    "pdf_links": {
      "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
      "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
      "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
      "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
      "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
      "label_type": "fynd",
      "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
      "invoice_type": "fynd"
    },
    "parent_type": null,
    "store_invoice_id": "1659980720191361",
    "delivery_address_json": {
      "area": "Bhagyoday Society",
      "city": "Palanpur",
      "email": "",
      "phone": "7621937989",
      "state": "Gujarat",
      "country": "India",
      "pincode": "385001",
      "version": "1.0",
      "address1": "11",
      "address2": "",
      "landmark": "mansarovar road",
      "latitude": 24.1724338,
      "longitude": 72.434581,
      "created_at": "2022-08-08T23:14:45+00:00",
      "updated_at": "2022-08-08T23:14:45+00:00",
      "address_type": "home",
      "contact_person": "Rahul",
      "address_category": "delivery",
      "name": "Rahul",
      "address": "11"
    },
    "created_at": 1660000486,
    "hand_over_contact_json": {
      "email": "",
      "phone": "7621937989",
      "version": "1.0",
      "created_at": "2022-08-08 23:14:45",
      "updated_at": "2022-08-08 23:14:45",
      "contact_person": "Rahul"
    },
    "parent_id": "",
    "is_active": true,
    "affiliate_id": "5dd3ce1f1662684aa7019f1e",
    "affiliate_shipment_id": "16599806855311914452",
    "fulfilment_priority": 10,
    "credit_note_id": null,
    "eway_bill_id": null,
    "packaging_type": "POLYB_M_1411P5"
  },
  "shipment_details": {
    "dp_id": "7",
    "dp_options": {
      "7": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 2,
        "operations": [
          "inter_city"
        ],
        "r_priority": 1,
        "fm_priority": 2,
        "lm_priority": 2,
        "payment_mode": "all",
        "rvp_priority": 1,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "7"
      },
      "29": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 4,
        "operations": [
          "inter_city"
        ],
        "r_priority": 3,
        "fm_priority": 4,
        "lm_priority": 4,
        "payment_mode": "all",
        "rvp_priority": 3,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "29"
      },
      "36": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 6,
        "operations": [
          "inter_city"
        ],
        "r_priority": -1,
        "fm_priority": 6,
        "lm_priority": 6,
        "payment_mode": "all",
        "rvp_priority": -1,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "36"
      },
      "37": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 7,
        "operations": [
          "inter_city"
        ],
        "r_priority": -1,
        "fm_priority": 7,
        "lm_priority": 7,
        "payment_mode": "all",
        "rvp_priority": -1,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "37"
      }
    }
  },
  "shipment_gst": {
    "value_of_good": 8928.57,
    "gst_fee": 1071.43,
    "brand_calculated_amount": 10000,
    "tax_collected_at_source": 0,
    "gstin_code": "null"
  },
  "shipment_quantity": 1,
  "shipment_status": {
    "created_at": 1660000545,
    "shipment_id": "16599806855311914452",
    "status": "delivery_done",
    "bag_list": [
      "19207348"
    ],
    "id": 78707677,
    "current_shipment_status": "delivery_done",
    "status_created_at": 1660000545
  },
  "shipment_status_history": [
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "shipment_id": "16599806855311914452",
      "status": "pending",
      "bag_list": [
        "19207348"
      ],
      "id": 78707571
    },
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "shipment_id": "16599806855311914452",
      "status": "placed",
      "bag_list": [
        "19207348"
      ],
      "id": 78707572
    },
    {
      "created_at": "2022-08-08T23:15:12+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_confirmed",
      "bag_list": [
        "19207348"
      ],
      "id": 78707602
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_invoiced",
      "bag_list": [
        "19207348"
      ],
      "id": 78707605
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "shipment_id": "16599806855311914452",
      "status": "ready_for_dp_assignment",
      "bag_list": [
        "19207348"
      ],
      "id": 78707606
    },
    {
      "created_at": "2022-08-08T23:15:23+00:00",
      "shipment_id": "16599806855311914452",
      "status": "dp_assigned",
      "bag_list": [
        "19207348"
      ],
      "id": 78707608
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_packed",
      "bag_list": [
        "19207348"
      ],
      "id": 78707658
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_picked",
      "bag_list": [
        "19207348"
      ],
      "id": 78707659
    },
    {
      "created_at": "2022-08-08T23:15:45+00:00",
      "shipment_id": "16599806855311914452",
      "status": "delivery_done",
      "bag_list": [
        "19207348"
      ],
      "id": 78707677,
      "current_shipment_status": "delivery_done",
      "status_created_at": "2022-08-08T23:15:45+00:00"
    }
  ],
  "shipment_update_time": 1659980745.2105737,
  "shipment_value": 10000,
  "tags": [
    "bag"
  ],
  "total_shipment_bags": 1,
  "total_shipments_in_order": 1,
  "transaction_type": "shipment",
  "user": {
    "email": "rahulrathod@gofynd.com",
    "user_oid": "000000000000000014402534",
    "last_name": "Rathod",
    "gender": "male",
    "mongo_user_id": "14402534",
    "mobile": "7621937989",
    "first_name": "Rahul",
    "id": 17952150,
    "is_anonymous_user": false
  },
  "weight": {
    "value": 250,
    "unit": "gram"
  },
  "id": "62f14b93af6c692530bb0df6"
}
```
</details>









---


#### getOrders





```swift
client.order.getOrders(bagIds: bagIds, shipmentIds: shipmentIds, orderIds: orderIds, channelBagIds: channelBagIds, channelShipmentIds: channelShipmentIds, channelOrderIds: channelOrderIds, channelId: channelId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagIds | String? | no |  |   
| shipmentIds | String? | no |  |   
| orderIds | String? | no |  |   
| channelBagIds | String? | no |  |   
| channelShipmentIds | String? | no |  |   
| channelOrderIds | String? | no |  |   
| channelId | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |  





*Returned Response:*




[BulkShipmentDetailsPlatformResponse](#BulkShipmentDetailsPlatformResponse)

Successfully retrived all the given shipments details!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "shipment_id": "16599806855311914452",
      "affiliate_details": {
        "id": "5dd3ce1f1662684aa7019f1e",
        "affiliate_bag_id": "19207348",
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "company_affiliate_tag": "OpexTesting",
        "affiliate_id": "5dd3ce1f1662684aa7019f1e",
        "affiliate_shipment_id": "16599806855311914452",
        "shipment_meta": {
          "dp_id": "7",
          "weight": 250,
          "external": {},
          "formatted": {
            "max": "Mon, 15 Aug",
            "min": "Sat, 13 Aug"
          },
          "timestamp": {
            "max": 1660585474,
            "min": 1660412674
          },
          "bag_weight": {
            "19207348": 250
          },
          "debug_info": {
            "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
          },
          "dp_options": {
            "7": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 2,
              "operations": [
                "inter_city"
              ],
              "r_priority": 1,
              "fm_priority": 2,
              "lm_priority": 2,
              "payment_mode": "all",
              "rvp_priority": 1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "7"
            },
            "29": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 4,
              "operations": [
                "inter_city"
              ],
              "r_priority": 3,
              "fm_priority": 4,
              "lm_priority": 4,
              "payment_mode": "all",
              "rvp_priority": 3,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "29"
            },
            "36": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 6,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 6,
              "lm_priority": 6,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "36"
            },
            "37": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 7,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 7,
              "lm_priority": 7,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "37"
            }
          },
          "order_type": null,
          "dp_sort_key": "fm_priority",
          "ewaybill_info": {},
          "packaging_name": "POLYB_M_1411P5",
          "assign_dp_from_sb": true,
          "same_store_available": false,
          "fulfilment_priority_text": null,
          "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
          "auto_trigger_dp_assignment_ACF": true
        },
        "affiliate_meta": {
          "fynd": {
            "fulfilment_identifier": "pulse"
          },
          "channel_shipment_id": null,
          "channel_order_id": null,
          "due_date": null,
          "is_priority": false,
          "box_type": null,
          "coupon_code": null,
          "size_level_total_qty": 924,
          "loyalty_discount": 0,
          "employee_discount": 0
        },
        "affiliate_store_id": "10182",
        "pdf_links": {
          "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
          "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
          "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
          "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
          "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
          "label_type": "fynd",
          "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
          "invoice_type": "fynd"
        },
        "config": {
          "id": "5dd3ce1f1662684aa7019f1e",
          "meta": [],
          "name": "OpexTesting",
          "owner": "000000000000000000000020",
          "token": "np0tHm04",
          "secret": "dTSEQkEE7",
          "createdAt": null,
          "updatedAt": null,
          "description": "Opex testing app",
          "dp_assignment": true,
          "app_company_id": 61,
          "article_assignment": {
            "level": "multi-companies",
            "strategy": "optimal"
          },
          "force_reassignment": false,
          "post_order_reassignment": true
        }
      },
      "app_id": "5dd3ce1f1662684aa7019f1e",
      "article_details": {
        "status": {
          "delivery_done": {
            "5f8a4751d2f36f00014ff8ed": {
              "uid": "5f8a4751d2f36f00014ff8ed",
              "_id": "5f8a4751d2f36f00014ff8ed",
              "is_set": false,
              "bag_ids": [
                19207348
              ],
              "quantity": 1,
              "reasons": {
                "90": [
                  {
                    "slug": "others",
                    "display_name": "Others",
                    "id": 90,
                    "state": "bag_confirmed",
                    "text": "FY62F14B8501F18E8FD3",
                    "bag_id": 19207348
                  }
                ]
              }
            }
          }
        }
      },
      "bag_status_history": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:14:46+00:00",
          "state_id": 89,
          "store_id": 10182,
          "state_type": "operational",
          "status": "pending",
          "shipment_id": "16599806855311914452",
          "id": 120514809,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 89,
            "display_name": "Pending",
            "notify_customer": true,
            "app_display_name": "Pending",
            "state_type": "operational",
            "app_state_name": "pending",
            "name": "pending",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:14:46+00:00",
          "state_id": 1,
          "store_id": 10182,
          "state_type": "operational",
          "status": "placed",
          "shipment_id": "16599806855311914452",
          "id": 120514810,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 1,
            "display_name": "Placed",
            "notify_customer": true,
            "app_display_name": "Processing",
            "state_type": "operational",
            "app_state_name": "processing",
            "name": "placed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:14+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:15:14+00:00",
          "state_id": 2,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_confirmed",
          "shipment_id": "16599806855311914452",
          "id": 120514842,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 2,
            "display_name": "Confirmed",
            "notify_customer": false,
            "app_display_name": "Confirmed",
            "state_type": "operational",
            "app_state_name": "confirmed",
            "name": "bag_confirmed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3n"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:15:20+00:00",
          "state_id": 91,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_invoiced",
          "shipment_id": "16599806855311914452",
          "id": 120514845,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 91,
            "display_name": "Bag Invoiced",
            "notify_customer": false,
            "app_display_name": "Bag Invoiced",
            "state_type": "operational",
            "app_state_name": "bag_invoiced",
            "name": "bag_invoiced",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:15:20+00:00",
          "state_id": 113,
          "store_id": 10182,
          "state_type": "operational",
          "status": "ready_for_dp_assignment",
          "shipment_id": "16599806855311914452",
          "id": 120514846,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 113,
            "display_name": "Ready For Dp Assignment",
            "notify_customer": false,
            "app_display_name": "Ready For Dp Assignment",
            "state_type": "operational",
            "app_state_name": "ready_for_dp_assignment",
            "name": "ready_for_dp_assignment",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:23+00:00",
          "state_id": 7,
          "store_id": 10182,
          "state_type": "operational",
          "status": "dp_assigned",
          "shipment_id": "16599806855311914452",
          "id": 120514848,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 7,
            "display_name": "DP Assigned",
            "notify_customer": false,
            "app_display_name": "DP Assigned",
            "state_type": "operational",
            "app_state_name": "dp_assigned",
            "name": "dp_assigned",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:33+00:00",
          "state_id": 8,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_packed",
          "shipment_id": "16599806855311914452",
          "id": 120514898,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 8,
            "display_name": "Bag Packed",
            "notify_customer": true,
            "app_display_name": "Bag Packed",
            "state_type": "operational",
            "app_state_name": "bag_packed",
            "name": "bag_packed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "missed_state_ingestion",
              "display_name": "Missed state is ingested",
              "id": 162,
              "state": "missed_state",
              "text": "Missed state is ingested"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:33+00:00",
          "state_id": 12,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_picked",
          "shipment_id": "16599806855311914452",
          "id": 120514899,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 12,
            "display_name": "In Transit",
            "notify_customer": false,
            "app_display_name": "In Transit",
            "state_type": "operational",
            "app_state_name": "in_transit",
            "name": "bag_picked",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:45+00:00",
          "state_id": 14,
          "store_id": 10182,
          "state_type": "operational",
          "status": "delivery_done",
          "shipment_id": "16599806855311914452",
          "id": 120514917,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 14,
            "display_name": "Delivery Done",
            "notify_customer": true,
            "app_display_name": "Delivered",
            "state_type": "operational",
            "app_state_name": "delivered",
            "name": "delivery_done",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        }
      ],
      "bags": [
        {
          "id": 19207348,
          "display_name": "Bag",
          "entity_type": "bag",
          "type": "single",
          "status": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": false,
            "is_customer_return_allowed": true,
            "is_active": false
          },
          "financial_breakup": [
            {
              "price_effective": 10000,
              "discount": 0,
              "amount_paid": 10000,
              "coupon_effective_discount": 0,
              "delivery_charge": 0,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 10000,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 12,
              "value_of_good": 8928.57,
              "price_marked": 10000,
              "transfer_price": 0,
              "brand_calculated_amount": 10000,
              "tax_collected_at_source": 0,
              "tcs_percentage": 0,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "amount_paid_roundoff": 10000,
              "size": "S",
              "total_units": 1,
              "hsn_code": "61091000",
              "identifiers": {
                "sku_code": "MT-100 WHITE_S"
              },
              "item_name": "White Printed T-Shirt",
              "gst_fee": 1071.43,
              "gst_tag": "IGST"
            }
          ],
          "bag_id": 19207348,
          "bag_update_time": 1659980745.2105737,
          "current_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": 1660000545,
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            }
          },
          "bag_status": [
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 89,
              "store_id": 10182,
              "state_type": "operational",
              "status": "pending",
              "shipment_id": "16599806855311914452",
              "id": 120514809,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 89,
                "display_name": "Pending",
                "notify_customer": true,
                "app_display_name": "Pending",
                "state_type": "operational",
                "app_state_name": "pending",
                "name": "pending",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 1,
              "store_id": 10182,
              "state_type": "operational",
              "status": "placed",
              "shipment_id": "16599806855311914452",
              "id": 120514810,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 1,
                "display_name": "Placed",
                "notify_customer": true,
                "app_display_name": "Processing",
                "state_type": "operational",
                "app_state_name": "processing",
                "name": "placed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:14+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000514,
              "state_id": 2,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_confirmed",
              "shipment_id": "16599806855311914452",
              "id": 120514842,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 2,
                "display_name": "Confirmed",
                "notify_customer": false,
                "app_display_name": "Confirmed",
                "state_type": "operational",
                "app_state_name": "confirmed",
                "name": "bag_confirmed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3n"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 91,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_invoiced",
              "shipment_id": "16599806855311914452",
              "id": 120514845,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 91,
                "display_name": "Bag Invoiced",
                "notify_customer": false,
                "app_display_name": "Bag Invoiced",
                "state_type": "operational",
                "app_state_name": "bag_invoiced",
                "name": "bag_invoiced",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 113,
              "store_id": 10182,
              "state_type": "operational",
              "status": "ready_for_dp_assignment",
              "shipment_id": "16599806855311914452",
              "id": 120514846,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 113,
                "display_name": "Ready For Dp Assignment",
                "notify_customer": false,
                "app_display_name": "Ready For Dp Assignment",
                "state_type": "operational",
                "app_state_name": "ready_for_dp_assignment",
                "name": "ready_for_dp_assignment",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:23+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000523,
              "state_id": 7,
              "store_id": 10182,
              "state_type": "operational",
              "status": "dp_assigned",
              "shipment_id": "16599806855311914452",
              "id": 120514848,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 7,
                "display_name": "DP Assigned",
                "notify_customer": false,
                "app_display_name": "DP Assigned",
                "state_type": "operational",
                "app_state_name": "dp_assigned",
                "name": "dp_assigned",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 8,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_packed",
              "shipment_id": "16599806855311914452",
              "id": 120514898,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 8,
                "display_name": "Bag Packed",
                "notify_customer": true,
                "app_display_name": "Bag Packed",
                "state_type": "operational",
                "app_state_name": "bag_packed",
                "name": "bag_packed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "missed_state_ingestion",
                  "display_name": "Missed state is ingested",
                  "id": 162,
                  "state": "missed_state",
                  "text": "Missed state is ingested"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 12,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_picked",
              "shipment_id": "16599806855311914452",
              "id": 120514899,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 12,
                "display_name": "In Transit",
                "notify_customer": false,
                "app_display_name": "In Transit",
                "state_type": "operational",
                "app_state_name": "in_transit",
                "name": "bag_picked",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:45+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000545,
              "state_id": 14,
              "store_id": 10182,
              "state_type": "operational",
              "status": "delivery_done",
              "shipment_id": "16599806855311914452",
              "id": 120514917,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 14,
                "display_name": "Delivery Done",
                "notify_customer": true,
                "app_display_name": "Delivered",
                "state_type": "operational",
                "app_state_name": "delivered",
                "name": "delivery_done",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            }
          ],
          "item": {
            "brand": "play clan",
            "can_return": true,
            "id": 95944,
            "webstore_product_url": null,
            "last_updated_at": 1660000486,
            "slug_key": "play-clan-white-printed-t-shirt-387",
            "attributes": {
              "color": "White",
              "gender": [
                "Men"
              ],
              "season": "SS16",
              "pattern": "Printed",
              "essential": "Yes",
              "brand_name": "play clan",
              "net-quantity": "1 U",
              "marketer-name": "Fynd",
              "primary_color": "White",
              "sleeve_length": "Short",
              "marketer-address": "Fynd",
              "primary_material": "Others",
              "primary_color_hex": "FFFFFF"
            },
            "meta": {
              "departments": [
                21
              ]
            },
            "gender": null,
            "l3_category": 192,
            "color": null,
            "can_cancel": true,
            "l3_category_name": "T-Shirts",
            "l1_category": [
              "Clothing"
            ],
            "brand_id": 85,
            "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
            "l2_category": [
              "Polos & T-Shirts"
            ],
            "name": "White Printed T-Shirt",
            "code": "MT-100 WHITE",
            "department_id": 21,
            "size": "S",
            "image": [
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
            ]
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3",
              "bag_id": 19207348
            }
          ],
          "article": {
            "identifiers": {
              "sku_code": "MT-100 WHITE_S"
            },
            "esp_modified": false,
            "size": "S",
            "code": "",
            "raw_meta": null,
            "set": {},
            "is_set": false,
            "seller_identifier": "MT-100 WHITE_S",
            "return_config": {
              "time": 30,
              "unit": "days",
              "returnable": true
            },
            "_id": "5f8a4751d2f36f00014ff8ed",
            "uid": "5f8a4751d2f36f00014ff8ed",
            "child_details": {}
          },
          "journey_type": "forward",
          "current_operational_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": "2022-08-08T23:15:45+00:00",
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            },
            "reasons": [
              {
                "slug": "others",
                "display_name": "Others",
                "id": 90,
                "state": "bag_confirmed",
                "text": "FY62F14B8501F18E8FD3"
              }
            ]
          },
          "dates": {
            "order_created": "2022-08-08T23:14:45+00:00",
            "delivery_date": "2022-08-08T23:15:45+00:00"
          },
          "prices": {
            "price_effective": 10000,
            "discount": 0,
            "amount_paid": 10000,
            "coupon_effective_discount": 0,
            "delivery_charge": 0,
            "fynd_credits": 0,
            "cod_charges": 0,
            "refund_credit": 0,
            "cashback": 0,
            "refund_amount": 10000,
            "added_to_fynd_cash": false,
            "cashback_applied": 0,
            "gst_tax_percentage": 12,
            "value_of_good": 8928.57,
            "price_marked": 10000,
            "transfer_price": 0,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "tcs_percentage": 0,
            "promotion_effective_discount": 0,
            "coupon_value": 0,
            "amount_paid_roundoff": 10000
          },
          "payment_methods": {
            "COD": {
              "amount": 10000
            }
          },
          "gst_details": {
            "gstin_code": "null",
            "gst_tag": "IGST",
            "hsn_code": "61091000",
            "value_of_good": 8928.57,
            "gst_tax_percentage": 12,
            "is_default_hsn_code": false,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
            "gst_fee": 1071.43,
            "igst_tax_percentage": 12,
            "sgst_tax_percentage": 0,
            "cgst_tax_percentage": 0,
            "igst_gst_fee": 1071.43,
            "cgst_gst_fee": "0",
            "sgst_gst_fee": "0"
          },
          "brand": {
            "credit_note_allowed": false,
            "id": 85,
            "script_last_ran": null,
            "pickup_location": null,
            "invoice_prefix": "pc",
            "brand_name": "play clan",
            "is_virtual_invoice": false,
            "created_on": 1452571237,
            "modified_on": 1623871060,
            "company": 61,
            "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
            "credit_note_expiry_days": null,
            "start_date": null
          },
          "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
          "affiliate_bag_details": {
            "affiliate_bag_id": "19207348",
            "affiliate_order_id": "FY62F14B8501F18E8FD3",
            "affiliate_meta": {
              "fynd": {
                "fulfilment_identifier": "pulse"
              },
              "channel_shipment_id": null,
              "channel_order_id": null,
              "due_date": null,
              "is_priority": false,
              "box_type": null,
              "coupon_code": null,
              "size_level_total_qty": 924,
              "loyalty_discount": 0,
              "employee_discount": 0
            },
            "loyalty_discount": 0,
            "employee_discount": 0
          },
          "meta": {},
          "applied_promos": []
        }
      ],
      "brand": {
        "credit_note_allowed": false,
        "id": 85,
        "script_last_ran": null,
        "pickup_location": null,
        "invoice_prefix": "pc",
        "brand_name": "play clan",
        "is_virtual_invoice": false,
        "created_on": 1452571237,
        "modified_on": 1623871060,
        "company": 61,
        "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
        "credit_note_expiry_days": null,
        "start_date": null
      },
      "cart_id": 41262745,
      "comment": "",
      "company": {
        "modified_on": 1656409302,
        "company_type": "distributor",
        "id": 61,
        "commission": 0,
        "meta": {
          "stage": "verified",
          "address": [
            {
              "city": "GHORMACH",
              "state": "BADGHIS",
              "country": "AFGHANISTAN",
              "pincode": 401209,
              "address1": "A/204, SAI VANDAN",
              "address2": "TULINJ ROAD, NALLASOPARA EAST",
              "landmark": "Near Utsav Hotel",
              "latitude": 35.6495457,
              "longitude": 63.9113296,
              "address_type": "office",
              "country_code": "IN"
            },
            {
              "city": "GHORMACH",
              "state": "BADGHIS",
              "country": "AFGHANISTAN",
              "pincode": 401209,
              "address1": "A/204, SAI VANDAN",
              "address2": "TULINJ ROAD, NALLASOPARA EAST",
              "landmark": "Near Utsav Hotel",
              "latitude": 35.6495457,
              "longitude": 63.9113296,
              "address_type": "registered",
              "country_code": "IN"
            }
          ],
          "documents": {
            "cin": {
              "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/ZjGFzuE8_-20_Python_Libraries.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=IC%2FgIDdSymHbSKJGT12Zq9zOe4M%3D",
              "type": "cin",
              "value": "L21700MH1907PLC000260",
              "verified": true,
              "legal_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED"
            },
            "gst": {
              "type": "gst",
              "value": "27AALCA0442L1ZM",
              "verified": true,
              "legal_name": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED"
            },
            "pan": {
              "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/oURvMfX1p-2de4a88b_ticket.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=lG1wi0G6cqtav0i9cOf3dFNBuNY%3D",
              "type": "pan",
              "value": "AALCA0442L",
              "verified": true,
              "legal_name": ""
            },
            "digital_signature": {
              "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/iigdJTk27-3.png?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=Nc38H2KxR1ymSZz8jVRQyUCXobs%3D",
              "type": "digital_signature",
              "value": "Aayush Jain",
              "verified": true,
              "legal_name": "Aayush Jain"
            }
          },
          "business_info": "This is a description area to write about the company.",
          "contact_details": {
            "phone": [
              {
                "number": "7009853732",
                "country_code": 91
              },
              {
                "number": "9821012533",
                "country_code": 91
              }
            ],
            "emails": [
              "aayushvjain@gofynd.com",
              "abc@gmail.com",
              "asmaidris1994@gmail.com"
            ]
          },
          "business_details": {
            "website": {
              "url": "https://www.playclan.com"
            }
          },
          "notification_emails": [
            "pranavverma@gofynd.com",
            "vermapranav28@gmail.com",
            "vaishakhshetty@gofynd.com"
          ]
        },
        "exchange_allowed": false,
        "payment_procesing_charge": 0,
        "tan_no": "11",
        "vat_no": null,
        "exchange_within_days": null,
        "gst_number": "27AALCA0442L1ZM",
        "created_on": 1452571141,
        "company_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED",
        "fynd_a_fit_available": false,
        "return_allowed": true,
        "return_within_days": 30,
        "payment_type": "Happay",
        "business_type": "ltd/pvt ltd",
        "agreement_start_date": 1503532800,
        "cst": null,
        "pan_no": "AALCA0442L"
      },
      "coupon": {},
      "delivery_address": {
        "area": "Bhagyoday Society",
        "city": "Palanpur",
        "email": "",
        "phone": "7621937989",
        "state": "Gujarat",
        "country": "India",
        "pincode": "385001",
        "version": "1.0",
        "address1": "11",
        "address2": "",
        "landmark": "mansarovar road",
        "latitude": 24.1724338,
        "longitude": 72.434581,
        "created_at": "2022-08-08T23:14:45+00:00",
        "updated_at": "2022-08-08T23:14:45+00:00",
        "address_type": "home",
        "contact_person": "Rahul",
        "address_category": "delivery",
        "name": "Rahul",
        "address": "11"
      },
      "delivery_slot": {
        "slot": "By 17:00 PM",
        "upper_bound": "2022-08-15T17:44:34+00:00",
        "lower_bound": "2022-08-13T17:44:34+00:00",
        "date": "2022-08-15T17:44:34+00:00",
        "type": "order_window"
      },
      "dp_details": {
        "id": 22,
        "name": "fyndr",
        "awb_no": "4982512202351",
        "eway_bill_id": null,
        "track_url": null,
        "dp_charges": 110,
        "dp_return_charges": 70,
        "amount_handling_charges": 15,
        "gst_tag": "sgst"
      },
      "einvoice_info": null,
      "fallback_user": {
        "email": "",
        "mobile": "7621937989"
      },
      "fulfilling_store": {
        "login_username": "TEST_FFSPS_61",
        "mall_area": null,
        "updated_at": "2022-05-19T15:46:52+00:00",
        "packaging_material_count": 0,
        "id": 10182,
        "store_address_json": {
          "area": "",
          "city": "MUMBAI SUBURBAN",
          "email": "javedkazi@gofynd.com",
          "phone": "918286865180",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "pincode": "400093",
          "version": "1.0",
          "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
          "address2": "",
          "landmark": "Opposite MIDC police station",
          "latitude": 19.1174798,
          "longitude": 72.8691603,
          "created_at": "2022-05-24 18:35:09",
          "updated_at": "2022-05-24 18:35:09",
          "address_type": "store",
          "contact_person": "Javed",
          "address_category": "store"
        },
        "is_archived": false,
        "meta": {
          "stage": "verified",
          "timing": [
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "monday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "tuesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "wednesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 14,
                "minute": 12
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "thursday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "friday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "saturday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "sunday"
            }
          ],
          "documents": {},
          "gst_number": null,
          "display_name": "Fuschia",
          "gst_credentials": {
            "e_invoice": {
              "enabled": false
            },
            "e_waybill": {
              "enabled": false
            }
          },
          "notification_emails": [
            "vaishakhshetty@gofynd.com"
          ],
          "product_return_config": {
            "on_same_store": true
          },
          "additional_contact_details": {
            "number": [
              "91 - 8286865180"
            ]
          },
          "ewaybill_portal_details": null
        },
        "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
        "parent_store_id": null,
        "alohomora_user_id": 11070,
        "store_active_from": null,
        "vat_no": null,
        "longitude": 72.8292187,
        "location_type": "mall",
        "latitude": 19.0551125,
        "created_at": "2020-01-15T05:30:41+00:00",
        "fulfillment_channel": "pulse",
        "brand_id": null,
        "is_active": false,
        "name": "Fuschia",
        "mall_name": null,
        "company_id": 61,
        "is_enabled_for_recon": false,
        "code": "FFSPS",
        "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
        "address2": "",
        "city": "MUMBAI SUBURBAN",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": "400093",
        "store_email": "javedkazi@gofynd.com",
        "contact_person": "Javed",
        "phone": "918286865180",
        "brand_store_tags": [
          "pulse"
        ]
      },
      "fyndstore_emp": {},
      "invoice": {
        "updated_date": 1660000520,
        "store_invoice_id": "1659980720191361",
        "invoice_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_a4.pdf",
        "label_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_pos.pdf"
      },
      "is_processing": false,
      "journey_type": "forward",
      "lock_status": false,
      "no_of_bags_order": 1,
      "operational_status": "delivery_done",
      "order": {
        "raw_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
        "affiliate_order_date": "2022-08-08T23:14:45+00:00",
        "total_order_value": 10000,
        "transaction_id": "FY62F14B8501F18E8FD3",
        "refund_by": "fynd",
        "headers": {
          "host": "fplt-gringotts-main-svc.default.svc.cluster.local",
          "user-agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
          "cookie": "G_ENABLED_IDPS=google; f.session=s%3AHQX0JDLgWOHd8z7NOu-E9mT9yBDaqfPR.6T82v4OlerGY6lfKfATfojYQzDCtSRhEJkIA%2FyH%2Fz%2BM; ordering_store=s%3A15114.6VinzJtp1QRjsKZ52NWvXXPoTuLc38KYLxiLJSMl6CE",
          "x-application-id": "5dd3ce1f1662684aa7019f1e",
          "x-application-token": "np0tHm04",
          "x-currency-code": "INR",
          "authorization": "04a544ac-7e85-437f-b6d6-0adb694c4045",
          "accept": "*/*",
          "accept-encoding": "gzip, deflate",
          "content-length": "17443",
          "content-type": "text/plain; charset=utf-8",
          "x-newrelic-id": "VQcHWVJVDhAHXFFVBAUEUVI=",
          "x-newrelic-transaction": "PxQPAlJaXgNRVQUDVAgOAlUFFB8EBw8RVU4aWlsMDVQDBAgFUAIKWwAHA0NKQQEDAlBWAQ4AFTs=",
          "request-source": "Fynd",
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
          "source": "uniket-desktop",
          "user_agent_version": null,
          "deprecated": false
        },
        "id": 13030531,
        "cod_charges": 0,
        "collect_by": "fynd",
        "tax_details": {
          "gstin": null
        },
        "promotion_effective_discount": 0,
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "meta": {
          "files": [],
          "staff": {},
          "comment": "",
          "extra_meta": {},
          "order_type": "HomeDelivery",
          "employee_id": null,
          "payment_type": "fynd",
          "mongo_cart_id": 41262745,
          "order_platform": "platform-site",
          "ordering_store": 15114,
          "order_child_entities": [
            "shipment",
            "bag"
          ]
        },
        "order_value": 10000,
        "fynd_credits": 0,
        "mode_of_payment": "FYND",
        "discount": 0,
        "payment_methods": {
          "COD": {
            "meta": {
              "logo_url": {
                "large": "https://hdn-1.fynd.com/payment/cod.png",
                "small": "https://hdn-1.fynd.com/payment/cod.png"
              },
              "payment_id": "FY62F14B8501F18E8FD3",
              "merchant_code": "",
              "payment_gateway": "Fynd",
              "payment_identifier": "11"
            },
            "mode": "COD",
            "name": "COD",
            "amount": 10000,
            "refund_by": "fynd",
            "collect_by": "fynd"
          }
        },
        "fynd_order_id": "FY62F14B8501F18E8FD3",
        "delivery_charges": 0,
        "mongo_cart_id": 41262745,
        "source": "uniket-desktop",
        "created_time": 1660000485,
        "payment_mode_id": 2,
        "currency": "INR",
        "coupon_value": 0,
        "cashback_value": 0,
        "cashback_applied": 0,
        "ordering_channel": "FYND_STORE",
        "user_id": 17952150,
        "affiliate_id": "5dd3ce1f1662684aa7019f1e",
        "ordering_channel_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/fynd_store_logo.png",
        "prices": {
          "amount_paid": 10000,
          "refund_amount": 10000,
          "price_marked": 10000,
          "cod_charges": 0,
          "discount": 0,
          "cashback_applied": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cashback": 0,
          "price_effective": 10000,
          "refund_credit": 0,
          "value_of_good": 8928.57,
          "coupon_value": 0,
          "tax_collected_at_source": 0,
          "promotion_effective_discount": 0,
          "amount_paid_roundoff": 10000
        }
      },
      "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
      "order_source": "uniket-desktop",
      "order_type": "forward",
      "order_value": 10000,
      "ordering_store": {
        "login_username": null,
        "mall_area": null,
        "updated_at": "2022-04-21T14:44:10+00:00",
        "packaging_material_count": 0,
        "id": 15114,
        "store_address_json": {
          "area": "",
          "city": "MUMBAI",
          "email": "talha1891@gmail.com",
          "phone": "918104556147",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "pincode": "421301",
          "version": "1.0",
          "address1": "KALYAN, MAHARASHTRA 421301",
          "address2": "",
          "landmark": "",
          "latitude": 73.1290596,
          "longitude": 19.2527132,
          "created_at": "2022-05-10 18:50:25",
          "updated_at": "2022-05-10 18:50:25",
          "address_type": "store",
          "contact_person": "talha",
          "address_category": "store"
        },
        "is_archived": false,
        "meta": {
          "stage": "verified",
          "timing": [
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "monday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "tuesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "wednesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "thursday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "friday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "saturday"
            },
            {
              "open": false,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "sunday"
            }
          ],
          "documents": {},
          "gst_number": null,
          "display_name": "0Test Loc",
          "gst_credentials": {
            "e_invoice": {
              "enabled": false
            },
            "e_waybill": {
              "enabled": false
            }
          },
          "notification_emails": [
            "talha1891@gmail.com"
          ],
          "product_return_config": {
            "on_same_store": true
          },
          "additional_contact_details": {
            "number": [
              "91 - 8104556147"
            ]
          },
          "ewaybill_portal_details": null
        },
        "order_integration_id": null,
        "parent_store_id": null,
        "alohomora_user_id": null,
        "store_active_from": null,
        "vat_no": null,
        "longitude": null,
        "location_type": "high_street",
        "latitude": null,
        "created_at": "2022-04-21T14:44:10+00:00",
        "fulfillment_channel": "pulse",
        "brand_id": null,
        "is_active": false,
        "name": "0Test Loc",
        "mall_name": null,
        "company_id": 61,
        "is_enabled_for_recon": false,
        "code": "0_loc_code",
        "address1": "KALYAN, MAHARASHTRA 421301",
        "address2": "",
        "city": "MUMBAI",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": "421301",
        "store_email": "talha1891@gmail.com",
        "contact_person": "talha",
        "phone": "918104556147"
      },
      "original_bag_list": [
        19207348
      ],
      "payment_methods": {
        "COD": {
          "amount": 10000,
          "mode": "COD",
          "name": "COD",
          "collect_by": "fynd",
          "refund_by": "fynd",
          "meta": {
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/cod.png",
              "small": "https://hdn-1.fynd.com/payment/cod.png"
            },
            "payment_id": "FY62F14B8501F18E8FD3",
            "merchant_code": "",
            "payment_gateway": "Fynd",
            "payment_identifier": "11"
          }
        }
      },
      "payment_type": "fynd",
      "payments": {
        "mode": "COD",
        "is_active": true,
        "display_priority": 1,
        "display_name": "Cash on Delivery",
        "id": 2,
        "logo": "https://hdn-1.fynd.com/payment/cod.png",
        "source": "Cash on Delivery",
        "payment_identifier": "11",
        "source_nickname": ""
      },
      "prices": {
        "amount_paid": 10000,
        "refund_amount": 10000,
        "price_marked": 10000,
        "cod_charges": 0,
        "discount": 0,
        "cashback_applied": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cashback": 0,
        "price_effective": 10000,
        "refund_credit": 0,
        "value_of_good": 8928.57,
        "coupon_value": 0,
        "tax_collected_at_source": 0,
        "promotion_effective_discount": 0,
        "amount_paid_roundoff": 10000
      },
      "products": [
        {
          "id": 19207348,
          "display_name": "Bag",
          "entity_type": "bag",
          "type": "single",
          "status": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": false,
            "is_customer_return_allowed": true,
            "is_active": false
          },
          "financial_breakup": [
            {
              "price_effective": 10000,
              "discount": 0,
              "amount_paid": 10000,
              "coupon_effective_discount": 0,
              "delivery_charge": 0,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 10000,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 12,
              "value_of_good": 8928.57,
              "price_marked": 10000,
              "transfer_price": 0,
              "brand_calculated_amount": 10000,
              "tax_collected_at_source": 0,
              "tcs_percentage": 0,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "amount_paid_roundoff": 10000,
              "size": "S",
              "total_units": 1,
              "hsn_code": "61091000",
              "identifiers": {
                "sku_code": "MT-100 WHITE_S"
              },
              "item_name": "White Printed T-Shirt",
              "gst_fee": 1071.43,
              "gst_tag": "IGST"
            }
          ],
          "bag_id": 19207348,
          "bag_update_time": 1659980745.2105737,
          "current_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": 1660000545,
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            }
          },
          "bag_status": [
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 89,
              "store_id": 10182,
              "state_type": "operational",
              "status": "pending",
              "shipment_id": "16599806855311914452",
              "id": 120514809,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 89,
                "display_name": "Pending",
                "notify_customer": true,
                "app_display_name": "Pending",
                "state_type": "operational",
                "app_state_name": "pending",
                "name": "pending",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 1,
              "store_id": 10182,
              "state_type": "operational",
              "status": "placed",
              "shipment_id": "16599806855311914452",
              "id": 120514810,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 1,
                "display_name": "Placed",
                "notify_customer": true,
                "app_display_name": "Processing",
                "state_type": "operational",
                "app_state_name": "processing",
                "name": "placed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:14+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000514,
              "state_id": 2,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_confirmed",
              "shipment_id": "16599806855311914452",
              "id": 120514842,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 2,
                "display_name": "Confirmed",
                "notify_customer": false,
                "app_display_name": "Confirmed",
                "state_type": "operational",
                "app_state_name": "confirmed",
                "name": "bag_confirmed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3n"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 91,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_invoiced",
              "shipment_id": "16599806855311914452",
              "id": 120514845,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 91,
                "display_name": "Bag Invoiced",
                "notify_customer": false,
                "app_display_name": "Bag Invoiced",
                "state_type": "operational",
                "app_state_name": "bag_invoiced",
                "name": "bag_invoiced",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 113,
              "store_id": 10182,
              "state_type": "operational",
              "status": "ready_for_dp_assignment",
              "shipment_id": "16599806855311914452",
              "id": 120514846,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 113,
                "display_name": "Ready For Dp Assignment",
                "notify_customer": false,
                "app_display_name": "Ready For Dp Assignment",
                "state_type": "operational",
                "app_state_name": "ready_for_dp_assignment",
                "name": "ready_for_dp_assignment",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:23+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000523,
              "state_id": 7,
              "store_id": 10182,
              "state_type": "operational",
              "status": "dp_assigned",
              "shipment_id": "16599806855311914452",
              "id": 120514848,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 7,
                "display_name": "DP Assigned",
                "notify_customer": false,
                "app_display_name": "DP Assigned",
                "state_type": "operational",
                "app_state_name": "dp_assigned",
                "name": "dp_assigned",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 8,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_packed",
              "shipment_id": "16599806855311914452",
              "id": 120514898,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 8,
                "display_name": "Bag Packed",
                "notify_customer": true,
                "app_display_name": "Bag Packed",
                "state_type": "operational",
                "app_state_name": "bag_packed",
                "name": "bag_packed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "missed_state_ingestion",
                  "display_name": "Missed state is ingested",
                  "id": 162,
                  "state": "missed_state",
                  "text": "Missed state is ingested"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 12,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_picked",
              "shipment_id": "16599806855311914452",
              "id": 120514899,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 12,
                "display_name": "In Transit",
                "notify_customer": false,
                "app_display_name": "In Transit",
                "state_type": "operational",
                "app_state_name": "in_transit",
                "name": "bag_picked",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:45+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000545,
              "state_id": 14,
              "store_id": 10182,
              "state_type": "operational",
              "status": "delivery_done",
              "shipment_id": "16599806855311914452",
              "id": 120514917,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 14,
                "display_name": "Delivery Done",
                "notify_customer": true,
                "app_display_name": "Delivered",
                "state_type": "operational",
                "app_state_name": "delivered",
                "name": "delivery_done",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            }
          ],
          "item": {
            "brand": "play clan",
            "can_return": true,
            "id": 95944,
            "webstore_product_url": null,
            "last_updated_at": 1660000486,
            "slug_key": "play-clan-white-printed-t-shirt-387",
            "attributes": {
              "color": "White",
              "gender": [
                "Men"
              ],
              "season": "SS16",
              "pattern": "Printed",
              "essential": "Yes",
              "brand_name": "play clan",
              "net-quantity": "1 U",
              "marketer-name": "Fynd",
              "primary_color": "White",
              "sleeve_length": "Short",
              "marketer-address": "Fynd",
              "primary_material": "Others",
              "primary_color_hex": "FFFFFF"
            },
            "meta": {
              "departments": [
                21
              ]
            },
            "gender": null,
            "l3_category": 192,
            "color": null,
            "can_cancel": true,
            "l3_category_name": "T-Shirts",
            "l1_category": [
              "Clothing"
            ],
            "brand_id": 85,
            "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
            "l2_category": [
              "Polos & T-Shirts"
            ],
            "name": "White Printed T-Shirt",
            "code": "MT-100 WHITE",
            "department_id": 21,
            "size": "S",
            "image": [
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
            ]
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3",
              "bag_id": 19207348
            }
          ],
          "article": {
            "identifiers": {
              "sku_code": "MT-100 WHITE_S"
            },
            "esp_modified": false,
            "size": "S",
            "code": "",
            "raw_meta": null,
            "set": {},
            "is_set": false,
            "seller_identifier": "MT-100 WHITE_S",
            "return_config": {
              "time": 30,
              "unit": "days",
              "returnable": true
            },
            "_id": "5f8a4751d2f36f00014ff8ed",
            "uid": "5f8a4751d2f36f00014ff8ed",
            "child_details": {}
          },
          "journey_type": "forward",
          "current_operational_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": "2022-08-08T23:15:45+00:00",
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            },
            "reasons": [
              {
                "slug": "others",
                "display_name": "Others",
                "id": 90,
                "state": "bag_confirmed",
                "text": "FY62F14B8501F18E8FD3"
              }
            ]
          },
          "dates": {
            "order_created": "2022-08-08T23:14:45+00:00",
            "delivery_date": "2022-08-08T23:15:45+00:00"
          },
          "prices": {
            "price_effective": 10000,
            "discount": 0,
            "amount_paid": 10000,
            "coupon_effective_discount": 0,
            "delivery_charge": 0,
            "fynd_credits": 0,
            "cod_charges": 0,
            "refund_credit": 0,
            "cashback": 0,
            "refund_amount": 10000,
            "added_to_fynd_cash": false,
            "cashback_applied": 0,
            "gst_tax_percentage": 12,
            "value_of_good": 8928.57,
            "price_marked": 10000,
            "transfer_price": 0,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "tcs_percentage": 0,
            "promotion_effective_discount": 0,
            "coupon_value": 0,
            "amount_paid_roundoff": 10000
          },
          "payment_methods": {
            "COD": {
              "amount": 10000
            }
          },
          "gst_details": {
            "gstin_code": "null",
            "gst_tag": "IGST",
            "hsn_code": "61091000",
            "value_of_good": 8928.57,
            "gst_tax_percentage": 12,
            "is_default_hsn_code": false,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
            "gst_fee": 1071.43,
            "igst_tax_percentage": 12,
            "sgst_tax_percentage": 0,
            "cgst_tax_percentage": 0,
            "igst_gst_fee": 1071.43,
            "cgst_gst_fee": "0",
            "sgst_gst_fee": "0"
          },
          "brand": {
            "credit_note_allowed": false,
            "id": 85,
            "script_last_ran": null,
            "pickup_location": null,
            "invoice_prefix": "pc",
            "brand_name": "play clan",
            "is_virtual_invoice": false,
            "created_on": 1452571237,
            "modified_on": 1623871060,
            "company": 61,
            "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
            "credit_note_expiry_days": null,
            "start_date": null
          },
          "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
          "affiliate_bag_details": {
            "affiliate_bag_id": "19207348",
            "affiliate_order_id": "FY62F14B8501F18E8FD3",
            "affiliate_meta": {
              "fynd": {
                "fulfilment_identifier": "pulse"
              },
              "channel_shipment_id": null,
              "channel_order_id": null,
              "due_date": null,
              "is_priority": false,
              "box_type": null,
              "coupon_code": null,
              "size_level_total_qty": 924,
              "loyalty_discount": 0,
              "employee_discount": 0
            },
            "loyalty_discount": 0,
            "employee_discount": 0
          },
          "meta": {},
          "applied_promos": []
        }
      ],
      "qc_required": null,
      "requested_dp_conf": {
        "awb_type": "express",
        "exclude_dps": [
          27,
          29
        ],
        "ewbn": null,
        "id": 22,
        "is_dp_assigned_manually": true
      },
      "restore_coupon": false,
      "restore_promos": {},
      "rto_address": {
        "store_address_json": {
          "area": "",
          "city": "MUMBAI SUBURBAN",
          "email": "javedkazi@gofynd.com",
          "phone": "918286865180",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "pincode": "400093",
          "version": "1.0",
          "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
          "address2": "",
          "landmark": "Opposite MIDC police station",
          "latitude": 19.1174798,
          "longitude": 72.8691603,
          "created_at": "2022-05-24 18:35:09",
          "updated_at": "2022-05-24 18:35:09",
          "address_type": "store",
          "contact_person": "Javed",
          "address_category": "store"
        },
        "name": "Fuschia",
        "longitude": 72.8292187,
        "company_id": 61,
        "location_type": "mall",
        "latitude": 19.0551125,
        "id": 10182,
        "code": "FFSPS",
        "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
        "address2": "",
        "city": "MUMBAI SUBURBAN",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": "400093",
        "store_email": "javedkazi@gofynd.com",
        "contact_person": "Javed",
        "phone": "918286865180"
      },
      "search_key": {
        "shipment_id": "914452",
        "order_id": "8E8FD3"
      },
      "shipment": {
        "type": "shipment",
        "tags": [
          "bag"
        ],
        "billing_address_json": {
          "area": "Bhagyoday Society",
          "city": "Palanpur",
          "email": "",
          "phone": "7621937989",
          "state": "Gujarat",
          "country": "India",
          "pincode": "385001",
          "version": "1.0",
          "address1": "11",
          "address2": "",
          "landmark": "mansarovar road",
          "latitude": 24.1724338,
          "longitude": 72.434581,
          "created_at": "2022-08-08 23:14:45",
          "updated_at": "2022-08-08 23:14:45",
          "address_type": "home",
          "contact_person": "Rahul",
          "address_category": "billing"
        },
        "id": "16599806855311914452",
        "previous_shipment_id": null,
        "meta": {
          "dp_id": "7",
          "weight": 250,
          "external": {},
          "formatted": {
            "max": "Mon, 15 Aug",
            "min": "Sat, 13 Aug"
          },
          "timestamp": {
            "max": 1660585474,
            "min": 1660412674
          },
          "bag_weight": {
            "19207348": 250
          },
          "debug_info": {
            "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
          },
          "dp_options": {
            "7": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 2,
              "operations": [
                "inter_city"
              ],
              "r_priority": 1,
              "fm_priority": 2,
              "lm_priority": 2,
              "payment_mode": "all",
              "rvp_priority": 1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "7"
            },
            "29": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 4,
              "operations": [
                "inter_city"
              ],
              "r_priority": 3,
              "fm_priority": 4,
              "lm_priority": 4,
              "payment_mode": "all",
              "rvp_priority": 3,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "29"
            },
            "36": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 6,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 6,
              "lm_priority": 6,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "36"
            },
            "37": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 7,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 7,
              "lm_priority": 7,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "37"
            }
          },
          "order_type": null,
          "dp_sort_key": "fm_priority",
          "ewaybill_info": {},
          "packaging_name": "POLYB_M_1411P5",
          "assign_dp_from_sb": true,
          "same_store_available": false,
          "fulfilment_priority_text": null,
          "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
          "auto_trigger_dp_assignment_ACF": true
        },
        "fynd_order_id": "FY62F14B8501F18E8FD3",
        "delivery_awb_number": "4982512202351",
        "lock_status": "",
        "pdf_links": {
          "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
          "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
          "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
          "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
          "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
          "label_type": "fynd",
          "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
          "invoice_type": "fynd"
        },
        "parent_type": null,
        "store_invoice_id": "1659980720191361",
        "delivery_address_json": {
          "area": "Bhagyoday Society",
          "city": "Palanpur",
          "email": "",
          "phone": "7621937989",
          "state": "Gujarat",
          "country": "India",
          "pincode": "385001",
          "version": "1.0",
          "address1": "11",
          "address2": "",
          "landmark": "mansarovar road",
          "latitude": 24.1724338,
          "longitude": 72.434581,
          "created_at": "2022-08-08T23:14:45+00:00",
          "updated_at": "2022-08-08T23:14:45+00:00",
          "address_type": "home",
          "contact_person": "Rahul",
          "address_category": "delivery",
          "name": "Rahul",
          "address": "11"
        },
        "created_at": 1660000486,
        "hand_over_contact_json": {
          "email": "",
          "phone": "7621937989",
          "version": "1.0",
          "created_at": "2022-08-08 23:14:45",
          "updated_at": "2022-08-08 23:14:45",
          "contact_person": "Rahul"
        },
        "parent_id": "",
        "is_active": true,
        "affiliate_id": "5dd3ce1f1662684aa7019f1e",
        "affiliate_shipment_id": "16599806855311914452",
        "fulfilment_priority": 10,
        "credit_note_id": null,
        "eway_bill_id": null,
        "packaging_type": "POLYB_M_1411P5"
      },
      "shipment_details": {
        "dp_id": "7",
        "dp_options": {
          "7": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 2,
            "operations": [
              "inter_city"
            ],
            "r_priority": 1,
            "fm_priority": 2,
            "lm_priority": 2,
            "payment_mode": "all",
            "rvp_priority": 1,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "7"
          },
          "29": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 4,
            "operations": [
              "inter_city"
            ],
            "r_priority": 3,
            "fm_priority": 4,
            "lm_priority": 4,
            "payment_mode": "all",
            "rvp_priority": 3,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "29"
          },
          "36": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 6,
            "operations": [
              "inter_city"
            ],
            "r_priority": -1,
            "fm_priority": 6,
            "lm_priority": 6,
            "payment_mode": "all",
            "rvp_priority": -1,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "36"
          },
          "37": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 7,
            "operations": [
              "inter_city"
            ],
            "r_priority": -1,
            "fm_priority": 7,
            "lm_priority": 7,
            "payment_mode": "all",
            "rvp_priority": -1,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "37"
          }
        }
      },
      "shipment_gst": {
        "value_of_good": 8928.57,
        "gst_fee": 1071.43,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "gstin_code": "null"
      },
      "shipment_quantity": 1,
      "shipment_status": {
        "created_at": 1660000545,
        "shipment_id": "16599806855311914452",
        "status": "delivery_done",
        "bag_list": [
          "19207348"
        ],
        "id": 78707677,
        "current_shipment_status": "delivery_done",
        "status_created_at": 1660000545
      },
      "shipment_status_history": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "shipment_id": "16599806855311914452",
          "status": "pending",
          "bag_list": [
            "19207348"
          ],
          "id": 78707571
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "shipment_id": "16599806855311914452",
          "status": "placed",
          "bag_list": [
            "19207348"
          ],
          "id": 78707572
        },
        {
          "created_at": "2022-08-08T23:15:12+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_confirmed",
          "bag_list": [
            "19207348"
          ],
          "id": 78707602
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_invoiced",
          "bag_list": [
            "19207348"
          ],
          "id": 78707605
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "shipment_id": "16599806855311914452",
          "status": "ready_for_dp_assignment",
          "bag_list": [
            "19207348"
          ],
          "id": 78707606
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "shipment_id": "16599806855311914452",
          "status": "dp_assigned",
          "bag_list": [
            "19207348"
          ],
          "id": 78707608
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_packed",
          "bag_list": [
            "19207348"
          ],
          "id": 78707658
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_picked",
          "bag_list": [
            "19207348"
          ],
          "id": 78707659
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "shipment_id": "16599806855311914452",
          "status": "delivery_done",
          "bag_list": [
            "19207348"
          ],
          "id": 78707677,
          "current_shipment_status": "delivery_done",
          "status_created_at": "2022-08-08T23:15:45+00:00"
        }
      ],
      "shipment_update_time": 1659980745.2105737,
      "shipment_value": 10000,
      "tags": [
        "bag"
      ],
      "total_shipment_bags": 1,
      "total_shipments_in_order": 1,
      "transaction_type": "shipment",
      "user": {
        "email": "rahulrathod@gofynd.com",
        "user_oid": "000000000000000014402534",
        "last_name": "Rathod",
        "gender": "male",
        "mongo_user_id": "14402534",
        "mobile": "7621937989",
        "first_name": "Rahul",
        "id": 17952150,
        "is_anonymous_user": false
      },
      "weight": {
        "value": 250,
        "unit": "gram"
      },
      "id": "62f14b93af6c692530bb0df6"
    }
  ],
  "page": {
    "type": "number",
    "size": 1,
    "current": 1,
    "has_next": false,
    "item_total": 1
  }
}
```
</details>









---


#### getBags





```swift
client.order.getBags(bagIds: bagIds, shipmentIds: shipmentIds, orderIds: orderIds, channelBagIds: channelBagIds, channelShipmentIds: channelShipmentIds, channelOrderIds: channelOrderIds, channelId: channelId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagIds | String? | no |  |   
| shipmentIds | String? | no |  |   
| orderIds | String? | no |  |   
| channelBagIds | String? | no |  |   
| channelShipmentIds | String? | no |  |   
| channelOrderIds | String? | no |  |   
| channelId | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |  





*Returned Response:*




[GetBagsPlatformResponse](#GetBagsPlatformResponse)

Successfully retrived all the given shipments details!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "shipment_id": "16599806855311914452",
      "affiliate_details": {
        "id": "5dd3ce1f1662684aa7019f1e",
        "affiliate_bag_id": "19207348",
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "company_affiliate_tag": "OpexTesting",
        "affiliate_id": "5dd3ce1f1662684aa7019f1e",
        "affiliate_shipment_id": "16599806855311914452",
        "shipment_meta": {
          "dp_id": "7",
          "weight": 250,
          "external": {},
          "formatted": {
            "max": "Mon, 15 Aug",
            "min": "Sat, 13 Aug"
          },
          "timestamp": {
            "max": 1660585474,
            "min": 1660412674
          },
          "bag_weight": {
            "19207348": 250
          },
          "debug_info": {
            "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
          },
          "dp_options": {
            "7": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 2,
              "operations": [
                "inter_city"
              ],
              "r_priority": 1,
              "fm_priority": 2,
              "lm_priority": 2,
              "payment_mode": "all",
              "rvp_priority": 1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "7"
            },
            "29": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 4,
              "operations": [
                "inter_city"
              ],
              "r_priority": 3,
              "fm_priority": 4,
              "lm_priority": 4,
              "payment_mode": "all",
              "rvp_priority": 3,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "29"
            },
            "36": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 6,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 6,
              "lm_priority": 6,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "36"
            },
            "37": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 7,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 7,
              "lm_priority": 7,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "37"
            }
          },
          "order_type": null,
          "dp_sort_key": "fm_priority",
          "ewaybill_info": {},
          "packaging_name": "POLYB_M_1411P5",
          "assign_dp_from_sb": true,
          "same_store_available": false,
          "fulfilment_priority_text": null,
          "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
          "auto_trigger_dp_assignment_ACF": true
        },
        "affiliate_meta": {
          "fynd": {
            "fulfilment_identifier": "pulse"
          },
          "channel_shipment_id": null,
          "channel_order_id": null,
          "due_date": null,
          "is_priority": false,
          "box_type": null,
          "coupon_code": null,
          "size_level_total_qty": 924,
          "loyalty_discount": 0,
          "employee_discount": 0
        },
        "affiliate_store_id": "10182",
        "pdf_links": {
          "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
          "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
          "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
          "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
          "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
          "label_type": "fynd",
          "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
          "invoice_type": "fynd"
        },
        "config": {
          "id": "5dd3ce1f1662684aa7019f1e",
          "meta": [],
          "name": "OpexTesting",
          "owner": "000000000000000000000020",
          "token": "np0tHm04",
          "secret": "dTSEQkEE7",
          "createdAt": null,
          "updatedAt": null,
          "description": "Opex testing app",
          "dp_assignment": true,
          "app_company_id": 61,
          "article_assignment": {
            "level": "multi-companies",
            "strategy": "optimal"
          },
          "force_reassignment": false,
          "post_order_reassignment": true
        }
      },
      "app_id": "5dd3ce1f1662684aa7019f1e",
      "article_details": {
        "status": {
          "delivery_done": {
            "5f8a4751d2f36f00014ff8ed": {
              "uid": "5f8a4751d2f36f00014ff8ed",
              "_id": "5f8a4751d2f36f00014ff8ed",
              "is_set": false,
              "bag_ids": [
                19207348
              ],
              "quantity": 1,
              "reasons": {
                "90": [
                  {
                    "slug": "others",
                    "display_name": "Others",
                    "id": 90,
                    "state": "bag_confirmed",
                    "text": "FY62F14B8501F18E8FD3",
                    "bag_id": 19207348
                  }
                ]
              }
            }
          }
        }
      },
      "bag_status_history": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:14:46+00:00",
          "state_id": 89,
          "store_id": 10182,
          "state_type": "operational",
          "status": "pending",
          "shipment_id": "16599806855311914452",
          "id": 120514809,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 89,
            "display_name": "Pending",
            "notify_customer": true,
            "app_display_name": "Pending",
            "state_type": "operational",
            "app_state_name": "pending",
            "name": "pending",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:14:46+00:00",
          "state_id": 1,
          "store_id": 10182,
          "state_type": "operational",
          "status": "placed",
          "shipment_id": "16599806855311914452",
          "id": 120514810,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 1,
            "display_name": "Placed",
            "notify_customer": true,
            "app_display_name": "Processing",
            "state_type": "operational",
            "app_state_name": "processing",
            "name": "placed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:14+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:15:14+00:00",
          "state_id": 2,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_confirmed",
          "shipment_id": "16599806855311914452",
          "id": 120514842,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 2,
            "display_name": "Confirmed",
            "notify_customer": false,
            "app_display_name": "Confirmed",
            "state_type": "operational",
            "app_state_name": "confirmed",
            "name": "bag_confirmed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3n"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:15:20+00:00",
          "state_id": 91,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_invoiced",
          "shipment_id": "16599806855311914452",
          "id": 120514845,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 91,
            "display_name": "Bag Invoiced",
            "notify_customer": false,
            "app_display_name": "Bag Invoiced",
            "state_type": "operational",
            "app_state_name": "bag_invoiced",
            "name": "bag_invoiced",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": "2022-08-08T23:15:20+00:00",
          "state_id": 113,
          "store_id": 10182,
          "state_type": "operational",
          "status": "ready_for_dp_assignment",
          "shipment_id": "16599806855311914452",
          "id": 120514846,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 113,
            "display_name": "Ready For Dp Assignment",
            "notify_customer": false,
            "app_display_name": "Ready For Dp Assignment",
            "state_type": "operational",
            "app_state_name": "ready_for_dp_assignment",
            "name": "ready_for_dp_assignment",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:23+00:00",
          "state_id": 7,
          "store_id": 10182,
          "state_type": "operational",
          "status": "dp_assigned",
          "shipment_id": "16599806855311914452",
          "id": 120514848,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 7,
            "display_name": "DP Assigned",
            "notify_customer": false,
            "app_display_name": "DP Assigned",
            "state_type": "operational",
            "app_state_name": "dp_assigned",
            "name": "dp_assigned",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:33+00:00",
          "state_id": 8,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_packed",
          "shipment_id": "16599806855311914452",
          "id": 120514898,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 8,
            "display_name": "Bag Packed",
            "notify_customer": true,
            "app_display_name": "Bag Packed",
            "state_type": "operational",
            "app_state_name": "bag_packed",
            "name": "bag_packed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "missed_state_ingestion",
              "display_name": "Missed state is ingested",
              "id": 162,
              "state": "missed_state",
              "text": "Missed state is ingested"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:33+00:00",
          "state_id": 12,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_picked",
          "shipment_id": "16599806855311914452",
          "id": 120514899,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 12,
            "display_name": "In Transit",
            "notify_customer": false,
            "app_display_name": "In Transit",
            "state_type": "operational",
            "app_state_name": "in_transit",
            "name": "bag_picked",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": "2022-08-08T23:15:45+00:00",
          "state_id": 14,
          "store_id": 10182,
          "state_type": "operational",
          "status": "delivery_done",
          "shipment_id": "16599806855311914452",
          "id": 120514917,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 14,
            "display_name": "Delivery Done",
            "notify_customer": true,
            "app_display_name": "Delivered",
            "state_type": "operational",
            "app_state_name": "delivered",
            "name": "delivery_done",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        }
      ],
      "bags": [
        {
          "id": 19207348,
          "display_name": "Bag",
          "entity_type": "bag",
          "type": "single",
          "status": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": false,
            "is_customer_return_allowed": true,
            "is_active": false
          },
          "financial_breakup": [
            {
              "price_effective": 10000,
              "discount": 0,
              "amount_paid": 10000,
              "coupon_effective_discount": 0,
              "delivery_charge": 0,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 10000,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 12,
              "value_of_good": 8928.57,
              "price_marked": 10000,
              "transfer_price": 0,
              "brand_calculated_amount": 10000,
              "tax_collected_at_source": 0,
              "tcs_percentage": 0,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "amount_paid_roundoff": 10000,
              "size": "S",
              "total_units": 1,
              "hsn_code": "61091000",
              "identifiers": {
                "sku_code": "MT-100 WHITE_S"
              },
              "item_name": "White Printed T-Shirt",
              "gst_fee": 1071.43,
              "gst_tag": "IGST"
            }
          ],
          "bag_id": 19207348,
          "bag_update_time": 1659980745.2105737,
          "current_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": 1660000545,
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            }
          },
          "bag_status": [
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 89,
              "store_id": 10182,
              "state_type": "operational",
              "status": "pending",
              "shipment_id": "16599806855311914452",
              "id": 120514809,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 89,
                "display_name": "Pending",
                "notify_customer": true,
                "app_display_name": "Pending",
                "state_type": "operational",
                "app_state_name": "pending",
                "name": "pending",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 1,
              "store_id": 10182,
              "state_type": "operational",
              "status": "placed",
              "shipment_id": "16599806855311914452",
              "id": 120514810,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 1,
                "display_name": "Placed",
                "notify_customer": true,
                "app_display_name": "Processing",
                "state_type": "operational",
                "app_state_name": "processing",
                "name": "placed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:14+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000514,
              "state_id": 2,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_confirmed",
              "shipment_id": "16599806855311914452",
              "id": 120514842,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 2,
                "display_name": "Confirmed",
                "notify_customer": false,
                "app_display_name": "Confirmed",
                "state_type": "operational",
                "app_state_name": "confirmed",
                "name": "bag_confirmed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3n"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 91,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_invoiced",
              "shipment_id": "16599806855311914452",
              "id": 120514845,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 91,
                "display_name": "Bag Invoiced",
                "notify_customer": false,
                "app_display_name": "Bag Invoiced",
                "state_type": "operational",
                "app_state_name": "bag_invoiced",
                "name": "bag_invoiced",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 113,
              "store_id": 10182,
              "state_type": "operational",
              "status": "ready_for_dp_assignment",
              "shipment_id": "16599806855311914452",
              "id": 120514846,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 113,
                "display_name": "Ready For Dp Assignment",
                "notify_customer": false,
                "app_display_name": "Ready For Dp Assignment",
                "state_type": "operational",
                "app_state_name": "ready_for_dp_assignment",
                "name": "ready_for_dp_assignment",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:23+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000523,
              "state_id": 7,
              "store_id": 10182,
              "state_type": "operational",
              "status": "dp_assigned",
              "shipment_id": "16599806855311914452",
              "id": 120514848,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 7,
                "display_name": "DP Assigned",
                "notify_customer": false,
                "app_display_name": "DP Assigned",
                "state_type": "operational",
                "app_state_name": "dp_assigned",
                "name": "dp_assigned",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 8,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_packed",
              "shipment_id": "16599806855311914452",
              "id": 120514898,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 8,
                "display_name": "Bag Packed",
                "notify_customer": true,
                "app_display_name": "Bag Packed",
                "state_type": "operational",
                "app_state_name": "bag_packed",
                "name": "bag_packed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "missed_state_ingestion",
                  "display_name": "Missed state is ingested",
                  "id": 162,
                  "state": "missed_state",
                  "text": "Missed state is ingested"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 12,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_picked",
              "shipment_id": "16599806855311914452",
              "id": 120514899,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 12,
                "display_name": "In Transit",
                "notify_customer": false,
                "app_display_name": "In Transit",
                "state_type": "operational",
                "app_state_name": "in_transit",
                "name": "bag_picked",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:45+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000545,
              "state_id": 14,
              "store_id": 10182,
              "state_type": "operational",
              "status": "delivery_done",
              "shipment_id": "16599806855311914452",
              "id": 120514917,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 14,
                "display_name": "Delivery Done",
                "notify_customer": true,
                "app_display_name": "Delivered",
                "state_type": "operational",
                "app_state_name": "delivered",
                "name": "delivery_done",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            }
          ],
          "item": {
            "brand": "play clan",
            "can_return": true,
            "id": 95944,
            "webstore_product_url": null,
            "last_updated_at": 1660000486,
            "slug_key": "play-clan-white-printed-t-shirt-387",
            "attributes": {
              "color": "White",
              "gender": [
                "Men"
              ],
              "season": "SS16",
              "pattern": "Printed",
              "essential": "Yes",
              "brand_name": "play clan",
              "net-quantity": "1 U",
              "marketer-name": "Fynd",
              "primary_color": "White",
              "sleeve_length": "Short",
              "marketer-address": "Fynd",
              "primary_material": "Others",
              "primary_color_hex": "FFFFFF"
            },
            "meta": {
              "departments": [
                21
              ]
            },
            "gender": null,
            "l3_category": 192,
            "color": null,
            "can_cancel": true,
            "l3_category_name": "T-Shirts",
            "l1_category": [
              "Clothing"
            ],
            "brand_id": 85,
            "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
            "l2_category": [
              "Polos & T-Shirts"
            ],
            "name": "White Printed T-Shirt",
            "code": "MT-100 WHITE",
            "department_id": 21,
            "size": "S",
            "image": [
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
            ]
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3",
              "bag_id": 19207348
            }
          ],
          "article": {
            "identifiers": {
              "sku_code": "MT-100 WHITE_S"
            },
            "esp_modified": false,
            "size": "S",
            "code": "",
            "raw_meta": null,
            "set": {},
            "is_set": false,
            "seller_identifier": "MT-100 WHITE_S",
            "return_config": {
              "time": 30,
              "unit": "days",
              "returnable": true
            },
            "_id": "5f8a4751d2f36f00014ff8ed",
            "uid": "5f8a4751d2f36f00014ff8ed",
            "child_details": {}
          },
          "journey_type": "forward",
          "current_operational_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": "2022-08-08T23:15:45+00:00",
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            },
            "reasons": [
              {
                "slug": "others",
                "display_name": "Others",
                "id": 90,
                "state": "bag_confirmed",
                "text": "FY62F14B8501F18E8FD3"
              }
            ]
          },
          "dates": {
            "order_created": "2022-08-08T23:14:45+00:00",
            "delivery_date": "2022-08-08T23:15:45+00:00"
          },
          "prices": {
            "price_effective": 10000,
            "discount": 0,
            "amount_paid": 10000,
            "coupon_effective_discount": 0,
            "delivery_charge": 0,
            "fynd_credits": 0,
            "cod_charges": 0,
            "refund_credit": 0,
            "cashback": 0,
            "refund_amount": 10000,
            "added_to_fynd_cash": false,
            "cashback_applied": 0,
            "gst_tax_percentage": 12,
            "value_of_good": 8928.57,
            "price_marked": 10000,
            "transfer_price": 0,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "tcs_percentage": 0,
            "promotion_effective_discount": 0,
            "coupon_value": 0,
            "amount_paid_roundoff": 10000
          },
          "payment_methods": {
            "COD": {
              "amount": 10000
            }
          },
          "gst_details": {
            "gstin_code": "null",
            "gst_tag": "IGST",
            "hsn_code": "61091000",
            "value_of_good": 8928.57,
            "gst_tax_percentage": 12,
            "is_default_hsn_code": false,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
            "gst_fee": 1071.43,
            "igst_tax_percentage": 12,
            "sgst_tax_percentage": 0,
            "cgst_tax_percentage": 0,
            "igst_gst_fee": 1071.43,
            "cgst_gst_fee": "0",
            "sgst_gst_fee": "0"
          },
          "brand": {
            "credit_note_allowed": false,
            "id": 85,
            "script_last_ran": null,
            "pickup_location": null,
            "invoice_prefix": "pc",
            "brand_name": "play clan",
            "is_virtual_invoice": false,
            "created_on": 1452571237,
            "modified_on": 1623871060,
            "company": 61,
            "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
            "credit_note_expiry_days": null,
            "start_date": null
          },
          "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
          "affiliate_bag_details": {
            "affiliate_bag_id": "19207348",
            "affiliate_order_id": "FY62F14B8501F18E8FD3",
            "affiliate_meta": {
              "fynd": {
                "fulfilment_identifier": "pulse"
              },
              "channel_shipment_id": null,
              "channel_order_id": null,
              "due_date": null,
              "is_priority": false,
              "box_type": null,
              "coupon_code": null,
              "size_level_total_qty": 924,
              "loyalty_discount": 0,
              "employee_discount": 0
            },
            "loyalty_discount": 0,
            "employee_discount": 0
          },
          "meta": {},
          "applied_promos": []
        }
      ],
      "brand": {
        "credit_note_allowed": false,
        "id": 85,
        "script_last_ran": null,
        "pickup_location": null,
        "invoice_prefix": "pc",
        "brand_name": "play clan",
        "is_virtual_invoice": false,
        "created_on": 1452571237,
        "modified_on": 1623871060,
        "company": 61,
        "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
        "credit_note_expiry_days": null,
        "start_date": null
      },
      "cart_id": 41262745,
      "comment": "",
      "company": {
        "modified_on": 1656409302,
        "company_type": "distributor",
        "id": 61,
        "commission": 0,
        "meta": {
          "stage": "verified",
          "address": [
            {
              "city": "GHORMACH",
              "state": "BADGHIS",
              "country": "AFGHANISTAN",
              "pincode": 401209,
              "address1": "A/204, SAI VANDAN",
              "address2": "TULINJ ROAD, NALLASOPARA EAST",
              "landmark": "Near Utsav Hotel",
              "latitude": 35.6495457,
              "longitude": 63.9113296,
              "address_type": "office",
              "country_code": "IN"
            },
            {
              "city": "GHORMACH",
              "state": "BADGHIS",
              "country": "AFGHANISTAN",
              "pincode": 401209,
              "address1": "A/204, SAI VANDAN",
              "address2": "TULINJ ROAD, NALLASOPARA EAST",
              "landmark": "Near Utsav Hotel",
              "latitude": 35.6495457,
              "longitude": 63.9113296,
              "address_type": "registered",
              "country_code": "IN"
            }
          ],
          "documents": {
            "cin": {
              "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/ZjGFzuE8_-20_Python_Libraries.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=IC%2FgIDdSymHbSKJGT12Zq9zOe4M%3D",
              "type": "cin",
              "value": "L21700MH1907PLC000260",
              "verified": true,
              "legal_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED"
            },
            "gst": {
              "type": "gst",
              "value": "27AALCA0442L1ZM",
              "verified": true,
              "legal_name": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED"
            },
            "pan": {
              "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/oURvMfX1p-2de4a88b_ticket.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=lG1wi0G6cqtav0i9cOf3dFNBuNY%3D",
              "type": "pan",
              "value": "AALCA0442L",
              "verified": true,
              "legal_name": ""
            },
            "digital_signature": {
              "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/iigdJTk27-3.png?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=Nc38H2KxR1ymSZz8jVRQyUCXobs%3D",
              "type": "digital_signature",
              "value": "Aayush Jain",
              "verified": true,
              "legal_name": "Aayush Jain"
            }
          },
          "business_info": "This is a description area to write about the company.",
          "contact_details": {
            "phone": [
              {
                "number": "7009853732",
                "country_code": 91
              },
              {
                "number": "9821012533",
                "country_code": 91
              }
            ],
            "emails": [
              "aayushvjain@gofynd.com",
              "abc@gmail.com",
              "asmaidris1994@gmail.com"
            ]
          },
          "business_details": {
            "website": {
              "url": "https://www.playclan.com"
            }
          },
          "notification_emails": [
            "pranavverma@gofynd.com",
            "vermapranav28@gmail.com",
            "vaishakhshetty@gofynd.com"
          ]
        },
        "exchange_allowed": false,
        "payment_procesing_charge": 0,
        "tan_no": "11",
        "vat_no": null,
        "exchange_within_days": null,
        "gst_number": "27AALCA0442L1ZM",
        "created_on": 1452571141,
        "company_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED",
        "fynd_a_fit_available": false,
        "return_allowed": true,
        "return_within_days": 30,
        "payment_type": "Happay",
        "business_type": "ltd/pvt ltd",
        "agreement_start_date": 1503532800,
        "cst": null,
        "pan_no": "AALCA0442L"
      },
      "coupon": {},
      "delivery_address": {
        "area": "Bhagyoday Society",
        "city": "Palanpur",
        "email": "",
        "phone": "7621937989",
        "state": "Gujarat",
        "country": "India",
        "pincode": "385001",
        "version": "1.0",
        "address1": "11",
        "address2": "",
        "landmark": "mansarovar road",
        "latitude": 24.1724338,
        "longitude": 72.434581,
        "created_at": "2022-08-08T23:14:45+00:00",
        "updated_at": "2022-08-08T23:14:45+00:00",
        "address_type": "home",
        "contact_person": "Rahul",
        "address_category": "delivery",
        "name": "Rahul",
        "address": "11"
      },
      "delivery_slot": {
        "slot": "By 17:00 PM",
        "upper_bound": "2022-08-15T17:44:34+00:00",
        "lower_bound": "2022-08-13T17:44:34+00:00",
        "date": "2022-08-15T17:44:34+00:00",
        "type": "order_window"
      },
      "dp_details": {
        "id": 22,
        "name": "fyndr",
        "awb_no": "4982512202351",
        "eway_bill_id": null,
        "track_url": null,
        "dp_charges": 110,
        "dp_return_charges": 70,
        "amount_handling_charges": 15,
        "gst_tag": "sgst"
      },
      "einvoice_info": null,
      "fallback_user": {
        "email": "",
        "mobile": "7621937989"
      },
      "fulfilling_store": {
        "login_username": "TEST_FFSPS_61",
        "mall_area": null,
        "updated_at": "2022-05-19T15:46:52+00:00",
        "packaging_material_count": 0,
        "id": 10182,
        "store_address_json": {
          "area": "",
          "city": "MUMBAI SUBURBAN",
          "email": "javedkazi@gofynd.com",
          "phone": "918286865180",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "pincode": "400093",
          "version": "1.0",
          "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
          "address2": "",
          "landmark": "Opposite MIDC police station",
          "latitude": 19.1174798,
          "longitude": 72.8691603,
          "created_at": "2022-05-24 18:35:09",
          "updated_at": "2022-05-24 18:35:09",
          "address_type": "store",
          "contact_person": "Javed",
          "address_category": "store"
        },
        "is_archived": false,
        "meta": {
          "stage": "verified",
          "timing": [
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "monday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "tuesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "wednesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 14,
                "minute": 12
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "thursday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "friday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "saturday"
            },
            {
              "open": true,
              "closing": {
                "hour": 21,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "sunday"
            }
          ],
          "documents": {},
          "gst_number": null,
          "display_name": "Fuschia",
          "gst_credentials": {
            "e_invoice": {
              "enabled": false
            },
            "e_waybill": {
              "enabled": false
            }
          },
          "notification_emails": [
            "vaishakhshetty@gofynd.com"
          ],
          "product_return_config": {
            "on_same_store": true
          },
          "additional_contact_details": {
            "number": [
              "91 - 8286865180"
            ]
          },
          "ewaybill_portal_details": null
        },
        "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
        "parent_store_id": null,
        "alohomora_user_id": 11070,
        "store_active_from": null,
        "vat_no": null,
        "longitude": 72.8292187,
        "location_type": "mall",
        "latitude": 19.0551125,
        "created_at": "2020-01-15T05:30:41+00:00",
        "fulfillment_channel": "pulse",
        "brand_id": null,
        "is_active": false,
        "name": "Fuschia",
        "mall_name": null,
        "company_id": 61,
        "is_enabled_for_recon": false,
        "code": "FFSPS",
        "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
        "address2": "",
        "city": "MUMBAI SUBURBAN",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": "400093",
        "store_email": "javedkazi@gofynd.com",
        "contact_person": "Javed",
        "phone": "918286865180",
        "brand_store_tags": [
          "pulse"
        ]
      },
      "fyndstore_emp": {},
      "invoice": {
        "updated_date": 1660000520,
        "store_invoice_id": "1659980720191361",
        "invoice_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_a4.pdf",
        "label_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_pos.pdf"
      },
      "is_processing": false,
      "journey_type": "forward",
      "lock_status": false,
      "no_of_bags_order": 1,
      "operational_status": "delivery_done",
      "order": {
        "raw_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
        "affiliate_order_date": "2022-08-08T23:14:45+00:00",
        "total_order_value": 10000,
        "transaction_id": "FY62F14B8501F18E8FD3",
        "refund_by": "fynd",
        "headers": {
          "host": "fplt-gringotts-main-svc.default.svc.cluster.local",
          "user-agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
          "cookie": "G_ENABLED_IDPS=google; f.session=s%3AHQX0JDLgWOHd8z7NOu-E9mT9yBDaqfPR.6T82v4OlerGY6lfKfATfojYQzDCtSRhEJkIA%2FyH%2Fz%2BM; ordering_store=s%3A15114.6VinzJtp1QRjsKZ52NWvXXPoTuLc38KYLxiLJSMl6CE",
          "x-application-id": "5dd3ce1f1662684aa7019f1e",
          "x-application-token": "np0tHm04",
          "x-currency-code": "INR",
          "authorization": "04a544ac-7e85-437f-b6d6-0adb694c4045",
          "accept": "*/*",
          "accept-encoding": "gzip, deflate",
          "content-length": "17443",
          "content-type": "text/plain; charset=utf-8",
          "x-newrelic-id": "VQcHWVJVDhAHXFFVBAUEUVI=",
          "x-newrelic-transaction": "PxQPAlJaXgNRVQUDVAgOAlUFFB8EBw8RVU4aWlsMDVQDBAgFUAIKWwAHA0NKQQEDAlBWAQ4AFTs=",
          "request-source": "Fynd",
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
          "source": "uniket-desktop",
          "user_agent_version": null,
          "deprecated": false
        },
        "id": 13030531,
        "cod_charges": 0,
        "collect_by": "fynd",
        "tax_details": {
          "gstin": null
        },
        "promotion_effective_discount": 0,
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "meta": {
          "files": [],
          "staff": {},
          "comment": "",
          "extra_meta": {},
          "order_type": "HomeDelivery",
          "employee_id": null,
          "payment_type": "fynd",
          "mongo_cart_id": 41262745,
          "order_platform": "platform-site",
          "ordering_store": 15114,
          "order_child_entities": [
            "shipment",
            "bag"
          ]
        },
        "order_value": 10000,
        "fynd_credits": 0,
        "mode_of_payment": "FYND",
        "discount": 0,
        "payment_methods": {
          "COD": {
            "meta": {
              "logo_url": {
                "large": "https://hdn-1.fynd.com/payment/cod.png",
                "small": "https://hdn-1.fynd.com/payment/cod.png"
              },
              "payment_id": "FY62F14B8501F18E8FD3",
              "merchant_code": "",
              "payment_gateway": "Fynd",
              "payment_identifier": "11"
            },
            "mode": "COD",
            "name": "COD",
            "amount": 10000,
            "refund_by": "fynd",
            "collect_by": "fynd"
          }
        },
        "fynd_order_id": "FY62F14B8501F18E8FD3",
        "delivery_charges": 0,
        "mongo_cart_id": 41262745,
        "source": "uniket-desktop",
        "created_time": 1660000485,
        "payment_mode_id": 2,
        "currency": "INR",
        "coupon_value": 0,
        "cashback_value": 0,
        "cashback_applied": 0,
        "ordering_channel": "FYND_STORE",
        "user_id": 17952150,
        "affiliate_id": "5dd3ce1f1662684aa7019f1e",
        "ordering_channel_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/fynd_store_logo.png",
        "prices": {
          "amount_paid": 10000,
          "refund_amount": 10000,
          "price_marked": 10000,
          "cod_charges": 0,
          "discount": 0,
          "cashback_applied": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cashback": 0,
          "price_effective": 10000,
          "refund_credit": 0,
          "value_of_good": 8928.57,
          "coupon_value": 0,
          "tax_collected_at_source": 0,
          "promotion_effective_discount": 0,
          "amount_paid_roundoff": 10000
        }
      },
      "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
      "order_source": "uniket-desktop",
      "order_type": "forward",
      "order_value": 10000,
      "ordering_store": {
        "login_username": null,
        "mall_area": null,
        "updated_at": "2022-04-21T14:44:10+00:00",
        "packaging_material_count": 0,
        "id": 15114,
        "store_address_json": {
          "area": "",
          "city": "MUMBAI",
          "email": "talha1891@gmail.com",
          "phone": "918104556147",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "pincode": "421301",
          "version": "1.0",
          "address1": "KALYAN, MAHARASHTRA 421301",
          "address2": "",
          "landmark": "",
          "latitude": 73.1290596,
          "longitude": 19.2527132,
          "created_at": "2022-05-10 18:50:25",
          "updated_at": "2022-05-10 18:50:25",
          "address_type": "store",
          "contact_person": "talha",
          "address_category": "store"
        },
        "is_archived": false,
        "meta": {
          "stage": "verified",
          "timing": [
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "monday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "tuesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "wednesday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "thursday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "friday"
            },
            {
              "open": true,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "saturday"
            },
            {
              "open": false,
              "closing": {
                "hour": 22,
                "minute": 0
              },
              "opening": {
                "hour": 11,
                "minute": 0
              },
              "weekday": "sunday"
            }
          ],
          "documents": {},
          "gst_number": null,
          "display_name": "0Test Loc",
          "gst_credentials": {
            "e_invoice": {
              "enabled": false
            },
            "e_waybill": {
              "enabled": false
            }
          },
          "notification_emails": [
            "talha1891@gmail.com"
          ],
          "product_return_config": {
            "on_same_store": true
          },
          "additional_contact_details": {
            "number": [
              "91 - 8104556147"
            ]
          },
          "ewaybill_portal_details": null
        },
        "order_integration_id": null,
        "parent_store_id": null,
        "alohomora_user_id": null,
        "store_active_from": null,
        "vat_no": null,
        "longitude": null,
        "location_type": "high_street",
        "latitude": null,
        "created_at": "2022-04-21T14:44:10+00:00",
        "fulfillment_channel": "pulse",
        "brand_id": null,
        "is_active": false,
        "name": "0Test Loc",
        "mall_name": null,
        "company_id": 61,
        "is_enabled_for_recon": false,
        "code": "0_loc_code",
        "address1": "KALYAN, MAHARASHTRA 421301",
        "address2": "",
        "city": "MUMBAI",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": "421301",
        "store_email": "talha1891@gmail.com",
        "contact_person": "talha",
        "phone": "918104556147"
      },
      "original_bag_list": [
        19207348
      ],
      "payment_methods": {
        "COD": {
          "amount": 10000,
          "mode": "COD",
          "name": "COD",
          "collect_by": "fynd",
          "refund_by": "fynd",
          "meta": {
            "logo_url": {
              "large": "https://hdn-1.fynd.com/payment/cod.png",
              "small": "https://hdn-1.fynd.com/payment/cod.png"
            },
            "payment_id": "FY62F14B8501F18E8FD3",
            "merchant_code": "",
            "payment_gateway": "Fynd",
            "payment_identifier": "11"
          }
        }
      },
      "payment_type": "fynd",
      "payments": {
        "mode": "COD",
        "is_active": true,
        "display_priority": 1,
        "display_name": "Cash on Delivery",
        "id": 2,
        "logo": "https://hdn-1.fynd.com/payment/cod.png",
        "source": "Cash on Delivery",
        "payment_identifier": "11",
        "source_nickname": ""
      },
      "prices": {
        "amount_paid": 10000,
        "refund_amount": 10000,
        "price_marked": 10000,
        "cod_charges": 0,
        "discount": 0,
        "cashback_applied": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cashback": 0,
        "price_effective": 10000,
        "refund_credit": 0,
        "value_of_good": 8928.57,
        "coupon_value": 0,
        "tax_collected_at_source": 0,
        "promotion_effective_discount": 0,
        "amount_paid_roundoff": 10000
      },
      "products": [
        {
          "id": 19207348,
          "display_name": "Bag",
          "entity_type": "bag",
          "type": "single",
          "status": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": false,
            "is_customer_return_allowed": true,
            "is_active": false
          },
          "financial_breakup": [
            {
              "price_effective": 10000,
              "discount": 0,
              "amount_paid": 10000,
              "coupon_effective_discount": 0,
              "delivery_charge": 0,
              "fynd_credits": 0,
              "cod_charges": 0,
              "refund_credit": 0,
              "cashback": 0,
              "refund_amount": 10000,
              "added_to_fynd_cash": false,
              "cashback_applied": 0,
              "gst_tax_percentage": 12,
              "value_of_good": 8928.57,
              "price_marked": 10000,
              "transfer_price": 0,
              "brand_calculated_amount": 10000,
              "tax_collected_at_source": 0,
              "tcs_percentage": 0,
              "promotion_effective_discount": 0,
              "coupon_value": 0,
              "amount_paid_roundoff": 10000,
              "size": "S",
              "total_units": 1,
              "hsn_code": "61091000",
              "identifiers": {
                "sku_code": "MT-100 WHITE_S"
              },
              "item_name": "White Printed T-Shirt",
              "gst_fee": 1071.43,
              "gst_tag": "IGST"
            }
          ],
          "bag_id": 19207348,
          "bag_update_time": 1659980745.2105737,
          "current_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": 1660000545,
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            }
          },
          "bag_status": [
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 89,
              "store_id": 10182,
              "state_type": "operational",
              "status": "pending",
              "shipment_id": "16599806855311914452",
              "id": 120514809,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 89,
                "display_name": "Pending",
                "notify_customer": true,
                "app_display_name": "Pending",
                "state_type": "operational",
                "app_state_name": "pending",
                "name": "pending",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:14:46+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000486,
              "state_id": 1,
              "store_id": 10182,
              "state_type": "operational",
              "status": "placed",
              "shipment_id": "16599806855311914452",
              "id": 120514810,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 1,
                "display_name": "Placed",
                "notify_customer": true,
                "app_display_name": "Processing",
                "state_type": "operational",
                "app_state_name": "processing",
                "name": "placed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:14+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000514,
              "state_id": 2,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_confirmed",
              "shipment_id": "16599806855311914452",
              "id": 120514842,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 2,
                "display_name": "Confirmed",
                "notify_customer": false,
                "app_display_name": "Confirmed",
                "state_type": "operational",
                "app_state_name": "confirmed",
                "name": "bag_confirmed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3n"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 91,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_invoiced",
              "shipment_id": "16599806855311914452",
              "id": 120514845,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 91,
                "display_name": "Bag Invoiced",
                "notify_customer": false,
                "app_display_name": "Bag Invoiced",
                "state_type": "operational",
                "app_state_name": "bag_invoiced",
                "name": "bag_invoiced",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:20+00:00",
              "delivery_partner_id": null,
              "bag_id": 19207348,
              "delivery_awb_number": null,
              "updated_at": 1660000520,
              "state_id": 113,
              "store_id": 10182,
              "state_type": "operational",
              "status": "ready_for_dp_assignment",
              "shipment_id": "16599806855311914452",
              "id": 120514846,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 113,
                "display_name": "Ready For Dp Assignment",
                "notify_customer": false,
                "app_display_name": "Ready For Dp Assignment",
                "state_type": "operational",
                "app_state_name": "ready_for_dp_assignment",
                "name": "ready_for_dp_assignment",
                "is_active": true,
                "app_facing": false,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:23+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000523,
              "state_id": 7,
              "store_id": 10182,
              "state_type": "operational",
              "status": "dp_assigned",
              "shipment_id": "16599806855311914452",
              "id": 120514848,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 7,
                "display_name": "DP Assigned",
                "notify_customer": false,
                "app_display_name": "DP Assigned",
                "state_type": "operational",
                "app_state_name": "dp_assigned",
                "name": "dp_assigned",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": []
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 8,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_packed",
              "shipment_id": "16599806855311914452",
              "id": 120514898,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 8,
                "display_name": "Bag Packed",
                "notify_customer": true,
                "app_display_name": "Bag Packed",
                "state_type": "operational",
                "app_state_name": "bag_packed",
                "name": "bag_packed",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "missed_state_ingestion",
                  "display_name": "Missed state is ingested",
                  "id": 162,
                  "state": "missed_state",
                  "text": "Missed state is ingested"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:33+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000533,
              "state_id": 12,
              "store_id": 10182,
              "state_type": "operational",
              "status": "bag_picked",
              "shipment_id": "16599806855311914452",
              "id": 120514899,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 12,
                "display_name": "In Transit",
                "notify_customer": false,
                "app_display_name": "In Transit",
                "state_type": "operational",
                "app_state_name": "in_transit",
                "name": "bag_picked",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            },
            {
              "created_at": "2022-08-08T23:15:45+00:00",
              "delivery_partner_id": 22,
              "bag_id": 19207348,
              "delivery_awb_number": "4982512202351",
              "updated_at": 1660000545,
              "state_id": 14,
              "store_id": 10182,
              "state_type": "operational",
              "status": "delivery_done",
              "shipment_id": "16599806855311914452",
              "id": 120514917,
              "kafka_sync": false,
              "bag_state_mapper": {
                "id": 14,
                "display_name": "Delivery Done",
                "notify_customer": true,
                "app_display_name": "Delivered",
                "state_type": "operational",
                "app_state_name": "delivered",
                "name": "delivery_done",
                "is_active": true,
                "app_facing": true,
                "journey_type": "forward"
              },
              "reasons": [
                {
                  "slug": "others",
                  "display_name": "Others",
                  "id": 90,
                  "state": "bag_confirmed",
                  "text": "FY62F14B8501F18E8FD3"
                }
              ]
            }
          ],
          "item": {
            "brand": "play clan",
            "can_return": true,
            "id": 95944,
            "webstore_product_url": null,
            "last_updated_at": 1660000486,
            "slug_key": "play-clan-white-printed-t-shirt-387",
            "attributes": {
              "color": "White",
              "gender": [
                "Men"
              ],
              "season": "SS16",
              "pattern": "Printed",
              "essential": "Yes",
              "brand_name": "play clan",
              "net-quantity": "1 U",
              "marketer-name": "Fynd",
              "primary_color": "White",
              "sleeve_length": "Short",
              "marketer-address": "Fynd",
              "primary_material": "Others",
              "primary_color_hex": "FFFFFF"
            },
            "meta": {
              "departments": [
                21
              ]
            },
            "gender": null,
            "l3_category": 192,
            "color": null,
            "can_cancel": true,
            "l3_category_name": "T-Shirts",
            "l1_category": [
              "Clothing"
            ],
            "brand_id": 85,
            "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
            "l2_category": [
              "Polos & T-Shirts"
            ],
            "name": "White Printed T-Shirt",
            "code": "MT-100 WHITE",
            "department_id": 21,
            "size": "S",
            "image": [
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
              "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
            ]
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3",
              "bag_id": 19207348
            }
          ],
          "article": {
            "identifiers": {
              "sku_code": "MT-100 WHITE_S"
            },
            "esp_modified": false,
            "size": "S",
            "code": "",
            "raw_meta": null,
            "set": {},
            "is_set": false,
            "seller_identifier": "MT-100 WHITE_S",
            "return_config": {
              "time": 30,
              "unit": "days",
              "returnable": true
            },
            "_id": "5f8a4751d2f36f00014ff8ed",
            "uid": "5f8a4751d2f36f00014ff8ed",
            "child_details": {}
          },
          "journey_type": "forward",
          "current_operational_status": {
            "created_at": "2022-08-08T23:15:45+00:00",
            "delivery_partner_id": 22,
            "bag_id": 19207348,
            "delivery_awb_number": "4982512202351",
            "updated_at": "2022-08-08T23:15:45+00:00",
            "state_id": 14,
            "store_id": 10182,
            "state_type": "operational",
            "status": "delivery_done",
            "shipment_id": "16599806855311914452",
            "id": 120514917,
            "kafka_sync": false,
            "bag_state_mapper": {
              "id": 14,
              "display_name": "Delivery Done",
              "notify_customer": true,
              "app_display_name": "Delivered",
              "state_type": "operational",
              "app_state_name": "delivered",
              "name": "delivery_done",
              "is_active": true,
              "app_facing": true,
              "journey_type": "forward"
            },
            "reasons": [
              {
                "slug": "others",
                "display_name": "Others",
                "id": 90,
                "state": "bag_confirmed",
                "text": "FY62F14B8501F18E8FD3"
              }
            ]
          },
          "dates": {
            "order_created": "2022-08-08T23:14:45+00:00",
            "delivery_date": "2022-08-08T23:15:45+00:00"
          },
          "prices": {
            "price_effective": 10000,
            "discount": 0,
            "amount_paid": 10000,
            "coupon_effective_discount": 0,
            "delivery_charge": 0,
            "fynd_credits": 0,
            "cod_charges": 0,
            "refund_credit": 0,
            "cashback": 0,
            "refund_amount": 10000,
            "added_to_fynd_cash": false,
            "cashback_applied": 0,
            "gst_tax_percentage": 12,
            "value_of_good": 8928.57,
            "price_marked": 10000,
            "transfer_price": 0,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "tcs_percentage": 0,
            "promotion_effective_discount": 0,
            "coupon_value": 0,
            "amount_paid_roundoff": 10000
          },
          "payment_methods": {
            "COD": {
              "amount": 10000
            }
          },
          "gst_details": {
            "gstin_code": "null",
            "gst_tag": "IGST",
            "hsn_code": "61091000",
            "value_of_good": 8928.57,
            "gst_tax_percentage": 12,
            "is_default_hsn_code": false,
            "brand_calculated_amount": 10000,
            "tax_collected_at_source": 0,
            "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
            "gst_fee": 1071.43,
            "igst_tax_percentage": 12,
            "sgst_tax_percentage": 0,
            "cgst_tax_percentage": 0,
            "igst_gst_fee": 1071.43,
            "cgst_gst_fee": "0",
            "sgst_gst_fee": "0"
          },
          "brand": {
            "credit_note_allowed": false,
            "id": 85,
            "script_last_ran": null,
            "pickup_location": null,
            "invoice_prefix": "pc",
            "brand_name": "play clan",
            "is_virtual_invoice": false,
            "created_on": 1452571237,
            "modified_on": 1623871060,
            "company": 61,
            "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
            "credit_note_expiry_days": null,
            "start_date": null
          },
          "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
          "affiliate_bag_details": {
            "affiliate_bag_id": "19207348",
            "affiliate_order_id": "FY62F14B8501F18E8FD3",
            "affiliate_meta": {
              "fynd": {
                "fulfilment_identifier": "pulse"
              },
              "channel_shipment_id": null,
              "channel_order_id": null,
              "due_date": null,
              "is_priority": false,
              "box_type": null,
              "coupon_code": null,
              "size_level_total_qty": 924,
              "loyalty_discount": 0,
              "employee_discount": 0
            },
            "loyalty_discount": 0,
            "employee_discount": 0
          },
          "meta": {},
          "applied_promos": []
        }
      ],
      "qc_required": null,
      "requested_dp_conf": {
        "awb_type": "express",
        "exclude_dps": [
          27,
          29
        ],
        "ewbn": null,
        "id": 22,
        "is_dp_assigned_manually": true
      },
      "restore_coupon": false,
      "restore_promos": {},
      "rto_address": {
        "store_address_json": {
          "area": "",
          "city": "MUMBAI SUBURBAN",
          "email": "javedkazi@gofynd.com",
          "phone": "918286865180",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "pincode": "400093",
          "version": "1.0",
          "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
          "address2": "",
          "landmark": "Opposite MIDC police station",
          "latitude": 19.1174798,
          "longitude": 72.8691603,
          "created_at": "2022-05-24 18:35:09",
          "updated_at": "2022-05-24 18:35:09",
          "address_type": "store",
          "contact_person": "Javed",
          "address_category": "store"
        },
        "name": "Fuschia",
        "longitude": 72.8292187,
        "company_id": 61,
        "location_type": "mall",
        "latitude": 19.0551125,
        "id": 10182,
        "code": "FFSPS",
        "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
        "address2": "",
        "city": "MUMBAI SUBURBAN",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": "400093",
        "store_email": "javedkazi@gofynd.com",
        "contact_person": "Javed",
        "phone": "918286865180"
      },
      "search_key": {
        "shipment_id": "914452",
        "order_id": "8E8FD3"
      },
      "shipment": {
        "type": "shipment",
        "tags": [
          "bag"
        ],
        "billing_address_json": {
          "area": "Bhagyoday Society",
          "city": "Palanpur",
          "email": "",
          "phone": "7621937989",
          "state": "Gujarat",
          "country": "India",
          "pincode": "385001",
          "version": "1.0",
          "address1": "11",
          "address2": "",
          "landmark": "mansarovar road",
          "latitude": 24.1724338,
          "longitude": 72.434581,
          "created_at": "2022-08-08 23:14:45",
          "updated_at": "2022-08-08 23:14:45",
          "address_type": "home",
          "contact_person": "Rahul",
          "address_category": "billing"
        },
        "id": "16599806855311914452",
        "previous_shipment_id": null,
        "meta": {
          "dp_id": "7",
          "weight": 250,
          "external": {},
          "formatted": {
            "max": "Mon, 15 Aug",
            "min": "Sat, 13 Aug"
          },
          "timestamp": {
            "max": 1660585474,
            "min": 1660412674
          },
          "bag_weight": {
            "19207348": 250
          },
          "debug_info": {
            "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
          },
          "dp_options": {
            "7": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 2,
              "operations": [
                "inter_city"
              ],
              "r_priority": 1,
              "fm_priority": 2,
              "lm_priority": 2,
              "payment_mode": "all",
              "rvp_priority": 1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "7"
            },
            "29": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 4,
              "operations": [
                "inter_city"
              ],
              "r_priority": 3,
              "fm_priority": 4,
              "lm_priority": 4,
              "payment_mode": "all",
              "rvp_priority": 3,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "29"
            },
            "36": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 6,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 6,
              "lm_priority": 6,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "36"
            },
            "37": {
              "area_code": {
                "to_pincode": null,
                "from_pincode": null
              },
              "f_priority": 7,
              "operations": [
                "inter_city"
              ],
              "r_priority": -1,
              "fm_priority": 7,
              "lm_priority": 7,
              "payment_mode": "all",
              "rvp_priority": -1,
              "assign_dp_from_sb": true,
              "external_account_id": null,
              "internal_account_id": "37"
            }
          },
          "order_type": null,
          "dp_sort_key": "fm_priority",
          "ewaybill_info": {},
          "packaging_name": "POLYB_M_1411P5",
          "assign_dp_from_sb": true,
          "same_store_available": false,
          "fulfilment_priority_text": null,
          "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
          "auto_trigger_dp_assignment_ACF": true
        },
        "fynd_order_id": "FY62F14B8501F18E8FD3",
        "delivery_awb_number": "4982512202351",
        "lock_status": "",
        "pdf_links": {
          "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
          "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
          "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
          "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
          "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
          "label_type": "fynd",
          "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
          "invoice_type": "fynd"
        },
        "parent_type": null,
        "store_invoice_id": "1659980720191361",
        "delivery_address_json": {
          "area": "Bhagyoday Society",
          "city": "Palanpur",
          "email": "",
          "phone": "7621937989",
          "state": "Gujarat",
          "country": "India",
          "pincode": "385001",
          "version": "1.0",
          "address1": "11",
          "address2": "",
          "landmark": "mansarovar road",
          "latitude": 24.1724338,
          "longitude": 72.434581,
          "created_at": "2022-08-08T23:14:45+00:00",
          "updated_at": "2022-08-08T23:14:45+00:00",
          "address_type": "home",
          "contact_person": "Rahul",
          "address_category": "delivery",
          "name": "Rahul",
          "address": "11"
        },
        "created_at": 1660000486,
        "hand_over_contact_json": {
          "email": "",
          "phone": "7621937989",
          "version": "1.0",
          "created_at": "2022-08-08 23:14:45",
          "updated_at": "2022-08-08 23:14:45",
          "contact_person": "Rahul"
        },
        "parent_id": "",
        "is_active": true,
        "affiliate_id": "5dd3ce1f1662684aa7019f1e",
        "affiliate_shipment_id": "16599806855311914452",
        "fulfilment_priority": 10,
        "credit_note_id": null,
        "eway_bill_id": null,
        "packaging_type": "POLYB_M_1411P5"
      },
      "shipment_details": {
        "dp_id": "7",
        "dp_options": {
          "7": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 2,
            "operations": [
              "inter_city"
            ],
            "r_priority": 1,
            "fm_priority": 2,
            "lm_priority": 2,
            "payment_mode": "all",
            "rvp_priority": 1,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "7"
          },
          "29": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 4,
            "operations": [
              "inter_city"
            ],
            "r_priority": 3,
            "fm_priority": 4,
            "lm_priority": 4,
            "payment_mode": "all",
            "rvp_priority": 3,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "29"
          },
          "36": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 6,
            "operations": [
              "inter_city"
            ],
            "r_priority": -1,
            "fm_priority": 6,
            "lm_priority": 6,
            "payment_mode": "all",
            "rvp_priority": -1,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "36"
          },
          "37": {
            "area_code": {
              "to_pincode": null,
              "from_pincode": null
            },
            "f_priority": 7,
            "operations": [
              "inter_city"
            ],
            "r_priority": -1,
            "fm_priority": 7,
            "lm_priority": 7,
            "payment_mode": "all",
            "rvp_priority": -1,
            "assign_dp_from_sb": true,
            "external_account_id": null,
            "internal_account_id": "37"
          }
        }
      },
      "shipment_gst": {
        "value_of_good": 8928.57,
        "gst_fee": 1071.43,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "gstin_code": "null"
      },
      "shipment_quantity": 1,
      "shipment_status": {
        "created_at": 1660000545,
        "shipment_id": "16599806855311914452",
        "status": "delivery_done",
        "bag_list": [
          "19207348"
        ],
        "id": 78707677,
        "current_shipment_status": "delivery_done",
        "status_created_at": 1660000545
      },
      "shipment_status_history": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "shipment_id": "16599806855311914452",
          "status": "pending",
          "bag_list": [
            "19207348"
          ],
          "id": 78707571
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "shipment_id": "16599806855311914452",
          "status": "placed",
          "bag_list": [
            "19207348"
          ],
          "id": 78707572
        },
        {
          "created_at": "2022-08-08T23:15:12+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_confirmed",
          "bag_list": [
            "19207348"
          ],
          "id": 78707602
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_invoiced",
          "bag_list": [
            "19207348"
          ],
          "id": 78707605
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "shipment_id": "16599806855311914452",
          "status": "ready_for_dp_assignment",
          "bag_list": [
            "19207348"
          ],
          "id": 78707606
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "shipment_id": "16599806855311914452",
          "status": "dp_assigned",
          "bag_list": [
            "19207348"
          ],
          "id": 78707608
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_packed",
          "bag_list": [
            "19207348"
          ],
          "id": 78707658
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "shipment_id": "16599806855311914452",
          "status": "bag_picked",
          "bag_list": [
            "19207348"
          ],
          "id": 78707659
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "shipment_id": "16599806855311914452",
          "status": "delivery_done",
          "bag_list": [
            "19207348"
          ],
          "id": 78707677,
          "current_shipment_status": "delivery_done",
          "status_created_at": "2022-08-08T23:15:45+00:00"
        }
      ],
      "shipment_update_time": 1659980745.2105737,
      "shipment_value": 10000,
      "tags": [
        "bag"
      ],
      "total_shipment_bags": 1,
      "total_shipments_in_order": 1,
      "transaction_type": "shipment",
      "user": {
        "email": "rahulrathod@gofynd.com",
        "user_oid": "000000000000000014402534",
        "last_name": "Rathod",
        "gender": "male",
        "mongo_user_id": "14402534",
        "mobile": "7621937989",
        "first_name": "Rahul",
        "id": 17952150,
        "is_anonymous_user": false
      },
      "weight": {
        "value": 250,
        "unit": "gram"
      },
      "id": "62f14b93af6c692530bb0df6"
    }
  ],
  "page": {
    "type": "number",
    "size": 1,
    "current": 1,
    "has_next": false,
    "item_total": 1
  }
}
```
</details>









---


#### getBagById





```swift
client.order.getBagById(bagId: bagId, channelBagId: channelBagId, channelId: channelId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagId | String? | no |  |   
| channelBagId | String? | no |  |   
| channelId | String? | no |  |  





*Returned Response:*




[BagDetailsPlatformResponse](#BagDetailsPlatformResponse)

Successfully retrived shipment details!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "shipment_id": "16599806855311914452",
  "affiliate_details": {
    "id": "5dd3ce1f1662684aa7019f1e",
    "affiliate_bag_id": "19207348",
    "affiliate_order_id": "FY62F14B8501F18E8FD3",
    "company_affiliate_tag": "OpexTesting",
    "affiliate_id": "5dd3ce1f1662684aa7019f1e",
    "affiliate_shipment_id": "16599806855311914452",
    "shipment_meta": {
      "dp_id": "7",
      "weight": 250,
      "external": {},
      "formatted": {
        "max": "Mon, 15 Aug",
        "min": "Sat, 13 Aug"
      },
      "timestamp": {
        "max": 1660585474,
        "min": 1660412674
      },
      "bag_weight": {
        "19207348": 250
      },
      "debug_info": {
        "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
      },
      "dp_options": {
        "7": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 2,
          "operations": [
            "inter_city"
          ],
          "r_priority": 1,
          "fm_priority": 2,
          "lm_priority": 2,
          "payment_mode": "all",
          "rvp_priority": 1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "7"
        },
        "29": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 4,
          "operations": [
            "inter_city"
          ],
          "r_priority": 3,
          "fm_priority": 4,
          "lm_priority": 4,
          "payment_mode": "all",
          "rvp_priority": 3,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "29"
        },
        "36": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 6,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 6,
          "lm_priority": 6,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "36"
        },
        "37": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 7,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 7,
          "lm_priority": 7,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "37"
        }
      },
      "order_type": null,
      "dp_sort_key": "fm_priority",
      "ewaybill_info": {},
      "packaging_name": "POLYB_M_1411P5",
      "assign_dp_from_sb": true,
      "same_store_available": false,
      "fulfilment_priority_text": null,
      "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
      "auto_trigger_dp_assignment_ACF": true
    },
    "affiliate_meta": {
      "fynd": {
        "fulfilment_identifier": "pulse"
      },
      "channel_shipment_id": null,
      "channel_order_id": null,
      "due_date": null,
      "is_priority": false,
      "box_type": null,
      "coupon_code": null,
      "size_level_total_qty": 924,
      "loyalty_discount": 0,
      "employee_discount": 0
    },
    "affiliate_store_id": "10182",
    "pdf_links": {
      "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
      "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
      "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
      "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
      "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
      "label_type": "fynd",
      "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
      "invoice_type": "fynd"
    },
    "config": {
      "id": "5dd3ce1f1662684aa7019f1e",
      "meta": [],
      "name": "OpexTesting",
      "owner": "000000000000000000000020",
      "token": "np0tHm04",
      "secret": "dTSEQkEE7",
      "createdAt": null,
      "updatedAt": null,
      "description": "Opex testing app",
      "dp_assignment": true,
      "app_company_id": 61,
      "article_assignment": {
        "level": "multi-companies",
        "strategy": "optimal"
      },
      "force_reassignment": false,
      "post_order_reassignment": true
    }
  },
  "app_id": "5dd3ce1f1662684aa7019f1e",
  "article_details": {
    "status": {
      "delivery_done": {
        "5f8a4751d2f36f00014ff8ed": {
          "uid": "5f8a4751d2f36f00014ff8ed",
          "_id": "5f8a4751d2f36f00014ff8ed",
          "is_set": false,
          "bag_ids": [
            19207348
          ],
          "quantity": 1,
          "reasons": {
            "90": [
              {
                "slug": "others",
                "display_name": "Others",
                "id": 90,
                "state": "bag_confirmed",
                "text": "FY62F14B8501F18E8FD3",
                "bag_id": 19207348
              }
            ]
          }
        }
      }
    }
  },
  "bag_status_history": [
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:14:46+00:00",
      "state_id": 89,
      "store_id": 10182,
      "state_type": "operational",
      "status": "pending",
      "shipment_id": "16599806855311914452",
      "id": 120514809,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 89,
        "display_name": "Pending",
        "notify_customer": true,
        "app_display_name": "Pending",
        "state_type": "operational",
        "app_state_name": "pending",
        "name": "pending",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:14:46+00:00",
      "state_id": 1,
      "store_id": 10182,
      "state_type": "operational",
      "status": "placed",
      "shipment_id": "16599806855311914452",
      "id": 120514810,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 1,
        "display_name": "Placed",
        "notify_customer": true,
        "app_display_name": "Processing",
        "state_type": "operational",
        "app_state_name": "processing",
        "name": "placed",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:14+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:15:14+00:00",
      "state_id": 2,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_confirmed",
      "shipment_id": "16599806855311914452",
      "id": 120514842,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 2,
        "display_name": "Confirmed",
        "notify_customer": false,
        "app_display_name": "Confirmed",
        "state_type": "operational",
        "app_state_name": "confirmed",
        "name": "bag_confirmed",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3n"
        }
      ]
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:15:20+00:00",
      "state_id": 91,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_invoiced",
      "shipment_id": "16599806855311914452",
      "id": 120514845,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 91,
        "display_name": "Bag Invoiced",
        "notify_customer": false,
        "app_display_name": "Bag Invoiced",
        "state_type": "operational",
        "app_state_name": "bag_invoiced",
        "name": "bag_invoiced",
        "is_active": true,
        "app_facing": false,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "delivery_partner_id": null,
      "bag_id": 19207348,
      "delivery_awb_number": null,
      "updated_at": "2022-08-08T23:15:20+00:00",
      "state_id": 113,
      "store_id": 10182,
      "state_type": "operational",
      "status": "ready_for_dp_assignment",
      "shipment_id": "16599806855311914452",
      "id": 120514846,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 113,
        "display_name": "Ready For Dp Assignment",
        "notify_customer": false,
        "app_display_name": "Ready For Dp Assignment",
        "state_type": "operational",
        "app_state_name": "ready_for_dp_assignment",
        "name": "ready_for_dp_assignment",
        "is_active": true,
        "app_facing": false,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:23+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:23+00:00",
      "state_id": 7,
      "store_id": 10182,
      "state_type": "operational",
      "status": "dp_assigned",
      "shipment_id": "16599806855311914452",
      "id": 120514848,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 7,
        "display_name": "DP Assigned",
        "notify_customer": false,
        "app_display_name": "DP Assigned",
        "state_type": "operational",
        "app_state_name": "dp_assigned",
        "name": "dp_assigned",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": []
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:33+00:00",
      "state_id": 8,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_packed",
      "shipment_id": "16599806855311914452",
      "id": 120514898,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 8,
        "display_name": "Bag Packed",
        "notify_customer": true,
        "app_display_name": "Bag Packed",
        "state_type": "operational",
        "app_state_name": "bag_packed",
        "name": "bag_packed",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "missed_state_ingestion",
          "display_name": "Missed state is ingested",
          "id": 162,
          "state": "missed_state",
          "text": "Missed state is ingested"
        }
      ]
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:33+00:00",
      "state_id": 12,
      "store_id": 10182,
      "state_type": "operational",
      "status": "bag_picked",
      "shipment_id": "16599806855311914452",
      "id": 120514899,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 12,
        "display_name": "In Transit",
        "notify_customer": false,
        "app_display_name": "In Transit",
        "state_type": "operational",
        "app_state_name": "in_transit",
        "name": "bag_picked",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3"
        }
      ]
    },
    {
      "created_at": "2022-08-08T23:15:45+00:00",
      "delivery_partner_id": 22,
      "bag_id": 19207348,
      "delivery_awb_number": "4982512202351",
      "updated_at": "2022-08-08T23:15:45+00:00",
      "state_id": 14,
      "store_id": 10182,
      "state_type": "operational",
      "status": "delivery_done",
      "shipment_id": "16599806855311914452",
      "id": 120514917,
      "kafka_sync": false,
      "bag_state_mapper": {
        "id": 14,
        "display_name": "Delivery Done",
        "notify_customer": true,
        "app_display_name": "Delivered",
        "state_type": "operational",
        "app_state_name": "delivered",
        "name": "delivery_done",
        "is_active": true,
        "app_facing": true,
        "journey_type": "forward"
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3"
        }
      ]
    }
  ],
  "bags": [
    {
      "id": 19207348,
      "display_name": "Bag",
      "entity_type": "bag",
      "type": "single",
      "status": {
        "is_returnable": true,
        "can_be_cancelled": true,
        "enable_tracking": false,
        "is_customer_return_allowed": true,
        "is_active": false
      },
      "financial_breakup": [
        {
          "price_effective": 10000,
          "discount": 0,
          "amount_paid": 10000,
          "coupon_effective_discount": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cod_charges": 0,
          "refund_credit": 0,
          "cashback": 0,
          "refund_amount": 10000,
          "added_to_fynd_cash": false,
          "cashback_applied": 0,
          "gst_tax_percentage": 12,
          "value_of_good": 8928.57,
          "price_marked": 10000,
          "transfer_price": 0,
          "brand_calculated_amount": 10000,
          "tax_collected_at_source": 0,
          "tcs_percentage": 0,
          "promotion_effective_discount": 0,
          "coupon_value": 0,
          "amount_paid_roundoff": 10000,
          "size": "S",
          "total_units": 1,
          "hsn_code": "61091000",
          "identifiers": {
            "sku_code": "MT-100 WHITE_S"
          },
          "item_name": "White Printed T-Shirt",
          "gst_fee": 1071.43,
          "gst_tag": "IGST"
        }
      ],
      "bag_id": 19207348,
      "bag_update_time": 1659980745.2105737,
      "current_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": 1660000545,
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        }
      },
      "bag_status": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 89,
          "store_id": 10182,
          "state_type": "operational",
          "status": "pending",
          "shipment_id": "16599806855311914452",
          "id": 120514809,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 89,
            "display_name": "Pending",
            "notify_customer": true,
            "app_display_name": "Pending",
            "state_type": "operational",
            "app_state_name": "pending",
            "name": "pending",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 1,
          "store_id": 10182,
          "state_type": "operational",
          "status": "placed",
          "shipment_id": "16599806855311914452",
          "id": 120514810,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 1,
            "display_name": "Placed",
            "notify_customer": true,
            "app_display_name": "Processing",
            "state_type": "operational",
            "app_state_name": "processing",
            "name": "placed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:14+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000514,
          "state_id": 2,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_confirmed",
          "shipment_id": "16599806855311914452",
          "id": 120514842,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 2,
            "display_name": "Confirmed",
            "notify_customer": false,
            "app_display_name": "Confirmed",
            "state_type": "operational",
            "app_state_name": "confirmed",
            "name": "bag_confirmed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3n"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 91,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_invoiced",
          "shipment_id": "16599806855311914452",
          "id": 120514845,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 91,
            "display_name": "Bag Invoiced",
            "notify_customer": false,
            "app_display_name": "Bag Invoiced",
            "state_type": "operational",
            "app_state_name": "bag_invoiced",
            "name": "bag_invoiced",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 113,
          "store_id": 10182,
          "state_type": "operational",
          "status": "ready_for_dp_assignment",
          "shipment_id": "16599806855311914452",
          "id": 120514846,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 113,
            "display_name": "Ready For Dp Assignment",
            "notify_customer": false,
            "app_display_name": "Ready For Dp Assignment",
            "state_type": "operational",
            "app_state_name": "ready_for_dp_assignment",
            "name": "ready_for_dp_assignment",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000523,
          "state_id": 7,
          "store_id": 10182,
          "state_type": "operational",
          "status": "dp_assigned",
          "shipment_id": "16599806855311914452",
          "id": 120514848,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 7,
            "display_name": "DP Assigned",
            "notify_customer": false,
            "app_display_name": "DP Assigned",
            "state_type": "operational",
            "app_state_name": "dp_assigned",
            "name": "dp_assigned",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 8,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_packed",
          "shipment_id": "16599806855311914452",
          "id": 120514898,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 8,
            "display_name": "Bag Packed",
            "notify_customer": true,
            "app_display_name": "Bag Packed",
            "state_type": "operational",
            "app_state_name": "bag_packed",
            "name": "bag_packed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "missed_state_ingestion",
              "display_name": "Missed state is ingested",
              "id": 162,
              "state": "missed_state",
              "text": "Missed state is ingested"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 12,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_picked",
          "shipment_id": "16599806855311914452",
          "id": 120514899,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 12,
            "display_name": "In Transit",
            "notify_customer": false,
            "app_display_name": "In Transit",
            "state_type": "operational",
            "app_state_name": "in_transit",
            "name": "bag_picked",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000545,
          "state_id": 14,
          "store_id": 10182,
          "state_type": "operational",
          "status": "delivery_done",
          "shipment_id": "16599806855311914452",
          "id": 120514917,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 14,
            "display_name": "Delivery Done",
            "notify_customer": true,
            "app_display_name": "Delivered",
            "state_type": "operational",
            "app_state_name": "delivered",
            "name": "delivery_done",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        }
      ],
      "item": {
        "brand": "play clan",
        "can_return": true,
        "id": 95944,
        "webstore_product_url": null,
        "last_updated_at": 1660000486,
        "slug_key": "play-clan-white-printed-t-shirt-387",
        "attributes": {
          "color": "White",
          "gender": [
            "Men"
          ],
          "season": "SS16",
          "pattern": "Printed",
          "essential": "Yes",
          "brand_name": "play clan",
          "net-quantity": "1 U",
          "marketer-name": "Fynd",
          "primary_color": "White",
          "sleeve_length": "Short",
          "marketer-address": "Fynd",
          "primary_material": "Others",
          "primary_color_hex": "FFFFFF"
        },
        "meta": {
          "departments": [
            21
          ]
        },
        "gender": null,
        "l3_category": 192,
        "color": null,
        "can_cancel": true,
        "l3_category_name": "T-Shirts",
        "l1_category": [
          "Clothing"
        ],
        "brand_id": 85,
        "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
        "l2_category": [
          "Polos & T-Shirts"
        ],
        "name": "White Printed T-Shirt",
        "code": "MT-100 WHITE",
        "department_id": 21,
        "size": "S",
        "image": [
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
        ]
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3",
          "bag_id": 19207348
        }
      ],
      "article": {
        "identifiers": {
          "sku_code": "MT-100 WHITE_S"
        },
        "esp_modified": false,
        "size": "S",
        "code": "",
        "raw_meta": null,
        "set": {},
        "is_set": false,
        "seller_identifier": "MT-100 WHITE_S",
        "return_config": {
          "time": 30,
          "unit": "days",
          "returnable": true
        },
        "_id": "5f8a4751d2f36f00014ff8ed",
        "uid": "5f8a4751d2f36f00014ff8ed",
        "child_details": {}
      },
      "journey_type": "forward",
      "current_operational_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": "2022-08-08T23:15:45+00:00",
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        },
        "reasons": [
          {
            "slug": "others",
            "display_name": "Others",
            "id": 90,
            "state": "bag_confirmed",
            "text": "FY62F14B8501F18E8FD3"
          }
        ]
      },
      "dates": {
        "order_created": "2022-08-08T23:14:45+00:00",
        "delivery_date": "2022-08-08T23:15:45+00:00"
      },
      "prices": {
        "price_effective": 10000,
        "discount": 0,
        "amount_paid": 10000,
        "coupon_effective_discount": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cod_charges": 0,
        "refund_credit": 0,
        "cashback": 0,
        "refund_amount": 10000,
        "added_to_fynd_cash": false,
        "cashback_applied": 0,
        "gst_tax_percentage": 12,
        "value_of_good": 8928.57,
        "price_marked": 10000,
        "transfer_price": 0,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "tcs_percentage": 0,
        "promotion_effective_discount": 0,
        "coupon_value": 0,
        "amount_paid_roundoff": 10000
      },
      "payment_methods": {
        "COD": {
          "amount": 10000
        }
      },
      "gst_details": {
        "gstin_code": "null",
        "gst_tag": "IGST",
        "hsn_code": "61091000",
        "value_of_good": 8928.57,
        "gst_tax_percentage": 12,
        "is_default_hsn_code": false,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
        "gst_fee": 1071.43,
        "igst_tax_percentage": 12,
        "sgst_tax_percentage": 0,
        "cgst_tax_percentage": 0,
        "igst_gst_fee": 1071.43,
        "cgst_gst_fee": "0",
        "sgst_gst_fee": "0"
      },
      "brand": {
        "credit_note_allowed": false,
        "id": 85,
        "script_last_ran": null,
        "pickup_location": null,
        "invoice_prefix": "pc",
        "brand_name": "play clan",
        "is_virtual_invoice": false,
        "created_on": 1452571237,
        "modified_on": 1623871060,
        "company": 61,
        "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
        "credit_note_expiry_days": null,
        "start_date": null
      },
      "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
      "affiliate_bag_details": {
        "affiliate_bag_id": "19207348",
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "affiliate_meta": {
          "fynd": {
            "fulfilment_identifier": "pulse"
          },
          "channel_shipment_id": null,
          "channel_order_id": null,
          "due_date": null,
          "is_priority": false,
          "box_type": null,
          "coupon_code": null,
          "size_level_total_qty": 924,
          "loyalty_discount": 0,
          "employee_discount": 0
        },
        "loyalty_discount": 0,
        "employee_discount": 0
      },
      "meta": {},
      "applied_promos": []
    }
  ],
  "brand": {
    "credit_note_allowed": false,
    "id": 85,
    "script_last_ran": null,
    "pickup_location": null,
    "invoice_prefix": "pc",
    "brand_name": "play clan",
    "is_virtual_invoice": false,
    "created_on": 1452571237,
    "modified_on": 1623871060,
    "company": 61,
    "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
    "credit_note_expiry_days": null,
    "start_date": null
  },
  "cart_id": 41262745,
  "comment": "",
  "company": {
    "modified_on": 1656409302,
    "company_type": "distributor",
    "id": 61,
    "commission": 0,
    "meta": {
      "stage": "verified",
      "address": [
        {
          "city": "GHORMACH",
          "state": "BADGHIS",
          "country": "AFGHANISTAN",
          "pincode": 401209,
          "address1": "A/204, SAI VANDAN",
          "address2": "TULINJ ROAD, NALLASOPARA EAST",
          "landmark": "Near Utsav Hotel",
          "latitude": 35.6495457,
          "longitude": 63.9113296,
          "address_type": "office",
          "country_code": "IN"
        },
        {
          "city": "GHORMACH",
          "state": "BADGHIS",
          "country": "AFGHANISTAN",
          "pincode": 401209,
          "address1": "A/204, SAI VANDAN",
          "address2": "TULINJ ROAD, NALLASOPARA EAST",
          "landmark": "Near Utsav Hotel",
          "latitude": 35.6495457,
          "longitude": 63.9113296,
          "address_type": "registered",
          "country_code": "IN"
        }
      ],
      "documents": {
        "cin": {
          "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/ZjGFzuE8_-20_Python_Libraries.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=IC%2FgIDdSymHbSKJGT12Zq9zOe4M%3D",
          "type": "cin",
          "value": "L21700MH1907PLC000260",
          "verified": true,
          "legal_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED"
        },
        "gst": {
          "type": "gst",
          "value": "27AALCA0442L1ZM",
          "verified": true,
          "legal_name": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED"
        },
        "pan": {
          "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/oURvMfX1p-2de4a88b_ticket.pdf?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=lG1wi0G6cqtav0i9cOf3dFNBuNY%3D",
          "type": "pan",
          "value": "AALCA0442L",
          "verified": true,
          "legal_name": ""
        },
        "digital_signature": {
          "url": "https://fynd-obscuro-media-new.s3-accelerate.amazonaws.com/company/61/self/legal/documents/free/original/iigdJTk27-3.png?AWSAccessKeyId=AKIAJU7QAWL4LO5KSCYA&Expires=1656409357&Signature=Nc38H2KxR1ymSZz8jVRQyUCXobs%3D",
          "type": "digital_signature",
          "value": "Aayush Jain",
          "verified": true,
          "legal_name": "Aayush Jain"
        }
      },
      "business_info": "This is a description area to write about the company.",
      "contact_details": {
        "phone": [
          {
            "number": "7009853732",
            "country_code": 91
          },
          {
            "number": "9821012533",
            "country_code": 91
          }
        ],
        "emails": [
          "aayushvjain@gofynd.com",
          "abc@gmail.com",
          "asmaidris1994@gmail.com"
        ]
      },
      "business_details": {
        "website": {
          "url": "https://www.playclan.com"
        }
      },
      "notification_emails": [
        "pranavverma@gofynd.com",
        "vermapranav28@gmail.com",
        "vaishakhshetty@gofynd.com"
      ]
    },
    "exchange_allowed": false,
    "payment_procesing_charge": 0,
    "tan_no": "11",
    "vat_no": null,
    "exchange_within_days": null,
    "gst_number": "27AALCA0442L1ZM",
    "created_on": 1452571141,
    "company_name": "FUCHSIA VINE DESIGNS PRIVATE LIMITED",
    "fynd_a_fit_available": false,
    "return_allowed": true,
    "return_within_days": 30,
    "payment_type": "Happay",
    "business_type": "ltd/pvt ltd",
    "agreement_start_date": 1503532800,
    "cst": null,
    "pan_no": "AALCA0442L"
  },
  "coupon": {},
  "delivery_address": {
    "area": "Bhagyoday Society",
    "city": "Palanpur",
    "email": "",
    "phone": "7621937989",
    "state": "Gujarat",
    "country": "India",
    "pincode": "385001",
    "version": "1.0",
    "address1": "11",
    "address2": "",
    "landmark": "mansarovar road",
    "latitude": 24.1724338,
    "longitude": 72.434581,
    "created_at": "2022-08-08T23:14:45+00:00",
    "updated_at": "2022-08-08T23:14:45+00:00",
    "address_type": "home",
    "contact_person": "Rahul",
    "address_category": "delivery",
    "name": "Rahul",
    "address": "11"
  },
  "delivery_slot": {
    "slot": "By 17:00 PM",
    "upper_bound": "2022-08-15T17:44:34+00:00",
    "lower_bound": "2022-08-13T17:44:34+00:00",
    "date": "2022-08-15T17:44:34+00:00",
    "type": "order_window"
  },
  "dp_details": {
    "id": 22,
    "name": "fyndr",
    "awb_no": "4982512202351",
    "eway_bill_id": null,
    "track_url": null,
    "dp_charges": 110,
    "dp_return_charges": 70,
    "amount_handling_charges": 15,
    "gst_tag": "sgst"
  },
  "einvoice_info": null,
  "fallback_user": {
    "email": "",
    "mobile": "7621937989"
  },
  "fulfilling_store": {
    "login_username": "TEST_FFSPS_61",
    "mall_area": null,
    "updated_at": "2022-05-19T15:46:52+00:00",
    "packaging_material_count": 0,
    "id": 10182,
    "store_address_json": {
      "area": "",
      "city": "MUMBAI SUBURBAN",
      "email": "javedkazi@gofynd.com",
      "phone": "918286865180",
      "state": "MAHARASHTRA",
      "country": "INDIA",
      "pincode": "400093",
      "version": "1.0",
      "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
      "address2": "",
      "landmark": "Opposite MIDC police station",
      "latitude": 19.1174798,
      "longitude": 72.8691603,
      "created_at": "2022-05-24 18:35:09",
      "updated_at": "2022-05-24 18:35:09",
      "address_type": "store",
      "contact_person": "Javed",
      "address_category": "store"
    },
    "is_archived": false,
    "meta": {
      "stage": "verified",
      "timing": [
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "monday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "tuesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "wednesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 14,
            "minute": 12
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "thursday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "friday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "saturday"
        },
        {
          "open": true,
          "closing": {
            "hour": 21,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "sunday"
        }
      ],
      "documents": {},
      "gst_number": null,
      "display_name": "Fuschia",
      "gst_credentials": {
        "e_invoice": {
          "enabled": false
        },
        "e_waybill": {
          "enabled": false
        }
      },
      "notification_emails": [
        "vaishakhshetty@gofynd.com"
      ],
      "product_return_config": {
        "on_same_store": true
      },
      "additional_contact_details": {
        "number": [
          "91 - 8286865180"
        ]
      },
      "ewaybill_portal_details": null
    },
    "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
    "parent_store_id": null,
    "alohomora_user_id": 11070,
    "store_active_from": null,
    "vat_no": null,
    "longitude": 72.8292187,
    "location_type": "mall",
    "latitude": 19.0551125,
    "created_at": "2020-01-15T05:30:41+00:00",
    "fulfillment_channel": "pulse",
    "brand_id": null,
    "is_active": false,
    "name": "Fuschia",
    "mall_name": null,
    "company_id": 61,
    "is_enabled_for_recon": false,
    "code": "FFSPS",
    "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
    "address2": "",
    "city": "MUMBAI SUBURBAN",
    "state": "MAHARASHTRA",
    "country": "INDIA",
    "pincode": "400093",
    "store_email": "javedkazi@gofynd.com",
    "contact_person": "Javed",
    "phone": "918286865180",
    "brand_store_tags": [
      "pulse"
    ]
  },
  "fyndstore_emp": {},
  "invoice": {
    "updated_date": 1660000520,
    "store_invoice_id": "1659980720191361",
    "invoice_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_a4.pdf",
    "label_url": "https://fynd-recon-reports-mumbai.s3.amazonaws.com/invoice_labels/16599806855311914452_invoice_pos.pdf"
  },
  "is_processing": false,
  "journey_type": "forward",
  "lock_status": false,
  "no_of_bags_order": 1,
  "operational_status": "delivery_done",
  "order": {
    "raw_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
    "affiliate_order_date": "2022-08-08T23:14:45+00:00",
    "total_order_value": 10000,
    "transaction_id": "FY62F14B8501F18E8FD3",
    "refund_by": "fynd",
    "headers": {
      "host": "fplt-gringotts-main-svc.default.svc.cluster.local",
      "user-agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
      "cookie": "G_ENABLED_IDPS=google; f.session=s%3AHQX0JDLgWOHd8z7NOu-E9mT9yBDaqfPR.6T82v4OlerGY6lfKfATfojYQzDCtSRhEJkIA%2FyH%2Fz%2BM; ordering_store=s%3A15114.6VinzJtp1QRjsKZ52NWvXXPoTuLc38KYLxiLJSMl6CE",
      "x-application-id": "5dd3ce1f1662684aa7019f1e",
      "x-application-token": "np0tHm04",
      "x-currency-code": "INR",
      "authorization": "04a544ac-7e85-437f-b6d6-0adb694c4045",
      "accept": "*/*",
      "accept-encoding": "gzip, deflate",
      "content-length": "17443",
      "content-type": "text/plain; charset=utf-8",
      "x-newrelic-id": "VQcHWVJVDhAHXFFVBAUEUVI=",
      "x-newrelic-transaction": "PxQPAlJaXgNRVQUDVAgOAlUFFB8EBw8RVU4aWlsMDVQDBAgFUAIKWwAHA0NKQQEDAlBWAQ4AFTs=",
      "request-source": "Fynd",
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36",
      "source": "uniket-desktop",
      "user_agent_version": null,
      "deprecated": false
    },
    "id": 13030531,
    "cod_charges": 0,
    "collect_by": "fynd",
    "tax_details": {
      "gstin": null
    },
    "promotion_effective_discount": 0,
    "affiliate_order_id": "FY62F14B8501F18E8FD3",
    "meta": {
      "files": [],
      "staff": {},
      "comment": "",
      "extra_meta": {},
      "order_type": "HomeDelivery",
      "employee_id": null,
      "payment_type": "fynd",
      "mongo_cart_id": 41262745,
      "order_platform": "platform-site",
      "ordering_store": 15114,
      "order_child_entities": [
        "shipment",
        "bag"
      ]
    },
    "order_value": 10000,
    "fynd_credits": 0,
    "mode_of_payment": "FYND",
    "discount": 0,
    "payment_methods": {
      "COD": {
        "meta": {
          "logo_url": {
            "large": "https://hdn-1.fynd.com/payment/cod.png",
            "small": "https://hdn-1.fynd.com/payment/cod.png"
          },
          "payment_id": "FY62F14B8501F18E8FD3",
          "merchant_code": "",
          "payment_gateway": "Fynd",
          "payment_identifier": "11"
        },
        "mode": "COD",
        "name": "COD",
        "amount": 10000,
        "refund_by": "fynd",
        "collect_by": "fynd"
      }
    },
    "fynd_order_id": "FY62F14B8501F18E8FD3",
    "delivery_charges": 0,
    "mongo_cart_id": 41262745,
    "source": "uniket-desktop",
    "created_time": 1660000485,
    "payment_mode_id": 2,
    "currency": "INR",
    "coupon_value": 0,
    "cashback_value": 0,
    "cashback_applied": 0,
    "ordering_channel": "FYND_STORE",
    "user_id": 17952150,
    "affiliate_id": "5dd3ce1f1662684aa7019f1e",
    "ordering_channel_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/fynd_store_logo.png",
    "prices": {
      "amount_paid": 10000,
      "refund_amount": 10000,
      "price_marked": 10000,
      "cod_charges": 0,
      "discount": 0,
      "cashback_applied": 0,
      "delivery_charge": 0,
      "fynd_credits": 0,
      "cashback": 0,
      "price_effective": 10000,
      "refund_credit": 0,
      "value_of_good": 8928.57,
      "coupon_value": 0,
      "tax_collected_at_source": 0,
      "promotion_effective_discount": 0,
      "amount_paid_roundoff": 10000
    }
  },
  "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
  "order_source": "uniket-desktop",
  "order_type": "forward",
  "order_value": 10000,
  "ordering_store": {
    "login_username": null,
    "mall_area": null,
    "updated_at": "2022-04-21T14:44:10+00:00",
    "packaging_material_count": 0,
    "id": 15114,
    "store_address_json": {
      "area": "",
      "city": "MUMBAI",
      "email": "talha1891@gmail.com",
      "phone": "918104556147",
      "state": "MAHARASHTRA",
      "country": "INDIA",
      "pincode": "421301",
      "version": "1.0",
      "address1": "KALYAN, MAHARASHTRA 421301",
      "address2": "",
      "landmark": "",
      "latitude": 73.1290596,
      "longitude": 19.2527132,
      "created_at": "2022-05-10 18:50:25",
      "updated_at": "2022-05-10 18:50:25",
      "address_type": "store",
      "contact_person": "talha",
      "address_category": "store"
    },
    "is_archived": false,
    "meta": {
      "stage": "verified",
      "timing": [
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "monday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "tuesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "wednesday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "thursday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "friday"
        },
        {
          "open": true,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "saturday"
        },
        {
          "open": false,
          "closing": {
            "hour": 22,
            "minute": 0
          },
          "opening": {
            "hour": 11,
            "minute": 0
          },
          "weekday": "sunday"
        }
      ],
      "documents": {},
      "gst_number": null,
      "display_name": "0Test Loc",
      "gst_credentials": {
        "e_invoice": {
          "enabled": false
        },
        "e_waybill": {
          "enabled": false
        }
      },
      "notification_emails": [
        "talha1891@gmail.com"
      ],
      "product_return_config": {
        "on_same_store": true
      },
      "additional_contact_details": {
        "number": [
          "91 - 8104556147"
        ]
      },
      "ewaybill_portal_details": null
    },
    "order_integration_id": null,
    "parent_store_id": null,
    "alohomora_user_id": null,
    "store_active_from": null,
    "vat_no": null,
    "longitude": null,
    "location_type": "high_street",
    "latitude": null,
    "created_at": "2022-04-21T14:44:10+00:00",
    "fulfillment_channel": "pulse",
    "brand_id": null,
    "is_active": false,
    "name": "0Test Loc",
    "mall_name": null,
    "company_id": 61,
    "is_enabled_for_recon": false,
    "code": "0_loc_code",
    "address1": "KALYAN, MAHARASHTRA 421301",
    "address2": "",
    "city": "MUMBAI",
    "state": "MAHARASHTRA",
    "country": "INDIA",
    "pincode": "421301",
    "store_email": "talha1891@gmail.com",
    "contact_person": "talha",
    "phone": "918104556147"
  },
  "original_bag_list": [
    19207348
  ],
  "payment_methods": {
    "COD": {
      "amount": 10000,
      "mode": "COD",
      "name": "COD",
      "collect_by": "fynd",
      "refund_by": "fynd",
      "meta": {
        "logo_url": {
          "large": "https://hdn-1.fynd.com/payment/cod.png",
          "small": "https://hdn-1.fynd.com/payment/cod.png"
        },
        "payment_id": "FY62F14B8501F18E8FD3",
        "merchant_code": "",
        "payment_gateway": "Fynd",
        "payment_identifier": "11"
      }
    }
  },
  "payment_type": "fynd",
  "payments": {
    "mode": "COD",
    "is_active": true,
    "display_priority": 1,
    "display_name": "Cash on Delivery",
    "id": 2,
    "logo": "https://hdn-1.fynd.com/payment/cod.png",
    "source": "Cash on Delivery",
    "payment_identifier": "11",
    "source_nickname": ""
  },
  "prices": {
    "amount_paid": 10000,
    "refund_amount": 10000,
    "price_marked": 10000,
    "cod_charges": 0,
    "discount": 0,
    "cashback_applied": 0,
    "delivery_charge": 0,
    "fynd_credits": 0,
    "cashback": 0,
    "price_effective": 10000,
    "refund_credit": 0,
    "value_of_good": 8928.57,
    "coupon_value": 0,
    "tax_collected_at_source": 0,
    "promotion_effective_discount": 0,
    "amount_paid_roundoff": 10000
  },
  "products": [
    {
      "id": 19207348,
      "display_name": "Bag",
      "entity_type": "bag",
      "type": "single",
      "status": {
        "is_returnable": true,
        "can_be_cancelled": true,
        "enable_tracking": false,
        "is_customer_return_allowed": true,
        "is_active": false
      },
      "financial_breakup": [
        {
          "price_effective": 10000,
          "discount": 0,
          "amount_paid": 10000,
          "coupon_effective_discount": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cod_charges": 0,
          "refund_credit": 0,
          "cashback": 0,
          "refund_amount": 10000,
          "added_to_fynd_cash": false,
          "cashback_applied": 0,
          "gst_tax_percentage": 12,
          "value_of_good": 8928.57,
          "price_marked": 10000,
          "transfer_price": 0,
          "brand_calculated_amount": 10000,
          "tax_collected_at_source": 0,
          "tcs_percentage": 0,
          "promotion_effective_discount": 0,
          "coupon_value": 0,
          "amount_paid_roundoff": 10000,
          "size": "S",
          "total_units": 1,
          "hsn_code": "61091000",
          "identifiers": {
            "sku_code": "MT-100 WHITE_S"
          },
          "item_name": "White Printed T-Shirt",
          "gst_fee": 1071.43,
          "gst_tag": "IGST"
        }
      ],
      "bag_id": 19207348,
      "bag_update_time": 1659980745.2105737,
      "current_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": 1660000545,
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        }
      },
      "bag_status": [
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 89,
          "store_id": 10182,
          "state_type": "operational",
          "status": "pending",
          "shipment_id": "16599806855311914452",
          "id": 120514809,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 89,
            "display_name": "Pending",
            "notify_customer": true,
            "app_display_name": "Pending",
            "state_type": "operational",
            "app_state_name": "pending",
            "name": "pending",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:14:46+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000486,
          "state_id": 1,
          "store_id": 10182,
          "state_type": "operational",
          "status": "placed",
          "shipment_id": "16599806855311914452",
          "id": 120514810,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 1,
            "display_name": "Placed",
            "notify_customer": true,
            "app_display_name": "Processing",
            "state_type": "operational",
            "app_state_name": "processing",
            "name": "placed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:14+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000514,
          "state_id": 2,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_confirmed",
          "shipment_id": "16599806855311914452",
          "id": 120514842,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 2,
            "display_name": "Confirmed",
            "notify_customer": false,
            "app_display_name": "Confirmed",
            "state_type": "operational",
            "app_state_name": "confirmed",
            "name": "bag_confirmed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3n"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 91,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_invoiced",
          "shipment_id": "16599806855311914452",
          "id": 120514845,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 91,
            "display_name": "Bag Invoiced",
            "notify_customer": false,
            "app_display_name": "Bag Invoiced",
            "state_type": "operational",
            "app_state_name": "bag_invoiced",
            "name": "bag_invoiced",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:20+00:00",
          "delivery_partner_id": null,
          "bag_id": 19207348,
          "delivery_awb_number": null,
          "updated_at": 1660000520,
          "state_id": 113,
          "store_id": 10182,
          "state_type": "operational",
          "status": "ready_for_dp_assignment",
          "shipment_id": "16599806855311914452",
          "id": 120514846,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 113,
            "display_name": "Ready For Dp Assignment",
            "notify_customer": false,
            "app_display_name": "Ready For Dp Assignment",
            "state_type": "operational",
            "app_state_name": "ready_for_dp_assignment",
            "name": "ready_for_dp_assignment",
            "is_active": true,
            "app_facing": false,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:23+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000523,
          "state_id": 7,
          "store_id": 10182,
          "state_type": "operational",
          "status": "dp_assigned",
          "shipment_id": "16599806855311914452",
          "id": 120514848,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 7,
            "display_name": "DP Assigned",
            "notify_customer": false,
            "app_display_name": "DP Assigned",
            "state_type": "operational",
            "app_state_name": "dp_assigned",
            "name": "dp_assigned",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": []
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 8,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_packed",
          "shipment_id": "16599806855311914452",
          "id": 120514898,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 8,
            "display_name": "Bag Packed",
            "notify_customer": true,
            "app_display_name": "Bag Packed",
            "state_type": "operational",
            "app_state_name": "bag_packed",
            "name": "bag_packed",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "missed_state_ingestion",
              "display_name": "Missed state is ingested",
              "id": 162,
              "state": "missed_state",
              "text": "Missed state is ingested"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:33+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000533,
          "state_id": 12,
          "store_id": 10182,
          "state_type": "operational",
          "status": "bag_picked",
          "shipment_id": "16599806855311914452",
          "id": 120514899,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 12,
            "display_name": "In Transit",
            "notify_customer": false,
            "app_display_name": "In Transit",
            "state_type": "operational",
            "app_state_name": "in_transit",
            "name": "bag_picked",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        },
        {
          "created_at": "2022-08-08T23:15:45+00:00",
          "delivery_partner_id": 22,
          "bag_id": 19207348,
          "delivery_awb_number": "4982512202351",
          "updated_at": 1660000545,
          "state_id": 14,
          "store_id": 10182,
          "state_type": "operational",
          "status": "delivery_done",
          "shipment_id": "16599806855311914452",
          "id": 120514917,
          "kafka_sync": false,
          "bag_state_mapper": {
            "id": 14,
            "display_name": "Delivery Done",
            "notify_customer": true,
            "app_display_name": "Delivered",
            "state_type": "operational",
            "app_state_name": "delivered",
            "name": "delivery_done",
            "is_active": true,
            "app_facing": true,
            "journey_type": "forward"
          },
          "reasons": [
            {
              "slug": "others",
              "display_name": "Others",
              "id": 90,
              "state": "bag_confirmed",
              "text": "FY62F14B8501F18E8FD3"
            }
          ]
        }
      ],
      "item": {
        "brand": "play clan",
        "can_return": true,
        "id": 95944,
        "webstore_product_url": null,
        "last_updated_at": 1660000486,
        "slug_key": "play-clan-white-printed-t-shirt-387",
        "attributes": {
          "color": "White",
          "gender": [
            "Men"
          ],
          "season": "SS16",
          "pattern": "Printed",
          "essential": "Yes",
          "brand_name": "play clan",
          "net-quantity": "1 U",
          "marketer-name": "Fynd",
          "primary_color": "White",
          "sleeve_length": "Short",
          "marketer-address": "Fynd",
          "primary_material": "Others",
          "primary_color_hex": "FFFFFF"
        },
        "meta": {
          "departments": [
            21
          ]
        },
        "gender": null,
        "l3_category": 192,
        "color": null,
        "can_cancel": true,
        "l3_category_name": "T-Shirts",
        "l1_category": [
          "Clothing"
        ],
        "brand_id": 85,
        "branch_url": "http://go.fyndi.ng/iSyg/dXGX4QXldy",
        "l2_category": [
          "Polos & T-Shirts"
        ],
        "name": "White Printed T-Shirt",
        "code": "MT-100 WHITE",
        "department_id": 21,
        "size": "S",
        "image": [
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/1.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/2.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/3.jpg",
          "https://hdn-1.fynd.com/media/pictures/tagged_items/270x0/85_MT-100 WHITE/4.jpg"
        ]
      },
      "reasons": [
        {
          "slug": "others",
          "display_name": "Others",
          "id": 90,
          "state": "bag_confirmed",
          "text": "FY62F14B8501F18E8FD3",
          "bag_id": 19207348
        }
      ],
      "article": {
        "identifiers": {
          "sku_code": "MT-100 WHITE_S"
        },
        "esp_modified": false,
        "size": "S",
        "code": "",
        "raw_meta": null,
        "set": {},
        "is_set": false,
        "seller_identifier": "MT-100 WHITE_S",
        "return_config": {
          "time": 30,
          "unit": "days",
          "returnable": true
        },
        "_id": "5f8a4751d2f36f00014ff8ed",
        "uid": "5f8a4751d2f36f00014ff8ed",
        "child_details": {}
      },
      "journey_type": "forward",
      "current_operational_status": {
        "created_at": "2022-08-08T23:15:45+00:00",
        "delivery_partner_id": 22,
        "bag_id": 19207348,
        "delivery_awb_number": "4982512202351",
        "updated_at": "2022-08-08T23:15:45+00:00",
        "state_id": 14,
        "store_id": 10182,
        "state_type": "operational",
        "status": "delivery_done",
        "shipment_id": "16599806855311914452",
        "id": 120514917,
        "kafka_sync": false,
        "bag_state_mapper": {
          "id": 14,
          "display_name": "Delivery Done",
          "notify_customer": true,
          "app_display_name": "Delivered",
          "state_type": "operational",
          "app_state_name": "delivered",
          "name": "delivery_done",
          "is_active": true,
          "app_facing": true,
          "journey_type": "forward"
        },
        "reasons": [
          {
            "slug": "others",
            "display_name": "Others",
            "id": 90,
            "state": "bag_confirmed",
            "text": "FY62F14B8501F18E8FD3"
          }
        ]
      },
      "dates": {
        "order_created": "2022-08-08T23:14:45+00:00",
        "delivery_date": "2022-08-08T23:15:45+00:00"
      },
      "prices": {
        "price_effective": 10000,
        "discount": 0,
        "amount_paid": 10000,
        "coupon_effective_discount": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cod_charges": 0,
        "refund_credit": 0,
        "cashback": 0,
        "refund_amount": 10000,
        "added_to_fynd_cash": false,
        "cashback_applied": 0,
        "gst_tax_percentage": 12,
        "value_of_good": 8928.57,
        "price_marked": 10000,
        "transfer_price": 0,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "tcs_percentage": 0,
        "promotion_effective_discount": 0,
        "coupon_value": 0,
        "amount_paid_roundoff": 10000
      },
      "payment_methods": {
        "COD": {
          "amount": 10000
        }
      },
      "gst_details": {
        "gstin_code": "null",
        "gst_tag": "IGST",
        "hsn_code": "61091000",
        "value_of_good": 8928.57,
        "gst_tax_percentage": 12,
        "is_default_hsn_code": false,
        "brand_calculated_amount": 10000,
        "tax_collected_at_source": 0,
        "hsn_code_id": "6277837c5e4c6fdbc8be3e93",
        "gst_fee": 1071.43,
        "igst_tax_percentage": 12,
        "sgst_tax_percentage": 0,
        "cgst_tax_percentage": 0,
        "igst_gst_fee": 1071.43,
        "cgst_gst_fee": "0",
        "sgst_gst_fee": "0"
      },
      "brand": {
        "credit_note_allowed": false,
        "id": 85,
        "script_last_ran": null,
        "pickup_location": null,
        "invoice_prefix": "pc",
        "brand_name": "play clan",
        "is_virtual_invoice": false,
        "created_on": 1452571237,
        "modified_on": 1623871060,
        "company": 61,
        "logo": "https://hdn-1.fynd.com/brands/pictures/square-logo/original/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
        "credit_note_expiry_days": null,
        "start_date": null
      },
      "order_integration_id": "5efd7e53cfdf28620d3f0ce3",
      "affiliate_bag_details": {
        "affiliate_bag_id": "19207348",
        "affiliate_order_id": "FY62F14B8501F18E8FD3",
        "affiliate_meta": {
          "fynd": {
            "fulfilment_identifier": "pulse"
          },
          "channel_shipment_id": null,
          "channel_order_id": null,
          "due_date": null,
          "is_priority": false,
          "box_type": null,
          "coupon_code": null,
          "size_level_total_qty": 924,
          "loyalty_discount": 0,
          "employee_discount": 0
        },
        "loyalty_discount": 0,
        "employee_discount": 0
      },
      "meta": {},
      "applied_promos": []
    }
  ],
  "qc_required": null,
  "requested_dp_conf": {
    "awb_type": "express",
    "exclude_dps": [
      27,
      29
    ],
    "ewbn": null,
    "id": 22,
    "is_dp_assigned_manually": true
  },
  "restore_coupon": false,
  "restore_promos": {},
  "rto_address": {
    "store_address_json": {
      "area": "",
      "city": "MUMBAI SUBURBAN",
      "email": "javedkazi@gofynd.com",
      "phone": "918286865180",
      "state": "MAHARASHTRA",
      "country": "INDIA",
      "pincode": "400093",
      "version": "1.0",
      "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
      "address2": "",
      "landmark": "Opposite MIDC police station",
      "latitude": 19.1174798,
      "longitude": 72.8691603,
      "created_at": "2022-05-24 18:35:09",
      "updated_at": "2022-05-24 18:35:09",
      "address_type": "store",
      "contact_person": "Javed",
      "address_category": "store"
    },
    "name": "Fuschia",
    "longitude": 72.8292187,
    "company_id": 61,
    "location_type": "mall",
    "latitude": 19.0551125,
    "id": 10182,
    "code": "FFSPS",
    "address1": "WEWORK, 1ST FLOOR, VIJAY DIAMOND, CROSS ROAD B KONDIVITA, OPPOSITE SBI BANK, ANDHERI EAST",
    "address2": "",
    "city": "MUMBAI SUBURBAN",
    "state": "MAHARASHTRA",
    "country": "INDIA",
    "pincode": "400093",
    "store_email": "javedkazi@gofynd.com",
    "contact_person": "Javed",
    "phone": "918286865180"
  },
  "search_key": {
    "shipment_id": "914452",
    "order_id": "8E8FD3"
  },
  "shipment": {
    "type": "shipment",
    "tags": [
      "bag"
    ],
    "billing_address_json": {
      "area": "Bhagyoday Society",
      "city": "Palanpur",
      "email": "",
      "phone": "7621937989",
      "state": "Gujarat",
      "country": "India",
      "pincode": "385001",
      "version": "1.0",
      "address1": "11",
      "address2": "",
      "landmark": "mansarovar road",
      "latitude": 24.1724338,
      "longitude": 72.434581,
      "created_at": "2022-08-08 23:14:45",
      "updated_at": "2022-08-08 23:14:45",
      "address_type": "home",
      "contact_person": "Rahul",
      "address_category": "billing"
    },
    "id": "16599806855311914452",
    "previous_shipment_id": null,
    "meta": {
      "dp_id": "7",
      "weight": 250,
      "external": {},
      "formatted": {
        "max": "Mon, 15 Aug",
        "min": "Sat, 13 Aug"
      },
      "timestamp": {
        "max": 1660585474,
        "min": 1660412674
      },
      "bag_weight": {
        "19207348": 250
      },
      "debug_info": {
        "stormbreaker_uuid": "06647bed-59ec-4f36-ad92-3057f991883f"
      },
      "dp_options": {
        "7": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 2,
          "operations": [
            "inter_city"
          ],
          "r_priority": 1,
          "fm_priority": 2,
          "lm_priority": 2,
          "payment_mode": "all",
          "rvp_priority": 1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "7"
        },
        "29": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 4,
          "operations": [
            "inter_city"
          ],
          "r_priority": 3,
          "fm_priority": 4,
          "lm_priority": 4,
          "payment_mode": "all",
          "rvp_priority": 3,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "29"
        },
        "36": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 6,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 6,
          "lm_priority": 6,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "36"
        },
        "37": {
          "area_code": {
            "to_pincode": null,
            "from_pincode": null
          },
          "f_priority": 7,
          "operations": [
            "inter_city"
          ],
          "r_priority": -1,
          "fm_priority": 7,
          "lm_priority": 7,
          "payment_mode": "all",
          "rvp_priority": -1,
          "assign_dp_from_sb": true,
          "external_account_id": null,
          "internal_account_id": "37"
        }
      },
      "order_type": null,
      "dp_sort_key": "fm_priority",
      "ewaybill_info": {},
      "packaging_name": "POLYB_M_1411P5",
      "assign_dp_from_sb": true,
      "same_store_available": false,
      "fulfilment_priority_text": null,
      "store_invoice_updated_date": "2022-08-08T23:15:20+00:00",
      "auto_trigger_dp_assignment_ACF": true
    },
    "fynd_order_id": "FY62F14B8501F18E8FD3",
    "delivery_awb_number": "4982512202351",
    "lock_status": "",
    "pdf_links": {
      "label_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a4.pdf",
      "label_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_a6.pdf",
      "label_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_label_pos.pdf",
      "invoice_a4": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a4.pdf",
      "invoice_a6": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_a6.pdf",
      "label_type": "fynd",
      "invoice_pos": "https://fynd-recon-reports-mumbai.s3.ap-south-1.amazonaws.com/invoice_labels%2F16599806855311914452_invoice_pos.pdf",
      "invoice_type": "fynd"
    },
    "parent_type": null,
    "store_invoice_id": "1659980720191361",
    "delivery_address_json": {
      "area": "Bhagyoday Society",
      "city": "Palanpur",
      "email": "",
      "phone": "7621937989",
      "state": "Gujarat",
      "country": "India",
      "pincode": "385001",
      "version": "1.0",
      "address1": "11",
      "address2": "",
      "landmark": "mansarovar road",
      "latitude": 24.1724338,
      "longitude": 72.434581,
      "created_at": "2022-08-08T23:14:45+00:00",
      "updated_at": "2022-08-08T23:14:45+00:00",
      "address_type": "home",
      "contact_person": "Rahul",
      "address_category": "delivery",
      "name": "Rahul",
      "address": "11"
    },
    "created_at": 1660000486,
    "hand_over_contact_json": {
      "email": "",
      "phone": "7621937989",
      "version": "1.0",
      "created_at": "2022-08-08 23:14:45",
      "updated_at": "2022-08-08 23:14:45",
      "contact_person": "Rahul"
    },
    "parent_id": "",
    "is_active": true,
    "affiliate_id": "5dd3ce1f1662684aa7019f1e",
    "affiliate_shipment_id": "16599806855311914452",
    "fulfilment_priority": 10,
    "credit_note_id": null,
    "eway_bill_id": null,
    "packaging_type": "POLYB_M_1411P5"
  },
  "shipment_details": {
    "dp_id": "7",
    "dp_options": {
      "7": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 2,
        "operations": [
          "inter_city"
        ],
        "r_priority": 1,
        "fm_priority": 2,
        "lm_priority": 2,
        "payment_mode": "all",
        "rvp_priority": 1,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "7"
      },
      "29": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 4,
        "operations": [
          "inter_city"
        ],
        "r_priority": 3,
        "fm_priority": 4,
        "lm_priority": 4,
        "payment_mode": "all",
        "rvp_priority": 3,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "29"
      },
      "36": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 6,
        "operations": [
          "inter_city"
        ],
        "r_priority": -1,
        "fm_priority": 6,
        "lm_priority": 6,
        "payment_mode": "all",
        "rvp_priority": -1,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "36"
      },
      "37": {
        "area_code": {
          "to_pincode": null,
          "from_pincode": null
        },
        "f_priority": 7,
        "operations": [
          "inter_city"
        ],
        "r_priority": -1,
        "fm_priority": 7,
        "lm_priority": 7,
        "payment_mode": "all",
        "rvp_priority": -1,
        "assign_dp_from_sb": true,
        "external_account_id": null,
        "internal_account_id": "37"
      }
    }
  },
  "shipment_gst": {
    "value_of_good": 8928.57,
    "gst_fee": 1071.43,
    "brand_calculated_amount": 10000,
    "tax_collected_at_source": 0,
    "gstin_code": "null"
  },
  "shipment_quantity": 1,
  "shipment_status": {
    "created_at": 1660000545,
    "shipment_id": "16599806855311914452",
    "status": "delivery_done",
    "bag_list": [
      "19207348"
    ],
    "id": 78707677,
    "current_shipment_status": "delivery_done",
    "status_created_at": 1660000545
  },
  "shipment_status_history": [
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "shipment_id": "16599806855311914452",
      "status": "pending",
      "bag_list": [
        "19207348"
      ],
      "id": 78707571
    },
    {
      "created_at": "2022-08-08T23:14:46+00:00",
      "shipment_id": "16599806855311914452",
      "status": "placed",
      "bag_list": [
        "19207348"
      ],
      "id": 78707572
    },
    {
      "created_at": "2022-08-08T23:15:12+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_confirmed",
      "bag_list": [
        "19207348"
      ],
      "id": 78707602
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_invoiced",
      "bag_list": [
        "19207348"
      ],
      "id": 78707605
    },
    {
      "created_at": "2022-08-08T23:15:20+00:00",
      "shipment_id": "16599806855311914452",
      "status": "ready_for_dp_assignment",
      "bag_list": [
        "19207348"
      ],
      "id": 78707606
    },
    {
      "created_at": "2022-08-08T23:15:23+00:00",
      "shipment_id": "16599806855311914452",
      "status": "dp_assigned",
      "bag_list": [
        "19207348"
      ],
      "id": 78707608
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_packed",
      "bag_list": [
        "19207348"
      ],
      "id": 78707658
    },
    {
      "created_at": "2022-08-08T23:15:33+00:00",
      "shipment_id": "16599806855311914452",
      "status": "bag_picked",
      "bag_list": [
        "19207348"
      ],
      "id": 78707659
    },
    {
      "created_at": "2022-08-08T23:15:45+00:00",
      "shipment_id": "16599806855311914452",
      "status": "delivery_done",
      "bag_list": [
        "19207348"
      ],
      "id": 78707677,
      "current_shipment_status": "delivery_done",
      "status_created_at": "2022-08-08T23:15:45+00:00"
    }
  ],
  "shipment_update_time": 1659980745.2105737,
  "shipment_value": 10000,
  "tags": [
    "bag"
  ],
  "total_shipment_bags": 1,
  "total_shipments_in_order": 1,
  "transaction_type": "shipment",
  "user": {
    "email": "rahulrathod@gofynd.com",
    "user_oid": "000000000000000014402534",
    "last_name": "Rathod",
    "gender": "male",
    "mongo_user_id": "14402534",
    "mobile": "7621937989",
    "first_name": "Rahul",
    "id": 17952150,
    "is_anonymous_user": false
  },
  "weight": {
    "value": 250,
    "unit": "gram"
  },
  "id": "62f14b93af6c692530bb0df6"
}
```
</details>









---



### Schemas

 
 
 #### [GetActivityStatus](#GetActivityStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [ActivityHistory](#ActivityHistory) |  no  |  |

---


 
 
 #### [ActivityHistory](#ActivityHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdat | String? |  yes  |  |
 | message | String? |  yes  |  |
 | type | String? |  yes  |  |
 | user | String? |  yes  |  |

---


 
 
 #### [CanBreakRequestBody](#CanBreakRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentIds | [String] |  no  |  |

---


 
 
 #### [CanBreakResponse](#CanBreakResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool |  no  |  |
 | validActions | [String: Any] |  no  |  |

---


 
 
 #### [FailedOrders](#FailedOrders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orders | [FailOrder](#FailOrder) |  no  |  |

---


 
 
 #### [FailOrder](#FailOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | id | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | marketplaceOrder | [MarketplaceOrder](#MarketplaceOrder)? |  yes  |  |
 | marketplaceOrderId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | appId | String? |  yes  |  |
 | marketplace | String? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [MarketplaceOrder](#MarketplaceOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderStatusUrl | String? |  yes  |  |
 | adminGraphqlApiId | String? |  yes  |  |
 | email | String? |  yes  |  |
 | test | Bool? |  yes  |  |
 | note | String? |  yes  |  |
 | totalPrice | String? |  yes  |  |
 | appId | Int? |  yes  |  |
 | totalDiscountsSet | [TotalDiscountsSet](#TotalDiscountsSet)? |  yes  |  |
 | totalPriceSet | [TotalPriceSet](#TotalPriceSet)? |  yes  |  |
 | totalTaxSet | [TotalTaxSet](#TotalTaxSet)? |  yes  |  |
 | gateway | String? |  yes  |  |
 | name | String? |  yes  |  |
 | subtotalPriceSet | [SubtotalPriceSet](#SubtotalPriceSet)? |  yes  |  |
 | number | Int? |  yes  |  |
 | buyerAcceptsMarketing | Bool? |  yes  |  |
 | contactEmail | String? |  yes  |  |
 | token | String? |  yes  |  |
 | sourceName | String? |  yes  |  |
 | paymentGatewayNames | [[String: Any]]? |  yes  |  |
 | presentmentCurrency | String? |  yes  |  |
 | subtotalPrice | String? |  yes  |  |
 | processedAt | String? |  yes  |  |
 | orderNumber | Int? |  yes  |  |
 | totalTipReceived | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | confirmed | Bool? |  yes  |  |
 | currency | String? |  yes  |  |
 | totalLineItemsPrice | String? |  yes  |  |
 | lineItems | [LineItems](#LineItems)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | totalWeight | Int? |  yes  |  |
 | billingAddress | [BillingAddress](#BillingAddress)? |  yes  |  |
 | totalShippingPriceSet | [TotalShippingPriceSet](#TotalShippingPriceSet)? |  yes  |  |
 | customer | [Customer](#Customer)? |  yes  |  |
 | totalDiscounts | String? |  yes  |  |
 | totalLineItemsPriceSet | [TotalLineItemsPriceSet](#TotalLineItemsPriceSet)? |  yes  |  |
 | tags | String? |  yes  |  |
 | totalPriceUsd | String? |  yes  |  |
 | userId | Int? |  yes  |  |
 | totalTax | String? |  yes  |  |
 | processingMethod | String? |  yes  |  |
 | shippingAddress | [OrderShippingAddress](#OrderShippingAddress)? |  yes  |  |
 | taxesIncluded | Bool? |  yes  |  |
 | financialStatus | String? |  yes  |  |

---


 
 
 #### [TotalDiscountsSet](#TotalDiscountsSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | presentmentMoney | [PresentmentMoney](#PresentmentMoney)? |  yes  |  |
 | shopMoney | [ShopMoney](#ShopMoney)? |  yes  |  |

---


 
 
 #### [PresentmentMoney](#PresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [ShopMoney](#ShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalPriceSet](#TotalPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalPriceSetShopMoney](#TotalPriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [TotalPriceSetPresentmentMoney](#TotalPriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [TotalPriceSetShopMoney](#TotalPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalPriceSetPresentmentMoney](#TotalPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalTaxSet](#TotalTaxSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalTaxSetShopMoney](#TotalTaxSetShopMoney)? |  yes  |  |
 | presentmentMoney | [TotalTaxSetPresentmentMoney](#TotalTaxSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [TotalTaxSetShopMoney](#TotalTaxSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalTaxSetPresentmentMoney](#TotalTaxSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [SubtotalPriceSet](#SubtotalPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [SubtotalPriceSetShopMoney](#SubtotalPriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [SubtotalPriceSetPresentmentMoney](#SubtotalPriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [SubtotalPriceSetShopMoney](#SubtotalPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [SubtotalPriceSetPresentmentMoney](#SubtotalPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [LineItems](#LineItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sku | String? |  yes  |  |
 | fulfillableQuantity | Int? |  yes  |  |
 | grams | Int? |  yes  |  |
 | totalDiscount | String? |  yes  |  |
 | article | [LineItemsArticle](#LineItemsArticle)? |  yes  |  |
 | title | String? |  yes  |  |
 | variantInventoryManagement | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | variantId | Int? |  yes  |  |
 | variantTitle | String? |  yes  |  |
 | productExists | Bool? |  yes  |  |
 | price | String? |  yes  |  |
 | adminGraphqlApiId | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | vendor | String? |  yes  |  |
 | fulfillmentService | String? |  yes  |  |
 | taxable | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | productId | Int? |  yes  |  |
 | priceSet | [PriceSet](#PriceSet)? |  yes  |  |
 | taxLines | [TaxLines](#TaxLines)? |  yes  |  |
 | requiresShipping | Bool? |  yes  |  |
 | giftCard | Bool? |  yes  |  |
 | totalDiscountSet | [TotalDiscountSet](#TotalDiscountSet)? |  yes  |  |

---


 
 
 #### [LineItemsArticle](#LineItemsArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | quantities | [Quantities](#Quantities)? |  yes  |  |
 | oldArticleUid | String? |  yes  |  |
 | totalQuantity | Int? |  yes  |  |
 | manufacturer | [Manufacturer](#Manufacturer)? |  yes  |  |
 | price | [ArticlePrice](#ArticlePrice)? |  yes  |  |
 | trackInventory | Bool? |  yes  |  |
 | company | [Company](#Company)? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | dateMeta | [FailOrderDateMeta](#FailOrderDateMeta)? |  yes  |  |
 | fragile | Bool? |  yes  |  |
 | marketplaceIdentifiers | [MarketplaceIdentifiers](#MarketplaceIdentifiers)? |  yes  |  |
 | size | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | dimension | [Dimension](#Dimension)? |  yes  |  |
 | weight | [Weight](#Weight)? |  yes  |  |
 | store | [Store](#Store)? |  yes  |  |
 | meta | [ArticleMeta](#ArticleMeta)? |  yes  |  |
 | uid | String? |  yes  |  |
 | brand | [ArticleBrand](#ArticleBrand)? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | fyndArticleCode | String? |  yes  |  |
 | id | String? |  yes  |  |
 | identifier | [LineItemsArticleIdentifier](#LineItemsArticleIdentifier)? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | fyndItemCode | String? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |

---


 
 
 #### [Quantities](#Quantities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notAvailable | [NotAvailable](#NotAvailable)? |  yes  |  |
 | sellable | [Sellable](#Sellable)? |  yes  |  |
 | orderCommitted | [OrderCommitted](#OrderCommitted)? |  yes  |  |
 | damaged | [Damaged](#Damaged)? |  yes  |  |

---


 
 
 #### [NotAvailable](#NotAvailable)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [Sellable](#Sellable)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [OrderCommitted](#OrderCommitted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [Damaged](#Damaged)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | count | Int? |  yes  |  |

---


 
 
 #### [Manufacturer](#Manufacturer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  |  |
 | address | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ArticlePrice](#ArticlePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | Int? |  yes  |  |
 | currency | String? |  yes  |  |
 | effective | Int? |  yes  |  |
 | transfer | Int? |  yes  |  |

---


 
 
 #### [Company](#Company)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | companyType | String? |  yes  |  |
 | businessType | String? |  yes  |  |
 | companyName | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | panNo | String? |  yes  |  |
 | returnAllowed | Bool? |  yes  |  |
 | meta | String? |  yes  |  |
 | exchangeAllowed | Bool? |  yes  |  |
 | agreementStartDate | String? |  yes  |  |
 | exchangeWithinDays | Int? |  yes  |  |
 | paymentProcesingCharge | Int? |  yes  |  |
 | fyndAFitAvailable | Bool? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | returnWithinDays | Int? |  yes  |  |

---


 
 
 #### [FailOrderDateMeta](#FailOrderDateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addedOnStore | String? |  yes  |  |
 | inventoryUpdatedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [MarketplaceIdentifiers](#MarketplaceIdentifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tatacliqLuxury | [TatacliqLuxury](#TatacliqLuxury)? |  yes  |  |

---


 
 
 #### [TatacliqLuxury](#TatacliqLuxury)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sku | String? |  yes  |  |

---


 
 
 #### [Dimension](#Dimension)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | height | Int? |  yes  |  |
 | width | Int? |  yes  |  |
 | unit | String? |  yes  |  |
 | length | Int? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [Weight](#Weight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | shipping | Int? |  yes  |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |

---


 
 
 #### [ArticleMeta](#ArticleMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | service | String? |  yes  |  |

---


 
 
 #### [ArticleBrand](#ArticleBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [LineItemsArticleIdentifier](#LineItemsArticleIdentifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | skuCode | String? |  yes  |  |

---


 
 
 #### [PriceSet](#PriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [PriceSetShopMoney](#PriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [PriceSetPresentmentMoney](#PriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [PriceSetShopMoney](#PriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [PriceSetPresentmentMoney](#PriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TaxLines](#TaxLines)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | price | String? |  yes  |  |
 | rate | Int? |  yes  |  |
 | priceSet | [TaxLinesPriceSet](#TaxLinesPriceSet)? |  yes  |  |

---


 
 
 #### [TaxLinesPriceSet](#TaxLinesPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TaxLinesPriceSetShopMoney](#TaxLinesPriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [TaxLinesPriceSetPresentmentMoney](#TaxLinesPriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [TaxLinesPriceSetShopMoney](#TaxLinesPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TaxLinesPriceSetPresentmentMoney](#TaxLinesPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyCode | String? |  yes  |  |
 | amount | String? |  yes  |  |

---


 
 
 #### [TotalDiscountSet](#TotalDiscountSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | presentmentMoney | [TotalDiscountSetPresentmentMoney](#TotalDiscountSetPresentmentMoney)? |  yes  |  |
 | shopMoney | [TotalDiscountSetShopMoney](#TotalDiscountSetShopMoney)? |  yes  |  |

---


 
 
 #### [TotalDiscountSetPresentmentMoney](#TotalDiscountSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalDiscountSetShopMoney](#TotalDiscountSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [BillingAddress](#BillingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | zip | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | provinceCode | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | company | String? |  yes  |  |
 | name | String? |  yes  |  |
 | country | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | province | String? |  yes  |  |

---


 
 
 #### [TotalShippingPriceSet](#TotalShippingPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalShippingPriceSetShopMoney](#TotalShippingPriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [TotalShippingPriceSetPresentmentMoney](#TotalShippingPriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [TotalShippingPriceSetShopMoney](#TotalShippingPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalShippingPriceSetPresentmentMoney](#TotalShippingPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [Customer](#Customer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdAt | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | lastName | String? |  yes  |  |
 | state | String? |  yes  |  |
 | lastOrderId | Int? |  yes  |  |
 | note | String? |  yes  |  |
 | verifiedEmail | Bool? |  yes  |  |
 | phone | String? |  yes  |  |
 | acceptsMarketing | Bool? |  yes  |  |
 | firstName | String? |  yes  |  |
 | tags | String? |  yes  |  |
 | lastOrderName | String? |  yes  |  |
 | ordersCount | Int? |  yes  |  |
 | totalSpent | String? |  yes  |  |
 | taxExempt | Bool? |  yes  |  |
 | currency | String? |  yes  |  |
 | acceptsMarketingUpdatedAt | String? |  yes  |  |
 | email | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | adminGraphqlApiId | String? |  yes  |  |
 | defaultAddress | [DefaultAddress](#DefaultAddress)? |  yes  |  |

---


 
 
 #### [DefaultAddress](#DefaultAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lastName | String? |  yes  |  |
 | name | String? |  yes  |  |
 | provinceCode | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | id | Int? |  yes  |  |
 | customerId | Int? |  yes  |  |
 | firstName | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | countryName | String? |  yes  |  |
 | company | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | province | String? |  yes  |  |
 | country | String? |  yes  |  |
 | zip | String? |  yes  |  |

---


 
 
 #### [TotalLineItemsPriceSet](#TotalLineItemsPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalLineItemsPriceSetShopMoney](#TotalLineItemsPriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [TotalLineItemsPriceSetPresentmentMoney](#TotalLineItemsPriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [TotalLineItemsPriceSetShopMoney](#TotalLineItemsPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalLineItemsPriceSetPresentmentMoney](#TotalLineItemsPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [OrderShippingAddress](#OrderShippingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String? |  yes  |  |
 | zip | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | country | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | provinceCode | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | province | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | city | String? |  yes  |  |
 | company | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [OrderListing](#OrderListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OrderItems](#OrderItems)] |  no  |  |
 | filters | [Filters](#Filters) |  no  |  |
 | nextOrderStatus | [String: Any] |  no  |  |
 | page | [PlatformOrderPage](#PlatformOrderPage) |  no  |  |
 | appliedFilters | [AppliedFilters](#AppliedFilters) |  no  |  |

---


 
 
 #### [OrderItems](#OrderItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo)? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | channel | [Channel](#Channel)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | [PlatformApplication](#PlatformApplication)? |  yes  |  |
 | shipments | [PlatformShipment](#PlatformShipment)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | totalShipmentsInOrder | Int? |  yes  |  |

---


 
 
 #### [PlatformOrderUserInfo](#PlatformOrderUserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | email | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | isAnonymousUser | Bool? |  yes  |  |
 | uid | Int? |  yes  |  |
 | avisUserId | String? |  yes  |  |

---


 
 
 #### [PlatformDeliveryAddress](#PlatformDeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | area | String? |  yes  |  |
 | state | String? |  yes  |  |
 | country | String? |  yes  |  |
 | version | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | city | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | name | String? |  yes  |  |
 | address | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | addressType | String? |  yes  |  |
 | email | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |

---


 
 
 #### [Channel](#Channel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [PlatformApplication](#PlatformApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |

---


 
 
 #### [PlatformShipment](#PlatformShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [PlatformShipmentStatus](#PlatformShipmentStatus)? |  yes  |  |
 | bags | [Bags](#Bags)? |  yes  |  |
 | prices | [ShipmentPrices](#ShipmentPrices)? |  yes  |  |
 | id | String? |  yes  |  |
 | gst | [ShipmentGst](#ShipmentGst)? |  yes  |  |
 | breakupValues | [ShipmentBreakupValues](#ShipmentBreakupValues)? |  yes  |  |
 | priority | Double? |  yes  |  |
 | priorityText | String? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | orderingChannel | String? |  yes  |  |
 | totalShipmentBags | Int? |  yes  |  |

---


 
 
 #### [PlatformShipmentStatus](#PlatformShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | bagList | [Int]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | status | String? |  yes  |  |
 | name | String? |  yes  |  |
 | progress | Int? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | currentShipmentStatus | String? |  yes  |  |
 | colorCode | String? |  yes  |  |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [BagItem](#BagItem)? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [BagItem](#BagItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | size | String? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | l2Category | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | code | String? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | attributes | [BagItemAttributes](#BagItemAttributes)? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | image | [String]? |  yes  |  |
 | brand | String? |  yes  |  |
 | lastUpdatedAt | String? |  yes  |  |

---


 
 
 #### [BagItemAttributes](#BagItemAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCode | String? |  yes  |  |
 | brandName | String? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |

---


 
 
 #### [ShipmentPrices](#ShipmentPrices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundAmount | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | addedToFyndCash | Bool? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |

---


 
 
 #### [ShipmentBreakupValues](#ShipmentBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | value | Double? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [Payments](#Payments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | source | String? |  yes  |  |
 | sourceNickname | String? |  yes  |  |
 | displayPriority | Int? |  yes  |  |
 | id | Int? |  yes  |  |
 | mode | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |

---


 
 
 #### [Filters](#Filters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | [Stage](#Stage)? |  yes  |  |
 | stages | [Stages](#Stages)? |  yes  |  |

---


 
 
 #### [Stage](#Stage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | filters | [StagesFilters](#StagesFilters)? |  yes  |  |

---


 
 
 #### [StagesFilters](#StagesFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |
 | options | [Options](#Options)? |  yes  |  |

---


 
 
 #### [Options](#Options)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [PlatformOrderPage](#PlatformOrderPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | next | String? |  yes  |  |
 | previous | String? |  yes  |  |
 | type | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | total | Int? |  yes  |  |
 | itemTotal | [ItemTotal](#ItemTotal)? |  yes  |  |

---


 
 
 #### [AppliedFilters](#AppliedFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String? |  yes  |  |
 | stores | [String]? |  yes  |  |
 | deploymentStores | [String]? |  yes  |  |
 | dp | [Int]? |  yes  |  |
 | fromDate | String? |  yes  |  |
 | toDate | String? |  yes  |  |

---


 
 
 #### [OrderDetails](#OrderDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OrderPicklistListing](#OrderPicklistListing)] |  no  |  |
 | page | [PlatformOrderPage](#PlatformOrderPage) |  no  |  |
 | filters | [Filters](#Filters) |  no  |  |
 | nextOrderStatus | [String: Any] |  no  |  |
 | appliedFilters | [AppliedFilters](#AppliedFilters) |  no  |  |

---


 
 
 #### [OrderDetailsItem](#OrderDetailsItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo)? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | channel | [Channel](#Channel)? |  yes  |  |
 | fyndstoreEmp | [String: Any]? |  yes  |  |
 | orderingStore | [String: Any]? |  yes  |  |
 | breakupValues | [PlatformBreakupValues](#PlatformBreakupValues)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | [PlatformApplication](#PlatformApplication)? |  yes  |  |
 | shipments | [PlatformShipmentDetails](#PlatformShipmentDetails)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | totalShipmentsInOrder | Int? |  yes  |  |
 | payments | [ItemsPayments](#ItemsPayments)? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |

---


 
 
 #### [PlatformBreakupValues](#PlatformBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | value | Double? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ArticleAssignment](#ArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | strategy | String? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [PlatformShipmentDetails](#PlatformShipmentDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [PlatformShipmentDetailsStatus](#PlatformShipmentDetailsStatus)? |  yes  |  |
 | bags | [BagsDetails](#BagsDetails)? |  yes  |  |
 | prices | [ShipmentPrices](#ShipmentPrices)? |  yes  |  |
 | breakupValues | [ShipmentBreakupValues](#ShipmentBreakupValues)? |  yes  |  |
 | id | String? |  yes  |  |
 | dpDetails | [DpDetails](#DpDetails)? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |
 | invoice | [ShipmentInvoice](#ShipmentInvoice)? |  yes  |  |
 | fulfillingStore | [PlatformFulfillingStore](#PlatformFulfillingStore)? |  yes  |  |
 | payments | [Payments](#Payments)? |  yes  |  |
 | gst | [ShipmentGst](#ShipmentGst)? |  yes  |  |
 | company | [Company](#Company)? |  yes  |  |
 | brand | [PlatformShipmentDetailsBrand](#PlatformShipmentDetailsBrand)? |  yes  |  |
 | coupon | [String: Any]? |  yes  |  |
 | orderSource | String? |  yes  |  |
 | isNotFyndSource | Bool? |  yes  |  |
 | canBreak | [String: Any]? |  yes  |  |
 | comment | String? |  yes  |  |
 | promise | [Promise](#Promise)? |  yes  |  |
 | trackingDetails | [ShipmentTrackingDetails](#ShipmentTrackingDetails)? |  yes  |  |
 | isFyndCoupon | Bool? |  yes  |  |
 | orderType | String? |  yes  |  |
 | totalShipmentBags | Int? |  yes  |  |
 | pod | [String: Any]? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | priority | Double? |  yes  |  |
 | priorityText | String? |  yes  |  |
 | orderingChannel | String? |  yes  |  |
 | creditNoteId | String? |  yes  |  |
 | autoTriggerDpAssignment | Bool? |  yes  |  |
 | packagingType | String? |  yes  |  |
 | dates | [ShipmentDates](#ShipmentDates)? |  yes  |  |

---


 
 
 #### [PlatformShipmentDetailsStatus](#PlatformShipmentDetailsStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | bagList | [Int]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | status | String? |  yes  |  |
 | name | String? |  yes  |  |
 | progress | Int? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | currentShipmentStatus | String? |  yes  |  |
 | colorCode | String? |  yes  |  |

---


 
 
 #### [BagsDetails](#BagsDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | financialBreakup | [[BagFinancialBreakup](#BagFinancialBreakup)]? |  yes  |  |
 | status | [BagCurrStatus](#BagCurrStatus)? |  yes  |  |
 | item | [BagItem](#BagItem)? |  yes  |  |
 | article | [BagArticle](#BagArticle)? |  yes  |  |
 | id | Int? |  yes  |  |
 | prices | [BagPrices](#BagPrices)? |  yes  |  |
 | gstDetails | [GstDetails](#GstDetails)? |  yes  |  |
 | breakupValues | [BagBreakupValues](#BagBreakupValues)? |  yes  |  |
 | updateTime | Int? |  yes  |  |
 | currentStatus | [BagCurrentStatus](#BagCurrentStatus)? |  yes  |  |
 | bagStatus | [BagStatus](#BagStatus)? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |

---


 
 
 #### [BagFinancialBreakup](#BagFinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | valueOfGood | Double? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | gstFee | String? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | size | String? |  yes  |  |
 | totalUnits | Int? |  yes  |  |
 | discount | Double? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | identifiers | [Identifiers](#Identifiers)? |  yes  |  |
 | itemName | String? |  yes  |  |
 | addedToFyndCash | Bool? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |

---


 
 
 #### [Identifiers](#Identifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String? |  yes  |  |

---


 
 
 #### [BagCurrStatus](#BagCurrStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enableTracking | Bool? |  yes  |  |
 | isCustomerReturnAllowed | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | isReturnable | Bool? |  yes  |  |
 | canBeCancelled | Bool? |  yes  |  |

---


 
 
 #### [BagArticle](#BagArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifiers | [ArticleIdentifiers](#ArticleIdentifiers)? |  yes  |  |
 | espModified | Bool? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | size | String? |  yes  |  |
 | code | String? |  yes  |  |
 | set | [Set](#Set)? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | returnConfig | [BagArticleReturnConfig](#BagArticleReturnConfig)? |  yes  |  |
 | id | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | childDetails | [String: Any]? |  yes  |  |

---


 
 
 #### [ArticleIdentifiers](#ArticleIdentifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String? |  yes  |  |

---


 
 
 #### [Set](#Set)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | quantity | Int? |  yes  |  |
 | sizeDistribution | [SetSizeDistribution](#SetSizeDistribution)? |  yes  |  |

---


 
 
 #### [SetSizeDistribution](#SetSizeDistribution)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizes | [Sizes](#Sizes)? |  yes  |  |

---


 
 
 #### [Sizes](#Sizes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String? |  yes  |  |
 | pieces | Int? |  yes  |  |

---


 
 
 #### [BagArticleReturnConfig](#BagArticleReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | time | Int? |  yes  |  |
 | unit | String? |  yes  |  |
 | returnable | Bool? |  yes  |  |

---


 
 
 #### [GstDetails](#GstDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Double? |  yes  |  |
 | gstFee | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |

---


 
 
 #### [BagBreakupValues](#BagBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | display | String? |  yes  |  |
 | value | Double? |  yes  |  |

---


 
 
 #### [BagCurrentStatus](#BagCurrentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper)? |  yes  |  |
 | status | String? |  yes  |  |
 | stateType | String? |  yes  |  |

---


 
 
 #### [BagStateMapper](#BagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appStateName | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | name | String? |  yes  |  |
 | appDisplayName | String? |  yes  |  |

---


 
 
 #### [BagStatus](#BagStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | stateType | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | bagStateMapper | [BagStatusBagStateMapper](#BagStatusBagStateMapper)? |  yes  |  |

---


 
 
 #### [BagStatusBagStateMapper](#BagStatusBagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | name | String? |  yes  |  |
 | appDisplayName | String? |  yes  |  |
 | appStateName | String? |  yes  |  |

---


 
 
 #### [BagPrices](#BagPrices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cashback | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | discount | Double? |  yes  |  |

---


 
 
 #### [DpDetails](#DpDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstTag | String? |  yes  |  |

---


 
 
 #### [ShipmentInvoice](#ShipmentInvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentType | String? |  yes  |  |
 | updatedDate | String? |  yes  |  |
 | invoiceUrl | String? |  yes  |  |
 | labelUrl | String? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | amountToCollect | Double? |  yes  |  |
 | rtoAddress | [RtoAddress](#RtoAddress)? |  yes  |  |

---


 
 
 #### [RtoAddress](#RtoAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | phone | String? |  yes  |  |
 | locationType | String? |  yes  |  |
 | storeAddressJson | [StoreAddressJson](#StoreAddressJson)? |  yes  |  |
 | code | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | state | String? |  yes  |  |
 | storeEmail | String? |  yes  |  |
 | address2 | String? |  yes  |  |

---


 
 
 #### [StoreAddressJson](#StoreAddressJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | area | String? |  yes  |  |
 | state | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | city | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | email | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | version | String? |  yes  |  |
 | landmark | String? |  yes  |  |

---


 
 
 #### [PlatformFulfillingStore](#PlatformFulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | packagingMaterialCount | Int? |  yes  |  |
 | locationType | String? |  yes  |  |
 | code | String? |  yes  |  |
 | city | String? |  yes  |  |
 | meta | [FulfillingStoreMeta](#FulfillingStoreMeta)? |  yes  |  |
 | name | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | address1 | String? |  yes  |  |
 | storeEmail | String? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | state | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | isEnabledForRecon | Bool? |  yes  |  |
 | fulfillmentChannel | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | pincode | String? |  yes  |  |
 | brandStoreTags | [String]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | storeAddressJson | [FulfillingStoreStoreAddressJson](#FulfillingStoreStoreAddressJson)? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | loginUsername | String? |  yes  |  |
 | country | String? |  yes  |  |

---


 
 
 #### [FulfillingStoreMeta](#FulfillingStoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | additionalContactDetails | [AdditionalContactDetails](#AdditionalContactDetails)? |  yes  |  |
 | documents | [Documents](#Documents)? |  yes  |  |
 | gstNumber | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | productReturnConfig | [ProductReturnConfig](#ProductReturnConfig)? |  yes  |  |
 | allowDpAssignmentFromFynd | Bool? |  yes  |  |
 | stage | String? |  yes  |  |
 | timing | [Timing](#Timing)? |  yes  |  |

---


 
 
 #### [AdditionalContactDetails](#AdditionalContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | [String]? |  yes  |  |

---


 
 
 #### [Documents](#Documents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gst | [Gst](#Gst)? |  yes  |  |

---


 
 
 #### [Gst](#Gst)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | legalName | String? |  yes  |  |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |
 | verified | Bool? |  yes  |  |

---


 
 
 #### [ProductReturnConfig](#ProductReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | onSameStore | Bool? |  yes  |  |

---


 
 
 #### [Timing](#Timing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opening | [Opening](#Opening)? |  yes  |  |
 | weekday | String? |  yes  |  |
 | open | Bool? |  yes  |  |
 | closing | [Closing](#Closing)? |  yes  |  |

---


 
 
 #### [Opening](#Opening)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minute | Int? |  yes  |  |
 | hour | Int? |  yes  |  |

---


 
 
 #### [Closing](#Closing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hour | Int? |  yes  |  |
 | minute | Int? |  yes  |  |

---


 
 
 #### [FulfillingStoreStoreAddressJson](#FulfillingStoreStoreAddressJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address2 | String? |  yes  |  |
 | area | String? |  yes  |  |
 | email | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | state | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | version | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | city | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |

---


 
 
 #### [ShipmentGst](#ShipmentGst)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | gstFee | Double? |  yes  |  |

---


 
 
 #### [PlatformShipmentDetailsBrand](#PlatformShipmentDetailsBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNoteAllowed | Bool? |  yes  |  |
 | brandName | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | isVirtualInvoice | Bool? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [Promise](#Promise)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | [Timestamp](#Timestamp)? |  yes  |  |

---


 
 
 #### [Timestamp](#Timestamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | String? |  yes  |  |
 | max | String? |  yes  |  |

---


 
 
 #### [ShipmentTrackingDetails](#ShipmentTrackingDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | time | String? |  yes  |  |
 | isPassed | Bool? |  yes  |  |
 | isCurrent | Bool? |  yes  |  |

---


 
 
 #### [ItemsPayments](#ItemsPayments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayPriority | Int? |  yes  |  |
 | id | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |
 | sourceNickname | String? |  yes  |  |
 | mode | String? |  yes  |  |
 | source | String? |  yes  |  |

---


 
 
 #### [PlatformOrderDetailsPage](#PlatformOrderDetailsPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | next | String? |  yes  |  |
 | previous | String? |  yes  |  |

---


 
 
 #### [ShipmentDates](#ShipmentDates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dueDate | String? |  yes  |  |

---


 
 
 #### [OrderLanesCount](#OrderLanesCount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stages | [[StageItem](#StageItem)] |  no  |  |

---


 
 
 #### [StageItem](#StageItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [UpdateOrderReprocessResponse](#UpdateOrderReprocessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |

---


 
 
 #### [PlatformOrderTrack](#PlatformOrderTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | requestId | String |  no  |  |
 | message | String |  no  |  |
 | mobile | String |  no  |  |
 | countryCode | String |  no  |  |
 | resendTimer | Int |  no  |  |
 | resendToken | String? |  yes  |  |

---


 
 
 #### [OrderPicklistListing](#OrderPicklistListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo)? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | channel | [Channel](#Channel)? |  yes  |  |
 | fyndstoreEmp | [String: Any]? |  yes  |  |
 | orderingStore | [String: Any]? |  yes  |  |
 | breakupValues | [PlatformBreakupValues](#PlatformBreakupValues)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | [PlatformApplication](#PlatformApplication)? |  yes  |  |
 | shipments | [PlatformShipmentDetails](#PlatformShipmentDetails)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | totalShipmentsInOrder | Int? |  yes  |  |
 | payments | [ItemsPayments](#ItemsPayments)? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |

---


 
 
 #### [Stages](#Stages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | filters | [StagesFilters](#StagesFilters)? |  yes  |  |

---


 
 
 #### [ItemTotal](#ItemTotal)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | new | Int? |  yes  |  |
 | processing | Int? |  yes  |  |
 | returns | Int? |  yes  |  |
 | all | Int? |  yes  |  |

---


 
 
 #### [GetPingResponse](#GetPingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ping | String |  no  |  |

---


 
 
 #### [GetShipmentAddressResponse](#GetShipmentAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | data | [DataShipmentAddress](#DataShipmentAddress) |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [DataShipmentAddress](#DataShipmentAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | city | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | area | String? |  yes  |  |
 | address | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | state | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | email | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [UpdateShipmentAddressRequest](#UpdateShipmentAddressRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | address | String |  no  |  |
 | pincode | String |  no  |  |
 | state | String |  no  |  |
 | addressType | String |  no  |  |
 | country | String |  no  |  |
 | name | String |  no  |  |
 | phone | String |  no  |  |
 | area | String |  no  |  |
 | landmark | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [UpdateShipmentAddressResponse](#UpdateShipmentAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [ShipmentTrackResponse](#ShipmentTrackResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagList | [[ShipmentTrackResponseBagListItem](#ShipmentTrackResponseBagListItem)] |  no  |  |
 | message | String |  no  |  |
 | orderValue | Int |  no  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItem](#ShipmentTrackResponseBagListItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enableTracking | Bool? |  yes  |  |
 | price | String? |  yes  |  |
 | timeSlot | String? |  yes  |  |
 | productName | String? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | orderDate | String? |  yes  |  |
 | isTryAtHome | Bool? |  yes  |  |
 | breakupValues | [[ShipmentTrackResponseBagListItemBreakValues](#ShipmentTrackResponseBagListItemBreakValues)]? |  yes  |  |
 | statuses | [[ShipmentTrackResponseBagListItemStatuses](#ShipmentTrackResponseBagListItemStatuses)]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | bagId | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | size | String? |  yes  |  |
 | paymentModeSource | String? |  yes  |  |
 | dpDetails | [ShipmentTrackResponseBagListItemDpDetails](#ShipmentTrackResponseBagListItemDpDetails)? |  yes  |  |
 | productId | Int? |  yes  |  |
 | productImage | [ShipmentTrackResponseBagListItemsProductImage](#ShipmentTrackResponseBagListItemsProductImage)? |  yes  |  |
 | brandName | String? |  yes  |  |
 | priceMarked | String? |  yes  |  |
 | status | String? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | fyndCashMsg | String? |  yes  |  |
 | deliveryAddress | String? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemBreakValues](#ShipmentTrackResponseBagListItemBreakValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | display | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemStatuses](#ShipmentTrackResponseBagListItemStatuses)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | npsRating | Int? |  yes  |  |
 | npsString | String? |  yes  |  |
 | progressStatus | [[ShipmentTrackResponseBagListItemStatusesProgress](#ShipmentTrackResponseBagListItemStatusesProgress)]? |  yes  |  |
 | flowType | String? |  yes  |  |
 | statusProgress | Int? |  yes  |  |
 | isNpsDone | Bool? |  yes  |  |
 | headerMessage | String? |  yes  |  |
 | isDelayed | String? |  yes  |  |
 | trackingList | [[ShipmentTrackResponseBagListItemStatusesTrack](#ShipmentTrackResponseBagListItemStatusesTrack)]? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemStatusesProgress](#ShipmentTrackResponseBagListItemStatusesProgress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | type | String? |  yes  |  |
 | state | Bool? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemStatusesTrack](#ShipmentTrackResponseBagListItemStatusesTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | time | String? |  yes  |  |
 | isPassed | Bool? |  yes  |  |
 | isCurrent | Bool? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemDpDetails](#ShipmentTrackResponseBagListItemDpDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | trackingNo | String? |  yes  |  |
 | courier | String? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemsProductImage](#ShipmentTrackResponseBagListItemsProductImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [UpdateShipmentStatusResponse](#UpdateShipmentStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [String: Any] |  no  |  |
 | errorShipments | [[String: Any]]? |  yes  |  |

---


 
 
 #### [UpdateShipmentStatusBody](#UpdateShipmentStatusBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [String: Any] |  no  |  |
 | forceTransition | Bool |  no  |  |
 | task | Bool |  no  |  |

---


 
 
 #### [ShipmentReasonsResponse](#ShipmentReasonsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |
 | reasons | [[ShipmentResponseReasons](#ShipmentResponseReasons)] |  no  |  |

---


 
 
 #### [ShipmentResponseReasons](#ShipmentResponseReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonId | Double? |  yes  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [PlatformShipmentTrack](#PlatformShipmentTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [Results](#Results) |  no  |  |

---


 
 
 #### [Results](#Results)

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


 
 
 #### [ShipmentUpdateRequest](#ShipmentUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bags | [String] |  no  |  |
 | reason | [String: Any] |  no  |  |
 | comments | String |  no  |  |
 | action | String |  no  |  |

---


 
 
 #### [ShipmentUpdateResponse](#ShipmentUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [UpdateProcessShipmenstRequestBody](#UpdateProcessShipmenstRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentIds | [String] |  no  |  |
 | expectedStatus | String |  no  |  |

---


 
 
 #### [UpdateProcessShipmenstRequestResponse](#UpdateProcessShipmenstRequestResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [GetVoiceCallbackResponse](#GetVoiceCallbackResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [GetClickToCallResponse](#GetClickToCallResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [ApefaceApiError](#ApefaceApiError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [AffiliateStoreIdMapping](#AffiliateStoreIdMapping)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceStoreId | String |  no  |  |
 | storeId | Int |  no  |  |

---


 
 
 #### [AffiliateAppConfigMeta](#AffiliateAppConfigMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [AffiliateAppConfig](#AffiliateAppConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdAt | String |  no  |  |
 | token | String |  no  |  |
 | secret | String |  no  |  |
 | meta | [[AffiliateAppConfigMeta](#AffiliateAppConfigMeta)]? |  yes  |  |
 | id | String |  no  |  |
 | updatedAt | String |  no  |  |
 | name | String |  no  |  |
 | description | String? |  yes  |  |
 | owner | String |  no  |  |

---


 
 
 #### [AffiliateInventoryPaymentConfig](#AffiliateInventoryPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |

---


 
 
 #### [AffiliateInventoryOrderConfig](#AffiliateInventoryOrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | forceReassignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryArticleAssignmentConfig](#AffiliateInventoryArticleAssignmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | postOrderReassignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryLogisticsConfig](#AffiliateInventoryLogisticsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpAssignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryStoreConfig](#AffiliateInventoryStoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [String: Any]? |  yes  |  |

---


 
 
 #### [AffiliateInventoryConfig](#AffiliateInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payment | [AffiliateInventoryPaymentConfig](#AffiliateInventoryPaymentConfig)? |  yes  |  |
 | order | [AffiliateInventoryOrderConfig](#AffiliateInventoryOrderConfig)? |  yes  |  |
 | articleAssignment | [AffiliateInventoryArticleAssignmentConfig](#AffiliateInventoryArticleAssignmentConfig)? |  yes  |  |
 | logistics | [AffiliateInventoryLogisticsConfig](#AffiliateInventoryLogisticsConfig)? |  yes  |  |
 | inventory | [AffiliateInventoryStoreConfig](#AffiliateInventoryStoreConfig)? |  yes  |  |

---


 
 
 #### [AffiliateConfig](#AffiliateConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | [AffiliateAppConfig](#AffiliateAppConfig)? |  yes  |  |
 | inventory | [AffiliateInventoryConfig](#AffiliateInventoryConfig)? |  yes  |  |

---


 
 
 #### [Affiliate](#Affiliate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [AffiliateConfig](#AffiliateConfig)? |  yes  |  |
 | id | String |  no  |  |
 | token | String |  no  |  |

---


 
 
 #### [OrderConfig](#OrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateStoreIdMapping | [[AffiliateStoreIdMapping](#AffiliateStoreIdMapping)] |  no  |  |
 | affiliate | [Affiliate](#Affiliate) |  no  |  |
 | createUser | Bool? |  yes  |  |
 | articleLookup | String? |  yes  |  |
 | bagEndState | String? |  yes  |  |
 | storeLookup | String? |  yes  |  |

---


 
 
 #### [MarketPlacePdf](#MarketPlacePdf)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | label | String? |  yes  |  |
 | invoice | String? |  yes  |  |

---


 
 
 #### [AffiliateBag](#AffiliateBag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | String |  no  |  |
 | discount | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | pdfLinks | [MarketPlacePdf](#MarketPlacePdf)? |  yes  |  |
 | identifier | [String: Any] |  no  |  |
 | quantity | Int |  no  |  |
 | avlQty | Int |  no  |  |
 | companyId | Int |  no  |  |
 | itemId | Int |  no  |  |
 | priceMarked | Double |  no  |  |
 | storeId | Int |  no  |  |
 | hsnCodeId | String |  no  |  |
 | unitPrice | Double |  no  |  |
 | affiliateMeta | [String: Any] |  no  |  |
 | affiliateStoreId | String |  no  |  |
 | sku | String |  no  |  |
 | id | String |  no  |  |
 | fyndStoreId | String |  no  |  |
 | transferPrice | Int |  no  |  |
 | sellerIdentifier | String |  no  |  |
 | itemSize | String |  no  |  |
 | amountPaid | Double |  no  |  |

---


 
 
 #### [OrderUser](#OrderUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | city | String |  no  |  |
 | email | String |  no  |  |
 | pincode | String |  no  |  |
 | firstName | String |  no  |  |
 | mobile | Int |  no  |  |
 | address1 | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | lastName | String |  no  |  |
 | phone | Int |  no  |  |
 | state | String |  no  |  |

---


 
 
 #### [OrderPriority](#OrderPriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliatePriorityCode | String? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | fulfilmentPriority | Int? |  yes  |  |

---


 
 
 #### [UserData](#UserData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingUser | [OrderUser](#OrderUser)? |  yes  |  |
 | billingUser | [OrderUser](#OrderUser)? |  yes  |  |

---


 
 
 #### [ArticleDetails](#ArticleDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [String: Any] |  no  |  |
 | id | String |  no  |  |
 | dimension | [String: Any] |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | weight | [String: Any] |  no  |  |
 | quantity | Int |  no  |  |
 | brandId | Int |  no  |  |

---


 
 
 #### [LocationDetails](#LocationDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentType | String |  no  |  |
 | fulfillmentId | Int |  no  |  |
 | articles | [[ArticleDetails](#ArticleDetails)] |  no  |  |

---


 
 
 #### [ShipmentDetails](#ShipmentDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpId | Int? |  yes  |  |
 | affiliateShipmentId | String |  no  |  |
 | fulfillmentId | Int |  no  |  |
 | shipments | Int |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | boxType | String? |  yes  |  |
 | articles | [[ArticleDetails](#ArticleDetails)] |  no  |  |

---


 
 
 #### [ShipmentConfig](#ShipmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMode | String |  no  |  |
 | toPincode | String |  no  |  |
 | identifier | String |  no  |  |
 | source | String |  no  |  |
 | locationDetails | [LocationDetails](#LocationDetails)? |  yes  |  |
 | action | String |  no  |  |
 | journey | String |  no  |  |
 | shipment | [[ShipmentDetails](#ShipmentDetails)] |  no  |  |

---


 
 
 #### [ShipmentData](#ShipmentData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentData | [ShipmentConfig](#ShipmentConfig) |  no  |  |

---


 
 
 #### [OrderInfo](#OrderInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payment | [String: Any]? |  yes  |  |
 | paymentMode | String |  no  |  |
 | deliveryCharges | Double |  no  |  |
 | bags | [[AffiliateBag](#AffiliateBag)] |  no  |  |
 | items | [String: Any] |  no  |  |
 | codCharges | Double |  no  |  |
 | orderValue | Double |  no  |  |
 | shippingAddress | [OrderUser](#OrderUser) |  no  |  |
 | orderPriority | [OrderPriority](#OrderPriority)? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |
 | user | [UserData](#UserData) |  no  |  |
 | coupon | String? |  yes  |  |
 | shipment | [ShipmentData](#ShipmentData)? |  yes  |  |
 | billingAddress | [OrderUser](#OrderUser) |  no  |  |
 | discount | Double |  no  |  |

---


 
 
 #### [CreateOrderPayload](#CreateOrderPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String |  no  |  |
 | orderConfig | [OrderConfig](#OrderConfig) |  no  |  |
 | orderInfo | [OrderInfo](#OrderInfo) |  no  |  |

---


 
 
 #### [CreateOrderResponse](#CreateOrderResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndOrderId | String |  no  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | status | Int |  no  |  |
 | errorTrace | String? |  yes  |  |

---


 
 
 #### [InvalidateShipmentCachePayload](#InvalidateShipmentCachePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentIds | [String] |  no  |  |

---


 
 
 #### [InvalidateShipmentCacheNestedResponse](#InvalidateShipmentCacheNestedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | error | String? |  yes  |  |

---


 
 
 #### [InvalidateShipmentCacheResponse](#InvalidateShipmentCacheResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | [[InvalidateShipmentCacheNestedResponse](#InvalidateShipmentCacheNestedResponse)]? |  yes  |  |

---


 
 
 #### [StoreReassign](#StoreReassign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | itemId | String? |  yes  |  |
 | mongoArticleId | String? |  yes  |  |
 | affiliateBagId | String? |  yes  |  |
 | storeId | Int |  no  |  |
 | bagId | Int? |  yes  |  |
 | fyndOrderId | String? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |
 | reasonIds | [Int]? |  yes  |  |
 | setId | String? |  yes  |  |

---


 
 
 #### [StoreReassignResponse](#StoreReassignResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [Entities](#Entities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | reasonText | String |  no  |  |
 | affiliateShipmentId | String? |  yes  |  |
 | affiliateBagId | String? |  yes  |  |
 | id | String? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |

---


 
 
 #### [UpdateShipmentLockPayload](#UpdateShipmentLockPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String |  no  |  |
 | actionType | String |  no  |  |
 | entityType | String |  no  |  |
 | entities | [[Entities](#Entities)] |  no  |  |

---


 
 
 #### [OriginalFilter](#OriginalFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | affiliateShipmentId | String? |  yes  |  |

---


 
 
 #### [Bags1](#Bags1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateOrderId | String? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | affiliateBagId | String? |  yes  |  |
 | isLocked | Bool? |  yes  |  |

---


 
 
 #### [CheckResponse](#CheckResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | affiliateShipmentId | String? |  yes  |  |
 | isBagLocked | Bool? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | originalFilter | [OriginalFilter](#OriginalFilter)? |  yes  |  |
 | status | String? |  yes  |  |
 | bags | [[Bags1](#Bags1)]? |  yes  |  |
 | isShipmentLocked | Bool? |  yes  |  |

---


 
 
 #### [UpdateShipmentLockResponse](#UpdateShipmentLockResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | checkResponse | [[CheckResponse](#CheckResponse)]? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ReasonText](#ReasonText)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | text | String? |  yes  |  |

---


 
 
 #### [ReasonsPerEntity](#ReasonsPerEntity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityKey | [ReasonText](#ReasonText)? |  yes  |  |

---


 
 
 #### [EntityReason](#EntityReason)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagIds | [ReasonsPerEntity](#ReasonsPerEntity)? |  yes  |  |

---


 
 
 #### [DataUpdatePerEntity](#DataUpdatePerEntity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityId | [String: Any]? |  yes  |  |

---


 
 
 #### [RecursiveUpdate](#RecursiveUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityIds | [String]? |  yes  |  |
 | bagIds | [String]? |  yes  |  |

---


 
 
 #### [DataUpdate](#DataUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityIds | [DataUpdatePerEntity](#DataUpdatePerEntity)? |  yes  |  |
 | recursiveUpdates | [RecursiveUpdate](#RecursiveUpdate)? |  yes  |  |

---


 
 
 #### [EntityBody](#EntityBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [EntityReason](#EntityReason)? |  yes  |  |
 | bagIds | [String] |  no  |  |
 | entityIds | [String]? |  yes  |  |
 | dataUpdates | [DataUpdate](#DataUpdate)? |  yes  |  |
 | nextStatus | String? |  yes  |  |

---


 
 
 #### [EntitiesDetail](#EntitiesDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityId | [EntityBody](#EntityBody)? |  yes  |  |

---


 
 
 #### [UpdateShipmentStatusPayload](#UpdateShipmentStatusPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unlockBeforeTransition | Bool? |  yes  |  |
 | processInBackground | Bool? |  yes  |  |
 | entities | [EntitiesDetail](#EntitiesDetail) |  no  |  |
 | lockAfterTransition | Bool? |  yes  |  |

---


 
 
 #### [EntityTransitionError](#EntityTransitionError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |
 | shipmentId | String |  no  |  |

---


 
 
 #### [UpdateShipmentStatusResponse1](#UpdateShipmentStatusResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool |  no  |  |
 | errorEntities | [[EntityTransitionError](#EntityTransitionError)]? |  yes  |  |

---


 
 
 #### [RequestedDPConfs](#RequestedDPConfs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rdpcId | Int |  no  |  |
 | excludeDps | [Int]? |  yes  |  |
 | awbType | String |  no  |  |
 | ewbn | [String: Any]? |  yes  |  |
 | isDpAssignedManually | Bool |  no  |  |

---


 
 
 #### [UserObj](#UserObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | isAnonymousUser | Bool |  no  |  |
 | mobile | String |  no  |  |
 | email | String? |  yes  |  |
 | lastName | String |  no  |  |
 | uId | Int |  no  |  |
 | mongoUserId | String |  no  |  |
 | gender | String |  no  |  |
 | userOid | String |  no  |  |

---


 
 
 #### [Article](#Article)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String |  no  |  |
 | isSet | [String: Any]? |  yes  |  |
 | espModified | [String: Any]? |  yes  |  |
 | aSet | [String: Any]? |  yes  |  |
 | rawMeta | [String: Any]? |  yes  |  |
 | returnConfig | [String: Any]? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | identifiers | [String: Any] |  no  |  |
 | childDetails | [String: Any]? |  yes  |  |
 | uid | String |  no  |  |
 | id | String |  no  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [BagStateMapper1](#BagStateMapper1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notifyCustomer | Bool? |  yes  |  |
 | appStateName | String? |  yes  |  |
 | displayName | String |  no  |  |
 | appDisplayName | String? |  yes  |  |
 | name | String |  no  |  |
 | stateType | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | appFacing | Bool? |  yes  |  |
 | journeyType | String |  no  |  |
 | bsId | Int |  no  |  |

---


 
 
 #### [BagStatusHistory](#BagStatusHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | kafkaSync | Bool? |  yes  |  |
 | storeId | Int |  no  |  |
 | bagStateMapper | [BagStateMapper1](#BagStateMapper1) |  no  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | deliveryPartnerId | Int? |  yes  |  |
 | bagId | Int |  no  |  |
 | stateType | String |  no  |  |
 | stateId | Int |  no  |  |
 | deliveryAwbNumber | String? |  yes  |  |
 | updatedAt | String |  no  |  |
 | bshId | Int |  no  |  |
 | createdAt | String |  no  |  |
 | shipmentId | String |  no  |  |
 | status | String |  no  |  |

---


 
 
 #### [B2BPODetails](#B2BPODetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | poTaxAmount | Double |  no  |  |
 | poLineAmount | Double |  no  |  |
 | itemBasePrice | Double |  no  |  |
 | totalGstPercentage | Double |  no  |  |

---


 
 
 #### [BagMeta](#BagMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | b2BPoDetails | [B2BPODetails](#B2BPODetails)? |  yes  |  |

---


 
 
 #### [AffiliateMeta](#AffiliateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channelShipmentId | String? |  yes  |  |
 | employeeDiscount | Double? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | couponCode | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | sizeLevelTotalQty | Int? |  yes  |  |
 | loyaltyDiscount | Double? |  yes  |  |
 | boxType | String? |  yes  |  |
 | orderItemId | String? |  yes  |  |
 | channelOrderId | String? |  yes  |  |
 | isPriority | Bool? |  yes  |  |

---


 
 
 #### [AffiliateBagDetails](#AffiliateBagDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | employeeDiscount | Double? |  yes  |  |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | affiliateOrderId | String |  no  |  |
 | affiliateBagId | String |  no  |  |
 | loyaltyDiscount | Double? |  yes  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company | String |  no  |  |
 | creditNoteAllowed | Bool? |  yes  |  |
 | scriptLastRan | String? |  yes  |  |
 | invoicePrefix | String? |  yes  |  |
 | modifiedOn | Int? |  yes  |  |
 | createdOn | Int? |  yes  |  |
 | logo | String? |  yes  |  |
 | brandId | Int |  no  |  |
 | creditNoteExpiryDays | Int? |  yes  |  |
 | brandName | String |  no  |  |
 | startDate | String? |  yes  |  |
 | pickupLocation | String? |  yes  |  |
 | isVirtualInvoice | Bool? |  yes  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | image | [String] |  no  |  |
 | name | String |  no  |  |
 | departmentId | Int? |  yes  |  |
 | brandId | Int |  no  |  |
 | l3Category | Int? |  yes  |  |
 | gender | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | lastUpdatedAt | Int? |  yes  |  |
 | brand | String |  no  |  |
 | l3CategoryName | String? |  yes  |  |
 | code | String? |  yes  |  |
 | l2Category | [String]? |  yes  |  |
 | branchUrl | String? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | slugKey | String |  no  |  |
 | size | String |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | canReturn | Bool? |  yes  |  |
 | color | String? |  yes  |  |
 | webstoreProductUrl | String? |  yes  |  |
 | itemId | Int |  no  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tcsPercentage | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | transferPrice | Double |  no  |  |
 | amountPaidRoundoff | Int |  no  |  |
 | cashback | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | refundAmount | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | discount | Double |  no  |  |
 | refundCredit | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | couponEffectiveDiscount | Double |  no  |  |
 | addedToFyndCash | Bool |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |

---


 
 
 #### [FinancialBreakup](#FinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tcsPercentage | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | hsnCode | String |  no  |  |
 | totalUnits | Int |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | transferPrice | Double |  no  |  |
 | amountPaidRoundoff | Int |  no  |  |
 | cashback | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | itemName | String |  no  |  |
 | priceMarked | Double |  no  |  |
 | refundAmount | Double |  no  |  |
 | gstTag | String |  no  |  |
 | gstFee | String |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | size | String |  no  |  |
 | priceEffective | Double |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | discount | Double |  no  |  |
 | refundCredit | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | identifiers | [String: Any] |  no  |  |
 | couponEffectiveDiscount | Double |  no  |  |
 | addedToFyndCash | Bool |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |

---


 
 
 #### [BagGSTDetails](#BagGSTDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sgstGstFee | String |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | cgstGstFee | String |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | hsnCode | String |  no  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | igstGstFee | String |  no  |  |
 | gstTag | String |  no  |  |
 | igstTaxPercentage | Double |  no  |  |
 | sgstTaxPercentage | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | cgstTaxPercentage | Double |  no  |  |
 | gstFee | Double |  no  |  |
 | hsnCodeId | String |  no  |  |
 | gstinCode | String? |  yes  |  |
 | taxCollectedAtSource | Double |  no  |  |

---


 
 
 #### [BagReturnableCancelableStatus](#BagReturnableCancelableStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |
 | canBeCancelled | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |
 | isActive | Bool |  no  |  |

---


 
 
 #### [Bag](#Bag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [String: Any] |  no  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | article | [Article](#Article) |  no  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | meta | [BagMeta](#BagMeta)? |  yes  |  |
 | bagUpdateTime | Double? |  yes  |  |
 | bagId | Int |  no  |  |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails) |  no  |  |
 | appliedPromos | [[String: Any]]? |  yes  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | item | [Item](#Item) |  no  |  |
 | prices | [Prices](#Prices) |  no  |  |
 | journeyType | String |  no  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |
 | bId | Int |  no  |  |
 | dates | [String: Any]? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | bType | String? |  yes  |  |
 | gstDetails | [BagGSTDetails](#BagGSTDetails) |  no  |  |
 | displayName | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | status | [BagReturnableCancelableStatus](#BagReturnableCancelableStatus) |  no  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)] |  no  |  |

---


 
 
 #### [ShipmentProduct](#ShipmentProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [String: Any] |  no  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | article | [Article](#Article) |  no  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | meta | [BagMeta](#BagMeta)? |  yes  |  |
 | bagUpdateTime | Double? |  yes  |  |
 | bagId | Int |  no  |  |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails) |  no  |  |
 | appliedPromos | [[String: Any]]? |  yes  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | item | [Item](#Item) |  no  |  |
 | prices | [Prices](#Prices) |  no  |  |
 | journeyType | String |  no  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |
 | bId | Int |  no  |  |
 | dates | [String: Any]? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | bType | String? |  yes  |  |
 | gstDetails | [BagGSTDetails](#BagGSTDetails) |  no  |  |
 | displayName | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | status | [BagReturnableCancelableStatus](#BagReturnableCancelableStatus) |  no  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)] |  no  |  |

---


 
 
 #### [ShipmentPayments](#ShipmentPayments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String |  no  |  |
 | displayPriority | Int |  no  |  |
 | sourceNickname | String? |  yes  |  |
 | displayName | String |  no  |  |
 | source | String |  no  |  |
 | logo | String |  no  |  |
 | spId | Int |  no  |  |
 | paymentIdentifier | String? |  yes  |  |
 | isActive | Bool |  no  |  |

---


 
 
 #### [ShipmentInvoice1](#ShipmentInvoice1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | labelUrl | String |  no  |  |
 | invoiceUrl | String |  no  |  |
 | storeInvoiceId | String |  no  |  |
 | updatedDate | Int? |  yes  |  |

---


 
 
 #### [ShipmentPrices1](#ShipmentPrices1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | taxCollectedAtSource | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | cashback | Double |  no  |  |
 | refundAmount | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | discount | Double |  no  |  |
 | refundCredit | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | amountPaidRoundoff | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |

---


 
 
 #### [OrderMeta](#OrderMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderingStore | Int? |  yes  |  |
 | files | [String]? |  yes  |  |
 | employeeId | String? |  yes  |  |
 | comment | String? |  yes  |  |
 | orderPlatform | String |  no  |  |
 | orderChildEntities | [String]? |  yes  |  |
 | orderType | String |  no  |  |
 | staff | [String: Any]? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | paymentType | String? |  yes  |  |
 | mongoCartId | [String: Any] |  no  |  |

---


 
 
 #### [OrderTaxDetails](#OrderTaxDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | b2BGstinNumber | String? |  yes  |  |
 | gstin | String? |  yes  |  |

---


 
 
 #### [OrderPrices](#OrderPrices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | taxCollectedAtSource | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | cashback | Double |  no  |  |
 | refundAmount | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | discount | Double |  no  |  |
 | refundCredit | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | amountPaidRoundoff | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |

---


 
 
 #### [OrderObj](#OrderObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [String: Any] |  no  |  |
 | modeOfPayment | String |  no  |  |
 | affiliateId | String |  no  |  |
 | collectBy | String |  no  |  |
 | headers | [String: Any] |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | oId | Int |  no  |  |
 | meta | [OrderMeta](#OrderMeta) |  no  |  |
 | cashbackValue | Double |  no  |  |
 | rawUserAgent | String |  no  |  |
 | codCharges | Int |  no  |  |
 | taxDetails | [OrderTaxDetails](#OrderTaxDetails)? |  yes  |  |
 | fyndCredits | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | fyndOrderId | String |  no  |  |
 | prices | [OrderPrices](#OrderPrices) |  no  |  |
 | totalOrderValue | Double |  no  |  |
 | userId | Int |  no  |  |
 | orderValue | Double |  no  |  |
 | createdTime | Int |  no  |  |
 | mongoCartId | [String: Any] |  no  |  |
 | orderingChannel | String |  no  |  |
 | affiliateOrderDate | String |  no  |  |
 | paymentModeId | Int |  no  |  |
 | deliveryCharges | Double |  no  |  |
 | affiliateOrderId | String |  no  |  |
 | refundBy | String |  no  |  |
 | currency | String |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | transactionId | String? |  yes  |  |
 | discount | Double |  no  |  |
 | source | String |  no  |  |
 | orderingChannelLogo | String |  no  |  |

---


 
 
 #### [DeliveryAddress](#DeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addressType | String |  no  |  |
 | area | String? |  yes  |  |
 | email | String? |  yes  |  |
 | name | String |  no  |  |
 | countryCode | String? |  yes  |  |
 | phone | String |  no  |  |
 | latitude | Double |  no  |  |
 | createdAt | String |  no  |  |
 | contactPerson | String |  no  |  |
 | version | String? |  yes  |  |
 | address1 | String |  no  |  |
 | address2 | String? |  yes  |  |
 | updatedAt | String |  no  |  |
 | country | String |  no  |  |
 | addressCategory | String |  no  |  |
 | longitude | Double |  no  |  |
 | landmark | String? |  yes  |  |
 | pincode | Int |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | address | String |  no  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | legalName | String |  no  |  |
 | dsType | String |  no  |  |
 | url | String? |  yes  |  |
 | verified | Bool |  no  |  |

---


 
 
 #### [Documents1](#Documents1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cin | [Document](#Document)? |  yes  |  |
 | gst | [Document](#Document) |  no  |  |
 | digitalSignature | [Document](#Document)? |  yes  |  |
 | pan | [Document](#Document) |  no  |  |

---


 
 
 #### [CompanyAddress](#CompanyAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addressType | String |  no  |  |
 | countryCode | String |  no  |  |
 | address1 | String |  no  |  |
 | longitude | Double |  no  |  |
 | landmark | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | state | String |  no  |  |
 | pincode | Int |  no  |  |
 | latitude | Double |  no  |  |
 | city | String |  no  |  |
 | country | String |  no  |  |

---


 
 
 #### [CompanyMeta](#CompanyMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | contactDetails | [String: Any] |  no  |  |
 | businessDetails | [String: Any]? |  yes  |  |
 | notificationEmails | [String] |  no  |  |
 | stage | String |  no  |  |
 | documents | [Documents1](#Documents1) |  no  |  |
 | address | [[CompanyAddress](#CompanyAddress)] |  no  |  |
 | businessInfo | String? |  yes  |  |

---


 
 
 #### [Company1](#Company1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | vatNo | String? |  yes  |  |
 | exchangeWithinDays | Int? |  yes  |  |
 | tanNo | String? |  yes  |  |
 | exchangeAllowed | Bool? |  yes  |  |
 | createdOn | Int? |  yes  |  |
 | cst | String? |  yes  |  |
 | meta | [CompanyMeta](#CompanyMeta)? |  yes  |  |
 | returnWithinDays | Int? |  yes  |  |
 | gstNumber | String? |  yes  |  |
 | companyType | String? |  yes  |  |
 | businessType | String? |  yes  |  |
 | cId | Int? |  yes  |  |
 | agreementStartDate | Int? |  yes  |  |
 | paymentType | String? |  yes  |  |
 | paymentProcesingCharge | Double? |  yes  |  |
 | returnAllowed | Bool? |  yes  |  |
 | companyName | String? |  yes  |  |
 | panNo | String? |  yes  |  |
 | modifiedOn | Int? |  yes  |  |
 | fyndAFitAvailable | Bool |  no  |  |
 | commission | Double? |  yes  |  |

---


 
 
 #### [StoreEwaybill](#StoreEwaybill)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [StoreEinvoice](#StoreEinvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | String? |  yes  |  |
 | enabled | Bool |  no  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |

---


 
 
 #### [StoreGstCredentials](#StoreGstCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eWaybill | [StoreEwaybill](#StoreEwaybill)? |  yes  |  |
 | eInvoice | [StoreEinvoice](#StoreEinvoice)? |  yes  |  |

---


 
 
 #### [StoreDocuments](#StoreDocuments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gst | [Document](#Document)? |  yes  |  |

---


 
 
 #### [EInvoicePortalDetails](#EInvoicePortalDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | String? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |

---


 
 
 #### [StoreMeta](#StoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String |  no  |  |
 | timing | [[String: Any]]? |  yes  |  |
 | stage | String |  no  |  |
 | notificationEmails | [String]? |  yes  |  |
 | additionalContactDetails | [String: Any]? |  yes  |  |
 | productReturnConfig | [String: Any]? |  yes  |  |
 | gstCredentials | [StoreGstCredentials](#StoreGstCredentials) |  no  |  |
 | ewaybillPortalDetails | [String: Any]? |  yes  |  |
 | documents | [StoreDocuments](#StoreDocuments)? |  yes  |  |
 | gstNumber | String? |  yes  |  |
 | einvoicePortalDetails | [EInvoicePortalDetails](#EInvoicePortalDetails)? |  yes  |  |

---


 
 
 #### [StoreAddress](#StoreAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addressType | String |  no  |  |
 | area | String? |  yes  |  |
 | email | String? |  yes  |  |
 | countryCode | String |  no  |  |
 | phone | String |  no  |  |
 | latitude | Double |  no  |  |
 | createdAt | String |  no  |  |
 | contactPerson | String |  no  |  |
 | version | String? |  yes  |  |
 | address1 | String |  no  |  |
 | address2 | String? |  yes  |  |
 | updatedAt | String |  no  |  |
 | country | String |  no  |  |
 | addressCategory | String |  no  |  |
 | longitude | Double |  no  |  |
 | landmark | String? |  yes  |  |
 | pincode | Int |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |

---


 
 
 #### [Store1](#Store1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | vatNo | String? |  yes  |  |
 | mallName | String? |  yes  |  |
 | name | String |  no  |  |
 | brandId | [String: Any]? |  yes  |  |
 | packagingMaterialCount | Int? |  yes  |  |
 | alohomoraUserId | Int? |  yes  |  |
 | meta | [StoreMeta](#StoreMeta) |  no  |  |
 | sId | String |  no  |  |
 | phone | Int |  no  |  |
 | latitude | Double |  no  |  |
 | createdAt | String |  no  |  |
 | locationType | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | contactPerson | String |  no  |  |
 | fulfillmentChannel | String |  no  |  |
 | code | String? |  yes  |  |
 | storeActiveFrom | String? |  yes  |  |
 | address1 | String |  no  |  |
 | orderIntegrationId | String? |  yes  |  |
 | brandStoreTags | [String]? |  yes  |  |
 | address2 | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | country | String |  no  |  |
 | parentStoreId | Int? |  yes  |  |
 | storeAddressJson | [StoreAddress](#StoreAddress)? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | isEnabledForRecon | Bool? |  yes  |  |
 | longitude | Double |  no  |  |
 | companyId | Int |  no  |  |
 | storeEmail | String |  no  |  |
 | pincode | String |  no  |  |
 | loginUsername | String |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | mallArea | String? |  yes  |  |

---


 
 
 #### [CurrentShipmentStatus](#CurrentShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCreatedAt | String |  no  |  |
 | currentShipmentStatus | String |  no  |  |
 | bagList | [String] |  no  |  |
 | createdAt | Int |  no  |  |
 | shipmentId | String |  no  |  |
 | status | String |  no  |  |
 | ssId | Int |  no  |  |

---


 
 
 #### [ShipmentGst1](#ShipmentGst1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | gstFee | Double |  no  |  |
 | gstinCode | String? |  yes  |  |
 | taxCollectedAtSource | Double |  no  |  |

---


 
 
 #### [ShipmentStatusCommon](#ShipmentStatusCommon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCreatedAt | String? |  yes  |  |
 | currentShipmentStatus | String? |  yes  |  |
 | bagList | [String] |  no  |  |
 | createdAt | String |  no  |  |
 | shipmentId | String |  no  |  |
 | status | String |  no  |  |
 | ssId | Int |  no  |  |

---


 
 
 #### [DpDetails1](#DpDetails1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpdId | String |  no  |  |
 | dpReturnCharges | Int? |  yes  |  |
 | amountHandlingCharges | Int? |  yes  |  |
 | name | String |  no  |  |
 | gstTag | String |  no  |  |
 | trackUrl | String? |  yes  |  |
 | dpCharges | Int |  no  |  |
 | ewayBillId | String? |  yes  |  |
 | awbNo | String? |  yes  |  |

---


 
 
 #### [BuyerDetails](#BuyerDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | ajioSiteId | String? |  yes  |  |
 | pincode | Int |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | gstin | String |  no  |  |
 | address | String |  no  |  |

---


 
 
 #### [EInvoice](#EInvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | errorCode | String? |  yes  |  |
 | acknowledgeDate | String? |  yes  |  |
 | acknowledgeNo | Int? |  yes  |  |
 | errorMessage | String? |  yes  |  |
 | signedInvoice | String? |  yes  |  |
 | irn | String? |  yes  |  |
 | signedQrCode | String? |  yes  |  |

---


 
 
 #### [EinvoiceInfo](#EinvoiceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNote | [EInvoice](#EInvoice)? |  yes  |  |
 | invoice | [EInvoice](#EInvoice)? |  yes  |  |

---


 
 
 #### [ShipmentMeta](#ShipmentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagWeight | [String: Any]? |  yes  |  |
 | b2CBuyerDetails | [String: Any]? |  yes  |  |
 | formatted | [String: Any]? |  yes  |  |
 | returnDetails | [String: Any]? |  yes  |  |
 | packagingName | String? |  yes  |  |
 | awbNumber | String? |  yes  |  |
 | returnStoreNode | Int? |  yes  |  |
 | dpName | String? |  yes  |  |
 | poNumber | String? |  yes  |  |
 | returnAffiliateOrderId | String? |  yes  |  |
 | dpSortKey | String? |  yes  |  |
 | forwardAffiliateOrderId | String? |  yes  |  |
 | orderType | String? |  yes  |  |
 | weight | Int |  no  |  |
 | storeInvoiceUpdatedDate | String? |  yes  |  |
 | dpId | String? |  yes  |  |
 | external | [String: Any]? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | sameStoreAvailable | Bool |  no  |  |
 | boxType | String? |  yes  |  |
 | autoTriggerDpAssignmentAcf | Bool |  no  |  |
 | b2BBuyerDetails | [BuyerDetails](#BuyerDetails)? |  yes  |  |
 | debugInfo | [String: Any]? |  yes  |  |
 | marketplaceStoreId | String? |  yes  |  |
 | timestamp | [String: Any]? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | returnAffiliateShipmentId | String? |  yes  |  |
 | einvoiceInfo | [EinvoiceInfo](#EinvoiceInfo)? |  yes  |  |
 | forwardAffiliateShipmentId | String? |  yes  |  |
 | ewaybillInfo | [String: Any]? |  yes  |  |
 | returnAwbNumber | String? |  yes  |  |

---


 
 
 #### [PDFLinks](#PDFLinks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoiceA6 | String? |  yes  |  |
 | invoiceType | String |  no  |  |
 | poInvoice | String? |  yes  |  |
 | creditNoteUrl | String? |  yes  |  |
 | labelType | String |  no  |  |
 | b2B | String? |  yes  |  |
 | invoiceA4 | String? |  yes  |  |
 | labelPos | String? |  yes  |  |
 | invoicePos | String? |  yes  |  |
 | invoice | String? |  yes  |  |
 | labelA6 | String? |  yes  |  |
 | label | String? |  yes  |  |
 | labelA4 | String? |  yes  |  |

---


 
 
 #### [BillingAddress1](#BillingAddress1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addressType | String |  no  |  |
 | area | String? |  yes  |  |
 | email | String? |  yes  |  |
 | countryCode | String |  no  |  |
 | phone | String |  no  |  |
 | latitude | Double |  no  |  |
 | createdAt | String |  no  |  |
 | contactPerson | String |  no  |  |
 | version | String? |  yes  |  |
 | address1 | String |  no  |  |
 | address2 | String? |  yes  |  |
 | updatedAt | String |  no  |  |
 | country | String |  no  |  |
 | addressCategory | String |  no  |  |
 | longitude | Double |  no  |  |
 | landmark | String? |  yes  |  |
 | pincode | Int |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |

---


 
 
 #### [ShipmentHandOverCustomerContact](#ShipmentHandOverCustomerContact)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | updatedAt | String |  no  |  |
 | createdAt | String |  no  |  |
 | contactPerson | String |  no  |  |
 | version | String |  no  |  |

---


 
 
 #### [ShipmentDetails1](#ShipmentDetails1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | previousShipmentId | String? |  yes  |  |
 | affiliateId | String |  no  |  |
 | affiliateShipmentId | String |  no  |  |
 | deliveryAwbNumber | String? |  yes  |  |
 | creditNoteId | String? |  yes  |  |
 | parentType | String? |  yes  |  |
 | meta | [ShipmentMeta](#ShipmentMeta) |  no  |  |
 | sId | String |  no  |  |
 | pdfLinks | [PDFLinks](#PDFLinks) |  no  |  |
 | billingAddressJson | [BillingAddress1](#BillingAddress1) |  no  |  |
 | lockStatus | String |  no  |  |
 | fyndOrderId | String |  no  |  |
 | createdAt | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | packagingType | String |  no  |  |
 | parentId | String? |  yes  |  |
 | sdType | String |  no  |  |
 | deliveryAddressJson | [DeliveryAddress](#DeliveryAddress) |  no  |  |
 | handOverContactJson | [ShipmentHandOverCustomerContact](#ShipmentHandOverCustomerContact) |  no  |  |
 | tags | [String]? |  yes  |  |
 | fulfilmentPriority | Int |  no  |  |
 | ewayBillId | String? |  yes  |  |
 | storeInvoiceId | String? |  yes  |  |

---


 
 
 #### [AffiliateConfig1](#AffiliateConfig1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [[String: Any]]? |  yes  |  |
 | articleAssignment | [String: Any]? |  yes  |  |
 | stores | [Int]? |  yes  |  |
 | postOrderReassignment | Bool |  no  |  |
 | secret | String |  no  |  |
 | owner | String |  no  |  |
 | dpAssignment | Bool |  no  |  |
 | acId | String |  no  |  |
 | name | String |  no  |  |
 | token | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | description | String? |  yes  |  |
 | forceReassignment | Bool |  no  |  |
 | createdAt | String? |  yes  |  |
 | appCompanyId | Int |  no  |  |

---


 
 
 #### [AffiliateDetails](#AffiliateDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | affiliateShipmentId | String |  no  |  |
 | pdfLinks | [PDFLinks](#PDFLinks)? |  yes  |  |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | affiliateOrderId | String |  no  |  |
 | affiliateBagId | String |  no  |  |
 | config | [AffiliateConfig1](#AffiliateConfig1) |  no  |  |
 | affiliateStoreId | String |  no  |  |
 | companyAffiliateTag | String? |  yes  |  |
 | adId | String? |  yes  |  |
 | shipmentMeta | [ShipmentMeta](#ShipmentMeta) |  no  |  |

---


 
 
 #### [RtoAddress1](#RtoAddress1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String |  no  |  |
 | rtoaId | Int |  no  |  |
 | longitude | Double |  no  |  |
 | companyId | Int |  no  |  |
 | address2 | String? |  yes  |  |
 | name | String |  no  |  |
 | phone | String |  no  |  |
 | state | String |  no  |  |
 | storeEmail | String |  no  |  |
 | pincode | String |  no  |  |
 | latitude | Double |  no  |  |
 | city | String |  no  |  |
 | country | String |  no  |  |
 | locationType | String |  no  |  |
 | contactPerson | String |  no  |  |
 | storeAddressJson | [StoreAddress](#StoreAddress) |  no  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [ShipmentDetailsPlatformResponse](#ShipmentDetailsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [String: Any] |  no  |  |
 | requestedDpConf | [RequestedDPConfs](#RequestedDPConfs)? |  yes  |  |
 | user | [UserObj](#UserObj) |  no  |  |
 | cartId | Int? |  yes  |  |
 | bags | [[Bag](#Bag)] |  no  |  |
 | products | [[ShipmentProduct](#ShipmentProduct)]? |  yes  |  |
 | payments | [ShipmentPayments](#ShipmentPayments) |  no  |  |
 | fyndstoreEmp | [String: Any]? |  yes  |  |
 | invoice | [ShipmentInvoice1](#ShipmentInvoice1)? |  yes  |  |
 | searchKey | [String: Any] |  no  |  |
 | bagStatusHistory | [[BagStatusHistory](#BagStatusHistory)] |  no  |  |
 | coupon | [String: Any]? |  yes  |  |
 | deliverySlot | [String: Any]? |  yes  |  |
 | sId | String? |  yes  |  |
 | originalBagList | [Int] |  no  |  |
 | lockStatus | Bool |  no  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | restoreCoupon | Bool |  no  |  |
 | orderType | String |  no  |  |
 | prices | [ShipmentPrices1](#ShipmentPrices1)? |  yes  |  |
 | order | [OrderObj](#OrderObj) |  no  |  |
 | shipmentUpdateTime | Double |  no  |  |
 | weight | [String: Any] |  no  |  |
 | orderValue | Double |  no  |  |
 | articleDetails | [String: Any] |  no  |  |
 | journeyType | String |  no  |  |
 | deliveryAddress | [DeliveryAddress](#DeliveryAddress) |  no  |  |
 | company | [Company1](#Company1) |  no  |  |
 | orderingStore | [Store1](#Store1)? |  yes  |  |
 | shipmentStatus | [CurrentShipmentStatus](#CurrentShipmentStatus) |  no  |  |
 | shipmentGst | [ShipmentGst1](#ShipmentGst1) |  no  |  |
 | noOfBagsOrder | Int |  no  |  |
 | orderIntegrationId | String? |  yes  |  |
 | shipmentStatusHistory | [[ShipmentStatusCommon](#ShipmentStatusCommon)] |  no  |  |
 | qcRequired | [String: Any]? |  yes  |  |
 | dpDetails | [DpDetails1](#DpDetails1)? |  yes  |  |
 | restorePromos | [String: Any]? |  yes  |  |
 | operationalStatus | String |  no  |  |
 | totalShipmentBags | Int |  no  |  |
 | shipmentId | String |  no  |  |
 | paymentType | String? |  yes  |  |
 | shipmentValue | Double |  no  |  |
 | transactionType | String |  no  |  |
 | fallbackUser | [String: Any]? |  yes  |  |
 | shipment | [ShipmentDetails1](#ShipmentDetails1) |  no  |  |
 | isProcessing | Bool |  no  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails) |  no  |  |
 | einvoiceInfo | [EinvoiceInfo](#EinvoiceInfo)? |  yes  |  |
 | shipmentQuantity | Int |  no  |  |
 | comment | String? |  yes  |  |
 | orderSource | String |  no  |  |
 | appId | String |  no  |  |
 | rtoAddress | [RtoAddress1](#RtoAddress1) |  no  |  |
 | tags | [String] |  no  |  |
 | totalShipmentsInOrder | Int |  no  |  |
 | fulfillingStore | [Store1](#Store1) |  no  |  |

---


 
 
 #### [ErrorResponse1](#ErrorResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [Shipment](#Shipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [String: Any] |  no  |  |
 | requestedDpConf | [RequestedDPConfs](#RequestedDPConfs)? |  yes  |  |
 | user | [UserObj](#UserObj) |  no  |  |
 | cartId | Int? |  yes  |  |
 | bags | [[Bag](#Bag)] |  no  |  |
 | products | [[ShipmentProduct](#ShipmentProduct)]? |  yes  |  |
 | payments | [ShipmentPayments](#ShipmentPayments) |  no  |  |
 | fyndstoreEmp | [String: Any]? |  yes  |  |
 | invoice | [ShipmentInvoice1](#ShipmentInvoice1)? |  yes  |  |
 | searchKey | [String: Any] |  no  |  |
 | bagStatusHistory | [[BagStatusHistory](#BagStatusHistory)] |  no  |  |
 | coupon | [String: Any]? |  yes  |  |
 | deliverySlot | [String: Any]? |  yes  |  |
 | sId | String? |  yes  |  |
 | originalBagList | [Int] |  no  |  |
 | lockStatus | Bool |  no  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | restoreCoupon | Bool |  no  |  |
 | orderType | String |  no  |  |
 | prices | [ShipmentPrices1](#ShipmentPrices1)? |  yes  |  |
 | order | [OrderObj](#OrderObj) |  no  |  |
 | shipmentUpdateTime | Double |  no  |  |
 | weight | [String: Any] |  no  |  |
 | orderValue | Double |  no  |  |
 | articleDetails | [String: Any] |  no  |  |
 | journeyType | String |  no  |  |
 | deliveryAddress | [DeliveryAddress](#DeliveryAddress) |  no  |  |
 | company | [Company1](#Company1) |  no  |  |
 | orderingStore | [Store1](#Store1)? |  yes  |  |
 | shipmentStatus | [CurrentShipmentStatus](#CurrentShipmentStatus) |  no  |  |
 | shipmentGst | [ShipmentGst1](#ShipmentGst1) |  no  |  |
 | noOfBagsOrder | Int |  no  |  |
 | orderIntegrationId | String? |  yes  |  |
 | shipmentStatusHistory | [[ShipmentStatusCommon](#ShipmentStatusCommon)] |  no  |  |
 | qcRequired | [String: Any]? |  yes  |  |
 | dpDetails | [DpDetails1](#DpDetails1)? |  yes  |  |
 | restorePromos | [String: Any]? |  yes  |  |
 | operationalStatus | String |  no  |  |
 | totalShipmentBags | Int |  no  |  |
 | shipmentId | String |  no  |  |
 | paymentType | String? |  yes  |  |
 | shipmentValue | Double |  no  |  |
 | transactionType | String |  no  |  |
 | fallbackUser | [String: Any]? |  yes  |  |
 | shipment | [ShipmentDetails1](#ShipmentDetails1) |  no  |  |
 | isProcessing | Bool |  no  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails) |  no  |  |
 | einvoiceInfo | [EinvoiceInfo](#EinvoiceInfo)? |  yes  |  |
 | shipmentQuantity | Int |  no  |  |
 | comment | String? |  yes  |  |
 | orderSource | String |  no  |  |
 | appId | String |  no  |  |
 | rtoAddress | [RtoAddress1](#RtoAddress1) |  no  |  |
 | tags | [String] |  no  |  |
 | totalShipmentsInOrder | Int |  no  |  |
 | fulfillingStore | [Store1](#Store1) |  no  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | itemTotal | Int |  no  |  |
 | current | Int |  no  |  |
 | pageType | String |  no  |  |

---


 
 
 #### [BulkShipmentDetailsPlatformResponse](#BulkShipmentDetailsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Shipment](#Shipment)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [OrderDetailsPlatformResponse](#OrderDetailsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [String: Any] |  no  |  |
 | requestedDpConf | [RequestedDPConfs](#RequestedDPConfs)? |  yes  |  |
 | user | [UserObj](#UserObj) |  no  |  |
 | cartId | Int? |  yes  |  |
 | bags | [[Bag](#Bag)] |  no  |  |
 | products | [[ShipmentProduct](#ShipmentProduct)]? |  yes  |  |
 | payments | [ShipmentPayments](#ShipmentPayments) |  no  |  |
 | fyndstoreEmp | [String: Any]? |  yes  |  |
 | invoice | [ShipmentInvoice1](#ShipmentInvoice1)? |  yes  |  |
 | searchKey | [String: Any] |  no  |  |
 | bagStatusHistory | [[BagStatusHistory](#BagStatusHistory)] |  no  |  |
 | coupon | [String: Any]? |  yes  |  |
 | deliverySlot | [String: Any]? |  yes  |  |
 | sId | String? |  yes  |  |
 | originalBagList | [Int] |  no  |  |
 | lockStatus | Bool |  no  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | restoreCoupon | Bool |  no  |  |
 | orderType | String |  no  |  |
 | prices | [ShipmentPrices1](#ShipmentPrices1)? |  yes  |  |
 | order | [OrderObj](#OrderObj) |  no  |  |
 | shipmentUpdateTime | Double |  no  |  |
 | weight | [String: Any] |  no  |  |
 | orderValue | Double |  no  |  |
 | articleDetails | [String: Any] |  no  |  |
 | journeyType | String |  no  |  |
 | deliveryAddress | [DeliveryAddress](#DeliveryAddress) |  no  |  |
 | company | [Company1](#Company1) |  no  |  |
 | orderingStore | [Store1](#Store1)? |  yes  |  |
 | shipmentStatus | [CurrentShipmentStatus](#CurrentShipmentStatus) |  no  |  |
 | shipmentGst | [ShipmentGst1](#ShipmentGst1) |  no  |  |
 | noOfBagsOrder | Int |  no  |  |
 | orderIntegrationId | String? |  yes  |  |
 | shipmentStatusHistory | [[ShipmentStatusCommon](#ShipmentStatusCommon)] |  no  |  |
 | qcRequired | [String: Any]? |  yes  |  |
 | dpDetails | [DpDetails1](#DpDetails1)? |  yes  |  |
 | restorePromos | [String: Any]? |  yes  |  |
 | operationalStatus | String |  no  |  |
 | totalShipmentBags | Int |  no  |  |
 | shipmentId | String |  no  |  |
 | paymentType | String? |  yes  |  |
 | shipmentValue | Double |  no  |  |
 | transactionType | String |  no  |  |
 | fallbackUser | [String: Any]? |  yes  |  |
 | shipment | [ShipmentDetails1](#ShipmentDetails1) |  no  |  |
 | isProcessing | Bool |  no  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails) |  no  |  |
 | einvoiceInfo | [EinvoiceInfo](#EinvoiceInfo)? |  yes  |  |
 | shipmentQuantity | Int |  no  |  |
 | comment | String? |  yes  |  |
 | orderSource | String |  no  |  |
 | appId | String |  no  |  |
 | rtoAddress | [RtoAddress1](#RtoAddress1) |  no  |  |
 | tags | [String] |  no  |  |
 | totalShipmentsInOrder | Int |  no  |  |
 | fulfillingStore | [Store1](#Store1) |  no  |  |

---


 
 
 #### [GetBagsPlatformResponse](#GetBagsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Bag](#Bag)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [BagDetailsPlatformResponse](#BagDetailsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMethods | [String: Any] |  no  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | article | [Article](#Article) |  no  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | meta | [BagMeta](#BagMeta)? |  yes  |  |
 | bagUpdateTime | Double? |  yes  |  |
 | bagId | Int |  no  |  |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails) |  no  |  |
 | appliedPromos | [[String: Any]]? |  yes  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | item | [Item](#Item) |  no  |  |
 | prices | [Prices](#Prices) |  no  |  |
 | journeyType | String |  no  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |
 | bId | Int |  no  |  |
 | dates | [String: Any]? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | bType | String? |  yes  |  |
 | gstDetails | [BagGSTDetails](#BagGSTDetails) |  no  |  |
 | displayName | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | status | [BagReturnableCancelableStatus](#BagReturnableCancelableStatus) |  no  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)] |  no  |  |

---



