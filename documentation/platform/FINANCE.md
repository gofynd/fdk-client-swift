



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
* [creditlineDataplatform](#creditlinedataplatform)
* [isCreditlinePlatform](#iscreditlineplatform)
* [invoiceType](#invoicetype)
* [invoiceListing](#invoicelisting)
* [invoicePDF](#invoicepdf)
* [asCnRefund](#ascnrefund)
* [createSellerCreditNoteConfig](#createsellercreditnoteconfig)
* [deleteConfig](#deleteconfig)
* [channelDisplayName](#channeldisplayname)
* [getPdfUrlView](#getpdfurlview)
* [creditNoteDetails](#creditnotedetails)
* [getCustomerCreditBalance](#getcustomercreditbalance)
* [getCnConfig](#getcnconfig)
* [generateReportCustomerCn](#generatereportcustomercn)
* [downloadReportCustomerCn](#downloadreportcustomercn)
* [getReportingFilters](#getreportingfilters)



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


#### creditlineDataplatform





```swift
platformClient.finance.creditlineDataplatform(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreditlineDataPlatformRequest | yes | Request body |




*Returned Response:*




[CreditlineDataPlatformResponse](#CreditlineDataPlatformResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "summary": "Example Response",
  "value": {
    "headers": [
      "Date",
      "Purpose",
      "Transaction Type",
      "Amount",
      "Credit Balance",
      "MR Balance"
    ],
    "items": [
      {
        "table_data": [
          {
            "date": "2023-06-03",
            "purpose": "Variable Commission Adjustment",
            "transaction_type": "Credit",
            "amount": "₹5.00",
            "credit_balance": "₹3080.00",
            "mr_balance": "₹1955.00"
          }
        ]
      }
    ],
    "creditline": {
      "total_amount": 3010,
      "used_amount": -70,
      "balance": 3080
    },
    "minimum_retainership": {
      "total_amount": 2000,
      "used_amount": 45,
      "balance": 1955
    },
    "show_mr": true,
    "item_count": 46,
    "page": {
      "type": "number",
      "size": 10,
      "current": 1,
      "has_next": true,
      "item_count": 46
    }
  }
}
```
</details>









---


#### isCreditlinePlatform





```swift
platformClient.finance.isCreditlinePlatform(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | IsCreditlinePlatformRequest | yes | Request body |




*Returned Response:*




[IsCreditlinePlatformResponse](#IsCreditlinePlatformResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "code": 200,
  "is_creditline_opted": true
}
```
</details>









---


#### invoiceType





```swift
platformClient.finance.invoiceType(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InvoiceTypeRequest | yes | Request body |




*Returned Response:*




[InvoiceTypeResponse](#InvoiceTypeResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "summary": "Example Response",
  "value": {
    "success": true,
    "invoice_type_list": [
      {
        "text": "Creditline Invoice",
        "value": "1zz78cf4-2d25-4bba-9d42-6515dfaf1751"
      },
      {
        "text": "Seller Invoice",
        "value": "1ec78cf4-2d25-4bba-9d42-6515dfaf1751"
      }
    ],
    "payment_status_list": [
      {
        "text": "Paid",
        "value": "paid"
      },
      {
        "text": "Unpaid",
        "value": "unaid"
      }
    ]
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
    "items": [
      {
        "company": "(1)Example Company 1",
        "invoice_number": "INV-001",
        "invoice_type": "Example Type",
        "invoice_date": "05-05-23",
        "period": "02-05-23 - 05-05-23",
        "amount": 100,
        "status": "UNPAID",
        "due_date": "07-05-23",
        "is_downloadable": false,
        "invoice_id": 12345
      },
      {
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
      }
    ],
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


#### asCnRefund





```swift
platformClient.finance.asCnRefund(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AsCnRefundRequest | yes | Request body |




*Returned Response:*




[AsCnRefundResponse](#AsCnRefundResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createSellerCreditNoteConfig





```swift
platformClient.finance.createSellerCreditNoteConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateSellerCreditNoteConfigRequest | yes | Request body |




*Returned Response:*




[CreateSellerCreditNoteConfigResponse](#CreateSellerCreditNoteConfigResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### deleteConfig





```swift
platformClient.finance.deleteConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DeleteConfigRequest | yes | Request body |




*Returned Response:*




[DeleteConfigResponse](#DeleteConfigResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### channelDisplayName





```swift
platformClient.finance.channelDisplayName(filterKey: filterKey) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| filterKey | String | yes | gives display name for channel. |  





*Returned Response:*




[ChannelDisplayNameResponse](#ChannelDisplayNameResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getPdfUrlView





```swift
platformClient.finance.getPdfUrlView(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetPdfUrlViewRequest | yes | Request body |




*Returned Response:*




[GetPdfUrlViewResponse](#GetPdfUrlViewResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### creditNoteDetails





```swift
platformClient.finance.creditNoteDetails(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreditNoteDetailsRequest | yes | Request body |




*Returned Response:*




[CreditNoteDetailsResponse](#CreditNoteDetailsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCustomerCreditBalance





```swift
platformClient.finance.getCustomerCreditBalance(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetCustomerCreditBalanceRequest | yes | Request body |




*Returned Response:*




[GetCustomerCreditBalanceResponse](#GetCustomerCreditBalanceResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCnConfig





```swift
platformClient.finance.getCnConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetCnConfigRequest | yes | Request body |




*Returned Response:*




[GetCnConfigResponse](#GetCnConfigResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### generateReportCustomerCn





```swift
platformClient.finance.generateReportCustomerCn(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GenerateReportCustomerCnRequest | yes | Request body |




*Returned Response:*




[GenerateReportCustomerCnResponse](#GenerateReportCustomerCnResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### downloadReportCustomerCn





```swift
platformClient.finance.downloadReportCustomerCn(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DownloadReportCustomerCnRequest | yes | Request body |




*Returned Response:*




[DownloadReportCustomerCnResponse](#DownloadReportCustomerCnResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getReportingFilters





```swift
platformClient.finance.getReportingFilters(filterKey: filterKey, affiliateId: affiliateId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| filterKey | String | yes | filter type. |   
| affiliateId | String? | no | affiliate id. |  





*Returned Response:*




[GetReportingFiltersResponse](#GetReportingFiltersResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [GenerateReportFilters](#GenerateReportFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [String]? |  yes  |  |
 | channel | [String]? |  yes  |  |
 | company | [String]? |  yes  |  |

---


 
 
 #### [GenerateReportMeta](#GenerateReportMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | String? |  yes  |  |
 | channel | String? |  yes  |  |
 | company | String? |  yes  |  |

---


 
 
 #### [GenerateReportPlatform](#GenerateReportPlatform)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [GenerateReportFilters](#GenerateReportFilters)? |  yes  |  |
 | endDate | String? |  yes  |  |
 | meta | [GenerateReportMeta](#GenerateReportMeta)? |  yes  |  |
 | startDate | String? |  yes  |  |
 | reportId | String? |  yes  |  |

---


 
 
 #### [GenerateReportRequest](#GenerateReportRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GenerateReportPlatform](#GenerateReportPlatform)? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | size | Int? |  yes  |  |

---


 
 
 #### [GenerateReportJson](#GenerateReportJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String]]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | endDate | String? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | startDate | String? |  yes  |  |
 | itemCount | Int? |  yes  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reason | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [DownloadReport](#DownloadReport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | endDate | String? |  yes  |  |
 | page | Int? |  yes  |  |
 | pagesize | Int? |  yes  |  |
 | startDate | String? |  yes  |  |

---


 
 
 #### [DownloadReportItems](#DownloadReportItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | typeOfRequest | String? |  yes  |  |
 | filters | [GenerateReportFilters](#GenerateReportFilters)? |  yes  |  |
 | endDate | String? |  yes  |  |
 | meta | [GenerateReportMeta](#GenerateReportMeta)? |  yes  |  |
 | startDate | String? |  yes  |  |
 | reportId | String? |  yes  |  |

---


 
 
 #### [DownloadReportList](#DownloadReportList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCount | Int? |  yes  |  |
 | items | [[DownloadReportItems](#DownloadReportItems)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

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
 | itemCount | Int? |  yes  |  |
 | items | [[String: Any]]? |  yes  |  |
 | success | Bool? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

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
 | items | [[String: Any]]? |  yes  |  |
 | docs | [[String: Any]]? |  yes  |  |

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
 | roleName | String? |  yes  |  |
 | listingEnabled | Bool? |  yes  |  |

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
 | docs | [[String: Any]]? |  yes  |  |
 | success | Bool? |  yes  |  |

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
 | transactionType | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |
 | amount | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | sourceReference | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | totalAmount | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | sellerId | String? |  yes  |  |

---


 
 
 #### [PaymentProcessRequest](#PaymentProcessRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [PaymentProcessPayload](#PaymentProcessPayload)? |  yes  |  |

---


 
 
 #### [PaymentProcessResponse](#PaymentProcessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | transactionId | String? |  yes  |  |
 | redirectUrl | String? |  yes  |  |
 | message | String? |  yes  |  |
 | code | Int? |  yes  |  |

---


 
 
 #### [CreditlineDataPlatformPayload](#CreditlineDataPlatformPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | Int? |  yes  |  |
 | endEnd | String? |  yes  |  |
 | pagesize | Int? |  yes  |  |
 | sellerId | String? |  yes  |  |
 | startEnd | String? |  yes  |  |

---


 
 
 #### [CreditlineDataPlatformRequest](#CreditlineDataPlatformRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CreditlineDataPlatformPayload](#CreditlineDataPlatformPayload)? |  yes  |  |

---


 
 
 #### [CreditlineDataPlatformResponse](#CreditlineDataPlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]]? |  yes  |  |
 | page | [String: Any]? |  yes  |  |
 | itemCount | Int? |  yes  |  |
 | message | String? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | code | Int? |  yes  |  |
 | showMr | Bool? |  yes  |  |

---


 
 
 #### [IsCreditlinePayload](#IsCreditlinePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerId | String? |  yes  |  |

---


 
 
 #### [IsCreditlinePlatformRequest](#IsCreditlinePlatformRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [IsCreditlinePayload](#IsCreditlinePayload)? |  yes  |  |

---


 
 
 #### [IsCreditlinePlatformResponse](#IsCreditlinePlatformResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCreditlineOpted | Bool? |  yes  |  |
 | code | Int? |  yes  |  |

---


 
 
 #### [InvoiceTypePayloadData](#InvoiceTypePayloadData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |

---


 
 
 #### [InvoiceTypeRequest](#InvoiceTypeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [InvoiceTypePayloadData](#InvoiceTypePayloadData)? |  yes  |  |

---


 
 
 #### [InvoiceTypeResponseItems](#InvoiceTypeResponseItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | text | String? |  yes  |  |

---


 
 
 #### [InvoiceTypeResponse](#InvoiceTypeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoiceTypeList | [[InvoiceTypeResponseItems](#InvoiceTypeResponseItems)]? |  yes  |  |
 | paymentStatusList | [[InvoiceTypeResponseItems](#InvoiceTypeResponseItems)]? |  yes  |  |
 | success | Bool? |  yes  |  |

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
 | page | Int? |  yes  |  |
 | pageSize | Int? |  yes  |  |
 | filters | [InoviceListingPayloadDataFilters](#InoviceListingPayloadDataFilters)? |  yes  |  |
 | endDate | String? |  yes  |  |
 | startDate | String? |  yes  |  |
 | search | String? |  yes  |  |

---


 
 
 #### [InvoiceListingRequest](#InvoiceListingRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [InvoiceListingPayloadData](#InvoiceListingPayloadData)? |  yes  |  |

---


 
 
 #### [UnpaidInvoiceDataItems](#UnpaidInvoiceDataItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalUnpaidAmount | Double? |  yes  |  |
 | totalUnpaidInvoiceCount | Int? |  yes  |  |
 | currency | String? |  yes  |  |

---


 
 
 #### [InvoiceListingResponseItems](#InvoiceListingResponseItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |
 | invoiceType | String? |  yes  |  |
 | isDownloadable | Bool? |  yes  |  |
 | amount | String? |  yes  |  |
 | invoiceDate | String? |  yes  |  |
 | period | String? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | company | String? |  yes  |  |

---


 
 
 #### [InvoiceListingResponse](#InvoiceListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCount | Int? |  yes  |  |
 | unpaidInvoiceData | [UnpaidInvoiceDataItems](#UnpaidInvoiceDataItems)? |  yes  |  |
 | items | [[InvoiceListingResponseItems](#InvoiceListingResponseItems)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

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
 | error | [String]? |  yes  |  |
 | success | Bool? |  yes  |  |
 | data | [String]? |  yes  |  |

---


 
 
 #### [AsCnRefundData](#AsCnRefundData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | toggleEditRequired | Bool? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | sellerId | Int? |  yes  |  |

---


 
 
 #### [AsCnRefundRequest](#AsCnRefundRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [AsCnRefundData](#AsCnRefundData)? |  yes  |  |

---


 
 
 #### [AsCnRefundResponseData](#AsCnRefundResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isFirstTimeUser | Bool? |  yes  |  |

---


 
 
 #### [AsCnRefundResponse](#AsCnRefundResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [AsCnRefundResponseData](#AsCnRefundResponseData)? |  yes  |  |

---


 
 
 #### [CreditNoteConfigNotificationEvents](#CreditNoteConfigNotificationEvents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expirationReminderToCustomer | Int? |  yes  |  |

---


 
 
 #### [CreateSellerCreditNoteConfig](#CreateSellerCreditNoteConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderingChannel | [String]? |  yes  |  |
 | isCnAsRefundMethod | Bool? |  yes  |  |
 | validity | Int? |  yes  |  |
 | sourceChannel | [String]? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | notificationEvents | [CreditNoteConfigNotificationEvents](#CreditNoteConfigNotificationEvents)? |  yes  |  |
 | salesChannelName | String? |  yes  |  |
 | slugValues | [String]? |  yes  |  |
 | currencyType | String? |  yes  |  |
 | sellerId | Int? |  yes  |  |

---


 
 
 #### [CreateSellerCreditNoteConfigRequest](#CreateSellerCreditNoteConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CreateSellerCreditNoteConfig](#CreateSellerCreditNoteConfig)? |  yes  |  |

---


 
 
 #### [CreateSellerCreditNoteConfigResponse](#CreateSellerCreditNoteConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [DeleteConfig](#DeleteConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | slugValues | [String]? |  yes  |  |
 | sellerId | Int? |  yes  |  |

---


 
 
 #### [DeleteConfigRequest](#DeleteConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [DeleteConfig](#DeleteConfig)? |  yes  |  |

---


 
 
 #### [DeleteConfigResponse](#DeleteConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ChannelDisplayName](#ChannelDisplayName)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | platformPos | String? |  yes  |  |

---


 
 
 #### [ChannelDisplayNameResponse](#ChannelDisplayNameResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [ChannelDisplayName](#ChannelDisplayName)? |  yes  |  |

---


 
 
 #### [CnReferenceNumber](#CnReferenceNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cnReferenceNumber | String? |  yes  |  |

---


 
 
 #### [GetPdfUrlViewRequest](#GetPdfUrlViewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CnReferenceNumber](#CnReferenceNumber)? |  yes  |  |

---


 
 
 #### [GetPdfUrlViewResponseData](#GetPdfUrlViewResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cnReferenceNumber | String? |  yes  |  |
 | s3PdfLink | String? |  yes  |  |

---


 
 
 #### [GetPdfUrlViewResponse](#GetPdfUrlViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [GetPdfUrlViewResponseData](#GetPdfUrlViewResponseData)? |  yes  |  |

---


 
 
 #### [CreditNoteDetailsRequest](#CreditNoteDetailsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CnReferenceNumber](#CnReferenceNumber)? |  yes  |  |

---


 
 
 #### [CnDetails](#CnDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |
 | orderingChannel | String? |  yes  |  |
 | expiryDate | String? |  yes  |  |
 | staffId | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | dateIssued | String? |  yes  |  |
 | storeId | String? |  yes  |  |
 | channelOfIssuance | String? |  yes  |  |

---


 
 
 #### [RedemptionDetails](#RedemptionDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |
 | orderingChannel | String? |  yes  |  |
 | staffId | String? |  yes  |  |
 | amountDebited | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | storeId | String? |  yes  |  |

---


 
 
 #### [CreditNoteDetails](#CreditNoteDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cnDetails | [[CnDetails](#CnDetails)]? |  yes  |  |
 | redemptionDetails | [[RedemptionDetails](#RedemptionDetails)]? |  yes  |  |
 | customerMobileNumber | String? |  yes  |  |
 | cnReferenceNumber | String? |  yes  |  |
 | cnAmount | Int? |  yes  |  |
 | cnStatus | String? |  yes  |  |
 | availableCnBalance | Int? |  yes  |  |
 | remainingCnAmount | Int? |  yes  |  |

---


 
 
 #### [CreditNoteDetailsResponse](#CreditNoteDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [CreditNoteDetails](#CreditNoteDetails)? |  yes  |  |

---


 
 
 #### [GetCustomerCreditBalance](#GetCustomerCreditBalance)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerMobileNumber | String? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | sellerId | Int? |  yes  |  |

---


 
 
 #### [GetCustomerCreditBalanceRequest](#GetCustomerCreditBalanceRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GetCustomerCreditBalance](#GetCustomerCreditBalance)? |  yes  |  |

---


 
 
 #### [GetCustomerCreditBalanceResponseData](#GetCustomerCreditBalanceResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerMobileNumber | String? |  yes  |  |
 | totalCreditedBalance | Int? |  yes  |  |

---


 
 
 #### [GetCustomerCreditBalanceResponse](#GetCustomerCreditBalanceResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [GetCustomerCreditBalanceResponseData](#GetCustomerCreditBalanceResponseData)? |  yes  |  |

---


 
 
 #### [GetCnConfigRequest](#GetCnConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [DeleteConfig](#DeleteConfig)? |  yes  |  |

---


 
 
 #### [GetCnConfigResponseMeta](#GetCnConfigResponseMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reason | String? |  yes  |  |
 | sourceChannel | [String]? |  yes  |  |

---


 
 
 #### [GetCnConfigResponseData](#GetCnConfigResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCnAsRefundMethod | Bool? |  yes  |  |
 | validity | Int? |  yes  |  |
 | notificationEvents | [CreditNoteConfigNotificationEvents](#CreditNoteConfigNotificationEvents)? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | meta | [GetCnConfigResponseMeta](#GetCnConfigResponseMeta)? |  yes  |  |
 | currencyType | String? |  yes  |  |
 | redemptionOrderingChannel | [String]? |  yes  |  |
 | sellerId | Int? |  yes  |  |

---


 
 
 #### [GetCnConfigResponse](#GetCnConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [GetCnConfigResponseData](#GetCnConfigResponseData)? |  yes  |  |

---


 
 
 #### [CnGenerateReportFilters](#CnGenerateReportFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderingChannel | [String]? |  yes  |  |
 | staffId | [String]? |  yes  |  |
 | utilisation | [String]? |  yes  |  |
 | typesOfTransaction | [String]? |  yes  |  |
 | storeId | [Int]? |  yes  |  |
 | channelOfIssuance | [String]? |  yes  |  |

---


 
 
 #### [CnGenerateReport](#CnGenerateReport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | Int? |  yes  |  |
 | pagesize | Int? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | filters | [CnGenerateReportFilters](#CnGenerateReportFilters)? |  yes  |  |
 | endDate | String? |  yes  |  |
 | searchType | String? |  yes  |  |
 | meta | [GenerateReportFilters](#GenerateReportFilters)? |  yes  |  |
 | startDate | String? |  yes  |  |
 | reportId | String? |  yes  |  |
 | search | String? |  yes  |  |

---


 
 
 #### [GenerateReportCustomerCnRequest](#GenerateReportCustomerCnRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CnGenerateReport](#CnGenerateReport)? |  yes  |  |

---


 
 
 #### [CnGenerateReportItems](#CnGenerateReportItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |
 | expiryDate | String? |  yes  |  |
 | creditNoteNumber | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | dateIssued | String? |  yes  |  |
 | totalAmount | Int? |  yes  |  |

---


 
 
 #### [GenerateReportCustomerCnResponse](#GenerateReportCustomerCnResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CnGenerateReportItems](#CnGenerateReportItems)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | allowedFilters | [String]? |  yes  |  |
 | endDate | String? |  yes  |  |
 | rowHeaderDisplayOrder | [String: Any]? |  yes  |  |
 | primaryHeaders | [String]? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | startDate | String? |  yes  |  |
 | itemCount | Int? |  yes  |  |

---


 
 
 #### [CnDownloadReport](#CnDownloadReport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [String]? |  yes  |  |
 | page | Int? |  yes  |  |
 | pagesize | Int? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | searchType | String? |  yes  |  |
 | startDate | String? |  yes  |  |
 | search | String? |  yes  |  |

---


 
 
 #### [DownloadReportCustomerCnRequest](#DownloadReportCustomerCnRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CnDownloadReport](#CnDownloadReport)? |  yes  |  |

---


 
 
 #### [DownloadReportResponseData](#DownloadReportResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reportConfigId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | downloadLink | String? |  yes  |  |
 | requestedBy | String? |  yes  |  |
 | filters | [String: Any]? |  yes  |  |
 | endDate | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | requestDict | [String: Any]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | startDate | String? |  yes  |  |
 | reportName | String? |  yes  |  |
 | msg | String? |  yes  |  |
 | fullName | String? |  yes  |  |

---


 
 
 #### [DownloadReportCustomerCnResponse](#DownloadReportCustomerCnResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[DownloadReportResponseData](#DownloadReportResponseData)]? |  yes  |  |

---


 
 
 #### [GetReportingFilters](#GetReportingFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |
 | options | [[String: Any]]? |  yes  |  |
 | text | String? |  yes  |  |

---


 
 
 #### [GetReportingNestedFilters](#GetReportingNestedFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | placeholderText | String? |  yes  |  |
 | required | Bool? |  yes  |  |
 | options | [[String: Any]]? |  yes  |  |
 | text | String? |  yes  |  |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [GetReportingFiltersResponse](#GetReportingFiltersResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | search | [GetReportingFilters](#GetReportingFilters)? |  yes  |  |
 | status | [GetReportingFilters](#GetReportingFilters)? |  yes  |  |
 | filters | [[GetReportingNestedFilters](#GetReportingNestedFilters)]? |  yes  |  |

---



