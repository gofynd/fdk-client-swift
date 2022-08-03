



##### [Back to Platform docs](./README.md)

## OrderInvoiceEngine Methods
Handles financial pdf generation of Fulfilment
* [generateBulkPackageLabel](#generatebulkpackagelabel)
* [generateBulkBoxLabel](#generatebulkboxlabel)
* [generateBulkShipmentLabel](#generatebulkshipmentlabel)
* [getLabelStatus](#getlabelstatus)
* [getLabelPresignedURL](#getlabelpresignedurl)



## Methods with example and description


#### generateBulkPackageLabel
Generate Labels for Packages




```swift
client.orderinvoiceengine.generateBulkPackageLabel(body: body) { (response, error) in
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
client.orderinvoiceengine.generateBulkBoxLabel(body: body) { (response, error) in
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
client.orderinvoiceengine.generateBulkShipmentLabel(body: body) { (response, error) in
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


#### getLabelStatus
Get Staus of Label generations




```swift
client.orderinvoiceengine.getLabelStatus(uid: uid) { (response, error) in
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


#### getLabelPresignedURL
Get Presigned URL to download labels




```swift
client.orderinvoiceengine.getLabelPresignedURL(uid: uid) { (response, error) in
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

---


 
 
 #### [InternalErrorResponseGenerateBulkUrl](#InternalErrorResponseGenerateBulkUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

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
 | errorMessage | String? |  yes  |  |

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


 
 
 #### [ShippingAddress](#ShippingAddress)

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
 | name | String |  no  |  |
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
 | gstinNumber | String |  no  |  |
 | shippingAddress | [ShippingAddress](#ShippingAddress) |  no  |  |
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


 
 
 #### [OrderInvoiceEngineError](#OrderInvoiceEngineError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---



