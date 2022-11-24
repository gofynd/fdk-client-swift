



##### [Back to Platform docs](./README.md)

## DocumentEngine Methods
Handles financial pdf generation of Fulfilment
* [generateBulkPackageLabel](#generatebulkpackagelabel)
* [generateBulkBoxLabel](#generatebulkboxlabel)
* [generateBulkShipmentLabel](#generatebulkshipmentlabel)
* [generateNoc](#generatenoc)
* [getLabelStatus](#getlabelstatus)
* [getNocStatus](#getnocstatus)
* [getPresignedURL](#getpresignedurl)
* [getLabelPresignedURL](#getlabelpresignedurl)
* [getNocPresignedURL](#getnocpresignedurl)
* [getBulkShipmentStatus](#getbulkshipmentstatus)



## Methods with example and description


#### generateBulkPackageLabel
Generate Labels for Packages




```swift
client.documentengine.generateBulkPackageLabel(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GenerateBulkPackageLabel | yes | Request body |


Use this API to generate label for Packages

*Returned Response:*




[SuccessResponseGenerateBulk](#SuccessResponseGenerateBulk)

Sucsess Response, Labels will be generated




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### generateBulkBoxLabel
Generate Labels for Boxes which will go inside package




```swift
client.documentengine.generateBulkBoxLabel(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GenerateBulkBoxLabel | yes | Request body |


Use this API to generate label for Boxes

*Returned Response:*




[SuccessResponseGenerateBulk](#SuccessResponseGenerateBulk)

Sucsess Response, Labels will be generated




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### generateBulkShipmentLabel
Generate Labels for Shipments which contains packaged




```swift
client.documentengine.generateBulkShipmentLabel(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GenerateBulkShipmentLabel | yes | Request body |


Use this API to generate label for Shipments

*Returned Response:*




[SuccessResponseGenerateBulk](#SuccessResponseGenerateBulk)

Sucsess Response, Labels will be generated




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### generateNoc
Generate NOC for Seller having access to a fullfillment center




```swift
client.documentengine.generateNoc(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GenerateNoc | yes | Request body |


Use this API to generate NOC for Seller

*Returned Response:*




[SuccessResponseGenerateBulk](#SuccessResponseGenerateBulk)

Sucsess Response, NOC Pdf will be generated




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success response</i></summary>

```json
{
  "value": {
    "status": true
  }
}
```
</details>

</details>









---


#### getLabelStatus
Get Staus of Label generations




```swift
client.documentengine.getLabelStatus(uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uid | String | yes | UID given at time of generate request |  



Use this API to fetch status of PDF generation of Labels

*Returned Response:*




[StatusSuccessResponse](#StatusSuccessResponse)

Sucess Response, Status Of Label generation




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getNocStatus
Get Staus of NOC generation




```swift
client.documentengine.getNocStatus(uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uid | String | yes | UID given at time of generate request |  



Use this API to fetch status of PDF generation of NOC

*Returned Response:*




[StatusSuccessResponse](#StatusSuccessResponse)

Sucess Response, Status Of NOC Pdf generation




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success response</i></summary>

```json
{
  "value": {
    "success": true,
    "status": "created"
  }
}
```
</details>

</details>









---


#### getPresignedURL
Get Presigned URL to download PDFs




```swift
client.documentengine.getPresignedURL(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InvoiceLabelPresignedRequestBody | yes | Request body |


Use this API to generate Presigned URLs for downloading PDFs

*Returned Response:*




[SignedSuccessResponse](#SignedSuccessResponse)

Sucess Response, Presigned URL of PDFs




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getLabelPresignedURL
Get Presigned URL to download labels




```swift
client.documentengine.getLabelPresignedURL(uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uid | String | yes | UID given at time of generate request |  



Use this API to generate Presigned URLs for downloading labels

*Returned Response:*




[SignedSuccessResponse](#SignedSuccessResponse)

Sucess Response, Presigned URL of Labels




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getNocPresignedURL
Get Presigned URL to download NOC Pdf




```swift
client.documentengine.getNocPresignedURL(uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uid | String | yes | UID given at time of generate request |  



Use this API to generate Presigned URL for downloading NOC Pdf

*Returned Response:*




[SignedSuccessResponse](#SignedSuccessResponse)

Sucess Response, Presigned URL of NOC Pdf




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success response</i></summary>

```json
{
  "value": {
    "uid": "l27h38uy",
    "expires_in": 300,
    "url": "presigned-url"
  }
}
```
</details>

</details>









---


#### getBulkShipmentStatus
Get Status of Bulk Invoice and Label generation




```swift
client.documentengine.getBulkShipmentStatus(batchId: batchId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| batchId | String | yes | batch_id given at time of generate request |  



Use this API to fetch status of PDF generation of Bulk Invoice and Label

*Returned Response:*




[SuccessResponseBulkStatus](#SuccessResponseBulkStatus)

Sucess Response, Lists of Bulk Invoice and label generation




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [GenerateBulkInvoiceLabelShipment](#GenerateBulkInvoiceLabelShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeId | Double |  no  |  |
 | fromDate | String |  no  |  |
 | toDate | String |  no  |  |
 | documentType | String |  no  |  |
 | shipmentIds | [String]? |  yes  |  |

---


 
 
 #### [GenerateBulkInvoiceOrLabelUrl](#GenerateBulkInvoiceOrLabelUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String |  no  |  |
 | documentType | String |  no  |  |
 | batchId | Double |  no  |  |

---


 
 
 #### [DocumentType](#DocumentType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoice | String |  no  |  |
 | label | String |  no  |  |

---


 
 
 #### [BulkListBadRequestResponse](#BulkListBadRequestResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | error | String? |  yes  |  |

---


 
 
 #### [BulkListFailedResponse](#BulkListFailedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | error | String? |  yes  |  |

---


 
 
 #### [SuccessResponseGenerateBulkShipment](#SuccessResponseGenerateBulkShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | jobId | Double |  no  |  |
 | traceId | String? |  yes  |  |

---


 
 
 #### [SuccessResponseBulkStatus](#SuccessResponseBulkStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | status | String |  no  |  |
 | traceId | String? |  yes  |  |

---


 
 
 #### [GenerateBulkUrlSuccessResponse](#GenerateBulkUrlSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | uid | String |  no  |  |
 | expiresIn | Double |  no  |  |
 | presignedType | String |  no  |  |

---


 
 
 #### [InternalErrorResponseGenerateBulkShipment](#InternalErrorResponseGenerateBulkShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | error | String |  no  |  |

---


 
 
 #### [BadRequestResponseGenerateBulkUrl](#BadRequestResponseGenerateBulkUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |
 | requestId | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [InternalErrorResponseGenerateBulkUrl](#InternalErrorResponseGenerateBulkUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [GenerateBulkShipment](#GenerateBulkShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String |  no  |  |
 | storeCode | String |  no  |  |
 | batchId | String |  no  |  |
 | documentType | String |  no  |  |

---


 
 
 #### [GenerateBulkUrl](#GenerateBulkUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiresIn | Double? |  yes  |  |
 | documentType | String |  no  |  |
 | batchId | String |  no  |  |

---


 
 
 #### [GetBulkStatusRequest](#GetBulkStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | batchId | String |  no  |  |

---


 
 
 #### [BadRequestResponseGenerateBulkItemParameters](#BadRequestResponseGenerateBulkItemParameters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | missingProperty | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [BadRequestResponseGenerateBulkItem](#BadRequestResponseGenerateBulkItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | keyword | String? |  yes  |  |
 | dataPath | String? |  yes  |  |
 | schemaPath | String? |  yes  |  |
 | parameters | [BadRequestResponseGenerateBulkItemParameters](#BadRequestResponseGenerateBulkItemParameters)? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [SuccessResponseGenerateBulk](#SuccessResponseGenerateBulk)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |

---


 
 
 #### [BadRequestResponseGenerateBulk](#BadRequestResponseGenerateBulk)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | errorMessage | [[BadRequestResponseGenerateBulkItem](#BadRequestResponseGenerateBulkItem)] |  no  |  |

---


 
 
 #### [InternalErrorResponseGenerateBulk](#InternalErrorResponseGenerateBulk)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | errorMessage | String? |  yes  |  |

---


 
 
 #### [ShippingToAddress](#ShippingToAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | String |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [SellerAddress](#SellerAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | String |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [BoxDetails](#BoxDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | boxId | String |  no  |  |
 | totalQuantity | String |  no  |  |
 | packageCount | String |  no  |  |
 | dimension | String |  no  |  |
 | weight | String |  no  |  |

---


 
 
 #### [ShipmentDetails](#ShipmentDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentNo | String |  no  |  |
 | appointmentNo | String |  no  |  |
 | totalSku | String |  no  |  |
 | itemQty | String |  no  |  |
 | noOfBoxes | String |  no  |  |
 | shippingTo | String |  no  |  |
 | sellerName | String |  no  |  |
 | gstinNumber | String |  no  |  |
 | shippingAddress | [ShippingToAddress](#ShippingToAddress) |  no  |  |
 | sellerAddress | [SellerAddress](#SellerAddress) |  no  |  |

---


 
 
 #### [GenerateBulkBoxLabel](#GenerateBulkBoxLabel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stockTransferId | String |  no  |  |
 | labelType | String |  no  |  |
 | uid | String |  no  |  |
 | sellerName | String |  no  |  |
 | templateId | Double |  no  |  |
 | boxDetails | [[BoxDetails](#BoxDetails)] |  no  |  |

---


 
 
 #### [GenerateBulkShipmentLabel](#GenerateBulkShipmentLabel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | labelType | String |  no  |  |
 | uid | String |  no  |  |
 | templateId | Double |  no  |  |
 | shipments | [[ShipmentDetails](#ShipmentDetails)] |  no  |  |

---


 
 
 #### [GenerateNoc](#GenerateNoc)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String |  no  |  |
 | sellerName | String |  no  |  |
 | sellerGstin | String |  no  |  |
 | fcGstin | String |  no  |  |
 | templateId | Double |  no  |  |
 | fcAddress | [SellerAddress](#SellerAddress) |  no  |  |
 | sellerAddress | [SellerAddress](#SellerAddress) |  no  |  |

---


 
 
 #### [PackageDetails](#PackageDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | packageId | String |  no  |  |
 | itemQuantity | String |  no  |  |
 | packageType | String |  no  |  |
 | packagingType | String |  no  |  |
 | dimension | String |  no  |  |
 | weight | String |  no  |  |

---


 
 
 #### [PackageItemDetails](#PackageItemDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jioCode | String |  no  |  |
 | itemName | String |  no  |  |
 | mrp | String |  no  |  |
 | countryOfOrigin | String |  no  |  |
 | bestBeforeDate | String |  no  |  |
 | ean | String |  no  |  |
 | packageDetails | [[PackageDetails](#PackageDetails)] |  no  |  |

---


 
 
 #### [GenerateBulkPackageLabel](#GenerateBulkPackageLabel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stockTransferId | String |  no  |  |
 | labelType | String |  no  |  |
 | uid | String |  no  |  |
 | sellerName | String |  no  |  |
 | templateId | Double |  no  |  |
 | itemDetails | [[PackageItemDetails](#PackageItemDetails)] |  no  |  |

---


 
 
 #### [SignedSuccessResponse](#SignedSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String? |  yes  |  |
 | url | String? |  yes  |  |
 | expiresIn | Double? |  yes  |  |

---


 
 
 #### [BulkPresignedSuccessResponse](#BulkPresignedSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | String |  no  |  |
 | batchId | String? |  yes  |  |
 | presignedType | String? |  yes  |  |
 | presignedUrl | String |  no  |  |
 | expiresIn | Double? |  yes  |  |

---


 
 
 #### [SignedBadRequestResponse](#SignedBadRequestResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | errorMessage | String? |  yes  |  |

---


 
 
 #### [SignedFailedResponse](#SignedFailedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | errorMessage | String? |  yes  |  |

---


 
 
 #### [StatusSuccessResponse](#StatusSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [StatusBadRequestResponse](#StatusBadRequestResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | errorMessage | String? |  yes  |  |

---


 
 
 #### [StatusFailedResponse](#StatusFailedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | errorMessage | String? |  yes  |  |

---


 
 
 #### [GenerateManifest](#GenerateManifest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeId | Double |  no  |  |
 | fromDate | String |  no  |  |
 | toDate | String |  no  |  |
 | shipmentIds | [String]? |  yes  |  |

---


 
 
 #### [GeneratePresignedManifestUrl](#GeneratePresignedManifestUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manifestId | String |  no  |  |
 | uid | String |  no  |  |

---


 
 
 #### [ManifestLink](#ManifestLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | manifestId | String |  no  |  |

---


 
 
 #### [GenerateManifestUrlSuccessResponse](#GenerateManifestUrlSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | uid | String |  no  |  |
 | manifestId | String |  no  |  |
 | expiresIn | Double |  no  |  |
 | presignedType | String |  no  |  |

---


 
 
 #### [ManifestListFailedResponse](#ManifestListFailedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | error | String? |  yes  |  |

---


 
 
 #### [InvoiceLabelPresignedRequestBody](#InvoiceLabelPresignedRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | documentType | String |  no  |  |
 | entityId | String |  no  |  |
 | expiresIn | Double? |  yes  |  |

---


 
 
 #### [OrderInvoiceEngineError](#OrderInvoiceEngineError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---



