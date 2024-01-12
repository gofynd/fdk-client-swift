



##### [Back to Application docs](./README.md)

## FileStorage Methods
The File Storage module simplifies your file upload and storage tasks. Use the 'Initiate Upload' module to start and complete file uploads. Once the upload is successful, employ the 'Complete Upload' module to retrieve the file's URL. For added security, utilize the 'Sign URLs' module, which grants authorized access through signed URLs.

Default
* [startUpload](#startupload)
* [completeUpload](#completeupload)
* [signUrls](#signurls)




## Methods with example and description



#### startUpload
Initiates an upload and returns a storage link that is valid for 30 minutes. You can use the storage link to make subsequent upload request with file buffer or blob.




```swift
applicationClient.filestorage.startUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String | yes | Segregation of different types of files(products, orders, logistics etc), Required for validating the data of the file being uploaded, decides where exactly the file will be stored inside the storage bucket. |  
| body | StartRequest | yes | Request body |


Use this API to perform the first step of uploading (i.e. **Start**) an arbitrarily sized buffer or blob.

The three major steps are:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns a storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` API with the file (Buffer or Blob) in the request body.

### Complete
After successfully upload, call the `completeUpload` API to finish the upload process.
This operation will return the URL of the uploaded file.


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
Completes the upload process. After successfully uploading a file, call this API to finish the upload process.




```swift
applicationClient.filestorage.completeUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String | yes | Segregation of different types of files(products, orders, logistics etc), Required for validating the data of the file being uploaded, decides where exactly the file will be stored inside the storage bucket. |  
| body | StartResponse | yes | Request body |


Use this API to perform the third step of uploading (i.e. **Complete**) an arbitrarily sized buffer or blob.

The three major steps are:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns a storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` API with the file (Buffer or Blob) in the request body.

### Complete
After successfully upload, call the `completeUpload` API to finish the upload process.
This operation will return the URL of the uploaded file.


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
    "namespace": "products-item-images",
    "operation": "putObject",
    "company_id": 2,
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
    },
    "created_on": "2020-02-03T09:50:04.240Z",
    "modified_on": "2020-02-03T09:50:04.240Z",
    "created_by": {
      "username": "app@fynd.com"
    }
  }
}
```
</details>

</details>









---


#### signUrls
Explain here




```swift
applicationClient.filestorage.signUrls(body: body) { (response, error) in
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




### Schemas

 
 
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


 
 
 #### [Params](#Params)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subpath | String? |  yes  | The subpath for the file. |

---


 
 
 #### [StartRequest](#StartRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fileName | String |  no  |  |
 | contentType | String |  no  |  |
 | size | Int |  no  |  |
 | tags | [String]? |  yes  |  |
 | params | [Params](#Params)? |  yes  |  |

---


 
 
 #### [CreatedBy](#CreatedBy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |

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
 | createdBy | [CreatedBy](#CreatedBy)? |  yes  |  |

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



