



##### [Back to Public docs](./README.md)

## Webhook Methods
Webhook dispatcher with retry and one event to many subscriber vice versa

Webhook event management
* [fetchAllWebhookEvents](#fetchallwebhookevents)
* [queryWebhookEventDetails](#querywebhookeventdetails)


Default
* [notifyDepricatedEvent](#notifydepricatedevent)
* [testHandlerTransformation](#testhandlertransformation)
* [validateSchema](#validateschema)




## Methods with example and description



#### fetchAllWebhookEvents
Fetch all webhook events.




```swift
publicClient.webhook.fetchAllWebhookEvents() { (response, error) in
    // Use response
}
```






Retrieve a list of all webhook events in the public server setup.

*Returned Response:*




[EventConfigResponse](#EventConfigResponse)

Success




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


#### queryWebhookEventDetails
Query webhook event details.




```swift
publicClient.webhook.queryWebhookEventDetails(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | [EventConfigBase] | yes | Request body |


Query and obtain detailed information about webhook events in the public server configurations.

*Returned Response:*




[EventConfigResponse](#EventConfigResponse)

Success




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




#### notifyDepricatedEvent
Notifies all the events that are going to depricate




```swift
publicClient.webhook.notifyDepricatedEvent() { (response, error) in
    // Use response
}
```






Notifies all the events that are subscribed and are going to deprecate or new version is available for those events

*Returned Response:*




[EventNotifier](#EventNotifier)

Success




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


#### testHandlerTransformation
Test transformation of handler




```swift
publicClient.webhook.testHandlerTransformation(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | TransformEventRequest | yes | Request body |


Test transformation of handler

*Returned Response:*




[TransformEventResponse](#TransformEventResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "event_trace_id": [
      "WheelJack.7cfeea2e-720e-11ee-8f26-ca3fc26a3fda"
    ],
    "data": {
      "event": {
        "trace_id": [
          "WheelJack.7cfeea2e-720e-11ee-8f26-ca3fc26a3fda"
        ],
        "name": "location",
        "type": "create",
        "version": "1",
        "created_timestamp": 1698111704725
      },
      "company_id": 6086,
      "contains": [
        "location"
      ],
      "payload": {
        "location": {
          "_id": "653720d892a8429b6fb9563e",
          "created_on": "2023-10-24T01:41:44.450008",
          "modified_on": "2023-10-24T01:41:44.450015"
        }
      }
    },
    "event_name": "location",
    "version": "1",
    "status": false,
    "event_type": "create",
    "service_meta": {
      "name": "WheelJack"
    },
    "association": {
      "company_id": 6086
    }
  }
}
```
</details>

</details>









---


#### validateSchema
Validate Schema for an event




```swift
publicClient.webhook.validateSchema(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ValidateSchemaRequest | yes | Request body |


Validate Schema for an event

*Returned Response:*




[ValidateSchemaResponse](#ValidateSchemaResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "status": true,
    "message": "Valid schema for this event"
  }
}
```
</details>

</details>









---




### Schemas

 
 
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


 
 
 #### [EventConfigBase](#EventConfigBase)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eventName | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | eventCategory | String? |  yes  |  |
 | version | String? |  yes  |  |

---


 
 
 #### [EventNotifier](#EventNotifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | emails | [String]? |  yes  |  |

---


 
 
 #### [EventSchema](#EventSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payload | [String: Any]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [InternalTransformEvent](#InternalTransformEvent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | traceId | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |
 | version | String? |  yes  |  |
 | createdTimestamp | Double? |  yes  |  |

---


 
 
 #### [TransformEventData](#TransformEventData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | event | [InternalTransformEvent](#InternalTransformEvent)? |  yes  |  |
 | companyId | Double? |  yes  |  |
 | contains | [String]? |  yes  |  |
 | payload | [String: Any]? |  yes  |  |

---


 
 
 #### [TransformEventServiceMeta](#TransformEventServiceMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |

---


 
 
 #### [TransformEventAssociation](#TransformEventAssociation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Double? |  yes  |  |

---


 
 
 #### [TransformEventRequest](#TransformEventRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eventName | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | eventCategory | String? |  yes  |  |
 | eventVersion | String? |  yes  |  |
 | event | [EventSchema](#EventSchema)? |  yes  |  |

---


 
 
 #### [ValidateSchemaRequest](#ValidateSchemaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eventName | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | eventCategory | String? |  yes  |  |
 | eventVersion | String? |  yes  |  |
 | event | [EventSchema](#EventSchema)? |  yes  |  |
 | eventSchema | [String: Any]? |  yes  |  |

---


 
 
 #### [ValidateSchemaResponse](#ValidateSchemaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [TransformEventResponse](#TransformEventResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eventTraceId | [String]? |  yes  |  |
 | data | [TransformEventData](#TransformEventData)? |  yes  |  |
 | eventName | String? |  yes  |  |
 | version | String? |  yes  |  |
 | status | Bool? |  yes  |  |
 | eventType | String? |  yes  |  |
 | serviceMeta | [TransformEventServiceMeta](#TransformEventServiceMeta)? |  yes  |  |
 | association | [TransformEventAssociation](#TransformEventAssociation)? |  yes  |  |

---



