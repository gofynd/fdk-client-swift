



##### [Back to Platform docs](./README.md)

## Serviceability Methods
Logistics Configuration API's allows you to configure zone, application logistics and many more useful features. 

Default
* [getZones](#getzones)
* [createZone](#createzone)
* [updateZoneById](#updatezonebyid)
* [getZoneById](#getzonebyid)
* [getAllStores](#getallstores)
* [updatePincodeMopView](#updatepincodemopview)
* [updatePincodeBulkView](#updatepincodebulkview)
* [updatePincodeCoDListing](#updatepincodecodlisting)
* [updatePincodeAuditHistory](#updatepincodeaudithistory)
* [createCourierPartnerAccount](#createcourierpartneraccount)
* [getCourierPartnerAccounts](#getcourierpartneraccounts)
* [updateCourierPartnerAccount](#updatecourierpartneraccount)
* [getCourierPartnerAccount](#getcourierpartneraccount)
* [updateCourierRule](#updatecourierrule)
* [getCourierPartnerRule](#getcourierpartnerrule)
* [createCourierPartnerRule](#createcourierpartnerrule)
* [getCourierPartnerRules](#getcourierpartnerrules)
* [updateCompanyConfiguration](#updatecompanyconfiguration)
* [getCompanyConfiguration](#getcompanyconfiguration)
* [updateApplicationConfiguration](#updateapplicationconfiguration)
* [getApplicationConfiguration](#getapplicationconfiguration)
* [bulkTat](#bulktat)
* [getBulkTat](#getbulktat)
* [patchApplicationServiceabilitySelfShipment](#patchapplicationserviceabilityselfshipment)
* [getApplicationServiceabilitySelfShipment](#getapplicationserviceabilityselfshipment)
* [getApplicationConfig](#getapplicationconfig)
* [insertApplicationConfig](#insertapplicationconfig)
* [updateStoreRulesConfig](#updatestorerulesconfig)
* [getStoreRules](#getstorerules)
* [createStoreRules](#createstorerules)
* [getStoreRule](#getstorerule)
* [updateStoreRules](#updatestorerules)
* [bulkServiceability](#bulkserviceability)
* [getBulkServiceability](#getbulkserviceability)
* [getServiceability](#getserviceability)
* [updateServiceability](#updateserviceability)
* [createPackageMaterial](#createpackagematerial)
* [getPackageMaterialList](#getpackagemateriallist)
* [createPackageMaterialRule](#createpackagematerialrule)
* [getPackageMaterialRules](#getpackagematerialrules)
* [updatePackageMaterialRule](#updatepackagematerialrule)
* [getPackageMaterialRule](#getpackagematerialrule)
* [updatePackageMaterials](#updatepackagematerials)
* [getPackageMaterials](#getpackagematerials)
* [updateCourierPartnerRulePriority](#updatecourierpartnerrulepriority)
* [getOptimalLocations](#getoptimallocations)




## Methods with example and description



#### getZones
Shows zones defined at the company level




```swift
platformClient.serviceability.getZones(pageNo: pageNo, pageSize: pageSize, isActive: isActive, channelId: channelId, q: q, countryIsoCode: countryIsoCode, state: state, city: city, pincode: pincode, sector: sector) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| isActive | Bool? | no | Status of Zone (either active or inactive) |   
| channelId | String? | no | Zones filtered by an application |   
| q | String? | no | search with name as a free text |   
| countryIsoCode | String? | no | ISO2 code of the country |   
| state | String? | no | State name |   
| city | String? | no | City name |   
| pincode | String? | no | Pincode value to search zones |   
| sector | String? | no | Sector value to search zones |  



Return the list of zones that are defined at the company level.

*Returned Response:*




[ListViewResponse](#ListViewResponse)

Zone List of application in descending order of their last modified date.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Zone Listing with q=zone</i></summary>

```json
{
  "value": {
    "items": [
      {
        "name": "company2 zone",
        "slug": "company2-zone",
        "company_id": 2,
        "is_active": true,
        "channels": [
          {
            "channel_id": "64c22ef872985245a6334afa",
            "channel_type": "application"
          }
        ],
        "zone_id": "64c3a0926ea670363c8e2e3d",
        "stores_count": 2,
        "regions_count": 4242
      }
    ],
    "page": {
      "type": "number",
      "size": 1,
      "current": 1,
      "has_next": false,
      "item_total": 1
    }
  }
}
```
</details>

</details>









---


#### createZone
Creates a new Zone




```swift
platformClient.serviceability.createZone(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateZoneData | yes | Request body |


Creates a new zone with the specified mapping. A zone enables serviceability based on given regions. By creating a zone and including specific regions, you can ensure that the stores associated with the zone are serviceable for those added regions. This functionality is particularly useful when you need to ensure serviceability for multiple regions by grouping them into a single zone.

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


#### updateZoneById
Update details of a Zone




```swift
platformClient.serviceability.updateZoneById(zoneId: zoneId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| zoneId | String | yes | A `zone_id` is a unique identifier for a particular zone. |  
| body | UpdateZoneData | yes | Request body |


Updates the region, application, store mapping and other details in the Zone.

*Returned Response:*




[ZoneSuccessResponse](#ZoneSuccessResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getZoneById
Get details of the Zone




```swift
platformClient.serviceability.getZoneById(zoneId: zoneId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| zoneId | String | yes | A `zone_id` is a unique identifier for a particular zone. |  



Returns the region, application, store mapping and other details in the Zone.

*Returned Response:*




[GetZoneByIdSchema](#GetZoneByIdSchema)

Get details of the Zone




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Gujarat Zone</i></summary>

```json
{
  "value": {
    "name": "Test Zone",
    "slug": "test-zone",
    "is_active": false,
    "channels": [
      {
        "channel_id": "64aed475db2cfb5b8a9f623d",
        "channel_type": "application"
      },
      {
        "channel_id": "64ba6650932a416fb67557fa",
        "channel_type": "application"
      }
    ],
    "product": {
      "type": "all",
      "tags": []
    },
    "store_ids": [
      2,
      1462,
      3470,
      3471,
      3475,
      3742,
      3748,
      3751,
      3752,
      3753
    ],
    "region_type": "non-pincode",
    "mapping": [
      {
        "country": "64aec5a93a079bd328537835",
        "regions": [
          "64aec5a93a079bd328537838"
        ]
      }
    ],
    "zone_id": "64d22858f8aafe61d79f07ea",
    "stores_count": 10,
    "display_name_mapping": {
      "64aec5a93a079bd328537835": "India",
      "64aec5a93a079bd328537838": "GUJARAT"
    }
  }
}
```
</details>

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


#### createCourierPartnerAccount
Creation of Courier Account




```swift
platformClient.serviceability.createCourierPartnerAccount(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CourierAccount | yes | Request body |


This API Creates a new Courier Account

*Returned Response:*




[CourierAccount](#CourierAccount)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCourierPartnerAccounts
Getting Courier Account list of a company.




```swift
platformClient.serviceability.getCourierPartnerAccounts(pageNo: pageNo, pageSize: pageSize, stage: stage, paymentMode: paymentMode, transportType: transportType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| stage | String? | no | stage of the account. enabled/disabled |   
| paymentMode | String? | no | Filters dp accounts based on payment mode |   
| transportType | String? | no | Filters dp accounts based on transport_type |  



This API returns Courier Account of a company.

*Returned Response:*




[CompanyCourierPartnerAccountListResponse](#CompanyCourierPartnerAccountListResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateCourierPartnerAccount
Update Courier Account in database.




```swift
platformClient.serviceability.updateCourierPartnerAccount(accountId: accountId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| accountId | String | yes | Unique ID of courier account |  
| body | CourierAccount | yes | Request body |


Updates Courier Account

*Returned Response:*




[CourierAccountResponse](#CourierAccountResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCourierPartnerAccount
Getting Courier Account of a company from database.




```swift
platformClient.serviceability.getCourierPartnerAccount(accountId: accountId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| accountId | String | yes | Unique ID of courier account |  



This API returns response DpAccount of a company from mongo database.

*Returned Response:*




[CourierAccountResponse](#CourierAccountResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateCourierRule
Updating of Courier Rule.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.updateCourierRule(ruleId: ruleId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| ruleId | String | yes | A `rule_id` is a unique identifier for a particular Dp. |  
| body | CourierPartnerRule | yes | Request body |


This API updates and returns Courier Rule.

*Returned Response:*




[CourierPartnerRule](#CourierPartnerRule)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCourierPartnerRule
Fetch of Courier Rule.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getCourierPartnerRule(ruleId: ruleId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| ruleId | String | yes | A `rule_id` is a unique identifier for a rule. |  



This API returns Courier Rule.

*Returned Response:*




[CourierPartnerRule](#CourierPartnerRule)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createCourierPartnerRule
Create Courier Rules.




```swift
platformClient.application("<APPLICATION_ID>").serviceability.createCourierPartnerRule(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CourierPartnerRule | yes | Request body |


Creates Courier Rules with rule configuration and dp priority

*Returned Response:*




[CourierPartnerRule](#CourierPartnerRule)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCourierPartnerRules
Fetch Courier Rules List




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getCourierPartnerRules(pageNo: pageNo, pageSize: pageSize, status: status) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| status | String? | no | Filter rules based on rule status |  



This API returns Courier Rules List

*Returned Response:*




[CourierPartnerRulesListResponse](#CourierPartnerRulesListResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateCompanyConfiguration
Apply Courier Rule to company.




```swift
platformClient.serviceability.updateCompanyConfiguration(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CompanyConfig | yes | Request body |


Apply Courier Rule to company with rules priority

*Returned Response:*




[CompanyConfig](#CompanyConfig)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCompanyConfiguration
Get All Courier Rules applied to company.




```swift
platformClient.serviceability.getCompanyConfiguration() { (response, error) in
    // Use response
}
```






This API returns all Courier Rules applied for company.

*Returned Response:*




[CompanyConfig](#CompanyConfig)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateApplicationConfiguration
Apply configuration to an application




```swift
platformClient.application("<APPLICATION_ID>").serviceability.updateApplicationConfiguration(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ApplicationConfig | yes | Request body |


Apply configuration to application to set DP rules and Zone configuration

*Returned Response:*




[ApplicationConfig](#ApplicationConfig)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getApplicationConfiguration
Get All Courier Rules applied to application




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getApplicationConfiguration() { (response, error) in
    // Use response
}
```






This API returns all the Courier Rules applied to an application

*Returned Response:*




[ApplicationConfig](#ApplicationConfig)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### bulkTat
Region TAT Import or Export




```swift
platformClient.serviceability.bulkTat(extensionId: extensionId, schemeId: schemeId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Unique Identifier of CP Extension |   
| schemeId | String | yes | Unique identifier of a scheme |  
| body | BulkRegionJobSerializer | yes | Request body |


Region TAT Import or Export

*Returned Response:*




[BulkRegionResponseItemData](#BulkRegionResponseItemData)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getBulkTat
Get region tat bulk history




```swift
platformClient.serviceability.getBulkTat(extensionId: extensionId, schemeId: schemeId, pageNo: pageNo, pageSize: pageSize, batchId: batchId, action: action, status: status, country: country, region: region, startDate: startDate, endDate: endDate) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Unique Identifier of CP Extension |   
| schemeId | String | yes | Unique identifier of a scheme |   
| pageNo | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| batchId | String? | no | Unique identifier of bulk job |   
| action | String? | no | import or export bulk type |   
| status | String? | no | Status of the bulk actions |   
| country | String? | no | Country for which bulk job is initiated |   
| region | String? | no | Region for which bulk job is initiated |   
| startDate | String? | no | Fetch job history after a particule date |   
| endDate | String? | no | Fetch job history before a particule date |  



Get region tat bulk history

*Returned Response:*




[BulkRegionResponse](#BulkRegionResponse)

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
  "data": {
    "is_active": true,
    "tat": 3
  },
  "success": true,
  "error": {
    "type": "",
    "value": "",
    "message": ""
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
  "data": {
    "is_active": true,
    "tat": 3
  },
  "success": true,
  "error": {
    "type": "",
    "value": "",
    "message": ""
  }
}
```
</details>









---


#### getApplicationConfig
Get Application Configuration




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getApplicationConfig() { (response, error) in
    // Use response
}
```






Get Application Configuration

*Returned Response:*




[StoreRuleConfigData](#StoreRuleConfigData)

Successful Response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### insertApplicationConfig
Insert Application Configuration




```swift
platformClient.application("<APPLICATION_ID>").serviceability.insertApplicationConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | StoreRuleConfigData | yes | Request body |


Insert Application Configuration

*Returned Response:*




[StoreRuleConfigData](#StoreRuleConfigData)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateStoreRulesConfig
Update Store Rule Configuration




```swift
platformClient.application("<APPLICATION_ID>").serviceability.updateStoreRulesConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | StoreRuleConfigData | yes | Request body |


Update Store Rule Configuration

*Returned Response:*




[StoreRuleConfigData](#StoreRuleConfigData)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getStoreRules
Get Multiple Store Rules




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getStoreRules(pageNo: pageNo, pageSize: pageSize, status: status) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| status | String? | no |  |  



Get Multiple Store Rules

*Returned Response:*




[GetStoreRulesApiResponse](#GetStoreRulesApiResponse)

Successful Response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createStoreRules
Create Store Rule




```swift
platformClient.application("<APPLICATION_ID>").serviceability.createStoreRules(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateStoreRuleRequestSchema | yes | Request body |


Create Store Rule

*Returned Response:*




[StoreRuleResponseSchema](#StoreRuleResponseSchema)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getStoreRule
Get Single Store Rule




```swift
platformClient.application("<APPLICATION_ID>").serviceability.getStoreRule(ruleUid: ruleUid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| ruleUid | String | yes | A `rule_uid` is a unique identifier for a particular rule object. |  



Get Single Store Rule

*Returned Response:*




[StoreRuleDataSchema](#StoreRuleDataSchema)

Successful Response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateStoreRules
Update Store Rule




```swift
platformClient.application("<APPLICATION_ID>").serviceability.updateStoreRules(ruleUid: ruleUid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| ruleUid | String | yes | A `rule_uid` is a unique identifier for a particular rule object. |  
| body | CreateStoreRuleRequestSchema | yes | Request body |


Update Store Rule

*Returned Response:*




[StoreRuleUpdateResponseSchema](#StoreRuleUpdateResponseSchema)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### bulkServiceability
Serviceability Import or Export




```swift
platformClient.serviceability.bulkServiceability(extensionId: extensionId, schemeId: schemeId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Unique Identifier of CP Extension |   
| schemeId | String | yes | Unique identifier of a scheme |  
| body | BulkRegionJobSerializer | yes | Request body |


Serviceability Import or Export

*Returned Response:*




[BulkRegionResponseItemData](#BulkRegionResponseItemData)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getBulkServiceability
Get Region Serviceability Bulk History




```swift
platformClient.serviceability.getBulkServiceability(extensionId: extensionId, schemeId: schemeId, pageNo: pageNo, pageSize: pageSize, batchId: batchId, action: action, status: status, country: country, region: region, startDate: startDate, endDate: endDate) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Unique Identifier of CP Extension |   
| schemeId | String | yes | Unique identifier of a scheme |   
| pageNo | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| batchId | String? | no | Unique identifier of bulk job |   
| action | String? | no | import or export bulk type |   
| status | String? | no | Status of the bulk actions |   
| country | String? | no | Country for which bulk job is initiated |   
| region | String? | no | Region for which bulk job is initiated |   
| startDate | String? | no | Fetch job history after a particule date |   
| endDate | String? | no | Fetch job history before a particule date |  



Get Region Serviceability Bulk History

*Returned Response:*




[BulkRegionResponse](#BulkRegionResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getServiceability
Get Serviceability of a region




```swift
platformClient.serviceability.getServiceability(extensionId: extensionId, schemeId: schemeId, regionId: regionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Unique Identifier of CP Extension |   
| schemeId | String | yes | Unique identifier of a scheme |   
| regionId | String | yes | Unique identifier of a region |  



Get Serviceability of a region

*Returned Response:*




[ServiceabilityModel](#ServiceabilityModel)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateServiceability
Serviceability Update for a region




```swift
platformClient.serviceability.updateServiceability(extensionId: extensionId, schemeId: schemeId, regionId: regionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| extensionId | String | yes | Unique Identifier of CP Extension |   
| schemeId | String | yes | Unique identifier of a scheme |   
| regionId | String | yes | Unique identifier of a region |  
| body | ServiceabilityModel | yes | Request body |


Serviceability Update for a region

*Returned Response:*




[ServiceabilityModel](#ServiceabilityModel)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createPackageMaterial
Upsert of PackageMaterial in database.




```swift
platformClient.serviceability.createPackageMaterial(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PackageMaterial | yes | Request body |


This API returns response of upsert of PackageMaterial in mongo database.

*Returned Response:*




[PackageMaterialResponse](#PackageMaterialResponse)

Response status_code




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; PackageMaterial</i></summary>

```json
{
  "value": {
    "id": "64b8526e5ca47d41582b9fa1",
    "name": "Package1",
    "item_id": 1234,
    "company_id": 1,
    "length": 1,
    "height": 1,
    "width": 1,
    "weight": 1,
    "error_rate": 0,
    "store_ids": [
      1,
      9,
      5
    ],
    "rules": [
      {
        "rule_id": "64b4337a0c607fbfbcd0156b",
        "quantity": {
          "min": 1,
          "max": 2
        },
        "weight": 100
      }
    ],
    "channels": [
      {
        "id": "64b4337a0c607fbfbcd0190b",
        "type": "application"
      }
    ],
    "media": [
      "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/sandbx/wrkr/sandeepmaale/products/pictures/bundle/free/original/LOc5XW0cc-Logo.png"
    ],
    "package_type": "box",
    "size": "small",
    "status": "active",
    "track_inventory": false,
    "max_weight": 100,
    "package_vol_weight": 100,
    "auto_calculate": true
  }
}
```
</details>

</details>









---


#### getPackageMaterialList
Fetching of PackageMaterials from database.




```swift
platformClient.serviceability.getPackageMaterialList(pageNo: pageNo, pageSize: pageSize, q: q, size: size, packageType: packageType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| q | String? | no | perform regex search on items matching name for given value |   
| size | String? | no | filters items based on given size |   
| packageType | String? | no | filters items based on given package_type |  



This API returns response of PackageMaterials from mongo database.

*Returned Response:*




[PackageMaterialList](#PackageMaterialList)

Response status_code




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; PackageMaterialList</i></summary>

```json
{
  "value": {
    "items": [
      {
        "id": "64b8526e5ca47d41582b9fa1",
        "name": "Package1",
        "item_id": 1234,
        "company_id": 1,
        "length": 1,
        "height": 1,
        "width": 1,
        "weight": 1,
        "error_rate": 0,
        "store_ids": [
          1,
          9,
          5
        ],
        "rules": [
          {
            "rule_id": "64b4337a0c607fbfbcd0156b",
            "quantity": {
              "min": 1,
              "max": 2
            },
            "weight": 100
          }
        ],
        "channels": [
          {
            "id": "64b4337a0c607fbfbcd0190b",
            "type": "application"
          }
        ],
        "media": [
          "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/sandbx/wrkr/sandeepmaale/products/pictures/bundle/free/original/LOc5XW0cc-Logo.png"
        ],
        "package_type": "box",
        "size": "small",
        "status": "active",
        "track_inventory": true,
        "max_weight": 100,
        "package_vol_weight": 100,
        "auto_calculate": true
      }
    ],
    "page": {
      "type": "number",
      "size": 1,
      "current": 1,
      "has_next": false,
      "has_previous": false,
      "item_total": 1
    }
  }
}
```
</details>

</details>









---


#### createPackageMaterialRule
Upsert of Package Material Rule in database.




```swift
platformClient.serviceability.createPackageMaterialRule(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PackageRule | yes | Request body |


This API returns response of upsert of Package Material Rule in mongo database.

*Returned Response:*




[PackageRuleResponse](#PackageRuleResponse)

Response status_code




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; PackageRule</i></summary>

```json
{
  "value": {
    "id": "64b4337a0c607fbfbcd0156b",
    "company_id": 1,
    "name": "Rule For Dev Contract",
    "category_id": {
      "includes": [
        1,
        2
      ]
    },
    "product_tag": {
      "includes": [
        "abc",
        "xyz"
      ]
    },
    "product_id": {
      "includes": [
        1,
        2
      ]
    },
    "type": "package",
    "is_active": true
  }
}
```
</details>

</details>









---


#### getPackageMaterialRules
Fetching of Package Material Rules from database.




```swift
platformClient.serviceability.getPackageMaterialRules(pageNo: pageNo, pageSize: pageSize, isActive: isActive) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | index of the item to start returning with |   
| pageSize | Int? | no | determines the items to be displayed in a page |   
| isActive | String? | no | filters items based on given is_active |  



This API returns response of Package Materials Rules from mongo database.

*Returned Response:*




[PackageMaterialRuleList](#PackageMaterialRuleList)

Response status_code




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; PackageMaterialRuleList</i></summary>

```json
{
  "value": {
    "items": [
      {
        "id": "64b4337a0c607fbfbcd0156b",
        "company_id": 1,
        "name": "Rule For Dev Contract",
        "category_id": {
          "includes": [
            1,
            2
          ]
        },
        "product_tag": {
          "includes": [
            "abc",
            "xyz"
          ]
        },
        "product_id": {
          "includes": [
            1,
            2
          ]
        },
        "type": "package",
        "is_active": true
      }
    ],
    "page": {
      "type": "number",
      "size": 1,
      "current": 1,
      "has_next": false,
      "has_previous": false,
      "item_total": 1
    }
  }
}
```
</details>

</details>









---


#### updatePackageMaterialRule
Fetching of Package Material Rules into database.




```swift
platformClient.serviceability.updatePackageMaterialRule(ruleId: ruleId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| ruleId | String | yes | A `package_material_rule_id` is a unique identifier for a Package Material Rule |  
| body | PackageRule | yes | Request body |


This API updates Package Material Rules into mongo database.

*Returned Response:*




[PackageRuleResponse](#PackageRuleResponse)

Response status_code




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; PackageRule</i></summary>

```json
{
  "value": {
    "id": "64b4337a0c607fbfbcd0156b",
    "company_id": 1,
    "name": "Rule For Dev Contract",
    "category_id": {
      "includes": [
        1,
        2
      ]
    },
    "product_tag": {
      "includes": [
        "abc",
        "xyz"
      ]
    },
    "product_id": {
      "includes": [
        1,
        2
      ]
    },
    "type": "package",
    "is_active": true
  }
}
```
</details>

</details>









---


#### getPackageMaterialRule
Fetching of Package Material from database.




```swift
platformClient.serviceability.getPackageMaterialRule(ruleId: ruleId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| ruleId | String | yes | A `package_material_rule_id` is a unique identifier for a Package Material Rule |  



This API returns response of Package Material from mongo database.

*Returned Response:*




[PackageRuleResponse](#PackageRuleResponse)

Response status_code




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; PackageRule</i></summary>

```json
{
  "value": {
    "id": "64b4337a0c607fbfbcd0156b",
    "company_id": 1,
    "name": "Rule For Dev Contract",
    "category_id": {
      "includes": [
        1,
        2
      ]
    },
    "product_tag": {
      "includes": [
        "abc",
        "xyz"
      ]
    },
    "product_id": {
      "includes": [
        1,
        2
      ]
    },
    "type": "package",
    "is_active": true
  }
}
```
</details>

</details>









---


#### updatePackageMaterials
Update Package Material to database.




```swift
platformClient.serviceability.updatePackageMaterials(packageMaterialId: packageMaterialId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| packageMaterialId | String | yes | A `package_material_id` is a unique identifier for a Package Material |  
| body | PackageMaterial | yes | Request body |


This API updates Package Materials from into mongo database.

*Returned Response:*




[PackageMaterialResponse](#PackageMaterialResponse)

Response status_code




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; PackageMaterial</i></summary>

```json
{
  "value": {
    "id": "64b8526e5ca47d41582b9fa1",
    "name": "Package1",
    "item_id": 1234,
    "company_id": 1,
    "length": 1,
    "height": 1,
    "width": 1,
    "weight": 1,
    "error_rate": 0,
    "store_ids": [
      1,
      9,
      5
    ],
    "rules": [
      {
        "rule_id": "64b4337a0c607fbfbcd0156b",
        "quantity": {
          "min": 1,
          "max": 2
        },
        "weight": 100
      }
    ],
    "channels": [
      {
        "id": "64b4337a0c607fbfbcd0190b",
        "type": "application"
      }
    ],
    "media": [
      "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/sandbx/wrkr/sandeepmaale/products/pictures/bundle/free/original/LOc5XW0cc-Logo.png"
    ],
    "package_type": "box",
    "size": "small",
    "status": "active",
    "track_inventory": false,
    "max_weight": 100,
    "package_vol_weight": 100,
    "auto_calculate": true
  }
}
```
</details>

</details>









---


#### getPackageMaterials
Fetching of Package Material from database.




```swift
platformClient.serviceability.getPackageMaterials(packageMaterialId: packageMaterialId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| packageMaterialId | String | yes | A `package_material_id` is a unique identifier for a Package Material |  



This API returns response of Package Material from mongo database.

*Returned Response:*




[PackageMaterialResponse](#PackageMaterialResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateCourierPartnerRulePriority
Updates Courier Partner Rules Priority for a sales channel




```swift
platformClient.application("<APPLICATION_ID>").serviceability.updateCourierPartnerRulePriority(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | RulePriorityRequest | yes | Request body |


Updates Courier Partner Rules Priority for a sales channel

*Returned Response:*




[RulePriorityResponse](#RulePriorityResponse)

Response status_code




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOptimalLocations
Retrieve optimal locations




```swift
platformClient.serviceability.getOptimalLocations(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | OptimlLocationsRequestSchema | yes | Request body |


Retrieve optimal locations based on the specific criteria

*Returned Response:*




[OptimalLocationsResponse](#OptimalLocationsResponse)

Optimal Locations Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---




### Schemas

 
 
 #### [UpdateZoneConfigRequest](#UpdateZoneConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | serviceabilityType | String? |  yes  |  |

---


 
 
 #### [ServiceabilityErrorResponse](#ServiceabilityErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | value | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ApplicationServiceabilityConfig](#ApplicationServiceabilityConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channelId | String |  no  |  |
 | serviceabilityType | String |  no  |  |
 | channelType | String |  no  |  |

---


 
 
 #### [ApplicationServiceabilityConfigResponse](#ApplicationServiceabilityConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [ServiceabilityErrorResponse](#ServiceabilityErrorResponse)? |  yes  |  |
 | data | [ApplicationServiceabilityConfig](#ApplicationServiceabilityConfig)? |  yes  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [EntityRegionView_Request](#EntityRegionView_Request)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subType | [String] |  no  |  |
 | parentId | [String]? |  yes  |  |

---


 
 
 #### [EntityRegionView_Error](#EntityRegionView_Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [EntityRegionView_page](#EntityRegionView_page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | hasNext | Bool |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |
 | current | Int |  no  |  |

---


 
 
 #### [getAppRegionZonesResponse](#getAppRegionZonesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [[PageSchema](#PageSchema)] |  no  |  |
 | items | [[ListViewItems](#ListViewItems)] |  no  |  |

---


 
 
 #### [PageSchema](#PageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasNext | Bool |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |
 | current | Int |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [EntityRegionView_Items](#EntityRegionView_Items)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subType | String |  no  |  |
 | uid | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [EntityRegionView_Response](#EntityRegionView_Response)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [EntityRegionView_Error](#EntityRegionView_Error) |  no  |  |
 | page | [EntityRegionView_page](#EntityRegionView_page) |  no  |  |
 | data | [[EntityRegionView_Items](#EntityRegionView_Items)] |  no  |  |
 | success | Bool |  no  |  |

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
 | hasNext | Bool |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |
 | current | Int |  no  |  |
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
 | channelId | String |  no  |  |
 | channelType | String |  no  |  |

---


 
 
 #### [ListViewItems](#ListViewItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zoneId | String |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | storesCount | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | regionsCount | Int |  no  |  |
 | companyId | Int |  no  |  |
 | channels | [[ListViewChannels](#ListViewChannels)] |  no  |  |

---


 
 
 #### [ListViewResponse](#ListViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [ZoneDataItem](#ZoneDataItem) |  no  |  |
 | items | [[ListViewItems](#ListViewItems)] |  no  |  |

---


 
 
 #### [CompanyStoreView_PageItems](#CompanyStoreView_PageItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | hasNext | Bool |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |
 | current | Int |  no  |  |

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
 | channelId | String |  no  |  |
 | channelType | String |  no  |  |

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
 | country | String |  no  |  |
 | pincode | [String]? |  yes  |  |
 | state | [String]? |  yes  |  |

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
 | identifier | String |  no  |  |
 | data | [UpdateZoneData](#UpdateZoneData) |  no  |  |

---


 
 
 #### [ZoneSuccessResponse](#ZoneSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  |  |
 | success | Bool |  no  |  |

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
 | regionType | String? |  yes  |  |
 | mapping | [[ZoneMappingType](#ZoneMappingType)] |  no  |  |
 | assignmentPreference | String? |  yes  |  |
 | storesCount | Int |  no  |  |

---


 
 
 #### [GetSingleZoneDataViewResponse](#GetSingleZoneDataViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [GetZoneDataViewItems](#GetZoneDataViewItems) |  no  |  |

---


 
 
 #### [GetZoneByIdSchema](#GetZoneByIdSchema)

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

---


 
 
 #### [CreateZoneData](#CreateZoneData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | companyId | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | channels | [[GetZoneDataViewChannels](#GetZoneDataViewChannels)] |  no  |  |
 | storeIds | [Int] |  no  |  |
 | regionType | String |  no  |  |
 | mapping | [[ZoneMappingType](#ZoneMappingType)] |  no  |  |
 | assignmentPreference | String? |  yes  |  |

---


 
 
 #### [ZoneResponse](#ZoneResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statusCode | Int |  no  |  |
 | zoneId | String |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [GetZoneFromPincodeViewRequest](#GetZoneFromPincodeViewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [Zone](#Zone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zoneId | String |  no  |  |
 | type | String |  no  |  |
 | name | String |  no  |  |
 | tags | [String] |  no  |  |
 | slug | String |  no  |  |
 | isActive | Bool |  no  |  |
 | storeIds | [Int] |  no  |  |
 | assignmentPreference | String |  no  |  |

---


 
 
 #### [GetZoneFromPincodeViewResponse](#GetZoneFromPincodeViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | serviceabilityType | String |  no  |  |
 | zones | [[Zone](#Zone)] |  no  |  |

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
 | type | String? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |

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


 
 
 #### [ContactNumberResponse](#ContactNumberResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | String? |  yes  |  |
 | countryCode | Int? |  yes  |  |

---


 
 
 #### [AddressResponse](#AddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | city | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | address2 | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | state | String? |  yes  |  |
 | country | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |

---


 
 
 #### [CreatedByResponse](#CreatedByResponse)

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


 
 
 #### [WarningsResponse](#WarningsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeAddress | String? |  yes  |  |

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
 | closing | [OpeningClosing](#OpeningClosing)? |  yes  |  |
 | opening | [OpeningClosing](#OpeningClosing)? |  yes  |  |

---


 
 
 #### [DocumentsResponse](#DocumentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | legalName | String? |  yes  |  |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |
 | verified | Bool? |  yes  |  |

---


 
 
 #### [Dp](#Dp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fmPriority | Int? |  yes  |  |
 | rvpPriority | Int? |  yes  |  |
 | lmPriority | Int? |  yes  |  |
 | internalAccountId | String? |  yes  |  |
 | areaCode | Int? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | operations | [String]? |  yes  |  |
 | externalAccountId | String? |  yes  |  |
 | transportMode | String? |  yes  |  |
 | assignDpFromSb | Bool? |  yes  |  |

---


 
 
 #### [LogisticsResponse](#LogisticsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | override | Bool? |  yes  |  |
 | dp | [Dp](#Dp)? |  yes  |  |

---


 
 
 #### [ItemResponse](#ItemResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String? |  yes  |  |
 | manager | [ManagerResponse](#ManagerResponse)? |  yes  |  |
 | modifiedBy | [ModifiedByResponse](#ModifiedByResponse)? |  yes  |  |
 | integrationType | [IntegrationTypeResponse](#IntegrationTypeResponse)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigResponse](#ProductReturnConfigResponse)? |  yes  |  |
 | contactNumbers | [[ContactNumberResponse](#ContactNumberResponse)]? |  yes  |  |
 | verifiedBy | [ModifiedByResponse](#ModifiedByResponse)? |  yes  |  |
 | stage | String? |  yes  |  |
 | address | [AddressResponse](#AddressResponse)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdBy | [CreatedByResponse](#CreatedByResponse)? |  yes  |  |
 | gstCredentials | [GstCredentialsResponse](#GstCredentialsResponse)? |  yes  |  |
 | displayName | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | uid | Int? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | code | String? |  yes  |  |
 | warnings | [WarningsResponse](#WarningsResponse)? |  yes  |  |
 | name | String? |  yes  |  |
 | timing | [[TimmingResponse](#TimmingResponse)]? |  yes  |  |
 | documents | [[DocumentsResponse](#DocumentsResponse)]? |  yes  |  |
 | storeType | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | company | Int? |  yes  |  |
 | cls | String? |  yes  |  |
 | logistics | [LogisticsResponse](#LogisticsResponse)? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |

---


 
 
 #### [GetStoresViewResponse](#GetStoresViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [ServiceabilityPageResponse](#ServiceabilityPageResponse) |  no  |  |
 | items | [[ItemResponse](#ItemResponse)]? |  yes  |  |

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
 | statusCode | String? |  yes  |  |
 | error | [String: Any]? |  yes  |  |
 | success | String? |  yes  |  |

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
 | type | String |  no  |  |
 | hasNext | Bool |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |
 | current | Int |  no  |  |

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


 
 
 #### [ArithmeticOperations](#ArithmeticOperations)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lt | Int? |  yes  |  |
 | gt | Int? |  yes  |  |
 | lte | Int? |  yes  |  |
 | gte | Int? |  yes  |  |

---


 
 
 #### [SchemeRulesFeatures](#SchemeRulesFeatures)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | qualityCheck | Bool? |  yes  |  |
 | quickResponseCode | Bool? |  yes  |  |
 | eWaybill | Bool? |  yes  |  |
 | multiPartShipments | Bool? |  yes  |  |
 | flammable | Bool? |  yes  |  |
 | hazmat | Bool? |  yes  |  |
 | batteryOperated | Bool? |  yes  |  |

---


 
 
 #### [SchemeRules](#SchemeRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | weight | [ArithmeticOperations](#ArithmeticOperations)? |  yes  |  |
 | transportType | [String]? |  yes  |  |
 | region | String? |  yes  |  |
 | paymentMode | [String]? |  yes  |  |
 | feature | [SchemeRulesFeatures](#SchemeRulesFeatures)? |  yes  |  |

---


 
 
 #### [CourierAccount](#CourierAccount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | extensionId | String |  no  |  |
 | accountId | String |  no  |  |
 | schemeId | String |  no  |  |
 | isSelfShip | Bool |  no  |  |
 | stage | String |  no  |  |
 | isOwnAccount | Bool |  no  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | message | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [CourierPartnerAccountFailureResponse](#CourierPartnerAccountFailureResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | error | [[ErrorResponse](#ErrorResponse)] |  no  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int |  no  |  |
 | itemTotal | Int |  no  |  |
 | hasPrevious | Bool |  no  |  |
 | type | String |  no  |  |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |

---


 
 
 #### [CourierPartnerList](#CourierPartnerList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | extensionId | String |  no  |  |
 | accountId | String |  no  |  |
 | name | String |  no  |  |
 | isSelfShip | Bool |  no  |  |

---


 
 
 #### [LocationRuleValues](#LocationRuleValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | subType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | parentId | String? |  yes  |  |
 | parentIds | [String]? |  yes  |  |

---


 
 
 #### [LocationRule](#LocationRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | includes | [[LocationRuleValues](#LocationRuleValues)]? |  yes  |  |

---


 
 
 #### [StringComparisonOperations](#StringComparisonOperations)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | includes | [String]? |  yes  |  |

---


 
 
 #### [IntComparisonOperations](#IntComparisonOperations)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | includes | [Int]? |  yes  |  |

---


 
 
 #### [CourierPartnerRuleConditions](#CourierPartnerRuleConditions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | forward | [LocationRule](#LocationRule)? |  yes  |  |
 | reverse | [LocationRule](#LocationRule)? |  yes  |  |
 | paymentMode | [StringComparisonOperations](#StringComparisonOperations)? |  yes  |  |
 | categoryIds | [IntComparisonOperations](#IntComparisonOperations)? |  yes  |  |
 | productIds | [IntComparisonOperations](#IntComparisonOperations)? |  yes  |  |
 | productTags | [StringComparisonOperations](#StringComparisonOperations)? |  yes  |  |
 | zoneIds | [StringComparisonOperations](#StringComparisonOperations)? |  yes  |  |
 | departmentIds | [IntComparisonOperations](#IntComparisonOperations)? |  yes  |  |
 | brandIds | [IntComparisonOperations](#IntComparisonOperations)? |  yes  |  |
 | orderPlaceDate | [ArithmeticOperations](#ArithmeticOperations)? |  yes  |  |
 | storeIds | [IntComparisonOperations](#IntComparisonOperations)? |  yes  |  |
 | storeType | [StringComparisonOperations](#StringComparisonOperations)? |  yes  |  |
 | storeTags | [StringComparisonOperations](#StringComparisonOperations)? |  yes  |  |
 | shipmentWeight | [ArithmeticOperations](#ArithmeticOperations)? |  yes  |  |
 | shipmentCost | [ArithmeticOperations](#ArithmeticOperations)? |  yes  |  |
 | shipmentVolumetricWeight | [ArithmeticOperations](#ArithmeticOperations)? |  yes  |  |

---


 
 
 #### [CourierPartnerRule](#CourierPartnerRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool |  no  |  |
 | cpList | [[CourierPartnerList](#CourierPartnerList)]? |  yes  |  |
 | name | String |  no  |  |
 | conditions | [CourierPartnerRuleConditions](#CourierPartnerRuleConditions) |  no  |  |
 | sort | [String] |  no  |  |

---


 
 
 #### [FailureResponse](#FailureResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | error | [[ErrorResponse](#ErrorResponse)] |  no  |  |

---


 
 
 #### [CourierPartnerRulesListResponse](#CourierPartnerRulesListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CourierPartnerRule](#CourierPartnerRule)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [CompanyConfig](#CompanyConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ruleIds | [String] |  no  |  |
 | sort | [String] |  no  |  |
 | logisticsAsActual | Bool? |  yes  |  |

---


 
 
 #### [ZoneConfig](#ZoneConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | serviceabilityType | String? |  yes  |  |

---


 
 
 #### [ApplicationConfig](#ApplicationConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ruleIds | [String]? |  yes  |  |
 | sort | [String]? |  yes  |  |
 | zones | [ZoneConfig](#ZoneConfig)? |  yes  |  |

---


 
 
 #### [BulkRegionJobSerializer](#BulkRegionJobSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filePath | String? |  yes  |  |
 | country | String |  no  |  |
 | action | String |  no  |  |
 | region | String |  no  |  |

---


 
 
 #### [BulkRegionResponseItemData](#BulkRegionResponseItemData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filePath | String |  no  |  |
 | failed | Int? |  yes  |  |
 | failedRecords | [[String: Any]]? |  yes  |  |
 | action | String |  no  |  |
 | batchId | String |  no  |  |
 | country | String |  no  |  |
 | success | Int? |  yes  |  |
 | region | String |  no  |  |
 | status | String |  no  |  |
 | total | Int? |  yes  |  |
 | errorFilePath | String? |  yes  |  |

---


 
 
 #### [BulkRegionResponse](#BulkRegionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BulkRegionResponseItemData](#BulkRegionResponseItemData)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [SelfShipResponse](#SelfShipResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool |  no  |  |
 | tat | Double |  no  |  |

---


 
 
 #### [ApplicationSelfShipConfig](#ApplicationSelfShipConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | selfShip | [SelfShipResponse](#SelfShipResponse)? |  yes  |  |

---


 
 
 #### [ApplicationSelfShipConfigResponse](#ApplicationSelfShipConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [ServiceabilityErrorResponse](#ServiceabilityErrorResponse)? |  yes  |  |
 | data | [ApplicationSelfShipConfig](#ApplicationSelfShipConfig)? |  yes  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [StoreRuleConfigData](#StoreRuleConfigData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ruleIds | [String]? |  yes  |  |
 | typeBasedPriority | [String]? |  yes  |  |
 | tagBasedPriority | [String]? |  yes  |  |
 | storePriority | [[StorePrioritySchema](#StorePrioritySchema)]? |  yes  |  |
 | sort | [String]? |  yes  |  |

---


 
 
 #### [CustomerRadiusSchema](#CustomerRadiusSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unit | String |  no  |  |
 | lt | Int? |  yes  |  |
 | lte | Int? |  yes  |  |
 | gt | Int? |  yes  |  |
 | gte | Int? |  yes  |  |

---


 
 
 #### [StoreRuleConditionSchema](#StoreRuleConditionSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | departmentIds | [IntComparisonOperations](#IntComparisonOperations)? |  yes  |  |
 | categoryIds | [IntComparisonOperations](#IntComparisonOperations)? |  yes  |  |
 | brandIds | [IntComparisonOperations](#IntComparisonOperations)? |  yes  |  |
 | toLocation | [LocationRule](#LocationRule)? |  yes  |  |
 | customerRadius | [CustomerRadiusSchema](#CustomerRadiusSchema)? |  yes  |  |
 | storeType | [StringComparisonOperations](#StringComparisonOperations)? |  yes  |  |
 | productTags | [StringComparisonOperations](#StringComparisonOperations)? |  yes  |  |
 | productIds | [IntComparisonOperations](#IntComparisonOperations)? |  yes  |  |
 | storeTags | [StringComparisonOperations](#StringComparisonOperations)? |  yes  |  |
 | orderPlaceDate | [ArithmeticOperations](#ArithmeticOperations)? |  yes  |  |
 | zoneIds | [StringComparisonOperations](#StringComparisonOperations)? |  yes  |  |

---


 
 
 #### [StoreRuleDataSchema](#StoreRuleDataSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | typeBasedPriority | [String]? |  yes  |  |
 | tagBasedPriority | [String]? |  yes  |  |
 | storePriority | [[StorePrioritySchema](#StorePrioritySchema)]? |  yes  |  |
 | sort | [String]? |  yes  |  |
 | conditions | [StoreRuleConditionSchema](#StoreRuleConditionSchema)? |  yes  |  |
 | isActive | Bool? |  yes  |  |

---


 
 
 #### [StorePrioritySchema](#StorePrioritySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [GetStoreRulesApiResponse](#GetStoreRulesApiResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[StoreRuleDataSchema](#StoreRuleDataSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [CreateStoreRuleRequestSchema](#CreateStoreRuleRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | conditions | [StoreRuleConditionSchema](#StoreRuleConditionSchema)? |  yes  |  |
 | typeBasedPriority | [String]? |  yes  |  |
 | tagBasedPriority | [String]? |  yes  |  |
 | storePriority | [[StorePrioritySchema](#StorePrioritySchema)]? |  yes  |  |
 | sort | [String]? |  yes  |  |

---


 
 
 #### [StoreRuleResponseSchema](#StoreRuleResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |
 | typeBasedPriority | [String]? |  yes  |  |
 | tagBasedPriority | [String]? |  yes  |  |
 | storePriority | [[StorePrioritySchema](#StorePrioritySchema)]? |  yes  |  |
 | sort | [String]? |  yes  |  |
 | conditions | [StoreRuleConditionSchema](#StoreRuleConditionSchema)? |  yes  |  |
 | isActive | Bool? |  yes  |  |

---


 
 
 #### [StoreRuleUpdateResponseSchema](#StoreRuleUpdateResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |
 | typeBasedPriority | [String]? |  yes  |  |
 | tagBasedPriority | [String]? |  yes  |  |
 | storePriority | [[StorePrioritySchema](#StorePrioritySchema)]? |  yes  |  |
 | sort | [String]? |  yes  |  |
 | conditions | [StoreRuleConditionSchema](#StoreRuleConditionSchema)? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | applicationId | String? |  yes  |  |

---


 
 
 #### [ServiceabilityModel](#ServiceabilityModel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lmCodLimit | Int |  no  |  |
 | isQc | Bool |  no  |  |
 | pickupCutoff | String |  no  |  |
 | routeCode | String |  no  |  |
 | isFirstMile | Bool |  no  |  |
 | isReturn | Bool |  no  |  |
 | isInstallation | Bool |  no  |  |
 | isLastMile | Bool |  no  |  |

---


 
 
 #### [CourierPartnerSchemeFeatures](#CourierPartnerSchemeFeatures)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | doorstepQc | Bool? |  yes  |  |
 | qr | Bool? |  yes  |  |
 | mps | Bool? |  yes  |  |
 | ndr | Bool? |  yes  |  |
 | ndrAttempts | Int? |  yes  |  |
 | dangerousGoods | Bool? |  yes  |  |
 | fragileGoods | Bool? |  yes  |  |
 | restrictedGoods | Bool? |  yes  |  |
 | coldStorageGoods | Bool? |  yes  |  |
 | doorstepExchange | Bool? |  yes  |  |
 | doorstepReturn | Bool? |  yes  |  |
 | productInstallation | Bool? |  yes  |  |
 | openboxDelivery | Bool? |  yes  |  |
 | statusUpdates | String? |  yes  |  |
 | multiPickSingleDrop | Bool? |  yes  |  |
 | singlePickMultiDrop | Bool? |  yes  |  |
 | multiPickMultiDrop | Bool? |  yes  |  |
 | ewaybill | Bool? |  yes  |  |

---


 
 
 #### [CourierPartnerSchemeModel](#CourierPartnerSchemeModel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | extensionId | String |  no  |  |
 | schemeId | String |  no  |  |
 | weight | [ArithmeticOperations](#ArithmeticOperations) |  no  |  |
 | transportType | String |  no  |  |
 | region | String |  no  |  |
 | deliveryType | String |  no  |  |
 | paymentMode | [String] |  no  |  |
 | stage | String |  no  |  |
 | feature | [CourierPartnerSchemeFeatures](#CourierPartnerSchemeFeatures) |  no  |  |

---


 
 
 #### [CourierAccountResponse](#CourierAccountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accountId | String |  no  |  |
 | schemeId | String |  no  |  |
 | isSelfShip | Bool |  no  |  |
 | stage | String |  no  |  |
 | isOwnAccount | Bool |  no  |  |
 | schemeRules | [CourierPartnerSchemeModel](#CourierPartnerSchemeModel) |  no  |  |

---


 
 
 #### [CompanyCourierPartnerAccountListResponse](#CompanyCourierPartnerAccountListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CourierAccountResponse](#CourierAccountResponse)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [PackageMaterial](#PackageMaterial)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | width | Double |  no  |  |
 | height | Double |  no  |  |
 | length | Double |  no  |  |
 | rules | [[PackageMaterialRule](#PackageMaterialRule)]? |  yes  |  |
 | storeIds | [Int] |  no  |  |
 | weight | Double |  no  |  |
 | errorRate | Double |  no  |  |
 | packageType | String |  no  |  |
 | size | String |  no  |  |
 | media | [String]? |  yes  |  |
 | channels | [[Channel](#Channel)] |  no  |  |
 | trackInventory | Bool? |  yes  |  |
 | status | String |  no  |  |
 | maxWeight | Double? |  yes  |  |
 | packageVolWeight | Double? |  yes  |  |
 | autoCalculate | Bool? |  yes  |  |

---


 
 
 #### [PackageMaterialResponse](#PackageMaterialResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | id | String? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | width | Double |  no  |  |
 | height | Double |  no  |  |
 | length | Double |  no  |  |
 | rules | [[PackageMaterialRule](#PackageMaterialRule)]? |  yes  |  |
 | storeIds | [Int] |  no  |  |
 | weight | Double |  no  |  |
 | errorRate | Double |  no  |  |
 | packageType | String |  no  |  |
 | size | String |  no  |  |
 | media | [String]? |  yes  |  |
 | channels | [[Channel](#Channel)] |  no  |  |
 | trackInventory | Bool? |  yes  |  |
 | status | String |  no  |  |
 | maxWeight | Double? |  yes  |  |
 | packageVolWeight | Double? |  yes  |  |
 | autoCalculate | Bool? |  yes  |  |

---


 
 
 #### [PackageMaterialRule](#PackageMaterialRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ruleId | String? |  yes  |  |
 | quantity | [PackageMaterialRuleQuantity](#PackageMaterialRuleQuantity)? |  yes  |  |
 | weight | Int? |  yes  |  |

---


 
 
 #### [PackageRule](#PackageRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | companyId | Int |  no  |  |
 | type | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | productTag | [PackageRuleProductTag](#PackageRuleProductTag)? |  yes  |  |
 | productId | [PackageRuleProduct](#PackageRuleProduct)? |  yes  |  |
 | categoryId | [PackageRuleCategory](#PackageRuleCategory)? |  yes  |  |

---


 
 
 #### [PackageRuleResponse](#PackageRuleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String |  no  |  |
 | companyId | Int |  no  |  |
 | type | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | productTag | [PackageRuleProductTag](#PackageRuleProductTag)? |  yes  |  |
 | productId | [PackageRuleProduct](#PackageRuleProduct)? |  yes  |  |
 | categoryId | [PackageRuleCategory](#PackageRuleCategory)? |  yes  |  |

---


 
 
 #### [Channel](#Channel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [PackageMaterialRuleList](#PackageMaterialRuleList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [PackageRuleResponse](#PackageRuleResponse)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PackageMaterialList](#PackageMaterialList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [PackageMaterialResponse](#PackageMaterialResponse)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PackageRuleProduct](#PackageRuleProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | includes | [Int]? |  yes  |  |

---


 
 
 #### [PackageRuleProductTag](#PackageRuleProductTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | includes | [String]? |  yes  |  |

---


 
 
 #### [PackageRuleCategory](#PackageRuleCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | includes | [Int]? |  yes  |  |

---


 
 
 #### [PackageMaterialRuleQuantity](#PackageMaterialRuleQuantity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int? |  yes  |  |
 | max | Int? |  yes  |  |

---


 
 
 #### [RulePriorityRequest](#RulePriorityRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ruleId | String |  no  |  |
 | priority | Int |  no  |  |

---


 
 
 #### [RulePriorityResponse](#RulePriorityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ArticleAssignment](#ArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | level | String? |  yes  |  |
 | strategy | String? |  yes  | The strategy parameter allows users to specify the desired approach or criteria for selecting optimal locations. |

---


 
 
 #### [ServiceabilityLocation](#ServiceabilityLocation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | longitude | String |  no  | The longitude of the serviceability location. |
 | latitude | String |  no  | The latitude of the serviceability location. |

---


 
 
 #### [LocationDetailsServiceability](#LocationDetailsServiceability)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | String? |  yes  | The pincode of the serviceability location. |
 | sector | String? |  yes  | The sector of the serviceability location. |
 | state | String? |  yes  | The state of the serviceability location. |
 | country | String |  no  | The country of the serviceability location. |
 | city | String? |  yes  | The city of the serviceability location. |
 | countryIsoCode | String |  no  | The ISO code of the country. |
 | location | [ServiceabilityLocation](#ServiceabilityLocation)? |  yes  |  |

---


 
 
 #### [OptimalLocationsArticles](#OptimalLocationsArticles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int |  no  |  |
 | size | String |  no  |  |
 | quantity | String |  no  |  |
 | groupId | String? |  yes  |  |
 | isPrimaryItem | Bool? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | articleAssignment | [ArticleAssignment](#ArticleAssignment) |  no  |  |
 | ignoreLocations | [Int] |  no  |  |
 | assignLocations | [Int] |  no  |  |
 | sellerId | Int? |  yes  |  |

---


 
 
 #### [OptimlLocationsRequestSchema](#OptimlLocationsRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channelId | String |  no  |  |
 | channelType | String |  no  |  |
 | toServiceability | [LocationDetailsServiceability](#LocationDetailsServiceability) |  no  |  |
 | article | [OptimalLocationsArticles](#OptimalLocationsArticles)? |  yes  |  |

---


 
 
 #### [OptimalLocationArticlesResponse](#OptimalLocationArticlesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int |  no  |  |
 | size | String |  no  |  |
 | quantity | Int |  no  |  |
 | groupId | String? |  yes  |  |
 | isPrimaryItem | Bool? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | articleAssignment | [ArticleAssignment](#ArticleAssignment) |  no  |  |
 | sellerId | Int? |  yes  |  |
 | ignoreLocations | [Int] |  no  |  |
 | assignLocations | [Int] |  no  |  |
 | priceEffective | Double |  no  |  |
 | mtoQuantity | Int |  no  |  |
 | id | String |  no  |  |
 | uid | String |  no  |  |

---


 
 
 #### [OptimalLocationAssignedStoresResponse](#OptimalLocationAssignedStoresResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeId | Int |  no  |  |
 | articles | [[OptimalLocationArticlesResponse](#OptimalLocationArticlesResponse)] |  no  |  |

---


 
 
 #### [OptimalLocationsResponse](#OptimalLocationsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | assignedStores | [[OptimalLocationAssignedStoresResponse](#OptimalLocationAssignedStoresResponse)] |  no  |  |

---



