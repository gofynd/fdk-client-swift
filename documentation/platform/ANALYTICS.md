



##### [Back to Platform docs](./README.md)

## Analytics Methods
Perceptor analytics
* [getStatiscticsGroups](#getstatiscticsgroups)
* [getStatiscticsGroupComponents](#getstatiscticsgroupcomponents)
* [getComponentStatsCSV](#getcomponentstatscsv)
* [getComponentStatsPDF](#getcomponentstatspdf)
* [getComponentStats](#getcomponentstats)
* [getAbandonCartList](#getabandoncartlist)
* [getAbandonCartsCSV](#getabandoncartscsv)
* [getAbandonCartDetail](#getabandoncartdetail)
* [createExportJob](#createexportjob)
* [getExportJobStatus](#getexportjobstatus)
* [getLogsList](#getlogslist)
* [searchLogs](#searchlogs)



## Methods with example and description


#### getStatiscticsGroups
Get statistics groups




```swift
platformClient.application("<APPLICATION_ID>").analytics.getStatiscticsGroups() { (response, error) in
    // Use response
}
```






Get statistics groups

*Returned Response:*




[StatsGroups](#StatsGroups)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "groups": [
    {
      "key": "general",
      "url": "/v1/group/general",
      "title": "General"
    }
  ]
}
```
</details>









---


#### getStatiscticsGroupComponents
Get statistics group components




```swift
platformClient.application("<APPLICATION_ID>").analytics.getStatiscticsGroupComponents(groupName: groupName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| groupName | String | yes | Group name |  



Get statistics group components

*Returned Response:*




[StatsGroupComponents](#StatsGroupComponents)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "title": "Catalogue & Inventory",
  "components": [
    {
      "key": "catalogue-basic",
      "title": "Catalogue Basic",
      "type": "text-blocks",
      "url": "/stats/component/catalogue-basic",
      "filters": {}
    }
  ]
}
```
</details>









---


#### getComponentStatsCSV
Get component statistics csv




```swift
platformClient.application("<APPLICATION_ID>").analytics.getComponentStatsCSV(componentName: componentName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| componentName | String | yes | Component name |  



Get component statistics csv

*Returned Response:*




[String](#String)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getComponentStatsPDF
Get component statistics pdf




```swift
platformClient.application("<APPLICATION_ID>").analytics.getComponentStatsPDF(componentName: componentName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| componentName | String | yes | Component name |  



Get component statistics pdf

*Returned Response:*




[String](#String)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getComponentStats
Get component statistics




```swift
platformClient.application("<APPLICATION_ID>").analytics.getComponentStats(componentName: componentName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| componentName | String | yes | Component name |  



Get component statistics

*Returned Response:*




[StatsRes](#StatsRes)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "key": "article-distribution",
  "title": "Inventory Distribution",
  "type": "chart.pie",
  "data": {
    "raw": [
      {
        "name": "Fatimah Logero",
        "available_articles": 8,
        "total_articles": 9,
        "available_sizes": 3,
        "total_sizes": 3,
        "article_freshness": 9,
        "count": 0,
        "percent": "NaN"
      }
    ],
    "type": "pie",
    "data": {
      "datasets": [
        {
          "label": "# of products",
          "backgroundColor": [
            "#7986CB",
            "#3F51B5"
          ],
          "data": [
            8,
            1
          ],
          "percent": [
            "88.89",
            "11.11"
          ]
        }
      ],
      "labels": [
        "Available Articles",
        "Articles Out Of Stock"
      ]
    },
    "options": {
      "responsive": true,
      "display": false
    },
    "cache_hit": false
  }
}
```
</details>









---


#### getAbandonCartList
Get abandon carts list




```swift
platformClient.application("<APPLICATION_ID>").analytics.getAbandonCartList(fromDate: fromDate, toDate: toDate, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| fromDate | String | yes | From date |   
| toDate | String | yes | To date |   
| pageNo | Int? | no | Current page number |   
| pageSize | Int? | no | Current page size |  



Get abandon carts list

*Returned Response:*




[AbandonCartsList](#AbandonCartsList)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": {
    "properties_cart_id": 11517,
    "context_traits_first_name": "Ahmed",
    "context_traits_last_name": "Sakri",
    "context_traits_phone_number": "8433859662",
    "context_traits_email": "ahmedsakri@gofynd.com",
    "context_app_application_id": "000000000000000000000001",
    "properties_breakup_values_raw_total": 4020,
    "received_at": {
      "value": "2021-03-09T05:09:06.840Z"
    }
  },
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": true,
    "item_total": 15
  }
}
```
</details>









---


#### getAbandonCartsCSV
Get abandon carts csv




```swift
platformClient.application("<APPLICATION_ID>").analytics.getAbandonCartsCSV(fromDate: fromDate, toDate: toDate) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| fromDate | String | yes | From date |   
| toDate | String | yes | To date |  



Get abandon carts csv

*Returned Response:*




[String](#String)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getAbandonCartDetail
Get abandon carts details




```swift
platformClient.application("<APPLICATION_ID>").analytics.getAbandonCartDetail(cartId: cartId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| cartId | String | yes | Cart Id |  



Get abandon cart details

*Returned Response:*




[AbandonCartDetail](#AbandonCartDetail)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createExportJob
Create data export job in required format




```swift
platformClient.analytics.createExportJob(exportType: exportType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| exportType | String | yes | Export type / format |  
| body | ExportJobReq | yes | Request body |


Create data export job in required format

*Returned Response:*




[ExportJobRes](#ExportJobRes)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "status": "queued",
  "job_id": "6047c67060ad8241a948ee42"
}
```
</details>









---


#### getExportJobStatus
Get data export job status




```swift
platformClient.analytics.getExportJobStatus(exportType: exportType, jobId: jobId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| exportType | String | yes | Export type / format |   
| jobId | String | yes | Export job id |  



Get data export job status

*Returned Response:*




[ExportJobStatusRes](#ExportJobStatusRes)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "download_url": "https://marketplace-sync-logs-production.s3.ap-south-1.amazonaws.com/inv-log-37-flipkartAssured-Full_Inventory_Update.csv",
  "status": "success",
  "job_id": "6047c67060ad8241a948ee42"
}
```
</details>









---


#### getLogsList
Get logs list




```swift
platformClient.analytics.getLogsList(logType: logType, pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| logType | String | yes | Log type |   
| pageNo | Int? | no | Current page number |   
| pageSize | Int? | no | Current page size |  
| body | GetLogsListReq | yes | Request body |


Get logs list

*Returned Response:*




[GetLogsListRes](#GetLogsListRes)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "start_time_iso": "2021-04-06T19:00:17.013Z",
      "end_time_iso": "2021-04-06T19:00:17.015Z",
      "event_type": "FULL_PRICE_UPDATE",
      "trace_id": "marketplaces.aa18fa48-b3e8-4e1e-8396-69488e254ace",
      "count": 17,
      "status": "failed"
    }
  ],
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": true,
    "item_total": 88
  }
}
```
</details>









---


#### searchLogs
Search logs




```swift
platformClient.analytics.searchLogs(pageNo: pageNo, pageSize: pageSize, logType: logType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page number |   
| pageSize | Int? | no | Current page size |   
| logType | String | yes | Log type |  
| body | SearchLogReq | yes | Request body |


Search logs

*Returned Response:*




[SearchLogRes](#SearchLogRes)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "_id": "606cafc19c2c466b24098437",
      "status": "failed",
      "event_type": "FULL_PRICE_UPDATE",
      "marketplace_name": "myntra",
      "event": "APPLICATION_FULL_INVENTORY",
      "trace_id": "marketplaces.aa18fa48-b3e8-4e1e-8396-69488e254ace",
      "company_id": 28,
      "brand_id": 44,
      "store_id": 57,
      "item_id": 882857,
      "article_id": "57_sku_102831159-TBUCKBEIGE_301066XL",
      "seller_identifier": "SKU_102831159-TBUCKBEIGE_392826XL"
    }
  ],
  "page": {
    "type": "number",
    "size": 10,
    "current": 1,
    "has_next": true,
    "item_total": 88
  }
}
```
</details>









---



### Schemas

 
 
 #### [StatGroup](#StatGroup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | url | String? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [ErrorRes](#ErrorRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [StatsGroups](#StatsGroups)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | groups | [[StatGroup](#StatGroup)]? |  yes  |  |

---


 
 
 #### [StatsGroupComponent](#StatsGroupComponent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | url | String? |  yes  |  |
 | title | String? |  yes  |  |
 | type | String? |  yes  |  |
 | filters | [String: Any]? |  yes  |  |

---


 
 
 #### [StatsGroupComponents](#StatsGroupComponents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | components | [[StatsGroupComponent](#StatsGroupComponent)]? |  yes  |  |

---


 
 
 #### [StatsRes](#StatsRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | title | String? |  yes  |  |
 | type | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [ReceivedAt](#ReceivedAt)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |

---


 
 
 #### [AbandonCartsDetail](#AbandonCartsDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | propertiesCartId | String? |  yes  |  |
 | contextTraitsFirstName | String? |  yes  |  |
 | contextTraitsLastName | String? |  yes  |  |
 | contextTraitsPhoneNumber | String? |  yes  |  |
 | contextTraitsEmail | String? |  yes  |  |
 | contextAppApplicationId | String? |  yes  |  |
 | propertiesBreakupValuesRawTotal | String? |  yes  |  |
 | receivedAt | [ReceivedAt](#ReceivedAt)? |  yes  |  |

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


 
 
 #### [AbandonCartsList](#AbandonCartsList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AbandonCartsDetail](#AbandonCartsDetail)]? |  yes  |  |
 | cartTotal | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [AbandonCartDetail](#AbandonCartDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | cartValue | String? |  yes  |  |
 | articles | [[String: Any]]? |  yes  |  |
 | breakup | [String: Any]? |  yes  |  |
 | address | [String: Any]? |  yes  |  |

---


 
 
 #### [ExportJobReq](#ExportJobReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceName | String? |  yes  |  |
 | startTime | String? |  yes  |  |
 | endTime | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | traceId | String? |  yes  |  |

---


 
 
 #### [ExportJobRes](#ExportJobRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | jobId | String? |  yes  |  |

---


 
 
 #### [ExportJobStatusRes](#ExportJobStatusRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | jobId | String? |  yes  |  |
 | downloadUrl | String? |  yes  |  |

---


 
 
 #### [GetLogsListReq](#GetLogsListReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceName | String? |  yes  |  |
 | startDate | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | endDate | String? |  yes  |  |

---


 
 
 #### [MkpLogsResp](#MkpLogsResp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startTimeIso | String? |  yes  |  |
 | endTimeIso | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | traceId | String? |  yes  |  |
 | count | String? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [GetLogsListRes](#GetLogsListRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[MkpLogsResp](#MkpLogsResp)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SearchLogReq](#SearchLogReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceName | String? |  yes  |  |
 | startDate | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | identifier | String? |  yes  |  |
 | identifierValue | String? |  yes  |  |

---


 
 
 #### [LogInfo](#LogInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | status | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | marketplaceName | String? |  yes  |  |
 | event | String? |  yes  |  |
 | traceId | String? |  yes  |  |
 | companyId | Double? |  yes  |  |
 | brandId | Double? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | storeId | Double? |  yes  |  |
 | itemId | Double? |  yes  |  |
 | articleId | String? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |

---


 
 
 #### [SearchLogRes](#SearchLogRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[LogInfo](#LogInfo)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---



