



##### [Back to Platform docs](./README.md)

## Discount Methods
Discount

Default
* [getDiscounts](#getdiscounts)
* [createDiscount](#creatediscount)
* [getDiscount](#getdiscount)
* [updateDiscount](#updatediscount)
* [upsertDiscountItems](#upsertdiscountitems)
* [validateDiscountFile](#validatediscountfile)
* [downloadDiscountFile](#downloaddiscountfile)
* [getValidationJob](#getvalidationjob)
* [cancelValidationJob](#cancelvalidationjob)
* [getDownloadJob](#getdownloadjob)
* [cancelDownloadJob](#canceldownloadjob)




## Methods with example and description



#### getDiscounts
Fetch discount list.




```swift
platformClient.discount.getDiscounts(view: view, q: q, pageNo: pageNo, pageSize: pageSize, archived: archived, month: month, year: year, type: type, appIds: appIds) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| view | String? | no | listing or calender.  Default is listing. |   
| q | String? | no | The search query. This can be a partial or complete name of a discount. |   
| pageNo | Int? | no | page number. Default is 1. |   
| pageSize | Int? | no | page size. Default is 12. |   
| archived | Bool? | no | archived. Default is false. |   
| month | Int? | no | month. Default is current month. |   
| year | Int? | no | year. Default is current year. |   
| type | String? | no | basic or custom. |   
| appIds | [String]? | no | application ids. |  



Fetch discount list.

*Returned Response:*




[ListOrCalender](#ListOrCalender)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success_basic</i></summary>

```json
{
  "value": {
    "items": [
      {
        "is_active": false,
        "app_ids": [
          "646f43ee3b7f8c2847e31fb0"
        ],
        "_id": "xxxxxxxxxxxx",
        "name": "Discount Basic",
        "job_type": "app",
        "discount_type": "percentage",
        "discount_level": "application",
        "company_id": 90,
        "validity": {
          "start": "2021-04-06T08:25:34.110Z",
          "end": "2021-04-22T18:30:00.000Z"
        },
        "value": 0,
        "created_by": {
          "username": "narutouzumaki",
          "user_id": "0"
        },
        "modified_by": {
          "username": "narutouzumaki",
          "user_id": "0"
        },
        "created_on": "2021-04-06T08:10:16.609Z",
        "modified_on": "2021-04-07T08:19:12.007Z",
        "brand_ids": [
          90
        ],
        "store_ids": [
          1001
        ]
      }
    ],
    "page": {
      "current": 1,
      "item_total": 1,
      "type": "number",
      "size": 1,
      "has_previous": true,
      "has_next": false
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; success_custom</i></summary>

```json
{
  "value": {
    "items": [
      {
        "is_active": false,
        "app_ids": [
          "646f43ee3b7f8c2847e31fb0"
        ],
        "_id": "xxxxxxxxxxxx",
        "name": "Discount",
        "job_type": "app|brand|product",
        "discount_type": "percentage",
        "discount_level": "application",
        "company_id": 90,
        "validity": {
          "start": "2021-04-06T08:25:34.110Z",
          "end": "2021-04-22T18:30:00.000Z"
        },
        "value": 0,
        "file_path": "https://xxx.xxx.xxx/file.xlsx",
        "created_by": {
          "username": "narutouzumaki",
          "user_id": "0"
        },
        "modified_by": {
          "username": "narutouzumaki",
          "user_id": "0"
        },
        "created_on": "2021-04-06T08:10:16.609Z",
        "modified_on": "2021-04-07T08:19:12.007Z",
        "brand_ids": [
          90
        ],
        "store_ids": [
          1001
        ]
      }
    ],
    "page": {
      "current": 1,
      "item_total": 1,
      "type": "number",
      "size": 1,
      "has_previous": true,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### createDiscount
Create Discount.




```swift
platformClient.discount.createDiscount(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateUpdateDiscount | yes | Request body |


Create Discount.

*Returned Response:*




[DiscountJob](#DiscountJob)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success_basic</i></summary>

```json
{
  "value": {
    "_id": "64a7c915c160922f34ba4f12",
    "name": "Contract Discount Name",
    "company_id": 90,
    "is_active": true,
    "app_ids": [
      "646f43ee3b7f8c2847e31fb0"
    ],
    "job_type": "app",
    "discount_type": "flat",
    "discount_level": "application",
    "value": 10,
    "brand_ids": [
      90
    ],
    "store_ids": [
      1001
    ],
    "discount_meta": {
      "timer": true,
      "hours": 20,
      "minutes": 35
    },
    "validity": {
      "start": "2090-04-07T08:19:12.007Z",
      "end": "2090-04-10T08:19:12.007Z"
    },
    "created_on": "2021-04-06T08:19:12.007Z",
    "modified_on": "2021-04-06T08:19:12.007Z",
    "created_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    },
    "modified_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; success_custom</i></summary>

```json
{
  "value": {
    "_id": "64a7c915c160922f34ba4f12",
    "name": "Contract Discount Name",
    "company_id": 90,
    "is_active": true,
    "app_ids": [
      "646f43ee3b7f8c2847e31fb0"
    ],
    "job_type": "app",
    "discount_type": "flat",
    "discount_level": "application",
    "value": 10,
    "brand_ids": [
      90
    ],
    "store_ids": [
      1001
    ],
    "discount_meta": {
      "timer": true,
      "hours": 20,
      "minutes": 35
    },
    "validity": {
      "start": "2090-04-07T08:19:12.007Z",
      "end": "2090-04-10T08:19:12.007Z"
    },
    "created_on": "2021-04-06T08:19:12.007Z",
    "modified_on": "2021-04-06T08:19:12.007Z",
    "created_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    },
    "modified_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    }
  }
}
```
</details>

</details>









---


#### getDiscount
Fetch discount.




```swift
platformClient.discount.getDiscount(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | unique id. |  



Fetch discount.

*Returned Response:*




[DiscountJob](#DiscountJob)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success_basic</i></summary>

```json
{
  "value": {
    "_id": "64a7c915c160922f34ba4f12",
    "name": "Discount Name",
    "company_id": 90,
    "is_active": true,
    "app_ids": [
      "646f43ee3b7f8c2847e31fb0"
    ],
    "job_type": "app",
    "discount_type": "flat",
    "discount_level": "application",
    "value": 10,
    "brand_ids": [
      90
    ],
    "store_ids": [
      1001
    ],
    "discount_meta": {
      "timer": true,
      "hours": 20,
      "minutes": 35
    },
    "validity": {
      "start": "2021-04-07T08:19:12.007Z",
      "end": "2021-04-10T08:19:12.007Z"
    },
    "created_on": "2021-04-06T08:19:12.007Z",
    "modified_on": "2021-04-06T08:19:12.007Z",
    "created_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    },
    "modified_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; success_custom</i></summary>

```json
{
  "value": {
    "_id": "62c538dd6c0f710007ac6dbf",
    "name": "Discount Name",
    "company_id": 90,
    "is_active": true,
    "app_ids": [
      "646f43ee3b7f8c2847e31fb0"
    ],
    "job_type": "app|brand|product",
    "file_path": "https://xxx.xxx.xxx/file.xlsx",
    "discount_type": "flat",
    "discount_level": "application",
    "value": 10,
    "brand_ids": [
      90
    ],
    "store_ids": [
      1001
    ],
    "discount_meta": {
      "timer": true,
      "hours": 20,
      "minutes": 35
    },
    "validity": {
      "start": "2021-04-07T08:19:12.007Z",
      "end": "2021-04-10T08:19:12.007Z"
    },
    "created_on": "2021-04-06T08:19:12.007Z",
    "modified_on": "2021-04-06T08:19:12.007Z",
    "created_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    },
    "modified_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    }
  }
}
```
</details>

</details>









---


#### updateDiscount
Update Discount.




```swift
platformClient.discount.updateDiscount(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | id |  
| body | CreateUpdateDiscount | yes | Request body |


Update Discount.

*Returned Response:*




[DiscountJob](#DiscountJob)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success_basic</i></summary>

```json
{
  "value": {
    "_id": "64a7c915c160922f34ba4f12",
    "name": "Discount Name",
    "company_id": 90,
    "is_active": true,
    "app_ids": [
      "646f43ee3b7f8c2847e31fb0"
    ],
    "job_type": "app",
    "discount_type": "flat",
    "discount_level": "application",
    "value": 10,
    "brand_ids": [
      90
    ],
    "store_ids": [
      1001
    ],
    "discount_meta": {
      "timer": true,
      "hours": 20,
      "minutes": 35
    },
    "validity": {
      "start": "2021-04-07T08:19:12.007Z",
      "end": "2021-04-10T08:19:12.007Z"
    },
    "created_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    },
    "modified_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; success_custom</i></summary>

```json
{
  "value": {
    "_id": "64a7c915c160922f34ba4f12",
    "name": "Discount Name",
    "company_id": 90,
    "is_active": true,
    "app_ids": [
      "646f43ee3b7f8c2847e31fb0"
    ],
    "job_type": "app",
    "discount_type": "flat",
    "discount_level": "application",
    "file_path": "https://xxx.xxx.xxx/file.xlsx",
    "value": 10,
    "brand_ids": [
      90
    ],
    "store_ids": [
      1001
    ],
    "discount_meta": {
      "timer": true,
      "hours": 20,
      "minutes": 35
    },
    "validity": {
      "start": "2021-04-07T08:19:12.007Z",
      "end": "2021-04-10T08:19:12.007Z"
    },
    "created_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    },
    "modified_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    }
  }
}
```
</details>

</details>









---


#### upsertDiscountItems
Create custom discount from bulk.




```swift
platformClient.discount.upsertDiscountItems(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Job ID of the discount. |  
| body | BulkDiscount | yes | Request body |


Create custom discounts through API.

*Returned Response:*




[[String: Any]](#[String: Any])

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success_product</i></summary>

```json
{
  "value": {
    "success": true
  }
}
```
</details>

<details>
<summary><i>&nbsp; success_inventory</i></summary>

```json
{
  "value": {
    "success": true
  }
}
```
</details>

</details>









---


#### validateDiscountFile
Validate File.




```swift
platformClient.discount.validateDiscountFile(discount: discount, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| discount | String? | no | discount |  
| body | FileJobRequest | yes | Request body |


Validate File.

*Returned Response:*




[FileJobResponse](#FileJobResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "xxxxxxxxxxxx",
    "stage": "processing",
    "total": 10,
    "failed": 0,
    "company_id": 90,
    "file_path": "https://xxx.xxx.xxx/file.xlsx",
    "body": {
      "is_active": false,
      "app_ids": [
        "646f43ee3b7f8c2847e31fb0"
      ],
      "_id": "xxxxxxxxxxxx",
      "name": "Discount",
      "job_type": "app|brand|product",
      "discount_type": "percentage",
      "discount_level": "application",
      "company_id": 90,
      "file_path": "https://xxx.xxx.xxx/file.xlsx",
      "validity": {
        "start": "2090-04-06T08:25:34.110Z",
        "end": "2090-04-22T18:30:00.000Z"
      },
      "value": null,
      "created_by": {
        "username": "narutouzumaki",
        "user_id": "0"
      },
      "modified_by": {
        "username": "narutouzumaki",
        "user_id": "0"
      },
      "created_on": "2021-04-06T08:10:16.609Z",
      "modified_on": "2021-04-07T08:19:12.007Z",
      "brand_ids": [
        90
      ],
      "store_ids": [
        1001
      ]
    },
    "type": "download",
    "file_type": "product"
  }
}
```
</details>

</details>









---


#### downloadDiscountFile
Validate File.




```swift
platformClient.discount.downloadDiscountFile(type: type, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| type | String | yes | type |  
| body | DownloadFileJob | yes | Request body |


Validate File.

*Returned Response:*




[FileJobResponse](#FileJobResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "xxxxxxxxxxxx",
    "stage": "processing",
    "total": 10,
    "failed": 0,
    "company_id": 90,
    "file_path": "https://xxx.xxx.xxx/file.xlsx",
    "body": {
      "is_active": false,
      "app_ids": [
        "646f43ee3b7f8c2847e31fb0"
      ],
      "_id": "xxxxxxxxxxxx",
      "name": "Discount",
      "job_type": "app",
      "discount_type": "percentage",
      "discount_level": "application",
      "company_id": 90,
      "file_path": "https://xxx.xxx.xxx/file.xlsx",
      "validity": {
        "start": "2021-04-06T08:25:34.110Z",
        "end": "2021-04-22T18:30:00.000Z"
      },
      "value": null,
      "created_by": {
        "username": "narutouzumaki",
        "user_id": "0"
      },
      "modified_by": {
        "username": "narutouzumaki",
        "user_id": "0"
      },
      "created_on": "2021-04-06T08:10:16.609Z",
      "modified_on": "2021-04-07T08:19:12.007Z",
      "brand_ids": [
        90
      ],
      "store_ids": [
        1001
      ]
    },
    "type": "download",
    "file_type": "product"
  }
}
```
</details>

</details>









---


#### getValidationJob
Validate File Job.




```swift
platformClient.discount.getValidationJob(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | id |  



Validate File Job.

*Returned Response:*




[FileJobResponse](#FileJobResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "6519669e7fc0cd03ce111ab9",
    "stage": "processing",
    "total": 10,
    "failed": 0,
    "company_id": 90,
    "file_path": "https://xxx.xxx.xxx/file.xlsx",
    "body": {
      "is_active": false,
      "app_ids": [
        "646f43ee3b7f8c2847e31fb0"
      ],
      "_id": "64a7c915c160922f34ba4f12",
      "name": "Discount",
      "job_type": "app",
      "discount_type": "percentage",
      "discount_level": "application",
      "company_id": 90,
      "file_path": "https://xxx.xxx.xxx/file.xlsx",
      "validity": {
        "start": "2021-04-06T08:25:34.110Z",
        "end": "2021-04-22T18:30:00.000Z"
      },
      "value": null,
      "created_by": {
        "username": "narutouzumaki",
        "user_id": "0"
      },
      "modified_by": {
        "username": "narutouzumaki",
        "user_id": "0"
      },
      "created_on": "2021-04-06T08:10:16.609Z",
      "modified_on": "2021-04-07T08:19:12.007Z",
      "brand_ids": [
        90
      ],
      "store_ids": [
        1001
      ]
    },
    "type": "download",
    "file_type": "product"
  }
}
```
</details>

</details>









---


#### cancelValidationJob
Cancel Validation Job.




```swift
platformClient.discount.cancelValidationJob(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | id |  



Cancel Validation Job.

*Returned Response:*




[CancelJobResponse](#CancelJobResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true
  }
}
```
</details>

</details>









---


#### getDownloadJob
Download File Job.




```swift
platformClient.discount.getDownloadJob(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | id |  



Download File Job.

*Returned Response:*




[FileJobResponse](#FileJobResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "651b00ef29aedf98f98a8cbd",
    "stage": "processing",
    "total": 10,
    "failed": 0,
    "company_id": 90,
    "file_path": "https://xxx.xxx.xxx/file.xlsx",
    "body": {
      "is_active": false,
      "app_ids": [
        "646f43ee3b7f8c2847e31fb0"
      ],
      "_id": "64a7c915c160922f34ba4f12",
      "name": "Discount",
      "job_type": "app",
      "discount_type": "percentage",
      "discount_level": "application",
      "company_id": 90,
      "file_path": "https://xxx.xxx.xxx/file.xlsx",
      "validity": {
        "start": "2021-04-06T08:25:34.110Z",
        "end": "2021-04-22T18:30:00.000Z"
      },
      "value": null,
      "created_by": {
        "username": "narutouzumaki",
        "user_id": "0"
      },
      "modified_by": {
        "username": "narutouzumaki",
        "user_id": "0"
      },
      "created_on": "2021-04-06T08:10:16.609Z",
      "modified_on": "2021-04-07T08:19:12.007Z",
      "brand_ids": [
        90
      ],
      "store_ids": [
        1001
      ]
    },
    "type": "download",
    "file_type": "product"
  }
}
```
</details>

</details>









---


#### cancelDownloadJob
Cancel Download Job.




```swift
platformClient.discount.cancelDownloadJob(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | id |  



Cancel Download Job.

*Returned Response:*




[CancelJobResponse](#CancelJobResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true
  }
}
```
</details>

</details>









---




### Schemas

 
 
 #### [ValidityObject](#ValidityObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String |  no  |  |
 | end | String |  no  |  |

---


 
 
 #### [CreateUpdateDiscount](#CreateUpdateDiscount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | companyId | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | appIds | [String] |  no  |  |
 | extensionIds | [String]? |  yes  |  |
 | jobType | String |  no  |  |
 | discountType | String |  no  |  |
 | discountLevel | String |  no  |  |
 | value | Int? |  yes  |  |
 | filePath | String? |  yes  |  |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | zoneIds | [String]? |  yes  |  |
 | validity | [ValidityObject](#ValidityObject) |  no  |  |
 | discountMeta | [DiscountMeta](#DiscountMeta)? |  yes  |  |

---


 
 
 #### [DiscountMeta](#DiscountMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timer | Bool |  no  | Determines whether the discount countdown is visible or not. |
 | hours | Double? |  yes  | The time in hours before the discount ends when the countdown timer should start. |
 | minutes | Double? |  yes  | The time in minutes before the discount ends when the countdown timer should start. |

---


 
 
 #### [DiscountJob](#DiscountJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | companyId | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | appIds | [String]? |  yes  |  |
 | jobType | String? |  yes  |  |
 | discountType | String? |  yes  |  |
 | discountLevel | String? |  yes  |  |
 | value | Int? |  yes  |  |
 | filePath | String? |  yes  |  |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | zoneIds | [String]? |  yes  |  |
 | discountMeta | [DiscountMeta](#DiscountMeta)? |  yes  |  |
 | validity | [ValidityObject](#ValidityObject) |  no  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | createdBy | [UserDetails](#UserDetails) |  no  |  |
 | modifiedBy | [UserDetails](#UserDetails) |  no  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [FileJobBody](#FileJobBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | appIds | [String]? |  yes  |  |
 | jobType | String? |  yes  |  |
 | discountType | String? |  yes  |  |
 | discountLevel | String? |  yes  |  |
 | value | Int? |  yes  |  |
 | filePath | String? |  yes  |  |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | extensionIds | [String]? |  yes  |  |
 | zoneIds | [String]? |  yes  |  |
 | discountMeta | [DiscountMeta](#DiscountMeta)? |  yes  |  |
 | validity | [ValidityObject](#ValidityObject)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdBy | [UserDetails](#UserDetails)? |  yes  |  |
 | modifiedBy | [UserDetails](#UserDetails)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [ListOrCalender](#ListOrCalender)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[DiscountJob](#DiscountJob)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [DiscountItems](#DiscountItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCode | String? |  yes  |  |
 | brandName | String? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | discountType | String |  no  |  |
 | value | Double |  no  |  |
 | discountMeta | [DiscountMeta](#DiscountMeta)? |  yes  |  |

---


 
 
 #### [BulkDiscount](#BulkDiscount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int |  no  |  |
 | items | [[DiscountItems](#DiscountItems)] |  no  |  |

---


 
 
 #### [FileJobResponse](#FileJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String |  no  |  |
 | total | Int |  no  |  |
 | failed | Int |  no  |  |
 | companyId | Int |  no  |  |
 | body | [FileJobBody](#FileJobBody)? |  yes  |  |
 | type | String |  no  |  |
 | fileType | String? |  yes  |  |
 | id | String |  no  | A unique identifier to distinguish and identify a job. |
 | filePath | String? |  yes  |  |
 | progress | Int? |  yes  |  |
 | extensionIds | [String]? |  yes  |  |
 | zoneIds | [String]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdBy | [UserDetails](#UserDetails)? |  yes  |  |

---


 
 
 #### [FileJobRequest](#FileJobRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | isActive | Bool |  no  |  |
 | companyId | Int |  no  |  |
 | appIds | [String]? |  yes  |  |
 | jobType | String? |  yes  |  |
 | discountType | String? |  yes  |  |
 | discountLevel | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | validity | [ValidityObject](#ValidityObject) |  no  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [DownloadFileJob](#DownloadFileJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |

---


 
 
 #### [CancelJobResponse](#CancelJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |

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


 
 
 #### [UserDetails](#UserDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [BadRequestObject](#BadRequestObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [BadRequestData](#BadRequestData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [BadRequestObjectGet](#BadRequestObjectGet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | error | String? |  yes  |  |
 | data | [BadRequestData](#BadRequestData)? |  yes  |  |

---



