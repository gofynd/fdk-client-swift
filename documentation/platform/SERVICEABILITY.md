



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
* [getZoneFromPincodeView](#getzonefrompincodeview)
* [getZonesFromApplicationIdView](#getzonesfromapplicationidview)
* [getZoneListView](#getzonelistview)
* [getStore](#getstore)
* [getAllStores](#getallstores)
* [getOptimalLocations](#getoptimallocations)
* [addAppDp](#addappdp)
* [deleteAppDp](#deleteappdp)
* [updatePincodeMopView](#updatepincodemopview)
* [updatePincodeBulkView](#updatepincodebulkview)
* [updatePincodeCoDListing](#updatepincodecodlisting)
* [updatePincodeAuditHistory](#updatepincodeaudithistory)
* [postRegionJobBulk](#postregionjobbulk)
* [getRegionJobBulk](#getregionjobbulk)
* [getRegionJobBulkBatchId](#getregionjobbulkbatchid)
* [upsertDpAccount](#upsertdpaccount)
* [getDpAccount](#getdpaccount)
* [getDpRules](#getdprules)
* [updateDpRule](#updatedprule)
* [upsertDpRules](#upsertdprules)
* [getDpRuleInsert](#getdpruleinsert)
* [getDpCompanyRules](#getdpcompanyrules)
* [upsertDpCompanyRules](#upsertdpcompanyrules)
* [getDpApplicationRules](#getdpapplicationrules)
* [upsertDpApplicationRules](#upsertdpapplicationrules)
* [patchApplicationServiceabilitySelfShipment](#patchapplicationserviceabilityselfshipment)
* [getApplicationServiceabilitySelfShipment](#getapplicationserviceabilityselfshipment)



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
platformClient.serviceability.getCompanyStoreView(pageNumber: pageNumber, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNumber | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |  



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
Creation of a new zone




```swift
platformClient.serviceability.createZone(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ZoneRequest | yes | Request body |


This API allows you to create a new zone with the specified information. A zone enables serviceability based on given pincodes or regions. By creating a zone and including specific pincodes or regions, you can ensure that the stores associated with the zone are serviceable for those added pincodes or regions. This functionality is particularly useful when you need to ensure serviceability for multiple pincodes or regions by grouping them into a single zone.

*Returned Response:*




[ZoneResponse](#ZoneResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "status_code": 200,
  "zone_id": "64809f27f2b8f575d5cb9c56"
}
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


#### getZoneListView
Zone List of application.




```swift
platformClient.serviceability.getZoneListView(pageNumber: pageNumber, pageNo: pageNo, pageSize: pageSize, name: name, isActive: isActive, channelIds: channelIds, q: q, zoneId: zoneId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNumber | Int? | no | index of the item to start returning with |   
| pageNo | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| name | String? | no | Name of particular zone in the seller account |   
| isActive | Bool? | no | status of  zone whether active or inactive |   
| channelIds | String? | no | zones associated with the given channel ids' |   
| q | String? | no | search with name as a free text |   
| zoneId | [String]? | no | list of zones to query for |  



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


#### postRegionJobBulk
This Api creates a Bulk Job for region tat data upsert




```swift
platformClient.serviceability.postRegionJobBulk(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BulkRegionJobSerializer | yes | Request body |


This API takes request body, validates it and sends it to kafka topic

*Returned Response:*




[PostBulkRegionJobResponse](#PostBulkRegionJobResponse)

Successful response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getRegionJobBulk
Get bulk_export_job collection all records




```swift
platformClient.serviceability.getRegionJobBulk(currentPageNumber: currentPageNumber, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| currentPageNumber | Int? | no | The current page number |   
| pageSize | Int? | no | The page size |  



This API takes gives all the records of bulk_export_job collection

*Returned Response:*




[GetBulkRegionJobResponse](#GetBulkRegionJobResponse)

Successful response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getRegionJobBulkBatchId
Get bulk_export_job data for a given batch_id




```swift
platformClient.serviceability.getRegionJobBulkBatchId(batchId: batchId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| batchId | String | yes | The batch ID |  



This API takes batch_id and gives the detail of bulk_export_job collection for the batch_id

*Returned Response:*




[GetBulkRegionJobResponse](#GetBulkRegionJobResponse)

Successful response




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


#### getDpAccount
Getting DpAccount of a company from database.




```swift
platformClient.serviceability.getDpAccount(pageNumber: pageNumber, pageSize: pageSize, stage: stage, paymentMode: paymentMode, transportType: transportType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNumber | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| stage | String? | no | stage of the account. enabled/disabled |   
| paymentMode | String? | no | Filters dp accounts based on payment mode |   
| transportType | String? | no | Filters dp accounts based on transport_type |  



This API returns response DpAccount of a company from mongo database.

*Returned Response:*




[CompanyDpAccountListResponse](#CompanyDpAccountListResponse)

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


#### getDpRuleInsert
Fetching of DpRules from database.




```swift
platformClient.serviceability.getDpRuleInsert(pageNumber: pageNumber, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNumber | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |  



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


#### patchApplicationServiceabilitySelfShipment
Self-ship configuration of application.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.patchApplicationServiceabilitySelfShipment(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SelfShipResponse | yes | Request body |


This API updates Self-ship configuration of the application.

*Returned Response:*




[ApplicationSelfShipConfigResponse](#ApplicationSelfShipConfigResponse)

Response Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "id": "5ec6b11faa73aa5e2afdb05f",
  "self_ship": {
    "active": true,
    "tat": 172800
  },
  "success": true,
  "error": {
    "type": null,
    "value": null,
    "message": null
  }
}
```
</details>









---


#### getApplicationServiceabilitySelfShipment
Self-ship configuration of application.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getApplicationServiceabilitySelfShipment() { (response, error) in
    // Use response
}
```






This API returns Self-ship configuration of the application.

*Returned Response:*




[ApplicationSelfShipConfigResponse](#ApplicationSelfShipConfigResponse)

Response Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "id": "5ec6b11faa73aa5e2afdb05f",
  "self_ship": {
    "active": true,
    "tat": 172800
  },
  "success": true,
  "error": {
    "type": null,
    "value": null,
    "message": null
  }
}
```
</details>









---



### Schemas

 
 
 #### [ApplicationServiceabilityConfig](#ApplicationServiceabilityConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channelType | String |  no  |  |
 | serviceabilityType | String |  no  |  |
 | channelId | String |  no  |  |

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
 | success | Bool |  no  |  |
 | data | [ApplicationServiceabilityConfig](#ApplicationServiceabilityConfig)? |  yes  |  |
 | error | [ServiceabilityErrorResponse](#ServiceabilityErrorResponse)? |  yes  |  |

---


 
 
 #### [EntityRegionView_Request](#EntityRegionView_Request)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subType | [String] |  no  |  |
 | parentId | [String]? |  yes  |  |

---


 
 
 #### [EntityRegionView_page](#EntityRegionView_page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int |  no  |  |
 | itemTotal | Int |  no  |  |
 | type | String |  no  |  |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |

---


 
 
 #### [EntityRegionView_Items](#EntityRegionView_Items)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subType | String |  no  |  |
 | uid | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [EntityRegionView_Error](#EntityRegionView_Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [EntityRegionView_Response](#EntityRegionView_Response)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | page | [EntityRegionView_page](#EntityRegionView_page) |  no  |  |
 | data | [[EntityRegionView_Items](#EntityRegionView_Items)] |  no  |  |
 | error | [EntityRegionView_Error](#EntityRegionView_Error) |  no  |  |

---


 
 
 #### [ZoneDataItem](#ZoneDataItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int |  no  |  |
 | itemTotal | Int |  no  |  |
 | type | String |  no  |  |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |

---


 
 
 #### [ListViewSummary](#ListViewSummary)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalPincodesServed | Int |  no  |  |
 | totalActiveZones | Int |  no  |  |
 | totalZones | Int |  no  |  |

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
 | count | Int |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ListViewItems](#ListViewItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channels | [ListViewChannels](#ListViewChannels) |  no  |  |
 | name | String |  no  |  |
 | storesCount | Int |  no  |  |
 | zoneId | String |  no  |  |
 | pincodesCount | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | slug | String |  no  |  |
 | companyId | Int |  no  |  |
 | product | [ListViewProduct](#ListViewProduct) |  no  |  |

---


 
 
 #### [ListViewResponse](#ListViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [[ZoneDataItem](#ZoneDataItem)] |  no  |  |
 | summary | [[ListViewSummary](#ListViewSummary)] |  no  |  |
 | items | [[ListViewItems](#ListViewItems)] |  no  |  |

---


 
 
 #### [CompanyStoreView_PageItems](#CompanyStoreView_PageItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int |  no  |  |
 | itemTotal | Int |  no  |  |
 | type | String |  no  |  |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |

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
 | tags | [String] |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ZoneMappingType](#ZoneMappingType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | [String]? |  yes  |  |
 | country | String |  no  |  |
 | pincode | [String]? |  yes  |  |

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


 
 
 #### [GetZoneFromPincodeViewRequest](#GetZoneFromPincodeViewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [GetZoneFromPincodeViewResponse](#GetZoneFromPincodeViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zones | [String] |  no  |  |
 | serviceabilityType | String |  no  |  |

---


 
 
 #### [GetZoneFromApplicationIdViewResponse](#GetZoneFromApplicationIdViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [[ZoneDataItem](#ZoneDataItem)] |  no  |  |
 | items | [[ListViewItems](#ListViewItems)] |  no  |  |

---


 
 
 #### [ServiceabilityPageResponse](#ServiceabilityPageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |

---


 
 
 #### [AddressResponse](#AddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | landmark | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | city | String? |  yes  |  |
 | state | String? |  yes  |  |
 | longitude | Double? |  yes  |  |

---


 
 
 #### [ContactNumberResponse](#ContactNumberResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | String? |  yes  |  |
 | countryCode | Int? |  yes  |  |

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
 | email | String? |  yes  |  |
 | mobileNo | [MobileNo](#MobileNo)? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ModifiedByResponse](#ModifiedByResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [IntegrationTypeResponse](#IntegrationTypeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | String? |  yes  |  |
 | order | String? |  yes  |  |

---


 
 
 #### [ProductReturnConfigResponse](#ProductReturnConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | onSameStore | Bool? |  yes  |  |

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


 
 
 #### [OpeningClosing](#OpeningClosing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minute | Int? |  yes  |  |
 | hour | Int? |  yes  |  |

---


 
 
 #### [TimmingResponse](#TimmingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opening | [OpeningClosing](#OpeningClosing)? |  yes  |  |
 | open | Bool? |  yes  |  |
 | weekday | String? |  yes  |  |
 | closing | [OpeningClosing](#OpeningClosing)? |  yes  |  |

---


 
 
 #### [WarningsResponse](#WarningsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeAddress | String? |  yes  |  |

---


 
 
 #### [Dp](#Dp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | assignDpFromSb | Bool? |  yes  |  |
 | internalAccountId | String? |  yes  |  |
 | rvpPriority | Int? |  yes  |  |
 | fmPriority | Int? |  yes  |  |
 | areaCode | Int? |  yes  |  |
 | externalAccountId | String? |  yes  |  |
 | lmPriority | Int? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | operations | [String]? |  yes  |  |
 | transportMode | String? |  yes  |  |

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


 
 
 #### [DocumentsResponse](#DocumentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | legalName | String? |  yes  |  |
 | type | String? |  yes  |  |
 | verified | Bool? |  yes  |  |

---


 
 
 #### [ItemResponse](#ItemResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | address | [AddressResponse](#AddressResponse)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | contactNumbers | [[ContactNumberResponse](#ContactNumberResponse)]? |  yes  |  |
 | code | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | manager | [ManagerResponse](#ManagerResponse)? |  yes  |  |
 | verifiedBy | [ModifiedByResponse](#ModifiedByResponse)? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | integrationType | [IntegrationTypeResponse](#IntegrationTypeResponse)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | stage | String? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigResponse](#ProductReturnConfigResponse)? |  yes  |  |
 | modifiedBy | [ModifiedByResponse](#ModifiedByResponse)? |  yes  |  |
 | cls | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | gstCredentials | [GstCredentialsResponse](#GstCredentialsResponse)? |  yes  |  |
 | subType | String? |  yes  |  |
 | timing | [[TimmingResponse](#TimmingResponse)]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | warnings | [WarningsResponse](#WarningsResponse)? |  yes  |  |
 | logistics | [LogisticsResponse](#LogisticsResponse)? |  yes  |  |
 | storeType | String? |  yes  |  |
 | createdBy | [CreatedByResponse](#CreatedByResponse)? |  yes  |  |
 | company | Int? |  yes  |  |
 | documents | [[DocumentsResponse](#DocumentsResponse)]? |  yes  |  |

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
 | ignoredLocations | [String] |  no  |  |
 | toPincode | String |  no  |  |
 | articles | [[String: Any]] |  no  |  |
 | identifier | String |  no  |  |
 | configuration | [String: Any] |  no  |  |

---


 
 
 #### [ReAssignStoreResponse](#ReAssignStoreResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | articles | [[String: Any]]? |  yes  |  |
 | toPincode | String |  no  |  |
 | error | [String: Any] |  no  |  |

---


 
 
 #### [ApplicationCompanyDpViewResponse](#ApplicationCompanyDpViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | companyId | Int |  no  |  |
 | applicationId | String |  no  |  |
 | courierPartnerId | Int? |  yes  |  |

---


 
 
 #### [ApplicationCompanyDpViewRequest](#ApplicationCompanyDpViewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpId | String? |  yes  |  |

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
 | size | Int |  no  |  |
 | itemTotal | Int |  no  |  |
 | type | String |  no  |  |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |

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


 
 
 #### [BulkRegionJobSerializer](#BulkRegionJobSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jobAction | String |  no  |  |
 | action | String |  no  |  |
 | batchId | String |  no  |  |
 | countryIsoCode | String? |  yes  |  |
 | fileUrl | String |  no  |  |

---


 
 
 #### [PostBulkRegionJobResponse](#PostBulkRegionJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eventEmitted | Bool |  no  |  |
 | batchId | String |  no  |  |
 | message | String |  no  |  |
 | response | Bool |  no  |  |

---


 
 
 #### [CSVFileRecord](#CSVFileRecord)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | planId | Int? |  yes  |  |
 | isError | Bool? |  yes  |  |
 | fromRegion | String? |  yes  |  |
 | country | String? |  yes  |  |
 | sNo | Int? |  yes  |  |
 | regionType | String? |  yes  |  |
 | maxTat | Int? |  yes  |  |
 | minTat | Int? |  yes  |  |
 | dpId | Int? |  yes  |  |
 | toRegion | String? |  yes  |  |
 | tatType | String? |  yes  |  |
 | error | [String]? |  yes  |  |

---


 
 
 #### [BulkRecordError](#BulkRecordError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isError | Bool |  no  |  |
 | error | [String] |  no  |  |

---


 
 
 #### [BulkRegionData](#BulkRegionData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String? |  yes  |  |
 | failedRec | [[CSVFileRecord](#CSVFileRecord)]? |  yes  |  |
 | stage | String |  no  |  |
 | action | String |  no  |  |
 | failedCount | Int |  no  |  |
 | filePath | String |  no  |  |
 | batchId | String |  no  |  |
 | totalRec | Int |  no  |  |
 | error | [BulkRecordError](#BulkRecordError)? |  yes  |  |
 | successCount | Int |  no  |  |

---


 
 
 #### [GetBulkRegionJobResponse](#GetBulkRegionJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[BulkRegionData](#BulkRegionData)] |  no  |  |
 | batchId | String? |  yes  |  |
 | currentPageNumber | Int? |  yes  |  |

---


 
 
 #### [Dp1](#Dp1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | planId | String |  no  |  |
 | isSelfShip | Bool |  no  |  |
 | accountId | String |  no  |  |
 | name | String |  no  |  |
 | stage | String |  no  |  |
 | planRules | [String: Any] |  no  |  |
 | dpId | String |  no  |  |

---


 
 
 #### [CompanyDpAccountRequest](#CompanyDpAccountRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[Dp1](#Dp1)] |  no  |  |

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
 | type | String |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [DpAccountFailureResponse](#DpAccountFailureResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | error | [[ErrorResponse](#ErrorResponse)] |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasPrevious | Bool |  no  |  |
 | size | Int |  no  |  |
 | itemTotal | Int |  no  |  |
 | type | String |  no  |  |
 | current | Int |  no  |  |
 | total | Int |  no  |  |
 | hasNext | Bool |  no  |  |

---


 
 
 #### [CompanyDpAccountListResponse](#CompanyDpAccountListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | page | [Page](#Page) |  no  |  |
 | items | [[Dp1](#Dp1)] |  no  |  |

---


 
 
 #### [DpSchemaInRuleListing](#DpSchemaInRuleListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | planId | String |  no  |  |
 | isSelfShip | Bool |  no  |  |
 | priority | Int |  no  |  |
 | accountId | String |  no  |  |
 | name | String |  no  |  |
 | stage | String |  no  |  |
 | planRules | [String: Any] |  no  |  |
 | dpId | String |  no  |  |

---


 
 
 #### [DpRule](#DpRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | dpIds | [String: [DpSchemaInRuleListing](#DpSchemaInRuleListing)] |  no  |  |
 | conditions | [[String: Any]] |  no  |  |
 | isActive | Bool? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [DpRuleSuccessResponse](#DpRuleSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [DpRule](#DpRule) |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [FailureResponse](#FailureResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | error | [[ErrorResponse](#ErrorResponse)] |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [DpRulesUpdateRequest](#DpRulesUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool |  no  |  |
 | dpIds | [String: Any] |  no  |  |
 | conditions | [[String: Any]] |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [DpRuleResponse](#DpRuleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String? |  yes  |  |
 | name | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | conditions | [String] |  no  |  |
 | dpIds | [String: Any] |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | uid | String |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | companyId | Int |  no  |  |

---


 
 
 #### [DpRuleUpdateSuccessResponse](#DpRuleUpdateSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [DpRuleResponse](#DpRuleResponse) |  no  |  |
 | statusCode | Int |  no  |  |

---


 
 
 #### [DpIds](#DpIds)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | priority | Int |  no  |  |

---


 
 
 #### [DpRuleRequest](#DpRuleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | dpIds | [String: [DpIds](#DpIds)] |  no  |  |
 | conditions | [[String: Any]] |  no  |  |
 | isActive | Bool? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [DpMultipleRuleSuccessResponse](#DpMultipleRuleSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | page | [Page](#Page) |  no  |  |
 | items | [[DpRule](#DpRule)] |  no  |  |

---


 
 
 #### [DPCompanyRuleResponse](#DPCompanyRuleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [[DpRuleResponse](#DpRuleResponse)] |  no  |  |
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
 | success | Bool |  no  |  |
 | data | [[DpRuleResponse](#DpRuleResponse)] |  no  |  |
 | statusCode | Bool |  no  |  |

---


 
 
 #### [DPApplicationRuleRequest](#DPApplicationRuleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shippingRules | [String] |  no  |  |

---


 
 
 #### [SelfShipResponse](#SelfShipResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tat | Double |  no  |  |
 | active | Bool |  no  |  |

---


 
 
 #### [ApplicationSelfShipConfig](#ApplicationSelfShipConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | selfShip | [SelfShipResponse](#SelfShipResponse)? |  yes  |  |

---


 
 
 #### [ApplicationSelfShipConfigResponse](#ApplicationSelfShipConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | id | String |  no  |  |
 | selfShip | [ApplicationSelfShipConfig](#ApplicationSelfShipConfig)? |  yes  |  |
 | error | [ServiceabilityErrorResponse](#ServiceabilityErrorResponse)? |  yes  |  |

---



