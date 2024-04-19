



##### [Back to Platform docs](./README.md)

## Order Methods
Handles all platform order and shipment api(s)

Default
* [invalidateShipmentCache](#invalidateshipmentcache)
* [reassignLocation](#reassignlocation)
* [updateShipmentLock](#updateshipmentlock)
* [getAnnouncements](#getannouncements)
* [updateAddress](#updateaddress)
* [click2Call](#click2call)
* [updateShipmentStatus](#updateshipmentstatus)
* [processManifest](#processmanifest)
* [dispatchManifest](#dispatchmanifest)
* [getRoleBasedActions](#getrolebasedactions)
* [getShipmentHistory](#getshipmenthistory)
* [postShipmentHistory](#postshipmenthistory)
* [sendSmsNinja](#sendsmsninja)
* [updatePackagingDimensions](#updatepackagingdimensions)
* [createOrder](#createorder)
* [getChannelConfig](#getchannelconfig)
* [createChannelConfig](#createchannelconfig)
* [uploadConsent](#uploadconsent)
* [orderUpdate](#orderupdate)
* [checkOrderStatus](#checkorderstatus)
* [getStateTransitionMap](#getstatetransitionmap)
* [getAllowedStateTransition](#getallowedstatetransition)
* [fetchCreditBalanceDetail](#fetchcreditbalancedetail)
* [fetchRefundModeConfig](#fetchrefundmodeconfig)
* [attachOrderUser](#attachorderuser)
* [sendUserMobileOTP](#sendusermobileotp)
* [verifyMobileOTP](#verifymobileotp)
* [downloadLanesReport](#downloadlanesreport)
* [eInvoiceRetry](#einvoiceretry)
* [trackShipment](#trackshipment)
* [updateShipmentTracking](#updateshipmenttracking)
* [generateInvoiceID](#generateinvoiceid)
* [getShipmentBagReasons](#getshipmentbagreasons)
* [getShipments](#getshipments)
* [getShipmentById](#getshipmentbyid)
* [getOrderById](#getorderbyid)
* [getLaneConfig](#getlaneconfig)
* [getOrders](#getorders)
* [getApplicationShipments](#getapplicationshipments)
* [trackShipmentPlatform](#trackshipmentplatform)
* [getfilters](#getfilters)
* [getBulkShipmentExcelFile](#getbulkshipmentexcelfile)
* [getBulkActionTemplate](#getbulkactiontemplate)
* [downloadBulkActionTemplate](#downloadbulkactiontemplate)
* [getShipmentReasons](#getshipmentreasons)
* [getPlatformShipmentReasons](#getplatformshipmentreasons)
* [getBagById](#getbagbyid)
* [getBags](#getbags)
* [generatePOSReceiptByOrderId](#generateposreceiptbyorderid)




## Methods with example and description



#### invalidateShipmentCache





```swift
platformClient.order.invalidateShipmentCache(body: body) { (response, error) in
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
{
  "response": [
    {
      "message": "Shipment sync initiated",
      "status": 200,
      "shipment_id": "16838049724111283577",
      "error": ""
    },
    {
      "message": "Cannot update cache if shipment in pending, payment_failed or awaiting_payment_confirmation",
      "status": 400,
      "shipment_id": "16836368409661507353",
      "error": ""
    },
    {
      "message": "Problem while deleting the cache",
      "status": 500,
      "shipment_id": "16838049724111283577",
      "error": "Internal Exception"
    }
  ]
}
```
</details>









---


#### reassignLocation





```swift
platformClient.order.reassignLocation(body: body) { (response, error) in
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
platformClient.order.updateShipmentLock(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateShipmentLockPayload | yes | Request body |


update shipment/bag lock and check status

*Returned Response:*




[UpdateShipmentLockResponse](#UpdateShipmentLockResponse)

Successfully update the Lock and get check status of the shipment/Bag




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "shipments checked successfully",
  "check_response": [
    {
      "bags": [
        {
          "bag_id": 175644,
          "is_locked": false,
          "affiliate_bag_id": "def134",
          "affiliate_order_id": "def134"
        }
      ],
      "lock_status": "complete",
      "is_bag_locked": false,
      "is_shipment_locked": true,
      "shipment_id": "16189206454951802898",
      "affiliate_id": "5c764a6534add21972ef7b08",
      "affiliate_shipment_id": "def134",
      "original_filter": {
        "shipment_id": "16189206454951802898"
      },
      "status": "dp_assigned"
    }
  ]
}
```
</details>









---


#### getAnnouncements





```swift
platformClient.order.getAnnouncements(date: date) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| date | String? | no | Date On which the announcement is Active (Date should in ISO Datetime format IST Time) |  



Get Announcements

*Returned Response:*




[AnnouncementsResponse](#AnnouncementsResponse)

Announcements retrieved successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateAddress





```swift
platformClient.order.updateAddress(shipmentId: shipmentId, name: name, address: address, addressType: addressType, pincode: pincode, phone: phone, email: email, landmark: landmark, addressCategory: addressCategory, city: city, state: state, country: country) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes |  |   
| name | String? | no |  |   
| address | String? | no |  |   
| addressType | String? | no |  |   
| pincode | String? | no |  |   
| phone | String? | no |  |   
| email | String? | no |  |   
| landmark | String? | no |  |   
| addressCategory | String | yes |  |   
| city | String? | no |  |   
| state | String? | no |  |   
| country | String? | no |  |  



Update Address for the order

*Returned Response:*




[BaseResponse](#BaseResponse)

Update Address will be processed!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### click2Call





```swift
platformClient.order.click2Call(caller: caller, receiver: receiver, bagId: bagId, callerId: callerId, method: method) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| caller | String | yes | Call Number |   
| receiver | String | yes | Receiver Number |   
| bagId | String | yes | Bag Id for the query |   
| callerId | String? | no | Caller Id |   
| method | String? | no | Provider Method to Call |  



Click to Call

*Returned Response:*




[Click2CallResponse](#Click2CallResponse)

Process call on request!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "call_id": "c2c_646b00bc-984c-4c10-bb8d-0e850a1e0022"
}
```
</details>









---


#### updateShipmentStatus





```swift
platformClient.order.updateShipmentStatus(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdateShipmentStatusRequest | yes | Request body |


This API is for Shipment State transition or Shipment data update or both below example is for partial state transition with data update

*Returned Response:*




[UpdateShipmentStatusResponseBody](#UpdateShipmentStatusResponseBody)

NOTE success response can contains success and failed result as well




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "statuses": [
    {
      "shipments": [
        {
          "status": 200,
          "final_state": {
            "bag_confirmed": "bag_confirmed",
            "shipment_id": "16836279770211860494"
          },
          "identifier": "16836279770211860494"
        }
      ]
    },
    {
      "shipments": [
        {
          "status": 400,
          "message": "Invalid State Transition bag_confirmed detected for given entity",
          "code": "",
          "exception": "ValidationError",
          "stack_trace": "",
          "meta": {},
          "identifier": "16836279770211860494"
        }
      ]
    }
  ]
}
```
</details>









---


#### processManifest





```swift
platformClient.order.processManifest(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateOrderPayload | yes | Request body |


Process Manifest

*Returned Response:*




[CreateOrderResponse](#CreateOrderResponse)

Manifest will be processed!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### dispatchManifest





```swift
platformClient.order.dispatchManifest(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DispatchManifest | yes | Request body |


Dispatch Manifest

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Shipment Dispatched mapped with manifest!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getRoleBasedActions





```swift
platformClient.order.getRoleBasedActions() { (response, error) in
    // Use response
}
```






Get Role Based Actions

*Returned Response:*




[GetActionsResponse](#GetActionsResponse)

You will get an array of actions allowed for that particular user based on their role




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "permissions": [
    {
      "slug": "create_invoice_s3",
      "display_text": "Create Invoice (s3)",
      "id": 2,
      "description": "Create Invoice (s3)"
    },
    {
      "slug": "call",
      "display_text": "Call",
      "id": 3,
      "description": "Call"
    }
  ]
}
```
</details>









---


#### getShipmentHistory





```swift
platformClient.order.getShipmentHistory(shipmentId: shipmentId, bagId: bagId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String? | no | Shipment Id |   
| bagId | Int? | no | Bag/Product Id |  



Get Shipment History

*Returned Response:*




[ShipmentHistoryResponse](#ShipmentHistoryResponse)

It shows the journey of the shipment!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "activity_history": [
    {
      "message": "Bag status changed to pending",
      "store_id": 10,
      "store_code": "SF94",
      "store_name": "shub",
      "reason": {},
      "createdat": "01 Apr 2022, 17:57:PM",
      "user": "system",
      "type": "activity_status",
      "l1_detail": "",
      "l2_detail": "",
      "l3_detail": "",
      "ticket_id": "",
      "ticket_url": ""
    },
    {
      "message": "Bag status changed to placed",
      "store_id": 10,
      "store_code": "SF94",
      "store_name": "shub",
      "reason": {},
      "createdat": "01 Apr 2022, 17:57:PM",
      "user": "system",
      "type": "activity_status",
      "l1_detail": "",
      "l2_detail": "",
      "l3_detail": "",
      "ticket_id": "",
      "ticket_url": ""
    }
  ]
}
```
</details>









---


#### postShipmentHistory





```swift
platformClient.order.postShipmentHistory(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PostShipmentHistory | yes | Request body |


Post shipment history

*Returned Response:*




[ShipmentHistoryResponse](#ShipmentHistoryResponse)

It shows the journey of the shipment!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "activity_history": [
    {
      "message": "Bag status changed to pending",
      "store_id": 10,
      "store_code": "SF94",
      "store_name": "shub",
      "reason": {},
      "createdat": "01 Apr 2022, 17:57:PM",
      "user": "system",
      "type": "activity_status",
      "l1_detail": "",
      "l2_detail": "",
      "l3_detail": "",
      "ticket_id": "",
      "ticket_url": ""
    },
    {
      "message": "Bag status changed to placed",
      "store_id": 10,
      "store_code": "SF94",
      "store_name": "shub",
      "reason": {},
      "type": "activity_status",
      "createdat": "01 Apr 2022, 17:57:PM",
      "user": "system",
      "l1_detail": "",
      "l2_detail": "",
      "l3_detail": "",
      "ticket_id": "",
      "ticket_url": ""
    }
  ],
  "success": true
}
```
</details>









---


#### sendSmsNinja





```swift
platformClient.order.sendSmsNinja(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SendSmsPayload | yes | Request body |


Send SMS Ninja Panel

*Returned Response:*




[OrderStatusResult](#OrderStatusResult)

Sms Sent successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": "true",
  "message": "Successfully emitted aldaviz-delayed-shipment-event"
}
```
</details>









---


#### updatePackagingDimensions





```swift
platformClient.order.updatePackagingDimensions(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UpdatePackagingDimensionsPayload | yes | Request body |


Update Packaging Dimensions

*Returned Response:*




[UpdatePackagingDimensionsResponse](#UpdatePackagingDimensionsResponse)

Manifest will be processed!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createOrder





```swift
platformClient.order.createOrder(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateOrderAPI | yes | Request body |


Create Order

*Returned Response:*




[CreateOrderResponse](#CreateOrderResponse)

Successfully created an order!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getChannelConfig





```swift
platformClient.order.getChannelConfig() { (response, error) in
    // Use response
}
```






getChannelConfig

*Returned Response:*




[CreateChannelConfigData](#CreateChannelConfigData)

Successfully created the config data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "config_data": {
    "payment_info": {
      "payment_methods": [
        {
          "mode": "COD",
          "collect_by": "gringotts",
          "refund_by": "gringotts"
        }
      ],
      "source": "fynd",
      "mode_of_payment": "COD"
    },
    "dp_configuration": {
      "shipping_by": "fynd"
    },
    "logo_url": {},
    "location_reassignment": false,
    "lock_states": [
      "bag_packed"
    ],
    "shipment_assignment": "16703096324891701814"
  }
}
```
</details>









---


#### createChannelConfig





```swift
platformClient.order.createChannelConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateChannelConfigData | yes | Request body |


createChannelConfig

*Returned Response:*




[CreateChannelConfigResponse](#CreateChannelConfigResponse)

Successfully updateShipmentStatus!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "acknowledged": true,
    "is_upserted": false,
    "is_inserted": false
  }
}
```
</details>









---


#### uploadConsent





```swift
platformClient.order.uploadConsent(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UploadConsent | yes | Request body |


Upload Consent

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Successful Manifest upload!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### orderUpdate





```swift
platformClient.order.orderUpdate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PlatformOrderUpdate | yes | Request body |


Update Order

*Returned Response:*




[ResponseDetail](#ResponseDetail)

We are processing the order!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### checkOrderStatus





```swift
platformClient.order.checkOrderStatus(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | OrderStatus | yes | Request body |


Check order status

*Returned Response:*




[OrderStatusResult](#OrderStatusResult)

Order Status retrieved successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getStateTransitionMap





```swift
platformClient.order.getStateTransitionMap() { (response, error) in
    // Use response
}
```






Get State Transition Map

*Returned Response:*




[BagStateTransitionMap](#BagStateTransitionMap)

State Transition Mapping, for next possible state




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "fynd": {
    "placed": [
      "bag_not_confirmed",
      "cancelled_customer",
      "cancelled_fynd",
      "bag_confirmed",
      "store_reassigned"
    ],
    "bag_confirmed": [
      "handed_over_to_customer",
      "bag_invoiced"
    ],
    "dp_assigned": [
      "handed_over_to_customer",
      "bag_packed"
    ],
    "bag_packed": [
      "bag_not_picked",
      "cancelled_customer"
    ],
    "handed_over_to_dg": [
      "cancelled_at_dp",
      "credit_note_generated"
    ],
    "out_for_delivery": [
      "delivery_done"
    ],
    "delivery_done": [
      "bag_lost",
      "return_initiated"
    ],
    "return_initiated": [
      "return_accepted"
    ],
    "bag_picked": [
      "refund_completed",
      "out_for_delivery",
      "delivery_done"
    ],
    "pending": [
      "pending",
      "placed",
      "payment_failed",
      "manual_refund"
    ],
    "payment_failed": [
      "awaiting_payment_confirmation",
      "placed",
      "manual_refund"
    ],
    "return_pre_qc": [
      "return_initiated",
      "return_request_cancelled",
      "manual_refund"
    ],
    "bag_not_packed": [
      "manual_refund"
    ],
    "bag_rescheduled": [
      "manual_refund"
    ],
    "fluid_state": [
      "manual_refund"
    ],
    "handed_over_to_customer": [
      "manual_refund",
      "return_initiated"
    ],
    "hold": [
      "manual_refund"
    ],
    "product_not_available": [
      "manual_refund"
    ],
    "qc_fail": [
      "manual_refund"
    ],
    "qc_pass": [
      "manual_refund"
    ],
    "refund_done": [
      "manual_refund"
    ],
    "refund_processing": [
      "manual_refund"
    ],
    "return_assigning_dp": [
      "manual_refund"
    ],
    "return_bag_packed": [
      "manual_refund"
    ],
    "return_dp_cancelled": [
      "manual_refund"
    ],
    "unhold": [
      "manual_refund"
    ],
    "web_store_rescheduled": [
      "manual_refund"
    ],
    "credit_note_cancelled": [
      "refund_initiated"
    ]
  },
  "affiliate": {
    "placed": [
      "bag_not_confirmed",
      "store_reassigned",
      "product_not_available"
    ],
    "store_reassigned": [
      "bag_not_confirmed"
    ],
    "bag_confirmed": [
      "bag_invoiced",
      "cancelled_fynd"
    ],
    "dp_assigned": [
      "bag_packed"
    ],
    "pending": [
      "payment_failed",
      "placed",
      "manual_refund"
    ],
    "ready_for_dp_assignment": [
      "dp_assigned"
    ],
    "credit_note_generated": [
      "refund_pending",
      "refund_initiated"
    ],
    "assigning_return_dp": [
      "manual_refund"
    ],
    "bag_not_packed": [
      "manual_refund"
    ],
    "bag_rescheduled": [
      "manual_refund"
    ],
    "fluid_state": [
      "manual_refund"
    ],
    "handed_over_to_customer": [
      "manual_refund",
      "return_initiated"
    ],
    "hold": [
      "manual_refund"
    ],
    "product_not_available": [
      "manual_refund"
    ],
    "qc_fail": [
      "manual_refund"
    ],
    "qc_pass": [
      "manual_refund"
    ],
    "refund_done": [
      "manual_refund"
    ],
    "refund_processing": [
      "manual_refund"
    ],
    "return_assigning_dp": [
      "manual_refund"
    ],
    "return_bag_packed": [
      "manual_refund"
    ],
    "return_dp_cancelled": [
      "manual_refund"
    ],
    "unhold": [
      "manual_refund"
    ],
    "web_store_rescheduled": [
      "manual_refund"
    ],
    "credit_note_cancelled": [
      "refund_initiated"
    ]
  }
}
```
</details>









---


#### getAllowedStateTransition
To fetch next state transitions.




```swift
platformClient.order.getAllowedStateTransition(orderingChannel: orderingChannel, status: status) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderingChannel | String | yes | Ordering channel |   
| status | String | yes | current status of a shipment |  



This endpoint will fetch next possible states based on logged in user


*Returned Response:*




[RoleBaseStateTransitionMapping](#RoleBaseStateTransitionMapping)

Role wise state transition mapping, for next possible state




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; send state transition success</i></summary>

```json
{
  "value": {
    "success": true,
    "next_statuses": [
      "bag_picked",
      "delivery_done",
      "rto_bag_delivered",
      "rto_in_transit"
    ]
  }
}
```
</details>

</details>









---


#### fetchCreditBalanceDetail





```swift
platformClient.order.fetchCreditBalanceDetail(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | FetchCreditBalanceRequestPayload | yes | Request body |


Fetch Credit Balance Detail

*Returned Response:*




[FetchCreditBalanceResponsePayload](#FetchCreditBalanceResponsePayload)

Credit Balance will be fetched




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### fetchRefundModeConfig





```swift
platformClient.order.fetchRefundModeConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | RefundModeConfigRequestPayload | yes | Request body |


Fetch Refund Mode Config

*Returned Response:*




[RefundModeConfigResponsePayload](#RefundModeConfigResponsePayload)

Refund mode config is returned based on input parameter




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### attachOrderUser





```swift
platformClient.order.attachOrderUser(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AttachOrderUser | yes | Request body |


Attach Order User

*Returned Response:*




[AttachOrderUserResponse](#AttachOrderUserResponse)

Attach user to order




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### sendUserMobileOTP





```swift
platformClient.order.sendUserMobileOTP(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SendUserMobileOTP | yes | Request body |


Send User Mobile OTP

*Returned Response:*




[SendUserMobileOtpResponse](#SendUserMobileOtpResponse)

Send OTP to user mobile




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "request_id": "112312312",
    "message": "Text",
    "resend_timer": 600,
    "mobile": 99990000
  },
  "message": "Text"
}
```
</details>









---


#### verifyMobileOTP





```swift
platformClient.order.verifyMobileOTP(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | VerifyMobileOTP | yes | Request body |


Verify Mobile OTP

*Returned Response:*




[VerifyOtpResponse](#VerifyOtpResponse)

Verify OTP




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### downloadLanesReport





```swift
platformClient.order.downloadLanesReport(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BulkReportsDownloadRequest | yes | Request body |


downloads lanes shipment/orders.

*Returned Response:*




[BulkReportsDownloadResponse](#BulkReportsDownloadResponse)

Bulk Report creation initiated.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; BulkReportsSucessfulEventSample</i></summary>

```json
{
  "value": {
    "success": true,
    "batch_id": "0000-1111-2222-3333"
  }
}
```
</details>

</details>









---


#### eInvoiceRetry





```swift
platformClient.order.eInvoiceRetry(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EInvoiceRetry | yes | Request body |


Retry e-invoice after failure

*Returned Response:*




[EInvoiceRetryResponse](#EInvoiceRetryResponse)

E-invoice Retry Successfully!!




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; sample1</i></summary>

```json
{
  "value": {
    "response_data": [
      {
        "shipment_id": "16342342342343423",
        "success": true,
        "message": "IRN already generated, for e-invoice type: invoice"
      }
    ],
    "success_count": 1,
    "message": "Success Count: 1 out of 1",
    "success": true
  }
}
```
</details>

</details>









---


#### trackShipment
Get courier partner tracking details




```swift
platformClient.order.trackShipment(shipmentId: shipmentId, awb: awb, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String? | no | Shipment ID |   
| awb | String? | no | AWB number |   
| pageNo | Int? | no | Page number |   
| pageSize | Int? | no | Page size |  



This endpoint allows users to get courier partner tracking details for a given shipment id or awb no. The service will fetch courier partner statuses that are pushed to oms.

*Returned Response:*




[CourierPartnerTrackingResponse](#CourierPartnerTrackingResponse)

Shipment Tracking fetched successfully




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "awb": "713191641",
        "dp_location": "Mumbai",
        "dp_name": "Ecom b2b",
        "dp_status": "dp_assigned",
        "dp_status_updated_at": "2023-07-12T20:17:46.384Z",
        "estimated_delivery_date": "2023-07-12T20:17:46.384Z",
        "id": 370,
        "journey": "forward",
        "operational_status": "dp_assigned",
        "promised_delivery_date": "2023-07-12T20:17:46.384Z",
        "remark": "UD -Manifested",
        "shipment_id": "16908065964581066182"
      }
    ],
    "page": {
      "type": "number",
      "size": 200,
      "current": 1,
      "has_next": true,
      "item_total": 3
    }
  }
}
```
</details>

</details>









---


#### updateShipmentTracking
Post courier partner tracking details




```swift
platformClient.order.updateShipmentTracking(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CourierPartnerTrackingDetails | yes | Request body |


This endpoint allows users to post courier partner tracking details for a given shipment id or awb no. The service will add entry for courier partner statuses and will be saved to oms.

*Returned Response:*




[CourierPartnerTrackingDetails](#CourierPartnerTrackingDetails)

Shipment Tracking updated successfully




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "awb": "713191641",
    "dp_location": "Mumbai",
    "dp_name": "Ecom b2b",
    "dp_status": "dp_assigned",
    "dp_status_updated_at": "2023-07-12T20:17:46.384Z",
    "estimated_delivery_date": "2023-07-12T20:17:46.384Z",
    "id": 370,
    "journey": "forward",
    "operational_status": "dp_assigned",
    "promised_delivery_date": "2023-07-12T20:17:46.384Z",
    "remark": "UD -Manifested",
    "shipment_id": "16908065964581066182"
  }
}
```
</details>

</details>









---


#### generateInvoiceID





```swift
platformClient.order.generateInvoiceID(invoiceType: invoiceType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| invoiceType | String | yes | mention the type of invoice id to generate |  
| body | GenerateInvoiceIDRequest | yes | Request body |


This API is used to manually generate Invoice ID against shipments.

*Returned Response:*




[GenerateInvoiceIDResponse](#GenerateInvoiceIDResponse)

NOTE success response can contains success and failed result as well




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "shipment_id": "16838049724111283577",
      "success": true,
      "invoice_id": "A0B1C2D3",
      "error_message": null
    }
  ]
}
```
</details>









---


#### getShipmentBagReasons
Get reasons behind full or partial cancellation of a shipment




```swift
platformClient.application("<APPLICATION_ID>").order.getShipmentBagReasons(shipmentId: shipmentId, lineNumber: lineNumber) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the bag. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| lineNumber | Int | yes | line number of bag. |  



Use this API to retrieve the issues that led to the cancellation of bags within a shipment.

*Returned Response:*




[ShipmentBagReasons](#ShipmentBagReasons)

Success. Check the example shown below or refer `ShipmentBagReasons` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "reasons": [
    {
      "id": 1,
      "display_name": "Not available",
      "qc_type": [],
      "question_set": []
    },
    {
      "reasons": [
        {
          "id": 2,
          "display_name": "Processing other orders",
          "qc_type": [],
          "question_set": []
        },
        {
          "id": 3,
          "display_name": "Printer not working",
          "qc_type": [],
          "question_set": []
        },
        {
          "reasons": [
            {
              "id": 4,
              "display_name": "Card issues",
              "qc_type": [],
              "question_set": []
            }
          ]
        }
      ]
    },
    {
      "id": 4,
      "display_name": "Card issues",
      "qc_type": [],
      "question_set": []
    }
  ]
}
```
</details>









---


#### getShipments





```swift
platformClient.order.getShipments(lane: lane, bagStatus: bagStatus, statusOverrideLane: statusOverrideLane, timeToDispatch: timeToDispatch, searchType: searchType, searchValue: searchValue, fromDate: fromDate, toDate: toDate, dpIds: dpIds, stores: stores, salesChannels: salesChannels, pageNo: pageNo, pageSize: pageSize, fetchActiveShipment: fetchActiveShipment, allowInactive: allowInactive, excludeLockedShipments: excludeLockedShipments, paymentMethods: paymentMethods, channelShipmentId: channelShipmentId, channelOrderId: channelOrderId, customMeta: customMeta, orderingChannel: orderingChannel, companyAffiliateTag: companyAffiliateTag, myOrders: myOrders, platformUserId: platformUserId, sortType: sortType, showCrossCompanyData: showCrossCompanyData, tags: tags, customerId: customerId, orderType: orderType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no | Name of lane for which data is to be fetched |   
| bagStatus | String? | no | Comma separated values of bag statuses |   
| statusOverrideLane | Bool? | no | Use this flag to fetch by bag_status and override lane |   
| timeToDispatch | Int? | no |  |   
| searchType | String? | no | Search type key |   
| searchValue | String? | no | Search type value |   
| fromDate | String? | no | Start Date in DD-MM-YYYY format |   
| toDate | String? | no | End Date in DD-MM-YYYY format |   
| dpIds | String? | no | Comma separated values of delivery partner ids |   
| stores | String? | no | Comma separated values of store ids |   
| salesChannels | String? | no | Comma separated values of sales channel ids |   
| pageNo | Int? | no | Page number for paginated data |   
| pageSize | Int? | no | Page size of data received per page |   
| fetchActiveShipment | Bool? | no | flag to fetch active shipments |   
| allowInactive | Bool? | no | Flag to allow inactive shipments |   
| excludeLockedShipments | Bool? | no | flag to fetch locked shipments |   
| paymentMethods | String? | no | Comma separated values of payment methods |   
| channelShipmentId | String? | no | App Shipment Id |   
| channelOrderId | String? | no | App Order Id |   
| customMeta | String? | no |  |   
| orderingChannel | String? | no |  |   
| companyAffiliateTag | String? | no |  |   
| myOrders | Bool? | no |  |   
| platformUserId | String? | no |  |   
| sortType | String? | no | Sort the result data on basis of input |   
| showCrossCompanyData | Bool? | no | Flag to view cross & non-cross company order |   
| tags | String? | no | Comma separated values of tags |   
| customerId | String? | no |  |   
| orderType | String? | no |  |  



Get Shipments Listing for the company id

*Returned Response:*




[ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentById





```swift
platformClient.order.getShipmentById(channelShipmentId: channelShipmentId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| channelShipmentId | String? | no | App Shipment Id |   
| shipmentId | String? | no | Shipment Id |  



Get shipment details for the given shipment.

*Returned Response:*




[ShipmentInfoResponse](#ShipmentInfoResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "order": {
    "fynd_order_id": "FY62B13E2101810C19E4",
    "shipment_count": 1,
    "order_date": "2022-06-21T09:12:26+00:00"
  },
  "shipments": [
    {
      "shipment_id": "16557829457641286433",
      "payment_mode": "COD",
      "fulfilling_store": {
        "meta": {},
        "id": 1,
        "code": "HS-468a5",
        "fulfillment_channel": "pulse",
        "store_name": "Reliance Industries Ltd - Jio Market",
        "contact_person": "",
        "phone": "8268108880",
        "address": "high_street WEWORK, VIJAY DIAMONDS, ANDHERI MUMBAI MAHARASHTRA 400093",
        "city": "MUMBAI",
        "state": "MAHARASHTRA",
        "country": "INDIA",
        "pincode": "400093"
      },
      "delivery_details": {
        "name": "Manish Prakash",
        "email": "Manish.Prakash@ril.com",
        "phone": "7787051611",
        "address": "home 479 sector3 bokaro Bokaro Jharkhand 827003",
        "city": "Bokaro",
        "state": "Jharkhand",
        "country": "India",
        "pincode": "827003",
        "state_code": 0
      },
      "billing_details": {
        "name": "Manish Prakash",
        "email": "Manish.Prakash@ril.com",
        "phone": "7787051611",
        "address": "home 479 sector3 bokaro Bokaro Jharkhand 827003",
        "city": "Bokaro",
        "state": "Jharkhand",
        "country": "India",
        "pincode": "827003",
        "state_code": 0
      },
      "dp_details": {
        "id": null,
        "name": null,
        "awb_no": null,
        "eway_bill_id": null,
        "track_url": null,
        "gst_tag": "sgst"
      },
      "journey_type": "forward",
      "order": {
        "fynd_order_id": "FY62B13E2101810C19E4",
        "affiliate_id": "000000000000000000000001",
        "ordering_channel": "FYND",
        "source": "null",
        "tax_details": {
          "gstin": null
        },
        "order_date": "2022-06-21T09:12:26+00:00"
      },
      "gst_details": {
        "value_of_good": 475.24,
        "gst_fee": 23.76,
        "brand_calculated_amount": 499,
        "tax_collected_at_source": 0,
        "gstin_code": null
      },
      "shipment_quantity": 1,
      "bag_status_history": [
        {
          "status": "pending",
          "updated_at": "2022-06-21T09:12:26+00:00",
          "state_type": "operational",
          "app_display_name": "Pending",
          "display_name": "Pending",
          "forward": null
        },
        {
          "status": "placed",
          "updated_at": "2022-06-21T09:12:32+00:00",
          "state_type": "operational",
          "app_display_name": "Ordered",
          "display_name": "Placed",
          "forward": null
        },
        {
          "status": "bag_confirmed",
          "updated_at": "2022-06-21T09:39:13+00:00",
          "state_type": "operational",
          "app_display_name": "Ordered",
          "display_name": "Bag Confirmed",
          "forward": null
        },
        {
          "status": "dp_assigned",
          "updated_at": "2022-06-21T09:40:04+00:00",
          "state_type": "operational",
          "app_display_name": "DP Assigned",
          "display_name": "DP Assigned",
          "forward": null
        },
        {
          "status": "bag_picked",
          "updated_at": "2022-06-21T09:40:12+00:00",
          "state_type": "operational",
          "app_display_name": "Shipped",
          "display_name": "In Transit",
          "forward": null
        },
        {
          "status": "out_for_delivery",
          "updated_at": "2022-06-21T09:40:29+00:00",
          "state_type": "operational",
          "app_display_name": "Out For Delivery",
          "display_name": "Out For Delivery",
          "forward": null
        },
        {
          "status": "delivery_done",
          "updated_at": "2022-06-21T09:40:37+00:00",
          "state_type": "operational",
          "app_display_name": "Delivered",
          "display_name": "Delivery Done",
          "forward": null
        }
      ],
      "bags": [
        {
          "bag_id": 43880,
          "display_name": "Bag",
          "entity_type": "bag",
          "bag_configs": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": false,
            "is_customer_return_allowed": true,
            "allow_force_return": false,
            "is_active": false
          },
          "financial_breakup": {
            "price_effective": 499,
            "discount": 0,
            "amount_paid": 549,
            "coupon_effective_discount": 0,
            "delivery_charge": 50,
            "fynd_credits": 0,
            "cod_charges": 0,
            "refund_credit": 0,
            "cashback": 0,
            "refund_amount": 549,
            "added_to_fynd_cash": false,
            "cashback_applied": 0,
            "gst_tax_percentage": 5,
            "value_of_good": 475.24,
            "price_marked": 499,
            "transfer_price": 0,
            "brand_calculated_amount": 499,
            "promotion_effective_discount": 0,
            "coupon_value": 0,
            "pm_price_split": {
              "COD": 549
            },
            "size": "5",
            "total_units": 1,
            "hsn_code": "62050000",
            "identifiers": {
              "sku_code": "CL-001L-L-PRPL-PINK-5"
            },
            "item_name": "Purple Flip Flops",
            "gst_fee": 23.76,
            "gst_tag": "IGST"
          },
          "current_status": {
            "id": 1
          },
          "item": {
            "name": "Purple Flip Flops",
            "brand": "Nike",
            "slug_key": "purple-flip-flops-ezmucvw4d3",
            "images": [
              "https://hdn-1.fynd.com/products/pictures/item/free/270x0/CL-001L-L-PRPL-PINK-6/Rvk5WbGg9Hx-1.jpg"
            ],
            "size": "5",
            "l1_category": [],
            "l3_category": 27
          },
          "brand": {
            "modified_on": "1655707988",
            "logo": "https://hdn-1.jiomarketx0.de/x0/brands/pictures/square-logo/original/DbhIvd_tB-Logo.jpeg",
            "brand_name": "Nike",
            "company": null,
            "created_on": "1647793418",
            "id": 4
          },
          "gst_details": {
            "gstin_code": "null",
            "gst_tag": "IGST",
            "hsn_code": "62050000",
            "value_of_good": 475.24,
            "gst_tax_percentage": 5,
            "is_default_hsn_code": true,
            "brand_calculated_amount": 499,
            "gst_fee": 23.76,
            "tax_collected_at_source": 0
          },
          "article": {
            "uid": "6237fdfec0903e7ae543c201",
            "identifiers": {
              "sku_code": "CL-001L-L-PRPL-PINK-5"
            },
            "return_config": {
              "time": 30,
              "unit": "days",
              "returnable": true
            }
          },
          "quantity": 1
        }
      ],
      "delivery_slot": {
        "slot": "By 03:00 AM",
        "upper_bound": "2022-06-21T03:42:23+00:00",
        "lower_bound": "2022-06-21T03:42:23+00:00",
        "date": "2022-06-21T03:42:23+00:00",
        "type": "order_window"
      },
      "total_items": 1,
      "payment_methods": {
        "slug": "COD",
        "payment_id": "COD",
        "payment_amt": 549,
        "payment_cart": null,
        "payment_desc": "COD",
        "bdcustomer_id": null,
        "order_inv_num": null,
        "mode_of_payment": "COD",
        "payment_gateway_logo": null,
        "transaction_ref_number": ""
      },
      "vertical": "GROCERIES",
      "payments": {
        "mode": "COD",
        "logo": "https://hdn-1.fynd.com/payment/Pos+Logo.png",
        "source": "Jio Partner Pay"
      },
      "priority_text": null,
      "status": {
        "created_at": "1655804437",
        "shipment_id": "16557829457641286433",
        "status": "delivery_done",
        "bag_list": [
          "43880"
        ],
        "id": 19980
      },
      "prices": {
        "amount_paid": 549,
        "refund_amount": 549,
        "price_marked": 499,
        "cod_charges": 0,
        "discount": 0,
        "cashback_applied": 0,
        "delivery_charge": 50,
        "fynd_credits": 0,
        "cashback": 0,
        "price_effective": 499,
        "refund_credit": 0,
        "value_of_good": 475.24,
        "pm_price_split": 500,
        "COD": 549,
        "brand_calculated_amount": 499,
        "coupon_effective_discount": 0,
        "tax_collected_at_source": 0,
        "promotion_effective_discount": 0
      },
      "picked_date": "",
      "tracking_list": [
        {
          "status": "Order Placed",
          "time": "2022-06-21T09:12:32+00:00",
          "is_passed": true,
          "is_current": false,
          "text": ""
        },
        {
          "status": "Order Confirmed",
          "time": "2022-06-21T09:39:13+00:00",
          "is_passed": true,
          "is_current": false,
          "text": ""
        },
        {
          "status": "Invoiced",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false,
          "text": ""
        },
        {
          "status": "Delivery Partner Assigned",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false,
          "text": ""
        },
        {
          "status": "Packed",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false,
          "text": ""
        },
        {
          "status": "In Transit",
          "time": "2022-06-21T09:40:12+00:00",
          "is_passed": true,
          "is_current": false,
          "text": ""
        },
        {
          "status": "Out For Delivery",
          "time": "2022-06-21T09:40:29+00:00",
          "is_passed": true,
          "is_current": false,
          "text": ""
        },
        {
          "status": "Delivered",
          "time": "2022-06-21T09:40:37+00:00",
          "is_passed": true,
          "is_current": true,
          "text": ""
        }
      ],
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36",
      "platform_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/fynd_logo.png",
      "packaging_type": "POLYB_DFLT_L"
    }
  ]
}
```
</details>









---


#### getOrderById





```swift
platformClient.order.getOrderById(orderId: orderId, myOrders: myOrders) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes |  |   
| myOrders | Bool? | no |  |  



Get Order Details by ID

*Returned Response:*




[OrderDetailsResponse](#OrderDetailsResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "order": {
    "fynd_order_id": "FY637CFCC00177713D47",
    "meta": {
      "files": [],
      "staff": {},
      "cart_id": 1835,
      "comment": "",
      "extra_meta": {},
      "order_tags": null,
      "order_type": "HomeDelivery",
      "employee_id": null,
      "payment_type": "self",
      "mongo_cart_id": 1835,
      "order_platform": "platform-site",
      "ordering_store": 1,
      "order_child_entities": [
        "bag",
        "shipment"
      ]
    },
    "affiliate_id": "62f35968d101a6d38c886d85",
    "ordering_channel": "Ecomm",
    "source": "uniket-desktop",
    "tax_details": {
      "gstin": null
    },
    "order_date": "2022-11-22T22:15:53+00:00",
    "prices": {
      "amount_paid": 948.5,
      "refund_amount": 948.5,
      "price_marked": 1398,
      "cod_charges": 0,
      "discount": 349.5,
      "cashback_applied": 0,
      "delivery_charge": 0,
      "fynd_credits": 0,
      "cashback": 0,
      "price_effective": 1048.5,
      "refund_credit": 0,
      "value_of_good": 803.82,
      "coupon_value": 0,
      "tax_collected_at_source": 0,
      "promotion_effective_discount": 100,
      "amount_paid_roundoff": 948
    },
    "raw_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36",
    "comment": ""
  },
  "shipments": [
    {
      "shipment_id": "16691355532841431595",
      "fulfilling_store": {
        "id": 5,
        "code": "SF94",
        "fulfillment_channel": "pulse",
        "store_name": "RELIANCE RETAIL LTD - Beauty & Personal care",
        "contact_person": "Anju Abraham",
        "phone": "918898846722",
        "address": "store 1ST FLOOR, WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR, KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTR Mumbai Maharashtra 400093",
        "city": "Mumbai",
        "state": "Maharashtra",
        "country": "India",
        "pincode": "400093",
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
              "open": true,
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
          "display_name": "RELIANCE RETAIL LTD - Beauty & Personal care",
          "gst_credentials": {
            "e_invoice": {
              "enabled": false
            },
            "e_waybill": {
              "enabled": false
            }
          },
          "notification_emails": [
            "anjuabraham@gofynd.com"
          ],
          "product_return_config": {
            "on_same_store": true
          },
          "additional_contact_details": {
            "number": [
              "91 - 8898846722"
            ]
          },
          "ewaybill_portal_details": null
        },
        "fulfilment_type": null
      },
      "delivery_details": {
        "name": "Vaishakh Shetty",
        "email": "",
        "phone": "9892133001",
        "address": "home Asd,Mumbai,Maharashtra,Mumbai,Maharashtra,India Asd,Mumbai,Maharashtra,Mumbai,Maharashtra,India Mumbai,Maharashtra Mumbai Maharashtra 400083",
        "city": "Mumbai",
        "state": "Maharashtra",
        "country": "India",
        "pincode": "400083",
        "state_code": "27"
      },
      "billing_details": {
        "name": "Vaishakh Shetty",
        "email": "",
        "phone": "9892133001",
        "address": "home Asd,Mumbai,Maharashtra,Mumbai,Maharashtra,India Mumbai,Maharashtra Mumbai Maharashtra 400083",
        "city": "Mumbai",
        "state": "Maharashtra",
        "country": "India",
        "pincode": "400083",
        "state_code": "27"
      },
      "dp_details": {
        "id": null,
        "name": null,
        "awb_no": null,
        "eway_bill_id": null,
        "track_url": null,
        "gst_tag": "sgst",
        "dp_otp": ""
      },
      "journey_type": "forward",
      "order": {
        "fynd_order_id": "FY637CFCC00177713D47",
        "meta": {
          "files": [],
          "staff": {},
          "cart_id": 1835,
          "comment": "",
          "extra_meta": {},
          "order_tags": null,
          "order_type": "HomeDelivery",
          "employee_id": null,
          "payment_type": "self",
          "mongo_cart_id": 1835,
          "order_platform": "platform-site",
          "ordering_store": 1,
          "order_child_entities": [
            "bag",
            "shipment"
          ]
        },
        "affiliate_id": "62f35968d101a6d38c886d85",
        "ordering_channel": "Ecomm",
        "source": "uniket-desktop",
        "tax_details": {
          "gstin": null
        },
        "order_date": "2022-11-22T22:15:53+00:00",
        "prices": {
          "amount_paid": 948.5,
          "refund_amount": 948.5,
          "price_marked": 1398,
          "cod_charges": 0,
          "discount": 349.5,
          "cashback_applied": 0,
          "delivery_charge": 0,
          "fynd_credits": 0,
          "cashback": 0,
          "price_effective": 1048.5,
          "refund_credit": 0,
          "value_of_good": 803.82,
          "coupon_value": 0,
          "tax_collected_at_source": 0,
          "promotion_effective_discount": 100,
          "amount_paid_roundoff": 948
        },
        "raw_user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36",
        "comment": ""
      },
      "gst_details": {
        "value_of_good": 401.91,
        "gst_fee": 72.34,
        "brand_calculated_amount": 474.25,
        "tax_collected_at_source": 0,
        "gstin_code": "null"
      },
      "shipment_quantity": 1,
      "bag_status_history": [
        {
          "status": "pending",
          "updated_at": "2022-11-22T22:15:54+00:00",
          "state_type": "operational",
          "app_display_name": "Pending",
          "display_name": "Pending",
          "forward": null
        },
        {
          "status": "placed",
          "updated_at": "2022-11-22T22:15:59+00:00",
          "state_type": "operational",
          "app_display_name": "Ordered",
          "display_name": "Placed",
          "forward": null
        },
        {
          "status": "bag_confirmed",
          "updated_at": "2022-11-22T22:54:50+00:00",
          "state_type": "operational",
          "app_display_name": "Ordered",
          "display_name": "Bag Confirmed",
          "forward": null
        }
      ],
      "bags": [
        {
          "bag_id": 20472628,
          "display_name": "Bag",
          "entity_type": "bag",
          "meta": {
            "custom_message": "Please send the shipment as soon as possible."
          },
          "bag_configs": {
            "is_returnable": true,
            "can_be_cancelled": true,
            "enable_tracking": true,
            "is_customer_return_allowed": false,
            "is_active": true,
            "allow_force_return": true
          },
          "financial_breakup": {
            "price_effective": 524,
            "discount": 174,
            "amount_paid": 474.25,
            "coupon_effective_discount": 0,
            "delivery_charge": 0,
            "fynd_credits": 0,
            "cod_charges": 0,
            "refund_credit": 0,
            "cashback": 0,
            "refund_amount": 474.25,
            "added_to_fynd_cash": false,
            "cashback_applied": 0,
            "gst_tax_percentage": 18,
            "value_of_good": 401.91,
            "price_marked": 699,
            "transfer_price": 0,
            "brand_calculated_amount": 474.25,
            "tax_collected_at_source": 0,
            "tcs_percentage": 0,
            "promotion_effective_discount": 50,
            "coupon_value": 0,
            "amount_paid_roundoff": 474,
            "size": "OS",
            "total_units": 1,
            "hsn_code": "20472574",
            "identifiers": {
              "ean": "6902395784364",
              "sku_code": "1020820"
            },
            "item_name": "L'Oreal Paris Rouge Signature Matte Liquid Lipstick, 146 I Enlight",
            "gst_fee": 72.34,
            "gst_tag": "SGST"
          },
          "current_status": {
            "id": 1
          },
          "item": {
            "name": "L'Oreal Paris Rouge Signature Matte Liquid Lipstick, 146 I Enlight",
            "brand": "L'Oreal Paris",
            "slug_key": "loreal-paris-rouge-signature-matte-liquid-lipstick-146-i-enlight-96a1wferol05",
            "images": [
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/shj00c0H4T-1020820_1.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/iM7wvxxxT5-1020820_2.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/TcPMevsr6O-1020820_3.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/BAiV5xox57-1020820_4.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/6wXPvugMto-1020820_5.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/LvlirqfHho-1020820_6.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/KKnZHIJwO-1020820_7.jpg",
              "https://cdn.pixelbin.io/v2/super-fire-62c344/tirabz/wrkr/tiraz0/products/pictures/item/free/270x0/1020820/NheQB3HLlq-1020820_8.jpg"
            ],
            "size": "OS",
            "l1_category": [
              "Makeup"
            ],
            "l3_category": 134
          },
          "brand": {
            "credit_note_expiry_days": null,
            "modified_on": "2022-11-22T09:08:25",
            "id": 2,
            "logo": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/tira-n/wrkr/tiraz0/brands/pictures/square-logo/original/iCMr3gmUF-Logo.jpeg",
            "created_on": "2022-08-09T13:17:41",
            "credit_note_allowed": false,
            "start_date": null,
            "company": null,
            "script_last_ran": null,
            "pickup_location": null,
            "brand_name": "L'Oreal Paris",
            "invoice_prefix": null,
            "is_virtual_invoice": false
          },
          "gst_details": {
            "gstin_code": "null",
            "gst_tag": "SGST",
            "hsn_code": "20472574",
            "value_of_good": 401.91,
            "gst_tax_percentage": 18,
            "is_default_hsn_code": true,
            "brand_calculated_amount": 474.25,
            "tax_collected_at_source": 0,
            "hsn_code_id": "62f3ad402cbb29a3a1c9186b",
            "gst_fee": 72.34,
            "igst_tax_percentage": 0,
            "sgst_tax_percentage": 9,
            "cgst_tax_percentage": 9,
            "igst_gst_fee": 0,
            "cgst_gst_fee": 36.17,
            "sgst_gst_fee": 36.17
          },
          "article": {
            "uid": "62f495f2a604499934540c69",
            "identifiers": {
              "ean": "6902395784364",
              "sku_code": "1020820"
            },
            "return_config": {
              "time": 7,
              "unit": "days",
              "returnable": true
            }
          },
          "affiliate_bag_details": {
            "coupon_code": null
          },
          "quantity": 1,
          "identifier": "",
          "applied_promos": [
            {
              "amount": 50,
              "promo_id": "637cfcb19d43e76334b9fb6c",
              "buy_rules": [
                {
                  "item_criteria": {
                    "item_brand": [
                      2
                    ]
                  },
                  "cart_conditions": {}
                }
              ],
              "mrp_promotion": false,
              "discount_rules": [
                {
                  "type": "amount",
                  "value": 100
                }
              ],
              "promotion_name": "VS",
              "promotion_type": "amount",
              "article_quantity": 2
            }
          ],
          "mark_as_returnable": false
        }
      ],
      "custom_message": "Please send the shipment as soon as possible.",
      "company_id": 2,
      "user": {
        "user_oid": "637cbf77e7706fbc79baa669",
        "gender": "female",
        "first_name": "Vaishakh",
        "id": 18052704,
        "mobile": "9892133001",
        "mongo_user_id": "637cbf77e7706fbc79baa669",
        "email": "vaishakhshetty@gofynd.com",
        "last_name": "Shetty",
        "is_anonymous_user": false
      },
      "pickup_slot": {},
      "delivery_slot": {
        "slot": "By 16:00 PM",
        "upper_bound": "2022-11-25T16:45:50+00:00",
        "lower_bound": "2022-11-23T16:45:50+00:00",
        "date": "2022-11-25T16:45:50+00:00",
        "type": "order_window"
      },
      "total_items": 1,
      "payment_methods": {
        "PP": {
          "amount": 474.25,
          "mode": "PP",
          "name": "PartnerPay",
          "collect_by": "seller",
          "refund_by": "seller",
          "meta": {}
        }
      },
      "vertical": null,
      "priority_text": null,
      "status": {
        "created_at": "2022-11-22T22:54:50+00:00",
        "id": 88117778,
        "meta": {
          "request_meta": {},
          "state_manager_used": "entity",
          "kafka_emission_status": 1
        },
        "status": "bag_confirmed",
        "shipment_id": "16691355532841431595",
        "bag_list": [
          "20472628"
        ],
        "current_shipment_status": "bag_confirmed",
        "status_created_at": "2022-11-22T22:54:50"
      },
      "prices": {
        "amount_paid": 474.25,
        "refund_amount": 474.25,
        "price_marked": 699,
        "cod_charges": 0,
        "discount": 174.75,
        "cashback_applied": 0,
        "delivery_charge": 0,
        "fynd_credits": 0,
        "cashback": 0,
        "price_effective": 524.25,
        "refund_credit": 0,
        "value_of_good": 401.91,
        "coupon_value": 0,
        "tax_collected_at_source": 0,
        "promotion_effective_discount": 50,
        "amount_paid_roundoff": 474
      },
      "tracking_list": [
        {
          "text": "Placed",
          "status": "processing",
          "is_passed": true,
          "time": "2022-11-22T22:15:59+00:00"
        },
        {
          "text": "Bag Confirmed",
          "status": "confirmed",
          "is_passed": true,
          "time": "2022-11-22T22:54:50+00:00"
        },
        {
          "text": "Dp Assigned",
          "status": "dp_assigned",
          "is_passed": false,
          "time": ""
        },
        {
          "text": "In Transit",
          "status": "in_transit",
          "is_passed": false,
          "time": ""
        },
        {
          "text": "Out For Delivery",
          "status": "out_for_delivery",
          "is_passed": false,
          "time": ""
        },
        {
          "text": "Delivered",
          "status": "delivered",
          "is_passed": false,
          "time": ""
        }
      ],
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36",
      "platform_logo": "https://fynd-static.s3.amazonaws.com/mode_of_payment/ecomm_logo.png",
      "packaging_type": "POLYB_DFLT_L",
      "enable_dp_tracking": false,
      "invoice": {
        "updated_date": "1970-01-01T00:00:00",
        "store_invoice_id": null,
        "invoice_url": "",
        "label_url": "",
        "external_invoice_id": ""
      },
      "can_process": true,
      "estimated_sla_time": "null",
      "tracking_url": "",
      "meta": {
        "dp_id": "9",
        "weight": 300,
        "external": {},
        "formatted": {
          "max": "Fri, 25 Nov",
          "min": "Wed, 23 Nov"
        },
        "timestamp": {
          "max": 1669394750,
          "min": 1669221950
        },
        "bag_weight": {
          "20472628": 300
        },
        "debug_info": {
          "stormbreaker_uuid": "998171bb-67af-412a-a00a-12d436418ff2"
        },
        "dp_options": {},
        "order_type": null,
        "dp_sort_key": "fm_priority",
        "packaging_name": "POLYB_DFLT_L",
        "assign_dp_from_sb": true,
        "same_store_available": true,
        "fulfill_virtual_invoice": false,
        "fulfilment_priority_text": null,
        "auto_trigger_dp_assignment_ACF": true
      },
      "shipment_created_at": "2022-11-22T22:15:53+00:00",
      "mark_as_returnable": false,
      "ordering_store": {
        "id": 5,
        "code": "SF94",
        "fulfillment_channel": "pulse",
        "store_name": "RELIANCE RETAIL LTD - Beauty & Personal care",
        "contact_person": "Anju Abraham",
        "phone": "918898846722",
        "address": "store 1ST FLOOR, WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR, KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTR Mumbai Maharashtra 400093",
        "city": "Mumbai",
        "state": "Maharashtra",
        "country": "India",
        "pincode": "400093",
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
              "open": true,
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
          "display_name": "RELIANCE RETAIL LTD - Beauty & Personal care",
          "gst_credentials": {
            "e_invoice": {
              "enabled": false
            },
            "e_waybill": {
              "enabled": false
            }
          },
          "notification_emails": [
            "anjuabraham@gofynd.com"
          ],
          "product_return_config": {
            "on_same_store": true
          },
          "additional_contact_details": {
            "number": [
              "91 - 8898846722"
            ]
          },
          "ewaybill_portal_details": null
        },
        "fulfilment_type": null
      },
      "custom_meta": []
    }
  ]
}
```
</details>









---


#### getLaneConfig





```swift
platformClient.order.getLaneConfig(superLane: superLane, groupEntity: groupEntity, fromDate: fromDate, toDate: toDate, dpIds: dpIds, stores: stores, salesChannels: salesChannels, paymentMode: paymentMode, bagStatus: bagStatus, searchType: searchType, searchValue: searchValue, tags: tags, timeToDispatch: timeToDispatch, paymentMethods: paymentMethods, myOrders: myOrders, showCrossCompanyData: showCrossCompanyData, orderType: orderType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| superLane | String? | no | Name of lane for which data is to be fetched |   
| groupEntity | String? | no | Name of group entity |   
| fromDate | String? | no | Start Date in DD-MM-YYYY format |   
| toDate | String? | no | End Date in DD-MM-YYYY format |   
| dpIds | String? | no | Comma separated values of delivery partner ids |   
| stores | String? | no | Comma separated values of store ids |   
| salesChannels | String? | no |  |   
| paymentMode | String? | no | Comma separated values of payment modes |   
| bagStatus | String? | no | Comma separated values of bag statuses |   
| searchType | String? | no |  |   
| searchValue | String? | no |  |   
| tags | String? | no |  |   
| timeToDispatch | Int? | no |  |   
| paymentMethods | String? | no |  |   
| myOrders | Bool? | no |  |   
| showCrossCompanyData | Bool? | no | Flag to view cross & non-cross company order |   
| orderType | String? | no |  |  



Get lane config for the order

*Returned Response:*




[LaneConfigResponse](#LaneConfigResponse)

Response containing count of shipments of the given status




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "super_lanes": [
    {
      "text": "Unfulfilled",
      "value": "unfulfilled",
      "options": [
        {
          "text": "New",
          "value": "new",
          "total_items": 18,
          "index": 1,
          "actions": []
        },
        {
          "text": "Confirmed",
          "value": "confirmed",
          "total_items": 0,
          "index": 2,
          "actions": []
        },
        {
          "text": "To Be Packed",
          "value": "to_be_packed",
          "total_items": 0,
          "index": 3,
          "actions": []
        },
        {
          "text": "Ready To Dispatch",
          "value": "ready_for_dispatch",
          "total_items": 0,
          "index": 4,
          "actions": []
        }
      ],
      "total_items": 18
    },
    {
      "text": "Return",
      "value": "return",
      "options": [
        {
          "text": "Return Initiated",
          "value": "return_initiated",
          "total_items": 0,
          "index": 9,
          "actions": []
        },
        {
          "text": "Return In Transit",
          "value": "return_in_transit",
          "total_items": 0,
          "index": 10,
          "actions": []
        },
        {
          "text": "Return Delivered",
          "value": "return_delivered",
          "total_items": 0,
          "index": 11,
          "actions": []
        },
        {
          "text": "Return Accepted",
          "value": "return_accepted",
          "total_items": 0,
          "index": 12,
          "actions": []
        }
      ],
      "total_items": 0
    }
  ]
}
```
</details>









---


#### getOrders





```swift
platformClient.order.getOrders(lane: lane, searchType: searchType, bagStatus: bagStatus, timeToDispatch: timeToDispatch, paymentMethods: paymentMethods, tags: tags, searchValue: searchValue, fromDate: fromDate, toDate: toDate, dpIds: dpIds, stores: stores, salesChannels: salesChannels, pageNo: pageNo, pageSize: pageSize, isPrioritySort: isPrioritySort, customMeta: customMeta, myOrders: myOrders, showCrossCompanyData: showCrossCompanyData, customerId: customerId, orderType: orderType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| lane | String? | no | lane refers to a section where orders are assigned, indicating its grouping |   
| searchType | String? | no | search_type refers to the field that will be used as the target for the search operation |   
| bagStatus | String? | no | bag_status refers to status of the entity. Filters orders based on the status. |   
| timeToDispatch | Int? | no | time_to_dispatch refers to estimated SLA time. |   
| paymentMethods | String? | no |  |   
| tags | String? | no | tags refers to additional descriptive labels associated with the order |   
| searchValue | String? | no | search_value is matched against the field specified by the search_type |   
| fromDate | String? | no |  |   
| toDate | String? | no |  |   
| dpIds | String? | no | Delivery Partner IDs to which shipments are assigned. |   
| stores | String? | no |  |   
| salesChannels | String? | no |  |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| isPrioritySort | Bool? | no |  |   
| customMeta | String? | no |  |   
| myOrders | Bool? | no |  |   
| showCrossCompanyData | Bool? | no | Flag to view cross & non-cross company order |   
| customerId | String? | no |  |   
| orderType | String? | no |  |  



Get Orders Listing

*Returned Response:*




[OrderListingResponse](#OrderListingResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getApplicationShipments





```swift
platformClient.application("<APPLICATION_ID>").order.getApplicationShipments(lane: lane, searchType: searchType, searchId: searchId, fromDate: fromDate, toDate: toDate, dpIds: dpIds, orderingCompanyId: orderingCompanyId, stores: stores, salesChannel: salesChannel, requestByExt: requestByExt, pageNo: pageNo, pageSize: pageSize, customerId: customerId, isPrioritySort: isPrioritySort, excludeLockedShipments: excludeLockedShipments) { (response, error) in
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
| customerId | String? | no |  |   
| isPrioritySort | Bool? | no |  |   
| excludeLockedShipments | Bool? | no |  |  





*Returned Response:*




[ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### trackShipmentPlatform
Track shipment




```swift
platformClient.application("<APPLICATION_ID>").order.trackShipmentPlatform(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | Shipment Id |  



Track Shipment by shipment id, for application based on application Id

*Returned Response:*




[PlatformShipmentTrack](#PlatformShipmentTrack)

Success. Check the example shown below or refer `PlatformShipmentTrack` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "meta": {},
  "results": [
    {
      "updated_at": "24 Nov, 12:39 PM",
      "last_location_recieved_at": "Thane",
      "reason": "Fyndr",
      "shipment_type": "forward",
      "status": "dp_assigned",
      "updated_time": "2022-11-24T12:39:38+05:30",
      "account_name": "fyndr",
      "awb": "2125658183710",
      "raw_status": "dp_assigned",
      "meta": {}
    }
  ]
}
```
</details>









---


#### getfilters





```swift
platformClient.order.getfilters(view: view, groupEntity: groupEntity) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| view | String | yes | Name of view |   
| groupEntity | String? | no | Name of group entity |  



Get Listing Filters

*Returned Response:*




[FiltersResponse](#FiltersResponse)

List of filters




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "global": [
    {
      "text": "Fulfilling Stores",
      "value": "stores",
      "type": "single_select",
      "options": null
    },
    {
      "text": "Search Types",
      "value": "search_type",
      "type": "single_select",
      "options": [
        {
          "text": "Auto",
          "value": "auto",
          "placeholder_text": "Search by Shipment ID, Order ID & Customer Email",
          "min_search_size": 5,
          "show_ui": true
        },
        {
          "text": "Shipment ID",
          "value": "shipment_id",
          "placeholder_text": "Search by Shipment ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "Order ID",
          "value": "order_id",
          "placeholder_text": "Search by Order ID",
          "min_search_size": 6,
          "show_ui": true
        },
        {
          "text": "Customer Name",
          "value": "name",
          "placeholder_text": "Search by Customer Name",
          "min_search_size": 3,
          "show_ui": true
        },
        {
          "text": "Customer Email",
          "value": "email",
          "placeholder_text": "Search by Customer Email",
          "min_search_size": 5,
          "show_ui": true
        },
        {
          "text": "AWB Number",
          "value": "awb_no",
          "placeholder_text": "Search by AWB Number",
          "min_search_size": 10,
          "show_ui": true
        },
        {
          "text": "Invoice Id",
          "value": "invoice_id",
          "placeholder_text": "Search by Invoice Id",
          "min_search_size": 5,
          "show_ui": true
        },
        {
          "text": "EAN",
          "value": "ean",
          "placeholder_text": "Search by EAN",
          "min_search_size": 3,
          "show_ui": true
        },
        {
          "text": "SKU",
          "value": "sku",
          "placeholder_text": "Search by SKU",
          "min_search_size": 3,
          "show_ui": true
        }
      ]
    }
  ],
  "advance": {
    "Unfulfilled": [
      {
        "text": "Store Type",
        "value": "store_type",
        "type": "single_select",
        "options": [
          {
            "name": "Warehouse",
            "value": "warehouse"
          },
          {
            "name": "High Street",
            "value": "high_street"
          },
          {
            "name": "Mall",
            "value": "mall"
          },
          {
            "name": "Web Store",
            "value": "webstore"
          }
        ]
      },
      {
        "text": "Order Source",
        "value": "order_source",
        "type": "single_select",
        "options": [
          {
            "name": "Uniket",
            "value": "uniket"
          },
          {
            "name": "Fynd",
            "value": "fynd"
          },
          {
            "name": "Fynd Store",
            "value": "fynd_store"
          },
          {
            "name": "Affiliate",
            "value": "affiliate"
          }
        ]
      },
      {
        "text": "Time to Dispatch",
        "value": "time_to_dispatch",
        "type": "single_select",
        "options": [
          {
            "text": "Breached",
            "value": 1
          },
          {
            "text": "Not Breached",
            "value": -1
          }
        ]
      },
      {
        "text": "Payment Methods",
        "value": "payment_methods",
        "type": "single_select",
        "options": [
          {
            "text": "COD",
            "value": "COD"
          },
          {
            "text": "Prepaid",
            "value": "PREPAID"
          }
        ]
      }
    ],
    "Processed": [
      {
        "text": "Store Type",
        "value": "store_type",
        "type": "single_select",
        "options": [
          {
            "name": "Warehouse",
            "value": "warehouse"
          },
          {
            "name": "High Street",
            "value": "high_street"
          },
          {
            "name": "Mall",
            "value": "mall"
          },
          {
            "name": "Web Store",
            "value": "webstore"
          }
        ]
      },
      {
        "text": "Order Source",
        "value": "order_source",
        "type": "single_select",
        "options": [
          {
            "name": "Uniket",
            "value": "uniket"
          },
          {
            "name": "Fynd",
            "value": "fynd"
          },
          {
            "name": "Fynd Store",
            "value": "fynd_store"
          },
          {
            "name": "Affiliate",
            "value": "affiliate"
          }
        ]
      },
      {
        "text": "Payment Methods",
        "value": "payment_methods",
        "type": "single_select",
        "options": [
          {
            "text": "COD",
            "value": "COD"
          },
          {
            "text": "Prepaid",
            "value": "PREPAID"
          }
        ]
      }
    ],
    "Return": [
      {
        "text": "Store Type",
        "value": "store_type",
        "type": "single_select",
        "options": [
          {
            "name": "Warehouse",
            "value": "warehouse"
          },
          {
            "name": "High Street",
            "value": "high_street"
          },
          {
            "name": "Mall",
            "value": "mall"
          },
          {
            "name": "Web Store",
            "value": "webstore"
          }
        ]
      },
      {
        "text": "Order Source",
        "value": "order_source",
        "type": "single_select",
        "options": [
          {
            "name": "Uniket",
            "value": "uniket"
          },
          {
            "name": "Fynd",
            "value": "fynd"
          },
          {
            "name": "Fynd Store",
            "value": "fynd_store"
          },
          {
            "name": "Affiliate",
            "value": "affiliate"
          }
        ]
      },
      {
        "text": "Payment Methods",
        "value": "payment_methods",
        "type": "single_select",
        "options": [
          {
            "text": "COD",
            "value": "COD"
          },
          {
            "text": "Prepaid",
            "value": "PREPAID"
          }
        ]
      }
    ],
    "ActionCentre": [
      {
        "text": "Store Type",
        "value": "store_type",
        "type": "single_select",
        "options": [
          {
            "name": "Warehouse",
            "value": "warehouse"
          },
          {
            "name": "High Street",
            "value": "high_street"
          },
          {
            "name": "Mall",
            "value": "mall"
          },
          {
            "name": "Web Store",
            "value": "webstore"
          }
        ]
      },
      {
        "text": "Order Source",
        "value": "order_source",
        "type": "single_select",
        "options": [
          {
            "name": "Uniket",
            "value": "uniket"
          },
          {
            "name": "Fynd",
            "value": "fynd"
          },
          {
            "name": "Fynd Store",
            "value": "fynd_store"
          },
          {
            "name": "Affiliate",
            "value": "affiliate"
          }
        ]
      },
      {
        "text": "Payment Methods",
        "value": "payment_methods",
        "type": "single_select",
        "options": [
          {
            "text": "COD",
            "value": "COD"
          },
          {
            "text": "Prepaid",
            "value": "PREPAID"
          }
        ]
      }
    ]
  }
}
```
</details>









---


#### getBulkShipmentExcelFile





```swift
platformClient.order.getBulkShipmentExcelFile(salesChannels: salesChannels, dpIds: dpIds, fromDate: fromDate, toDate: toDate, stores: stores, tags: tags, bagStatus: bagStatus, paymentMethods: paymentMethods, fileType: fileType, timeToDispatch: timeToDispatch, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| salesChannels | String? | no | Comma separated values of sales channel ids |   
| dpIds | String? | no | Comma separated values of delivery partner ids |   
| fromDate | String? | no | Start Date in DD-MM-YYYY format |   
| toDate | String? | no | End Date in DD-MM-YYYY format |   
| stores | String? | no | Comma separated values of store ids |   
| tags | String? | no | Comma separated values of tags |   
| bagStatus | String? | no | Comma separated values of bag statuses |   
| paymentMethods | String? | no | Comma separated values of payment methods |   
| fileType | String? | no | File type to be downloaded |   
| timeToDispatch | Int? | no | Sla breached or not breached |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |  



Generate Bulk Shipment Excel Report.

*Returned Response:*




[FileResponse](#FileResponse)

We are processing the file!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "file_name": "placed_352_1668856953.7936668.xlsx",
  "operation": "putObject",
  "size": 13245,
  "namespace": "misc",
  "content_type": "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
  "file_path": "/misc/general/free/original/0Ex0-zTyw-placed_352_1668856953.7936668.xlsx",
  "method": "PUT",
  "tags": [],
  "upload": {
    "url": "https://fynd-staging-assets.s3-accelerate.amazonaws.com",
    "expiry": 1800
  },
  "cdn": {
    "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/general/free/original/0Ex0-zTyw-placed_352_1668856953.7936668.xlsx"
  }
}
```
</details>









---


#### getBulkActionTemplate





```swift
platformClient.order.getBulkActionTemplate() { (response, error) in
    // Use response
}
```






Get Bulk Action seller templates.

*Returned Response:*




[BulkActionTemplateResponse](#BulkActionTemplateResponse)

Slug names




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "template_x_slug": [
    {
      "text": "Partial Cancellation",
      "value": "PARTIAL_CANCELLATION"
    }
  ]
}
```
</details>









---


#### downloadBulkActionTemplate





```swift
platformClient.order.downloadBulkActionTemplate(templateSlug: templateSlug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| templateSlug | String? | no | Slug name of template to be downloaded |  



Download bulk actions seller templates.

*Returned Response:*




[FileResponse](#FileResponse)

We are processing the file!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "file_name": "placed_352_1668856953.7936668.xlsx",
  "operation": "putObject",
  "size": 13245,
  "namespace": "misc",
  "content_type": "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
  "file_path": "/misc/general/free/original/0Ex0-zTyw-placed_352_1668856953.7936668.xlsx",
  "method": "PUT",
  "tags": [],
  "upload": {
    "url": "https://fynd-staging-assets.s3-accelerate.amazonaws.com",
    "expiry": 1800
  },
  "cdn": {
    "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/misc/general/free/original/0Ex0-zTyw-placed_352_1668856953.7936668.xlsx"
  }
}
```
</details>









---


#### getShipmentReasons
Get reasons behind full or partial cancellation of a shipment




```swift
platformClient.order.getShipmentReasons(shipmentId: shipmentId, bagId: bagId, state: state) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| bagId | String | yes | ID of the bag. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| state | String | yes | State for which reasons are required. |  



Use this API to retrieve the issues that led to the cancellation of bags within a shipment.

*Returned Response:*




[PlatformShipmentReasonsResponse](#PlatformShipmentReasonsResponse)

Success. Check the example shown below or refer `PlatformShipmentReasonsResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "reasons": [
    {
      "id": 84,
      "display_name": "Not Available to accept the Order",
      "qc_type": [],
      "question_set": []
    },
    {
      "id": 85,
      "display_name": "Store Bulk Order",
      "qc_type": [],
      "question_set": []
    },
    {
      "id": 86,
      "display_name": "Cancelled due to delayed delivery",
      "qc_type": [],
      "question_set": []
    },
    {
      "id": 87,
      "display_name": "Others",
      "qc_type": [],
      "question_set": []
    }
  ]
}
```
</details>









---


#### getPlatformShipmentReasons
Use this API to retrieve the issues that led to the cancellation of bags within a shipment.




```swift
platformClient.application("<APPLICATION_ID>").order.getPlatformShipmentReasons(action: action) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| action | String | yes |  |  



Using action, get reasons behind full or partial cancellation of a shipment

*Returned Response:*




[ShipmentReasonsResponse](#ShipmentReasonsResponse)

Success. Check the example shown below or refer `ShipmentReasonsResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getBagById





```swift
platformClient.order.getBagById(bagId: bagId, channelBagId: channelBagId, channelId: channelId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagId | String? | no | Id of bag |   
| channelBagId | String? | no | Id of application bag |   
| channelId | String? | no | Id of application |  



Get Order Bag Details.

*Returned Response:*




[BagDetailsPlatformResponse](#BagDetailsPlatformResponse)

Successfully retrived shipment details!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getBags





```swift
platformClient.order.getBags(bagIds: bagIds, shipmentIds: shipmentIds, orderIds: orderIds, channelBagIds: channelBagIds, channelShipmentIds: channelShipmentIds, channelOrderIds: channelOrderIds, channelId: channelId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagIds | String? | no | Comma separated values of bag ids |   
| shipmentIds | String? | no | Comma separated values of shipment ids |   
| orderIds | String? | no | Comma separated values of order ids |   
| channelBagIds | String? | no | Comma separated values of app bag ids |   
| channelShipmentIds | String? | no | Comma separated values of app shipment ids |   
| channelOrderIds | String? | no | Comma separated values of app order ids |   
| channelId | String? | no | Comma separated values of app ids |   
| pageNo | Int? | no | Page number for paginated data |   
| pageSize | Int? | no | Page size of data received per page |  



Get Bags for the order

*Returned Response:*




[GetBagsPlatformResponse](#GetBagsPlatformResponse)

Successfully retrived all the given shipments details!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### generatePOSReceiptByOrderId





```swift
platformClient.order.generatePOSReceiptByOrderId(orderId: orderId, shipmentId: shipmentId, documentType: documentType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String | yes |  |   
| shipmentId | String? | no |  |   
| documentType | String? | no |  |  



Generate POS recipt by order id.

*Returned Response:*




[GeneratePosOrderReceiptResponse](#GeneratePosOrderReceiptResponse)

We are processing the request!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---




### Schemas

 
 
 #### [InvalidateShipmentCachePayload](#InvalidateShipmentCachePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentIds | [String]? |  yes  | Shipment Ids to clear cache |
 | affiliateBagIds | [String]? |  yes  | Affiliate Bag Ids to clear cache of shipment Ids mapped to it |
 | bagIds | [String]? |  yes  | Bag Ids to clear cache of shipment Ids mapped to it |

---


 
 
 #### [InvalidateShipmentCacheNestedResponse](#InvalidateShipmentCacheNestedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | message | String? |  yes  |  |
 | error | String? |  yes  |  |

---


 
 
 #### [InvalidateShipmentCacheResponse](#InvalidateShipmentCacheResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | [[InvalidateShipmentCacheNestedResponse](#InvalidateShipmentCacheNestedResponse)]? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int? |  yes  |  |
 | success | Bool? |  yes  |  |
 | message | String |  no  |  |
 | errorTrace | String? |  yes  |  |
 | error | String |  no  |  |

---


 
 
 #### [StoreReassign](#StoreReassign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeId | Int |  no  |  |
 | bagId | Int? |  yes  |  |
 | affiliateOrderId | String? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | itemId | String? |  yes  |  |
 | fyndOrderId | String? |  yes  |  |
 | setId | String? |  yes  |  |
 | affiliateBagId | String? |  yes  |  |
 | reasonIds | [Int]? |  yes  |  |
 | mongoArticleId | String? |  yes  |  |

---


 
 
 #### [StoreReassignResponse](#StoreReassignResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [Entities](#Entities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Shipment ID if 'entity_type': shipments | Bag Id if 'entity_type': bags |
 | affiliateOrderId | String? |  yes  | Application/Affiliate Order ID, Required if the ID is missing |
 | affiliateId | String? |  yes  | Application/Affiliate ID, Required if the ID is missing |
 | reasonText | String |  no  | Reason For Shipment/Bag Action |
 | affiliateBagId | String? |  yes  | Application/Affiliate Bag ID, Required if the ID is missing |
 | affiliateShipmentId | String? |  yes  | Application/Affiliate Shipment ID, Required if the ID is missing |

---


 
 
 #### [UpdateShipmentLockPayload](#UpdateShipmentLockPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityType | String |  no  | Expected entity_type: [bags, shipments] |
 | action | String |  no  | Expected Actions: [lock, unlock, check] |
 | actionType | String |  no  | Expected action_type: [complete, operational, financial] |
 | entities | [[Entities](#Entities)] |  no  | Shipment/Entity |

---


 
 
 #### [OriginalFilter](#OriginalFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateShipmentId | String? |  yes  | Affiliate Shipment ID |
 | affiliateId | String? |  yes  | Affiliate ID |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagId | Int? |  yes  | Bag Id |
 | affiliateBagId | String? |  yes  | Application/Affiliate Bag ID, Required if the ID is missing |
 | isLocked | Bool? |  yes  | Is Bag Locked |
 | affiliateOrderId | String? |  yes  | Application/Affiliate Order ID, Required if the ID is missing |

---


 
 
 #### [CheckResponse](#CheckResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String? |  yes  | Shipment ID |
 | status | String? |  yes  | Status |
 | isBagLocked | Bool? |  yes  | Is Bag Locked |
 | affiliateId | String? |  yes  | Affiliate ID |
 | originalFilter | [OriginalFilter](#OriginalFilter)? |  yes  | Filter |
 | isShipmentLocked | Bool? |  yes  | Is Shipment Locked |
 | lockStatus | String? |  yes  | Lock Status: Expected lock_status: [complete, operational, financial] |
 | affiliateShipmentId | String? |  yes  | Affiliate Shipment ID |
 | bags | [[Bags](#Bags)]? |  yes  |  |

---


 
 
 #### [UpdateShipmentLockResponse](#UpdateShipmentLockResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | checkResponse | [[CheckResponse](#CheckResponse)]? |  yes  | Entity Lock Status, If the action input as 'check' |

---


 
 
 #### [AnnouncementResponse](#AnnouncementResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | toDatetime | String? |  yes  |  |
 | id | Int |  no  |  |
 | description | String? |  yes  |  |
 | platformName | String? |  yes  |  |
 | fromDatetime | String? |  yes  |  |
 | platformId | String? |  yes  |  |
 | title | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | logoUrl | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [AnnouncementsResponse](#AnnouncementsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | announcements | [[AnnouncementResponse](#AnnouncementResponse)]? |  yes  |  |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [BaseResponse](#BaseResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [Click2CallResponse](#Click2CallResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | callId | String |  no  | Call ID from the provider |
 | success | Bool |  no  | Success |

---


 
 
 #### [ErrorDetail](#ErrorDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [ProductsReasonsFilters](#ProductsReasonsFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  | Product/Bag Line number for the Product/Bag Identifier |
 | identifier | String? |  yes  | Product/Bag Article/Item Identifier |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [ProductsReasonsData](#ProductsReasonsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonText | String? |  yes  |  |
 | reasonId | Int? |  yes  |  |

---


 
 
 #### [ProductsReasons](#ProductsReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[ProductsReasonsFilters](#ProductsReasonsFilters)]? |  yes  |  |
 | data | [ProductsReasonsData](#ProductsReasonsData)? |  yes  |  |

---


 
 
 #### [EntityReasonData](#EntityReasonData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonText | String? |  yes  |  |
 | reasonId | Int? |  yes  |  |

---


 
 
 #### [EntitiesReasons](#EntitiesReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[String: Any]]? |  yes  |  |
 | data | [EntityReasonData](#EntityReasonData)? |  yes  |  |

---


 
 
 #### [ReasonsData](#ReasonsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | products | [[ProductsReasons](#ProductsReasons)]? |  yes  |  |
 | entities | [[EntitiesReasons](#EntitiesReasons)]? |  yes  |  |

---


 
 
 #### [Products](#Products)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  | Product/Bag Line number for the Product/Bag Identifier |
 | identifier | String? |  yes  | Product/Bag Article/Item Identifier |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [OrderItemDataUpdates](#OrderItemDataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [ProductsDataUpdatesFilters](#ProductsDataUpdatesFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineNumber | Int? |  yes  | Product/Bag Line number for the Product/Bag Identifier |
 | identifier | String? |  yes  | Product/Bag Article/Item Identifier |

---


 
 
 #### [ProductsDataUpdates](#ProductsDataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[ProductsDataUpdatesFilters](#ProductsDataUpdatesFilters)]? |  yes  | Filter for the Product/Bag |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [EntitiesDataUpdates](#EntitiesDataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[String: Any]]? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [DataUpdates](#DataUpdates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderItemStatus | [[OrderItemDataUpdates](#OrderItemDataUpdates)]? |  yes  |  |
 | products | [[ProductsDataUpdates](#ProductsDataUpdates)]? |  yes  |  |
 | entities | [[EntitiesDataUpdates](#EntitiesDataUpdates)]? |  yes  |  |

---


 
 
 #### [ShipmentsRequest](#ShipmentsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String |  no  | Shipment ID |
 | reasons | [ReasonsData](#ReasonsData)? |  yes  |  |
 | products | [[Products](#Products)]? |  yes  | Product/Bag to be updated |
 | dataUpdates | [DataUpdates](#DataUpdates)? |  yes  |  |

---


 
 
 #### [StatuesRequest](#StatuesRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | shipments | [[ShipmentsRequest](#ShipmentsRequest)]? |  yes  |  |
 | excludeBagsNextState | String? |  yes  | State to be change for Remaining Bag/Products |
 | splitShipment | Bool? |  yes  | Flag to split shipment |

---


 
 
 #### [UpdateShipmentStatusRequest](#UpdateShipmentStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | forceTransition | Bool? |  yes  | Force Transition |
 | statuses | [[StatuesRequest](#StatuesRequest)]? |  yes  |  |
 | lockAfterTransition | Bool? |  yes  | Lock Shipment After Transition |
 | unlockBeforeTransition | Bool? |  yes  | Unlock Shipment After Transition |
 | task | Bool? |  yes  | To Run Status Update as a background Task |

---


 
 
 #### [ShipmentsResponse](#ShipmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int? |  yes  |  |
 | finalState | [String: Any]? |  yes  |  |
 | identifier | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | message | String? |  yes  |  |
 | exception | String? |  yes  |  |

---


 
 
 #### [StatuesResponse](#StatuesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[ShipmentsResponse](#ShipmentsResponse)]? |  yes  |  |

---


 
 
 #### [UpdateShipmentStatusResponseBody](#UpdateShipmentStatusResponseBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statuses | [[StatuesResponse](#StatuesResponse)]? |  yes  |  |

---


 
 
 #### [OrderUser](#OrderUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | Int |  no  |  |
 | lastName | String |  no  |  |
 | address1 | String? |  yes  |  |
 | state | String |  no  |  |
 | pincode | String |  no  |  |
 | firstName | String |  no  |  |
 | mobile | Int |  no  |  |
 | address2 | String? |  yes  |  |
 | email | String |  no  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [OrderPriority](#OrderPriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfilmentPriorityText | String? |  yes  |  |
 | affiliatePriorityCode | String? |  yes  |  |
 | fulfilmentPriority | Int? |  yes  |  |

---


 
 
 #### [ArticleDetails](#ArticleDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | brandId | Int |  no  |  |
 | dimension | [String: Any] |  no  |  |
 | category | [String: Any] |  no  |  |
 | weight | [String: Any] |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | quantity | Int |  no  |  |
 | status | [String: Any]? |  yes  |  |

---


 
 
 #### [LocationDetails](#LocationDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentType | String |  no  |  |
 | articles | [[ArticleDetails](#ArticleDetails)] |  no  |  |
 | fulfillmentId | Int |  no  |  |

---


 
 
 #### [ShipmentDetails](#ShipmentDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | boxType | String? |  yes  |  |
 | shipments | Int |  no  |  |
 | fulfillmentId | Int |  no  |  |
 | articles | [[ArticleDetails](#ArticleDetails)] |  no  |  |
 | dpId | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | affiliateShipmentId | String |  no  |  |
 | lockStatus | Bool? |  yes  |  |
 | lockMessage | String? |  yes  |  |
 | actionToStatus | [String: Any]? |  yes  |  |

---


 
 
 #### [ShipmentConfig](#ShipmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locationDetails | [LocationDetails](#LocationDetails)? |  yes  |  |
 | source | String |  no  |  |
 | toPincode | String |  no  |  |
 | shipment | [[ShipmentDetails](#ShipmentDetails)] |  no  |  |
 | identifier | String |  no  |  |
 | paymentMode | String |  no  |  |
 | action | String |  no  |  |
 | journey | String |  no  |  |

---


 
 
 #### [ShipmentData](#ShipmentData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentData | [ShipmentConfig](#ShipmentConfig) |  no  |  |

---


 
 
 #### [MarketPlacePdf](#MarketPlacePdf)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoice | String? |  yes  |  |
 | label | String? |  yes  |  |

---


 
 
 #### [AffiliateBag](#AffiliateBag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pdfLinks | [MarketPlacePdf](#MarketPlacePdf)? |  yes  |  |
 | storeId | Int |  no  |  |
 | sku | String |  no  |  |
 | discount | Double |  no  |  |
 | unitPrice | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | affiliateStoreId | String |  no  |  |
 | identifier | [String: Any] |  no  |  |
 | sellerIdentifier | String |  no  |  |
 | itemSize | String |  no  |  |
 | amountPaid | Double |  no  |  |
 | fyndStoreId | String |  no  |  |
 | itemId | Int |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | avlQty | Int |  no  |  |
 | priceMarked | Double |  no  |  |
 | quantity | Int |  no  |  |
 | companyId | Int |  no  |  |
 | hsnCodeId | String |  no  |  |
 | id | String |  no  |  |
 | affiliateMeta | [String: Any] |  no  |  |
 | modifiedOn | String |  no  |  |
 | transferPrice | Int |  no  |  |

---


 
 
 #### [UserData](#UserData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingUser | [OrderUser](#OrderUser)? |  yes  |  |
 | billingUser | [OrderUser](#OrderUser)? |  yes  |  |

---


 
 
 #### [OrderInfo](#OrderInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateOrderId | String? |  yes  |  |
 | codCharges | Double |  no  |  |
 | items | [String: Any] |  no  |  |
 | discount | Double |  no  |  |
 | billingAddress | [OrderUser](#OrderUser) |  no  |  |
 | payment | [String: Any]? |  yes  |  |
 | orderPriority | [OrderPriority](#OrderPriority)? |  yes  |  |
 | shipment | [ShipmentData](#ShipmentData)? |  yes  |  |
 | deliveryCharges | Double |  no  |  |
 | shippingAddress | [OrderUser](#OrderUser) |  no  |  |
 | orderValue | Double |  no  |  |
 | paymentMode | String |  no  |  |
 | bags | [[AffiliateBag](#AffiliateBag)] |  no  |  |
 | user | [UserData](#UserData) |  no  |  |
 | coupon | String? |  yes  |  |

---


 
 
 #### [AffiliateAppConfigMeta](#AffiliateAppConfigMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [AffiliateAppConfig](#AffiliateAppConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | description | String? |  yes  |  |
 | updatedAt | String |  no  |  |
 | name | String |  no  |  |
 | token | String |  no  |  |
 | meta | [[AffiliateAppConfigMeta](#AffiliateAppConfigMeta)]? |  yes  |  |
 | owner | String |  no  |  |
 | secret | String |  no  |  |
 | createdAt | String |  no  |  |

---


 
 
 #### [AffiliateInventoryArticleAssignmentConfig](#AffiliateInventoryArticleAssignmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | postOrderReassignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryPaymentConfig](#AffiliateInventoryPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |

---


 
 
 #### [AffiliateInventoryStoreConfig](#AffiliateInventoryStoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [String: Any]? |  yes  |  |

---


 
 
 #### [AffiliateInventoryOrderConfig](#AffiliateInventoryOrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | forceReassignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryLogisticsConfig](#AffiliateInventoryLogisticsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpAssignment | Bool? |  yes  |  |

---


 
 
 #### [AffiliateInventoryConfig](#AffiliateInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleAssignment | [AffiliateInventoryArticleAssignmentConfig](#AffiliateInventoryArticleAssignmentConfig)? |  yes  |  |
 | payment | [AffiliateInventoryPaymentConfig](#AffiliateInventoryPaymentConfig)? |  yes  |  |
 | inventory | [AffiliateInventoryStoreConfig](#AffiliateInventoryStoreConfig)? |  yes  |  |
 | order | [AffiliateInventoryOrderConfig](#AffiliateInventoryOrderConfig)? |  yes  |  |
 | logistics | [AffiliateInventoryLogisticsConfig](#AffiliateInventoryLogisticsConfig)? |  yes  |  |

---


 
 
 #### [AffiliateConfig](#AffiliateConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | [AffiliateAppConfig](#AffiliateAppConfig)? |  yes  |  |
 | inventory | [AffiliateInventoryConfig](#AffiliateInventoryConfig)? |  yes  |  |
 | appCompanyId | Int? |  yes  |  |

---


 
 
 #### [Affiliate](#Affiliate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | config | [AffiliateConfig](#AffiliateConfig)? |  yes  |  |
 | token | String |  no  |  |

---


 
 
 #### [AffiliateStoreIdMapping](#AffiliateStoreIdMapping)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeId | Int |  no  |  |
 | marketplaceStoreId | String |  no  |  |

---


 
 
 #### [OrderConfig](#OrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createUser | Bool? |  yes  |  |
 | articleLookup | String? |  yes  |  |
 | bagEndState | String? |  yes  |  |
 | affiliate | [Affiliate](#Affiliate) |  no  |  |
 | storeLookup | String? |  yes  |  |
 | affiliateStoreIdMapping | [[AffiliateStoreIdMapping](#AffiliateStoreIdMapping)] |  no  |  |

---


 
 
 #### [CreateOrderPayload](#CreateOrderPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderInfo | [OrderInfo](#OrderInfo) |  no  |  |
 | orderConfig | [OrderConfig](#OrderConfig) |  no  |  |
 | affiliateId | String |  no  |  |

---


 
 
 #### [CreateOrderResponse](#CreateOrderResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndOrderId | String |  no  |  |

---


 
 
 #### [DispatchManifest](#DispatchManifest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manifestId | String |  no  |  |

---


 
 
 #### [SuccessResponse](#SuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [ActionInfo](#ActionInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayText | String |  no  |  |
 | id | Int |  no  |  |
 | description | String |  no  |  |
 | slug | String |  no  |  |

---


 
 
 #### [GetActionsResponse](#GetActionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | permissions | [[ActionInfo](#ActionInfo)]? |  yes  |  |

---


 
 
 #### [HistoryReason](#HistoryReason)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | category | String? |  yes  |  |
 | state | String? |  yes  |  |
 | dislayName | String? |  yes  |  |
 | code | Int? |  yes  |  |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [HistoryMeta](#HistoryMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeId | Int? |  yes  |  |
 | status | String? |  yes  |  |
 | status1 | String? |  yes  |  |
 | callId | String? |  yes  |  |
 | starttime | String? |  yes  |  |
 | reason | [HistoryReason](#HistoryReason)? |  yes  |  |
 | shortLink | String? |  yes  |  |
 | endtime | String? |  yes  |  |
 | storeName | String? |  yes  |  |
 | caller | String? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | billsec | String? |  yes  |  |
 | recordpath | String? |  yes  |  |
 | status2 | String? |  yes  |  |
 | callerid | String? |  yes  |  |
 | duration | String? |  yes  |  |
 | channelType | String? |  yes  |  |
 | activityComment | String? |  yes  |  |
 | activityType | String? |  yes  |  |
 | receiver | String? |  yes  |  |
 | recipient | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [HistoryDict](#HistoryDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayMessage | String? |  yes  | Display Message |
 | bagId | Int? |  yes  | Bag ID |
 | ticketUrl | String? |  yes  | Ticket URL |
 | l3Detail | String? |  yes  | L3 details of bag |
 | createdat | String |  no  | Create date |
 | ticketId | String? |  yes  | Ticket ID |
 | type | String |  no  | type of history, Expected Values:             [ activity_status, activity_escalation, activity_comment, outbound_notification, outbound_voice ] |
 | l2Detail | String? |  yes  | L2 details of bag |
 | assignedAgent | String? |  yes  | Assigned Agent |
 | meta | [HistoryMeta](#HistoryMeta)? |  yes  | meta |
 | l1Detail | String? |  yes  | L1 details of bag |
 | message | String |  no  | History Message or comment |
 | user | String |  no  | User who created the history |

---


 
 
 #### [ShipmentHistoryResponse](#ShipmentHistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | activityHistory | [[HistoryDict](#HistoryDict)] |  no  |  |

---


 
 
 #### [PostHistoryFilters](#PostHistoryFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String |  no  |  |
 | lineNumber | String? |  yes  |  |
 | identifier | String? |  yes  |  |

---


 
 
 #### [PostHistoryData](#PostHistoryData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userName | String |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [PostActivityHistory](#PostActivityHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[PostHistoryFilters](#PostHistoryFilters)] |  no  |  |
 | data | [PostHistoryData](#PostHistoryData) |  no  |  |

---


 
 
 #### [PostHistoryDict](#PostHistoryDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [PostActivityHistory](#PostActivityHistory) |  no  |  |

---


 
 
 #### [PostShipmentHistory](#PostShipmentHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [[PostHistoryDict](#PostHistoryDict)]? |  yes  |  |

---


 
 
 #### [SmsDataPayload](#SmsDataPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | Int |  no  | ShipmentId |
 | phoneNumber | Int |  no  | phone number for communication |
 | amountPaid | Int? |  yes  | Data mapped in Communication template: amount_paid |
 | orderId | String |  no  | orderId |
 | paymentMode | String? |  yes  | Data mapped in Communication template: payment_mode |
 | customerName | String? |  yes  | Data mapped in Communication template: customer_name |
 | brandName | String? |  yes  | Data mapped in Communication template: brand_name |
 | message | String |  no  | message to be send in SMS |
 | countryCode | String |  no  | country code for SMS |

---


 
 
 #### [SendSmsPayload](#SendSmsPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagId | Int |  no  | bag_id for the activity history track |
 | data | [SmsDataPayload](#SmsDataPayload)? |  yes  | SMS Data |
 | slug | String |  no  | slug name for the template mapped in pointblank |

---


 
 
 #### [OrderDetails](#OrderDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndOrderId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | kafkaEmissionStatus | Int? |  yes  |  |
 | stateManagerUsed | String? |  yes  |  |

---


 
 
 #### [ShipmentDetail](#ShipmentDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | id | Int |  no  |  |
 | bagList | [Int]? |  yes  |  |
 | meta | [Meta](#Meta) |  no  |  |
 | remarks | String? |  yes  |  |

---


 
 
 #### [OrderStatusData](#OrderStatusData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderDetails | [OrderDetails](#OrderDetails) |  no  |  |
 | errors | [String]? |  yes  |  |
 | shipmentDetails | [[ShipmentDetail](#ShipmentDetail)]? |  yes  |  |

---


 
 
 #### [OrderStatusResult](#OrderStatusResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | String |  no  |  |
 | result | [[OrderStatusData](#OrderStatusData)]? |  yes  |  |

---


 
 
 #### [Dimension](#Dimension)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | packagingType | String? |  yes  |  |
 | weight | String? |  yes  |  |
 | height | String? |  yes  |  |
 | length | Double? |  yes  |  |
 | width | Double? |  yes  |  |

---


 
 
 #### [UpdatePackagingDimensionsPayload](#UpdatePackagingDimensionsPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String |  no  |  |
 | currentStatus | String |  no  |  |
 | dimension | [[Dimension](#Dimension)] |  no  |  |

---


 
 
 #### [UpdatePackagingDimensionsResponse](#UpdatePackagingDimensionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [Tax](#Tax)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | rate | Double |  no  |  |
 | breakup | [[String: Any]]? |  yes  |  |
 | amount | [String: Any] |  no  |  |

---


 
 
 #### [Charge](#Charge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | amount | [String: Any] |  no  |  |
 | tax | [Tax](#Tax)? |  yes  |  |
 | code | String? |  yes  |  |
 | type | String |  no  |  |

---


 
 
 #### [LineItem](#LineItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | charges | [[Charge](#Charge)]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | customMessage | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | externalLineId | String? |  yes  |  |

---


 
 
 #### [ProcessingDates](#ProcessingDates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpPickupSlot | [String: Any]? |  yes  |  |
 | dispatchAfterDate | String? |  yes  |  |
 | dispatchByDate | String? |  yes  |  |
 | confirmByDate | String? |  yes  |  |
 | customerPickupSlot | [String: Any]? |  yes  |  |
 | packByDate | String? |  yes  |  |

---


 
 
 #### [Shipment](#Shipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lineItems | [[LineItem](#LineItem)] |  no  |  |
 | externalShipmentId | String? |  yes  |  |
 | processingDates | [ProcessingDates](#ProcessingDates)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | priority | Int? |  yes  |  |
 | locationId | Int |  no  |  |
 | orderType | String? |  yes  |  |

---


 
 
 #### [ShippingInfo](#ShippingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | alternateMobileNumber | String? |  yes  |  |
 | state | String |  no  |  |
 | customerCode | String? |  yes  |  |
 | shippingType | String? |  yes  |  |
 | middleName | String? |  yes  |  |
 | primaryMobileNumber | String |  no  |  |
 | lastName | String? |  yes  |  |
 | geoLocation | [String: Any]? |  yes  |  |
 | gender | String? |  yes  |  |
 | houseNo | String? |  yes  |  |
 | firstName | String |  no  |  |
 | title | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | country | String |  no  |  |
 | addressType | String? |  yes  |  |
 | stateCode | String? |  yes  |  |
 | city | String |  no  |  |
 | externalCustomerCode | String? |  yes  |  |
 | floorNo | String? |  yes  |  |
 | alternateEmail | String? |  yes  |  |
 | slot | [[String: Any]]? |  yes  |  |
 | address1 | String |  no  |  |
 | pincode | String |  no  |  |
 | primaryEmail | String |  no  |  |
 | address2 | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [BillingInfo](#BillingInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | alternateMobileNumber | String? |  yes  |  |
 | state | String |  no  |  |
 | customerCode | String? |  yes  |  |
 | middleName | String? |  yes  |  |
 | primaryMobileNumber | String |  no  |  |
 | lastName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | houseNo | String? |  yes  |  |
 | firstName | String |  no  |  |
 | title | String? |  yes  |  |
 | country | String |  no  |  |
 | stateCode | String? |  yes  |  |
 | city | String |  no  |  |
 | externalCustomerCode | String? |  yes  |  |
 | floorNo | String? |  yes  |  |
 | alternateEmail | String? |  yes  |  |
 | address1 | String |  no  |  |
 | pincode | String |  no  |  |
 | primaryEmail | String |  no  |  |
 | address2 | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | userType | String? |  yes  |  |
 | primaryEmail | String |  no  |  |
 | gender | String? |  yes  |  |
 | firstName | String |  no  |  |
 | lastName | String? |  yes  |  |
 | primaryMobileNumber | String |  no  |  |

---


 
 
 #### [TaxInfo](#TaxInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | b2BGstinNumber | String? |  yes  |  |
 | gstin | String? |  yes  |  |
 | panNo | String? |  yes  |  |

---


 
 
 #### [PaymentMethod](#PaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | collectBy | String |  no  |  |
 | mode | String |  no  |  |
 | refundBy | String |  no  |  |
 | name | String |  no  |  |
 | amount | Double |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | transactionData | [String: Any]? |  yes  |  |

---


 
 
 #### [PaymentInfo](#PaymentInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primaryMode | String |  no  |  |
 | paymentMethods | [[PaymentMethod](#PaymentMethod)]? |  yes  |  |

---


 
 
 #### [CreateOrderAPI](#CreateOrderAPI)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[Shipment](#Shipment)] |  no  |  |
 | shippingInfo | [ShippingInfo](#ShippingInfo) |  no  |  |
 | billingInfo | [BillingInfo](#BillingInfo) |  no  |  |
 | currencyInfo | [String: Any]? |  yes  |  |
 | externalOrderId | String? |  yes  |  |
 | charges | [[Charge](#Charge)]? |  yes  |  |
 | externalCreationDate | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | taxInfo | [TaxInfo](#TaxInfo)? |  yes  |  |
 | config | [String: Any]? |  yes  |  |
 | paymentInfo | [PaymentInfo](#PaymentInfo) |  no  |  |
 | userInfo | [UserInfo](#UserInfo)? |  yes  |  |

---


 
 
 #### [CreateOrderErrorReponse](#CreateOrderErrorReponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String? |  yes  |  |
 | status | Int |  no  |  |
 | info | [String: Any]? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | String? |  yes  |  |
 | message | String |  no  |  |
 | exception | String? |  yes  |  |

---


 
 
 #### [DpConfiguration](#DpConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingBy | String? |  yes  |  |

---


 
 
 #### [PaymentMethods](#PaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | collectBy | String? |  yes  |  |
 | refundBy | String? |  yes  |  |
 | mode | String? |  yes  |  |

---


 
 
 #### [CreateChannelPaymentInfo](#CreateChannelPaymentInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | paymentMethods | [[PaymentMethods](#PaymentMethods)]? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |

---


 
 
 #### [CreateChannelConfig](#CreateChannelConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpConfiguration | [DpConfiguration](#DpConfiguration)? |  yes  |  |
 | shipmentAssignment | String? |  yes  |  |
 | locationReassignment | Bool? |  yes  |  |
 | logoUrl | [String: Any]? |  yes  |  |
 | paymentInfo | [CreateChannelPaymentInfo](#CreateChannelPaymentInfo)? |  yes  |  |
 | lockStates | [String]? |  yes  |  |

---


 
 
 #### [CreateChannelConfigData](#CreateChannelConfigData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configData | [CreateChannelConfig](#CreateChannelConfig)? |  yes  |  |

---


 
 
 #### [CreateChannelConifgErrorResponse](#CreateChannelConifgErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |

---


 
 
 #### [CreateChannelConfigResponse](#CreateChannelConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isInserted | Bool? |  yes  |  |
 | isUpserted | Bool? |  yes  |  |
 | acknowledged | Bool? |  yes  |  |

---


 
 
 #### [UploadConsent](#UploadConsent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | consentUrl | String |  no  |  |
 | manifestId | String |  no  |  |

---


 
 
 #### [PlatformOrderUpdate](#PlatformOrderUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  |  |

---


 
 
 #### [ResponseDetail](#ResponseDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | [String]? |  yes  |  |

---


 
 
 #### [FyndOrderIdList](#FyndOrderIdList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndOrderId | [String]? |  yes  |  |

---


 
 
 #### [OrderStatus](#OrderStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderDetails | [[FyndOrderIdList](#FyndOrderIdList)]? |  yes  |  |
 | startDate | String |  no  |  |
 | endDate | String |  no  |  |
 | mobile | Int |  no  |  |

---


 
 
 #### [BagStateTransitionMap](#BagStateTransitionMap)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fynd | [String: Any]? |  yes  |  |
 | affiliate | [String: Any]? |  yes  |  |

---


 
 
 #### [RoleBaseStateTransitionMapping](#RoleBaseStateTransitionMapping)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | nextStatuses | [String]? |  yes  |  |

---


 
 
 #### [FetchCreditBalanceRequestPayload](#FetchCreditBalanceRequestPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String |  no  |  |
 | sellerId | String |  no  |  |
 | customerMobileNumber | String |  no  |  |

---


 
 
 #### [CreditBalanceInfo](#CreditBalanceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalCreditedBalance | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | customerMobileNumber | String? |  yes  |  |

---


 
 
 #### [FetchCreditBalanceResponsePayload](#FetchCreditBalanceResponsePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [CreditBalanceInfo](#CreditBalanceInfo) |  no  |  |

---


 
 
 #### [RefundModeConfigRequestPayload](#RefundModeConfigRequestPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndOrderId | String |  no  |  |
 | sellerId | Int |  no  |  |
 | affiliateId | String |  no  |  |
 | customerMobileNumber | String? |  yes  |  |

---


 
 
 #### [RefundOption](#RefundOption)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [RefundModeInfo](#RefundModeInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | options | [[RefundOption](#RefundOption)]? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [RefundModeConfigResponsePayload](#RefundModeConfigResponsePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [[RefundModeInfo](#RefundModeInfo)] |  no  |  |

---


 
 
 #### [AttachUserOtpData](#AttachUserOtpData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String |  no  |  |

---


 
 
 #### [AttachUserInfo](#AttachUserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | lastName | String |  no  |  |
 | mobile | String |  no  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [AttachOrderUser](#AttachOrderUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otpData | [AttachUserOtpData](#AttachUserOtpData) |  no  |  |
 | fyndOrderId | String |  no  |  |
 | userInfo | [AttachUserInfo](#AttachUserInfo) |  no  |  |

---


 
 
 #### [AttachOrderUserResponse](#AttachOrderUserResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [SendUserMobileOTP](#SendUserMobileOTP)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String |  no  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [PointBlankOtpData](#PointBlankOtpData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String? |  yes  |  |
 | resendTimer | Int? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | Int? |  yes  |  |

---


 
 
 #### [SendUserMobileOtpResponse](#SendUserMobileOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | data | [PointBlankOtpData](#PointBlankOtpData)? |  yes  |  |

---


 
 
 #### [VerifyOtpData](#VerifyOtpData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String |  no  |  |
 | mobile | String |  no  |  |
 | otpCode | Int |  no  |  |

---


 
 
 #### [VerifyMobileOTP](#VerifyMobileOTP)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otpData | [VerifyOtpData](#VerifyOtpData) |  no  |  |
 | fyndOrderId | String |  no  |  |

---


 
 
 #### [VerifyOtpResponseData](#VerifyOtpResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String? |  yes  |  |
 | message | String? |  yes  |  |
 | fyndOrderId | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [VerifyOtpResponse](#VerifyOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int? |  yes  |  |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | data | [VerifyOtpResponseData](#VerifyOtpResponseData)? |  yes  |  |

---


 
 
 #### [CourierPartnerTrackingDetails](#CourierPartnerTrackingDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | operationalStatus | String |  no  | Operational status of OMS |
 | dpStatus | String |  no  | Status at Courier partner end |
 | shipmentId | String |  no  | Shipment ID |
 | awb | String |  no  | AWB Number |
 | dpStatusUpdatedAt | String |  no  | Date Time at which status was updated at Courier partner |
 | remark | String? |  yes  | Remark from courier partner |
 | id | Int? |  yes  | Id of Tracking history |
 | dpLocation | String? |  yes  | Current location of Courier partner |
 | estimatedDeliveryDate | String? |  yes  | Estimated delivery date received from Courier partner |
 | journey | String |  no  | Journey type of the shipment |
 | meta | [String: Any]? |  yes  | Meta field to store Courier partner's meta data |
 | dpName | String |  no  | Courier Partner name |
 | promisedDeliveryDate | String? |  yes  | Promised delivery date received from Courier partner |

---


 
 
 #### [PageDetails](#PageDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int |  no  | Total count of the results present in the requested filter |
 | current | Int? |  yes  | Current page number |
 | size | Int? |  yes  | Page size |
 | type | String? |  yes  | Type of the page |
 | hasNext | Bool? |  yes  | if next page contains any result |

---


 
 
 #### [CourierPartnerTrackingResponse](#CourierPartnerTrackingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CourierPartnerTrackingDetails](#CourierPartnerTrackingDetails)]? |  yes  |  |
 | page | [PageDetails](#PageDetails)? |  yes  |  |

---


 
 
 #### [BulkReportsDownloadRequest](#BulkReportsDownloadRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeIds | [String]? |  yes  | Download for specific store ids. |
 | laneType | String? |  yes  |  |
 | customHeaders | String? |  yes  | Download report with specific headers |
 | reportType | String? |  yes  | Type of report |
 | fromDate | String? |  yes  |  |
 | toDate | String? |  yes  |  |
 | entities | [String]? |  yes  | Download for specific enitites, entities can be bag, shipment or order_id, etc. |
 | filterType | String? |  yes  |  |
 | isCrossCompanyEnabled | Bool? |  yes  | Download lanes for cross company. |
 | customFiltersForLane | [String: Any]? |  yes  |  |

---


 
 
 #### [BulkReportsDownloadResponse](#BulkReportsDownloadResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | batchId | String? |  yes  |  |

---


 
 
 #### [BulkReportsDownloadFailedResponse](#BulkReportsDownloadFailedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool? |  yes  |  |
 | error | String? |  yes  |  |

---


 
 
 #### [EInvoiceRetryShipmentData](#EInvoiceRetryShipmentData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String |  no  |  |

---


 
 
 #### [EInvoiceRetry](#EInvoiceRetry)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentsData | [[EInvoiceRetryShipmentData](#EInvoiceRetryShipmentData)]? |  yes  |  |

---


 
 
 #### [EInvoiceResponseData](#EInvoiceResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String |  no  |  |
 | message | String |  no  |  |
 | success | Bool |  no  |  |
 | ackNo | String? |  yes  |  |
 | irn | String? |  yes  |  |
 | ackDt | String? |  yes  |  |
 | timeout | Int? |  yes  |  |
 | timeoutUnit | String? |  yes  |  |

---


 
 
 #### [EInvoiceRetryResponse](#EInvoiceRetryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | successCount | Int |  no  |  |
 | message | String? |  yes  |  |
 | responseData | [[EInvoiceResponseData](#EInvoiceResponseData)] |  no  |  |

---


 
 
 #### [GenerateInvoiceIDResponseData](#GenerateInvoiceIDResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | errorMessage | Bool? |  yes  |  |

---


 
 
 #### [GenerateInvoiceIDErrorResponseData](#GenerateInvoiceIDErrorResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | invoiceId | Bool? |  yes  |  |
 | errorMessage | String? |  yes  |  |

---


 
 
 #### [GenerateInvoiceIDRequest](#GenerateInvoiceIDRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentIds | [String] |  no  |  |

---


 
 
 #### [GenerateInvoiceIDResponse](#GenerateInvoiceIDResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GenerateInvoiceIDResponseData](#GenerateInvoiceIDResponseData)]? |  yes  |  |

---


 
 
 #### [GenerateInvoiceIDErrorResponse](#GenerateInvoiceIDErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GenerateInvoiceIDErrorResponseData](#GenerateInvoiceIDErrorResponseData)]? |  yes  |  |

---


 
 
 #### [BagReasonMeta](#BagReasonMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | showTextArea | Bool? |  yes  |  |

---


 
 
 #### [QuestionSet](#QuestionSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [BagReasons](#BagReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | qcType | [String]? |  yes  |  |
 | id | Int? |  yes  |  |
 | displayName | String? |  yes  |  |
 | meta | [BagReasonMeta](#BagReasonMeta)? |  yes  |  |
 | questionSet | [[QuestionSet](#QuestionSet)]? |  yes  |  |
 | reasons | [[BagReasons](#BagReasons)]? |  yes  |  |

---


 
 
 #### [ShipmentBagReasons](#ShipmentBagReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [[BagReasons](#BagReasons)]? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currentShipmentStatus | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | shipmentStatusId | Int? |  yes  |  |
 | bagList | [String]? |  yes  |  |
 | title | String |  no  |  |
 | createdAt | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | statusCreatedAt | String? |  yes  |  |
 | status | String |  no  |  |

---


 
 
 #### [UserDataInfo](#UserDataInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | userOid | String? |  yes  |  |
 | externalCustomerId | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | email | String? |  yes  |  |
 | isAnonymousUser | Bool? |  yes  |  |
 | avisUserId | String? |  yes  |  |
 | name | String? |  yes  |  |
 | gender | String? |  yes  |  |

---


 
 
 #### [PlatformDeliveryAddress](#PlatformDeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | longitude | Int? |  yes  |  |
 | pincode | String? |  yes  |  |
 | area | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | country | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | email | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | version | String? |  yes  |  |
 | latitude | Int? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | state | String? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [ShipmentListingChannel](#ShipmentListingChannel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channelShipmentId | String? |  yes  |  |
 | isAffiliate | Bool? |  yes  |  |
 | logo | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [GSTDetailsData](#GSTDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cgstTaxPercentage | Double? |  yes  |  |
 | gstinCode | String? |  yes  |  |
 | valueOfGood | Double |  no  |  |
 | gstFee | Double |  no  |  |
 | igstTaxPercentage | Double? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | hsnCodeId | String? |  yes  |  |
 | igstGstFee | Double? |  yes  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | sgstGstFee | Double? |  yes  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | cgstGstFee | Double? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | sgstTaxPercentage | Double? |  yes  |  |
 | hsnCode | String? |  yes  |  |

---


 
 
 #### [Identifier](#Identifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | alu | String? |  yes  |  |
 | ean | String? |  yes  |  |
 | skuCode | String? |  yes  |  |
 | upc | String? |  yes  |  |
 | isbn | String? |  yes  |  |

---


 
 
 #### [FinancialBreakup](#FinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundCredit | Double |  no  |  |
 | amountPaidRoundoff | Int? |  yes  |  |
 | priceEffective | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | transferPrice | Double |  no  |  |
 | couponEffectiveDiscount | Double |  no  |  |
 | gstFee | Double |  no  |  |
 | taxCollectedAtSource | Double? |  yes  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | gstTag | String |  no  |  |
 | hsnCode | String |  no  |  |
 | cashback | Double |  no  |  |
 | itemName | String |  no  |  |
 | valueOfGood | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | size | String |  no  |  |
 | amountPaid | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | discount | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | totalUnits | Int |  no  |  |
 | addedToFyndCash | Bool |  no  |  |

---


 
 
 #### [BagStateMapper](#BagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | appDisplayName | String? |  yes  |  |
 | stateType | String |  no  |  |
 | id | Int |  no  |  |
 | journeyType | String |  no  |  |
 | appStateName | String? |  yes  |  |
 | name | String |  no  |  |
 | appFacing | Bool? |  yes  |  |
 | notifyCustomer | Bool? |  yes  |  |
 | displayName | String |  no  |  |

---


 
 
 #### [BagStatusHistory](#BagStatusHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | forward | Bool? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | deliveryAwbNumber | String? |  yes  |  |
 | kafkaSync | Bool? |  yes  |  |
 | deliveryPartnerId | Int? |  yes  |  |
 | appDisplayName | String? |  yes  |  |
 | stateId | Int? |  yes  |  |
 | stateType | String? |  yes  |  |
 | bshId | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper)? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | status | String |  no  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [Dimensions](#Dimensions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | height | Double? |  yes  |  |
 | width | Double? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | length | Double? |  yes  |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool? |  yes  |  |
 | time | Double? |  yes  |  |
 | unit | String? |  yes  |  |

---


 
 
 #### [Weight](#Weight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  |  |
 | shipping | Int? |  yes  |  |
 | unit | String? |  yes  |  |

---


 
 
 #### [Article](#Article)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | childDetails | [String: Any]? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | uid | String |  no  |  |
 | aSet | [String: Any]? |  yes  |  |
 | dimensions | [Dimensions](#Dimensions)? |  yes  |  |
 | currency | [String: Any]? |  yes  |  |
 | espModified | Bool? |  yes  |  |
 | returnConfig | [ReturnConfig](#ReturnConfig)? |  yes  |  |
 | code | String? |  yes  |  |
 | weight | [Weight](#Weight)? |  yes  |  |
 | id | String |  no  |  |
 | identifiers | [String: Any] |  no  |  |
 | rawMeta | String? |  yes  |  |
 | size | String |  no  |  |
 | isSet | Bool? |  yes  |  |

---


 
 
 #### [ShipmentListingBrand](#ShipmentListingBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | name | String? |  yes  |  |
 | logoBase64 | String? |  yes  |  |

---


 
 
 #### [ReplacementDetails](#ReplacementDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | replacementType | String? |  yes  |  |
 | originalAffiliateOrderId | String? |  yes  |  |

---


 
 
 #### [AffiliateMeta](#AffiliateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderItemId | String? |  yes  |  |
 | channelOrderId | String? |  yes  |  |
 | employeeDiscount | Double? |  yes  |  |
 | boxType | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | sizeLevelTotalQty | Int? |  yes  |  |
 | loyaltyDiscount | Double? |  yes  |  |
 | replacementDetails | [ReplacementDetails](#ReplacementDetails)? |  yes  |  |
 | channelShipmentId | String? |  yes  |  |
 | marketplaceInvoiceId | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | couponCode | String? |  yes  |  |
 | isPriority | Bool? |  yes  |  |
 | isSerialNumberRequired | Bool? |  yes  |  |
 | fulfilmentPriority | Int? |  yes  |  |
 | customerSellingPrice | Double? |  yes  |  |

---


 
 
 #### [AffiliateBagDetails](#AffiliateBagDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | affiliateOrderId | String |  no  |  |
 | employeeDiscount | Double? |  yes  |  |
 | affiliateBagId | String |  no  |  |
 | loyaltyDiscount | Double? |  yes  |  |

---


 
 
 #### [PlatformArticleAttributes](#PlatformArticleAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currency | String? |  yes  |  |

---


 
 
 #### [PlatformItem](#PlatformItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | attributes | [PlatformArticleAttributes](#PlatformArticleAttributes)? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |
 | lastUpdatedAt | String? |  yes  |  |
 | name | String? |  yes  |  |
 | l2Category | [String]? |  yes  |  |
 | brand | String? |  yes  |  |
 | image | [String]? |  yes  |  |
 | code | String? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | size | String? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | branchUrl | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | color | String? |  yes  |  |
 | departmentId | Int? |  yes  |  |
 | images | [String]? |  yes  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundCredit | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | pmPriceSplit | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | taxCollectedAtSource | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | giftPrice | Double? |  yes  |  |

---


 
 
 #### [Dates](#Dates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryDate | String? |  yes  |  |
 | orderCreated | String? |  yes  |  |

---


 
 
 #### [BagReturnableCancelableStatus](#BagReturnableCancelableStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isReturnable | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | canBeCancelled | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |
 | isCustomerReturnAllowed | Bool |  no  |  |

---


 
 
 #### [BagUnit](#BagUnit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagType | String? |  yes  |  |
 | gst | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |
 | bagExpiryDate | String? |  yes  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | article | [Article](#Article)? |  yes  |  |
 | brand | [ShipmentListingBrand](#ShipmentListingBrand)? |  yes  |  |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails)? |  yes  |  |
 | item | [PlatformItem](#PlatformItem)? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | productQuantity | Int |  no  |  |
 | canReturn | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | size | String? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | dates | [Dates](#Dates)? |  yes  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory) |  no  |  |
 | bagId | Int |  no  |  |
 | entityType | String? |  yes  |  |
 | status | [BagReturnableCancelableStatus](#BagReturnableCancelableStatus) |  no  |  |

---


 
 
 #### [ShipmentItemFulFillingStore](#ShipmentItemFulFillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String? |  yes  |  |
 | brandStoreTags | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | address | String? |  yes  |  |
 | locationType | String? |  yes  |  |
 | id | Int |  no  |  |
 | code | String |  no  |  |
 | storeEmail | String? |  yes  |  |
 | name | String? |  yes  |  |
 | state | String? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [Formatted](#Formatted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | String? |  yes  |  |
 | min | String? |  yes  |  |

---


 
 
 #### [ShipmentTags](#ShipmentTags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | displayText | String? |  yes  |  |

---


 
 
 #### [LockData](#LockData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locked | Bool? |  yes  |  |
 | mto | Bool? |  yes  |  |
 | lockMessage | String? |  yes  |  |

---


 
 
 #### [ShipmentTimeStamp](#ShipmentTimeStamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int? |  yes  |  |
 | min | Int? |  yes  |  |

---


 
 
 #### [ShipmentItemMeta](#ShipmentItemMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sameStoreAvailable | Bool? |  yes  |  |
 | isSelfShip | Bool? |  yes  |  |
 | isInternational | Bool? |  yes  |  |
 | formatted | [Formatted](#Formatted)? |  yes  |  |
 | debugInfo | [String: Any]? |  yes  |  |
 | sla | Double? |  yes  |  |
 | shipmentChargeableWeight | Double? |  yes  |  |
 | pdfMedia | [[String: Any]]? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | existingDpList | [String]? |  yes  |  |
 | parentDpId | String? |  yes  |  |
 | shipmentWeight | Double? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | shippingZone | String? |  yes  |  |
 | storeInvoiceUpdatedDate | String? |  yes  |  |
 | activityComment | String? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | shipmentTags | [[ShipmentTags](#ShipmentTags)]? |  yes  |  |
 | external | [String: Any]? |  yes  |  |
 | ewaybillInfo | [String: Any]? |  yes  |  |
 | lockData | [LockData](#LockData)? |  yes  |  |
 | orderType | String? |  yes  |  |
 | shipmentVolumetricWeight | Double? |  yes  |  |
 | dpSortKey | String? |  yes  |  |
 | packagingName | String? |  yes  |  |
 | timestamp | [ShipmentTimeStamp](#ShipmentTimeStamp)? |  yes  |  |
 | autoTriggerDpAssignmentAcf | Bool |  no  |  |
 | weight | Double? |  yes  |  |
 | bagWeight | [String: Any]? |  yes  |  |

---


 
 
 #### [ShipmentItem](#ShipmentItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderDate | String? |  yes  |  |
 | shipmentStatus | [ShipmentStatus](#ShipmentStatus)? |  yes  |  |
 | user | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | estimatedSlaTime | String? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | channel | [ShipmentListingChannel](#ShipmentListingChannel)? |  yes  |  |
 | previousShipmentId | String? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |
 | statusCreatedAt | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | bags | [[BagUnit](#BagUnit)]? |  yes  |  |
 | fulfillingStore | [ShipmentItemFulFillingStore](#ShipmentItemFulFillingStore)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | canProcess | Bool? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | orderId | String |  no  |  |
 | orderingChannnel | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | customerNote | String? |  yes  |  |
 | totalBags | Int |  no  |  |
 | shipmentCreatedAt | String |  no  |  |
 | modeOfPayment | String? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | total | Int? |  yes  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |

---


 
 
 #### [ShipmentInternalPlatformViewResponse](#ShipmentInternalPlatformViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalCount | Int? |  yes  |  |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | items | [[ShipmentItem](#ShipmentItem)]? |  yes  |  |
 | lane | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [TrackingList](#TrackingList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPassed | Bool? |  yes  |  |
 | text | String |  no  |  |
 | isCurrent | Bool? |  yes  |  |
 | time | String? |  yes  |  |
 | status | String |  no  |  |

---


 
 
 #### [InvoiceInfo](#InvoiceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeInvoiceId | String? |  yes  |  |
 | invoiceUrl | String? |  yes  |  |
 | updatedDate | String? |  yes  |  |
 | externalInvoiceId | String? |  yes  |  |
 | labelUrl | String? |  yes  |  |
 | creditNoteId | String? |  yes  |  |
 | links | [String: Any]? |  yes  |  |

---


 
 
 #### [OrderDetailsData](#OrderDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderDate | String? |  yes  |  |
 | taxDetails | [String: Any]? |  yes  |  |
 | codCharges | String? |  yes  |  |
 | source | String? |  yes  |  |
 | fyndOrderId | String |  no  |  |
 | affiliateId | String? |  yes  |  |
 | orderingChannelLogo | [String: Any]? |  yes  |  |
 | orderValue | String? |  yes  |  |
 | orderingChannel | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [UserDetailsData](#UserDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String |  no  |  |
 | pincode | String |  no  |  |
 | address | String |  no  |  |
 | area | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | country | String |  no  |  |
 | email | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | state | String |  no  |  |
 | name | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [PhoneDetails](#PhoneDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | Int? |  yes  |  |
 | number | String? |  yes  |  |

---


 
 
 #### [ContactDetails](#ContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [[PhoneDetails](#PhoneDetails)]? |  yes  |  |
 | emails | [String]? |  yes  |  |

---


 
 
 #### [CompanyDetails](#CompanyDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyName | String? |  yes  |  |
 | address | [String: Any]? |  yes  |  |
 | companyCin | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | companyGst | String? |  yes  |  |
 | companyContact | [ContactDetails](#ContactDetails)? |  yes  |  |

---


 
 
 #### [OrderingStoreDetails](#OrderingStoreDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | address | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | code | String? |  yes  |  |
 | storeName | String? |  yes  |  |
 | country | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | state | String? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [DPDetailsData](#DPDetailsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | String? |  yes  |  |
 | trackUrl | String? |  yes  |  |
 | ewayBillId | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | country | String? |  yes  |  |
 | awbNo | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [BuyerDetails](#BuyerDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ajioSiteId | String? |  yes  |  |
 | pincode | Int |  no  |  |
 | address | String |  no  |  |
 | gstin | String |  no  |  |
 | name | String |  no  |  |
 | state | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [DebugInfo](#DebugInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stormbreakerUuid | String? |  yes  |  |

---


 
 
 #### [EinvoiceInfo](#EinvoiceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNote | [String: Any]? |  yes  |  |
 | invoice | [String: Any]? |  yes  |  |

---


 
 
 #### [ShipmentMeta](#ShipmentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | trackingUrl | String? |  yes  |  |
 | estimatedDeliveryDate | String? |  yes  |  |
 | sameStoreAvailable | Bool |  no  |  |
 | b2BBuyerDetails | [BuyerDetails](#BuyerDetails)? |  yes  |  |
 | formatted | [Formatted](#Formatted)? |  yes  |  |
 | debugInfo | [DebugInfo](#DebugInfo)? |  yes  |  |
 | returnAwbNumber | String? |  yes  |  |
 | isSelfShip | Bool? |  yes  |  |
 | boxType | String? |  yes  |  |
 | einvoiceInfo | [EinvoiceInfo](#EinvoiceInfo)? |  yes  |  |
 | returnAffiliateShipmentId | String? |  yes  |  |
 | parentDpId | String? |  yes  |  |
 | shipmentWeight | Double? |  yes  |  |
 | dimension | [Dimensions](#Dimensions)? |  yes  |  |
 | dpOptions | [String: Any]? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | storeInvoiceUpdatedDate | String? |  yes  |  |
 | forwardAffiliateShipmentId | String? |  yes  |  |
 | returnStoreNode | Int? |  yes  |  |
 | fulfilmentPriorityText | String? |  yes  |  |
 | shipmentTags | [[ShipmentTags](#ShipmentTags)]? |  yes  |  |
 | external | [String: Any]? |  yes  |  |
 | awbNumber | String? |  yes  |  |
 | lockData | [LockData](#LockData)? |  yes  |  |
 | orderType | String? |  yes  |  |
 | ewaybillInfo | [String: Any]? |  yes  |  |
 | dpId | String? |  yes  |  |
 | shipmentVolumetricWeight | Double? |  yes  |  |
 | marketplaceStoreId | String? |  yes  |  |
 | returnDetails | [String: Any]? |  yes  |  |
 | dpSortKey | String? |  yes  |  |
 | packagingName | String? |  yes  |  |
 | timestamp | [ShipmentTimeStamp](#ShipmentTimeStamp)? |  yes  |  |
 | autoTriggerDpAssignmentAcf | Bool? |  yes  |  |
 | dpName | String? |  yes  |  |
 | poNumber | String? |  yes  |  |
 | weight | Int |  no  |  |
 | b2CBuyerDetails | [String: Any]? |  yes  |  |
 | forwardAffiliateOrderId | String? |  yes  |  |
 | returnAffiliateOrderId | String? |  yes  |  |
 | bagWeight | [String: Any]? |  yes  |  |
 | refundTo | String? |  yes  |  |

---


 
 
 #### [PDFLinks](#PDFLinks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoiceType | String |  no  |  |
 | labelA6 | String? |  yes  |  |
 | invoice | String? |  yes  |  |
 | labelPos | String? |  yes  |  |
 | invoiceA6 | String? |  yes  |  |
 | b2B | String? |  yes  |  |
 | label | String? |  yes  |  |
 | labelA4 | String? |  yes  |  |
 | labelType | String |  no  |  |
 | invoiceExport | String? |  yes  |  |
 | creditNoteUrl | String? |  yes  |  |
 | deliveryChallanA4 | String? |  yes  |  |
 | labelExport | String? |  yes  |  |
 | invoiceA4 | String? |  yes  |  |
 | invoicePos | String? |  yes  |  |
 | poInvoice | String? |  yes  |  |

---


 
 
 #### [AffiliateDetails](#AffiliateDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentMeta | [ShipmentMeta](#ShipmentMeta) |  no  |  |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta) |  no  |  |
 | affiliateShipmentId | String |  no  |  |
 | companyAffiliateTag | String? |  yes  |  |
 | affiliateOrderId | String |  no  |  |
 | pdfLinks | [PDFLinks](#PDFLinks)? |  yes  |  |
 | config | [AffiliateConfig](#AffiliateConfig)? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | affiliateStoreId | String |  no  |  |
 | affiliateBagId | String |  no  |  |
 | adId | String? |  yes  |  |

---


 
 
 #### [BagGST](#BagGST)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cgstTaxPercentage | Double? |  yes  |  |
 | cgstGstFee | String? |  yes  |  |
 | gstinCode | String? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | gstFee | Double? |  yes  |  |
 | igstTaxPercentage | Double? |  yes  |  |
 | gstTaxPercentage | Int? |  yes  |  |
 | hsnCodeId | String? |  yes  |  |
 | igstGstFee | String? |  yes  |  |
 | sgstGstFee | String? |  yes  |  |
 | taxCollectedAtSource | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | sgstTaxPercentage | Double? |  yes  |  |
 | hsnCode | String? |  yes  |  |

---


 
 
 #### [BagConfigs](#BagConfigs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isReturnable | Bool |  no  |  |
 | allowForceReturn | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | canBeCancelled | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |
 | isCustomerReturnAllowed | Bool |  no  |  |

---


 
 
 #### [ReturnConfig1](#ReturnConfig1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool? |  yes  |  |
 | time | Double? |  yes  |  |
 | unit | String? |  yes  |  |

---


 
 
 #### [OrderBagArticle](#OrderBagArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifiers | [String: Any]? |  yes  |  |
 | returnConfig | [ReturnConfig1](#ReturnConfig1)? |  yes  |  |
 | uid | String? |  yes  |  |
 | size | String? |  yes  |  |

---


 
 
 #### [OrderBrandName](#OrderBrandName)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String? |  yes  |  |
 | company | Int? |  yes  |  |
 | id | Int |  no  |  |
 | createdOn | String? |  yes  |  |
 | brandName | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [AffiliateBagsDetails](#AffiliateBagsDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateBagId | String? |  yes  |  |
 | couponCode | String? |  yes  |  |
 | affiliateMeta | [AffiliateMeta](#AffiliateMeta)? |  yes  |  |

---


 
 
 #### [BagPaymentMethods](#BagPaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String? |  yes  |  |
 | amount | Double? |  yes  |  |

---


 
 
 #### [GiftCard](#GiftCard)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | giftMessage | String? |  yes  |  |
 | giftPrice | Int? |  yes  |  |
 | displayText | String? |  yes  |  |
 | isGiftApplied | Bool? |  yes  |  |

---


 
 
 #### [B2BPODetails](#B2BPODetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dockerNumber | String? |  yes  |  |
 | poLineAmount | Double? |  yes  |  |
 | totalGstPercentage | Double? |  yes  |  |
 | partialCanRet | Bool? |  yes  |  |
 | poTaxAmount | Double? |  yes  |  |
 | itemBasePrice | Double? |  yes  |  |

---


 
 
 #### [BagMeta](#BagMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | giftCard | [GiftCard](#GiftCard)? |  yes  |  |
 | customMessage | String? |  yes  |  |
 | docketNumber | String? |  yes  |  |
 | groupId | String? |  yes  |  |
 | partialCanRet | Bool? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | b2BPoDetails | [B2BPODetails](#B2BPODetails)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [DiscountRules](#DiscountRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Int? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ItemCriterias](#ItemCriterias)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemBrand | [Int]? |  yes  |  |

---


 
 
 #### [BuyRules](#BuyRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCriteria | [ItemCriterias](#ItemCriterias)? |  yes  |  |
 | cartConditions | [String: Any]? |  yes  |  |

---


 
 
 #### [AppliedPromos](#AppliedPromos)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | promotionType | String? |  yes  |  |
 | promotionName | String? |  yes  |  |
 | discountRules | [[DiscountRules](#DiscountRules)]? |  yes  |  |
 | amount | Double? |  yes  |  |
 | articleQuantity | Int? |  yes  |  |
 | buyRules | [[BuyRules](#BuyRules)]? |  yes  |  |
 | promoId | String? |  yes  |  |
 | mrpPromotion | Bool? |  yes  |  |

---


 
 
 #### [CurrentStatus](#CurrentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeId | Int? |  yes  |  |
 | deliveryAwbNumber | String? |  yes  |  |
 | kafkaSync | Bool? |  yes  |  |
 | deliveryPartnerId | Int? |  yes  |  |
 | stateType | String? |  yes  |  |
 | stateId | Int? |  yes  |  |
 | id | Int |  no  |  |
 | createdAt | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper)? |  yes  |  |
 | bagId | Int? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [OrderBags](#OrderBags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstDetails | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | financialBreakup | [FinancialBreakup](#FinancialBreakup)? |  yes  |  |
 | bagConfigs | [BagConfigs](#BagConfigs)? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | article | [OrderBagArticle](#OrderBagArticle)? |  yes  |  |
 | brand | [OrderBrandName](#OrderBrandName)? |  yes  |  |
 | groupId | String? |  yes  |  |
 | affiliateBagDetails | [AffiliateBagsDetails](#AffiliateBagsDetails)? |  yes  |  |
 | item | [PlatformItem](#PlatformItem)? |  yes  |  |
 | paymentMethods | [[BagPaymentMethods](#BagPaymentMethods)]? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | identifier | String? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | appliedPromos | [[AppliedPromos](#AppliedPromos)]? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | currentStatus | [CurrentStatus](#CurrentStatus)? |  yes  |  |
 | bagId | Int |  no  |  |
 | entityType | String? |  yes  |  |
 | isParent | Bool? |  yes  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String |  no  |  |
 | pincode | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | address | String |  no  |  |
 | id | Int |  no  |  |
 | code | String |  no  |  |
 | storeName | String |  no  |  |
 | country | String |  no  |  |
 | fulfillmentChannel | String |  no  |  |
 | contactPerson | String |  no  |  |
 | state | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [ShipmentPayments](#ShipmentPayments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mode | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | source | String? |  yes  |  |

---


 
 
 #### [ShipmentStatusData](#ShipmentStatusData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | bagList | [String]? |  yes  |  |
 | id | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | currentShipmentStatus | String? |  yes  |  |

---


 
 
 #### [PlatformShipment](#PlatformShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pickedDate | String? |  yes  |  |
 | trackingList | [[TrackingList](#TrackingList)]? |  yes  |  |
 | invoice | [InvoiceInfo](#InvoiceInfo)? |  yes  |  |
 | shipmentStatus | String? |  yes  |  |
 | gstDetails | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | deliverySlot | [String: Any]? |  yes  |  |
 | order | [OrderDetailsData](#OrderDetailsData)? |  yes  |  |
 | user | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | enableDpTracking | Bool? |  yes  |  |
 | customMessage | String? |  yes  |  |
 | estimatedSlaTime | String? |  yes  |  |
 | canUpdateDimension | Bool? |  yes  |  |
 | shipmentImages | [String]? |  yes  |  |
 | deliveryDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | billingDetails | [UserDetailsData](#UserDetailsData)? |  yes  |  |
 | forwardShipmentId | String? |  yes  |  |
 | fulfilmentPriority | Int? |  yes  |  |
 | shipmentDetails | [ShipmentDetails](#ShipmentDetails)? |  yes  |  |
 | customMeta | [[String: Any]]? |  yes  |  |
 | shipmentQuantity | Int? |  yes  |  |
 | companyDetails | [CompanyDetails](#CompanyDetails)? |  yes  |  |
 | orderingStore | [OrderingStoreDetails](#OrderingStoreDetails)? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | platformLogo | String? |  yes  |  |
 | userAgent | String? |  yes  |  |
 | dpDetails | [DPDetailsData](#DPDetailsData)? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |
 | coupon | [String: Any]? |  yes  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails)? |  yes  |  |
 | priorityText | String? |  yes  |  |
 | bagStatusHistory | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | isDpAssignEnabled | Bool? |  yes  |  |
 | bags | [[OrderBags](#OrderBags)]? |  yes  |  |
 | dpAssignment | Bool? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | pdfLinks | [String: Any]? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | packagingType | String? |  yes  |  |
 | journeyType | String? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | vertical | String? |  yes  |  |
 | shipmentId | String |  no  |  |
 | payments | [ShipmentPayments](#ShipmentPayments)? |  yes  |  |
 | operationalStatus | String? |  yes  |  |
 | status | [ShipmentStatusData](#ShipmentStatusData)? |  yes  |  |
 | totalBags | Int? |  yes  |  |
 | shipmentCreatedAt | String? |  yes  |  |
 | previousShipmentId | String? |  yes  |  |
 | shipmentUpdateTime | Double? |  yes  |  |
 | rtoAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | creditNoteId | String? |  yes  |  |
 | isSelfShip | Bool? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |

---


 
 
 #### [ShipmentInfoResponse](#ShipmentInfoResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool |  no  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |

---


 
 
 #### [TaxDetails](#TaxDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | panNo | String? |  yes  |  |
 | gstin | String? |  yes  |  |

---


 
 
 #### [PlatformUserDetails](#PlatformUserDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | platformUserEmployeeCode | String? |  yes  |  |
 | platformUserFirstName | String? |  yes  |  |
 | platformUserId | String? |  yes  |  |
 | platformUserLastName | String? |  yes  |  |

---


 
 
 #### [TransactionData](#TransactionData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currency | String? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | paymentId | String? |  yes  |  |
 | uniqueReferenceNumber | String? |  yes  |  |
 | terminalId | String? |  yes  |  |
 | entity | String? |  yes  |  |
 | transactionId | String? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [BillingStaffDetails](#BillingStaffDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | staffId | Int? |  yes  |  |
 | employeeCode | String? |  yes  |  |
 | user | String? |  yes  |  |

---


 
 
 #### [OrderMeta](#OrderMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | platformUserDetails | [PlatformUserDetails](#PlatformUserDetails)? |  yes  |  |
 | companyLogo | String? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | comment | String? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |
 | files | [[String: Any]]? |  yes  |  |
 | transactionData | [TransactionData](#TransactionData)? |  yes  |  |
 | billingStaffDetails | [BillingStaffDetails](#BillingStaffDetails)? |  yes  |  |
 | orderingStore | Int? |  yes  |  |
 | paymentType | String? |  yes  |  |
 | mongoCartId | Int? |  yes  |  |
 | orderChildEntities | [String]? |  yes  |  |
 | orderType | String? |  yes  |  |
 | orderPlatform | String? |  yes  |  |
 | employeeId | String? |  yes  |  |
 | orderTags | [[String: Any]]? |  yes  |  |
 | customerNote | String? |  yes  |  |
 | staff | [String: Any]? |  yes  |  |
 | cartId | Int? |  yes  |  |
 | cartObjectId | String? |  yes  |  |

---


 
 
 #### [OrderData](#OrderData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderDate | String |  no  |  |
 | taxDetails | [TaxDetails](#TaxDetails)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | fyndOrderId | String |  no  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | paymentMethods | [String: Any]? |  yes  |  |

---


 
 
 #### [OrderDetailsResponse](#OrderDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | [OrderData](#OrderData)? |  yes  |  |
 | success | Bool |  no  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |

---


 
 
 #### [SubLane](#SubLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | text | String? |  yes  |  |
 | totalItems | Int? |  yes  |  |
 | actions | [[String: Any]]? |  yes  |  |
 | index | Int? |  yes  |  |

---


 
 
 #### [SuperLane](#SuperLane)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | options | [[SubLane](#SubLane)]? |  yes  |  |
 | text | String |  no  |  |
 | totalItems | Int? |  yes  |  |

---


 
 
 #### [LaneConfigResponse](#LaneConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | superLanes | [[SuperLane](#SuperLane)]? |  yes  |  |

---


 
 
 #### [PlatformBreakupValues](#PlatformBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | name | String? |  yes  |  |
 | display | String? |  yes  |  |

---


 
 
 #### [PlatformChannel](#PlatformChannel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [PlatformOrderItems](#PlatformOrderItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | breakupValues | [[PlatformBreakupValues](#PlatformBreakupValues)]? |  yes  |  |
 | totalOrderValue | Double? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | orderCreatedTime | String? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | shipments | [[PlatformShipment](#PlatformShipment)]? |  yes  |  |
 | orderId | String? |  yes  |  |
 | channel | [PlatformChannel](#PlatformChannel)? |  yes  |  |
 | userInfo | [UserDataInfo](#UserDataInfo)? |  yes  |  |
 | orderValue | Double? |  yes  |  |

---


 
 
 #### [OrderListingResponse](#OrderListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalCount | Int? |  yes  |  |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | items | [[PlatformOrderItems](#PlatformOrderItems)]? |  yes  |  |
 | lane | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PlatformTrack](#PlatformTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lastLocationRecievedAt | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | rawStatus | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | updatedTime | String? |  yes  |  |
 | awb | String? |  yes  |  |
 | shipmentType | String? |  yes  |  |
 | status | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | accountName | String? |  yes  |  |

---


 
 
 #### [PlatformShipmentTrack](#PlatformShipmentTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | results | [[PlatformTrack](#PlatformTrack)]? |  yes  |  |

---


 
 
 #### [FilterInfoOption](#FilterInfoOption)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | text | String? |  yes  |  |
 | showUi | Bool? |  yes  |  |
 | placeholderText | String? |  yes  |  |
 | minSearchSize | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [FiltersInfo](#FiltersInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | type | String |  no  |  |
 | text | String |  no  |  |
 | options | [[FilterInfoOption](#FilterInfoOption)]? |  yes  |  |
 | placeholderText | String? |  yes  |  |
 | required | Bool? |  yes  |  |

---


 
 
 #### [AdvanceFilterInfo](#AdvanceFilterInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returned | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | actionCentre | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | unfulfilled | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | filters | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | processed | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |
 | appliedFilters | [String: Any]? |  yes  |  |
 | page | [String: Any]? |  yes  |  |

---


 
 
 #### [FiltersResponse](#FiltersResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | advanceFilter | [AdvanceFilterInfo](#AdvanceFilterInfo)? |  yes  |  |
 | globalFilter | [[FiltersInfo](#FiltersInfo)]? |  yes  |  |

---


 
 
 #### [URL](#URL)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [FileResponse](#FileResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fileName | String? |  yes  | Name of the file |
 | cdn | [URL](#URL)? |  yes  |  |

---


 
 
 #### [BulkActionTemplate](#BulkActionTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | text | String? |  yes  |  |

---


 
 
 #### [BulkActionTemplateResponse](#BulkActionTemplateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateXSlug | [[BulkActionTemplate](#BulkActionTemplate)]? |  yes  | Allowed bulk action template slugs |

---


 
 
 #### [Reason](#Reason)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | qcType | [String]? |  yes  |  |
 | id | Int? |  yes  |  |
 | questionSet | [[QuestionSet](#QuestionSet)]? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [PlatformShipmentReasonsResponse](#PlatformShipmentReasonsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [[Reason](#Reason)]? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ShipmentResponseReasons](#ShipmentResponseReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonId | Int? |  yes  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [ShipmentReasonsResponse](#ShipmentReasonsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [[ShipmentResponseReasons](#ShipmentResponseReasons)] |  no  |  |
 | message | String |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [BagGSTDetails](#BagGSTDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cgstTaxPercentage | Double |  no  |  |
 | cgstGstFee | String |  no  |  |
 | gstinCode | String? |  yes  |  |
 | valueOfGood | Double |  no  |  |
 | gstFee | Double |  no  |  |
 | igstTaxPercentage | Double |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | hsnCodeId | String |  no  |  |
 | igstGstFee | String |  no  |  |
 | sgstGstFee | String |  no  |  |
 | taxCollectedAtSource | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |
 | gstTag | String |  no  |  |
 | sgstTaxPercentage | Double |  no  |  |
 | hsnCode | String |  no  |  |

---


 
 
 #### [StoreAddress](#StoreAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String |  no  |  |
 | createdAt | String |  no  |  |
 | contactPerson | String |  no  |  |
 | pincode | Int |  no  |  |
 | addressType | String |  no  |  |
 | address1 | String |  no  |  |
 | version | String? |  yes  |  |
 | addressCategory | String |  no  |  |
 | city | String |  no  |  |
 | longitude | Double |  no  |  |
 | address2 | String? |  yes  |  |
 | area | String? |  yes  |  |
 | email | String? |  yes  |  |
 | updatedAt | String |  no  |  |
 | countryCode | String |  no  |  |
 | country | String |  no  |  |
 | landmark | String? |  yes  |  |
 | latitude | Double |  no  |  |
 | state | String |  no  |  |

---


 
 
 #### [EInvoicePortalDetails](#EInvoicePortalDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | user | String? |  yes  |  |
 | password | String? |  yes  |  |

---


 
 
 #### [StoreEinvoice](#StoreEinvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | user | String? |  yes  |  |
 | password | String? |  yes  |  |
 | enabled | Bool |  no  |  |

---


 
 
 #### [StoreEwaybill](#StoreEwaybill)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [StoreGstCredentials](#StoreGstCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eInvoice | [StoreEinvoice](#StoreEinvoice)? |  yes  |  |
 | eWaybill | [StoreEwaybill](#StoreEwaybill)? |  yes  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | dsType | String |  no  |  |
 | verified | Bool |  no  |  |
 | legalName | String |  no  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [StoreDocuments](#StoreDocuments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gst | [Document](#Document)? |  yes  |  |

---


 
 
 #### [StoreMeta](#StoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | additionalContactDetails | [String: Any]? |  yes  |  |
 | timing | [[String: Any]]? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | gstNumber | String? |  yes  |  |
 | ewaybillPortalDetails | [String: Any]? |  yes  |  |
 | einvoicePortalDetails | [EInvoicePortalDetails](#EInvoicePortalDetails)? |  yes  |  |
 | gstCredentials | [StoreGstCredentials](#StoreGstCredentials) |  no  |  |
 | stage | String |  no  |  |
 | productReturnConfig | [String: Any]? |  yes  |  |
 | documents | [StoreDocuments](#StoreDocuments)? |  yes  |  |
 | displayName | String |  no  |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | Int |  no  |  |
 | isActive | Bool? |  yes  |  |
 | companyId | Int |  no  |  |
 | alohomoraUserId | Int? |  yes  |  |
 | createdAt | String |  no  |  |
 | contactPerson | String |  no  |  |
 | brandId | [String: Any]? |  yes  |  |
 | storeEmail | String |  no  |  |
 | isEnabledForRecon | Bool? |  yes  |  |
 | pincode | String |  no  |  |
 | mallArea | String? |  yes  |  |
 | vatNo | String? |  yes  |  |
 | address1 | String |  no  |  |
 | storeActiveFrom | String? |  yes  |  |
 | city | String |  no  |  |
 | name | String |  no  |  |
 | longitude | Double |  no  |  |
 | brandStoreTags | [String]? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | parentStoreId | Int? |  yes  |  |
 | locationType | String |  no  |  |
 | code | String? |  yes  |  |
 | fulfillmentChannel | String |  no  |  |
 | updatedAt | String? |  yes  |  |
 | storeAddressJson | [StoreAddress](#StoreAddress)? |  yes  |  |
 | meta | [StoreMeta](#StoreMeta) |  no  |  |
 | sId | String |  no  |  |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | packagingMaterialCount | Int? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | loginUsername | String |  no  |  |
 | mallName | String? |  yes  |  |
 | latitude | Double |  no  |  |
 | address2 | String? |  yes  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNoteExpiryDays | Int? |  yes  |  |
 | logo | String? |  yes  |  |
 | invoicePrefix | String? |  yes  |  |
 | creditNoteAllowed | Bool? |  yes  |  |
 | startDate | String? |  yes  |  |
 | company | String |  no  |  |
 | isVirtualInvoice | Bool? |  yes  |  |
 | scriptLastRan | String? |  yes  |  |
 | pickupLocation | String? |  yes  |  |
 | createdOn | Int? |  yes  |  |
 | brandName | String |  no  |  |
 | brandId | Int |  no  |  |
 | modifiedOn | Int? |  yes  |  |

---


 
 
 #### [Attributes](#Attributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primaryMaterial | String? |  yes  |  |
 | essential | String? |  yes  |  |
 | marketerName | String? |  yes  |  |
 | primaryColor | String? |  yes  |  |
 | marketerAddress | String? |  yes  |  |
 | primaryColorHex | String? |  yes  |  |
 | brandName | String? |  yes  |  |
 | name | String? |  yes  |  |
 | gender | [String]? |  yes  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [Attributes](#Attributes) |  no  |  |
 | brandId | Int |  no  |  |
 | slugKey | String |  no  |  |
 | webstoreProductUrl | String? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |
 | lastUpdatedAt | String? |  yes  |  |
 | name | String |  no  |  |
 | l2Category | [String]? |  yes  |  |
 | brand | String |  no  |  |
 | image | [String] |  no  |  |
 | code | String? |  yes  |  |
 | l1CategoryId | Int? |  yes  |  |
 | itemId | Int |  no  |  |
 | l1Category | [String]? |  yes  |  |
 | gender | String? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | size | String |  no  |  |
 | branchUrl | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | color | String? |  yes  |  |
 | departmentId | Int? |  yes  |  |
 | l2CategoryId | Int? |  yes  |  |

---


 
 
 #### [BagReturnableCancelableStatus1](#BagReturnableCancelableStatus1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isReturnable | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | canBeCancelled | Bool |  no  |  |
 | enableTracking | Bool |  no  |  |
 | isCustomerReturnAllowed | Bool |  no  |  |

---


 
 
 #### [BagDetailsPlatformResponse](#BagDetailsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagUpdateTime | Double? |  yes  |  |
 | id | Int? |  yes  |  |
 | gstDetails | [GSTDetailsData](#GSTDetailsData)? |  yes  |  |
 | parentPromoBags | [String: Any]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)]? |  yes  |  |
 | bagStatus | [[BagStatusHistory](#BagStatusHistory)]? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | originalBagList | [Int]? |  yes  |  |
 | articleDetails | [ArticleDetails](#ArticleDetails)? |  yes  |  |
 | currentOperationalStatus | [BagStatusHistory](#BagStatusHistory)? |  yes  |  |
 | orderingStore | [Store](#Store)? |  yes  |  |
 | article | [Article](#Article)? |  yes  |  |
 | brand | [Brand](#Brand)? |  yes  |  |
 | affiliateBagDetails | [AffiliateBagDetails](#AffiliateBagDetails)? |  yes  |  |
 | item | [Item](#Item)? |  yes  |  |
 | qcRequired | [String: Any]? |  yes  |  |
 | identifier | String? |  yes  |  |
 | quantity | Double? |  yes  |  |
 | restorePromos | [String: Any]? |  yes  |  |
 | affiliateDetails | [AffiliateDetails](#AffiliateDetails)? |  yes  |  |
 | reasons | [[String: Any]]? |  yes  |  |
 | bagStatusHistory | [BagStatusHistory](#BagStatusHistory)? |  yes  |  |
 | displayName | String? |  yes  |  |
 | type | String? |  yes  |  |
 | lineNumber | Int? |  yes  |  |
 | restoreCoupon | Bool? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | noOfBagsOrder | Int? |  yes  |  |
 | appliedPromos | [[String: Any]]? |  yes  |  |
 | journeyType | String? |  yes  |  |
 | prices | [Prices](#Prices)? |  yes  |  |
 | dates | [Dates](#Dates)? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | currentStatus | [BagStatusHistory](#BagStatusHistory)? |  yes  |  |
 | orderIntegrationId | String? |  yes  |  |
 | operationalStatus | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | status | [BagReturnableCancelableStatus1](#BagReturnableCancelableStatus1)? |  yes  |  |

---


 
 
 #### [BagsPage](#BagsPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | pageType | String |  no  |  |
 | current | Int |  no  |  |
 | size | Int |  no  |  |

---


 
 
 #### [GetBagsPlatformResponse](#GetBagsPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BagDetailsPlatformResponse](#BagDetailsPlatformResponse)] |  no  |  |
 | page | [BagsPage](#BagsPage) |  no  |  |

---


 
 
 #### [GeneratePosOrderReceiptResponse](#GeneratePosOrderReceiptResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerCnReceipt | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | orderId | String? |  yes  |  |
 | invoiceReceipt | String? |  yes  |  |
 | paymentReceipt | String? |  yes  |  |
 | merchantCnReceipt | String? |  yes  |  |

---



