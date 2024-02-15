



##### [Back to Application docs](./README.md)

## Communication Methods
The Communications module manages user notifications to keep users informed and engaged through personalized push notifications. Use it to enable users to view notifications they've opted into, modify their communication preferences, and update push tokens for real-time updates.

Communication Consent
* [getCommunicationConsent](#getcommunicationconsent)
* [upsertCommunicationConsent](#upsertcommunicationconsent)


Push Token Management
* [upsertAppPushtoken](#upsertapppushtoken)




## Methods with example and description



#### getCommunicationConsent
Retrieves communication consent status.




```swift
applicationClient.communication.getCommunicationConsent() { (response, error) in
    // Use response
}
```






Retrieve the consent provided by the user for receiving communication messages over Email/SMS/WhatsApp. 

*Returned Response:*




[CommunicationConsent](#CommunicationConsent)

Success. Returns all available communication opt-ins along with the consent details. Check the example shown below or refer `CommunicationConsent` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "app_id": "000000000000000000000004",
    "user_id": "5e56021c4bda3ccab6d9f884",
    "channels": {
      "email": {
        "response": "yes",
        "display_name": "Email"
      },
      "sms": {
        "response": "yes",
        "display_name": "SMS"
      },
      "whatsapp": {
        "response": "yes",
        "display_name": "WhatsApp",
        "country_code": "91",
        "phone_number": "9869821300"
      }
    }
  }
}
```
</details>

</details>









---


#### upsertCommunicationConsent
Updates or inserts consent settings.




```swift
applicationClient.communication.upsertCommunicationConsent(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CommunicationConsentReq | yes | Request body |


Update and insert the consent provided by the user for receiving communication messages over Email/SMS/WhatsApp. 

*Returned Response:*




[CommunicationConsentRes](#CommunicationConsentRes)

Success. Updates the channels for which user has consented. Check the example shown below or refer `CommunicationConsentRes` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "appId": "000000000000000000000004",
    "userId": "5e56021c4bda3ccab6d9f884",
    "channels": {
      "email": {
        "response": "yes",
        "displayName": "Email"
      },
      "sms": {
        "response": "yes",
        "displayName": "SMS"
      },
      "whatsapp": {
        "response": "noaction",
        "displayName": "WhatsApp"
      }
    }
  }
}
```
</details>

</details>









---




#### upsertAppPushtoken
Updates or adds app push token.




```swift
applicationClient.communication.upsertAppPushtoken(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PushtokenReq | yes | Request body |


Update the push token of the user. 

*Returned Response:*




[PushtokenRes](#PushtokenRes)

Success. Check the example shown below or refer `PushtokenRes` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; create</i></summary>

```json
{
  "value": {
    "_id": "601b6924d8ea9a061570a09f",
    "bundle_identifier": "000002",
    "push_token": "45",
    "unique_device_id": "3",
    "type": "fynd-platform",
    "platform": "web",
    "application_id": "000000000000000000000004",
    "user_id": "5e56021c4bda3ccab6d9f884",
    "created_at": "2021-02-04T03:25:24.765Z",
    "updated_at": "2021-02-04T03:25:51.152Z"
  }
}
```
</details>

<details>
<summary><i>&nbsp; update</i></summary>

```json
{
  "value": {
    "_id": "601b6924d8ea9a061570a09f",
    "bundle_identifier": "000002",
    "push_token": "45",
    "unique_device_id": "3",
    "type": "fynd-platform",
    "platform": "web",
    "application_id": "000000000000000000000004",
    "user_id": "5e56021c4bda3ccab6d9f884",
    "created_at": "2021-02-04T03:25:24.765Z",
    "updated_at": "2021-02-04T03:25:51.152Z"
  }
}
```
</details>

<details>
<summary><i>&nbsp; reset</i></summary>

```json
{
  "value": {
    "_id": "601b6924d8ea9a061570a09f",
    "bundle_identifier": "000002",
    "push_token": "45",
    "unique_device_id": "3",
    "type": "fynd-platform",
    "platform": "web",
    "application_id": "000000000000000000000004",
    "user_id": "5e56021c4bda3ccab6d9f884",
    "created_at": "2021-02-04T03:25:24.765Z",
    "updated_at": "2021-02-04T03:25:51.152Z",
    "expired_at": "2021-02-05T03:25:51.138Z"
  }
}
```
</details>

</details>









---




### Schemas

 
 
 #### [CommunicationConsentReq](#CommunicationConsentReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | String? |  yes  |  |
 | action | String? |  yes  |  |
 | channel | String? |  yes  |  |

---


 
 
 #### [CommunicationConsentRes](#CommunicationConsentRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | channels | [CommunicationConsentChannels](#CommunicationConsentChannels)? |  yes  |  |

---


 
 
 #### [CommunicationConsentChannelsEmail](#CommunicationConsentChannelsEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | String? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [CommunicationConsentChannelsSms](#CommunicationConsentChannelsSms)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | String? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [CommunicationConsentChannelsWhatsapp](#CommunicationConsentChannelsWhatsapp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | phoneNumber | String? |  yes  |  |

---


 
 
 #### [CommunicationConsentChannels](#CommunicationConsentChannels)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [CommunicationConsentChannelsEmail](#CommunicationConsentChannelsEmail)? |  yes  |  |
 | sms | [CommunicationConsentChannelsSms](#CommunicationConsentChannelsSms)? |  yes  |  |
 | whatsapp | [CommunicationConsentChannelsWhatsapp](#CommunicationConsentChannelsWhatsapp)? |  yes  |  |

---


 
 
 #### [CommunicationConsent](#CommunicationConsent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | channels | [CommunicationConsentChannels](#CommunicationConsentChannels)? |  yes  |  |

---


 
 
 #### [BadRequestSchema](#BadRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  | Response status. |
 | message | String? |  yes  | Failure message. |

---


 
 
 #### [PushtokenReq](#PushtokenReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String? |  yes  |  |
 | bundleIdentifier | String? |  yes  |  |
 | pushToken | String? |  yes  |  |
 | uniqueDeviceId | String? |  yes  |  |
 | type | String? |  yes  |  |

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



