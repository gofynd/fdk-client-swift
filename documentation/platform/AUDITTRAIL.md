



##### [Back to Platform docs](./README.md)

## AuditTrail Methods
Audit Logging Service that logs the crucial updates on the Platform
* [getAuditLogs](#getauditlogs)
* [createAuditLog](#createauditlog)
* [getAuditLog](#getauditlog)
* [getEntityTypes](#getentitytypes)



## Methods with example and description


#### getAuditLogs
Get paginated audit logs




```swift
client.audittrail.getAuditLogs(qs: qs) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| qs | String | yes | Logs Query |  



Get a paginated set of logs that can be filtered using the available set of parameters and get the relevant group of logs

*Returned Response:*




[LogSchemaResponse](#LogSchemaResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "docs": [
      {
        "entity": {
          "type": "update-shipment-status",
          "id": "16660872182851894278",
          "action": "update"
        },
        "modifier": {
          "user_id": "a8d7a69b4cd980acc5d2455c",
          "as_administrator": true,
          "user_details": {
            "first_name": "Paul",
            "last_name": "Lobo",
            "full_name": "Paul Lobo",
            "email": "paullobo@gofynd.com"
          }
        },
        "_id": "634eef735e84e7e1b09aa07c",
        "application": null,
        "date": "2022-10-18T18:24:51.329Z",
        "created_at": "2022-10-18T18:24:51.400Z",
        "modified_at": "2022-10-18T18:24:51.400Z"
      }
    ]
  }
}
```
</details>

</details>









---


#### createAuditLog
Create logs for auditing later on




```swift
client.audittrail.createAuditLog(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | RequestBodyAuditLog | yes | Request body |


Create a log instance that stores all the relevant info to be logged

*Returned Response:*




[CreateLogResponse](#CreateLogResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "message": "Audit log recorded successfully !",
    "internal_message": "Audit log queued"
  }
}
```
</details>

</details>









---


#### getAuditLog
Get audit log




```swift
client.audittrail.getAuditLog(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | log uuid |  



Get detailed log information by their id

*Returned Response:*




[LogSchemaResponse](#LogSchemaResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "entity": {
      "type": "update-shipment-status",
      "id": "16660872182851894278",
      "action": "update"
    },
    "modifier": {
      "user_id": "a8d7a69b4cd980acc5d2455c",
      "as_administrator": true,
      "user_details": {
        "first_name": "Paul",
        "last_name": "Lobo",
        "full_name": "Paul Lobo",
        "email": "paullobo@gofynd.com"
      }
    },
    "device_info": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36"
    },
    "location": {
      "IP": "103.173.241.155"
    },
    "_id": "634eef735e84e7e1b09aa07c",
    "company": 1,
    "application": null,
    "sessions": "",
    "date": "2022-10-18T18:24:51.329Z",
    "logs": {
      "request": {
        "status_update": {
          "bags": [
            403501,
            403502,
            403503
          ],
          "status": "bag_confirmed"
        }
      },
      "response": {
        "shipments": {
          "16660872182851894278": {
            "status": true,
            "error": "",
            "message": [
              "Requested change is being performed"
            ]
          }
        },
        "error_shipments": []
      }
    },
    "created_at": "2022-10-18T18:24:51.400Z",
    "modified_at": "2022-10-18T18:24:51.400Z",
    "meta": {
      "browser": {
        "name": "Chrome",
        "version": "106.0.0.0",
        "major": "106"
      },
      "device": {},
      "cpu": {},
      "os": {
        "name": "Mac OS",
        "version": "10.15.7"
      },
      "engine": {
        "name": "Blink",
        "version": "106.0.0.0"
      }
    }
  }
}
```
</details>

</details>









---


#### getEntityTypes
Get entity types




```swift
client.audittrail.getEntityTypes() { (response, error) in
    // Use response
}
```






Get a consolidated list of entity types from all the logs stored on the db, which further helps to filter the logs better

*Returned Response:*




[EntityTypesResponse](#EntityTypesResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "entity_value:\"sales-channel\"": null,
        "display_name": "Sales Channel"
      },
      {
        "entity_value:\"shipment-update\"": null,
        "display_name": "Shipment Update"
      }
    ]
  }
}
```
</details>

</details>









---



### Schemas

 
 
 #### [RequestBodyAuditLog](#RequestBodyAuditLog)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logMeta | [LogMetaObj](#LogMetaObj) |  no  |  |
 | logPayload | [String: Any] |  no  |  |

---


 
 
 #### [CreateLogResponse](#CreateLogResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | internalMessage | String? |  yes  |  |

---


 
 
 #### [LogMetaObj](#LogMetaObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifier | [String: Any]? |  yes  |  |
 | application | String? |  yes  |  |
 | entity | [EntityObject](#EntityObject)? |  yes  |  |
 | deviceInfo | [String: Any]? |  yes  |  |
 | location | [String: Any]? |  yes  |  |

---


 
 
 #### [EntityObject](#EntityObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |
 | action | String? |  yes  |  |

---


 
 
 #### [LogSchemaResponse](#LogSchemaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | docs | [[LogDocs](#LogDocs)]? |  yes  |  |

---


 
 
 #### [LogDocs](#LogDocs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entity | [EntityObj](#EntityObj)? |  yes  |  |
 | modifier | [Modifier](#Modifier)? |  yes  |  |
 | deviceInfo | [DeviceInfo](#DeviceInfo)? |  yes  |  |
 | location | [Location](#Location)? |  yes  |  |
 | id | String? |  yes  |  |
 | company | String? |  yes  |  |
 | application | String? |  yes  |  |
 | sessions | String? |  yes  |  |
 | date | String? |  yes  |  |
 | logs | [String: Any]? |  yes  |  |

---


 
 
 #### [EntityObj](#EntityObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |
 | action | String? |  yes  |  |
 | entityDetails | [String: Any]? |  yes  |  |

---


 
 
 #### [Modifier](#Modifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | asAdministrator | Bool? |  yes  |  |
 | userDetails | [String: Any]? |  yes  |  |

---


 
 
 #### [DeviceInfo](#DeviceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userAgent | String? |  yes  |  |
 | extraMeta | [String: Any]? |  yes  |  |

---


 
 
 #### [Location](#Location)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | extraMeta | [String: Any]? |  yes  |  |

---


 
 
 #### [BadRequest](#BadRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Failure message. |

---


 
 
 #### [ResourceNotFound](#ResourceNotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Resource not found with {id} |

---


 
 
 #### [InternalServerError](#InternalServerError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Internal server Server error |
 | code | String? |  yes  | Error code |

---


 
 
 #### [EntityTypesResponse](#EntityTypesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EntityTypeObj](#EntityTypeObj)]? |  yes  |  |

---


 
 
 #### [EntityTypeObj](#EntityTypeObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityValue | String? |  yes  |  |
 | displayName | String? |  yes  |  |

---



