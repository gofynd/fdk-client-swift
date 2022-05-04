



##### [Back to Public docs](./README.md)

## Inventory Methods

* [getConfigByApiKey](#getconfigbyapikey)
* [getApiKey](#getapikey)
* [getJobByCode](#getjobbycode)
* [getJobConfigByIntegrationType](#getjobconfigbyintegrationtype)
* [getJobCodesMetrics](#getjobcodesmetrics)
* [saveJobCodesMetrics](#savejobcodesmetrics)



## Methods with example and description


#### getConfigByApiKey
Get Slingshot Configuration Of  A Company




```swift
inventory.getConfigByApiKey(apikey: apikey) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| apikey | String | yes | Api key |  



REST Endpoint that returns all configuration detail of a company

*Returned Response:*




[ResponseEnvelopeSlingshotConfigurationDetail](#ResponseEnvelopeSlingshotConfigurationDetail)

Successful operation




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getApiKey
Get Slingshot Configuration Of  A Company




```swift
inventory.getApiKey(userName: userName, password: password) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| userName | String | yes | Integration id |   
| password | String | yes | company/store token |  



REST Endpoint that returns apikey by username by password

*Returned Response:*




[ResponseEnvelopeObject](#ResponseEnvelopeObject)

Successful operation




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getJobByCode
Get Job Config By Code




```swift
inventory.getJobByCode(code: code) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| code | String | yes | Job Code |  



REST Endpoint that returns job config by code

*Returned Response:*




[ResponseEnvelopeJobConfigDTO](#ResponseEnvelopeJobConfigDTO)

Successful operation




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getJobConfigByIntegrationType
Get Job Configs By Integration Type




```swift
inventory.getJobConfigByIntegrationType(integrationType: integrationType, disable: disable) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| integrationType | String | yes | Integration Type |   
| disable | Bool? | no | JobConfig current state |  



REST Endpoint that returns all job Configs by Integration Type

*Returned Response:*




[ResponseEnvelopeListJobConfigDTO](#ResponseEnvelopeListJobConfigDTO)

Successful operation




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getJobCodesMetrics
Find all the JobCodes from Metrics Collection based on the field Values




```swift
inventory.getJobCodesMetrics(dailyJob: dailyJob, jobCode: jobCode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| dailyJob | Bool? | no | Daily Job Flag |   
| jobCode | String? | no | Email Job Code |  



Endpoint to return all JobCodes present in Metrics Collection

*Returned Response:*




[ResponseEnvelopeObject](#ResponseEnvelopeObject)

Successful operation




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### saveJobCodesMetrics
Save JobCode Metrics




```swift
inventory.saveJobCodesMetrics(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EmailJobMetrics | yes | Request body |


Endpoint to save JobCode Metrics

*Returned Response:*




[ResponseEnvelopeEmailJobMetrics](#ResponseEnvelopeEmailJobMetrics)

JobCode Metrics entry Created Successfully




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [GCompany](#GCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | integration | String? |  yes  |  |
 | level | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | opted | Bool? |  yes  |  |
 | permissions | [String]? |  yes  |  |
 | token | String? |  yes  |  |
 | name | String? |  yes  |  |
 | stores | [[GStore](#GStore)]? |  yes  |  |
 | gstores | [[GStore](#GStore)]? |  yes  |  |

---


 
 
 #### [GStore](#GStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | integration | String? |  yes  |  |
 | level | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | opted | Bool? |  yes  |  |
 | permissions | [String]? |  yes  |  |
 | token | String? |  yes  |  |
 | code | String? |  yes  |  |
 | name | String? |  yes  |  |
 | data | [StoreData](#StoreData)? |  yes  |  |

---


 
 
 #### [Integration](#Integration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | description | String? |  yes  |  |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | meta | [[Metum](#Metum)]? |  yes  |  |

---


 
 
 #### [Metum](#Metum)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeSlingshotConfigurationDetail](#ResponseEnvelopeSlingshotConfigurationDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | [SlingshotConfigurationDetail](#SlingshotConfigurationDetail)? |  yes  |  |
 | payload | [SlingshotConfigurationDetail](#SlingshotConfigurationDetail)? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SlingshotConfigurationDetail](#SlingshotConfigurationDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | integration | [Integration](#Integration)? |  yes  |  |
 | companies | [[GCompany](#GCompany)]? |  yes  |  |

---


 
 
 #### [StoreData](#StoreData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locationId | String? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeObject](#ResponseEnvelopeObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | [String: Any]? |  yes  |  |
 | payload | [String: Any]? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [DataTresholdDTO](#DataTresholdDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minPrice | Double? |  yes  |  |
 | safeStock | Int? |  yes  |  |
 | periodThreshold | Int? |  yes  |  |
 | periodThresholdType | String? |  yes  |  |
 | periodTypeList | [[GenericDTO](#GenericDTO)]? |  yes  |  |

---


 
 
 #### [GenericDTO](#GenericDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [JobConfigDTO](#JobConfigDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | integration | String |  no  |  |
 | integrationData | [String: Any]? |  yes  |  |
 | companyName | String? |  yes  |  |
 | companyId | Int |  no  |  |
 | taskDetails | [TaskDTO](#TaskDTO)? |  yes  |  |
 | thresholdDetails | [DataTresholdDTO](#DataTresholdDTO)? |  yes  |  |
 | jobCode | String? |  yes  |  |
 | alias | String? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeJobConfigDTO](#ResponseEnvelopeJobConfigDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | [JobConfigDTO](#JobConfigDTO)? |  yes  |  |
 | payload | [JobConfigDTO](#JobConfigDTO)? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [TaskDTO](#TaskDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | Int? |  yes  |  |
 | groupList | [[GenericDTO](#GenericDTO)]? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeListJobConfigDTO](#ResponseEnvelopeListJobConfigDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | [[JobConfigDTO](#JobConfigDTO)]? |  yes  |  |
 | payload | [[JobConfigDTO](#JobConfigDTO)]? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [EmailJobMetrics](#EmailJobMetrics)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | executed | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | jobCode | String? |  yes  |  |
 | dailyJob | Bool? |  yes  |  |
 | lastExecutedOn | String? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeEmailJobMetrics](#ResponseEnvelopeEmailJobMetrics)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | [EmailJobMetrics](#EmailJobMetrics)? |  yes  |  |
 | payload | [EmailJobMetrics](#EmailJobMetrics)? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---



