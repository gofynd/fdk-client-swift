



##### [Back to Platform docs](./README.md)

## FileStorage Methods
This service provides functionality to manage assets and generate pdf. You can upload the assets, get the cdn link for the assets, proxy the assets and many more things.

* [startUpload](#startupload)
* [completeUpload](#completeupload)
* [appStartUpload](#appstartupload)
* [appCompleteUpload](#appcompleteupload)
* [getSignUrls](#getsignurls)
* [copyFiles](#copyfiles)
* [appCopyFiles](#appcopyfiles)
* [browse](#browse)
* [appbrowse](#appbrowse)
* [proxy](#proxy)
* [getPdfTypes](#getpdftypes)
* [getDefaultPdfData](#getdefaultpdfdata)
* [getDefaultHtmlTemplate](#getdefaulthtmltemplate)
* [saveHtmlTemplate](#savehtmltemplate)
* [previewTemplate](#previewtemplate)
* [getDefaultPdfTemplate](#getdefaultpdftemplate)



## Methods with example and description


#### startUpload
This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.




```swift
platformClient.filestorage.startUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String | yes | Segregation of different types of files(products, orders, logistics etc), Required for validating the data of the file being uploaded, decides where exactly the file will be stored inside the storage bucket. |  
| body | StartRequest | yes | Request body |


Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `completeUpload` api to complete the upload process.
This operation will return the url for the uploaded file.


*Returned Response:*




[StartResponse](#StartResponse)

Success. Returns a response containing relaving and absolute_url of storage service




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "file_name": "shirt.png",
    "file_path": "/path/qwertyuiop-shirt.png",
    "content_type": "image/png",
    "method": "PUT",
    "namespace": "products-item-images",
    "operation": "putObject",
    "tags": [
      "clothing",
      "shirt"
    ],
    "size": 9999,
    "cdn": {
      "url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png",
      "absolute_url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png",
      "relative_url": "products/pictures/free/original/qwertyuiop-shirt.png"
    },
    "upload": {
      "expiry": 5000,
      "url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png?AWSAccessKeyId=xxx&Content-Type=image%2Fpng&Expires=5000&Signature=xxx&x-amz-acl=public-read"
    }
  }
}
```
</details>

</details>









---


#### completeUpload
This will complete the upload process. After successfully uploading file, you can call this operation to complete the upload process.




```swift
platformClient.filestorage.completeUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String | yes | Segregation of different types of files(products, orders, logistics etc), Required for validating the data of the file being uploaded, decides where exactly the file will be stored inside the storage bucket. |  
| body | StartResponse | yes | Request body |


Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `completeUpload` api to complete the upload process.
This operation will return the url for the uploaded file.


*Returned Response:*




[CompleteResponse](#CompleteResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true,
    "_id": "xxxxxxxxxxxxxxxxxxxxxx",
    "file_name": "shirt.png",
    "file_path": "/path/qwertyuiop-shirt.png",
    "content_type": "image/png",
    "method": "PUT",
    "namespace": "products-item-images",
    "operation": "putObject",
    "size": 9999,
    "cdn": {
      "url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png",
      "absolute_url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png",
      "relative_url": "products/pictures/free/original/qwertyuiop-shirt.png"
    },
    "upload": {
      "expiry": 5000,
      "url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png?AWSAccessKeyId=xxx&Content-Type=image%2Fpng&Expires=5000&Signature=xxx&x-amz-acl=public-read"
    },
    "created_on": "2020-02-03T09:50:04.240Z",
    "modified_on": "2020-02-03T09:50:04.240Z"
  }
}
```
</details>

</details>









---


#### appStartUpload
This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.




```swift
platformClient.application("<APPLICATION_ID>").filestorage.appStartUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String | yes | Segregation of different types of files(products, orders, logistics etc), Required for validating the data of the file being uploaded, decides where exactly the file will be stored inside the storage bucket. |  
| body | StartRequest | yes | Request body |


Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `appStartUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `appStartUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `appCompleteUpload` api to complete the upload process.
This operation will return the url for the uploaded file.


*Returned Response:*




[StartResponse](#StartResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "file_name": "shirt.png",
    "file_path": "/path/qwertyuiop-shirt.png",
    "content_type": "image/png",
    "method": "PUT",
    "namespace": "products-item-images",
    "operation": "putObject",
    "tags": [
      "clothing",
      "shirt"
    ],
    "size": 9999,
    "cdn": {
      "url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png",
      "absolute_url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png",
      "relative_url": "products/pictures/free/original/qwertyuiop-shirt.png"
    },
    "upload": {
      "expiry": 5000,
      "url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png?AWSAccessKeyId=xxx&Content-Type=image%2Fpng&Expires=5000&Signature=xxx&x-amz-acl=public-read"
    }
  }
}
```
</details>

</details>









---


#### appCompleteUpload
This will complete the upload process. After successfully uploading file, you can call this operation to complete the upload process.




```swift
platformClient.application("<APPLICATION_ID>").filestorage.appCompleteUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String | yes | Segregation of different types of files(products, orders, logistics etc), Required for validating the data of the file being uploaded, decides where exactly the file will be stored inside the storage bucket. |  
| body | StartResponse | yes | Request body |


Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `appStartUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `appStartUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `appCompleteUpload` api to complete the upload process.
This operation will return the url for the uploaded file.


*Returned Response:*




[CompleteResponse](#CompleteResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true,
    "_id": "xxxxxxxxxxxxxxxxxxxxxx",
    "file_name": "shirt.png",
    "file_path": "/path/qwertyuiop-shirt.png",
    "content_type": "image/png",
    "method": "PUT",
    "namespace": "products-item-images",
    "operation": "putObject",
    "size": 9999,
    "cdn": {
      "url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png",
      "absolute_url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png",
      "relative_url": "products/pictures/free/original/qwertyuiop-shirt.png"
    },
    "upload": {
      "expiry": 5000,
      "url": "https://xxx.xxx.xxx/products/pictures/free/original/qwertyuiop-shirt.png?AWSAccessKeyId=xxx&Content-Type=image%2Fpng&Expires=5000&Signature=xxx&x-amz-acl=public-read"
    },
    "created_on": "2020-02-03T09:50:04.240Z",
    "modified_on": "2020-02-03T09:50:04.240Z"
  }
}
```
</details>

</details>









---


#### getSignUrls
Gives signed urls to access private files




```swift
platformClient.filestorage.getSignUrls(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SignUrlRequest | yes | Request body |


Describe here

*Returned Response:*




[SignUrlResponse](#SignUrlResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "urls": [
      {
        "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/documents/manifest/PDFs/test/s3EtYk5p9-new_fee.pdf",
        "signed_url": "https://fynd-staging-assets-private.s3-accelerate.amazonaws.com/addsale/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/documents/manifest/PDFs/test/s3EtYk5p9-new_fee.pdf",
        "expiry": 1800
      }
    ]
  }
}
```
</details>

</details>









---


#### copyFiles
Copy Files




```swift
platformClient.filestorage.copyFiles(sync: sync, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| sync | Bool? | no |  |  
| body | CopyFiles | yes | Request body |


Copy Files

*Returned Response:*




[BulkUploadSyncMode](#BulkUploadSyncMode)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; successInSyncMode</i></summary>

```json
{
  "value": {
    "status": {
      "total": 1,
      "failed": 0,
      "succeeded": 1,
      "result": "SUCCESS"
    },
    "files": [
      {
        "success": true,
        "file": {
          "src": {
            "method": "GET",
            "url": "https://hdn-1.fynd.com/platform/pictures/free-logo/original/7qdHNTFe--platform-logo.png",
            "meta": {},
            "namespace": "test"
          },
          "dest": {
            "ETag": "\"a2fdd91e5a6e1c080a44966c923f7d3b\"",
            "ServerSideEncryption": "AES256",
            "Location": "https://fynd-staging-assets.s3-accelerate.amazonaws.com/addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png",
            "key": "addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png",
            "Key": "addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png",
            "Bucket": "fynd-staging-assets",
            "cdn": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png",
            "absolute_url": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png",
            "relative_url": "addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png"
          }
        },
        "extracted_data": {
          "sharp": {
            "metadata": {
              "format": "png",
              "size": 20859,
              "width": 1147,
              "height": 315,
              "space": "srgb",
              "channels": 4,
              "depth": "uchar",
              "density": 144,
              "isProgressive": false,
              "hasProfile": false,
              "hasAlpha": true
            },
            "stats": {
              "channels": [
                {
                  "min": 0,
                  "max": 255,
                  "sum": 18581166,
                  "squaresSum": 2720454498,
                  "mean": 51.42792377631087,
                  "stdev": 69.89066964116273,
                  "minX": 0,
                  "minY": 32,
                  "maxX": 767,
                  "maxY": 162
                },
                {
                  "min": 0,
                  "max": 255,
                  "sum": 23074718,
                  "squaresSum": 3794972074,
                  "mean": 63.86492852299304,
                  "stdev": 80.15486600126069,
                  "minX": 0,
                  "minY": 32,
                  "maxX": 767,
                  "maxY": 162
                },
                {
                  "min": 0,
                  "max": 255,
                  "sum": 43651277,
                  "squaresSum": 8829856965,
                  "mean": 120.81559070591328,
                  "stdev": 99.20892161899766,
                  "minX": 0,
                  "minY": 32,
                  "maxX": 767,
                  "maxY": 162
                },
                {
                  "min": 0,
                  "max": 255,
                  "sum": 55673911,
                  "squaresSum": 14147207369,
                  "mean": 154.09117227826906,
                  "stdev": 124.14431740073556,
                  "minX": 0,
                  "minY": 32,
                  "maxX": 33,
                  "maxY": 32
                }
              ],
              "isOpaque": false,
              "entropy": 2.2912313200504286,
              "sharpness": 3.3113732303662036,
              "dominant": {
                "r": 8,
                "g": 8,
                "b": 8
              }
            }
          }
        }
      }
    ]
  }
}
```
</details>

</details>









---


#### appCopyFiles
Copy Files




```swift
platformClient.application("<APPLICATION_ID>").filestorage.appCopyFiles(sync: sync, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| sync | Bool? | no | sync |  
| body | CopyFiles | yes | Request body |


Copy Files

*Returned Response:*




[BulkUploadSyncMode](#BulkUploadSyncMode)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; successInSyncMode</i></summary>

```json
{
  "value": {
    "status": {
      "total": 1,
      "failed": 0,
      "succeeded": 1,
      "result": "SUCCESS"
    },
    "files": [
      {
        "success": true,
        "file": {
          "src": {
            "method": "GET",
            "url": "https://hdn-1.fynd.com/platform/pictures/free-logo/original/7qdHNTFe--platform-logo.png",
            "meta": {},
            "namespace": "test"
          },
          "dest": {
            "ETag": "\"a2fdd91e5a6e1c080a44966c923f7d3b\"",
            "ServerSideEncryption": "AES256",
            "Location": "https://fynd-staging-assets.s3-accelerate.amazonaws.com/addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png",
            "key": "addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png",
            "Key": "addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png",
            "Bucket": "fynd-staging-assets",
            "cdn": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png",
            "absolute_url": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png",
            "relative_url": "addsale/test/general/free/original/4q7uySVcYQ-7qdHNTFe-platform-logo.png"
          }
        },
        "extracted_data": {
          "sharp": {
            "metadata": {
              "format": "png",
              "size": 20859,
              "width": 1147,
              "height": 315,
              "space": "srgb",
              "channels": 4,
              "depth": "uchar",
              "density": 144,
              "isProgressive": false,
              "hasProfile": false,
              "hasAlpha": true
            },
            "stats": {
              "channels": [
                {
                  "min": 0,
                  "max": 255,
                  "sum": 18581166,
                  "squaresSum": 2720454498,
                  "mean": 51.42792377631087,
                  "stdev": 69.89066964116273,
                  "minX": 0,
                  "minY": 32,
                  "maxX": 767,
                  "maxY": 162
                },
                {
                  "min": 0,
                  "max": 255,
                  "sum": 23074718,
                  "squaresSum": 3794972074,
                  "mean": 63.86492852299304,
                  "stdev": 80.15486600126069,
                  "minX": 0,
                  "minY": 32,
                  "maxX": 767,
                  "maxY": 162
                },
                {
                  "min": 0,
                  "max": 255,
                  "sum": 43651277,
                  "squaresSum": 8829856965,
                  "mean": 120.81559070591328,
                  "stdev": 99.20892161899766,
                  "minX": 0,
                  "minY": 32,
                  "maxX": 767,
                  "maxY": 162
                },
                {
                  "min": 0,
                  "max": 255,
                  "sum": 55673911,
                  "squaresSum": 14147207369,
                  "mean": 154.09117227826906,
                  "stdev": 124.14431740073556,
                  "minX": 0,
                  "minY": 32,
                  "maxX": 33,
                  "maxY": 32
                }
              ],
              "isOpaque": false,
              "entropy": 2.2912313200504286,
              "sharpness": 3.3113732303662036,
              "dominant": {
                "r": 8,
                "g": 8,
                "b": 8
              }
            }
          }
        }
      }
    ]
  }
}
```
</details>

<details>
<summary><i>&nbsp; successInSyncModeWithRewrite</i></summary>

```json
{
  "value": {
    "status": {
      "total": 1,
      "failed": 1,
      "succeeded": 0,
      "result": "FAIL"
    },
    "files": [
      {
        "success": false,
        "error": "Request failed with status code 400",
        "file": {
          "src": {
            "method": "GET",
            "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/documents/manifest/PDFs/test/s3EtYk5p9-new_fee.pdf",
            "meta": {},
            "namespace": "test"
          }
        },
        "stage": "AXIOS_FETCH",
        "axios_request": {
          "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/x0/documents/manifest/PDFs/test/s3EtYk5p9-new_fee.pdf",
          "method": "GET",
          "meta": {},
          "namespace": "test",
          "responseType": "stream"
        }
      }
    ],
    "task": {
      "id": "83419",
      "name": "__default__",
      "data": {
        "urls": [
          "https://hdn-1.fynd.com/platform/pictures/free-logo/original/7qdHNTFe--platform-logo.png"
        ],
        "destination": {
          "basepath": "/domaine/path",
          "rewrite": "{{basepath}}/foo/"
        }
      },
      "opts": {
        "attempts": 2,
        "backoff": {
          "type": "fixed",
          "delay": 1000
        },
        "delay": 0,
        "timestamp": 1690669093201
      },
      "progress": 0,
      "delay": 0,
      "timestamp": 1690669093201,
      "attemptsMade": 0,
      "stacktrace": [],
      "returnvalue": null,
      "finishedOn": null,
      "processedOn": null
    }
  }
}
```
</details>

</details>









---


#### browse
Browse Files




```swift
platformClient.filestorage.browse(namespace: namespace, page: page, limit: limit) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String | yes | Segregation of different types of files(products, orders, logistics etc), Required for validating the data of the file being uploaded, decides where exactly the file will be stored inside the storage bucket. |   
| page | Int? | no | page no |   
| limit | Int? | no | Limit |  



Browse Files

*Returned Response:*




[BrowseResponse](#BrowseResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### appbrowse
Browse Files




```swift
platformClient.application("<APPLICATION_ID>").filestorage.appbrowse(namespace: namespace, page: page, limit: limit) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String | yes | Segregation of different types of files(products, orders, logistics etc), Required for validating the data of the file being uploaded, decides where exactly the file will be stored inside the storage bucket. |   
| page | Int? | no | page no |   
| limit | Int? | no | Limit |  



Browse Files

*Returned Response:*




[BrowseResponse](#BrowseResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### proxy
Proxy




```swift
platformClient.filestorage.proxy(url: url) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| url | String | yes | url |  



Proxy

*Returned Response:*




[String](#String)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getPdfTypes
Get all the supported invoice pdf types




```swift
platformClient.application("<APPLICATION_ID>").filestorage.getPdfTypes() { (response, error) in
    // Use response
}
```






Get all the supported invoice pdf types such as Invoice, Label, Deliver challan

*Returned Response:*




[[InvoiceTypesResponse]](#[InvoiceTypesResponse])

Get all the invoice types and its format




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": [
    {
      "_id": "64b7ec2556a0cba523196426",
      "pdf_type_id": 1,
      "name": "invoice",
      "format": [
        "A4",
        "A6",
        "POS"
      ],
      "visibility": true,
      "schema": {},
      "__v": 0
    }
  ]
}
```
</details>

</details>









---


#### getDefaultPdfData
Get Dummy pdf data for invoice or label




```swift
platformClient.application("<APPLICATION_ID>").filestorage.getDefaultPdfData(pdfTypeId: pdfTypeId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pdfTypeId | Int | yes |  |  



Get Dummy pdf data for invoice or label

*Returned Response:*




[[DummyTemplateDataItems]](#[DummyTemplateDataItems])

Get dummy json data for invoice




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": [
    {
      "_id": "64b7f52d56a0cba5231964b0",
      "pdf_type_id": 1,
      "payload": {
        "currency_code": "INR",
        "shipment_id": "16811182420541695489",
        "amount_to_be_collected": 0,
        "amount_paid": 100,
        "awb_number_barcode": "",
        "signed_qrcode": "",
        "shipment_id_barcode": "",
        "upi_qrcode": "",
        "is_self_ship": false,
        "is_self_pickup": true,
        "is_test": false,
        "image": {
          "sales_channel_logo": ""
        },
        "payments": [
          {
            "payment_type": "Net Banking",
            "date": "10/04/2023",
            "transaction_id": "10022310053248709000",
            "amount": 35
          }
        ],
        "invoice_detail": {
          "invoice_id": "2352313215236713",
          "invoice_date": "10/04/2023",
          "irn": "",
          "external_order_id": "",
          "shipment_id": "16811182420541695489",
          "order_id": "73982433",
          "channel_order_id": "affiliate_details.channel_order_id"
        },
        "company_detail": {
          "name": "RELIANCE RETAIL LIMITED",
          "address": "1ST FLOOR, WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR, KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTR",
          "city": "MUMBAI",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "zip_code": "400093",
          "state_code": "27",
          "country_code": "IN",
          "gstin": "27AABCR1718E1ZP",
          "pan": "AABCR1718E",
          "phone_no": "9594495254",
          "cin": "U45200MH1992PTC066474",
          "website_url": "https://freshpik.hostx1.de",
          "email": ""
        },
        "store_detail": {
          "store_name": "FreshPik",
          "address": "FRESHPIK, JIO WORLD DRIVE, MAKERS MAXITY,STORE UNIT - G 22,23&24 BANDRA EAST FSSAI NO: 11521005000512",
          "city": "Mumbai",
          "state": "Maharashtra",
          "country": "India",
          "country_code": "IN",
          "zip_code": "400093",
          "state_code": "27",
          "gstin": "27AABCR1718E1ZP"
        },
        "customer_shipping_detail": {
          "name": "Megha Golecha",
          "phone_no": "9769199489",
          "address": "1001 Badri Vishal, Sahakar Nagar, Andheri West, 400053, Near Building No. 33, Shanti Nagar,Test,Mumbai,Maharashtra,India,400053",
          "city": "Mumbai",
          "state": "Maharashtra",
          "country": "India",
          "country_code": "IN",
          "zip_code": "400053",
          "state_code": "27",
          "gstin": ""
        },
        "return_detail": {
          "address": "FRESHPIK, JIO WORLD DRIVE, MAKERS MAXITY,STORE UNIT - G 22,23&24 BANDRA EAST FSSAI NO: 11521005000512",
          "city": "Mumbai",
          "state": "Maharashtra",
          "country": "India",
          "country_code": "IN",
          "zip_code": "400053",
          "state_code": "27",
          "gstin": ""
        },
        "product_table": {
          "total_items": 1,
          "products": [
            {
              "name": "So Good Unsweetened Soy Milk 200 ml (Tetra Pak)",
              "size": "200ML",
              "item_code": "",
              "seller_identifier": "490001550",
              "hsn_code": "62060000",
              "total_units": 1,
              "mrp": 35,
              "discount": 123,
              "taxable_amount": 33.33,
              "total_taxable_amount": 33.33,
              "tax": {
                "cgst": {
                  "value": 0.83,
                  "percent": 2.5
                },
                "sgst": {
                  "value": 0.83,
                  "percent": 2.5
                },
                "igst": {
                  "value": 0.83,
                  "percent": 2.5
                }
              },
              "total": 35,
              "brand": {
                "logo": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/brands/pictures/square-logo/original/gi4glSy7T-EX5Teqb1K-Logo.jpeg",
                "name": "Freshpik"
              }
            }
          ],
          "grand_total": 35,
          "delivery_charges": 0,
          "delivery_charge_text": "",
          "cod_charges": 0,
          "fynd_discounts": 0,
          "total_in_words": "Thirty Five Rupees Only"
        },
        "tax_table": {
          "taxes": [
            {
              "hsn_code": "62060000",
              "tax": {
                "cgst": {
                  "value": 0.83,
                  "percent": 2.5
                },
                "sgst": {
                  "value": 0.83,
                  "percent": 2.5
                },
                "igst": {
                  "value": 0,
                  "percent": 0
                }
              },
              "total": 123
            }
          ],
          "grand_total": 1.67,
          "tax_in_words": "One Rupees and Sixty Seven Paise Only"
        },
        "declaration_texts": [
          "1. Products being sent under this invoice are for personal consumption for the customer and not for resale or commercial purposes.",
          "2. Whether tax is payable under reverse charge - No",
          "3. This invoice shows the actual price of the goods described above and that all particulars are true and accurate.",
          "4. In case of any queries, please reach out to care@gofynd.com.",
          "5. In the event of any loss or non-delivery, the goods shall be returned to the address specified below. this.shipment.invoice.rto_address"
        ],
        "registered_company_detail": {
          "address": "1ST FLOOR, WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR, KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTR",
          "city": "MUMBAI",
          "state": "MAHARASHTRA",
          "country": "INDIA",
          "zip_code": "400093",
          "state_code": "27",
          "country_code": "IN"
        },
        "disclaimer": "An Electronic document issued in accordance with the provisions of the Information Technology Act, 2000 (21 of 2000)",
        "meta": {
          "generator": {
            "signed_qrcode_generator": {
              "method": "signedqrcode",
              "kwargs": {
                "value": "eyJhbGciOiJSUzI1NiIsImtpZCI6IkVEQzU3REUxMzU4QjMwMEJBOUY3OTM0MEE2Njk2ODMxRjNDODUwNDciLCJ0eXAiOiJKV1QiLCJ4NXQiOiI3Y1Y5NFRXTE1BdXA5NU5BcG1sb01mUElVRWMifQ.eyJkYXRhIjoie1wiU2VsbGVyR3N0aW5cIjpcIjI3QUFCUFA2NTAzRTAwM1wiLFwiQnV5ZXJHc3RpblwiOlwiMjdBQUxDQTA0NDJMMVpNXCIsXCJEb2NOb1wiOlwiQTAwMDExMzMzQTAwMDAwM1wiLFwiRG9jVHlwXCI6XCJJTlZcIixcIkRvY0R0XCI6XCIxMS8xMC8yMDIyXCIsXCJUb3RJbnZWYWxcIjoyNDk5OTkuNzYsXCJJdGVtQ250XCI6MSxcIk1haW5Ic25Db2RlXCI6XCI5NDAxXCIsXCJJcm5cIjpcImUzNjE5M2YzNGQyZmY4OTM3MzI2NTcxN2RmYzY5YzVmYjU2MTI1N2U1M2MxOThhMDAzMGRkM2RlZGUxNDhmMmZcIixcIklybkR0XCI6XCIyMDIyLTEwLTExIDE0OjIxOjAwXCJ9IiwiaXNzIjoiTklDIn0.OtYrnBt311QrqdXCSuTOpzNuYA9M8ejRoyeRioJRyGImljXrNvBLU_JJpXVLtDI4dkbIEHVbbOuucYD3fn_nnH_KZA0kLkUuok417ztLxWN35D9xZaYg5GSWI8hss9KV7i-H-k_95pHBYPEwFFGw8IqlpgeS-unjkbbmY7UgQTerMIXrig-ZWc2R-NDFoHs7I48TuWzOxQfiEDVsMHzPjcjuqKA6KDoJKX0nZzZo84GL2k2pM0Klhq5sfJIC9Zp7E_xP_Bst6-cRhdZ2EA08xhJYSgB1fsYxGaxemXgdsXw0mqlGohOryvqwhHPSMEocK6ZHWWJvjZJwNx_e-oCyzg"
              }
            },
            "shipment_id_barcode_generator": {
              "method": "barcode",
              "kwargs": {
                "value": "dsgffdghfghgj"
              }
            },
            "upi_qrcode_generator": {
              "method": "qrcode",
              "kwargs": {
                "qr_data": "upi://pay?pa=delhivery1.PAYU@HDFCBANK&pn=www.delhivery.com&mc=4214&tr=O-zo0ou2yTjZCx-dk2b&am=6581.0&cu=INR&ver=01&mode=15&orgId=000000&gstBreakup=GST:30.0%7CCGST:0.0%7CSGST:0.0%7CIGST:30.0%7CCESS:0.0%7CGSTIncentive:12.0%7CGSTPCT:None&invoiceNo=UT/23-24/198&invoiceDate=2023-05-02T16:45:42&invoiceName=UT%2F23-24%2F198&gstIn=07ANLPC8083H1ZS&qrMedium=04",
                "qr_url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyprod/wrkr/logistics/qr-code/Delhivery/original/Hv0blbPtA-16830153113571272087.png"
              }
            },
            "awb_number_barcode_generator": {
              "method": "barcode",
              "kwargs": {
                "value": "7923787945"
              }
            },
            "digital_signature_generator": {
              "method": "digitalsignature",
              "kwargs": {
                "value": "8345jhkdfn"
              }
            },
            "awb_number_label_barcode_generator": {
              "method": "barcode",
              "kwargs": {
                "value": [
                  "9901090772264",
                  "9901090772264"
                ]
              }
            }
          }
        },
        "delivery_partner_detail": {
          "name": "fyndr",
          "awb_number": "",
          "dp_sort_code": "ABC/DEF",
          "origin": "1678236",
          "destination": "142345"
        },
        "customer_billing_detail": {
          "name": "Megha Golecha",
          "phone_no": "9769199489",
          "address": "1001 Badri Vishal, Sahakar Nagar, Andheri West, 400053, Near Building No. 33, Shanti Nagar,Test,Mumbai,Maharashtra,India,400053",
          "city": "Mumbai",
          "state": "Maharashtra",
          "country": "India",
          "country_code": "IN",
          "zip_code": "400053",
          "state_code": "27",
          "gstin": "",
          "email": "shipment.hand_over_contact_json.email"
        }
      },
      "__v": 0
    }
  ]
}
```
</details>

</details>









---


#### getDefaultHtmlTemplate
Get html template for sales channel




```swift
platformClient.application("<APPLICATION_ID>").filestorage.getDefaultHtmlTemplate(pdfTypeId: pdfTypeId, format: format) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pdfTypeId | Int | yes |  |   
| format | String | yes |  |  



Get default html template for invoice or label

*Returned Response:*




[[PdfConfigSuccess]](#[PdfConfigSuccess])

Get last saved html template for invoice




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": [
    {
      "_id": "64b7f52d56a0cba5231964b0",
      "company_id": 1,
      "application_id": "64aed475db2cfb5b8a9f623d",
      "pdf_type_id": 1,
      "format": "A4",
      "template": "<p>Hello world</p>",
      "__v": 0
    }
  ]
}
```
</details>

</details>









---


#### saveHtmlTemplate
Update html template for invoice or label




```swift
platformClient.application("<APPLICATION_ID>").filestorage.saveHtmlTemplate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | pdfConfig | yes | Request body |


Update html template for invoice such as Invoice, Label, Deliver challan

*Returned Response:*




[[PdfConfigSaveSuccess]](#[PdfConfigSaveSuccess])

Saved html template for invoice




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": [
    {
      "_id": "64b7f52d56a0cba5231964b0",
      "company_id": 1,
      "application_id": "64aed475db2cfb5b8a9f623d",
      "pdf_type_id": 1,
      "format": "A4",
      "template": "<p>Hello world</p>",
      "__v": 0
    }
  ]
}
```
</details>

</details>









---


#### previewTemplate
Preview HTML template




```swift
platformClient.application("<APPLICATION_ID>").filestorage.previewTemplate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | pdfRender | yes | Request body |


Rendered HTML template with dummy json data

*Returned Response:*




[String](#String)

Get rendered html with dummy json payload




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getDefaultPdfTemplate
Default html template




```swift
platformClient.application("<APPLICATION_ID>").filestorage.getDefaultPdfTemplate(pdfTypeId: pdfTypeId, format: format) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pdfTypeId | Int | yes |  |   
| format | String | yes |  |  



Get default html template data for invoice or label

*Returned Response:*




[[PdfDefaultTemplateSuccess]](#[PdfDefaultTemplateSuccess])

Get rendered html with dummy json payload




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": [
    {
      "_id": "64b7f21156a0cba523196482",
      "pdf_type_id": 1,
      "format": "A4",
      "template": "<p> Hello World </p>",
      "__v": 0
    }
  ]
}
```
</details>

</details>









---



### Schemas

 
 
 #### [FailedResponse](#FailedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [CDN](#CDN)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | absoluteUrl | String |  no  |  |
 | relativeUrl | String |  no  |  |

---


 
 
 #### [Upload](#Upload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiry | Int |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [StartResponse](#StartResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fileName | String |  no  |  |
 | filePath | String |  no  |  |
 | contentType | String |  no  |  |
 | method | String? |  yes  |  |
 | namespace | String |  no  |  |
 | operation | String |  no  |  |
 | size | Int |  no  |  |
 | upload | [Upload](#Upload) |  no  |  |
 | cdn | [CDN](#CDN) |  no  |  |
 | tags | [String]? |  yes  |  |

---


 
 
 #### [StartRequest](#StartRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fileName | String |  no  |  |
 | contentType | String |  no  |  |
 | size | Int |  no  |  |
 | tags | [String]? |  yes  |  |
 | params | [String: Any]? |  yes  |  |

---


 
 
 #### [CompleteResponse](#CompleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | fileName | String |  no  |  |
 | filePath | String |  no  |  |
 | contentType | String |  no  |  |
 | namespace | String |  no  |  |
 | operation | String |  no  |  |
 | size | Int |  no  |  |
 | upload | [Upload](#Upload) |  no  |  |
 | cdn | [CDN](#CDN) |  no  |  |
 | success | Bool |  no  |  |
 | tags | [String]? |  yes  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

---


 
 
 #### [DestinationNamespace](#DestinationNamespace)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | namespace | String? |  yes  |  |

---


 
 
 #### [CopyFiles](#CopyFiles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | urls | [String] |  no  |  |
 | destination | [DestinationNamespace](#DestinationNamespace) |  no  |  |

---


 
 
 #### [Urls](#Urls)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | signedUrl | String |  no  |  |
 | expiry | Int |  no  |  |

---


 
 
 #### [SignUrlResponse](#SignUrlResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | urls | [[Urls](#Urls)] |  no  |  |

---


 
 
 #### [SignUrlRequest](#SignUrlRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiry | Int |  no  |  |
 | urls | [String] |  no  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | current | Int? |  yes  |  |
 | type | String |  no  |  |
 | size | Int? |  yes  |  |

---


 
 
 #### [DbRecord](#DbRecord)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | tags | [String] |  no  |  |
 | id | String |  no  |  |
 | fileName | String |  no  |  |
 | operation | String? |  yes  |  |
 | namespace | String |  no  |  |
 | contentType | String |  no  |  |
 | filePath | String |  no  |  |
 | upload | [Upload](#Upload) |  no  |  |
 | cdn | [CDN](#CDN) |  no  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

---


 
 
 #### [BrowseResponse](#BrowseResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[DbRecord](#DbRecord)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [InvoiceTypesResponse](#InvoiceTypesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | pdfTypeId | Int |  no  |  |
 | name | String |  no  |  |
 | format | [String] |  no  |  |
 | v | Int |  no  |  |
 | visibility | Bool |  no  |  |
 | schema | [String: Any] |  no  |  |

---


 
 
 #### [DummyTemplateDataItems](#DummyTemplateDataItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | pdfTypeId | Double? |  yes  |  |
 | payload | [String: Any] |  no  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Status](#Status)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | total | Double |  no  |  |
 | failed | Double |  no  |  |
 | succeeded | Double |  no  |  |
 | result | String? |  yes  |  |

---


 
 
 #### [FileSrc](#FileSrc)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | method | String? |  yes  |  |
 | url | String |  no  |  |
 | namespace | String? |  yes  |  |

---


 
 
 #### [File](#File)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | src | [FileSrc](#FileSrc) |  no  |  |

---


 
 
 #### [FilesSuccess](#FilesSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | file | [File](#File)? |  yes  |  |

---


 
 
 #### [BulkUploadSyncMode](#BulkUploadSyncMode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [Status](#Status) |  no  |  |
 | files | [[FilesSuccess](#FilesSuccess)]? |  yes  |  |

---


 
 
 #### [BulkUploadFailResponse](#BulkUploadFailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [Status](#Status) |  no  |  |

---


 
 
 #### [pdfRender](#pdfRender)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | format | String? |  yes  |  |
 | payload | [String: Any]? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [pdfConfig](#pdfConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | format | String? |  yes  | This is invoice document format such as A4, A6, POS |
 | template | String? |  yes  | This is html template string |
 | pdfTypeId | Int? |  yes  |  |

---


 
 
 #### [PdfConfigSuccess](#PdfConfigSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | pdfTypeId | Int? |  yes  |  |
 | format | String? |  yes  |  |
 | template | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [PdfConfigSaveSuccess](#PdfConfigSaveSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | pdfTypeId | Int? |  yes  |  |
 | format | String? |  yes  |  |
 | template | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [PdfDefaultTemplateSuccess](#PdfDefaultTemplateSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | pdfTypeId | Int? |  yes  |  |
 | format | String? |  yes  |  |
 | template | String? |  yes  |  |
 | v | Int? |  yes  |  |

---



