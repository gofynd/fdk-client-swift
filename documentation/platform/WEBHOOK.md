



##### [Back to Platform docs](./README.md)

## Webhook Methods
This service provides functionality to emits different events to the subscribed webhook url's. It auto retry three times for all the failed events after certain interval as well as you can also retry manually the failed events and can view the reports.

Default
* [manualRetryOfFailedEvent](#manualretryoffailedevent)
* [getEventCounts](#geteventcounts)
* [getManualRetryStatus](#getmanualretrystatus)
* [manualRetryCancel](#manualretrycancel)
* [downloadDeliveryReport](#downloaddeliveryreport)
* [pingWebhook](#pingwebhook)
* [getReportFilters](#getreportfilters)
* [getHistoricalReports](#gethistoricalreports)
* [cancelJobByName](#canceljobbyname)
* [getDeliveryReports](#getdeliveryreports)
* [fetchAllEventConfigurations](#fetchalleventconfigurations)
* [registerSubscriberToEvent](#registersubscribertoevent)
* [getSubscribersByCompany](#getsubscribersbycompany)
* [updateSubscriberConfig](#updatesubscriberconfig)
* [getSubscriberById](#getsubscriberbyid)
* [getSubscribersByExtensionId](#getsubscribersbyextensionid)




## Methods with example and description



#### manualRetryOfFailedEvent
Initiate a manual retry for event processing.




```swift
platformClient.webhook.manualRetryOfFailedEvent(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | RetryEventRequest | yes | Request body |


Initiates a manual retry for event processing for a specific company. This endpoint allows the user to specify the date range (start_date and end_date) within which the events should be retried.


*Returned Response:*




[RetrySuccessResponse](#RetrySuccessResponse)

Initiates a manual retry for event processing for a specific company. This endpoint allows the user to specify the date range (start_date and end_date) within which the events should be retried.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "message": "Manual Retry Processed Started Successfully"
  }
}
```
</details>

</details>









---


#### getEventCounts
Get the count of failed events for a company within a specified date range.




```swift
platformClient.webhook.getEventCounts(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | RetryEventRequest | yes | Request body |


Retrieves the count of failed events for a specific company within the specified date range. The user can filter the count based on specific event types if provided.


*Returned Response:*




[RetryCountResponse](#RetryCountResponse)

Initiates a manual retry for event processing for a specific company. This endpoint allows the user to specify the date range (start_date and end_date) within which the events should be retried.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "status": "FAILED",
        "count": 10
      }
    ]
  }
}
```
</details>

</details>









---


#### getManualRetryStatus
Get the retry status for a company's failed events.




```swift
platformClient.webhook.getManualRetryStatus() { (response, error) in
    // Use response
}
```






Retrieves the status of retry for a specific company's failed events. This endpoint returns the total number of events, the count of successfully retried events, the count of failed retry attempts, and the overall status of the retry process.


*Returned Response:*




[RetryStatusResponse](#RetryStatusResponse)

Successful response with the retry status.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "total_event": 100,
    "success_count": 60,
    "failure_count": 40,
    "status": "in_progress"
  }
}
```
</details>

</details>









---


#### manualRetryCancel
Cancel the active manual retry for a company's failed events.




```swift
platformClient.webhook.manualRetryCancel() { (response, error) in
    // Use response
}
```






Cancels the active manual retry for a specific company's failed events. If a manual retry is currently in progress, it will be cancelled.


*Returned Response:*




[String](#String)

Manual retry cancelled successfully.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": "Events cancelled successfully"
}
```
</details>

</details>









---


#### downloadDeliveryReport
Download processed events report for a company.




```swift
platformClient.webhook.downloadDeliveryReport(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EventProcessRequest | yes | Request body |


Download reports for a specific company based on the provided filters.


*Returned Response:*




[DownloadReportResponse](#DownloadReportResponse)

Successfully downloaded the report.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "file_name": "exportJMehD_1689675047609"
  }
}
```
</details>

</details>









---


#### pingWebhook
Ping and validate webhook url.




```swift
platformClient.webhook.pingWebhook(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PingWebhook | yes | Request body |


Ping and validate webhook url.


*Returned Response:*




[PingWebhookResponse](#PingWebhookResponse)

Successfully received ping for the provided webhook url.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "status": "FAILED",
    "message": "Request failed with status code 429",
    "code": 200
  }
}
```
</details>

</details>









---


#### getReportFilters
Get filters for a company.




```swift
platformClient.webhook.getReportFilters(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ReportFiltersPayload | yes | Request body |


Retrieve filters for a specific company based on the provided subscriber IDs.


*Returned Response:*




[[ReportFilterResponse]](#[ReportFilterResponse])

Successfully retrieved the filters.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": [
    {
      "filter_name": "Event",
      "values": [
        {
          "text": "article.create-v1 (company)",
          "value": {
            "event_name": "article",
            "event_type": "create",
            "event_category": "company",
            "version": "1"
          }
        }
      ]
    }
  ]
}
```
</details>

</details>









---


#### getHistoricalReports
Get report download history.




```swift
platformClient.webhook.getHistoricalReports(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | HistoryPayload | yes | Request body |


Retrieve history reports for a specific company based on the provided filters.


*Returned Response:*




[HistoryResponse](#HistoryResponse)

It will give list of all the reports that was downloaded.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": [
    {
      "id": 25,
      "association": {
        "company_id": 24
      },
      "filters": {
        "status": "FAILED",
        "end_date": "2023-07-18T09:38:07.000Z",
        "start_date": "2023-07-17T09:38:07.000Z",
        "subscribers": [
          40
        ]
      },
      "filename": "exportJMehD_1689675047609",
      "status": "COMPLETED",
      "upload_service_response": {
        "cdn": {
          "urls": [
            {
              "url": "https://storage.googleapis.com/fynd-data-platform-fynd-x0/fp-analytics-query-result/exportJMehD_1689675047609/000000000000.csv.gz?GoogleAccessId=dms-to-bq%40fynd-1088.iam.gserviceaccount.com&Expires=1692267060&Signature=aPhTRMOJswVhx5jTYF7JV42aPQKJ4Mkzv9vJr8zqrbpso00GytuhmBnpP1Gxt%2BoTnIINyWUWAuchlm6paS9yKFrjCXemsqSM0hqTA8T0MUjng3swZAtZuWK4dVK2jMyOv88l1Xn8tkrwOFo7ohG3scFwgjplrU%2FkMUNZqxw4fdgdUUXZ%2BJrnGC5jlGkz5PTooRtForUXtTkA8Kf9mJvX3F6f6p5I2VvhzmXHGMabavEjgZ56JUe2%2B0o5POs4jN0s%2F6fZGOz4hhLa9hMIyQpjoodbcGO%2BRCKukxRbY1s00%2F1WNGLLYYuU4bvqtME60rCnj0FHEmbte4Tr73SmOU4xwg%3D%3D",
              "name": "000000000000.csv.gz"
            }
          ]
        }
      },
      "created_on": "2023-07-18T10:10:49.189Z",
      "updated_on": "2023-07-18T10:10:50.798Z",
      "message": "Completed in less than 1 min"
    }
  ]
}
```
</details>

</details>









---


#### cancelJobByName
Cancel a report export.




```swift
platformClient.webhook.cancelJobByName(filename: filename) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| filename | String | yes |  |  



Cancel the export of a specific report for a company.


*Returned Response:*




[CancelResponse](#CancelResponse)

Report export canceled successfully.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "code": 200
  }
}
```
</details>

</details>









---


#### getDeliveryReports
Get processed events report for a company.




```swift
platformClient.webhook.getDeliveryReports(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EventProcessRequest | yes | Request body |


Retrieve a list of processed events for a specific company based on the provided filters.


*Returned Response:*




[EventProcessReports](#EventProcessReports)

Successfully retrieved the processed events report.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "rows": [
      {
        "event_name": "article.create.v1.application",
        "response_code": 404,
        "response_message": "Not Found",
        "data": "{}",
        "attempt": 3,
        "last_attempted_on": 1696835661617,
        "status": "FAILED",
        "name": "sub23",
        "webhook_url": "https://webhook.site/512b843c-4a3b-4263-9acf-6fc9ad50c042",
        "response_time": "20000,",
        "message_id": "tYYGTlhqxW7byvmDEIqTXOMmGoF8O5zAZ87IT3TV8DA=",
        "event_trace_id": "[\"wildrider.c6a8c2b0-659f-11ee-b7f8-ba52e867b4c8\"]"
      }
    ]
  }
}
```
</details>

</details>









---


#### fetchAllEventConfigurations
Get All Webhook Events.




```swift
platformClient.webhook.fetchAllEventConfigurations() { (response, error) in
    // Use response
}
```






To fetch all webhook events.


*Returned Response:*




[EventConfigResponse](#EventConfigResponse)

Successfully received ping for the provided webhook url.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "event_configs": [
      {
        "id": 1,
        "event_name": "article",
        "event_type": "create",
        "event_category": "application",
        "version": "1",
        "display_name": "article",
        "description": "This event gets triggered when an article is created",
        "event_schema": null,
        "created_on": "2021-12-20T17:38:22.922Z",
        "updated_on": "2023-07-26T12:30:30.930Z"
      }
    ]
  }
}
```
</details>

</details>









---


#### registerSubscriberToEvent
Register Subscriber.




```swift
platformClient.webhook.registerSubscriberToEvent(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SubscriberConfig | yes | Request body |


Register Subscriber.


*Returned Response:*




[SubscriberConfigResponse](#SubscriberConfigResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "name": "xyz webhook",
    "webhook_url": "https://xyz.requestcatcher.com/test",
    "association": {
      "company_id": 1,
      "extension_id": "64affd97cbddb85348ca8f93",
      "application_id": [
        "63a0490757475baff6154585",
        "63a42b512df5d4731c5eb601"
      ]
    },
    "custom_headers": {},
    "status": "active",
    "email_id": "axyz@gofynd.com",
    "auth_meta": {},
    "event_id": [
      10,
      11,
      17
    ]
  }
}
```
</details>

</details>









---


#### getSubscribersByCompany
Get Subscribers By CompanyId.




```swift
platformClient.webhook.getSubscribersByCompany(pageNo: pageNo, pageSize: pageSize, extensionId: extensionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Page Number |   
| pageSize | Int? | no | Page Size |   
| extensionId | String? | no | extension_id |  



Get Subscribers By Company ID.


*Returned Response:*




[SubscriberConfigList](#SubscriberConfigList)

Subscribers By Company ID.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "id": 1,
        "name": "sub23",
        "webhook_url": "https://webhook.site/512b843c-4a3b-4263-9acf-6fc9ad50c042",
        "association": {
          "company_id": 1,
          "application_id": [
            "64aed377b1fd04565d0dff30",
            "64c00b72c07acacc1357503b",
            "64c0ff70eb99eb4a878a7f81",
            "64c117dbeb99eb4a878a9621",
            "000000000000000000000001",
            "000000000000000000000004"
          ],
          "criteria": "SPECIFIC-EVENTS"
        },
        "status": "inactive",
        "custom_headers": {},
        "auth_meta": {
          "type": "hmac",
          "secret": "test1234"
        },
        "email_id": "nikhil@gmail112.com",
        "type": null,
        "created_on": "2023-07-26T12:30:30.235Z",
        "updated_on": "2023-07-31T14:45:50.860Z",
        "modified_by": "Shailendrapal Shekhawat",
        "event_configs": [
          {
            "id": 1,
            "event_name": "article",
            "event_type": "create",
            "event_category": "application",
            "version": "1",
            "display_name": "article",
            "description": "This event gets triggered when an article is created",
            "event_schema": {},
            "created_on": "2021-12-20T17:38:22.922Z",
            "updated_on": "2023-07-26T12:30:30.930Z",
            "subscriber_event_mapping": {
              "id": 765,
              "event_id": 1,
              "subscriber_id": 1,
              "created_on": "2023-07-26T12:30:30.305Z"
            }
          }
        ]
      }
    ],
    "page": {
      "current": 1,
      "has_next": false,
      "has_previous": false,
      "item_total": 1,
      "size": 10,
      "type": "number"
    }
  }
}
```
</details>

</details>









---


#### updateSubscriberConfig
Update Subscriber




```swift
platformClient.webhook.updateSubscriberConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SubscriberConfig | yes | Request body |


Update Subscriber

*Returned Response:*




[SubscriberConfigResponse](#SubscriberConfigResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "id": 35,
    "name": "xyz webhook",
    "webhook_url": "https://xyz.requestcatcher.com/test",
    "association": {
      "company_id": 2,
      "application_id": [
        "63a0490757475baff6154585",
        "63a42b512df5d4731c5eb601"
      ]
    },
    "custom_headers": {},
    "status": "active",
    "email_id": "axyz@gofynd.com",
    "auth_meta": {},
    "event_id": [
      10,
      11,
      17
    ]
  }
}
```
</details>

</details>









---


#### getSubscriberById
Get Subscriber By Subscriber ID




```swift
platformClient.webhook.getSubscriberById(subscriberId: subscriberId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| subscriberId | Int | yes | subscriber id |  



Get Subscriber By Subscriber ID

*Returned Response:*




[SubscriberResponse](#SubscriberResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "id": 1,
    "name": "praveen's webhook",
    "webhook_url": "https://webhook.site/67493d35-6468-4c0a-8226-9a50954eb4c3",
    "association": {
      "company_id": 1,
      "application_id": [],
      "criteria": "EMPTY"
    },
    "status": "active",
    "custom_headers": {},
    "auth_meta": {},
    "email_id": "abc@gofynd.com",
    "type": null,
    "created_on": "2023-06-07T06:57:24.567Z",
    "updated_on": "2023-06-07T06:57:24.567Z",
    "modified_by": "praveen",
    "event_configs": [
      {
        "id": 10,
        "event_name": "article",
        "event_type": "create",
        "event_category": "company",
        "version": "1",
        "display_name": "article",
        "description": "This event gets triggered when article is created",
        "type": null,
        "event_schema": {},
        "created_on": "2021-07-05T11:16:18.175Z",
        "updated_on": "2023-01-02T05:04:24.492Z",
        "modified_by": "praveen",
        "subscriber_event_mapping": {
          "id": 77,
          "event_id": 10,
          "subscriber_id": 35,
          "created_on": "2023-06-07T06:57:24.592Z"
        }
      }
    ]
  }
}
```
</details>

</details>









---


#### getSubscribersByExtensionId
Get Subscribers By Extension ID




```swift
platformClient.webhook.getSubscribersByExtensionId(pageNo: pageNo, pageSize: pageSize, extensionId: extensionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Page Number |   
| pageSize | Int? | no | Page Size |   
| extensionId | String | yes | extension_id |  



Get Subscribers By ExtensionID

*Returned Response:*




[SubscriberConfigList](#SubscriberConfigList)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "id": 3,
        "name": "64b3dc661a1b16dea7fadc22",
        "webhook_url": "https://reviews.extensions.fyndx1.de/ext/reviews-webhook",
        "association": {
          "company_id": 47,
          "extension_id": "64b3dc661a1b16dea7fadc22",
          "application_id": [],
          "criteria": "ALL"
        },
        "status": "active",
        "custom_headers": {},
        "auth_meta": {
          "type": "hmac",
          "secret": "9gX_S6e28DY1mRP"
        },
        "email_id": "devas@gofynd.com",
        "type": null,
        "created_on": "2023-07-26T12:30:41.525Z",
        "updated_on": "2023-08-01T07:21:33.982Z",
        "modified_by": "Sneha Mohite",
        "event_configs": [
          {
            "id": 84,
            "event_name": "shipment",
            "event_type": "update",
            "event_category": "application",
            "version": "1",
            "display_name": "shipment",
            "description": "This event gets triggered when shipment is update",
            "event_schema": {},
            "created_on": "2021-07-02T13:25:34.804Z",
            "updated_on": "2021-07-02T13:25:34.804Z",
            "subscriber_event_mapping": {
              "id": 779,
              "event_id": 84,
              "subscriber_id": 3,
              "created_on": "2023-07-26T12:30:41.532Z"
            }
          }
        ]
      }
    ],
    "page": {
      "current": 1,
      "has_next": false,
      "has_previous": false,
      "item_total": 1,
      "size": 10,
      "type": "number"
    }
  }
}
```
</details>

</details>









---




### Schemas

 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  | Error message describing the reason for the failure. |

---


 
 
 #### [Event](#Event)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eventName | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | eventCategory | String? |  yes  |  |
 | version | String? |  yes  |  |

---


 
 
 #### [RetryEventRequest](#RetryEventRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | searchText | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | startDate | String? |  yes  |  |
 | subscriberIds | [Int]? |  yes  |  |
 | event | [[Event](#Event)]? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | count | Int? |  yes  |  |

---


 
 
 #### [RetryCountResponse](#RetryCountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Item](#Item)]? |  yes  |  |

---


 
 
 #### [RetrySuccessResponse](#RetrySuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [Err](#Err)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | msg | String? |  yes  |  |
 | param | String? |  yes  |  |
 | location | String? |  yes  |  |

---


 
 
 #### [RetryFailureResponse](#RetryFailureResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | err | [[Err](#Err)]? |  yes  |  |

---


 
 
 #### [RetryStatusResponse](#RetryStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalEvent | Int? |  yes  | The total number of events that require retry. |
 | successCount | Int? |  yes  | The count of successfully retried events. |
 | failureCount | Int? |  yes  | The count of failed retry attempts. |
 | status | String? |  yes  | The overall status of the retry process (e.g., "completed"). |

---


 
 
 #### [EventProcessRequest](#EventProcessRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | searchText | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | startDate | String? |  yes  |  |
 | subscriberIds | [Int]? |  yes  |  |
 | status | String? |  yes  |  |
 | event | [[Event](#Event)]? |  yes  |  |

---


 
 
 #### [DownloadReportResponse](#DownloadReportResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fileName | String? |  yes  |  |

---


 
 
 #### [EventProcessReports](#EventProcessReports)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rows | [[EventProcessReportObject](#EventProcessReportObject)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [EventProcessReportObject](#EventProcessReportObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eventName | String? |  yes  | The name of the processed event. |
 | responseCode | Int? |  yes  | The response code of the event. |
 | responseMessage | String? |  yes  | The response message of the event. |
 | data | [String: Any]? |  yes  | The data associated with the event. |
 | attempt | Int? |  yes  | The attempt number of the event. |
 | lastAttemptedOn | Int? |  yes  | The timestamp of the last attempted event. |
 | status | String? |  yes  | The status of the event (e.g., "FAILED"). |
 | name | String? |  yes  | The name of the event. |
 | webhookUrl | String? |  yes  | The webhook URL associated with the event. |
 | responseTime | Int? |  yes  | The response time of the event. |
 | messageId | String? |  yes  |  |
 | eventTraceId | String? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Double? |  yes  | The current page number. |
 | hasNext | Bool? |  yes  | Indicates if there is a next page. |
 | hasPrevious | Bool? |  yes  | Indicates if there is a previous page. |
 | totalPage | Int? |  yes  |  |
 | itemTotal | Double? |  yes  | The total number of items. |
 | size | Double? |  yes  | The number of items per page. |
 | type | String? |  yes  | Type of the response (e.g., "number"). |

---


 
 
 #### [PingWebhook](#PingWebhook)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | webhookUrl | String? |  yes  | The URL of the subscriber's webhook to ping. |
 | authMeta | [String: Any]? |  yes  | Authentication metadata (if required by the subscriber). |
 | customHeaders | [String: Any]? |  yes  | Custom headers to include in the ping request. |

---


 
 
 #### [PingWebhookResponse](#PingWebhookResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  | The status of the ping (e.g., "SUCCESS"). |
 | message | String? |  yes  | An optional message related to the ping. |
 | code | Int? |  yes  | The HTTP status code of the ping response (e.g., 200). |

---


 
 
 #### [EventConfig](#EventConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | eventName | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | eventCategory | String? |  yes  |  |
 | eventSchema | [String: Any]? |  yes  |  |
 | version | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | description | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | updatedOn | String? |  yes  |  |

---


 
 
 #### [EventConfigResponse](#EventConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eventConfigs | [[EventConfig](#EventConfig)]? |  yes  |  |

---


 
 
 #### [ReportFiltersPayload](#ReportFiltersPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscriberIds | [Int]? |  yes  | An array of subscriber IDs for filtering filters (optional). |

---


 
 
 #### [ReportFilterResponse](#ReportFilterResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filterName | String? |  yes  | The name of the filter. |
 | values | [[String: Any]]? |  yes  |  |

---


 
 
 #### [HistoryPayload](#HistoryPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of history report (e.g., "platform"). |
 | pageNo | Int? |  yes  | The page number of the history report. |
 | pageSize | Int? |  yes  | The number of records per page. |

---


 
 
 #### [HistoryFilters](#HistoryFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | events | [String]? |  yes  |  |
 | searchText | String? |  yes  |  |
 | status | String? |  yes  | The status of the history report (e.g., "FAILED"). |
 | endDate | String? |  yes  | The end date and time of the history report. |
 | startDate | String? |  yes  | The start date and time of the history report. |
 | subscribers | [Int]? |  yes  | An array of subscriber IDs associated with the history report. |

---


 
 
 #### [Url](#Url)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  | The URL of the uploaded report file. |
 | name | String? |  yes  | The name of the uploaded report file. |

---


 
 
 #### [CdnObject](#CdnObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | urls | [[Url](#Url)]? |  yes  |  |

---


 
 
 #### [UploadServiceObject](#UploadServiceObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cdn | [CdnObject](#CdnObject)? |  yes  |  |

---


 
 
 #### [HistoryAssociation](#HistoryAssociation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | subscriberIds | [Int]? |  yes  |  |

---


 
 
 #### [HistoryItems](#HistoryItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  | The ID of the history report. |
 | association | [HistoryAssociation](#HistoryAssociation)? |  yes  |  |
 | filters | [HistoryFilters](#HistoryFilters)? |  yes  |  |
 | filename | String? |  yes  | The filename of the history report. |
 | status | String? |  yes  | The status of the history report (e.g., "COMPLETED"). |
 | uploadServiceResponse | [UploadServiceObject](#UploadServiceObject)? |  yes  |  |
 | createdOn | String? |  yes  | The date and time when the history report was created. |
 | updatedOn | String? |  yes  | The date and time when the history report was last updated. |
 | message | String? |  yes  | A message related to the history report. |

---


 
 
 #### [HistoryResponse](#HistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[HistoryItems](#HistoryItems)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [CancelResponse](#CancelResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | The HTTP status code of the response (e.g., 200). |

---


 
 
 #### [Association](#Association)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | applicationId | [String]? |  yes  |  |
 | extensionId | String? |  yes  |  |
 | criteria | String? |  yes  |  |

---


 
 
 #### [AuthMeta](#AuthMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | secret | String? |  yes  |  |

---


 
 
 #### [SubscriberResponse](#SubscriberResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | modifiedBy | String? |  yes  |  |
 | name | String? |  yes  |  |
 | webhookUrl | String? |  yes  |  |
 | association | [Association](#Association)? |  yes  |  |
 | customHeaders | [String: Any]? |  yes  |  |
 | status | [SubscriberStatus](#SubscriberStatus)? |  yes  |  |
 | emailId | String? |  yes  |  |
 | updatedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | type | String? |  yes  |  |
 | authMeta | [AuthMeta](#AuthMeta)? |  yes  |  |
 | eventConfigs | [[EventConfig](#EventConfig)]? |  yes  |  |

---


 
 
 #### [SubscriberConfig](#SubscriberConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | webhookUrl | String? |  yes  |  |
 | association | [Association](#Association)? |  yes  |  |
 | customHeaders | [String: Any]? |  yes  |  |
 | status | [SubscriberStatus](#SubscriberStatus)? |  yes  |  |
 | emailId | String? |  yes  |  |
 | authMeta | [AuthMeta](#AuthMeta)? |  yes  |  |
 | eventId | [Int]? |  yes  |  |

---


 
 
 #### [SubscriberConfigResponse](#SubscriberConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | modifiedBy | String? |  yes  |  |
 | name | String? |  yes  |  |
 | webhookUrl | String? |  yes  |  |
 | association | [Association](#Association)? |  yes  |  |
 | customHeaders | [String: Any]? |  yes  |  |
 | status | [SubscriberStatus](#SubscriberStatus)? |  yes  |  |
 | emailId | String? |  yes  |  |
 | updatedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | type | String? |  yes  |  |
 | authMeta | [AuthMeta](#AuthMeta)? |  yes  |  |
 | eventId | [Int]? |  yes  |  |

---


 
 
 #### [SubscriberConfigList](#SubscriberConfigList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SubscriberResponse](#SubscriberResponse)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---




### Enums





 #### [SubscriberStatus](#SubscriberStatus)
 Type : string

 | Name | Value | Description |
 | ---- | ----- | ----------- |
 | active | active | Status is active |
 | inactive | inactive | Status is inactive |
 | blocked | blocked | Subscriber is blocked by system due to multiple failed delivery attempts. |

---





