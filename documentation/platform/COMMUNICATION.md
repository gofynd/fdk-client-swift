



##### [Back to Platform docs](./README.md)

## Communication Methods
Manages email, sms, push notifications sent to users
* [getAppProviders](#getappproviders)
* [updateAppProviders](#updateappproviders)
* [getGlobalProviders](#getglobalproviders)
* [getCampaigns](#getcampaigns)
* [createCampaign](#createcampaign)
* [getCampaignById](#getcampaignbyid)
* [updateCampaignById](#updatecampaignbyid)
* [getStatsOfCampaignById](#getstatsofcampaignbyid)
* [getAudiences](#getaudiences)
* [createAudience](#createaudience)
* [getBigqueryHeaders](#getbigqueryheaders)
* [getAudienceById](#getaudiencebyid)
* [updateAudienceById](#updateaudiencebyid)
* [getNSampleRecordsFromCsv](#getnsamplerecordsfromcsv)
* [getEmailProviders](#getemailproviders)
* [createEmailProvider](#createemailprovider)
* [getDefaultEmailProviders](#getdefaultemailproviders)
* [getEmailProviderById](#getemailproviderbyid)
* [updateEmailProviderById](#updateemailproviderbyid)
* [deleteEmailProviderById](#deleteemailproviderbyid)
* [getEmailTemplates](#getemailtemplates)
* [createEmailTemplate](#createemailtemplate)
* [getSystemEmailTemplates](#getsystememailtemplates)
* [getEmailTemplateById](#getemailtemplatebyid)
* [updateEmailTemplateById](#updateemailtemplatebyid)
* [deleteEmailTemplateById](#deleteemailtemplatebyid)
* [getSubscribedEmailTemplates](#getsubscribedemailtemplates)
* [sendCommunicationSynchronously](#sendcommunicationsynchronously)
* [sendCommunicationAsynchronously](#sendcommunicationasynchronously)
* [getEventSubscriptions](#geteventsubscriptions)
* [getJobs](#getjobs)
* [triggerCampaignJob](#triggercampaignjob)
* [getJobLogs](#getjoblogs)
* [getCommunicationLogs](#getcommunicationlogs)
* [getSystemNotifications](#getsystemnotifications)
* [sendOtp](#sendotp)
* [verfiyOtp](#verfiyotp)
* [getSmsProviders](#getsmsproviders)
* [createSmsProvider](#createsmsprovider)
* [getDefaultSmsProviders](#getdefaultsmsproviders)
* [getSmsProviderById](#getsmsproviderbyid)
* [updateSmsProviderById](#updatesmsproviderbyid)
* [deleteSmsProviderById](#deletesmsproviderbyid)
* [getSmsTemplates](#getsmstemplates)
* [createSmsTemplate](#createsmstemplate)
* [getSystemSmsTemplates](#getsystemsmstemplates)
* [getSmsTemplateById](#getsmstemplatebyid)
* [updateSmsTemplateById](#updatesmstemplatebyid)
* [deleteSmsTemplateById](#deletesmstemplatebyid)
* [getSubscribedSmsTemplates](#getsubscribedsmstemplates)
* [getVoiceProviders](#getvoiceproviders)
* [createVoiceProvider](#createvoiceprovider)
* [getVoiceProviderById](#getvoiceproviderbyid)
* [getVoiceTemplates](#getvoicetemplates)
* [createVoiceTemplate](#createvoicetemplate)
* [getVoiceTemplateById](#getvoicetemplatebyid)
* [updateVoiceTemplateById](#updatevoicetemplatebyid)
* [deleteVoiceTemplateById](#deletevoicetemplatebyid)
* [getSystemVoiceTemplates](#getsystemvoicetemplates)



## Methods with example and description


#### getAppProviders
Get app providers




```swift
platformClient.application("<APPLICATION_ID>").communication.getAppProviders() { (response, error) in
    // Use response
}
```






Using this API will return a list of application providers.

*Returned Response:*




[AppProvider](#AppProvider)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "email": {
      "transaction": {
        "provider": "5f0408cec0c2a2175a1c16f6"
      },
      "promotional": {
        "provider": "6385ed1ebf50a6c9a61d58d5"
      },
      "otp": {
        "provider": "5f0408cec0c2a2175a1c16f6"
      }
    },
    "sms": {
      "transaction": {
        "provider": "63db8c68975237fff4f2133e"
      },
      "promotional": {
        "provider": "63db8c68975237fff4f2133e"
      },
      "otp": {
        "provider": "63db8c68975237fff4f21346"
      }
    },
    "voice": {
      "transaction": {
        "provider": "643cf4098bb1fc2c1d67f089"
      },
      "otp": {
        "provider": "643cf4098bb1fc2c1d67f089"
      }
    },
    "_id": "63e20ce7648381edb6de45ff",
    "application": "637b6355dc65337da9b5c951",
    "created_at": "2023-02-07T08:33:43.169Z",
    "updated_at": "2023-05-30T07:16:39.161Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### updateAppProviders
update app providers




```swift
platformClient.application("<APPLICATION_ID>").communication.updateAppProviders(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AppProviderReq | yes | Request body |


Using this API will update the application providers.

*Returned Response:*




[AppProvider](#AppProvider)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "email": {
      "transaction": {
        "provider": "5f0408cec0c2a2175a1c16f6"
      },
      "promotional": {
        "provider": "6385ed1ebf50a6c9a61d58d5"
      },
      "otp": {
        "provider": "5f0408cec0c2a2175a1c16f6"
      }
    },
    "sms": {
      "transaction": {
        "provider": "63db8c68975237fff4f2133e"
      },
      "promotional": {
        "provider": "63db8c68975237fff4f2133e"
      },
      "otp": {
        "provider": "63db8c68975237fff4f21346"
      }
    },
    "voice": {
      "transaction": {
        "provider": "643cf4098bb1fc2c1d67f089"
      },
      "otp": {
        "provider": "643cf4098bb1fc2c1d67f089"
      }
    },
    "_id": "63e20ce7648381edb6de45ff",
    "application": "637b6355dc65337da9b5c951",
    "created_at": "2023-02-07T08:33:43.169Z",
    "updated_at": "2023-05-30T07:16:39.161Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getGlobalProviders
Get global providers




```swift
platformClient.application("<APPLICATION_ID>").communication.getGlobalProviders() { (response, error) in
    // Use response
}
```






Using this API, will retrieve a list of global providers.

*Returned Response:*




[GlobalProviders](#GlobalProviders)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "email": [
      {
        "_id": "5f0408cec0c2a2175a1c16f6",
        "name": "Fynd-falconide"
      }
    ],
    "sms": [
      {
        "_id": "63db8c68975237fff4f2133e",
        "name": "Fynd Transactional - timesinternet"
      },
      {
        "_id": "63db8c68975237fff4f21346",
        "name": "Fynd OTP - timesinternet"
      }
    ],
    "voice": [
      {
        "_id": "643cf4098bb1fc2c1d67f089",
        "name": "Fynd-exotel"
      }
    ]
  }
}
```
</details>

</details>









---


#### getCampaigns
Get campaigns




```swift
platformClient.application("<APPLICATION_ID>").communication.getCampaigns(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get campaigns

*Returned Response:*




[Campaigns](#Campaigns)

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
        "recipient_headers": {
          "email": "email"
        },
        "email": {
          "template": {
            "key": "_id",
            "value": "5fb6757a09fd90ca91917a60"
          },
          "provider": {
            "_id": "5e560652b5eb4b1f13b4d601",
            "from_name": "Fynd",
            "from_email": "hey@gofynd.com"
          }
        },
        "description": "",
        "tags": [],
        "is_active": true,
        "_id": "6009a1ea1f6a61d88e80a867",
        "datasource": "6009a1be1f6a61a13180a866",
        "type": "email",
        "name": "testing bq email",
        "application": "000000000000000000000004",
        "created_at": "2021-01-21T15:46:50.357Z",
        "updated_at": "2021-01-21T15:46:50.357Z",
        "slug": "testing-bq-email-vPyAd1YB1",
        "__v": 0
      },
      {
        "recipient_headers": {
          "sms": "phone_number"
        },
        "sms": {
          "template": {
            "key": "_id",
            "value": "5fb675d009fd903196917a61"
          },
          "provider": {
            "_id": "5e560652b5eb4b06f3b4d5ff"
          }
        },
        "description": "",
        "tags": [],
        "is_active": true,
        "_id": "600981561f6a612c6080a85e",
        "datasource": "600981461f6a614b2c80a85d",
        "type": "sms",
        "name": "test",
        "application": "000000000000000000000004",
        "created_at": "2021-01-21T13:27:50.848Z",
        "updated_at": "2021-01-21T13:27:50.848Z",
        "slug": "test-ipLO3c8Jh",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 2,
      "item_total": 2,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### createCampaign
Create campaign




```swift
platformClient.application("<APPLICATION_ID>").communication.createCampaign(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CampaignReq | yes | Request body |


Create campaign

*Returned Response:*




[Campaign](#Campaign)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "recipient_headers": {
      "email": "email"
    },
    "email": {
      "template": {
        "key": "_id",
        "value": "5fb6757a09fd90ca91917a60"
      },
      "provider": {
        "_id": "5e560652b5eb4b1f13b4d601",
        "from_name": "Fynd",
        "from_email": "hey@gofynd.com"
      }
    },
    "description": "",
    "tags": [],
    "is_active": true,
    "_id": "6009a1ea1f6a61d88e80a867",
    "datasource": "6009a1be1f6a61a13180a866",
    "type": "email",
    "name": "testing bq email",
    "application": "000000000000000000000004",
    "created_at": "2021-01-21T15:46:50.357Z",
    "updated_at": "2021-01-21T15:46:50.357Z",
    "slug": "testing-bq-email-vPyAd1YB1",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getCampaignById
Get campaign by id




```swift
platformClient.application("<APPLICATION_ID>").communication.getCampaignById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Campaign id |  



Get campaign by id

*Returned Response:*




[Campaign](#Campaign)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "recipient_headers": {
      "email": "email"
    },
    "email": {
      "template": {
        "key": "_id",
        "value": "5fb6757a09fd90ca91917a60"
      },
      "provider": {
        "_id": "5e560652b5eb4b1f13b4d601",
        "from_name": "Fynd",
        "from_email": "hey@gofynd.com"
      }
    },
    "description": "",
    "tags": [],
    "is_active": true,
    "_id": "6009a1ea1f6a61d88e80a867",
    "datasource": "6009a1be1f6a61a13180a866",
    "type": "email",
    "name": "testing bq email",
    "application": "000000000000000000000004",
    "created_at": "2021-01-21T15:46:50.357Z",
    "updated_at": "2021-01-21T15:46:50.357Z",
    "slug": "testing-bq-email-vPyAd1YB1",
    "__v": 0
  }
}
```
</details>

</details>









---


#### updateCampaignById
Update campaign by id




```swift
platformClient.application("<APPLICATION_ID>").communication.updateCampaignById(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Campaign id |  
| body | CampaignReq | yes | Request body |


Update campaign by id

*Returned Response:*




[Campaign](#Campaign)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "recipient_headers": {
      "email": "email"
    },
    "email": {
      "template": {
        "key": "_id",
        "value": "5fb6757a09fd90ca91917a60"
      },
      "provider": {
        "_id": "5e560652b5eb4b1f13b4d601",
        "from_name": "Fynd",
        "from_email": "hey@gofynd.com"
      }
    },
    "description": "",
    "tags": [],
    "is_active": true,
    "_id": "6009a1ea1f6a61d88e80a867",
    "datasource": "6009a1be1f6a61a13180a866",
    "type": "email",
    "name": "testing bq email",
    "application": "000000000000000000000004",
    "created_at": "2021-01-21T15:46:50.357Z",
    "updated_at": "2021-01-21T15:46:50.357Z",
    "slug": "testing-bq-email-vPyAd1YB1",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getStatsOfCampaignById
Get stats of campaign by id




```swift
platformClient.application("<APPLICATION_ID>").communication.getStatsOfCampaignById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Campaign id |  



Get stats of campaign by id

*Returned Response:*




[GetStats](#GetStats)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": [
    {
      "_id": "6009a1ea1f6a61d88e80a867",
      "imported": {
        "count": 2
      },
      "processed": {
        "email": {
          "success": 2,
          "failed": 0,
          "suppressed": 0
        },
        "sms": {
          "success": 0,
          "failed": 0,
          "suppressed": 0
        }
      }
    }
  ]
}
```
</details>

</details>









---


#### getAudiences
Get audiences




```swift
platformClient.application("<APPLICATION_ID>").communication.getAudiences(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get audiences

*Returned Response:*




[Audiences](#Audiences)

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
        "description": "test description",
        "tags": [
          "csv"
        ],
        "headers": [
          "phone_number",
          "email",
          "firstname",
          "lastname",
          "orderid"
        ],
        "is_active": true,
        "_id": "5fb6675c09fd901023917a5f",
        "name": "Test csv",
        "file_url": "https://hdn-1.addsale.com/x0/application/000000000000000000000004/datasources/2_r_D1jt6-test-1-entries.csv",
        "type": "raw_csv",
        "records_count": 3,
        "application": "000000000000000000000004",
        "created_at": "2020-11-19T12:38:52.580Z",
        "updated_at": "2020-11-19T12:38:52.580Z",
        "slug": "Test-csv",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### createAudience
Create audience




```swift
platformClient.application("<APPLICATION_ID>").communication.createAudience(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AudienceReq | yes | Request body |


Create audience

*Returned Response:*




[Audience](#Audience)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "description": "test description",
    "tags": [
      "csv"
    ],
    "headers": [
      "phone_number",
      "email",
      "firstname",
      "lastname",
      "orderid"
    ],
    "is_active": true,
    "_id": "5fb6675c09fd901023917a5f",
    "name": "Test csv",
    "file_url": "https://hdn-1.addsale.com/x0/application/000000000000000000000004/datasources/2_r_D1jt6-test-1-entries.csv",
    "type": "raw_csv",
    "records_count": 3,
    "application": "000000000000000000000004",
    "created_at": "2020-11-19T12:38:52.580Z",
    "updated_at": "2020-11-19T12:38:52.580Z",
    "slug": "Test-csv",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getBigqueryHeaders
Get bigquery headers




```swift
platformClient.application("<APPLICATION_ID>").communication.getBigqueryHeaders(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BigqueryHeadersReq | yes | Request body |


Get bigquery headers

*Returned Response:*




[BigqueryHeadersRes](#BigqueryHeadersRes)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "headers": [
      {
        "name": "firstname",
        "type": "STRING"
      },
      {
        "name": "lastname",
        "type": "STRING"
      },
      {
        "name": "email",
        "type": "STRING"
      },
      {
        "name": "phone",
        "type": "STRING"
      },
      {
        "name": "countryCode",
        "type": "STRING"
      },
      {
        "name": "application",
        "type": "STRING"
      }
    ]
  }
}
```
</details>

</details>









---


#### getAudienceById
Get audience by id




```swift
platformClient.application("<APPLICATION_ID>").communication.getAudienceById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Audience id |  



Get audience by id

*Returned Response:*




[Audience](#Audience)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "description": "test description",
    "tags": [
      "csv"
    ],
    "headers": [
      "phone_number",
      "email",
      "firstname",
      "lastname",
      "orderid"
    ],
    "is_active": true,
    "_id": "5fb6675c09fd901023917a5f",
    "name": "Test csv",
    "file_url": "https://hdn-1.addsale.com/x0/application/000000000000000000000004/datasources/2_r_D1jt6-test-1-entries.csv",
    "type": "raw_csv",
    "records_count": 3,
    "application": "000000000000000000000004",
    "created_at": "2020-11-19T12:38:52.580Z",
    "updated_at": "2020-11-19T12:38:52.580Z",
    "slug": "Test-csv",
    "__v": 0
  }
}
```
</details>

</details>









---


#### updateAudienceById
Update audience by id




```swift
platformClient.application("<APPLICATION_ID>").communication.updateAudienceById(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Audience id |  
| body | AudienceReq | yes | Request body |


Update audience by id

*Returned Response:*




[Audience](#Audience)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "description": "test description",
    "tags": [
      "csv"
    ],
    "headers": [
      "phone_number",
      "email",
      "firstname",
      "lastname",
      "orderid"
    ],
    "is_active": true,
    "_id": "5fb6675c09fd901023917a5f",
    "name": "Test csv",
    "file_url": "https://hdn-1.addsale.com/x0/application/000000000000000000000004/datasources/2_r_D1jt6-test-1-entries.csv",
    "type": "raw_csv",
    "records_count": 3,
    "application": "000000000000000000000004",
    "created_at": "2020-11-19T12:38:52.580Z",
    "updated_at": "2020-11-19T12:38:52.580Z",
    "slug": "Test-csv",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getNSampleRecordsFromCsv
Get n sample records from csv




```swift
platformClient.application("<APPLICATION_ID>").communication.getNSampleRecordsFromCsv(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | GetNRecordsCsvReq | yes | Request body |


Get n sample records from csv

*Returned Response:*




[GetNRecordsCsvRes](#GetNRecordsCsvRes)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": [
    {
      "phone_number": "1234567890",
      "email": "abcxyz@gofynd.com",
      "firstname": "Abc",
      "lastname": "Xyz",
      "orderid": "1"
    }
  ]
}
```
</details>

</details>









---


#### getEmailProviders
Get email providers




```swift
platformClient.application("<APPLICATION_ID>").communication.getEmailProviders(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



By using this api, you may retrieve all the email providers that the user has setup. The outcome will be in a paginated form, fetching providers according to the current page and page number parameters.

*Returned Response:*




[EmailProviders](#EmailProviders)

Successful retrieval of email providers list




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "type": "application",
        "provider": "falconide",
        "from_address": [
          {
            "is_default": true,
            "name": "abc",
            "email": "abc@test.com"
          }
        ],
        "_id": "5fd9fd44c474a7e3d5d376d6",
        "name": "test falconide",
        "description": "test",
        "api_key": "testtttt",
        "application": "000000000000000000000004",
        "created_at": "2020-12-16T12:27:48.051Z",
        "updated_at": "2020-12-16T12:27:48.051Z",
        "slug": "test-falconide-application-falconide-ZTD-D7wbB",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### createEmailProvider
Create email provider




```swift
platformClient.application("<APPLICATION_ID>").communication.createEmailProvider(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EmailProviderReq | yes | Request body |


By using this API, a new email provider will be created based on the user's customised definitions.

*Returned Response:*




[EmailProvider](#EmailProvider)

Successfully created a eamil provider




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "type": "application",
    "provider": "falconide",
    "from_address": [
      {
        "is_default": true,
        "name": "abc",
        "email": "abc@test.com"
      }
    ],
    "_id": "5fd9fd44c474a7e3d5d376d6",
    "name": "test falconide",
    "description": "test",
    "api_key": "testtttt",
    "application": "000000000000000000000004",
    "created_at": "2020-12-16T12:27:48.051Z",
    "updated_at": "2020-12-16T12:27:48.051Z",
    "slug": "test-falconide-application-falconide-ZTD-D7wbB",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getDefaultEmailProviders
Get default email providers




```swift
platformClient.application("<APPLICATION_ID>").communication.getDefaultEmailProviders() { (response, error) in
    // Use response
}
```






Using this api will fetch a list of email providers provided by the system i.e the default providers.

*Returned Response:*




[[DefaultEmailProviders]](#[DefaultEmailProviders])

Successful retrieval of the default email providers list




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": [
    {
      "_id": "5f0408cec0c2a2175a1c16f6",
      "from": [
        {
          "name": "Fynd",
          "email": "hey@gofynd.com",
          "is_default": true
        },
        {
          "name": "Fynd",
          "email": "updates@gofynd.com",
          "is_default": false
        }
      ],
      "name": "Fynd",
      "is_default": true
    }
  ]
}
```
</details>

</details>









---


#### getEmailProviderById
Get email provider by id




```swift
platformClient.application("<APPLICATION_ID>").communication.getEmailProviderById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Email provider id |  



By using this API, a specific email provider will be returned that was retrieved based on the provider's id.

*Returned Response:*




[EmailProvider](#EmailProvider)

Successful retrieval of the specific email provider




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "type": "application",
    "provider": "falconide",
    "from_address": [
      {
        "is_default": true,
        "name": "abc",
        "email": "abc@test.com"
      }
    ],
    "_id": "5fd9fd44c474a7e3d5d376d6",
    "name": "test falconide",
    "description": "test",
    "api_key": "testtttt",
    "application": "000000000000000000000004",
    "created_at": "2020-12-16T12:27:48.051Z",
    "updated_at": "2020-12-16T12:27:48.051Z",
    "slug": "test-falconide-application-falconide-ZTD-D7wbB",
    "__v": 0
  }
}
```
</details>

</details>









---


#### updateEmailProviderById
Update email provider by id




```swift
platformClient.application("<APPLICATION_ID>").communication.updateEmailProviderById(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Email provider id |  
| body | EmailProviderReq | yes | Request body |


By using this API, you can modify a certain email provider's definitions based on it's ID.

*Returned Response:*




[EmailProvider](#EmailProvider)

Successfully modified a specific email provider using the provider ID




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "type": "application",
    "provider": "falconide",
    "from_address": [
      {
        "is_default": true,
        "name": "abc",
        "email": "abc@test.com"
      }
    ],
    "_id": "5fd9fd44c474a7e3d5d376d6",
    "name": "test falconide",
    "description": "test",
    "api_key": "testtttt",
    "application": "000000000000000000000004",
    "created_at": "2020-12-16T12:27:48.051Z",
    "updated_at": "2020-12-16T12:27:48.051Z",
    "slug": "test-falconide-application-falconide-ZTD-D7wbB",
    "__v": 0
  }
}
```
</details>

</details>









---


#### deleteEmailProviderById
delete email provider by id




```swift
platformClient.application("<APPLICATION_ID>").communication.deleteEmailProviderById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Email provider id |  



By using this api, you can delete a certain email provider based on its ID.

*Returned Response:*




[GenericSuccess](#GenericSuccess)

Successfully deleted a specific email provider using the provider ID




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "success": true
  }
}
```
</details>

</details>









---


#### getEmailTemplates
Get email templates




```swift
platformClient.application("<APPLICATION_ID>").communication.getEmailTemplates(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Email templates are predefined formats linked to various events for delivering messages to users. Use this API to get all email templates.

*Returned Response:*




[EmailTemplates](#EmailTemplates)

Refer `EmailTemplates` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "application": "637b6355dc65337da9b5c951",
        "is_system": false,
        "is_internal": false,
        "name": "title",
        "description": "desc",
        "editor_type": "bee",
        "editor_meta": "",
        "static_to": [],
        "static_cc": [
          "abc@abc.com"
        ],
        "static_bcc": [
          "abc@abc.com"
        ],
        "reply_to": "abc@abc.com",
        "tags": [
          "tag"
        ],
        "subject": {
          "template_type": "nunjucks",
          "template": "subject"
        },
        "html": {
          "template_type": "nunjucks",
          "template": ""
        },
        "url_shorten": {
          "enabled": false
        },
        "priority": "low",
        "template_variables": {
          "hello": "world"
        },
        "published": true,
        "category": "website",
        "_id": "649fca8fe89b403f490f9c55",
        "headers": [],
        "attachments": [],
        "created_at": "2023-07-01T06:41:19.360Z",
        "updated_at": "2023-07-01T06:41:19.360Z",
        "slug": "title-W9qbdl8AJ",
        "__v": 0,
        "from_name": "Fynd",
        "text": {
          "template_type": "nunjucks",
          "template": "subject"
        }
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 66,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### createEmailTemplate
Create email template




```swift
platformClient.application("<APPLICATION_ID>").communication.createEmailTemplate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EmailTemplateReq | yes | Request body |


Email templates are predefined formats linked to various events for delivering messages to users. Use this API to create an email template.

*Returned Response:*




[EmailTemplate](#EmailTemplate)

Refer `EmailTemplate` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "application": "637b6355dc65337da9b5c951",
    "is_system": false,
    "is_internal": false,
    "name": "title",
    "description": "desc",
    "editor_type": "bee",
    "editor_meta": "",
    "static_to": [],
    "static_cc": [
      "abc@abc.com"
    ],
    "static_bcc": [
      "abc@abc.com"
    ],
    "reply_to": "abc@abc.com",
    "tags": [
      "tag"
    ],
    "subject": {
      "template_type": "nunjucks",
      "template": "subject"
    },
    "html": {
      "template_type": "nunjucks",
      "template": ""
    },
    "url_shorten": {
      "enabled": false
    },
    "priority": "low",
    "template_variables": {
      "hello": "world"
    },
    "published": true,
    "category": "website",
    "_id": "649fca8fe89b403f490f9c55",
    "headers": [],
    "attachments": [],
    "created_at": "2023-07-01T06:41:19.360Z",
    "updated_at": "2023-07-01T06:41:19.360Z",
    "slug": "title-W9qbdl8AJ",
    "__v": 0,
    "from_name": "Fynd",
    "text": {
      "template_type": "nunjucks",
      "template": "subject"
    }
  }
}
```
</details>

</details>









---


#### getSystemEmailTemplates
Get system email templates




```swift
platformClient.application("<APPLICATION_ID>").communication.getSystemEmailTemplates() { (response, error) in
    // Use response
}
```






Email templates are predefined formats linked to various events for delivering messages to users. Use this API to get all system email templates.

*Returned Response:*




[SystemEmailTemplates](#SystemEmailTemplates)

Refer `SystemEmailTemplates` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": [
    {
      "url_shorten": {
        "enabled": false
      },
      "_id": "646b73e7e10612283cfd977f",
      "is_system": true,
      "is_internal": false,
      "name": "Online order confirmed",
      "slug": "bag_confirmed-email",
      "description": "Use this email template for notifying the customers, that their order is Confirmed.",
      "static_to": [],
      "static_cc": [],
      "static_bcc": [],
      "tags": [],
      "subject": {
        "template_type": "nunjucks",
        "template": "{{ email_subject }}"
      },
      "html": {
        "template_type": "nunjucks",
        "template": ""
      },
      "text": {
        "template_type": "nunjucks",
        "template": ""
      },
      "priority": "high",
      "template_variables": {},
      "published": true,
      "category": "website",
      "headers": [],
      "attachments": [],
      "created_at": "2023-05-22T13:53:43.468Z",
      "updated_at": "2023-05-22T13:53:43.468Z",
      "__v": 0
    }
  ]
}
```
</details>

</details>









---


#### getEmailTemplateById
Get email template by id




```swift
platformClient.application("<APPLICATION_ID>").communication.getEmailTemplateById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Email template id |  



Email templates are predefined formats linked to various events for delivering messages to users. Use this API to get an email template by id.

*Returned Response:*




[EmailTemplate](#EmailTemplate)

Refer `EmailTemplate` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "application": "637b6355dc65337da9b5c951",
    "is_system": false,
    "is_internal": false,
    "name": "title",
    "description": "desc",
    "editor_type": "bee",
    "editor_meta": "",
    "static_to": [],
    "static_cc": [
      "abc@abc.com"
    ],
    "static_bcc": [
      "abc@abc.com"
    ],
    "reply_to": "abc@abc.com",
    "tags": [
      "tag"
    ],
    "subject": {
      "template_type": "nunjucks",
      "template": "subject"
    },
    "html": {
      "template_type": "nunjucks",
      "template": ""
    },
    "url_shorten": {
      "enabled": false
    },
    "priority": "low",
    "template_variables": {
      "hello": "world"
    },
    "published": true,
    "category": "website",
    "_id": "649fca8fe89b403f490f9c55",
    "headers": [],
    "attachments": [],
    "created_at": "2023-07-01T06:41:19.360Z",
    "updated_at": "2023-07-01T06:41:19.360Z",
    "slug": "title-W9qbdl8AJ",
    "__v": 0,
    "from_name": "Fynd",
    "text": {
      "template_type": "nunjucks",
      "template": "subject"
    }
  }
}
```
</details>

</details>









---


#### updateEmailTemplateById
Update email template by id




```swift
platformClient.application("<APPLICATION_ID>").communication.updateEmailTemplateById(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Email template id |  
| body | EmailTemplateReq | yes | Request body |


Email templates are predefined formats linked to various events for delivering messages to users. Use this API to update an email template by id.

*Returned Response:*




[EmailTemplate](#EmailTemplate)

Refer `EmailTemplate` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "application": "637b6355dc65337da9b5c951",
    "is_system": false,
    "is_internal": false,
    "name": "title",
    "description": "desc",
    "editor_type": "bee",
    "editor_meta": "",
    "static_to": [],
    "static_cc": [
      "abc@abc.com"
    ],
    "static_bcc": [
      "abc@abc.com"
    ],
    "reply_to": "abc@abc.com",
    "tags": [
      "tag"
    ],
    "subject": {
      "template_type": "nunjucks",
      "template": "subject"
    },
    "html": {
      "template_type": "nunjucks",
      "template": ""
    },
    "url_shorten": {
      "enabled": false
    },
    "priority": "low",
    "template_variables": {
      "hello": "world"
    },
    "published": true,
    "category": "website",
    "_id": "649fca8fe89b403f490f9c55",
    "headers": [],
    "attachments": [],
    "created_at": "2023-07-01T06:41:19.360Z",
    "updated_at": "2023-07-01T06:41:19.360Z",
    "slug": "title-W9qbdl8AJ",
    "__v": 0,
    "from_name": "Fynd",
    "text": {
      "template_type": "nunjucks",
      "template": "subject"
    }
  }
}
```
</details>

</details>









---


#### deleteEmailTemplateById
Delete email template by id




```swift
platformClient.application("<APPLICATION_ID>").communication.deleteEmailTemplateById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Email template id |  



Email templates are predefined formats linked to various events for delivering messages to users. Use this API to delete an email template by id.

*Returned Response:*




[GenericDelete](#GenericDelete)

Refer `GenericDelete` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "message": "Deletion Successfull",
    "acknowledged": true,
    "affected": 1,
    "operation": "TEMP-ST-DEL:ID"
  }
}
```
</details>

</details>









---


#### getSubscribedEmailTemplates
Get subscribed email templates




```swift
platformClient.application("<APPLICATION_ID>").communication.getSubscribedEmailTemplates(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Email templates are predefined formats linked to various events for delivering messages to users. Use this API to get all subscribed email templates.

*Returned Response:*




[EmailTemplates](#EmailTemplates)

Refer `EmailTemplates` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "application": "637b6355dc65337da9b5c951",
        "is_system": false,
        "is_internal": false,
        "name": "title",
        "description": "desc",
        "editor_type": "bee",
        "editor_meta": "",
        "static_to": [],
        "static_cc": [
          "abc@abc.com"
        ],
        "static_bcc": [
          "abc@abc.com"
        ],
        "reply_to": "abc@abc.com",
        "tags": [
          "tag"
        ],
        "subject": {
          "template_type": "nunjucks",
          "template": "subject"
        },
        "html": {
          "template_type": "nunjucks",
          "template": ""
        },
        "url_shorten": {
          "enabled": false
        },
        "priority": "low",
        "template_variables": {
          "hello": "world"
        },
        "published": true,
        "category": "website",
        "_id": "649fca8fe89b403f490f9c55",
        "headers": [],
        "attachments": [],
        "created_at": "2023-07-01T06:41:19.360Z",
        "updated_at": "2023-07-01T06:41:19.360Z",
        "slug": "title-W9qbdl8AJ",
        "__v": 0,
        "from_name": "Fynd",
        "text": {
          "template_type": "nunjucks",
          "template": "subject"
        }
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 66,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### sendCommunicationSynchronously
Send email or sms synchronously




```swift
platformClient.application("<APPLICATION_ID>").communication.sendCommunicationSynchronously(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EngineRequest | yes | Request body |


Send email or sms synchronously

*Returned Response:*




[EngineResponse](#EngineResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "success": true
  }
}
```
</details>

</details>









---


#### sendCommunicationAsynchronously
Send email or sms asynchronously




```swift
platformClient.application("<APPLICATION_ID>").communication.sendCommunicationAsynchronously(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | EngineRequest | yes | Request body |


Send email or sms asynchronously

*Returned Response:*




[EngineResponse](#EngineResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "success": true
  }
}
```
</details>

</details>









---


#### getEventSubscriptions
Get event subscriptions




```swift
platformClient.application("<APPLICATION_ID>").communication.getEventSubscriptions(pageNo: pageNo, pageSize: pageSize, populate: populate, query: query) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| populate | [String]? | no | populate fields |   
| query | String? | no | Current request items count |  



Get event subscriptions

*Returned Response:*




[EventSubscriptions](#EventSubscriptions)

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
        "template": {
          "sms": {
            "subscribed": true,
            "template": null
          },
          "email": {
            "subscribed": true,
            "template": "5e5653c1d503e0038407fc16"
          }
        },
        "is_default": true,
        "_id": "5e56598f2bfda9050ccaa8e8",
        "application": "000000000000000000000004",
        "event": "5e5653c1d503e0038407fc10",
        "slug": "reset-password-event",
        "created_at": "2020-02-26T11:42:08.164Z",
        "updated_at": "2021-03-03T09:00:47.871Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": null
          },
          "email": {
            "subscribed": true,
            "template": "5e5653c1d503e0038407fc17"
          }
        },
        "is_default": true,
        "_id": "5e56598f2bfda9050ccaa911",
        "application": "000000000000000000000004",
        "event": "5e5653c1d503e0038407fc11",
        "slug": "invite-email-event",
        "created_at": "2020-02-26T11:42:08.174Z",
        "updated_at": "2021-03-03T09:00:47.871Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": null
          },
          "email": {
            "subscribed": true,
            "template": "5e5653c1d503e0038407fc14"
          }
        },
        "is_default": true,
        "_id": "5e56598f2bfda9050ccaa8f2",
        "application": "000000000000000000000004",
        "event": "5e5653c1d503e0038407fc12",
        "slug": "verify-email-event",
        "created_at": "2020-02-26T11:42:08.172Z",
        "updated_at": "2021-03-03T09:00:47.953Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": null
          },
          "email": {
            "subscribed": true,
            "template": "5e5653c1d503e0038407fc15"
          }
        },
        "is_default": true,
        "_id": "5e56598f2bfda9050ccaa8fd",
        "application": "000000000000000000000004",
        "event": "5e5653c1d503e0038407fc13",
        "slug": "verify-otp-event",
        "created_at": "2020-02-26T11:42:08.172Z",
        "updated_at": "2021-03-03T09:00:47.953Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a10343582051d211d1c"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a10343582051d211d1b"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d68",
        "application": "000000000000000000000004",
        "event": "5e565a10343582051d211d1d",
        "slug": "cancelled_customer-event",
        "created_at": "2020-02-26T11:44:22.246Z",
        "updated_at": "2021-03-03T09:00:47.953Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a10343582051d211d1f"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a10343582051d211d1e"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d6c",
        "application": "000000000000000000000004",
        "event": "5e565a11343582051d211d20",
        "slug": "cancelled_fynd-event",
        "created_at": "2020-02-26T11:44:22.314Z",
        "updated_at": "2021-03-03T09:00:47.953Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a11343582051d211d22"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a11343582051d211d21"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d65",
        "application": "000000000000000000000004",
        "event": "5e565a11343582051d211d23",
        "slug": "delivery_done-event",
        "created_at": "2020-02-26T11:44:22.246Z",
        "updated_at": "2021-03-03T09:00:47.972Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a11343582051d211d25"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a11343582051d211d24"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d61",
        "application": "000000000000000000000004",
        "event": "5e565a11343582051d211d26",
        "slug": "out_for_delivery-event",
        "created_at": "2020-02-26T11:44:22.171Z",
        "updated_at": "2021-03-03T09:00:47.972Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a12343582051d211d28"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a11343582051d211d27"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d62",
        "application": "000000000000000000000004",
        "event": "5e565a12343582051d211d29",
        "slug": "out_for_pickup-event",
        "created_at": "2020-02-26T11:44:22.171Z",
        "updated_at": "2021-03-03T09:00:47.972Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a12343582051d211d2b"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a12343582051d211d2a"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d69",
        "application": "000000000000000000000004",
        "event": "5e565a12343582051d211d2c",
        "slug": "placed-event",
        "created_at": "2020-02-26T11:44:22.246Z",
        "updated_at": "2021-03-03T09:00:47.953Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a12343582051d211d2e"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a12343582051d211d2d"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d66",
        "application": "000000000000000000000004",
        "event": "5e565a12343582051d211d2f",
        "slug": "refund_completed-event",
        "created_at": "2020-02-26T11:44:22.246Z",
        "updated_at": "2021-03-03T09:00:48.052Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a13343582051d211d31"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a12343582051d211d30"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d64",
        "application": "000000000000000000000004",
        "event": "5e565a13343582051d211d32",
        "slug": "refund_initiated-event",
        "created_at": "2020-02-26T11:44:22.246Z",
        "updated_at": "2021-03-03T09:00:47.972Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a13343582051d211d34"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a13343582051d211d33"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d6d",
        "application": "000000000000000000000004",
        "event": "5e565a13343582051d211d35",
        "slug": "rejected_by_customer-event",
        "created_at": "2020-02-26T11:44:22.314Z",
        "updated_at": "2021-03-03T09:00:47.972Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a13343582051d211d37"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a13343582051d211d36"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d63",
        "application": "000000000000000000000004",
        "event": "5e565a13343582051d211d38",
        "slug": "return_accepted-event",
        "created_at": "2020-02-26T11:44:22.178Z",
        "updated_at": "2021-03-03T09:00:48.052Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a14343582051d211d3a"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a13343582051d211d39"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d6a",
        "application": "000000000000000000000004",
        "event": "5e565a14343582051d211d3b",
        "slug": "return_bag_picked_by_dp-event",
        "created_at": "2020-02-26T11:44:22.246Z",
        "updated_at": "2021-03-03T09:00:48.052Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a14343582051d211d3d"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a14343582051d211d3c"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d67",
        "application": "000000000000000000000004",
        "event": "5e565a14343582051d211d3e",
        "slug": "return_initiated-event",
        "created_at": "2020-02-26T11:44:22.246Z",
        "updated_at": "2021-03-03T09:00:48.052Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a14343582051d211d40"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a14343582051d211d3f"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d6b",
        "application": "000000000000000000000004",
        "event": "5e565a14343582051d211d41",
        "slug": "return_not_accepted-event",
        "created_at": "2020-02-26T11:44:22.314Z",
        "updated_at": "2021-03-03T09:00:48.052Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e565a15343582051d211d43"
          },
          "email": {
            "subscribed": true,
            "template": "5e565a15343582051d211d42"
          }
        },
        "is_default": true,
        "_id": "5e565a16343582051d211d6e",
        "application": "000000000000000000000004",
        "event": "5e565a15343582051d211d44",
        "slug": "return_request_cancelled-event",
        "created_at": "2020-02-26T11:44:22.314Z",
        "updated_at": "2021-03-03T09:00:48.052Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e6a4b6d610dbf44166e74ba"
          },
          "email": {
            "subscribed": true,
            "template": null
          }
        },
        "is_default": true,
        "_id": "5e6a4b6e610dbf6b2a6e74c4",
        "application": "000000000000000000000004",
        "event": "5e6a4b6d610dbf3b146e74bb",
        "slug": "handed_over_to_customer-event",
        "created_at": "2020-03-12T14:47:10.453Z",
        "updated_at": "2021-03-03T09:00:48.141Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e6a4b6d610dbf01326e74b6"
          },
          "email": {
            "subscribed": true,
            "template": null
          }
        },
        "is_default": true,
        "_id": "5e6a4b6e610dbf907e6e74c2",
        "application": "000000000000000000000004",
        "event": "5e6a4b6d610dbf454e6e74b7",
        "slug": "arrived_at_store-event",
        "created_at": "2020-03-12T14:47:10.453Z",
        "updated_at": "2021-03-03T09:00:48.052Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5e6a4b6d610dbf69b16e74b8"
          },
          "email": {
            "subscribed": true,
            "template": null
          }
        },
        "is_default": true,
        "_id": "5e6a4b6e610dbf28086e74c3",
        "application": "000000000000000000000004",
        "event": "5e6a4b6d610dbf91c76e74b9",
        "slug": "bag_packed-event",
        "created_at": "2020-03-12T14:47:10.453Z",
        "updated_at": "2021-03-03T09:00:48.052Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": null
          },
          "email": {
            "subscribed": true,
            "template": "5ed72116ccc0c408fbb5a404"
          }
        },
        "is_default": true,
        "_id": "5ed72117ccc0c48f29b5a408",
        "application": "000000000000000000000004",
        "event": "5ed72116ccc0c4e240b5a405",
        "slug": "order-review-reminder-event",
        "created_at": "2020-06-03T04:03:35.394Z",
        "updated_at": "2021-03-03T09:00:48.052Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5f633b15b490eaf13f494bf4"
          },
          "email": {
            "subscribed": true,
            "template": null
          }
        },
        "is_default": true,
        "_id": "5f633b16b490ea31eb494bfd",
        "application": "000000000000000000000004",
        "event": "5f633b15b490ea3c9b494bf5",
        "slug": "referral-code-applied-to-referrer",
        "created_at": "2020-09-17T10:31:50.204Z",
        "updated_at": "2021-03-03T09:00:48.141Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5f633b15b490ea465b494bf2"
          },
          "email": {
            "subscribed": true,
            "template": null
          }
        },
        "is_default": true,
        "_id": "5f633b16b490eada59494bfc",
        "application": "000000000000000000000004",
        "event": "5f633b15b490ea40dd494bf3",
        "slug": "referral-code-applied-to-referred-friend",
        "created_at": "2020-09-17T10:31:50.204Z",
        "updated_at": "2021-03-03T09:00:48.141Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5fe2e7da09c5fc047172e830"
          },
          "email": {
            "subscribed": true,
            "template": null
          }
        },
        "is_default": true,
        "_id": "5fe2e7dc09c5fc657372e841",
        "application": "000000000000000000000004",
        "event": "5fe2e7da09c5fc3da372e831",
        "slug": "return_dp_out_for_pickup-event",
        "created_at": "2020-12-23T06:46:52.214Z",
        "updated_at": "2021-03-03T09:00:48.141Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5fe2e7da09c5fcef0a72e82b"
          },
          "email": {
            "subscribed": true,
            "template": "5ff841fd864df30915c416e9"
          }
        },
        "is_default": true,
        "_id": "600951fb0e9745637d2e5081",
        "application": "000000000000000000000004",
        "event": "5fe2e7da09c5fc524f72e82c",
        "slug": "delivery_attempt_failed-event",
        "created_at": "2021-01-21T10:05:47.315Z",
        "updated_at": "2021-03-03T09:00:48.141Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5fe2e7da09c5fc6c5272e82e"
          },
          "email": {
            "subscribed": true,
            "template": "5fe2e7da09c5fc7fee72e82d"
          }
        },
        "is_default": true,
        "_id": "5fe2e7dc09c5fc10fe72e840",
        "application": "000000000000000000000004",
        "event": "5fe2e7da09c5fc611c72e82f",
        "slug": "return_bag_picked-event",
        "created_at": "2020-12-23T06:46:52.214Z",
        "updated_at": "2021-03-03T09:00:48.141Z",
        "__v": 0
      },
      {
        "template": {
          "sms": {
            "subscribed": true,
            "template": "5fe2e7da09c5fc4cde72e829"
          },
          "email": {
            "subscribed": true,
            "template": null
          }
        },
        "is_default": true,
        "_id": "5fe2e7dc09c5fcf4fc72e83e",
        "application": "000000000000000000000004",
        "event": "5fe2e7da09c5fc72d272e82a",
        "slug": "bag_picked-event",
        "created_at": "2020-12-23T06:46:52.214Z",
        "updated_at": "2021-03-03T09:00:48.141Z",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 200,
      "item_total": 28,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### getJobs
Get jobs




```swift
platformClient.application("<APPLICATION_ID>").communication.getJobs(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get jobs

*Returned Response:*




[Jobs](#Jobs)

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
        "completed": true,
        "is_active": false,
        "_id": "6044be260c92a7be0624f1cf",
        "campaign": "6044be1e0c92a7026924f1ce",
        "application": "000000000000000000000001",
        "created_at": "2021-03-07T11:51:02.234Z",
        "updated_at": "2021-03-07T12:12:36.587Z",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 50,
      "item_total": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### triggerCampaignJob
Trigger campaign job




```swift
platformClient.application("<APPLICATION_ID>").communication.triggerCampaignJob(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | TriggerJobRequest | yes | Request body |


Trigger campaign job

*Returned Response:*




[TriggerJobResponse](#TriggerJobResponse)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "status": 200
  }
}
```
</details>

</details>









---


#### getJobLogs
Get job logs




```swift
platformClient.application("<APPLICATION_ID>").communication.getJobLogs(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get job logs

*Returned Response:*




[JobLogs](#JobLogs)

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
        "imported": {
          "count": 61135
        },
        "processed": {
          "email": {
            "success": 0,
            "failed": 0,
            "suppressed": 0
          },
          "sms": {
            "success": 61313,
            "failed": 85,
            "suppressed": 87
          }
        },
        "_id": "6044be30bc5f4b79aae7b29f",
        "job": "6044be260c92a7be0624f1cf",
        "campaign": "6044be1e0c92a7026924f1ce",
        "created_at": "2021-03-07T11:51:12.778Z",
        "updated_at": "2021-03-07T12:14:11.475Z",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 50,
      "item_total": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### getCommunicationLogs
Get communication logs




```swift
platformClient.application("<APPLICATION_ID>").communication.getCommunicationLogs(pageId: pageId, pageSize: pageSize, sort: sort, query: query) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageId | String? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on _id |   
| query | [String: Any]? | no |  |  



Get communication logs

*Returned Response:*




[Logs](#Logs)

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
        "sms": {
          "phone_number": "1234567890",
          "country_code": "+91",
          "template": "603e00649014219f87943213",
          "provider": "5f8ee2234d70f7c5624f0413"
        },
        "pushnotification": {
          "pushtokens": []
        },
        "meta": {
          "type": "job",
          "job": "603e021f171b19ee5a4324f4",
          "campaign": "603e0217171b19556e4324f3",
          "identifier": "pointblank.00395d65-c0a9-f9dc-0c46-5d65c0aa0c46"
        },
        "_id": "603e02300b9f817e1592fcbd",
        "application": "000000000000000000000004",
        "service": "sms-consumer",
        "step": "MSG_SENT",
        "status": "success",
        "pod": "fynd-core-pointblank-smslow-cnsmr-dply-d6dbf9d7f-b6h2f",
        "expire_at": "2021-04-01T09:15:28.526Z",
        "created_at": "2021-03-02T09:15:28.527Z"
      }
    ],
    "page": {
      "type": "cursor",
      "next_id": null,
      "has_previous": false,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### getSystemNotifications
Get system notifications




```swift
platformClient.communication.getSystemNotifications(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |  



Get system notifications

*Returned Response:*




[SystemNotifications](#SystemNotifications)

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
        "notification": {
          "title": "Xyz Company is verified!",
          "body": "",
          "subtitle": "",
          "icon": "icon.png",
          "deeplink": "",
          "click_action": ""
        },
        "user": {
          "type": "company",
          "value": "1"
        },
        "settings": {
          "sound": true,
          "priority": "normal",
          "time_to_live": "60"
        },
        "_id": "60619f167dbd13ff0722f6dd",
        "group": "fynd-platform",
        "created_at": "2021-03-29T09:34:14.182Z"
      }
    ],
    "last_read_anchor": 1616748860,
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### sendOtp
Send OTP using email and sms




```swift
platformClient.application("<APPLICATION_ID>").communication.sendOtp(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SendOtpCommsReq | yes | Request body |


Send OTP Comms via email and sms

*Returned Response:*




[SendOtpCommsRes](#SendOtpCommsRes)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "sms": {
      "success": true,
      "request_id": "c8d1bd63d56a2d368aae9dbd4e7d8326",
      "message": "OTP sent",
      "mobile": "9096686804",
      "country_code": "91",
      "resend_timer": 30
    },
    "email": {
      "success": true,
      "request_id": "1cc79c911923971580d903039ea9ee05",
      "message": "OTP sent",
      "to": "parvezshaikh@gofynd.com",
      "resend_timer": 30
    }
  }
}
```
</details>

</details>









---


#### verfiyOtp
Verify OTP sent via email and sms




```swift
platformClient.application("<APPLICATION_ID>").communication.verfiyOtp(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | VerifyOtpCommsReq | yes | Request body |


Verify OTP sent via email and sms

*Returned Response:*




[VerifyOtpCommsSuccessRes](#VerifyOtpCommsSuccessRes)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "success": true,
    "mobile": "9096686804",
    "country_code": "91",
    "message": "OTP verified"
  }
}
```
</details>

</details>









---


#### getSmsProviders
Get sms providers




```swift
platformClient.application("<APPLICATION_ID>").communication.getSmsProviders(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



By using this api, you may retrieve all the SMS providers that the user has setup. The outcome will be in a paginated form, fetching providers according to the current page and page number parameters.

*Returned Response:*




[SmsProviders](#SmsProviders)

Successful retrieval of SMS providers list




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "entity_id": "application",
        "rpt": 1,
        "type": "application",
        "provider": "telspiel",
        "_id": "5fd9fd07c474a7710dd376d5",
        "name": "test telspiel",
        "description": "test",
        "sender": "test",
        "username": "test",
        "authkey": "test",
        "application": "000000000000000000000004",
        "created_at": "2020-12-16T12:26:47.794Z",
        "updated_at": "2020-12-16T12:26:47.794Z",
        "slug": "test-telspiel-application-telspiel-p9UY1r7nG",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### createSmsProvider
Create sms provider




```swift
platformClient.application("<APPLICATION_ID>").communication.createSmsProvider(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SmsProviderReq | yes | Request body |


By using this API, a new SMS provider will be created based on the user's customised definitions.

*Returned Response:*




[SmsProvider](#SmsProvider)

Successfully created a SMS provider




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "entity_id": "application",
    "rpt": 1,
    "type": "application",
    "provider": "telspiel",
    "_id": "5fd9fd07c474a7710dd376d5",
    "name": "test telspiel",
    "description": "test",
    "sender": "test",
    "username": "test",
    "authkey": "test",
    "application": "000000000000000000000004",
    "created_at": "2020-12-16T12:26:47.794Z",
    "updated_at": "2020-12-16T12:26:47.794Z",
    "slug": "test-telspiel-application-telspiel-p9UY1r7nG",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getDefaultSmsProviders
Get default sms providers




```swift
platformClient.application("<APPLICATION_ID>").communication.getDefaultSmsProviders() { (response, error) in
    // Use response
}
```






Using this api will fetch a list of SMS providers provided by the system i.e the default providers.

*Returned Response:*




[[DefaultSmsProviders]](#[DefaultSmsProviders])

Successful retrieval of the default SMS providers list




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": [
    {
      "_id": "63db8c68975237fff4f2133e",
      "name": "Fynd timesinternet",
      "is_default": true
    },
    {
      "_id": "5f9658b11aaa5e363eb38b47",
      "name": "Fynd - Telspiel"
    }
  ]
}
```
</details>

</details>









---


#### getSmsProviderById
Get sms provider by id




```swift
platformClient.application("<APPLICATION_ID>").communication.getSmsProviderById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Sms provider id |  



By using this API, a specific SMS provider will be returned that was retrieved based on the provider's id.

*Returned Response:*




[SmsProvider](#SmsProvider)

Successful retrieval of the specific SMS provider




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "entity_id": "application",
    "rpt": 1,
    "type": "application",
    "provider": "telspiel",
    "_id": "5fd9fd07c474a7710dd376d5",
    "name": "test telspiel",
    "description": "test",
    "sender": "test",
    "username": "test",
    "authkey": "test",
    "application": "000000000000000000000004",
    "created_at": "2020-12-16T12:26:47.794Z",
    "updated_at": "2020-12-16T12:26:47.794Z",
    "slug": "test-telspiel-application-telspiel-p9UY1r7nG",
    "__v": 0
  }
}
```
</details>

</details>









---


#### updateSmsProviderById
Update sms provider by id




```swift
platformClient.application("<APPLICATION_ID>").communication.updateSmsProviderById(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Sms provider id |  
| body | SmsProviderReq | yes | Request body |


By using this API, you can modify a certain SMS provider's definitions based on it's ID.

*Returned Response:*




[SmsProvider](#SmsProvider)

Successfully modified a specific SMS provider using the provider ID




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "entity_id": "application",
    "rpt": 1,
    "type": "application",
    "provider": "telspiel",
    "_id": "5fd9fd07c474a7710dd376d5",
    "name": "test telspiel",
    "description": "test",
    "sender": "test",
    "username": "test",
    "authkey": "test",
    "application": "000000000000000000000004",
    "created_at": "2020-12-16T12:26:47.794Z",
    "updated_at": "2020-12-16T12:26:47.794Z",
    "slug": "test-telspiel-application-telspiel-p9UY1r7nG",
    "__v": 0
  }
}
```
</details>

</details>









---


#### deleteSmsProviderById
delete sms provider by id




```swift
platformClient.application("<APPLICATION_ID>").communication.deleteSmsProviderById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Sms provider id |  



By using this api, you can delete a certain SMS provider based on its ID.

*Returned Response:*




[GenericSuccess](#GenericSuccess)

Successfully deleted a specific email provider using the provider ID




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "success": true
  }
}
```
</details>

</details>









---


#### getSmsTemplates
Get sms templates




```swift
platformClient.application("<APPLICATION_ID>").communication.getSmsTemplates(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



SMS templates are predefined message formats linked to various events for delivering messages to users. Use this API to get all sms templates.

*Returned Response:*




[SmsTemplates](#SmsTemplates)

Refer `SmsTemplates` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "url_shorten": {
          "enabled": false
        },
        "_id": "649968feca21d7edd0595b35",
        "application": "637b6355dc65337da9b5c951",
        "is_system": false,
        "is_internal": false,
        "meta": {
          "type": "cloned",
          "template": "61963d42ce3af81bde44a67d",
          "is_system": true
        },
        "name": "TD sms templates",
        "description": "description",
        "message": {
          "template_type": "nunjucks",
          "template": "This is a test message"
        },
        "priority": "low",
        "tags": [
          "tag1",
          "tag2"
        ],
        "template_variables": {
          "hello": "world"
        },
        "template_id": "1234567891234567890123",
        "published": true,
        "category": "website",
        "created_at": "2023-06-26T10:31:26.212Z",
        "updated_at": "2023-06-26T10:31:26.212Z",
        "slug": "TD-sms-templates-KwtzEUcpn",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 17,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### createSmsTemplate
Create sms template




```swift
platformClient.application("<APPLICATION_ID>").communication.createSmsTemplate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SmsTemplateReq | yes | Request body |


SMS templates are predefined message formats linked to various events for delivering messages to users. Use this API to create an sms template.

*Returned Response:*




[SmsTemplate](#SmsTemplate)

Refer `SmsTemplate` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "url_shorten": {
      "enabled": false
    },
    "_id": "649968feca21d7edd0595b35",
    "application": "637b6355dc65337da9b5c951",
    "is_system": false,
    "is_internal": false,
    "meta": {
      "type": "cloned",
      "template": "61963d42ce3af81bde44a67d",
      "is_system": true
    },
    "name": "TD sms templates",
    "description": "description",
    "message": {
      "template_type": "nunjucks",
      "template": "This is a test message"
    },
    "priority": "low",
    "tags": [
      "tag1",
      "tag2"
    ],
    "template_variables": {
      "hello": "world"
    },
    "template_id": "1234567891234567890123",
    "published": true,
    "category": "website",
    "created_at": "2023-06-26T10:31:26.212Z",
    "updated_at": "2023-06-26T10:31:26.212Z",
    "slug": "TD-sms-templates-KwtzEUcpn",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getSystemSmsTemplates
Get system sms templates




```swift
platformClient.application("<APPLICATION_ID>").communication.getSystemSmsTemplates() { (response, error) in
    // Use response
}
```






SMS templates are predefined message formats linked to various events for delivering messages to users. Use this API to get all system sms templates.

*Returned Response:*




[[SystemSmsTemplates]](#[SystemSmsTemplates])

Refer `SystemSmsTemplates` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": [
    {
      "url_shorten": {
        "enabled": false
      },
      "_id": "646b73e7e10612283cfd9773",
      "is_system": true,
      "is_internal": false,
      "name": "Order Arrived at Store",
      "description": "Use this SMS template, for notifying the customers, that their requested order has arrived at the store.",
      "slug": "arrived_at_store-sms",
      "message": {
        "template_type": "nunjucks",
        "template": "Delivered. Your shipment for {{ articles }} with {{ orderID }} has been delivered today at {{ delivered_at }}. You can collect it from store on or before {{ collection_date }}. Notification via Fynd"
      },
      "priority": "low",
      "tags": [],
      "template_variables": {
        "email": "care@fynd.com",
        "orderID": "Order ID FY5E53AFAA091115C235",
        "brand": "SAPPER",
        "name": "Alwira Sheikh",
        "tracking_url": "http://go.fyndi.ng/track-order",
        "articles": "Blue Solid Slim Fit Trackpants (28)",
        "contact": 8767087087,
        "ordering_channel": "ECOMM",
        "delivered_at": "GT_Store, Vashi",
        "collection_date": "Fri, Nov 15",
        "credits": 0,
        "slot": "By 9:00 PM",
        "datetime": "Feb 28",
        "cashback": 0,
        "ref_application": {
          "support_email": "care@fynd.com",
          "app_information": {
            "additional_data": {
              "address_line": "Kurar village,Malad",
              "city_pincode": "Mumbai - 400097",
              "contactUs": "https://uniket-testing.addsale.link/contact-us",
              "domain": "uniket-testing.addsale.link",
              "privacyPolicy": "https://fynd.freshdesk.com/support/solutions/articles/33000214398-privacy-policy"
            }
          },
          "domain": {
            "name": "https://fynd.com"
          },
          "logo": {
            "secure_url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1587981831/production/system/pointblank/fynd_logo_square_vunk4f.png"
          }
        }
      },
      "template_id": "1007569169965694807",
      "published": true,
      "category": "website",
      "created_at": "2023-05-22T13:53:43.439Z",
      "updated_at": "2023-05-22T13:53:43.439Z",
      "__v": 0
    }
  ]
}
```
</details>

</details>









---


#### getSmsTemplateById
Get sms template by id




```swift
platformClient.application("<APPLICATION_ID>").communication.getSmsTemplateById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Sms template id |  



SMS templates are predefined message formats linked to various events for delivering messages to users. Use this API to get an sms template by ID.

*Returned Response:*




[SmsTemplate](#SmsTemplate)

Refer `SmsTemplate` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "url_shorten": {
      "enabled": false
    },
    "_id": "649968feca21d7edd0595b35",
    "application": "637b6355dc65337da9b5c951",
    "is_system": false,
    "is_internal": false,
    "meta": {
      "type": "cloned",
      "template": "61963d42ce3af81bde44a67d",
      "is_system": true
    },
    "name": "TD sms templates",
    "description": "description",
    "message": {
      "template_type": "nunjucks",
      "template": "This is a test message"
    },
    "priority": "low",
    "tags": [
      "tag1",
      "tag2"
    ],
    "template_variables": {
      "hello": "world"
    },
    "template_id": "1234567891234567890123",
    "published": true,
    "category": "website",
    "created_at": "2023-06-26T10:31:26.212Z",
    "updated_at": "2023-06-26T10:31:26.212Z",
    "slug": "TD-sms-templates-KwtzEUcpn",
    "__v": 0
  }
}
```
</details>

</details>









---


#### updateSmsTemplateById
Update sms template by id




```swift
platformClient.application("<APPLICATION_ID>").communication.updateSmsTemplateById(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Sms template id |  
| body | SmsTemplateReq | yes | Request body |


SMS templates are predefined message formats linked to various events for delivering messages to users. Use this API to update an sms template by ID.

*Returned Response:*




[SmsTemplate](#SmsTemplate)

Refer `SmsTemplate` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "url_shorten": {
      "enabled": false
    },
    "_id": "649968feca21d7edd0595b35",
    "application": "637b6355dc65337da9b5c951",
    "is_system": false,
    "is_internal": false,
    "meta": {
      "type": "cloned",
      "template": "61963d42ce3af81bde44a67d",
      "is_system": true
    },
    "name": "TD sms templates",
    "description": "description",
    "message": {
      "template_type": "nunjucks",
      "template": "This is a test message"
    },
    "priority": "low",
    "tags": [
      "tag1",
      "tag2"
    ],
    "template_variables": {
      "hello": "world"
    },
    "template_id": "1234567891234567890123",
    "published": true,
    "category": "website",
    "created_at": "2023-06-26T10:31:26.212Z",
    "updated_at": "2023-06-26T10:31:26.212Z",
    "slug": "TD-sms-templates-KwtzEUcpn",
    "__v": 0
  }
}
```
</details>

</details>









---


#### deleteSmsTemplateById
Delete sms template by id




```swift
platformClient.application("<APPLICATION_ID>").communication.deleteSmsTemplateById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Sms template id |  



SMS templates are predefined message formats linked to various events for delivering messages to users. Use this API to delete an sms template by ID.

*Returned Response:*




[GenericDelete](#GenericDelete)

Refer `GenericDelete` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "message": "Deletion Successfull",
    "acknowledged": true,
    "affected": 1,
    "operation": "TEMP-ST-DEL:ID"
  }
}
```
</details>

</details>









---


#### getSubscribedSmsTemplates
Get subscribed sms templates




```swift
platformClient.application("<APPLICATION_ID>").communication.getSubscribedSmsTemplates(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



SMS templates are predefined message formats linked to various events for delivering messages to users. Use this API to get all subscribed sms templates.

*Returned Response:*




[SmsTemplates](#SmsTemplates)

Refer `SmsTemplates` schema for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "url_shorten": {
          "enabled": false
        },
        "_id": "649968feca21d7edd0595b35",
        "application": "637b6355dc65337da9b5c951",
        "is_system": false,
        "is_internal": false,
        "meta": {
          "type": "cloned",
          "template": "61963d42ce3af81bde44a67d",
          "is_system": true
        },
        "name": "TD sms templates",
        "description": "description",
        "message": {
          "template_type": "nunjucks",
          "template": "This is a test message"
        },
        "priority": "low",
        "tags": [
          "tag1",
          "tag2"
        ],
        "template_variables": {
          "hello": "world"
        },
        "template_id": "1234567891234567890123",
        "published": true,
        "category": "website",
        "created_at": "2023-06-26T10:31:26.212Z",
        "updated_at": "2023-06-26T10:31:26.212Z",
        "slug": "TD-sms-templates-KwtzEUcpn",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 17,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### getVoiceProviders
Get voice providers




```swift
platformClient.application("<APPLICATION_ID>").communication.getVoiceProviders(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get voice providers

*Returned Response:*




[VoiceProviders](#VoiceProviders)

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
        "_id": "643e76194f4a21735ab87d7a",
        "username": "16b0357856247a0dcb9330bb3911ae46890350e1a1dc16c4",
        "password": "849320ef5051ca4d56ce98f097761bc225595f2465917e26",
        "caller_id": "09513886363",
        "applet_url": "http://my.exotel.com/exoml/start/628847",
        "whitelisted_ip": [
          "127.0.0.2",
          "127.0.0.3"
        ],
        "application": "637b6355dc65337da9b5c951",
        "type": "application",
        "name": "Exotel Sales Channel",
        "description": "Exotel Voice Provider",
        "provider": "exotel",
        "created_at": "2023-04-18T10:51:05.186Z",
        "updated_at": "2023-04-22T15:59:42.471Z",
        "slug": "Exotel-Sales-Channel-application-exotel-VC-Wdk7xC",
        "__v": 2
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### createVoiceProvider
Create voice provider




```swift
platformClient.application("<APPLICATION_ID>").communication.createVoiceProvider(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | VoiceProviderReq | yes | Request body |


Create voice provider

*Returned Response:*




[VoiceProvider](#VoiceProvider)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "643e76194f4a21735ab87d7a",
    "username": "16b0357856247a0dcb9330bb3911ae46890350e1a1dc16c4",
    "password": "849320ef5051ca4d56ce98f097761bc225595f2465917e26",
    "caller_id": "09513886363",
    "applet_url": "http://my.exotel.com/exoml/start/628847",
    "whitelisted_ip": [
      "127.0.0.2",
      "127.0.0.3"
    ],
    "application": "637b6355dc65337da9b5c951",
    "type": "application",
    "name": "Exotel Sales Channel",
    "description": "Exotel Voice Provider",
    "provider": "exotel",
    "created_at": "2023-04-18T10:51:05.186Z",
    "updated_at": "2023-04-22T15:59:42.471Z",
    "slug": "Exotel-Sales-Channel-application-exotel-VC-Wdk7xC",
    "__v": 2
  }
}
```
</details>

</details>









---


#### getVoiceProviderById
Get voice provider by id




```swift
platformClient.application("<APPLICATION_ID>").communication.getVoiceProviderById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Voice provider id |  



Get voice provider by id

*Returned Response:*




[VoiceProvider](#VoiceProvider)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "643e76194f4a21735ab87d7a",
    "username": "16b0357856247a0dcb9330bb3911ae46890350e1a1dc16c4",
    "password": "849320ef5051ca4d56ce98f097761bc225595f2465917e26",
    "caller_id": "09513886363",
    "applet_url": "http://my.exotel.com/exoml/start/628847",
    "whitelisted_ip": [
      "127.0.0.2",
      "127.0.0.3"
    ],
    "application": "637b6355dc65337da9b5c951",
    "type": "application",
    "name": "Exotel Sales Channel",
    "description": "Exotel Voice Provider",
    "provider": "exotel",
    "created_at": "2023-04-18T10:51:05.186Z",
    "updated_at": "2023-04-22T15:59:42.471Z",
    "slug": "Exotel-Sales-Channel-application-exotel-VC-Wdk7xC",
    "__v": 2
  }
}
```
</details>

</details>









---


#### getVoiceTemplates
Get voice templates




```swift
platformClient.application("<APPLICATION_ID>").communication.getVoiceTemplates(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get voice templates

*Returned Response:*




[VoiceTemplates](#VoiceTemplates)

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
        "is_system": false,
        "is_internal": true,
        "description": "This is a test voice template",
        "priority": "high",
        "tags": [],
        "published": true,
        "_id": "5fd447728394dbf0d21329b3",
        "slug": "test-voice",
        "name": "Test voice",
        "message": {
          "template_type": "nunjucks",
          "template": "This is a test voice for order - {{ orderId }}"
        },
        "template_variables": {
          "orderId": "12345"
        },
        "created_at": "2020-12-12T04:30:42.456Z",
        "updated_at": "2020-12-24T15:13:20.558Z",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 66,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### createVoiceTemplate
Create voice template




```swift
platformClient.application("<APPLICATION_ID>").communication.createVoiceTemplate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | VoiceTemplateReq | yes | Request body |


Create voice template

*Returned Response:*




[VoiceTemplateRes](#VoiceTemplateRes)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "is_system": false,
    "is_internal": true,
    "description": "This is a test voice template",
    "priority": "high",
    "tags": [],
    "published": true,
    "_id": "5fd447728394dbf0d21329b3",
    "slug": "test-voice",
    "name": "Test voice",
    "message": {
      "template_type": "nunjucks",
      "template": "This is a test voice for order - {{ orderId }}"
    },
    "template_variables": {
      "orderId": "12345"
    },
    "created_at": "2020-12-12T04:30:42.456Z",
    "updated_at": "2020-12-24T15:13:20.558Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getVoiceTemplateById
Get voice template by id




```swift
platformClient.application("<APPLICATION_ID>").communication.getVoiceTemplateById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Voice template id |  



Get voice template by id

*Returned Response:*




[VoiceTemplate](#VoiceTemplate)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "is_system": false,
    "is_internal": true,
    "description": "This is a test voice template",
    "priority": "high",
    "tags": [],
    "published": true,
    "_id": "5fd447728394dbf0d21329b3",
    "slug": "test-voice",
    "name": "Test voice",
    "message": {
      "template_type": "nunjucks",
      "template": "This is a test voice for order - {{ orderId }}"
    },
    "template_variables": {
      "orderId": "12345"
    },
    "created_at": "2020-12-12T04:30:42.456Z",
    "updated_at": "2020-12-24T15:13:20.558Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### updateVoiceTemplateById
Update voice template by id




```swift
platformClient.application("<APPLICATION_ID>").communication.updateVoiceTemplateById(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Voice template id |  
| body | VoiceTemplateReq | yes | Request body |


Update voice template by id

*Returned Response:*




[VoiceTemplateRes](#VoiceTemplateRes)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "is_system": false,
    "is_internal": true,
    "description": "This is a test voice template",
    "priority": "high",
    "tags": [],
    "published": true,
    "_id": "5fd447728394dbf0d21329b3",
    "slug": "test-voice",
    "name": "Test voice",
    "message": {
      "template_type": "nunjucks",
      "template": "This is a test voice for order - {{ orderId }}"
    },
    "template_variables": {
      "orderId": "12345"
    },
    "created_at": "2020-12-12T04:30:42.456Z",
    "updated_at": "2020-12-24T15:13:20.558Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### deleteVoiceTemplateById
Delete voice template by id




```swift
platformClient.application("<APPLICATION_ID>").communication.deleteVoiceTemplateById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Voice template id |  



Delete voice template by id

*Returned Response:*




[VoiceTemplateDeleteSuccessRes](#VoiceTemplateDeleteSuccessRes)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "Deleted successfully"
  }
}
```
</details>

</details>









---


#### getSystemVoiceTemplates
Get system voice templates




```swift
platformClient.application("<APPLICATION_ID>").communication.getSystemVoiceTemplates(pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get system voice templates

*Returned Response:*




[SystemVoiceTemplates](#SystemVoiceTemplates)

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
        "is_system": true,
        "is_internal": true,
        "description": "This is a test voice template",
        "priority": "high",
        "tags": [],
        "published": true,
        "_id": "5fd447728394dbf0d21329b3",
        "slug": "test-voice",
        "name": "Test voice",
        "message": {
          "template_type": "nunjucks",
          "template": "This is a test voice for order - {{ orderId }}"
        },
        "template_variables": {
          "orderId": "12345"
        },
        "created_at": "2020-12-12T04:30:42.456Z",
        "updated_at": "2020-12-24T15:13:20.558Z",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 66,
      "has_next": true
    }
  }
}
```
</details>

</details>









---



### Schemas

 
 
 #### [StatsImported](#StatsImported)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |

---


 
 
 #### [StatsProcessedEmail](#StatsProcessedEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Int? |  yes  |  |
 | failed | Int? |  yes  |  |
 | suppressed | Int? |  yes  |  |

---


 
 
 #### [StatsProcessedSms](#StatsProcessedSms)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Int? |  yes  |  |
 | failed | Int? |  yes  |  |
 | suppressed | Int? |  yes  |  |

---


 
 
 #### [StatsProcessed](#StatsProcessed)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [StatsProcessedEmail](#StatsProcessedEmail)? |  yes  |  |
 | sms | [StatsProcessedSms](#StatsProcessedSms)? |  yes  |  |

---


 
 
 #### [Stats](#Stats)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | imported | [String: Any]? |  yes  |  |
 | processed | [String: Any]? |  yes  |  |

---


 
 
 #### [GetStats](#GetStats)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Stats](#Stats)]? |  yes  |  |

---


 
 
 #### [CampaignReq](#CampaignReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | fileUrl | String? |  yes  |  |
 | type | String? |  yes  |  |
 | recordsCount | Int? |  yes  |  |
 | application | String? |  yes  |  |

---


 
 
 #### [RecipientHeaders](#RecipientHeaders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |

---


 
 
 #### [CampaignEmailTemplate](#CampaignEmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [CampignEmailProvider](#CampignEmailProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | fromName | String? |  yes  |  |
 | fromEmail | String? |  yes  |  |

---


 
 
 #### [CampaignEmail](#CampaignEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | [CampaignEmailTemplate](#CampaignEmailTemplate)? |  yes  |  |
 | provider | [CampignEmailProvider](#CampignEmailProvider)? |  yes  |  |

---


 
 
 #### [Campaign](#Campaign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recipientHeaders | [RecipientHeaders](#RecipientHeaders)? |  yes  |  |
 | email | [CampaignEmail](#CampaignEmail)? |  yes  |  |
 | description | String? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | datasource | String? |  yes  |  |
 | type | String? |  yes  |  |
 | name | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Campaigns](#Campaigns)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Campaign](#Campaign)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [BadRequestSchema](#BadRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  | Response status. |
 | message | String? |  yes  | Failure message. |

---


 
 
 #### [NotFound](#NotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Failure message. |

---


 
 
 #### [BigqueryHeadersReq](#BigqueryHeadersReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | query | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [BigqueryHeadersResHeaders](#BigqueryHeadersResHeaders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [BigqueryHeadersRes](#BigqueryHeadersRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headers | [[BigqueryHeadersResHeaders](#BigqueryHeadersResHeaders)]? |  yes  |  |

---


 
 
 #### [GetNRecordsCsvReq](#GetNRecordsCsvReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | header | Bool? |  yes  |  |
 | count | Int? |  yes  |  |

---


 
 
 #### [GetNRecordsCsvResItems](#GetNRecordsCsvResItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String? |  yes  |  |
 | email | String? |  yes  |  |
 | firstname | String? |  yes  |  |
 | lastname | String? |  yes  |  |
 | orderid | String? |  yes  |  |

---


 
 
 #### [GetNRecordsCsvRes](#GetNRecordsCsvRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GetNRecordsCsvResItems](#GetNRecordsCsvResItems)]? |  yes  |  |

---


 
 
 #### [AudienceReq](#AudienceReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | fileUrl | String? |  yes  |  |
 | type | String? |  yes  |  |
 | recordsCount | Int? |  yes  |  |
 | application | String? |  yes  |  |

---


 
 
 #### [Audience](#Audience)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | fileUrl | String? |  yes  |  |
 | type | String? |  yes  |  |
 | recordsCount | Int? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Audiences](#Audiences)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Audience](#Audience)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [EmailProviderAdmin](#EmailProviderAdmin)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |
 | fromAddress | [[EmailProviderReqFrom](#EmailProviderReqFrom)]? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | apiKey | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [EmailProvidersAdmin](#EmailProvidersAdmin)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EmailProvider](#EmailProvider)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [EmailProviderReqFrom](#EmailProviderReqFrom)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [EmailProviderReq](#EmailProviderReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | apiKey | String? |  yes  |  |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |
 | fromAddress | [[EmailProviderReqFrom](#EmailProviderReqFrom)]? |  yes  |  |

---


 
 
 #### [EmailProvider](#EmailProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |
 | fromAddress | [[EmailProviderReqFrom](#EmailProviderReqFrom)]? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | apiKey | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [EmailProviders](#EmailProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EmailProvider](#EmailProvider)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [DefaultEmailProviders](#DefaultEmailProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | fromAddress | [[DefaultEmailProvidersObjFrom](#DefaultEmailProvidersObjFrom)]? |  yes  |  |
 | name | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [DefaultEmailProvidersObjFrom](#DefaultEmailProvidersObjFrom)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [EmailTemplateAdmin](#EmailTemplateAdmin)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | editorType | String? |  yes  |  |
 | editorMeta | String? |  yes  |  |
 | staticTo | [String]? |  yes  |  |
 | staticCc | [String]? |  yes  |  |
 | staticBcc | [String]? |  yes  |  |
 | replyTo | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | subject | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | html | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | urlShorten | [EnabledObj](#EnabledObj)? |  yes  |  |
 | priority | String? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | published | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | id | String? |  yes  |  |
 | headers | [[EmailTemplateHeaders](#EmailTemplateHeaders)]? |  yes  |  |
 | attachments | [String]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | fromName | String? |  yes  |  |
 | text | [TemplateAndType](#TemplateAndType)? |  yes  |  |

---


 
 
 #### [EmailTemplatesAdmin](#EmailTemplatesAdmin)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EmailTemplateAdmin](#EmailTemplateAdmin)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [EmailTemplateKeys](#EmailTemplateKeys)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | to | String? |  yes  |  |
 | cc | String? |  yes  |  |
 | bcc | String? |  yes  |  |

---


 
 
 #### [EmailTemplateHeaders](#EmailTemplateHeaders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [EmailTemplateReq](#EmailTemplateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String? |  yes  |  |
 | fromName | String? |  yes  |  |
 | staticTo | [String]? |  yes  |  |
 | staticCc | [String]? |  yes  |  |
 | staticBcc | [String]? |  yes  |  |
 | replyTo | String? |  yes  |  |
 | priority | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | published | Bool? |  yes  |  |
 | subject | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | html | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | editorType | String? |  yes  |  |
 | editorMeta | String? |  yes  |  |
 | attachments | [String]? |  yes  |  |
 | headers | [[EmailTemplateHeaders](#EmailTemplateHeaders)]? |  yes  |  |
 | keys | [EmailTemplateKeys](#EmailTemplateKeys)? |  yes  |  |
 | text | [TemplateAndType](#TemplateAndType)? |  yes  |  |

---


 
 
 #### [TemplateAndType](#TemplateAndType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateType | String? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [EmailTemplate](#EmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | editorType | String? |  yes  |  |
 | editorMeta | String? |  yes  |  |
 | staticTo | [String]? |  yes  |  |
 | staticCc | [String]? |  yes  |  |
 | staticBcc | [String]? |  yes  |  |
 | replyTo | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | subject | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | html | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | urlShorten | [EnabledObj](#EnabledObj)? |  yes  |  |
 | priority | String? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | published | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | id | String? |  yes  |  |
 | headers | [[EmailTemplateHeaders](#EmailTemplateHeaders)]? |  yes  |  |
 | attachments | [String]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | fromName | String? |  yes  |  |
 | text | [TemplateAndType](#TemplateAndType)? |  yes  |  |

---


 
 
 #### [SystemEmailTemplate](#SystemEmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | staticTo | [String]? |  yes  |  |
 | staticCc | [String]? |  yes  |  |
 | staticBcc | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | subject | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | html | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | urlShorten | [EnabledObj](#EnabledObj)? |  yes  |  |
 | priority | String? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | published | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | id | String? |  yes  |  |
 | headers | [[EmailTemplateHeaders](#EmailTemplateHeaders)]? |  yes  |  |
 | attachments | [String]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | text | [TemplateAndType](#TemplateAndType)? |  yes  |  |

---


 
 
 #### [EmailTemplates](#EmailTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EmailTemplate](#EmailTemplate)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SystemEmailTemplates](#SystemEmailTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SystemEmailTemplate](#SystemEmailTemplate)]? |  yes  |  |

---


 
 
 #### [PayloadEmailTemplateStructure](#PayloadEmailTemplateStructure)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [PayloadEmailProviderStructure](#PayloadEmailProviderStructure)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |

---


 
 
 #### [PayloadEmailStructure](#PayloadEmailStructure)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | [PayloadEmailTemplateStructure](#PayloadEmailTemplateStructure)? |  yes  |  |
 | provider | [PayloadEmailProviderStructure](#PayloadEmailProviderStructure)? |  yes  |  |

---


 
 
 #### [PayloadSmsTemplateStructure](#PayloadSmsTemplateStructure)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [PayloadSmsProviderStructure](#PayloadSmsProviderStructure)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |

---


 
 
 #### [PayloadSmsStructure](#PayloadSmsStructure)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | [PayloadSmsTemplateStructure](#PayloadSmsTemplateStructure)? |  yes  |  |
 | provider | [PayloadSmsProviderStructure](#PayloadSmsProviderStructure)? |  yes  |  |

---


 
 
 #### [PayloadStructure](#PayloadStructure)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[String: Any]]? |  yes  |  |
 | email | [PayloadEmailStructure](#PayloadEmailStructure)? |  yes  |  |
 | sms | [PayloadSmsStructure](#PayloadSmsStructure)? |  yes  |  |
 | application | String? |  yes  |  |

---


 
 
 #### [MetaStructure](#MetaStructure)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jobType | String? |  yes  |  |
 | action | String? |  yes  |  |
 | trace | String? |  yes  |  |
 | timestamp | String? |  yes  |  |

---


 
 
 #### [EngineRequest](#EngineRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payload | [PayloadStructure](#PayloadStructure)? |  yes  |  |
 | meta | [MetaStructure](#MetaStructure)? |  yes  |  |

---


 
 
 #### [EngineResponse](#EngineResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [EventSubscriptionTemplateSms](#EventSubscriptionTemplateSms)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscribed | Bool? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [EventSubscriptionTemplateEmail](#EventSubscriptionTemplateEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscribed | Bool? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [EventSubscriptionTemplate](#EventSubscriptionTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sms | [EventSubscriptionTemplateSms](#EventSubscriptionTemplateSms)? |  yes  |  |
 | email | [EventSubscriptionTemplateEmail](#EventSubscriptionTemplateEmail)? |  yes  |  |

---


 
 
 #### [EventSubscription](#EventSubscription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | [EventSubscriptionTemplate](#EventSubscriptionTemplate)? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | event | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [EventSubscriptions](#EventSubscriptions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EventSubscription](#EventSubscription)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [Job](#Job)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | completed | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | campaign | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Jobs](#Jobs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Job](#Job)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [JobLog](#JobLog)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | imported | [String: Any]? |  yes  |  |
 | processed | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | job | String? |  yes  |  |
 | campaign | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [JobLogs](#JobLogs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[JobLog](#JobLog)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [TriggerJobResponse](#TriggerJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int? |  yes  |  |

---


 
 
 #### [TriggerJobRequest](#TriggerJobRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jobId | String? |  yes  |  |

---


 
 
 #### [LogEmail](#LogEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | String? |  yes  |  |

---


 
 
 #### [LogPushnotification](#LogPushnotification)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pushtokens | [String]? |  yes  |  |

---


 
 
 #### [LogMeta](#LogMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | identifier | String? |  yes  |  |
 | key | String? |  yes  |  |
 | offset | String? |  yes  |  |
 | partition | String? |  yes  |  |
 | topic | String? |  yes  |  |

---


 
 
 #### [Log](#Log)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [LogEmail](#LogEmail)? |  yes  |  |
 | pushnotification | [LogPushnotification](#LogPushnotification)? |  yes  |  |
 | meta | [LogMeta](#LogMeta)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | service | String? |  yes  |  |
 | step | String? |  yes  |  |
 | source | String? |  yes  |  |
 | channelType | String? |  yes  |  |
 | status | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |
 | expireAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [Logs](#Logs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Log](#Log)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SendOtpSmsCommsTemplate](#SendOtpSmsCommsTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [SendOtpSmsCommsProvider](#SendOtpSmsCommsProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [SendOtpEmailCommsTemplate](#SendOtpEmailCommsTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [SendOtpEmailCommsProvider](#SendOtpEmailCommsProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [SendOtpCommsReqData](#SendOtpCommsReqData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sendSameOtpToChannel | Bool? |  yes  |  |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | to | String? |  yes  |  |

---


 
 
 #### [SendOtpCommsReqSms](#SendOtpCommsReqSms)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otpLength | Int? |  yes  |  |
 | expiry | Int? |  yes  |  |
 | template | [SendOtpSmsCommsTemplate](#SendOtpSmsCommsTemplate)? |  yes  |  |
 | provider | [SendOtpSmsCommsProvider](#SendOtpSmsCommsProvider)? |  yes  |  |

---


 
 
 #### [SendOtpCommsReqEmail](#SendOtpCommsReqEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otpLength | Int? |  yes  |  |
 | expiry | Int? |  yes  |  |
 | template | [SendOtpEmailCommsTemplate](#SendOtpEmailCommsTemplate)? |  yes  |  |
 | provider | [SendOtpEmailCommsProvider](#SendOtpEmailCommsProvider)? |  yes  |  |

---


 
 
 #### [SendOtpCommsResSms](#SendOtpCommsResSms)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | requestId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | resendTimer | Int? |  yes  |  |

---


 
 
 #### [SendOtpCommsResEmail](#SendOtpCommsResEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | requestId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | to | String? |  yes  |  |
 | resendTimer | Int? |  yes  |  |

---


 
 
 #### [SendOtpCommsReq](#SendOtpCommsReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [SendOtpCommsReqData](#SendOtpCommsReqData)? |  yes  |  |
 | sms | [SendOtpCommsReqSms](#SendOtpCommsReqSms)? |  yes  |  |
 | email | [SendOtpCommsReqEmail](#SendOtpCommsReqEmail)? |  yes  |  |

---


 
 
 #### [SendOtpCommsRes](#SendOtpCommsRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sms | [SendOtpCommsResSms](#SendOtpCommsResSms)? |  yes  |  |
 | email | [SendOtpCommsResEmail](#SendOtpCommsResEmail)? |  yes  |  |

---


 
 
 #### [VerifyOtpCommsReq](#VerifyOtpCommsReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String? |  yes  |  |
 | otp | String? |  yes  |  |

---


 
 
 #### [VerifyOtpCommsSuccessRes](#VerifyOtpCommsSuccessRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [VerifyOtpCommsErrorRes](#VerifyOtpCommsErrorRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [AppProvider](#AppProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [AppProviderRes](#AppProviderRes)? |  yes  |  |
 | sms | [AppProviderRes](#AppProviderRes)? |  yes  |  |
 | voice | [AppProviderResVoice](#AppProviderResVoice)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [AppProviderRes](#AppProviderRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | transaction | [AppProviderResObj](#AppProviderResObj)? |  yes  |  |
 | promotional | [AppProviderResObj](#AppProviderResObj)? |  yes  |  |
 | otp | [AppProviderResObj](#AppProviderResObj)? |  yes  |  |

---


 
 
 #### [AppProviderResVoice](#AppProviderResVoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | transaction | [AppProviderResObj](#AppProviderResObj)? |  yes  |  |
 | otp | [AppProviderResObj](#AppProviderResObj)? |  yes  |  |

---


 
 
 #### [AppProviderResObj](#AppProviderResObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | provider | String? |  yes  |  |

---


 
 
 #### [GlobalProviders](#GlobalProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [[GlobalProvidersResObj](#GlobalProvidersResObj)]? |  yes  |  |
 | sms | [[GlobalProvidersResObj](#GlobalProvidersResObj)]? |  yes  |  |
 | voice | [[GlobalProvidersResObj](#GlobalProvidersResObj)]? |  yes  |  |

---


 
 
 #### [GlobalProvidersResObj](#GlobalProvidersResObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [AppProviderAdmin](#AppProviderAdmin)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [AppProviderAdminObj](#AppProviderAdminObj)? |  yes  |  |
 | sms | [AppProviderAdminObj](#AppProviderAdminObj)? |  yes  |  |
 | voice | [AppProviderAdminObj](#AppProviderAdminObj)? |  yes  |  |

---


 
 
 #### [AppProviderAdminObj](#AppProviderAdminObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | transaction | [AppProviderResObj](#AppProviderResObj)? |  yes  |  |
 | otp | [AppProviderResObj](#AppProviderResObj)? |  yes  |  |

---


 
 
 #### [UpdateGlobalProviders](#UpdateGlobalProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [UpdateGlobalProvidersObj](#UpdateGlobalProvidersObj)? |  yes  |  |
 | sms | [UpdateGlobalProvidersObj](#UpdateGlobalProvidersObj)? |  yes  |  |
 | voice | [UpdateGlobalProvidersObj](#UpdateGlobalProvidersObj)? |  yes  |  |
 | id | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [UpdateGlobalProvidersObj](#UpdateGlobalProvidersObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | defaultProvider | String? |  yes  |  |
 | otpProvider | String? |  yes  |  |

---


 
 
 #### [AppProviderReq](#AppProviderReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [AppProviderRes](#AppProviderRes)? |  yes  |  |
 | sms | [AppProviderRes](#AppProviderRes)? |  yes  |  |
 | voice | [AppProviderResVoice](#AppProviderResVoice)? |  yes  |  |

---


 
 
 #### [PushtokenReq](#PushtokenReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String? |  yes  |  |
 | bundleIdentifier | String? |  yes  |  |
 | pushToken | String? |  yes  |  |
 | uniqueDeviceId | String? |  yes  |  |

---


 
 
 #### [PushtokenRes](#PushtokenRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | bundleIdentifier | String? |  yes  |  |
 | pushToken | String? |  yes  |  |
 | uniqueDeviceId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | expiredAt | String? |  yes  |  |

---


 
 
 #### [SmsProviderAdmin](#SmsProviderAdmin)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rpt | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | entityId | String? |  yes  |  |
 | description | String? |  yes  |  |
 | sender | String? |  yes  |  |
 | username | String? |  yes  |  |
 | authkey | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [SmsProvidersAdmin](#SmsProvidersAdmin)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SmsProviderAdmin](#SmsProviderAdmin)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SmsProviderReq](#SmsProviderReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | sender | String? |  yes  |  |
 | username | String? |  yes  |  |
 | authkey | String? |  yes  |  |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |

---


 
 
 #### [SmsProvider](#SmsProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rpt | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | entityId | String? |  yes  |  |
 | description | String? |  yes  |  |
 | sender | String? |  yes  |  |
 | username | String? |  yes  |  |
 | authkey | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [SmsProviders](#SmsProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SmsProvider](#SmsProvider)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [DefaultSmsProviders](#DefaultSmsProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [SmsTemplatesAdmin](#SmsTemplatesAdmin)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SmsTemplateAdmin](#SmsTemplateAdmin)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SmsTemplateAdmin](#SmsTemplateAdmin)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | urlShorten | [EnabledObj](#EnabledObj)? |  yes  |  |
 | id | String? |  yes  |  |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | meta | [metaObj](#metaObj)? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage)? |  yes  |  |
 | priority | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | templateId | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [SmsTemplateMessage](#SmsTemplateMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateType | String? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [SmsTemplates](#SmsTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SmsTemplate](#SmsTemplate)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SmsTemplate](#SmsTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | urlShorten | [EnabledObj](#EnabledObj)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | meta | [metaObj](#metaObj)? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage)? |  yes  |  |
 | priority | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | templateId | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [SystemSmsTemplates](#SystemSmsTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | urlShorten | [EnabledObj](#EnabledObj)? |  yes  |  |
 | id | String? |  yes  |  |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage)? |  yes  |  |
 | priority | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | templateId | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [metaObj](#metaObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | isSystem | Bool? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [SmsTemplateReq](#SmsTemplateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String? |  yes  |  |
 | priority | String? |  yes  |  |
 | templateId | String? |  yes  |  |
 | meta | [metaObj](#metaObj)? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | published | Bool? |  yes  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage)? |  yes  |  |

---


 
 
 #### [Notification](#Notification)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | body | String? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | deeplink | String? |  yes  |  |
 | clickAction | String? |  yes  |  |

---


 
 
 #### [SystemNotificationUser](#SystemNotificationUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [SystemNotificationSettings](#SystemNotificationSettings)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sound | Bool? |  yes  |  |
 | priority | String? |  yes  |  |
 | timeToLive | String? |  yes  |  |

---


 
 
 #### [SystemNotification](#SystemNotification)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notification | [Notification](#Notification)? |  yes  |  |
 | user | [SystemNotificationUser](#SystemNotificationUser)? |  yes  |  |
 | settings | [SystemNotificationUser](#SystemNotificationUser)? |  yes  |  |
 | id | String? |  yes  |  |
 | group | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [SystemNotificationsPage](#SystemNotificationsPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | current | Int? |  yes  |  |
 | size | Int? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |

---


 
 
 #### [SystemNotifications](#SystemNotifications)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SystemNotification](#SystemNotification)]? |  yes  |  |
 | lastReadAnchor | Int? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [VoiceProviderReq](#VoiceProviderReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | sender | String? |  yes  |  |
 | username | String? |  yes  |  |
 | authkey | String? |  yes  |  |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |

---


 
 
 #### [VoiceProvider](#VoiceProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | The unique identifier for the voice provider |
 | application | String? |  yes  | The unique identifier of the application to which the voice provider belongs |
 | type | String? |  yes  | The type of the voice provider |
 | name | String? |  yes  | The name of the voice provider |
 | description | String? |  yes  | The description of the voice provider |
 | slug | String? |  yes  | The slug of the voice provider |
 | provider | String? |  yes  | The name of the voice provider implementation |
 | createdAt | String? |  yes  | The date and time the voice provider was created |
 | updatedAt | String? |  yes  | The date and time the voice provider was last updated |
 | v | Double? |  yes  | The version of the voice provider document |
 | discriminator | String? |  yes  | The discriminator key for the voice provider implementation |
 | username | String? |  yes  | The username for the Exotel voice provider implementation |
 | password | String? |  yes  | The password for the Exotel voice provider implementation |
 | callerId | String? |  yes  | The caller ID for the Exotel voice provider implementation |
 | appletUrl | String? |  yes  | The URL for the Exotel applet used by the voice provider |
 | whitelistedIp | [String]? |  yes  | An array of whitelisted IP addresses for the Exotel voice provider implementation |

---


 
 
 #### [VoiceProviders](#VoiceProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[VoiceProvider](#VoiceProvider)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [VoiceTemplateDeleteSuccessRes](#VoiceTemplateDeleteSuccessRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [VoiceTemplateDeleteFailureRes](#VoiceTemplateDeleteFailureRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [VoiceTemplateMessage](#VoiceTemplateMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateType | String? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [VoiceTemplateReq](#VoiceTemplateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | message | [VoiceTemplateMessage](#VoiceTemplateMessage)? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | attachments | [[String: Any]]? |  yes  |  |
 | priority | String? |  yes  |  |

---


 
 
 #### [VoiceTemplateRes](#VoiceTemplateRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | priority | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | message | [VoiceTemplateMessage](#VoiceTemplateMessage)? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [VoiceTemplate](#VoiceTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | priority | String? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | published | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | message | [VoiceTemplateMessage](#VoiceTemplateMessage)? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [SystemVoiceTemplate](#SystemVoiceTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | priority | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | message | [VoiceTemplateMessage](#VoiceTemplateMessage)? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [VoiceTemplates](#VoiceTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[VoiceTemplate](#VoiceTemplate)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SystemVoiceTemplates](#SystemVoiceTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SystemVoiceTemplate](#SystemVoiceTemplate)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

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


 
 
 #### [GenericPage](#GenericPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |

---


 
 
 #### [GenericSuccess](#GenericSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [GenericError](#GenericError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | [Message](#Message)? |  yes  |  |
 | sentry | String? |  yes  |  |

---


 
 
 #### [GenericDelete](#GenericDelete)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | acknowledged | Bool? |  yes  |  |
 | affected | Int? |  yes  |  |
 | operation | String? |  yes  |  |

---


 
 
 #### [Message](#Message)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | info | String? |  yes  |  |
 | operation | String? |  yes  |  |

---


 
 
 #### [EnabledObj](#EnabledObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [InvalidRangeErrorReqPositive](#InvalidRangeErrorReqPositive)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | code | Int? |  yes  |  |
 | sentry | String? |  yes  |  |

---


 
 
 #### [InvalidInputRequiredByteOrHexError](#InvalidInputRequiredByteOrHexError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | sentry | String? |  yes  |  |

---


 
 
 #### [NameValidatorError](#NameValidatorError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | [NameValidatorErrorMessage](#NameValidatorErrorMessage)? |  yes  |  |
 | sentry | String? |  yes  |  |

---


 
 
 #### [NameValidatorErrorMessage](#NameValidatorErrorMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | [ValidatorErrorBody](#ValidatorErrorBody)? |  yes  |  |

---


 
 
 #### [ApikeyValidatorError](#ApikeyValidatorError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | [ApikeyValidatorErrorMessage](#ApikeyValidatorErrorMessage)? |  yes  |  |
 | sentry | String? |  yes  |  |

---


 
 
 #### [ApikeyValidatorErrorMessage](#ApikeyValidatorErrorMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | [ValidatorErrorBody](#ValidatorErrorBody)? |  yes  |  |

---


 
 
 #### [FeedidValidatorError](#FeedidValidatorError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | [FeedidValidatorErrorMessage](#FeedidValidatorErrorMessage)? |  yes  |  |
 | sentry | String? |  yes  |  |

---


 
 
 #### [FeedidValidatorErrorMessage](#FeedidValidatorErrorMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feedid | [ValidatorErrorBody](#ValidatorErrorBody)? |  yes  |  |

---


 
 
 #### [UsernameValidatorError](#UsernameValidatorError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | [UsernameValidatorErrorMessage](#UsernameValidatorErrorMessage)? |  yes  |  |
 | sentry | String? |  yes  |  |

---


 
 
 #### [UsernameValidatorErrorMessage](#UsernameValidatorErrorMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | [ValidatorErrorBody](#ValidatorErrorBody)? |  yes  |  |

---


 
 
 #### [PasswordValidatorError](#PasswordValidatorError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | [PasswordValidatorErrorMessage](#PasswordValidatorErrorMessage)? |  yes  |  |
 | sentry | String? |  yes  |  |

---


 
 
 #### [PasswordValidatorErrorMessage](#PasswordValidatorErrorMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | password | [ValidatorErrorBody](#ValidatorErrorBody)? |  yes  |  |

---


 
 
 #### [ValidatorErrorBody](#ValidatorErrorBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | message | String? |  yes  |  |
 | properties | [ValidatorErrorMessageProperties](#ValidatorErrorMessageProperties)? |  yes  |  |
 | kind | String? |  yes  |  |
 | path | String? |  yes  |  |

---


 
 
 #### [ValidatorErrorMessageProperties](#ValidatorErrorMessageProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | type | String? |  yes  |  |
 | path | String? |  yes  |  |

---


 
 
 #### [CastToStringFail](#CastToStringFail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | sentry | String? |  yes  |  |

---


 
 
 #### [InvalidID](#InvalidID)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | sentry | String? |  yes  |  |

---



