



##### [Back to Platform docs](./README.md)

## AuditTrail Methods

* [getAuditLogs](#getauditlogs)
* [createAuditLog](#createauditlog)
* [getAuditLog](#getauditlog)
* [getEntityTypes](#getentitytypes)



## Methods with example and description


#### getAuditLogs
Get paginated audit logs




```swift
platformClient.audittrail.getAuditLogs(qs: qs) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| qs | String | yes | Logs Query |  



Get audit logs

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
          "type": "sales-channel-configuration",
          "id": "5dcbf6065862c28d81beb025",
          "action": "update"
        },
        "modifier": {
          "as_administrator": true,
          "user_id": "5d8391fa7f6b58553d02eb63",
          "user_details": {
            "firstName": "Hitesh",
            "email": "hiteshjha@gofynd.com"
          }
        },
        "device_info": {
          "user_agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36"
        },
        "location": {
          "IP": "103.226.87.213"
        },
        "_id": "602a1366a7486d63f1e915b2",
        "company": 61,
        "application": "5d63686df2a4f7806b76bb32",
        "sessions": "",
        "date": "2021-02-15T06:23:32.098Z",
        "logs": {
          "modified_by": "5d8391fa7f6b58553d02eb63"
        },
        "created_at": "2021-02-15T06:23:34.497Z",
        "modified_at": "2021-02-15T06:23:34.497Z",
        "meta": {
          "browser": "Linux - Chrome",
          "device": ""
        }
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
platformClient.audittrail.createAuditLog(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | RequestBodyAuditLog | yes | Request body |


Create a Audit log

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
platformClient.audittrail.getAuditLog(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | log uuid |  



Get audit logs by logs uuid

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
          "type": "sales-channel-configuration",
          "id": "5dcbf6065862c28d81beb025",
          "action": "update"
        },
        "modifier": {
          "as_administrator": true,
          "user_id": "5d8391fa7f6b58553d02eb63",
          "user_details": {
            "firstName": "Hitesh",
            "email": "hiteshjha@gofynd.com"
          }
        },
        "device_info": {
          "user_agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36"
        },
        "location": {
          "IP": "103.226.87.213"
        },
        "_id": "602a1366a7486d63f1e915b2",
        "company": 61,
        "application": "5d63686df2a4f7806b76bb32",
        "sessions": "",
        "date": "2021-02-15T06:23:32.098Z",
        "logs": {
          "modified_by": "5d8391fa7f6b58553d02eb63"
        },
        "created_at": "2021-02-15T06:23:34.497Z",
        "modified_at": "2021-02-15T06:23:34.497Z",
        "meta": {
          "browser": "Linux - Chrome",
          "device": ""
        }
      }
    ]
  }
}
```
</details>

</details>









---


#### getEntityTypes
Get entity types




```swift
platformClient.audittrail.getEntityTypes() { (response, error) in
    // Use response
}
```






Get entity types

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



