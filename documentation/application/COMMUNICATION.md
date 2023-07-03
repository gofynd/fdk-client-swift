



##### [Back to Application docs](./README.md)

## Communication Methods
Manages email, sms, push notifications sent to users
* [getCommunicationConsent](#getcommunicationconsent)
* [upsertCommunicationConsent](#upsertcommunicationconsent)
* [upsertAppPushtoken](#upsertapppushtoken)



## Methods with example and description


#### getCommunicationConsent
Get communication consent




```swift
applicationClient.communication.getCommunicationConsent() { (response, error) in
    // Use response
}
```






Use this API to retrieve the consent provided by the user for receiving communication messages over Email/SMS/WhatsApp.

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
Upsert communication consent




```swift
applicationClient.communication.upsertCommunicationConsent(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CommunicationConsentReq | yes | Request body |


Use this API to update and insert the consent provided by the user for receiving communication messages over Email/SMS/WhatsApp.

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
Upsert push token of a user




```swift
applicationClient.communication.upsertAppPushtoken(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PushtokenReq | yes | Request body |


Use this API to update and insert the push token of the user.

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


 
 
 #### [NotFound](#NotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
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



