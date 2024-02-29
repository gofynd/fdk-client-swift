



##### [Back to Platform docs](./README.md)

## Finance Methods
Handles all finance related activities

Report Generation & Download
* [generateReport](#generatereport)
* [downloadReport](#downloadreport)
* [getData](#getdata)
* [getReportList](#getreportlist)
* [getAffiliate](#getaffiliate)
* [downloadCreditDebitNote](#downloadcreditdebitnote)
* [invoicePDF](#invoicepdf)
* [getPdfUrlView](#getpdfurlview)
* [generateReportCustomerCn](#generatereportcustomercn)
* [downloadReportCustomerCn](#downloadreportcustomercn)
* [getReportingFilters](#getreportingfilters)


Reason and Configuration Management
* [getReason](#getreason)


Payment and Credit Note Management
* [paymentProcess](#paymentprocess)
* [creditlineDataplatform](#creditlinedataplatform)
* [isCreditlinePlatform](#iscreditlineplatform)
* [createSellerCreditNoteConfig](#createsellercreditnoteconfig)
* [channelDisplayName](#channeldisplayname)
* [getCnConfig](#getcnconfig)


Invoice and Credit Note Management
* [invoiceType](#invoicetype)
* [isCnRefundMethod](#iscnrefundmethod)
* [creditNoteDetails](#creditnotedetails)
* [getCustomerCreditBalance](#getcustomercreditbalance)


Default
* [invoiceListing](#invoicelisting)
* [deleteConfig](#deleteconfig)
* [invoicePaymentDetails](#invoicepaymentdetails)
* [invoiceActivityLogs](#invoiceactivitylogs)
* [unlockCreditNote](#unlockcreditnote)




## Methods with example and description



#### generateReport
Generate financial report.




```swift
platformClient.finance.generateReport(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GenerateReportRequest | yes | Request body |


Create a financial report with relevant data.

*Returned Response:*




[GenerateReportJson](#GenerateReportJson)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "start_date": "2023-07-26",
    "end_date": "2023-07-31",
    "headers": [
      "Company Id",
      "Company",
      "Brand",
      "Ordering Channel",
      "Bag ID",
      "Sale Type",
      "Recon Date",
      "Settlement Date",
      "Payout Date",
      "Finance Status",
      "ESP",
      "Value Of Good",
      "Transfer Price",
      "Brand calculated Amount",
      "Commission %",
      "Flat Delivery Fee",
      "Flat Cod Fee",
      "Commission",
      "Processing Fee",
      "Closing Fee",
      "Packaging Fee",
      "Cancellation Fee",
      "Return charges",
      "Net Charges",
      "Total GST",
      "Total Charges",
      "TDS",
      "TCS",
      "Net Payout"
    ],
    "items": [
      [
        "123",
        "Supply RTI",
        "Puma",
        "ecomm",
        "1865",
        "sale",
        "28-07-2023",
        "01-08-2023",
        "28-07-2023",
        "reconciled",
        "12.00",
        "10.71",
        "0.00",
        "12.00",
        "15",
        "0.00",
        "0.00",
        "-1.80",
        "0.00",
        "0.00",
        "-0.48",
        null,
        "0.00",
        "-4.08",
        "-0.72",
        "-4.80",
        "0.00",
        "0.00",
        "7.20"
      ],
      [
        "2",
        "auto_company_120720232155193",
        "Dreamworks",
        "ecomm",
        "1708",
        "return",
        "28-07-2023",
        "01-08-2023",
        "29-07-2023",
        "reconciled",
        "-3356.00",
        "-3258.25",
        "0.00",
        "-3356.00",
        "5",
        "15.20",
        "0.00",
        "0.00",
        "0.00",
        "0.00",
        "0.00",
        null,
        "0.00",
        "0.00",
        "0.00",
        "0.00",
        "0.00",
        "0.00",
        "-3356.00"
      ],
      [
        "..."
      ]
    ],
    "primary_headers": [
      "Company Id",
      "Company",
      "Brand",
      "Ordering Channel",
      "Bag ID",
      "Sale Type",
      "Recon Date",
      "Settlement Date",
      "Payout Date",
      "Finance Status"
    ],
    "allowed_filters": [
      "brand",
      "channel",
      "company",
      "finance_status"
    ],
    "item_count": 35,
    "page": {
      "type": "number",
      "size": 10,
      "current": 1,
      "has_next": true,
      "item_count": 35
    }
  }
}
```
</details>









---


#### downloadReport
Download financial report.




```swift
platformClient.finance.downloadReport(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DownloadReport | yes | Request body |


Retrieve and save a financial report.

*Returned Response:*




[DownloadReportList](#DownloadReportList)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "request_dict": {},
      "report_config_id": "ff4cdb27-d674-4086-b982-1cdf9f17a5d7",
      "report_name": "settlement_report",
      "requested_by": "jayeshfansamkar_gofynd_com_17506",
      "full_name": "jayesh fansamkar",
      "display_name": "Settlement Report",
      "created_at": "2023-07-26 22:38:04",
      "filters": {
        "brand": [],
        "channel": [],
        "company": [
          "61"
        ]
      },
      "meta": {
        "brand": "",
        "channel": "",
        "company": "sumeetest",
        "job_id": "export_1690391284747"
      },
      "status": "In Process",
      "start_date": "2023-07-19",
      "end_date": "2023-07-26",
      "msg": null,
      "download_link": null
    }
  ],
  "item_count": 1,
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": true,
    "item_count": 1
  }
}
```
</details>









---


#### getData
Get financial data.




```swift
platformClient.finance.getData(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetEngineRequest | yes | Request body |


Retrieve financial data for analysis.

*Returned Response:*




[GetEngineResponse](#GetEngineResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "items": [
    {
      "id": "53f18a1b-cbce-44a9-b2e0-69a7f144611a",
      "name": "fynd_store",
      "display_name": "Fynd Store"
    },
    {
      "id": "881fd2bc-ba55-4706-9371-438c06399765",
      "name": "uniket",
      "display_name": "Uniket"
    },
    {
      "id": "9a7d8e1c-4669-4905-9046-2e9518ae2f4b",
      "name": "affiliate",
      "display_name": "Affiliate"
    },
    {
      "id": "a945f1b3-1723-4a06-b6d6-a36c9db1e801",
      "name": "ecomm",
      "display_name": "Ecomm"
    },
    {
      "id": "ba839e34-d4cd-40f1-986e-ef276bc949da",
      "name": "fynd",
      "display_name": "Fynd"
    },
    {
      "id": "c6b07060-2d95-4f51-a9f8-5cd0976209a2",
      "name": "marketplace",
      "display_name": "Market Place"
    }
  ],
  "item_count": 6,
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": true,
    "item_count": 6
  }
}
```
</details>









---


#### getReportList
Get report list.




```swift
platformClient.finance.getReportList(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetReportListRequest | yes | Request body |


Retrieve a list of available financial reports.

*Returned Response:*




[GetReportListResponse](#GetReportListResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "items": [
    {
      "id": "5565ed40-3265-40d8-9813-790efffa1091",
      "name": "Ledger Report",
      "description": "Ledger report",
      "allowed_filters": [
        "brand",
        "channel",
        "company",
        "finance_status"
      ],
      "config_meta": {},
      "report_type": "csv",
      "display_date": null
    },
    {
      "id": "18161a3e-05ff-4e18-851b-d462225de333",
      "name": "Lost Report",
      "description": "It provides recon for bags on which claim is raised by seller",
      "allowed_filters": [
        "brand",
        "channel",
        "company"
      ],
      "config_meta": {},
      "report_type": "csv",
      "display_date": "Recon Date"
    },
    {
      "id": "ff4cdb27-d674-4086-b982-1cdf9f17a5d7",
      "name": "Settlement Report",
      "description": "It provides recon for bags on which commercials are applied by Fynd & which are settled or will be settled in future date",
      "allowed_filters": [
        "brand",
        "channel",
        "company"
      ],
      "config_meta": {
        "brand": "name",
        "channel": "text"
      },
      "report_type": "csv",
      "display_date": null
    },
    {
      "id": "e0d07dcb-74bb-425d-884d-d41426c005fa",
      "name": "Supporting Settlement Report V1",
      "description": "It provides bag's info related to order, company, application, item, store, value & customer which can be further use as reference in other reports",
      "allowed_filters": [
        "brand",
        "channel",
        "company"
      ],
      "config_meta": {
        "brand": "name",
        "channel": "text"
      },
      "report_type": "csv",
      "display_date": null
    }
  ],
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": true,
    "item_count": 4
  },
  "total_count": 4
}
```
</details>









---


#### getAffiliate
Get affiliate details.




```swift
platformClient.finance.getAffiliate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetAffiliate | yes | Request body |


Retrieve information about an affiliate.

*Returned Response:*




[GetAffiliateResponse](#GetAffiliateResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 11,
      "has_next": true
    },
    "docs": [
      {
        "website": {
          "enabled": true,
          "basepath": "/"
        },
        "cors": {
          "domains": []
        },
        "auth": {
          "enabled": true
        },
        "_id": "5dd3aaeca6df502428f9341d",
        "description": "fyndstore-dummy-test",
        "channel_type": "store",
        "cache_ttl": -1,
        "is_active": true,
        "company_id": 20,
        "name": "fyndstore-dummy-test",
        "owner": "5ee7770fae42c3c2687884b5",
        "token": "uXOl0kQ8",
        "meta": [],
        "__v": 2,
        "domains": [
          {
            "_id": "5ec2536328ac771a0af4fd90",
            "verified": true,
            "name": "fyndstore-dummy-test-mp0s.hostx1.de",
            "is_primary": true,
            "is_default": true,
            "is_shortlink": true
          }
        ],
        "internal": false,
        "redirections": [],
        "tokens": [
          {
            "token": "uXOl0kQ8",
            "created_at": "2019-11-19T08:42:20.438Z"
          }
        ],
        "created_at": "2019-11-19T08:42:20.438Z",
        "modified_at": "2021-04-02T18:31:41.610Z",
        "logo": {
          "secure_url": ""
        },
        "mobile_logo": {
          "secure_url": ""
        },
        "slug": "fyndstore-dummy-test-txh-37",
        "mode": "live",
        "status": "active",
        "domain": {
          "_id": "5ec2536328ac771a0af4fd90",
          "verified": true,
          "name": "fyndstore-dummy-test-mp0s.hostx1.de",
          "is_primary": true,
          "is_default": true,
          "is_shortlink": true
        },
        "id": "5dd3aaeca6df502428f9341d"
      }
    ],
    "success": true
  }
}
```
</details>









---


#### downloadCreditDebitNote
Download credit/debit note.




```swift
platformClient.finance.downloadCreditDebitNote(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DownloadCreditDebitNoteRequest | yes | Request body |


Retrieve and save credit/debit notes.

*Returned Response:*




[DownloadCreditDebitNoteResponse](#DownloadCreditDebitNoteResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": [
    {
      "id": "2b9c0729-3fa0-4565-8fcb-e822c87a95f9",
      "pdf_s3_url": "https://fynd-staging-assets-private.s3-accelerate.amazonaws.com/addsale/documents/daytrader/PDFs/123/07-2023/FS/FS-C27-A00003-24_123_07-2023.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJUADR2WMPQT6ZJ2Q%2F20230726%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20230726T153559Z&X-Amz-Expires=604800&X-Amz-Signature=f7793b1afb0983ea4b51d8ae2e5792df3319141422d13f81b0de5ce644ffd139&X-Amz-SignedHeaders=host"
    }
  ]
}
```
</details>









---


#### invoicePDF
Get invoice PDF.




```swift
platformClient.finance.invoicePDF(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InvoicePdfRequest | yes | Request body |


Retrieve the PDF version of an invoice.

*Returned Response:*




[InvoicePdfResponse](#InvoicePdfResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": [
    "https://fynd-staging-assets-private.s3-accelerate.amazonaws.com/addsale/documents/daytrader/PDFs/61/07-2023/FY/FY-I-A23004-FY24_61_07-2023.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJUADR2WMPQT6ZJ2Q%2F20230727%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20230727T190229Z&X-Amz-Expires=604800&X-Amz-Signature=b8642e8764ea320332b5ccb825fe7427872d8fe31b4a3cafafb6c89dd854d9c3&X-Amz-SignedHeaders=host"
  ],
  "error": []
}
```
</details>









---


#### getPdfUrlView
Get PDF URL view.




```swift
platformClient.finance.getPdfUrlView(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetPdfUrlViewRequest | yes | Request body |


Retrieve a URL to view a PDF document.

*Returned Response:*




[GetPdfUrlViewResponse](#GetPdfUrlViewResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "cn_reference_number": "6078OMR000006-23",
    "s3_pdf_link": "https://fynd-staging-assets-private.s3-accelerate.amazonaws.com/addsale/documents/invoice_a4/PDFs/16814985547851457553_invoice_a4.pdf?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJUADR2WMPQT6ZJ2Q%2F20230427%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20230427T044807Z&X-Amz-Expires=604800&X-Amz-Signature=970ffe76016175a309d8042cbdbd0eaab623cf4c3b6ac968604fe710df855504&X-Amz-SignedHeaders=host"
  }
}
```
</details>









---


#### generateReportCustomerCn
Generate customer credit note report.




```swift
platformClient.finance.generateReportCustomerCn(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GenerateReportCustomerCnRequest | yes | Request body |


Create a report specifically for customer credit notes.

*Returned Response:*




[GenerateReportCustomerCnResponse](#GenerateReportCustomerCnResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "start_date": "2023-04-26",
    "end_date": "2023-07-31",
    "headers": [
      "Credit Reference Number",
      "Amount",
      "Order ID",
      "Shipment ID",
      "Invoice No",
      "Date and Time of Issuance",
      "Date and Time of Expiry",
      "Status"
    ],
    "items": [],
    "primary_headers": [
      "Credit Reference Number",
      "Amount",
      "Order ID",
      "Shipment ID",
      "Invoice No",
      "Date and Time of Issuance",
      "Date and Time of Expiry"
    ],
    "allowed_filters": [
      "company",
      "staff_id",
      "store_id",
      "utilisation",
      "affiliate_id",
      "issuance_channel",
      "ordering_channel",
      "type_of_transaction"
    ],
    "row_header_display_order": {},
    "item_count": 0,
    "page": {
      "type": "number",
      "size": 10,
      "current": 1,
      "has_next": true,
      "item_count": 0
    }
  }
}
```
</details>









---


#### downloadReportCustomerCn
Download customer credit note report.




```swift
platformClient.finance.downloadReportCustomerCn(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DownloadReportCustomerCnRequest | yes | Request body |


Retrieve and save a report for customer credit notes.

*Returned Response:*




[DownloadReportCustomerCnResponse](#DownloadReportCustomerCnResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": [
    {
      "request_dict": {},
      "report_config_id": "0c09c7e7-0839-43c1-a2bf-76e08478fa99",
      "report_name": "credit note report",
      "requested_by": "app",
      "full_name": "app",
      "display_name": "Credit Note Report",
      "created_at": "2023-04-18 06:29:11",
      "filters": {},
      "meta": {},
      "status": "Completed",
      "start_date": "2023-04-21",
      "end_date": "2023-04-22",
      "msg": "",
      "download_link": "https://opex-test-bucket.s3.amazonaws.com/csv/credit%20note%20report_2023-04-21_2023-04-22_1681799353.csv.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJUADR2WMPQT6ZJ2Q%2F20230418%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20230418T062915Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=a92612927b39a630e894e9179b531d2af3954223a6dc16788275a52675c8a7bf"
    },
    {
      "request_dict": {},
      "report_config_id": "0c09c7e7-0839-43c1-a2bf-76e08478fa99",
      "report_name": "credit note report",
      "requested_by": "app",
      "full_name": "app",
      "display_name": "Credit Note Report",
      "created_at": "2023-04-18 06:15:39",
      "filters": {},
      "meta": {},
      "status": "In Process",
      "start_date": "2023-04-21",
      "end_date": "2023-04-22",
      "msg": "",
      "download_link": "https://opex-test-bucket.s3.amazonaws.com/csv/credit%20note%20report_2023-04-21_2023-04-22_1681799353.csv.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJUADR2WMPQT6ZJ2Q%2F20230418%2Fap-south-1%2Fs3%2Faws4_request&X-Amz-Date=20230418T062915Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=a92612927b39a630e894e9179b531d2af3954223a6dc16788275a52675c8a7bf"
    }
  ],
  "item_count": 1,
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": true,
    "item_count": 2
  }
}
```
</details>









---


#### getReportingFilters
Get reporting filters.




```swift
platformClient.finance.getReportingFilters(filterKey: filterKey, affiliateId: affiliateId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| filterKey | String | yes | filter type. |   
| affiliateId | String? | no | affiliate id. |  



Retrieve available filters for financial reporting.

*Returned Response:*




[GetReportingFiltersResponse](#GetReportingFiltersResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "search": {
    "text": "Search Types",
    "type": "single_select",
    "value": "search_type",
    "options": [
      {
        "text": "Order ID",
        "value": "order_id",
        "placeholder_text": "Search by Order ID"
      },
      {
        "text": "Invoice No.",
        "value": "invoice_number",
        "placeholder_text": "Search by Invoice Number"
      },
      {
        "text": "CN Reference No.",
        "value": "credit_note_number",
        "placeholder_text": "Search by CN Reference Number"
      },
      {
        "text": "Customer Mobile No.",
        "value": "customer_mobile_number",
        "placeholder_text": "Search by Customer Mobile Number"
      }
    ]
  },
  "status": {
    "text": "Status",
    "type": "multi_select",
    "value": "status",
    "options": [
      {
        "text": "Success",
        "value": "Success"
      },
      {
        "text": "Inprogress",
        "value": "In Process"
      },
      {
        "text": "Failed",
        "value": "Failed"
      },
      {
        "text": "Pending",
        "value": "Pending"
      }
    ]
  },
  "filters": [
    {
      "text": "Store ID",
      "type": "multi_select",
      "value": "store_id",
      "options": [],
      "placeholder_text": "Select Store ID"
    },
    {
      "text": "Ordering Channel",
      "type": "multi_select",
      "value": "ordering_channel",
      "options": [
        {
          "text": "POS",
          "value": "platform-pos"
        }
      ],
      "required": false,
      "placeholder_text": "Select Ordering Channel"
    },
    {
      "text": "Issuance Channel",
      "type": "multi_select",
      "value": "issuance_channel",
      "options": [
        {
          "text": "POS",
          "value": "platform-pos"
        }
      ],
      "required": false,
      "placeholder_text": "Select Issuance Channel"
    }
  ]
}
```
</details>









---




#### getReason
Get transaction reason.




```swift
platformClient.finance.getReason(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetReasonRequest | yes | Request body |


Retrieve the reason behind a transaction.

*Returned Response:*




[GetReasonResponse](#GetReasonResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "item_list": [
    {
      "id": "82d68950-5bdd-4a2b-a179-afc83454bde3",
      "name": "DS01",
      "display_name": "Bag Lost Reimbursement"
    },
    {
      "id": "8f90e0a1-c082-4c0e-b6e1-3640a4dfc69c",
      "name": "DS02",
      "display_name": "Wrong Product Reimbursement"
    }
  ],
  "item_count": 16,
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": true,
    "item_count": 16
  }
}
```
</details>









---




#### paymentProcess
Process payments.




```swift
platformClient.finance.paymentProcess(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PaymentProcessRequest | yes | Request body |


Initiate and manage payment processes.

*Returned Response:*




[PaymentProcessResponse](#PaymentProcessResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "code": 200,
  "message": "success",
  "transaction_id": "64c2386821617314bf24c3d2",
  "redirect_url": "https://platform.fyndx1.de/company/123/subscription/renew-plan?plan_id=64c0ffe4770e21b533114912&transaction_id=64c2386821617314bf24c3d2&renew=true&callback_url=http://localdev.fyndx1.de:8087/company/123/billing/bills?activeTab=invoices&meta={\"remarks\":\"Invoice Payment\",\"seller_id\":\"123\",\"callback_url\":\"http://localdev.fyndx1.de:8087/company/123/billing/bills?activeTab=invoices\",\"invoice_number\":\"UN-I-A00355-FY24\",\"mode_of_payment\":\"online\",\"paid_amount_key\":\"total_payable\",\"isInvoicePayment\":true,\"source_reference\":\"invoice\"}",
  "meta": {
    "callback_url": "http://localdev.fyndx1.de:8087/company/123/billing/bills?activeTab=invoices",
    "remarks": "Invoice Payment",
    "isInvoicePayment": true,
    "paid_amount_key": "total_payable",
    "seller_id": "123",
    "invoice_number": "UN-I-A00355-FY24",
    "source_reference": "invoice",
    "mode_of_payment": "online",
    "source": "website"
  }
}
```
</details>









---


#### creditlineDataplatform
Access credit line data platform.




```swift
platformClient.finance.creditlineDataplatform(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreditlineDataPlatformRequest | yes | Request body |


Connect to the credit line data platform.

*Returned Response:*




[CreditlineDataPlatformResponse](#CreditlineDataPlatformResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
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
          "date": "2023-07-14",
          "purpose": "Monthly Credit Limit Reset",
          "transaction_type": "Debit",
          "amount": "₹1295.25",
          "credit_balance": "₹0.00",
          "mr_balance": "₹0.00"
        },
        {
          "date": "2023-07-27",
          "purpose": "Advance Reciept Offline",
          "transaction_type": "Credit",
          "amount": "₹120.50",
          "credit_balance": "₹1295.25",
          "mr_balance": "₹0.00"
        },
        {
          "date": "2023-07-25",
          "purpose": "Commission Deduction",
          "transaction_type": "Debit",
          "amount": "₹1825.25",
          "credit_balance": "₹1174.75",
          "mr_balance": "₹0.00"
        },
        {
          "date": "2023-07-26",
          "purpose": "Credits Added",
          "transaction_type": "Credit",
          "amount": "₹2000.00",
          "credit_balance": "₹2000.00",
          "mr_balance": "₹1000.00"
        },
        {
          "date": "2023-07-26",
          "purpose": "Minimum Retainership",
          "transaction_type": "Credit",
          "amount": "₹1000.00",
          "credit_balance": "₹0.00",
          "mr_balance": "₹1000.00"
        }
      ],
      "creditline": {
        "total_amount": 2000,
        "used_amount": 2000,
        "balance": 0
      },
      "minimum_retainership": {
        "total_amount": 1000,
        "used_amount": 1000,
        "balance": 0
      },
      "show_mr": true
    }
  ],
  "item_count": 5,
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": false,
    "item_count": 5
  }
}
```
</details>









---


#### isCreditlinePlatform
Check credit line platform status.




```swift
platformClient.finance.isCreditlinePlatform(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | IsCreditlinePlatformRequest | yes | Request body |


Determine if the credit line platform is operational.

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


#### createSellerCreditNoteConfig
Create seller credit note config.




```swift
platformClient.finance.createSellerCreditNoteConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateSellerCreditNoteConfigRequest | yes | Request body |


Set up configuration for seller credit notes.

*Returned Response:*




[CreateSellerCreditNoteConfigResponse](#CreateSellerCreditNoteConfigResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Credit Note Config created."
}
```
</details>









---


#### channelDisplayName
Get channel display name.




```swift
platformClient.finance.channelDisplayName(filterKey: filterKey) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| filterKey | String | yes | gives display name for channel. |  



Retrieve the display name for a channel.

*Returned Response:*




[ChannelDisplayNameResponse](#ChannelDisplayNameResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "platform-pos": "POS"
  }
}
```
</details>









---


#### getCnConfig
Get credit note configuration.




```swift
platformClient.finance.getCnConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetCnConfigRequest | yes | Request body |


Retrieve configuration settings for credit notes.

*Returned Response:*




[GetCnConfigResponse](#GetCnConfigResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "is_cn_as_refund_method": true,
    "validity": 365,
    "currency_type": "Indian Rupees",
    "seller_id": 25,
    "affiliate_id": "5ea82cc2b496555b51caafa3",
    "notification_events": {
      "repeat": "once per day",
      "expiration_reminder_to_customer": 5
    },
    "meta": {
      "reason": "",
      "source_channel": [
        "POS",
        "ECOMM"
      ]
    },
    "redemption_ordering_channel": [
      "ECOMM",
      "POS"
    ]
  }
}
```
</details>









---




#### invoiceType
Get invoice types.




```swift
platformClient.finance.invoiceType(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InvoiceTypeRequest | yes | Request body |


Retrieve a list of available invoice types.

*Returned Response:*




[InvoiceTypeResponse](#InvoiceTypeResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "invoice_type_list": [
    {
      "text": "Creditline Minimum Gaurantee",
      "value": "0ebf0c84-2577-4374-a48c-bcbec5afbbd3"
    },
    {
      "text": "Platform Subscription",
      "value": "fc912415-0e32-4de9-9c46-7b21543747c3"
    },
    {
      "text": "Seller Invoice Fynd",
      "value": "1ec78cf4-2d25-4bba-9d42-6515dfaf1751"
    },
    {
      "text": "Seller Invoice Fynd Store",
      "value": "e6d8a752-1691-4b2d-9327-a0a4ea2f7dfd"
    },
    {
      "text": "Seller Invoice OpenAPI Ecom",
      "value": "5ef45de7-388a-460a-a5ba-ab2de8fcc632"
    },
    {
      "text": "Seller Invoice Uniket",
      "value": "8d85b574-17b7-4ddd-8d0a-e3a79cbd0659"
    }
  ],
  "payment_status_list": [
    {
      "text": "In Process",
      "value": "in_process"
    },
    {
      "text": "Paid",
      "value": "paid"
    },
    {
      "text": "Unpaid",
      "value": "unpaid"
    }
  ]
}
```
</details>









---


#### isCnRefundMethod
Check CN refund method.




```swift
platformClient.finance.isCnRefundMethod(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | IsCnRefundMethodRequest | yes | Request body |


Verify the refund method for credit notes.

*Returned Response:*




[IsCnRefundMethodResponse](#IsCnRefundMethodResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "is_first_time_user": false
  }
}
```
</details>









---


#### creditNoteDetails
Get credit note details.




```swift
platformClient.finance.creditNoteDetails(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreditNoteDetailsRequest | yes | Request body |


Retrieve detailed information about a credit note.

*Returned Response:*




[CreditNoteDetailsResponse](#CreditNoteDetailsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "cn_reference_number": "test_cn_1",
    "customer_mobile_number": "1234567890",
    "cn_amount": 200,
    "remaining_cn_amount": 200,
    "cn_status": "unutilised",
    "cn_details": {
      "ordering_channel": "POS",
      "channel_of_issuance": "POS",
      "order_id": "11111",
      "shipment_id": "11111",
      "invoice_number": "invoice_1",
      "date_issued": "2023-03-08 17:47:20",
      "expiry_date": "2023-03-08 17:47:20",
      "staff_id": "staff_1",
      "store_id": "111"
    },
    "available_cn_balance": 500,
    "redemption_details": [
      {
        "order_id": "111",
        "shipment_id": "111",
        "invoice_number": "invoice_1",
        "store_id": "11",
        "staff_id": "staff_1",
        "ordering_channel": "POS",
        "created_at": "2023-03-08 17:47:20",
        "amount_debited": 100
      },
      {
        "order_id": "111",
        "shipment_id": "111",
        "invoice_number": "invoice_1",
        "store_id": "11",
        "staff_id": "staff_1",
        "ordering_channel": "POS",
        "created_at": "2023-03-08 17:47:20",
        "amount_debited": 100
      }
    ]
  }
}
```
</details>









---


#### getCustomerCreditBalance
Get customer credit balance.




```swift
platformClient.finance.getCustomerCreditBalance(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetCustomerCreditBalanceRequest | yes | Request body |


Retrieve the credit balance of a customer.

*Returned Response:*




[GetCustomerCreditBalanceResponse](#GetCustomerCreditBalanceResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "customer_mobile_number": "1234567890",
    "total_credited_balance": 500
  }
}
```
</details>









---




#### invoiceListing
Gives list of invoices.




```swift
platformClient.finance.invoiceListing(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InvoiceListingRequest | yes | Request body |


Gives list of invoices.

*Returned Response:*




[InvoiceListingResponse](#InvoiceListingResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "items": [
    {
      "company": "(61) sumeetest",
      "invoice_number": "FY-I-A23004-FY24",
      "invoice_type": "Seller Invoice Fynd",
      "invoice_date": "20-07-23",
      "period": "01-05-23 - 31-05-23",
      "amount": "₹247.8",
      "due_date": "22-07-23",
      "status": "UNPAID",
      "is_downloadable": true,
      "invoice_id": "622c45ae-70e1-4222-9f4f-69dde51ad870",
      "source_id": ""
    },
    {
      "company": "(61) sumeetest",
      "invoice_number": "FY-I-A23003-FY24",
      "invoice_type": "Seller Invoice Fynd",
      "invoice_date": "20-07-23",
      "period": "01-05-23 - 31-05-23",
      "amount": "₹247.8",
      "due_date": "22-07-23",
      "status": "UNPAID",
      "is_downloadable": true,
      "invoice_id": "18d6bf81-21f8-4dd7-9c37-72751173a24a",
      "source_id": "",
      "currency": {
        "code": "INR",
        "symbol": "r",
        "name": "Indian Rupee"
      }
    }
  ],
  "unpaid_invoice_data": {
    "total_unpaid_amount": 495.6,
    "total_unpaid_invoice_count": 2,
    "currency": "INR"
  },
  "headers": [
    "Company",
    "Invoice No",
    "Type",
    "Date",
    "Period",
    "Amount",
    "Due Date",
    "Status"
  ],
  "item_count": 26,
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": true,
    "item_count": 2
  }
}
```
</details>









---


#### deleteConfig
Deletes credit note config.




```swift
platformClient.finance.deleteConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DeleteConfigRequest | yes | Request body |


Deletes credit note config.

*Returned Response:*




[DeleteConfigResponse](#DeleteConfigResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Seller configuration deleted successfully."
}
```
</details>









---


#### invoicePaymentDetails
Display payment details of an invoice.




```swift
platformClient.finance.invoicePaymentDetails(invoiceNumber: invoiceNumber) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| invoiceNumber | String | yes | Invoice Number for which the data will be returned.Invoice_Number is required. |  



Display payment details of invoice.

*Returned Response:*




[InvoicePaymentDetailsResponse](#InvoicePaymentDetailsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "payment_details_visible": true,
  "paid_invoice_payment_details": [
    {
      "payment_details": [
        {
          "display_name": "Type of Payment",
          "value": "Online"
        },
        {
          "display_name": "Mode of Payment",
          "value": "Upi"
        },
        {
          "display_name": "UPI ID",
          "value": "8787987654@ybl"
        },
        {
          "display_name": "Reference Number",
          "value": "882648404204"
        }
      ],
      "date_of_payment": "2023-07-19 13:12:15.901928",
      "amount": 8000
    }
  ],
  "failed_attempts_details": []
}
```
</details>









---


#### invoiceActivityLogs
Display activity log details of an invoice.




```swift
platformClient.finance.invoiceActivityLogs(invoiceNumber: invoiceNumber) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| invoiceNumber | String | yes | Invoice Number for which the data will be returned. Invoice_number is required. |  



Display activity log details of invoice.

*Returned Response:*




[InvoiceActivityLogsResponse](#InvoiceActivityLogsResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": [
    {
      "performed_by": "system",
      "status": "processed",
      "reason": "",
      "is_resolved": true,
      "retry_attempts": 0,
      "max_retry_attempts": 3
    }
  ]
}
```
</details>









---


#### unlockCreditNote
Unlocks credit notes.




```swift
platformClient.finance.unlockCreditNote(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UnlockCreditNoteRequest | yes | Request body |


Used to unlock all request credit notes.

*Returned Response:*




[UnlockCreditNoteResponse](#UnlockCreditNoteResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "is_cn_unlocked": true,
    "status": "completed"
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
 | endDate | String? |  yes  |  |
 | meta | [GenerateReportMeta](#GenerateReportMeta)? |  yes  |  |
 | reportId | String? |  yes  |  |
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
 | itemCount | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | size | Int? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Currency](#Currency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | symbol | String? |  yes  |  |
 | name | String? |  yes  |  |

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
 | page | Int? |  yes  |  |
 | pagesize | Int? |  yes  |  |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |

---


 
 
 #### [DownloadReportItems](#DownloadReportItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | meta | [GenerateReportMeta](#GenerateReportMeta)? |  yes  |  |
 | reportId | String? |  yes  |  |
 | filters | [GenerateReportFilters](#GenerateReportFilters)? |  yes  |  |
 | typeOfRequest | String? |  yes  |  |

---


 
 
 #### [DownloadReportList](#DownloadReportList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[DownloadReportItems](#DownloadReportItems)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | itemCount | Int? |  yes  |  |

---


 
 
 #### [GetEngineData](#GetEngineData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tableName | String? |  yes  |  |
 | project | [String]? |  yes  |  |
 | filters | [String: Any]? |  yes  |  |

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
 | items | [[String: Any]]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | itemCount | Int? |  yes  |  |

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


 
 
 #### [ReasonItem](#ReasonItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [GetReasonResponse](#GetReasonResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | itemList | [[ReasonItem](#ReasonItem)]? |  yes  |  |
 | itemCount | Int? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

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


 
 
 #### [GetReportListResponse](#GetReportListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | items | [[ReportItem](#ReportItem)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | totalCount | Int? |  yes  |  |

---


 
 
 #### [ReportItem](#ReportItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | allowedFilters | [String]? |  yes  |  |
 | configMeta | [String: Any]? |  yes  |  |
 | reportType | String? |  yes  |  |
 | displayDate | String? |  yes  |  |

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
 | platform | String? |  yes  |  |
 | amount | String? |  yes  |  |
 | transactionType | String? |  yes  |  |
 | sourceReference | String? |  yes  |  |
 | totalAmount | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | currency | String? |  yes  |  |
 | sellerId | String? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |

---


 
 
 #### [PaymentProcessRequest](#PaymentProcessRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [PaymentProcessPayload](#PaymentProcessPayload)? |  yes  |  |

---


 
 
 #### [PaymentProcessResponse](#PaymentProcessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | Int? |  yes  |  |
 | message | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | transactionId | String? |  yes  |  |
 | redirectUrl | String? |  yes  |  |

---


 
 
 #### [CreditlineDataPlatformPayload](#CreditlineDataPlatformPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | Int? |  yes  |  |
 | sellerId | String? |  yes  |  |
 | endEnd | String? |  yes  |  |
 | startEnd | String? |  yes  |  |
 | pagesize | Int? |  yes  |  |

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
 | code | Int? |  yes  |  |
 | showMr | Bool? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | message | String? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | itemCount | Int? |  yes  |  |

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
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [InvoiceTypeResponse](#InvoiceTypeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | invoiceTypeList | [[InvoiceTypeResponseItems](#InvoiceTypeResponseItems)]? |  yes  |  |
 | paymentStatusList | [[InvoiceTypeResponseItems](#InvoiceTypeResponseItems)]? |  yes  |  |

---


 
 
 #### [InoviceListingPayloadDataFilters](#InoviceListingPayloadDataFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentStatus | [String]? |  yes  |  |
 | invoiceType | [String]? |  yes  |  |
 | companyId | [String]? |  yes  |  |

---


 
 
 #### [InvoiceListingPayloadData](#InvoiceListingPayloadData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageSize | Int? |  yes  |  |
 | page | Int? |  yes  |  |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | search | String? |  yes  |  |
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
 | currency | String? |  yes  |  |
 | totalUnpaidAmount | Double? |  yes  |  |

---


 
 
 #### [InvoiceListingResponseItems](#InvoiceListingResponseItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | company | String? |  yes  |  |
 | status | String? |  yes  |  |
 | dueDate | String? |  yes  |  |
 | invoiceDate | String? |  yes  |  |
 | invoiceType | String? |  yes  |  |
 | period | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |
 | isDownloadable | Bool? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | currency | [Currency](#Currency)? |  yes  |  |

---


 
 
 #### [InvoiceListingResponse](#InvoiceListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unpaidInvoiceData | [UnpaidInvoiceDataItems](#UnpaidInvoiceDataItems)? |  yes  |  |
 | items | [[InvoiceListingResponseItems](#InvoiceListingResponseItems)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | itemCount | Int? |  yes  |  |

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


 
 
 #### [IsCnRefundMethodData](#IsCnRefundMethodData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | affiliateId | String? |  yes  |  |
 | toggleEditRequired | Bool? |  yes  |  |
 | sellerId | Int? |  yes  |  |

---


 
 
 #### [IsCnRefundMethodRequest](#IsCnRefundMethodRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [IsCnRefundMethodData](#IsCnRefundMethodData)? |  yes  |  |

---


 
 
 #### [IsCnRefundMethodResponseData](#IsCnRefundMethodResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isFirstTimeUser | Bool? |  yes  |  |

---


 
 
 #### [IsCnRefundMethodResponse](#IsCnRefundMethodResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [IsCnRefundMethodResponseData](#IsCnRefundMethodResponseData)? |  yes  |  |

---


 
 
 #### [CreditNoteConfigNotificationEvents](#CreditNoteConfigNotificationEvents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expirationReminderToCustomer | Int? |  yes  |  |

---


 
 
 #### [CreateSellerCreditNoteConfig](#CreateSellerCreditNoteConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCnAsRefundMethod | Bool? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | sourceChannel | [String]? |  yes  |  |
 | sellerId | Int? |  yes  |  |
 | notificationEvents | [CreditNoteConfigNotificationEvents](#CreditNoteConfigNotificationEvents)? |  yes  |  |
 | salesChannelName | String? |  yes  |  |
 | orderingChannel | [String]? |  yes  |  |
 | validity | Int? |  yes  |  |
 | currencyType | String? |  yes  |  |
 | slugValues | [String]? |  yes  |  |

---


 
 
 #### [CreateSellerCreditNoteConfigRequest](#CreateSellerCreditNoteConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CreateSellerCreditNoteConfig](#CreateSellerCreditNoteConfig)? |  yes  |  |

---


 
 
 #### [CreateSellerCreditNoteConfigResponse](#CreateSellerCreditNoteConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

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
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

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
 | s3PdfLink | String? |  yes  |  |
 | cnReferenceNumber | String? |  yes  |  |

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
 | staffId | String? |  yes  |  |
 | expiryDate | String? |  yes  |  |
 | channelOfIssuance | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | dateIssued | String? |  yes  |  |
 | orderingChannel | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | storeId | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |

---


 
 
 #### [RedemptionDetails](#RedemptionDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | staffId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | storeId | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | orderingChannel | String? |  yes  |  |
 | amountDebited | Int? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |

---


 
 
 #### [CreditNoteDetails](#CreditNoteDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cnStatus | String? |  yes  |  |
 | customerMobileNumber | String? |  yes  |  |
 | cnReferenceNumber | String? |  yes  |  |
 | cnDetails | [CnDetails](#CnDetails)? |  yes  |  |
 | redemptionDetails | [[RedemptionDetails](#RedemptionDetails)]? |  yes  |  |
 | remainingCnAmount | Int? |  yes  |  |
 | availableCnBalance | Int? |  yes  |  |
 | cnAmount | Int? |  yes  |  |

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
 | affiliateId | String? |  yes  |  |
 | sellerId | Int? |  yes  |  |
 | customerMobileNumber | String? |  yes  |  |

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
 | affiliateId | String? |  yes  |  |
 | meta | [GetCnConfigResponseMeta](#GetCnConfigResponseMeta)? |  yes  |  |
 | sellerId | Int? |  yes  |  |
 | notificationEvents | [CreditNoteConfigNotificationEvents](#CreditNoteConfigNotificationEvents)? |  yes  |  |
 | validity | Int? |  yes  |  |
 | redemptionOrderingChannel | [String]? |  yes  |  |
 | currencyType | String? |  yes  |  |

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
 | staffId | [String]? |  yes  |  |
 | channelOfIssuance | [String]? |  yes  |  |
 | utilisation | [String]? |  yes  |  |
 | orderingChannel | [String]? |  yes  |  |
 | storeId | [Int]? |  yes  |  |
 | typesOfTransaction | [String]? |  yes  |  |

---


 
 
 #### [CnGenerateReport](#CnGenerateReport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | Int? |  yes  |  |
 | endDate | String? |  yes  |  |
 | pagesize | Int? |  yes  |  |
 | filters | [CnGenerateReportFilters](#CnGenerateReportFilters)? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | meta | [GenerateReportFilters](#GenerateReportFilters)? |  yes  |  |
 | search | String? |  yes  |  |
 | reportId | String? |  yes  |  |
 | searchType | String? |  yes  |  |
 | startDate | String? |  yes  |  |

---


 
 
 #### [GenerateReportCustomerCnRequest](#GenerateReportCustomerCnRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CnGenerateReport](#CnGenerateReport)? |  yes  |  |

---


 
 
 #### [CnGenerateReportItems](#CnGenerateReportItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiryDate | String? |  yes  |  |
 | status | String? |  yes  |  |
 | totalAmount | Int? |  yes  |  |
 | orderId | String? |  yes  |  |
 | dateIssued | String? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | invoiceNumber | String? |  yes  |  |
 | creditNoteNumber | String? |  yes  |  |

---


 
 
 #### [GenerateReportCustomerCnResponseData](#GenerateReportCustomerCnResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CnGenerateReportItems](#CnGenerateReportItems)]? |  yes  |  |
 | rowHeaderDisplayOrder | [String: Any]? |  yes  |  |
 | endDate | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | primaryHeaders | [String]? |  yes  |  |
 | allowedFilters | [String]? |  yes  |  |
 | startDate | String? |  yes  |  |
 | itemCount | Int? |  yes  |  |

---


 
 
 #### [GenerateReportCustomerCnResponse](#GenerateReportCustomerCnResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GenerateReportCustomerCnResponseData](#GenerateReportCustomerCnResponseData)? |  yes  |  |

---


 
 
 #### [CnDownloadReport](#CnDownloadReport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | Int? |  yes  |  |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | affiliateId | String? |  yes  |  |
 | search | String? |  yes  |  |
 | status | [String]? |  yes  |  |
 | searchType | String? |  yes  |  |
 | pagesize | Int? |  yes  |  |

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
 | fullName | String? |  yes  |  |
 | requestedBy | String? |  yes  |  |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | requestDict | [String: Any]? |  yes  |  |
 | downloadLink | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | msg | String? |  yes  |  |
 | reportName | String? |  yes  |  |
 | status | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | filters | [String: Any]? |  yes  |  |

---


 
 
 #### [DownloadReportCustomerCnResponse](#DownloadReportCustomerCnResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[DownloadReportResponseData](#DownloadReportResponseData)]? |  yes  |  |

---


 
 
 #### [GetReportingFilters](#GetReportingFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | type | String? |  yes  |  |
 | options | [[String: Any]]? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [GetReportingNestedFilters](#GetReportingNestedFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | options | [[String: Any]]? |  yes  |  |
 | required | Bool? |  yes  |  |
 | placeholderText | String? |  yes  |  |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [GetReportingFiltersResponse](#GetReportingFiltersResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | search | [GetReportingFilters](#GetReportingFilters)? |  yes  |  |
 | filters | [[GetReportingNestedFilters](#GetReportingNestedFilters)]? |  yes  |  |
 | status | [GetReportingFilters](#GetReportingFilters)? |  yes  |  |

---


 
 
 #### [PaymentDetail](#PaymentDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [PaidInvoicePaymentDetail](#PaidInvoicePaymentDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentDetails | [[PaymentDetail](#PaymentDetail)]? |  yes  |  |
 | dateOfPayment | String? |  yes  |  |
 | amount | Double? |  yes  |  |

---


 
 
 #### [InvoicePaymentDetailsResponseData](#InvoicePaymentDetailsResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paidInvoicePaymentDetails | [[PaidInvoicePaymentDetail](#PaidInvoicePaymentDetail)]? |  yes  |  |
 | failedAttemptsDetails | [[String: Any]]? |  yes  |  |

---


 
 
 #### [InvoicePaymentDetailsResponse](#InvoicePaymentDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [InvoicePaymentDetailsResponseData](#InvoicePaymentDetailsResponseData)? |  yes  |  |
 | success | Bool? |  yes  |  |
 | paymentDetailsVisible | Bool? |  yes  |  |

---


 
 
 #### [InvoiceActivityLogsResponseData](#InvoiceActivityLogsResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | performedBy | String? |  yes  |  |
 | status | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | isResolved | Bool? |  yes  |  |
 | retryAttempts | Double? |  yes  |  |
 | maxRetryAttempts | Double? |  yes  |  |

---


 
 
 #### [InvoiceActivityLogsResponse](#InvoiceActivityLogsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[InvoiceActivityLogsResponseData](#InvoiceActivityLogsResponseData)]? |  yes  |  |

---


 
 
 #### [InvoiceActivityLogError](#InvoiceActivityLogError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reason | String? |  yes  |  |

---


 
 
 #### [UnlockCreditNoteRequestData](#UnlockCreditNoteRequestData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerId | String? |  yes  |  |
 | lockedCreditNotes | [String]? |  yes  |  |
 | unlockReason | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [UnlockCreditNoteRequest](#UnlockCreditNoteRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [UnlockCreditNoteRequestData](#UnlockCreditNoteRequestData)? |  yes  |  |

---


 
 
 #### [UnlockCreditNoteResponseData](#UnlockCreditNoteResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCnUnlocked | Bool? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [UnlockCreditNoteResponse](#UnlockCreditNoteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [UnlockCreditNoteResponseData](#UnlockCreditNoteResponseData)? |  yes  |  |

---



