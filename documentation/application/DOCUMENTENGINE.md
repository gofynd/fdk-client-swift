



##### [Back to Application docs](./README.md)

## DocumentEngine Methods
Handles financial pdf generation of Fulfilment
* [getInvoiceByShipmentId](#getinvoicebyshipmentid)
* [getCreditNoteByShipmentId](#getcreditnotebyshipmentid)



## Methods with example and description


#### getInvoiceByShipmentId
Get Presigned URL to download Invoice




```swift
documentengine.getInvoiceByShipmentId(shipmentId: shipmentId, parameters: parameters) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | Shiment ID |   
| parameters | invoiceParameter? | no |  |  



Use this API to generate Presigned URLs for downloading Invoice

*Returned Response:*




[ResponseGetInvoiceShipment](#ResponseGetInvoiceShipment)

Success Response, Presigned URL of Invoice




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCreditNoteByShipmentId
Get Presigned URL to download Invoice




```swift
documentengine.getCreditNoteByShipmentId(shipmentId: shipmentId, parameters: parameters) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| shipmentId | String | yes | Shiment ID |   
| parameters | creditNoteParameter? | no |  |  



Use this API to generate Presigned URLs for downloading Invoice

*Returned Response:*




[ResponseGetInvoiceShipment](#ResponseGetInvoiceShipment)

Success Response, Presigned URL of Invoice




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [creditNoteParameter](#creditNoteParameter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiresIn | Int? |  yes  |  |

---


 
 
 #### [invoiceParameter](#invoiceParameter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | documentType | String? |  yes  |  |
 | expiresIn | Int? |  yes  |  |

---


 
 
 #### [ResponseGetInvoiceShipment](#ResponseGetInvoiceShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | presignedType | String |  no  |  |
 | shipmentId | String |  no  |  |
 | presignedUrl | String |  no  |  |

---


 
 
 #### [getInvoiceByShipmentId400Response](#getInvoiceByShipmentId400Response)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [getInvoiceByShipmentId500Response](#getInvoiceByShipmentId500Response)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | presignedType | String? |  yes  |  |

---


 
 
 #### [ReqBodyPresignedPOST](#ReqBodyPresignedPOST)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | event | String |  no  |  |
 | mediaType | [[String: Any]] |  no  |  |
 | expiresIn | Int? |  yes  |  |

---


 
 
 #### [ResponsePresignedGETURL](#ResponsePresignedGETURL)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | presignedType | String |  no  |  |
 | shipmentId | String |  no  |  |
 | presignedUrl | String |  no  |  |

---


 
 
 #### [ErrorResponsePresignedUrl](#ErrorResponsePresignedUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |
 | requestId | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---



