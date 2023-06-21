



##### [Back to Platform docs](./README.md)

## Finance Methods
Handles all finance related activities
* [generateReport](#generatereport)
* [downloadReport](#downloadreport)
* [getData](#getdata)
* [getReason](#getreason)
* [getReportList](#getreportlist)
* [getAffiliate](#getaffiliate)
* [downloadCreditDebitNote](#downloadcreditdebitnote)
* [paymentProcess](#paymentprocess)
* [getInvoiceType](#getinvoicetype)
* [invoiceListing](#invoicelisting)
* [invoicePDF](#invoicepdf)



## Methods with example and description


#### generateReport





```swift
platformClient.finance.generateReport(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GenerateReportRequest | yes | Request body |




*Returned Response:*




[GenerateReportJson](#GenerateReportJson)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### downloadReport





```swift
platformClient.finance.downloadReport(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DownloadReport | yes | Request body |




*Returned Response:*




[DownloadReportList](#DownloadReportList)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getData





```swift
platformClient.finance.getData(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetEngineRequest | yes | Request body |




*Returned Response:*




[GetEngineResponse](#GetEngineResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getReason





```swift
platformClient.finance.getReason(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetReasonRequest | yes | Request body |




*Returned Response:*




[GetReasonResponse](#GetReasonResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getReportList





```swift
platformClient.finance.getReportList(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetReportListRequest | yes | Request body |




*Returned Response:*




[GetEngineResponse](#GetEngineResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getAffiliate





```swift
platformClient.finance.getAffiliate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetAffiliate | yes | Request body |




*Returned Response:*




[GetAffiliateResponse](#GetAffiliateResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### downloadCreditDebitNote





```swift
platformClient.finance.downloadCreditDebitNote(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DownloadCreditDebitNoteRequest | yes | Request body |




*Returned Response:*




[DownloadCreditDebitNoteResponse](#DownloadCreditDebitNoteResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### paymentProcess





```swift
platformClient.finance.paymentProcess(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentProcessRequest | yes | Request body |




*Returned Response:*




[PaymentProcessResponse](#PaymentProcessResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getInvoiceType





```swift
platformClient.finance.getInvoiceType(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetInvoiceListRequest | yes | Request body |




*Returned Response:*




[GetInvoiceListResponse](#GetInvoiceListResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "summary": "Example Response",
  "value": {
    "success": true,
    "invoice_type_list": {
      "text": "Seller Invoice",
      "value": "1ec78cf4-2d25-4bba-9d42-6515dfaf1751"
    },
    "payment_status_list": {
      "text": "Unpaid",
      "value": "unaid"
    }
  }
}
```
</details>









---


#### invoiceListing





```swift
platformClient.finance.invoiceListing(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InvoiceListingRequest | yes | Request body |




*Returned Response:*




[InvoiceListingResponse](#InvoiceListingResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "summary": "Example Response",
  "value": {
    "items": {
      "company": "(2)Example Company 2",
      "invoice_number": "INV-002",
      "invoice_type": "Example Type",
      "invoice_date": "05-06-23",
      "period": "02-05-23 - 05-05-23",
      "amount": 200,
      "status": "PAID",
      "due_date": "07-05-23",
      "is_downloadable": true,
      "invoice_id": 67890
    },
    "unpaid_invoice_data": {
      "total_unpaid_amount": 500,
      "total_unpaid_invoice_count": 5,
      "currency": "INR",
      "item_count": 10
    },
    "page": {
      "page_number": 1,
      "page_size": 10,
      "total_pages": 2
    }
  }
}
```
</details>









---


#### invoicePDF





```swift
platformClient.finance.invoicePDF(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InvoicePdfRequest | yes | Request body |




*Returned Response:*




[InvoicePdfResponse](#InvoicePdfResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "summary": "Example Response",
  "value": {
    "success": true,
    "data": [
      "example1.pdf",
      "example2.pdf"
    ],
    "error": [
      "invoice_no1",
      "invoice_no2"
    ]
  }
}
```
</details>









---



### Schemas

 
 
 #### [GenerateReportMeta](#GenerateReportMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | String? |  yes  |  |
 | company | String? |  yes  |  |
 | channel | String? |  yes  |  |

---


 
 
 #### [GenerateReportFilters](#GenerateReportFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [String]? |  yes  |  |
 | company | [String]? |  yes  |  |
 | channel | [String]? |  yes  |  |

---


 
 
 #### [GenerateReportPlatform](#GenerateReportPlatform)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startDate | String? |  yes  |  |
 | reportId | String? |  yes  |  |
 | meta | [GenerateReportMeta](#GenerateReportMeta)? |  yes  |  |
 | endDate | String? |  yes  |  |
 | filters | [GenerateReportFilters](#GenerateReportFilters)? |  yes  |  |

---


 
 
 #### [GenerateReportRequest](#GenerateReportRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GenerateReportPlatform](#GenerateReportPlatform)? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasNext | Bool? |  yes  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | itemTotal | Int? |  yes  |  |

---


 
 
 #### [GenerateReportJson](#GenerateReportJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCount | Int? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | startDate | String? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | endDate | String? |  yes  |  |
 | items | [[String]]? |  yes  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [DownloadReport](#DownloadReport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | Int? |  yes  |  |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | pagesize | Int? |  yes  |  |

---


 
 
 #### [DownloadReportItems](#DownloadReportItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startDate | String? |  yes  |  |
 | typeOfRequest | String? |  yes  |  |
 | reportId | String? |  yes  |  |
 | meta | [GenerateReportMeta](#GenerateReportMeta)? |  yes  |  |
 | endDate | String? |  yes  |  |
 | filters | [GenerateReportFilters](#GenerateReportFilters)? |  yes  |  |

---


 
 
 #### [DownloadReportList](#DownloadReportList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | itemCount | Int? |  yes  |  |
 | items | [[DownloadReportItems](#DownloadReportItems)]? |  yes  |  |

---


 
 
 #### [GetEngineFilters](#GetEngineFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configField | String? |  yes  |  |

---


 
 
 #### [GetEngineData](#GetEngineData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [GetEngineFilters](#GetEngineFilters)? |  yes  |  |
 | project | [String]? |  yes  |  |
 | tableName | String? |  yes  |  |

---


 
 
 #### [GetEngineRequest](#GetEngineRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GetEngineData](#GetEngineData)? |  yes  |  |

---


 
 
 #### [GetEngineResponse](#GetEngineResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | itemCount | Int? |  yes  |  |
 | items | [[String: Any]]? |  yes  |  |

---


 
 
 #### [GetReason](#GetReason)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonType | String? |  yes  |  |

---


 
 
 #### [GetReasonRequest](#GetReasonRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GetReason](#GetReason)? |  yes  |  |

---


 
 
 #### [GetDocs](#GetDocs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | docs | [[String: Any]]? |  yes  |  |
 | items | [[String: Any]]? |  yes  |  |

---


 
 
 #### [GetReasonResponse](#GetReasonResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [GetDocs](#GetDocs)? |  yes  |  |

---


 
 
 #### [GetReportListData](#GetReportListData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | listingEnabled | Bool? |  yes  |  |
 | roleName | String? |  yes  |  |

---


 
 
 #### [GetReportListRequest](#GetReportListRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GetReportListData](#GetReportListData)? |  yes  |  |

---


 
 
 #### [GetAffiliate](#GetAffiliate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [GetAffiliateResponse](#GetAffiliateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | docs | [[String: Any]]? |  yes  |  |

---


 
 
 #### [DownloadCreditDebitNote](#DownloadCreditDebitNote)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | noteId | [String]? |  yes  |  |

---


 
 
 #### [DownloadCreditDebitNoteRequest](#DownloadCreditDebitNoteRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [DownloadCreditDebitNote](#DownloadCreditDebitNote)? |  yes  |  |

---


 
 
 #### [DownloadCreditDebitNoteResponseData](#DownloadCreditDebitNoteResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | pdfS3Url | String? |  yes  |  |

---


 
 
 #### [DownloadCreditDebitNoteResponse](#DownloadCreditDebitNoteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [[DownloadCreditDebitNoteResponseData](#DownloadCreditDebitNoteResponseData)]? |  yes  |  |

---


 
 
 #### [PaymentProcessPayload](#PaymentProcessPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerId | String? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |
 | transactionType | String? |  yes  |  |
 | sourceReference | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | amount | String? |  yes  |  |
 | totalAmount | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [PaymentProcessRequest](#PaymentProcessRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [PaymentProcessPayload](#PaymentProcessPayload)? |  yes  |  |

---


 
 
 #### [PaymentProcessResponse](#PaymentProcessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | transactionId | String? |  yes  |  |
 | redirectUrl | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | code | Int? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [GetInvoiceListPayloadData](#GetInvoiceListPayloadData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |

---


 
 
 #### [GetInvoiceListRequest](#GetInvoiceListRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GetInvoiceListPayloadData](#GetInvoiceListPayloadData)? |  yes  |  |

---


 
 
 #### [GetInvoiceListResponse](#GetInvoiceListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | paymentStatusList | [[String: Any]]? |  yes  |  |
 | invoiceTypeList | [[String: Any]]? |  yes  |  |

---


 
 
 #### [InoviceListingPayloadDataFilters](#InoviceListingPayloadDataFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | [String]? |  yes  |  |
 | paymentStatus | [String]? |  yes  |  |
 | invoiceType | [String]? |  yes  |  |

---


 
 
 #### [InvoiceListingPayloadData](#InvoiceListingPayloadData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageSize | Int? |  yes  |  |
 | page | Int? |  yes  |  |
 | startDate | String? |  yes  |  |
 | search | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | filters | [InoviceListingPayloadDataFilters](#InoviceListingPayloadDataFilters)? |  yes  |  |

---


 
 
 #### [InvoiceListingRequest](#InvoiceListingRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [InvoiceListingPayloadData](#InvoiceListingPayloadData)? |  yes  |  |

---


 
 
 #### [UnpaidInvoiceDataItems](#UnpaidInvoiceDataItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalUnpaidInvoiceCount | Int? |  yes  |  |
 | totalUnpaidAmount | Double? |  yes  |  |
 | currency | String? |  yes  |  |

---


 
 
 #### [InvoiceListingResponseItems](#InvoiceListingResponseItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | period | String? |  yes  |  |
 | status | String? |  yes  |  |
 | invoiceDate | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | invoiceType | String? |  yes  |  |
 | amount | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | isDownloadable | Bool? |  yes  |  |
 | company | String? |  yes  |  |

---


 
 
 #### [InvoiceListingResponse](#InvoiceListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCount | Int? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | unpaidInvoiceData | [UnpaidInvoiceDataItems](#UnpaidInvoiceDataItems)? |  yes  |  |
 | items | [[InvoiceListingResponseItems](#InvoiceListingResponseItems)]? |  yes  |  |

---


 
 
 #### [InvoicePdfPayloadData](#InvoicePdfPayloadData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoiceNumber | [String]? |  yes  |  |

---


 
 
 #### [InvoicePdfRequest](#InvoicePdfRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [InvoicePdfPayloadData](#InvoicePdfPayloadData)? |  yes  |  |

---


 
 
 #### [InvoicePdfResponse](#InvoicePdfResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [String]? |  yes  |  |
 | error | [String]? |  yes  |  |

---



