



##### [Back to Internal docs](./README.md)

## FileStorage Methods
This service provides functionality to manage assets and generate pdf. You can upload the assets, get the cdn link for the assets, proxy the assets and many more things. It also generate a single pdf for multiple shipments invoices and label's

* [generateBulkPdf](#generatebulkpdf)



## Methods with example and description


#### generateBulkPdf
Generate single PDFs for bulk shipments




```swift
internalClient.filestorage.generateBulkPdf(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GenerateShipmentRequestBody | yes | Request body |


Generate single PDFs for bulk shipments for invoices, label's and Delivery challan

*Returned Response:*




[GenerateShipment200](#GenerateShipment200)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true,
    "job_id": "312432edfg",
    "trace_id": 16898479557521107000
  }
}
```
</details>

</details>









---



### Schemas

 
 
 #### [GenerateShipmentRequestBody](#GenerateShipmentRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String |  no  |  |
 | storeCode | String |  no  |  |
 | batchId | String |  no  |  |
 | documentType | String? |  yes  |  |
 | shipmentIds | [[String: Any]] |  no  |  |
 | invoiceDocumentType | String? |  yes  |  |
 | labelDocumentType | String? |  yes  |  |
 | document | [[String: Any]]? |  yes  |  |

---


 
 
 #### [GenerateShipment200](#GenerateShipment200)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | jobId | String |  no  |  |
 | traceId | Double |  no  |  |

---


 
 
 #### [GenerateShipment400](#GenerateShipment400)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | requestId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [GenerateShipment500](#GenerateShipment500)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | requestId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | stackTrace | String? |  yes  |  |

---



