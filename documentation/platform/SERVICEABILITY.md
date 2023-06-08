



##### [Back to Platform docs](./README.md)

## Serviceability Methods
Logistics Configuration API's allows you to configure zone, application logistics and many more useful features. 
* [getApplicationServiceability](#getapplicationserviceability)
* [getEntityRegionView](#getentityregionview)
* [getListView](#getlistview)
* [getCompanyStoreView](#getcompanystoreview)
* [getZoneDataView](#getzonedataview)
* [updateZoneControllerView](#updatezonecontrollerview)
* [createZone](#createzone)
* [getZonesFromApplicationIdView](#getzonesfromapplicationidview)
* [getZoneFromPincodeView](#getzonefrompincodeview)
* [getStore](#getstore)
* [getAllStores](#getallstores)
* [getOptimalLocations](#getoptimallocations)
* [addAppDp](#addappdp)
* [deleteAppDp](#deleteappdp)
* [updatePincodeMopView](#updatepincodemopview)
* [updatePincodeBulkView](#updatepincodebulkview)
* [updatePincodeCoDListing](#updatepincodecodlisting)
* [updatePincodeAuditHistory](#updatepincodeaudithistory)
* [upsertDpAccount](#upsertdpaccount)
* [getDpRules](#getdprules)
* [updateDpRule](#updatedprule)
* [getDpRuleInsert](#getdpruleinsert)
* [upsertDpRules](#upsertdprules)
* [getDpCompanyRules](#getdpcompanyrules)
* [upsertDpCompanyRules](#upsertdpcompanyrules)
* [getDpApplicationRules](#getdpapplicationrules)
* [upsertDpApplicationRules](#upsertdpapplicationrules)



## Methods with example and description


#### getApplicationServiceability
Zone configuration of application.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getApplicationServiceability() { (response, error) in
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
platformClient.serviceability.getEntityRegionView(body: body) { (response, error) in
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
platformClient.serviceability.getListView(pageNumber: pageNumber, pageSize: pageSize, name: name, isActive: isActive, channelIds: channelIds, q: q) { (response, error) in
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
| q | String? | no | search with name as a free text |  



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
platformClient.serviceability.getCompanyStoreView() { (response, error) in
    // Use response
}
```






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
platformClient.serviceability.getZoneDataView(zoneId: zoneId) { (response, error) in
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
platformClient.serviceability.updateZoneControllerView(zoneId: zoneId, body: body) { (response, error) in
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


#### createZone
Insertion of zone in database.




```swift
platformClient.serviceability.createZone(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ZoneRequest | yes | Request body |


This API returns response of insertion of zone in mongo database.<br>Correction- `zone_id` in the path must be removed.<br> path is `/service/platform/logistics-internal/v1.0/company/{}/zone/`

*Returned Response:*




[ZoneResponse](#ZoneResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getZonesFromApplicationIdView
GET zones from the application_id.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getZonesFromApplicationIdView(pageNo: pageNo, pageSize: pageSize, zoneId: zoneId, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| zoneId | [String]? | no | list of zones to query for |   
| q | String? | no | search with name as a free text |  



This API returns zones from the application_id View.

*Returned Response:*




[GetZoneFromApplicationIdViewResponse](#GetZoneFromApplicationIdViewResponse)

List of zones for the given application_id




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getZoneFromPincodeView
GET zone from the Pincode.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getZoneFromPincodeView(body: body) { (response, error) in
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
platformClient.serviceability.getStore(storeUid: storeUid) { (response, error) in
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
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
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
  ],
  "page": {
    "type": "number",
    "size": 2,
    "current": 1,
    "has_next": true,
    "item_total": 3276
  }
}
```
</details>









---


#### getAllStores
GET stores data




```swift
platformClient.serviceability.getAllStores() { (response, error) in
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


#### getOptimalLocations
Get serviceable store of the item




```swift
platformClient.serviceability.getOptimalLocations(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ReAssignStoreRequest | yes | Request body |


This API returns serviceable store of the item.

*Returned Response:*




[ReAssignStoreResponse](#ReAssignStoreResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### addAppDp
Add application dp data




```swift
platformClient.application("<APPLICATION_ID>").serviceability.addAppDp(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ApplicationCompanyDpViewRequest | yes | Request body |


This API add application dp data.

*Returned Response:*




[ApplicationCompanyDpViewResponse](#ApplicationCompanyDpViewResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### deleteAppDp
Delete application dp data




```swift
platformClient.application("<APPLICATION_ID>").serviceability.deleteAppDp(courierPartnerId: courierPartnerId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| courierPartnerId | Int | yes | A `courier_partner_id` is a unique identifier of a particular delivery partner. |  



This API remove application dp data.

*Returned Response:*




[ApplicationCompanyDpViewResponse](#ApplicationCompanyDpViewResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updatePincodeMopView
PincodeView update of MOP.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.updatePincodeMopView(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PincodeMopData | yes | Request body |


This API updates Pincode method of payment.

*Returned Response:*




[PincodeMOPresponse](#PincodeMOPresponse)

Response Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updatePincodeBulkView
Bulk Update of pincode in the application.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.updatePincodeBulkView(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PincodeMopBulkData | yes | Request body |


This API constructs bulk write operations to update the MOP data for each pincode in the payload.

*Returned Response:*




[PincodeBulkViewResponse](#PincodeBulkViewResponse)

Response Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "batch_id": "string",
  "s3_url": "string"
}
```
</details>









---


#### updatePincodeCoDListing
Pincode count view of application.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.updatePincodeCoDListing(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PincodeCodStatusListingRequest | yes | Request body |


This API returns count of active pincode.

*Returned Response:*




[PincodeCodStatusListingResponse](#PincodeCodStatusListingResponse)

Response Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updatePincodeAuditHistory
Auditlog configuration of application.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.updatePincodeAuditHistory(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PincodeMopUpdateAuditHistoryRequest | yes | Request body |


This API returns Audit logs of Pincode.

*Returned Response:*




[PincodeMopUpdateAuditHistoryResponseData](#PincodeMopUpdateAuditHistoryResponseData)

Response Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### upsertDpAccount
Upsertion of DpAccount in database.




```swift
platformClient.serviceability.upsertDpAccount(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CompanyDpAccountRequest | yes | Request body |


This API returns response of upsertion of DpAccount in mongo database.

*Returned Response:*




[CompanyDpAccountResponse](#CompanyDpAccountResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getDpRules
Fetching of DpRules from database.




```swift
platformClient.serviceability.getDpRules(ruleUid: ruleUid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| ruleUid | String | yes | A `rule_uid` is a unique identifier for a particular Dp. |  



This API returns response of DpRules from mongo database.

*Returned Response:*




[DpRuleSuccessResponse](#DpRuleSuccessResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateDpRule
Updating of DpRules from database.




```swift
platformClient.serviceability.updateDpRule(ruleUid: ruleUid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| ruleUid | String | yes | A `rule_uid` is a unique identifier for a particular Dp. |  
| body | DpRulesUpdateRequest | yes | Request body |


This API updates and returns response of DpRules from mongo database.

*Returned Response:*




[DpRuleUpdateSuccessResponse](#DpRuleUpdateSuccessResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getDpRuleInsert
Fetching of DpRules from database.




```swift
platformClient.serviceability.getDpRuleInsert() { (response, error) in
    // Use response
}
```






This API returns response of DpRules from mongo database.

*Returned Response:*




[DpMultipleRuleSuccessResponse](#DpMultipleRuleSuccessResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### upsertDpRules
Upsert of DpRules in database.




```swift
platformClient.serviceability.upsertDpRules(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DpRuleRequest | yes | Request body |


This API returns response of upsert of DpRules in mongo database.

*Returned Response:*




[DpRuleSuccessResponse](#DpRuleSuccessResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getDpCompanyRules
Get All DpCompanyRules applied to company from database.




```swift
platformClient.serviceability.getDpCompanyRules() { (response, error) in
    // Use response
}
```






This API returns response of all DpCompanyRules from mongo database.

*Returned Response:*




[DPCompanyRuleResponse](#DPCompanyRuleResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### upsertDpCompanyRules
Upsert of DpCompanyRules in database.




```swift
platformClient.serviceability.upsertDpCompanyRules(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DPCompanyRuleRequest | yes | Request body |


This API returns response of upsert of DpCompanyRules in mongo database.

*Returned Response:*




[DPCompanyRuleResponse](#DPCompanyRuleResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getDpApplicationRules
Get All DpApplicationRules rules added at application level from database.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getDpApplicationRules() { (response, error) in
    // Use response
}
```






This API returns response of all rules of DpApplicationRules from mongo database.

*Returned Response:*




[DPApplicationRuleResponse](#DPApplicationRuleResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### upsertDpApplicationRules
Upsert of DpApplicationRules in database.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.upsertDpApplicationRules(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DPApplicationRuleRequest | yes | Request body |


This API returns response of upsert of DpApplicationRules in mongo database.

*Returned Response:*




[DPApplicationRuleResponse](#DPApplicationRuleResponse)

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
 | channelType | String |  no  |  |
 | channelId | String |  no  |  |

---


 
 
 #### [ServiceabilityrErrorResponse](#ServiceabilityrErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | message | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ApplicationServiceabilityConfigResponse](#ApplicationServiceabilityConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [ApplicationServiceabilityConfig](#ApplicationServiceabilityConfig)? |  yes  |  |
 | success | Bool |  no  |  |
 | error | [ServiceabilityrErrorResponse](#ServiceabilityrErrorResponse)? |  yes  |  |

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
 | uid | String |  no  |  |
 | subType | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [EntityRegionView_page](#EntityRegionView_page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | type | String |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |

---


 
 
 #### [EntityRegionView_Error](#EntityRegionView_Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | message | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [EntityRegionView_Response](#EntityRegionView_Response)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[EntityRegionView_Items](#EntityRegionView_Items)] |  no  |  |
 | page | [EntityRegionView_page](#EntityRegionView_page) |  no  |  |
 | success | Bool |  no  |  |
 | error | [EntityRegionView_Error](#EntityRegionView_Error) |  no  |  |

---


 
 
 #### [ListViewSummary](#ListViewSummary)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalZones | Int |  no  |  |
 | totalPincodesServed | Int |  no  |  |
 | totalActiveZones | Int |  no  |  |

---


 
 
 #### [ZoneDataItem](#ZoneDataItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ListViewProduct](#ListViewProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ListViewChannels](#ListViewChannels)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channelType | String |  no  |  |
 | channelId | String |  no  |  |

---


 
 
 #### [ListViewItems](#ListViewItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | product | [ListViewProduct](#ListViewProduct) |  no  |  |
 | channels | [ListViewChannels](#ListViewChannels) |  no  |  |
 | companyId | Int |  no  |  |
 | pincodesCount | Int |  no  |  |
 | zoneId | String |  no  |  |
 | name | String |  no  |  |
 | storesCount | Int |  no  |  |
 | slug | String |  no  |  |
 | isActive | Bool |  no  |  |

---


 
 
 #### [ListViewResponse](#ListViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | summary | [[ListViewSummary](#ListViewSummary)] |  no  |  |
 | page | [[ZoneDataItem](#ZoneDataItem)] |  no  |  |
 | items | [[ListViewItems](#ListViewItems)] |  no  |  |

---


 
 
 #### [CompanyStoreView_PageItems](#CompanyStoreView_PageItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | type | String |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |

---


 
 
 #### [CompanyStoreView_Response](#CompanyStoreView_Response)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [[CompanyStoreView_PageItems](#CompanyStoreView_PageItems)] |  no  |  |
 | items | [[String: Any]]? |  yes  |  |

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
 | type | String |  no  |  |
 | tags | [String] |  no  |  |

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
 | companyId | Int? |  yes  |  |
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


 
 
 #### [GetZoneFromApplicationIdViewResponse](#GetZoneFromApplicationIdViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [[ZoneDataItem](#ZoneDataItem)] |  no  |  |
 | items | [[ListViewItems](#ListViewItems)] |  no  |  |

---


 
 
 #### [ServiceabilityErrorResponse](#ServiceabilityErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | message | String |  no  |  |
 | type | String |  no  |  |

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


 
 
 #### [ServiceabilityPageResponse](#ServiceabilityPageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | size | Int? |  yes  |  |

---


 
 
 #### [ProductReturnConfigResponse](#ProductReturnConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | onSameStore | Bool? |  yes  |  |

---


 
 
 #### [WarningsResponse](#WarningsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeAddress | String? |  yes  |  |

---


 
 
 #### [DocumentsResponse](#DocumentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool? |  yes  |  |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |
 | legalName | String? |  yes  |  |

---


 
 
 #### [ModifiedByResponse](#ModifiedByResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |

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


 
 
 #### [MobileNo](#MobileNo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | Int? |  yes  |  |
 | number | String? |  yes  |  |

---


 
 
 #### [ManagerResponse](#ManagerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | mobileNo | [MobileNo](#MobileNo)? |  yes  |  |

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


 
 
 #### [IntegrationTypeResponse](#IntegrationTypeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | String? |  yes  |  |
 | order | String? |  yes  |  |

---


 
 
 #### [AddressResponse](#AddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int? |  yes  |  |
 | address1 | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | country | String? |  yes  |  |
 | state | String? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [Dp](#Dp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fmPriority | Int? |  yes  |  |
 | areaCode | Int? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |
 | internalAccountId | String? |  yes  |  |
 | rvpPriority | Int? |  yes  |  |
 | transportMode | String? |  yes  |  |
 | externalAccountId | String? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | operations | [String]? |  yes  |  |
 | lmPriority | Int? |  yes  |  |

---


 
 
 #### [LogisticsResponse](#LogisticsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dp | [Dp](#Dp)? |  yes  |  |
 | override | Bool? |  yes  |  |

---


 
 
 #### [CreatedByResponse](#CreatedByResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [ContactNumberResponse](#ContactNumberResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | Int? |  yes  |  |
 | number | String? |  yes  |  |

---


 
 
 #### [ItemResponse](#ItemResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productReturnConfig | [ProductReturnConfigResponse](#ProductReturnConfigResponse)? |  yes  |  |
 | subType | String? |  yes  |  |
 | warnings | [WarningsResponse](#WarningsResponse)? |  yes  |  |
 | documents | [[DocumentsResponse](#DocumentsResponse)]? |  yes  |  |
 | name | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | cls | String? |  yes  |  |
 | verifiedBy | [ModifiedByResponse](#ModifiedByResponse)? |  yes  |  |
 | company | Int? |  yes  |  |
 | gstCredentials | [GstCredentialsResponse](#GstCredentialsResponse)? |  yes  |  |
 | manager | [ManagerResponse](#ManagerResponse)? |  yes  |  |
 | storeType | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | timing | [[TimmingResponse](#TimmingResponse)]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | integrationType | [IntegrationTypeResponse](#IntegrationTypeResponse)? |  yes  |  |
 | displayName | String? |  yes  |  |
 | code | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | address | [AddressResponse](#AddressResponse)? |  yes  |  |
 | modifiedBy | [ModifiedByResponse](#ModifiedByResponse)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | logistics | [LogisticsResponse](#LogisticsResponse)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | stage | String? |  yes  |  |
 | createdBy | [CreatedByResponse](#CreatedByResponse)? |  yes  |  |
 | contactNumbers | [[ContactNumberResponse](#ContactNumberResponse)]? |  yes  |  |

---


 
 
 #### [GetStoresViewResponse](#GetStoresViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [ServiceabilityPageResponse](#ServiceabilityPageResponse) |  no  |  |
 | items | [[ItemResponse](#ItemResponse)]? |  yes  |  |

---


 
 
 #### [ReAssignStoreRequest](#ReAssignStoreRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | toPincode | String |  no  |  |
 | identifier | String |  no  |  |
 | configuration | [String: Any] |  no  |  |
 | articles | [[String: Any]] |  no  |  |
 | ignoredLocations | [String] |  no  |  |

---


 
 
 #### [ReAssignStoreResponse](#ReAssignStoreResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [String: Any] |  no  |  |
 | toPincode | String |  no  |  |
 | success | Bool |  no  |  |
 | articles | [[String: Any]]? |  yes  |  |

---


 
 
 #### [ApplicationCompanyDpViewRequest](#ApplicationCompanyDpViewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpId | String? |  yes  |  |

---


 
 
 #### [ApplicationCompanyDpViewResponse](#ApplicationCompanyDpViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | courierPartnerId | Int? |  yes  |  |
 | applicationId | String |  no  |  |
 | success | Bool |  no  |  |
 | companyId | Int |  no  |  |

---


 
 
 #### [PincodeMopData](#PincodeMopData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincodes | [Int] |  no  |  |
 | country | String |  no  |  |
 | action | String |  no  |  |

---


 
 
 #### [PincodeMopUpdateResponse](#PincodeMopUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int |  no  |  |
 | channelId | String |  no  |  |
 | country | String |  no  |  |
 | isActive | Bool |  no  |  |

---


 
 
 #### [PincodeMOPresponse](#PincodeMOPresponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | statusCode | Int |  no  |  |
 | batchId | String |  no  |  |
 | country | String |  no  |  |
 | action | String |  no  |  |
 | pincodes | [Int]? |  yes  |  |
 | updatedPincodes | [[PincodeMopUpdateResponse](#PincodeMopUpdateResponse)]? |  yes  |  |

---


 
 
 #### [CommonError](#CommonError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | String? |  yes  |  |
 | error | [String: Any]? |  yes  |  |
 | statusCode | String? |  yes  |  |

---


 
 
 #### [PincodeMopBulkData](#PincodeMopBulkData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | batchId | String |  no  |  |
 | s3Url | String |  no  |  |

---


 
 
 #### [PincodeBulkViewResponse](#PincodeBulkViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | batchId | String |  no  |  |
 | s3Url | String |  no  |  |

---


 
 
 #### [PincodeCodStatusListingRequest](#PincodeCodStatusListingRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | pageSize | Int? |  yes  |  |

---


 
 
 #### [PincodeCodStatusListingResponse](#PincodeCodStatusListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | data | [[PincodeCodStatusListingResponse](#PincodeCodStatusListingResponse)] |  no  |  |
 | success | Bool |  no  |  |
 | errors | [[Error](#Error)]? |  yes  |  |
 | page | [PincodeCodStatusListingPage](#PincodeCodStatusListingPage) |  no  |  |
 | summary | [PincodeCodStatusListingSummary](#PincodeCodStatusListingSummary) |  no  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [PincodeCodStatusListingPage](#PincodeCodStatusListingPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | type | String |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |

---


 
 
 #### [PincodeCodStatusListingSummary](#PincodeCodStatusListingSummary)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalActivePincodes | Int |  no  |  |
 | totalInactivePincodes | Int |  no  |  |

---


 
 
 #### [PincodeMopUpdateAuditHistoryRequest](#PincodeMopUpdateAuditHistoryRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityType | String |  no  |  |
 | fileName | String? |  yes  |  |

---


 
 
 #### [PincodeMopUpdateAuditHistoryPaging](#PincodeMopUpdateAuditHistoryPaging)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |

---


 
 
 #### [PincodeMopUpdateAuditHistoryResponse](#PincodeMopUpdateAuditHistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | batchId | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | errorFileS3Url | String? |  yes  |  |
 | s3Url | String? |  yes  |  |
 | fileName | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | updatedBy | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [PincodeMopUpdateAuditHistoryResponseData](#PincodeMopUpdateAuditHistoryResponseData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityType | String? |  yes  |  |
 | page | [PincodeMopUpdateAuditHistoryPaging](#PincodeMopUpdateAuditHistoryPaging) |  no  |  |
 | data | [[PincodeMopUpdateAuditHistoryResponse](#PincodeMopUpdateAuditHistoryResponse)] |  no  |  |

---


 
 
 #### [DP](#DP)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpId | Int |  no  |  |
 | stage | String |  no  |  |
 | isSelfShip | Bool |  no  |  |
 | planRules | [String: Any] |  no  |  |
 | accountId | Int |  no  |  |
 | planId | Int |  no  |  |

---


 
 
 #### [CompanyDpAccountRequest](#CompanyDpAccountRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[DP](#DP)] |  no  |  |
 | identifier | String? |  yes  |  |

---


 
 
 #### [CompanyDpAccountResponse](#CompanyDpAccountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | message | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [DpAccountFailureResponse](#DpAccountFailureResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | error | [[ErrorResponse](#ErrorResponse)] |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [DpRuleResponse](#DpRuleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedBy | String? |  yes  |  |
 | companyId | Int |  no  |  |
 | uid | String |  no  |  |
 | dpIds | [String: Any] |  no  |  |
 | createdOn | String? |  yes  |  |
 | name | String |  no  |  |
 | createdBy | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | conditions | [String] |  no  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [DpRuleSuccessResponse](#DpRuleSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [DpRuleResponse](#DpRuleResponse) |  no  |  |
 | success | Bool |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [ErrorResponse1](#ErrorResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | message | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [FailureResponse](#FailureResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | error | [[ErrorResponse1](#ErrorResponse1)] |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [DpRulesUpdateRequest](#DpRulesUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String? |  yes  |  |
 | dpIds | [String: Any] |  no  |  |
 | name | String |  no  |  |
 | isActive | Bool |  no  |  |
 | conditions | [[String: Any]] |  no  |  |

---


 
 
 #### [DpRuleUpdateSuccessResponse](#DpRuleUpdateSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [DpRuleResponse](#DpRuleResponse) |  no  |  |
 | success | Bool |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | type | String |  no  |  |
 | hasPrevious | Bool |  no  |  |
 | total | Int |  no  |  |
 | size | Int |  no  |  |

---


 
 
 #### [DpMultipleRuleSuccessResponse](#DpMultipleRuleSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | totalCount | Int |  no  |  |
 | items | [[DpRuleResponse](#DpRuleResponse)] |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [DpRuleRequest](#DpRuleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String |  no  |  |
 | companyId | Int? |  yes  |  |
 | dpIds | [String: Any] |  no  |  |
 | name | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | conditions | [[String: Any]] |  no  |  |

---


 
 
 #### [DPCompanyRuleResponse](#DPCompanyRuleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[DpRuleResponse](#DpRuleResponse)] |  no  |  |
 | success | Bool |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [DPCompanyRuleRequest](#DPCompanyRuleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ruleIds | [String] |  no  |  |

---


 
 
 #### [DPApplicationRuleResponse](#DPApplicationRuleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[DpRuleResponse](#DpRuleResponse)] |  no  |  |
 | success | Bool |  no  |  |
 | statusCode | Bool |  no  |  |

---


 
 
 #### [DPApplicationRuleRequest](#DPApplicationRuleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingRules | [String] |  no  |  |

---



