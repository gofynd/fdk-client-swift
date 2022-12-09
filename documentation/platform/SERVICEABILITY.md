



##### [Back to Platform docs](./README.md)

## Serviceability Methods
Logistics Configuration API's allows you to configure zone, application logistics and many more useful features. 
* [postApplicationServiceability](#postapplicationserviceability)
* [getApplicationServiceability](#getapplicationserviceability)
* [getEntityRegionView](#getentityregionview)
* [getListView](#getlistview)
* [getCompanyStoreView](#getcompanystoreview)
* [getZoneDataView](#getzonedataview)
* [updateZoneControllerView](#updatezonecontrollerview)
* [insertZoneControllerView](#insertzonecontrollerview)
* [upsertZoneControllerView](#upsertzonecontrollerview)
* [getStore](#getstore)
* [getAllStores](#getallstores)



## Methods with example and description


#### postApplicationServiceability
Zone configuration of application.




```swift
client.application("<APPLICATION_ID>").serviceability.postApplicationServiceability(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ApplicationServiceabilityConfig | yes | Request body |


This API returns serviceability config of the application.

*Returned Response:*




[ApplicationServiceabilityConfigResponse](#ApplicationServiceabilityConfigResponse)

Response Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "error": {
    "type": null,
    "value": null,
    "message": null
  },
  "success": true,
  "data": {
    "channel_id": "5d656121a81320c2e6ee2a72",
    "channel_type": "application",
    "serviceability_type": "all"
  }
}
```
</details>









---


#### getApplicationServiceability
Zone configuration of application.




```swift
client.application("<APPLICATION_ID>").serviceability.getApplicationServiceability() { (response, error) in
    // Use response
}
```






This API returns serviceability config of the application.

*Returned Response:*




[ApplicationServiceabilityConfigResponse](#ApplicationServiceabilityConfigResponse)

Response Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "error": {
    "type": null,
    "value": null,
    "message": null
  },
  "success": true,
  "data": {
    "channel_id": "5d656121a81320c2e6ee2a72",
    "channel_type": "application",
    "serviceability_type": "all"
  }
}
```
</details>









---


#### getEntityRegionView
Get country and state list




```swift
client.serviceability.getEntityRegionView(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EntityRegionView_Request | yes | Request body |


This API returns response for Entity Region View.

*Returned Response:*




[EntityRegionView_Response](#EntityRegionView_Response)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getListView
Zone List of application.




```swift
client.serviceability.getListView(pageNumber: pageNumber, pageSize: pageSize, name: name, isActive: isActive, channelIds: channelIds) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNumber | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| name | String? | no | Name of particular zone in the seller account |   
| isActive | Bool? | no | status of  zone whether active or inactive |   
| channelIds | String? | no | zones associated with the given channel ids' |  



This API returns Zone List View of the application.

*Returned Response:*




[ListViewResponse](#ListViewResponse)

Zone List of application in descending order of their last modified date.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCompanyStoreView
Company Store View of application.




```swift
client.serviceability.getCompanyStoreView(pageNumber: pageNumber, pageSize: pageSize, zoneId: zoneId, enabled: enabled, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNumber | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| zoneId | String? | no | A `zone_id` is a unique identifier for a particular zone. |   
| enabled | String? | no | select enabled/all stores. |   
| q | String? | no | search with name as a free text |  



This API returns Company Store View of the application.

*Returned Response:*




[CompanyStoreView_Response](#CompanyStoreView_Response)

Get Company Store View Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getZoneDataView
Zone Data View of application.




```swift
client.serviceability.getZoneDataView(zoneId: zoneId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| zoneId | String | yes | A `zone_id` is a unique identifier for a particular zone. |  



This API returns Zone Data View of the application.

*Returned Response:*




[GetSingleZoneDataViewResponse](#GetSingleZoneDataViewResponse)

Get Application Zone Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateZoneControllerView
Updation of zone collections in database.




```swift
client.serviceability.updateZoneControllerView(zoneId: zoneId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| zoneId | String | yes | A `zone_id` is a unique identifier for a particular zone. |  
| body | ZoneUpdateRequest | yes | Request body |


This API returns response of updation of zone in mongo database.

*Returned Response:*




[ZoneSuccessResponse](#ZoneSuccessResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### insertZoneControllerView
Insertion of zone in database.




```swift
client.serviceability.insertZoneControllerView(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ZoneRequest | yes | Request body |


This API returns response of insertion of zone in mongo database.<br>Correction- `zone_id` in the path must be removed.<br> path is `/service/platform/logistics-internal/v1.0/company/{company_id}/zone/`

*Returned Response:*




[ZoneResponse](#ZoneResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### upsertZoneControllerView
GET zone from the Pincode.




```swift
client.application("<APPLICATION_ID>").serviceability.upsertZoneControllerView(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetZoneFromPincodeViewRequest | yes | Request body |


This API returns zone from the Pincode View.

*Returned Response:*




[GetZoneFromPincodeViewResponse](#GetZoneFromPincodeViewResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getStore
GET stores data




```swift
client.serviceability.getStore(storeUid: storeUid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| storeUid | Int | yes | A `store_uid` contains a specific ID of a store. |  



This API returns stores data.

*Returned Response:*




[GetStoresViewResponse](#GetStoresViewResponse)

Response status_code




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; items</i></summary>

```json
[
  {
    "uid": 2,
    "_cls": "Store",
    "address": {
      "city": "MUMBAI",
      "country": "INDIA",
      "address2": "",
      "address1": "POLARIS 2ND FLOOR, ANDHERI",
      "landmark": "",
      "state": "MAHARASHTRA",
      "pincode": 400001,
      "longitude": 72.8776559,
      "latitude": 19.0759837
    },
    "code": "HS-a0c85",
    "company_id": 2,
    "contact_numbers": [
      {
        "country_code": 91,
        "number": "9096686804"
      }
    ],
    "created_by": {
      "user_id": "605e8e86493f54a9ccaa47be",
      "username": "parvezshaikh_gofynd_com_07710"
    },
    "created_on": "2021-08-07T06:21:25.293000",
    "display_name": "Test",
    "documents": [
      {
        "type": "gst",
        "verified": true,
        "value": "27AALCA0442L1ZM",
        "legal_name": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED"
      }
    ],
    "gst_credentials": {
      "e_waybill": {
        "enabled": false
      },
      "e_invoice": {
        "enabled": false
      }
    },
    "integration_type": {
      "order": "pulse",
      "inventory": "pulse"
    },
    "logistics": {
      "dp": {
        "1": {
          "fm_priority": 1,
          "lm_priority": 1,
          "rvp_priority": 1,
          "payment_mode": "all",
          "operations": [
            "inter_city"
          ],
          "area_code": null,
          "assign_dp_from_sb": true,
          "transport_mode": "air",
          "external_account_id": null,
          "internal_account_id": "1"
        },
        "19": {
          "fm_priority": 2,
          "lm_priority": 2,
          "rvp_priority": 2,
          "payment_mode": "all",
          "operations": "inter_city",
          "area_code": null,
          "assign_dp_from_sb": true,
          "transport_mode": "air",
          "external_account_id": null,
          "internal_account_id": "19"
        }
      },
      "override": false
    },
    "manager": {
      "name": "Parvez Shaikh",
      "mobile_no": {
        "country_code": 91,
        "number": "9096686804"
      },
      "email": "parvezshaikh@gofynd.com"
    },
    "modified_by": {
      "user_id": "38ac93a8a5495305fc794e76",
      "username": "919594495254_32111"
    },
    "modified_on": "2021-08-17T14:18:10.788000",
    "name": "Test",
    "notification_emails": [
      "parvezshaikh@gofynd.com"
    ],
    "product_return_config": {
      "on_same_store": true
    },
    "stage": "verified",
    "store_type": "high_street",
    "sub_type": "store",
    "timing": [
      {
        "open": true,
        "opening": {
          "hour": 11,
          "minute": 0
        },
        "closing": {
          "hour": 21,
          "minute": 30
        },
        "weekday": "monday"
      },
      {
        "open": true,
        "opening": {
          "hour": 11,
          "minute": 0
        },
        "closing": {
          "hour": 21,
          "minute": 30
        },
        "weekday": "tuesday"
      },
      {
        "open": true,
        "opening": {
          "hour": 11,
          "minute": 0
        },
        "closing": {
          "hour": 21,
          "minute": 30
        },
        "weekday": "wednesday"
      },
      {
        "open": true,
        "opening": {
          "hour": 11,
          "minute": 0
        },
        "closing": {
          "hour": 21,
          "minute": 30
        },
        "weekday": "thursday"
      },
      {
        "open": true,
        "opening": {
          "hour": 11,
          "minute": 0
        },
        "closing": {
          "hour": 21,
          "minute": 30
        },
        "weekday": "friday"
      },
      {
        "open": true,
        "opening": {
          "hour": 11,
          "minute": 0
        },
        "closing": {
          "hour": 21,
          "minute": 30
        },
        "weekday": "saturday"
      },
      {
        "open": true,
        "opening": {
          "hour": 11,
          "minute": 0
        },
        "closing": {
          "hour": 21,
          "minute": 30
        },
        "weekday": "sunday"
      }
    ],
    "verified_by": {
      "user_id": "0",
      "username": "Silverbolt"
    },
    "verified_on": "2022-03-23T13:35:46.869000",
    "warnings": {
      "store_address": "Address: Address seems to be inappropriate this might affect the delivery."
    },
    "_custom_json": {},
    "company": 2
  }
]
```
</details>

<details>
<summary><i>&nbsp; page</i></summary>

```json
{
  "type": "number",
  "size": 2,
  "current": 1,
  "has_next": true,
  "item_total": 3276
}
```
</details>

</details>









---


#### getAllStores
GET stores data




```swift
client.serviceability.getAllStores() { (response, error) in
    // Use response
}
```






This API returns stores data.

*Returned Response:*




[GetStoresViewResponse](#GetStoresViewResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [ApplicationServiceabilityConfig](#ApplicationServiceabilityConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | serviceabilityType | String |  no  |  |

---


 
 
 #### [ApplicationServiceabilityResponse](#ApplicationServiceabilityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | serviceabilityType | String |  no  |  |
 | channelId | String |  no  |  |
 | channelType | String |  no  |  |

---


 
 
 #### [ServiceabilityErrorResponse](#ServiceabilityErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | type | String |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [ApplicationServiceabilityConfigResponse](#ApplicationServiceabilityConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [ApplicationServiceabilityResponse](#ApplicationServiceabilityResponse)? |  yes  |  |
 | success | Bool |  no  |  |
 | error | [ServiceabilityErrorResponse](#ServiceabilityErrorResponse)? |  yes  |  |

---


 
 
 #### [EntityRegionView_Request](#EntityRegionView_Request)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subType | [String] |  no  |  |
 | parentId | [String]? |  yes  |  |

---


 
 
 #### [EntityRegionView_Items](#EntityRegionView_Items)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subType | String |  no  |  |
 | name | String |  no  |  |
 | uid | String |  no  |  |

---


 
 
 #### [EntityRegionView_Error](#EntityRegionView_Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [EntityRegionView_page](#EntityRegionView_page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int |  no  |  |
 | current | Int |  no  |  |
 | type | String |  no  |  |
 | size | Int |  no  |  |
 | hasNext | Bool |  no  |  |

---


 
 
 #### [EntityRegionView_Response](#EntityRegionView_Response)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[EntityRegionView_Items](#EntityRegionView_Items)] |  no  |  |
 | success | Bool |  no  |  |
 | error | [EntityRegionView_Error](#EntityRegionView_Error) |  no  |  |
 | page | [EntityRegionView_page](#EntityRegionView_page) |  no  |  |

---


 
 
 #### [ListViewChannels](#ListViewChannels)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channelType | String |  no  |  |
 | channelId | String |  no  |  |

---


 
 
 #### [ListViewProduct](#ListViewProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | count | Int |  no  |  |

---


 
 
 #### [ListViewItems](#ListViewItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | isActive | Bool |  no  |  |
 | channels | [ListViewChannels](#ListViewChannels) |  no  |  |
 | zoneId | String |  no  |  |
 | companyId | Int |  no  |  |
 | product | [ListViewProduct](#ListViewProduct) |  no  |  |
 | pincodesCount | Int |  no  |  |
 | storesCount | Int |  no  |  |

---


 
 
 #### [ListViewSummary](#ListViewSummary)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalActiveZones | Int |  no  |  |
 | totalPincodesServed | Int |  no  |  |
 | totalZones | Int |  no  |  |

---


 
 
 #### [ZoneDataItem](#ZoneDataItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int |  no  |  |
 | type | String |  no  |  |
 | current | Int |  no  |  |
 | size | Int |  no  |  |
 | hasNext | Bool |  no  |  |

---


 
 
 #### [ListViewResponse](#ListViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ListViewItems](#ListViewItems)] |  no  |  |
 | summary | [[ListViewSummary](#ListViewSummary)] |  no  |  |
 | page | [[ZoneDataItem](#ZoneDataItem)] |  no  |  |

---


 
 
 #### [CompanyStoreView_PageItems](#CompanyStoreView_PageItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int |  no  |  |
 | current | Int |  no  |  |
 | type | String |  no  |  |
 | size | Int |  no  |  |
 | hasNext | Bool |  no  |  |

---


 
 
 #### [CompanyStoreView_Response](#CompanyStoreView_Response)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]]? |  yes  |  |
 | page | [[CompanyStoreView_PageItems](#CompanyStoreView_PageItems)] |  no  |  |

---


 
 
 #### [GetZoneDataViewChannels](#GetZoneDataViewChannels)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channelType | String |  no  |  |
 | channelId | String |  no  |  |

---


 
 
 #### [ZoneProductTypes](#ZoneProductTypes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String] |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ZoneMappingType](#ZoneMappingType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | [String]? |  yes  |  |
 | state | [String]? |  yes  |  |
 | country | String |  no  |  |

---


 
 
 #### [GetZoneDataViewItems](#GetZoneDataViewItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zoneId | String |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | companyId | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | channels | [[GetZoneDataViewChannels](#GetZoneDataViewChannels)] |  no  |  |
 | product | [ZoneProductTypes](#ZoneProductTypes) |  no  |  |
 | storeIds | [Int] |  no  |  |
 | regionType | String |  no  |  |
 | mapping | [[ZoneMappingType](#ZoneMappingType)] |  no  |  |
 | assignmentPreference | String? |  yes  |  |
 | storesCount | Int |  no  |  |
 | pincodesCount | Int |  no  |  |

---


 
 
 #### [GetSingleZoneDataViewResponse](#GetSingleZoneDataViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GetZoneDataViewItems](#GetZoneDataViewItems) |  no  |  |

---


 
 
 #### [UpdateZoneData](#UpdateZoneData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zoneId | String |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | companyId | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | channels | [[GetZoneDataViewChannels](#GetZoneDataViewChannels)] |  no  |  |
 | product | [ZoneProductTypes](#ZoneProductTypes) |  no  |  |
 | storeIds | [Int] |  no  |  |
 | regionType | String |  no  |  |
 | mapping | [[ZoneMappingType](#ZoneMappingType)] |  no  |  |
 | assignmentPreference | String? |  yes  |  |

---


 
 
 #### [ZoneUpdateRequest](#ZoneUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [UpdateZoneData](#UpdateZoneData) |  no  |  |
 | identifier | String |  no  |  |

---


 
 
 #### [ZoneSuccessResponse](#ZoneSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [CreateZoneData](#CreateZoneData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | companyId | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | channels | [[GetZoneDataViewChannels](#GetZoneDataViewChannels)] |  no  |  |
 | product | [ZoneProductTypes](#ZoneProductTypes) |  no  |  |
 | storeIds | [Int] |  no  |  |
 | regionType | String |  no  |  |
 | mapping | [[ZoneMappingType](#ZoneMappingType)] |  no  |  |
 | assignmentPreference | String? |  yes  |  |

---


 
 
 #### [ZoneRequest](#ZoneRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CreateZoneData](#CreateZoneData) |  no  |  |
 | identifier | String |  no  |  |

---


 
 
 #### [ZoneResponse](#ZoneResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | zoneId | String |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [GetZoneFromPincodeViewRequest](#GetZoneFromPincodeViewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | String |  no  |  |
 | country | String |  no  |  |

---


 
 
 #### [GetZoneFromPincodeViewResponse](#GetZoneFromPincodeViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | serviceabilityType | String |  no  |  |
 | zones | [String] |  no  |  |

---


 
 
 #### [WarningsResponse](#WarningsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeAddress | String? |  yes  |  |

---


 
 
 #### [Dp](#Dp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentMode | String? |  yes  |  |
 | transportMode | String? |  yes  |  |
 | lmPriority | Int? |  yes  |  |
 | operations | [String]? |  yes  |  |
 | fmPriority | Int? |  yes  |  |
 | rvpPriority | Int? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | areaCode | Int? |  yes  |  |
 | externalAccountId | String? |  yes  |  |
 | internalAccountId | String? |  yes  |  |

---


 
 
 #### [LogisticsResponse](#LogisticsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dp | [Dp](#Dp)? |  yes  |  |
 | override | Bool? |  yes  |  |

---


 
 
 #### [IntegrationTypeResponse](#IntegrationTypeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | String? |  yes  |  |
 | inventory | String? |  yes  |  |

---


 
 
 #### [ProductReturnConfigResponse](#ProductReturnConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | onSameStore | Bool? |  yes  |  |

---


 
 
 #### [ContactNumberResponse](#ContactNumberResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | String? |  yes  |  |
 | countryCode | Int? |  yes  |  |

---


 
 
 #### [OpeningClosing](#OpeningClosing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minute | Int? |  yes  |  |
 | hour | Int? |  yes  |  |

---


 
 
 #### [TimmingResponse](#TimmingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | open | Bool? |  yes  |  |
 | weekday | String? |  yes  |  |
 | opening | [OpeningClosing](#OpeningClosing)? |  yes  |  |
 | closing | [OpeningClosing](#OpeningClosing)? |  yes  |  |

---


 
 
 #### [AddressResponse](#AddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landmark | String? |  yes  |  |
 | city | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | state | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | country | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | latitude | Double? |  yes  |  |

---


 
 
 #### [EwayBillResponse](#EwayBillResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [EinvoiceResponse](#EinvoiceResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [GstCredentialsResponse](#GstCredentialsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eWaybill | [EwayBillResponse](#EwayBillResponse)? |  yes  |  |
 | eInvoice | [EinvoiceResponse](#EinvoiceResponse)? |  yes  |  |

---


 
 
 #### [DocumentsResponse](#DocumentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |
 | legalName | String? |  yes  |  |
 | verified | Bool? |  yes  |  |

---


 
 
 #### [ModifiedByResponse](#ModifiedByResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [CreatedByResponse](#CreatedByResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [MobileNo](#MobileNo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | String? |  yes  |  |
 | countryCode | Int? |  yes  |  |

---


 
 
 #### [ManagerResponse](#ManagerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | mobileNo | [MobileNo](#MobileNo)? |  yes  |  |

---


 
 
 #### [ItemResponse](#ItemResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | warnings | [WarningsResponse](#WarningsResponse)? |  yes  |  |
 | logistics | [LogisticsResponse](#LogisticsResponse)? |  yes  |  |
 | cls | String? |  yes  |  |
 | integrationType | [IntegrationTypeResponse](#IntegrationTypeResponse)? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigResponse](#ProductReturnConfigResponse)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | contactNumbers | [[ContactNumberResponse](#ContactNumberResponse)]? |  yes  |  |
 | displayName | String? |  yes  |  |
 | timing | [[TimmingResponse](#TimmingResponse)]? |  yes  |  |
 | address | [AddressResponse](#AddressResponse)? |  yes  |  |
 | gstCredentials | [GstCredentialsResponse](#GstCredentialsResponse)? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | storeType | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | code | String? |  yes  |  |
 | documents | [[DocumentsResponse](#DocumentsResponse)]? |  yes  |  |
 | modifiedBy | [ModifiedByResponse](#ModifiedByResponse)? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | uid | Int? |  yes  |  |
 | createdBy | [CreatedByResponse](#CreatedByResponse)? |  yes  |  |
 | stage | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | company | Int? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | manager | [ManagerResponse](#ManagerResponse)? |  yes  |  |
 | verifiedBy | [ModifiedByResponse](#ModifiedByResponse)? |  yes  |  |

---


 
 
 #### [PageResponse](#PageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |

---


 
 
 #### [GetStoresViewResponse](#GetStoresViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ItemResponse](#ItemResponse)]? |  yes  |  |
 | page | [PageResponse](#PageResponse) |  no  |  |

---



