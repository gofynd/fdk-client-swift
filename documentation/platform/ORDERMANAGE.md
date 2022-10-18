



##### [Back to Platform docs](./README.md)

## OrderManage Methods
Update Status all platform shipment api(s)
* [statusInternalUpdate](#statusinternalupdate)
* [getShipmentHistory](#getshipmenthistory)
* [manualStoreReassignment](#manualstorereassignment)
* [shipmentEDDUpdate](#shipmenteddupdate)



## Methods with example and description


#### statusInternalUpdate





```swift
client.ordermanage.statusInternalUpdate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PlatformShipmentStatusInternal | yes | Request body |




*Returned Response:*




[ResponseDetail](#ResponseDetail)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentHistory





```swift
client.ordermanage.getShipmentHistory(bagId: bagId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagId | Int | yes |  |  





*Returned Response:*




[ShipmentHistoryResponse](#ShipmentHistoryResponse)

It shows the journey of the shipment!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "activity_history": [
    {
      "message": {
        "message": "Bag status changed to pending",
        "store_id": 10,
        "store_code": "SF94",
        "store_name": "shub",
        "reason": {},
        "type": "activity_status"
      },
      "createdat": "01 Apr 2022, 17:57:PM",
      "user": "system",
      "type": "activity_status",
      "l1_detail": null,
      "l2_detail": null,
      "l3_detail": null,
      "ticket_id": null,
      "ticket_url": null
    },
    {
      "message": {
        "message": "Bag status changed to placed",
        "store_id": 10,
        "store_code": "SF94",
        "store_name": "shub",
        "reason": {},
        "type": "activity_status"
      },
      "createdat": "01 Apr 2022, 17:57:PM",
      "user": "system",
      "type": "activity_status",
      "l1_detail": null,
      "l2_detail": null,
      "l3_detail": null,
      "ticket_id": null,
      "ticket_url": null
    }
  ]
}
```
</details>









---


#### manualStoreReassignment





```swift
client.ordermanage.manualStoreReassignment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ManualStoreReassign | yes | Request body |


Manual Store Reassignment

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Successfully reassigned store!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### shipmentEDDUpdate





```swift
client.ordermanage.shipmentEDDUpdate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ShipmentEDDUpdate | yes | Request body |


Shipment EDD Update

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Successfully Updated Shipment EDD!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [ProductDetail](#ProductDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String? |  yes  |  |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [ShipmentBody](#ShipmentBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dataUpdate | [String: Any]? |  yes  |  |
 | storeInvoiceId | String? |  yes  |  |
 | products | [[ProductDetail](#ProductDetail)]? |  yes  |  |
 | reason | [Int]? |  yes  |  |

---


 
 
 #### [ShipmentDetail](#ShipmentDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | [ShipmentBody](#ShipmentBody)? |  yes  |  |

---


 
 
 #### [Statuses](#Statuses)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | excludeBagsNextState | String |  no  |  |
 | shipments | [ShipmentDetail](#ShipmentDetail)? |  yes  |  |
 | status | String |  no  |  |

---


 
 
 #### [PlatformShipmentStatusInternal](#PlatformShipmentStatusInternal)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | task | Bool? |  yes  |  |
 | statuses | [Statuses](#Statuses)? |  yes  |  |
 | forceTransition | Bool? |  yes  |  |

---


 
 
 #### [ResponseDetail](#ResponseDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | [String]? |  yes  |  |

---


 
 
 #### [ErrorDetail](#ErrorDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [HistoryDict](#HistoryDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | ticketUrl | String? |  yes  |  |
 | createdat | String |  no  |  |
 | l3Detail | String? |  yes  |  |
 | l1Detail | String? |  yes  |  |
 | l2Detail | String? |  yes  |  |
 | user | String |  no  |  |
 | message | String |  no  |  |
 | ticketId | String? |  yes  |  |

---


 
 
 #### [ShipmentHistoryResponse](#ShipmentHistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [[HistoryDict](#HistoryDict)]? |  yes  |  |

---


 
 
 #### [ManualStoreReassign](#ManualStoreReassign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonText | String? |  yes  |  |
 | shipmentId | String |  no  |  |
 | reasonId | [Int]? |  yes  |  |
 | storeId | Int |  no  |  |

---


 
 
 #### [SuccessResponse](#SuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [ShipmentEDDUpdate](#ShipmentEDDUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | edd | String |  no  |  |
 | reasonText | String? |  yes  |  |
 | shipmentId | String |  no  |  |
 | reasonId | [Int]? |  yes  |  |

---



