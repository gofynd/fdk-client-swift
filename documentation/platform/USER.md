



##### [Back to Platform docs](./README.md)

## User Methods
Authentication Service

User Management
* [getCustomers](#getcustomers)
* [searchUsers](#searchusers)
* [createUser](#createuser)
* [blockOrUnblockUsers](#blockorunblockusers)
* [unDeleteUser](#undeleteuser)
* [updateUser](#updateuser)
* [archiveUser](#archiveuser)


Session Management
* [createUserSession](#createusersession)
* [deleteSession](#deletesession)
* [getActiveSessions](#getactivesessions)
* [deleteActiveSessions](#deleteactivesessions)


Website Configuration Management
* [getPlatformConfig](#getplatformconfig)
* [updatePlatformConfig](#updateplatformconfig)


User Group Management
* [createUserGroup](#createusergroup)
* [getUserGroups](#getusergroups)
* [updateUserGroup](#updateusergroup)
* [getUserGroupById](#getusergroupbyid)
* [updateUserGroupPartially](#updateusergrouppartially)


User Attributes Definition
* [createUserAttributeDefinition](#createuserattributedefinition)
* [getUserAttributeDefinitions](#getuserattributedefinitions)
* [updateUserAttributeDefinition](#updateuserattributedefinition)
* [deleteUserAttributeDefinitionById](#deleteuserattributedefinitionbyid)
* [getUserAttributeDefinitionById](#getuserattributedefinitionbyid)
* [updateUserAttribute](#updateuserattribute)
* [getUserAttribute](#getuserattribute)
* [deleteUserAttribute](#deleteuserattribute)
* [getUserAttributesForUser](#getuserattributesforuser)
* [getUserAttributeById](#getuserattributebyid)




## Methods with example and description



#### getCustomers
Get customers.




```swift
platformClient.application("<APPLICATION_ID>").user.getCustomers(q: q, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | The search query. Mobile number or email ID of a customer. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |  



Retrieve a list of customer profiles.

*Returned Response:*




[CustomerListResponseSchema](#CustomerListResponseSchema)

Success. Refer `CustomerListResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; get list customer success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "000000000000000023106198",
        "gender": "male",
        "active": true,
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "raaz.crzy@gmail.com"
          }
        ],
        "username": "raaz_crzy_gmail_com_63747_23106198",
        "__v": 7,
        "debug": {
          "source": "deadlock",
          "platform": "000000000000000000000003"
        },
        "dob": "1995-07-23T00:00:00.000Z",
        "id": "000000000000000023106198",
        "account_type": "user",
        "profile_pic_url": "https://hdn-1.fynd.com/user/profile/original/000000000000000023106198/1586498418772.jpg",
        "first_name": "Prince",
        "last_name": "Raj",
        "phone_numbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "phone": "7008963113",
            "country_code": 91
          }
        ],
        "created_at": "2019-05-15T14:07:52.872Z",
        "updated_at": "2020-09-21T06:38:41.388Z",
        "has_old_password_hash": false
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 0,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### searchUsers
Search users.




```swift
platformClient.application("<APPLICATION_ID>").user.searchUsers(q: q, query: query) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | The search query. Mobile number or email ID of a customer. |   
| query | [String]? | no | The search queries. Mobile numbers or email IDs of customers. |  



Search and filter user profiles.

*Returned Response:*




[UserSearchResponseSchema](#UserSearchResponseSchema)

Success. Returns first name, last name, emails, phone number and gender of the user. Refer `UserSearchResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; search customer success</i></summary>

```json
{
  "value": {
    "users": [
      {
        "_id": "5e68af49cfa09bf7233022f1",
        "gender": "male",
        "active": true,
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "akashmane@gofynd.com"
          },
          {
            "active": true,
            "primary": false,
            "verified": true,
            "email": "akashmane@fynd.com"
          },
          {
            "active": true,
            "primary": false,
            "verified": true,
            "email": "akashmane@uniket.store"
          }
        ],
        "account_type": "user",
        "first_name": "Akash",
        "last_name": "Mane",
        "phone_numbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "phone": "8652523958",
            "country_code": 91
          }
        ],
        "created_at": "2020-03-11T09:28:41.982Z",
        "updated_at": "2020-03-11T09:28:41.982Z"
      }
    ]
  }
}
```
</details>

</details>









---


#### createUser
Create user.




```swift
platformClient.application("<APPLICATION_ID>").user.createUser(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateUserRequestSchema | yes | Request body |


Register and add a new user to the platform.

*Returned Response:*




[CreateUserResponseSchema](#CreateUserResponseSchema)

User create




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; create user success</i></summary>

```json
{
  "value": {
    "user": {
      "_id": "5e68af49cfa09bf7233022f1",
      "gender": "male",
      "active": true,
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "external_id": "100002000036789",
      "account_type": "user",
      "first_name": "Akash",
      "last_name": "Mane",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "meta": {},
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2020-03-11T09:28:41.982Z"
    }
  }
}
```
</details>

</details>









---


#### blockOrUnblockUsers
Block/unblock users.




```swift
platformClient.application("<APPLICATION_ID>").user.blockOrUnblockUsers(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BlockUserRequestSchema | yes | Request body |


Control user access by blocking or unblocking their accounts.

*Returned Response:*




[BlockUserSuccess](#BlockUserSuccess)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; block/unblock user success</i></summary>

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


#### unDeleteUser
Undelete user.




```swift
platformClient.application("<APPLICATION_ID>").user.unDeleteUser(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UnDeleteUserRequestSchema | yes | Request body |


Restore a previously deleted user account.

*Returned Response:*




[UnDeleteUserSuccess](#UnDeleteUserSuccess)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; undelete user success</i></summary>

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


#### updateUser
Update user.




```swift
platformClient.application("<APPLICATION_ID>").user.updateUser(userId: userId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| userId | String | yes | User ID |  
| body | UpdateUserRequestSchema | yes | Request body |


Modify and update user profile information.

*Returned Response:*




[CreateUserResponseSchema](#CreateUserResponseSchema)

User update




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; update user success</i></summary>

```json
{
  "value": {
    "user": {
      "_id": "5e68af49cfa09bf7233022f1",
      "gender": "male",
      "active": true,
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "akashmane@gofynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@fynd.com"
        },
        {
          "active": true,
          "primary": false,
          "verified": true,
          "email": "akashmane@uniket.store"
        }
      ],
      "external_id": "100002000036789",
      "account_type": "user",
      "first_name": "Akash",
      "last_name": "Mane",
      "phone_numbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "phone": "8652523958",
          "country_code": 91
        }
      ],
      "meta": {},
      "created_at": "2020-03-11T09:28:41.982Z",
      "updated_at": "2020-03-11T09:28:41.982Z"
    }
  }
}
```
</details>

</details>









---


#### archiveUser
archive user




```swift
platformClient.application("<APPLICATION_ID>").user.archiveUser(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ArchiveUserRequestSchema | yes | Request body |


archive user

*Returned Response:*




[ArchiveUserSuccess](#ArchiveUserSuccess)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; archive user success</i></summary>

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




#### createUserSession
Create user session.




```swift
platformClient.application("<APPLICATION_ID>").user.createUserSession(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateUserSessionRequestSchema | yes | Request body |


Establish a session for user interactions.

*Returned Response:*




[CreateUserSessionResponseSchema](#CreateUserSessionResponseSchema)

Create user session




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; create user session success</i></summary>

```json
{
  "value": {
    "domain": "vinit.com",
    "max_age": 4555555,
    "secure": true,
    "http_only": true,
    "cookie": {
      "f.session": "s%3A-LrEF5FVR8jrT5DCtCHSbAy7JFyX-f9T.uXOQwzje8nOfx4ODANrLi4yNX5fW2W5kLQ2rkBdO2xE"
    }
  }
}
```
</details>

</details>









---


#### deleteSession
Delete session.




```swift
platformClient.application("<APPLICATION_ID>").user.deleteSession(id: id, sessionId: sessionId, reason: reason) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID of a customer. |   
| sessionId | String | yes | Session ID of a customer. |   
| reason | String | yes | Reason for deleting session. |  



Terminate an active user session.

*Returned Response:*




[SessionDeleteResponseSchema](#SessionDeleteResponseSchema)

Success. Refer `SessionDeleteResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; delete user session success</i></summary>

```json
{
  "value": {
    "user_id": "61f02c3dcc701256044ed6c0",
    "session_id": "sess:123"
  }
}
```
</details>

</details>









---


#### getActiveSessions
Get active sessions.




```swift
platformClient.application("<APPLICATION_ID>").user.getActiveSessions(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID of a customer. |  



Retrieve a list of currently active user sessions.

*Returned Response:*




[SessionListResponseSchema](#SessionListResponseSchema)

Success. Refer `SessionListResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; get user sessions success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "session_id": "134",
        "user_agent": "134",
        "ip": "134",
        "domain": "134",
        "expire_in": "134"
      },
      {
        "session_id": "134",
        "user_agent": "134",
        "ip": "134",
        "domain": "134",
        "expire_in": "134"
      }
    ]
  }
}
```
</details>

</details>









---


#### deleteActiveSessions
Delete active sessions.




```swift
platformClient.application("<APPLICATION_ID>").user.deleteActiveSessions(id: id, reason: reason) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID of a customer. |   
| reason | String | yes | Reason to delete sessions. |  



End multiple active user sessions.

*Returned Response:*




[SessionsDeleteResponseSchema](#SessionsDeleteResponseSchema)

Success. Refer `SessionsDeleteResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; delete user sessions success</i></summary>

```json
{
  "value": {
    "user_id": "61f02c3dcc701256044ed6c0",
    "session_ids": [
      "sess:123",
      "sess:456"
    ]
  }
}
```
</details>

</details>









---




#### getPlatformConfig
Get platform config.




```swift
platformClient.application("<APPLICATION_ID>").user.getPlatformConfig() { (response, error) in
    // Use response
}
```






Retrieve configuration settings for the platform.

*Returned Response:*




[PlatformSchema](#PlatformSchema)

Success. Returns a JSON object containing the all the platform configurations. Refer `PlatformSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; get platform config success</i></summary>

```json
{
  "value": {
    "active": true,
    "mobile_image": "",
    "desktop_image": "",
    "social": {
      "facebook": true,
      "google": true,
      "account_kit": true
    },
    "flash_card": {
      "text": "",
      "text_color": "#FFFFFF",
      "background_color": "#EF5350"
    },
    "register": true,
    "forgot_password": true,
    "login": {
      "password": true,
      "otp": true
    },
    "skip_captcha": false,
    "display": "Fynd",
    "subtext": "Login to Fynd",
    "name": "Fynd",
    "meta": {},
    "required_fields": {
      "email": {
        "is_required": false,
        "level": "hard"
      },
      "mobile": {
        "is_required": true,
        "level": "hard"
      }
    },
    "register_required_fields": {
      "email": {
        "is_required": false,
        "level": "hard"
      },
      "mobile": {
        "is_required": true,
        "level": "hard"
      }
    },
    "skip_login": false,
    "look_and_feel": {
      "background_color": "#F5F5F5",
      "card_position": "center"
    },
    "social_tokens": {
      "google": {
        "app_id": "token_123"
      },
      "facebook": {
        "app_id": "token_123"
      },
      "accountkit": {
        "app_id": "token_123"
      }
    },
    "session_config": {
      "duration": 30,
      "type": "Days",
      "is_rolling": false
    },
    "delete_account_reasons": [
      {
        "reason_text": "test",
        "reason_id": "123",
        "show_text_area": true
      }
    ],
    "delete_account_day": 7,
    "delete_account_consent": {
      "consent_text": ""
    },
    "_id": "5e04a5e5220bc15839ad9bc0",
    "created_at": "2019-12-26T12:21:57.878Z",
    "updated_at": "2020-08-13T14:31:09.878Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### updatePlatformConfig
Update platform config.




```swift
platformClient.application("<APPLICATION_ID>").user.updatePlatformConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PlatformSchema | yes | Request body |


Modify and update platform configuration settings.

*Returned Response:*




[PlatformSchema](#PlatformSchema)

Success. Returns a JSON object with the updated platform configurations. Refer `PlatformSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; update platform config success</i></summary>

```json
{
  "value": {
    "active": true,
    "mobile_image": "",
    "desktop_image": "",
    "social": {
      "facebook": true,
      "google": true,
      "account_kit": true
    },
    "flash_card": {
      "text": "",
      "text_color": "#FFFFFF",
      "background_color": "#EF5350"
    },
    "register": true,
    "forgot_password": true,
    "login": {
      "password": true,
      "otp": true
    },
    "skip_captcha": false,
    "display": "Fynd",
    "subtext": "Login to Fynd",
    "name": "Fynd",
    "meta": {},
    "required_fields": {
      "email": {
        "is_required": false,
        "level": "hard"
      },
      "mobile": {
        "is_required": true,
        "level": "hard"
      }
    },
    "register_required_fields": {
      "email": {
        "is_required": false,
        "level": "hard"
      },
      "mobile": {
        "is_required": true,
        "level": "hard"
      }
    },
    "skip_login": false,
    "look_and_feel": {
      "background_color": "#F5F5F5",
      "card_position": "center"
    },
    "social_tokens": {
      "google": {
        "app_id": "token_123"
      },
      "facebook": {
        "app_id": "token_123"
      },
      "accountkit": {
        "app_id": "token_123"
      }
    },
    "session_config": {
      "duration": 30,
      "type": "Days",
      "is_rolling": false
    },
    "delete_account_reasons": [
      {
        "reason_text": "test",
        "reason_id": "123",
        "show_text_area": true
      }
    ],
    "delete_account_day": 7,
    "delete_account_consent": {
      "consent_text": ""
    },
    "_id": "5e04a5e5220bc15839ad9bc0",
    "created_at": "2019-12-26T12:21:57.878Z",
    "updated_at": "2020-08-13T14:31:09.878Z",
    "__v": 0
  }
}
```
</details>

</details>









---




#### createUserGroup
Create user group.




```swift
platformClient.application("<APPLICATION_ID>").user.createUserGroup(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateUserGroup | yes | Request body |


Form and add a new user group.

*Returned Response:*




[UserGroupResponseSchema](#UserGroupResponseSchema)

Success. returns created User Group. `UserGroupResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; create user group success</i></summary>

```json
{
  "value": {
    "is_active": true,
    "_id": "6345677535474fbb6944b7ce",
    "name": "Group 1",
    "description": "description",
    "file_url": "url",
    "status": "pending",
    "uid": 1,
    "application_id": "000000000000000000000001",
    "created_at": "2022-10-11T12:54:13.539Z",
    "modified_at": "2022-10-11T12:54:13.539Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getUserGroups
Get user groups.




```swift
platformClient.application("<APPLICATION_ID>").user.getUserGroups(pageNo: pageNo, pageSize: pageSize, name: name, type: type, status: status, groupUid: groupUid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | String? | no | page number for pagination result |   
| pageSize | String? | no | page size for pagination result |   
| name | String? | no | to search for User Groups which contains given string in their name |   
| type | String? | no | to search for User Groups with given type |   
| status | String? | no | to get User Groups with given status |   
| groupUid | Int? | no | to get User Groups with given uid |  



Retrieve a list of user groups.

*Returned Response:*




[UserGroupListResponseSchema](#UserGroupListResponseSchema)

Success. User Group details. `UserGroupListResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; get user group success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "is_active": true,
        "_id": "6345677535474fbb6944b7ce",
        "name": "Group 1",
        "description": "description",
        "file_url": "url",
        "status": "pending",
        "uid": 1,
        "application_id": "000000000000000000000001",
        "created_at": "2022-10-11T12:54:13.539Z",
        "modified_at": "2022-10-11T12:54:13.539Z",
        "__v": 0
      },
      {
        "is_active": true,
        "_id": "6345677535474fbb6944b7ced",
        "name": "Group 2",
        "description": "description",
        "file_url": "url2",
        "status": "pending",
        "uid": 1,
        "application_id": "000000000000000000000001",
        "created_at": "2022-10-11T12:54:13.539Z",
        "modified_at": "2022-10-11T12:54:13.539Z",
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 0,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### updateUserGroup
Update user group.




```swift
platformClient.application("<APPLICATION_ID>").user.updateUserGroup(groupId: groupId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| groupId | String | yes | Numeric ID allotted to a User Group |  
| body | UpdateUserGroupSchema | yes | Request body |


Modify and update user group details.

*Returned Response:*




[UserGroupResponseSchema](#UserGroupResponseSchema)

Success. returns updated User Group. `UserGroupResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; update user group success</i></summary>

```json
{
  "value": {
    "is_active": true,
    "_id": "6345677535474fbb6944b7ce",
    "name": "Group 1",
    "description": "description",
    "file_url": "url",
    "status": "pending",
    "uid": 1,
    "application_id": "000000000000000000000004",
    "created_at": "2022-10-11T12:54:13.539Z",
    "modified_at": "2022-10-11T12:54:13.539Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### getUserGroupById
Get user group by ID.




```swift
platformClient.application("<APPLICATION_ID>").user.getUserGroupById(groupId: groupId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| groupId | String | yes | Numeric ID allotted to a User Group |  



Retrieve a user group by its unique identifier.

*Returned Response:*




[UserGroupResponseSchema](#UserGroupResponseSchema)

Success. User Group details. `UserGroupResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; get user group id success</i></summary>

```json
{
  "value": {
    "is_active": true,
    "_id": "6345677535474fbb6944b7ce",
    "name": "Group 1",
    "description": "description",
    "file_url": "url",
    "status": "pending",
    "uid": 1,
    "application_id": "000000000000000000000001",
    "created_at": "2022-10-11T12:54:13.539Z",
    "modified_at": "2022-10-11T12:54:13.539Z",
    "__v": 0
  }
}
```
</details>

</details>









---


#### updateUserGroupPartially
Add or Remove an user from particular user group and update user group details




```swift
platformClient.application("<APPLICATION_ID>").user.updateUserGroupPartially(groupId: groupId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| groupId | String | yes | Numeric ID allotted to a User Group |  
| body | PartialUserGroupUpdateSchema | yes | Request body |


Update user group partially on the platform.

*Returned Response:*




[UserGroupResponseSchema](#UserGroupResponseSchema)

Success. returns updated User Group. `UserGroupResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; update user group partially success</i></summary>

```json
{
  "value": {
    "is_active": true,
    "_id": "6345677535474fbb6944b7ce",
    "name": "Group 1",
    "description": "description",
    "file_url": "url",
    "status": "pending",
    "uid": 1,
    "application_id": "000000000000000000000001",
    "created_at": "2022-10-11T12:54:13.539Z",
    "modified_at": "2022-10-11T12:54:13.539Z",
    "__v": 0
  }
}
```
</details>

</details>









---




#### createUserAttributeDefinition
Create a User Attribute Definition




```swift
platformClient.application("<APPLICATION_ID>").user.createUserAttributeDefinition(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateUserAttributeDefinition | yes | Request body |


Use this API to areate a new User Attribute Definition

*Returned Response:*




[UserAttributeDefinitionResponse](#UserAttributeDefinitionResponse)

Success. returns created User Attribute Definition. `UserAttributeDefinitionResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "5e68af49cfa09bf7233022f1",
  "name": "example_name",
  "slug": "example_key",
  "description": "example_description",
  "application_id": "application_id_example",
  "type": "string",
  "multi_value": false,
  "customer_editable": true,
  "encrypted": false,
  "pinned": true,
  "pin_order": 2,
  "validations": [
    {
      "type": "min",
      "value": 1
    }
  ],
  "is_locked": false,
  "created_by": "5f6d1d7774e48a04969b2ea7",
  "updated_by": "5f6d1d7774e48a04969b2ea7",
  "created_at": "2023-10-17T10:00:00Z",
  "modified_at": "2023-10-17T10:05:00Z"
}
```
</details>









---


#### getUserAttributeDefinitions
Get User Attribute Definitions




```swift
platformClient.application("<APPLICATION_ID>").user.getUserAttributeDefinitions(excludingIds: excludingIds, slug: slug, type: type, customerEditable: customerEditable, encrypted: encrypted, pinned: pinned, pinOrder: pinOrder, isLocked: isLocked, name: name, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| excludingIds | String? | no | Exclude attribute definitions by Ids |   
| slug | String? | no | Filter by attribute slug. |   
| type | String? | no | Filter by attribute type. |   
| customerEditable | Bool? | no | Filter by customer_editable status. |   
| encrypted | Bool? | no | Filter by encrypted status. |   
| pinned | Bool? | no | Filter by pinned status. |   
| pinOrder | Int? | no | Filter by pin order. |   
| isLocked | Bool? | no | Filter by locked status. |   
| name | String? | no | Filter by attribute name using a case-insensitive regex. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |  



Retrieve user attribute definitions.

*Returned Response:*




[[String: Any]](#[String: Any])

Successful response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateUserAttributeDefinition
Update User Attribute Definition




```swift
platformClient.application("<APPLICATION_ID>").user.updateUserAttributeDefinition(attributeDefId: attributeDefId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| attributeDefId | String | yes | The unique identifier of the attribute definition to update. |  
| body | CreateUserAttributeDefinition | yes | Request body |


Update an existing user attribute definition.

*Returned Response:*




[UserAttributeDefinition](#UserAttributeDefinition)

Successful update




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### deleteUserAttributeDefinitionById
Delete User Attribute Definition




```swift
platformClient.application("<APPLICATION_ID>").user.deleteUserAttributeDefinitionById(attributeDefId: attributeDefId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| attributeDefId | String | yes | The unique identifier of the attribute definition to delete. |  



Delete a user attribute definition by its unique identifier.

*Returned Response:*




[SuccessMessageResponse](#SuccessMessageResponse)

Successful Deletion




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getUserAttributeDefinitionById
Get User Attribute Definition




```swift
platformClient.application("<APPLICATION_ID>").user.getUserAttributeDefinitionById(attributeDefId: attributeDefId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| attributeDefId | String | yes | The unique identifier of the attribute definition to retrieve. |  



Get a user attribute definition by its unique identifier.

*Returned Response:*




[UserAttributeDefinition](#UserAttributeDefinition)

Successful Retrieval




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateUserAttribute
Update Or Create User Attribute




```swift
platformClient.application("<APPLICATION_ID>").user.updateUserAttribute(attributeDefId: attributeDefId, userId: userId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| attributeDefId | String | yes | The unique identifier of the attribute definition to update. |   
| userId | String | yes | The unique identifier of the user to update. |  
| body | CreateUserAttributeRequest | yes | Request body |


Update Or Create User Attribute

*Returned Response:*




[UserAttributeResponse](#UserAttributeResponse)

Successful update




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getUserAttribute
get User Attribute




```swift
platformClient.application("<APPLICATION_ID>").user.getUserAttribute(attributeDefId: attributeDefId, userId: userId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| attributeDefId | String | yes | The unique identifier of the attribute definition. |   
| userId | String | yes | The unique identifier of the user. |  



get User Attribute

*Returned Response:*




[UserAttributeResponse](#UserAttributeResponse)

Successful update




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### deleteUserAttribute
delete User Attribute




```swift
platformClient.application("<APPLICATION_ID>").user.deleteUserAttribute(attributeDefId: attributeDefId, userId: userId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| attributeDefId | String | yes | The unique identifier of the attribute definition. |   
| userId | String | yes | The unique identifier of the user. |  



delete User Attribute

*Returned Response:*




[SuccessMessageResponse](#SuccessMessageResponse)

Successful update




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getUserAttributesForUser
Get User Attributes for user




```swift
platformClient.application("<APPLICATION_ID>").user.getUserAttributesForUser(userId: userId, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| userId | String | yes | The unique identifier of the user to update. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |  



Get all user attributes for user

*Returned Response:*




[[String: Any]](#[String: Any])

Successful update




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getUserAttributeById
Get User Attribute




```swift
platformClient.application("<APPLICATION_ID>").user.getUserAttributeById(attributeId: attributeId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| attributeId | String | yes | The unique identifier of the attribute to get. |  



Get User Attribute details by id

*Returned Response:*




[UserAttributeResponse](#UserAttributeResponse)

Successful update




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---




### Schemas

 
 
 #### [SuccessMessageResponse](#SuccessMessageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | String? |  yes  |  |

---


 
 
 #### [UserAttributeDefinition](#UserAttributeDefinition)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | The unique identifier for the attribute definition. |
 | name | String? |  yes  | The attribute name. |
 | slug | String? |  yes  | The attribute key. |
 | description | String? |  yes  | The description of the attribute. |
 | applicationId | String? |  yes  | The application ID. |
 | type | String? |  yes  | The attribute type. |
 | multiValue | Bool? |  yes  | Whether the attribute supports multiple values. |
 | customerEditable | Bool? |  yes  | Whether the attribute is customer-editable. |
 | encrypted | Bool? |  yes  | Whether the attribute is encrypted. |
 | pinned | Bool? |  yes  | Whether the attribute is pinned. |
 | pinOrder | Int? |  yes  | The order in which the attribute is pinned. |
 | validations | [[String: Any]]? |  yes  |  |
 | isLocked | Bool? |  yes  | Whether the attribute is locked. |
 | createdAt | String? |  yes  | The creation date of the attribute. |
 | modifiedAt | String? |  yes  | The modification date of the attribute. |
 | v | Int? |  yes  | The version number of the attribute. |

---


 
 
 #### [UserAttributeDefinitionResponse](#UserAttributeDefinitionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | The unique identifier for the attribute definition. |
 | name | String? |  yes  | The attribute name. |
 | slug | String? |  yes  | The attribute key. |
 | description | String? |  yes  | The description of the attribute. |
 | applicationId | String? |  yes  | The application ID. |
 | type | String? |  yes  | The attribute type. |
 | multiValue | Bool? |  yes  | Whether the attribute supports multiple values. |
 | customerEditable | Bool? |  yes  | Whether the attribute is customer-editable. |
 | encrypted | Bool? |  yes  | Whether the attribute is encrypted. |
 | pinned | Bool? |  yes  | Whether the attribute is pinned. |
 | pinOrder | Int? |  yes  | The order in which the attribute is pinned. |
 | validations | [[UserAttributeDefinitionValidation](#UserAttributeDefinitionValidation)]? |  yes  |  |
 | isLocked | Bool? |  yes  | Whether the attribute is locked. |
 | createdBy | String? |  yes  | The user who created the attribute. |
 | updatedBy | String? |  yes  | The user who last updated the attribute. |
 | createdAt | String? |  yes  | The creation date of the attribute definition. |
 | modifiedAt | String? |  yes  | The last modification date of the attribute definition. |

---


 
 
 #### [UserAttributeDefinitionValidation](#UserAttributeDefinitionValidation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of validation. |
 | value | [String: Any]? |  yes  | The validation value. |

---


 
 
 #### [UserAttributeResponse](#UserAttributeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | The unique identifier for the attribute definition. |
 | name | String? |  yes  | The name of user attribute definition. |
 | userId | String? |  yes  | The unique identifier for the user. |
 | applicationId | String? |  yes  | The application ID. |
 | type | String? |  yes  | The attribute type. |
 | customerOverriden | Bool? |  yes  | Whether the attribute is customer-editable. |
 | attribute | [String: Any]? |  yes  |  |
 | updatedBy | String? |  yes  |  |

---


 
 
 #### [CreateUserAttributeRequest](#CreateUserAttributeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customerOverriden | Bool? |  yes  |  |
 | attribute | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateUserAttributeDefinition](#CreateUserAttributeDefinition)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | description | String? |  yes  |  |
 | type | String? |  yes  |  |
 | multiValue | Bool? |  yes  |  |
 | customerEditable | Bool? |  yes  |  |
 | encrypted | Bool? |  yes  |  |
 | pinned | Bool? |  yes  |  |
 | pinOrder | Double? |  yes  |  |
 | defaultValue | String? |  yes  |  |
 | validations | [[String: Any]]? |  yes  |  |

---


 
 
 #### [BlockUserRequestSchema](#BlockUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Bool? |  yes  |  |
 | userId | [String]? |  yes  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [ArchiveUserRequestSchema](#ArchiveUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |

---


 
 
 #### [UnDeleteUserRequestSchema](#UnDeleteUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | reasonId | String? |  yes  |  |

---


 
 
 #### [BlockUserSuccess](#BlockUserSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ArchiveUserSuccess](#ArchiveUserSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [UnDeleteUserSuccess](#UnDeleteUserSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [UserSearchResponseSchema](#UserSearchResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | users | [[UserSearchSchema](#UserSearchSchema)]? |  yes  |  |

---


 
 
 #### [CustomerListResponseSchema](#CustomerListResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[UserSchema](#UserSchema)]? |  yes  |  |
 | page | [PaginationSchema](#PaginationSchema)? |  yes  |  |

---


 
 
 #### [PaginationSchema](#PaginationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | current | Int? |  yes  |  |

---


 
 
 #### [SessionListResponseSchema](#SessionListResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SessionListResponseInfo](#SessionListResponseInfo)]? |  yes  |  |

---


 
 
 #### [SessionDeleteResponseSchema](#SessionDeleteResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | sessionId | String? |  yes  |  |

---


 
 
 #### [SessionsDeleteResponseSchema](#SessionsDeleteResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | sessionIds | [String]? |  yes  |  |

---


 
 
 #### [APIError](#APIError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | message | String? |  yes  |  |
 | info | String? |  yes  | Error code description link |
 | requestId | String? |  yes  |  |
 | error | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | authenticated | Bool? |  yes  |  |

---


 
 
 #### [SessionListResponseInfo](#SessionListResponseInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sessionId | String? |  yes  |  |
 | userAgent | String? |  yes  |  |
 | ip | String? |  yes  |  |
 | domain | String? |  yes  |  |
 | expireIn | String? |  yes  |  |
 | location | String? |  yes  |  |

---


 
 
 #### [Conditions](#Conditions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userAttributeDefinitionId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |
 | key | String? |  yes  |  |

---


 
 
 #### [UserResponseErrorSchema](#UserResponseErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |
 | fileUrl | String? |  yes  |  |

---


 
 
 #### [UserGroupResponseSchema](#UserGroupResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | conditions | [[Conditions](#Conditions)]? |  yes  |  |
 | error | [UserResponseErrorSchema](#UserResponseErrorSchema)? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | fileUrl | String? |  yes  |  |
 | id | String? |  yes  |  |
 | status | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [UserGroupListResponseSchema](#UserGroupListResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[UserGroupResponseSchema](#UserGroupResponseSchema)]? |  yes  |  |
 | page | [PaginationSchema](#PaginationSchema)? |  yes  |  |

---


 
 
 #### [ConditionsSchema](#ConditionsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userAttributeDefinitionId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [CreateUserGroup](#CreateUserGroup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | conditions | [[ConditionsSchema](#ConditionsSchema)]? |  yes  |  |
 | type | String? |  yes  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | fileUrl | String? |  yes  |  |

---


 
 
 #### [CreateUserRequestSchema](#CreateUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String |  no  |  |
 | email | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | username | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | externalId | String? |  yes  |  |

---


 
 
 #### [CreateUserResponseSchema](#CreateUserResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |

---


 
 
 #### [CreateUserSessionRequestSchema](#CreateUserSessionRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | String? |  yes  |  |
 | maxAge | Double? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [CreateUserSessionResponseSchema](#CreateUserSessionResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | String? |  yes  |  |
 | maxAge | Double? |  yes  |  |
 | secure | Bool? |  yes  |  |
 | httpOnly | Bool? |  yes  |  |
 | cookie | [String: Any]? |  yes  |  |

---


 
 
 #### [PlatformSchema](#PlatformSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | lookAndFeel | [LookAndFeel](#LookAndFeel)? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | forgotPassword | Bool? |  yes  |  |
 | login | [Login](#Login)? |  yes  |  |
 | skipCaptcha | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | meta | [MetaSchema](#MetaSchema)? |  yes  |  |
 | id | String? |  yes  |  |
 | social | [Social](#Social)? |  yes  |  |
 | requiredFields | [RequiredFields](#RequiredFields)? |  yes  |  |
 | registerRequiredFields | [RegisterRequiredFields](#RegisterRequiredFields)? |  yes  |  |
 | skipLogin | Bool? |  yes  |  |
 | flashCard | [FlashCard](#FlashCard)? |  yes  |  |
 | subtext | String? |  yes  |  |
 | socialTokens | [SocialTokens](#SocialTokens)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | register | Bool? |  yes  |  |
 | mobileImage | String? |  yes  |  |
 | desktopImage | String? |  yes  |  |
 | deleteAccountDay | Int? |  yes  |  |
 | deleteAccountReasons | [[DeleteAccountReasons](#DeleteAccountReasons)]? |  yes  |  |
 | deleteAccountConsent | [DeleteAccountConsent](#DeleteAccountConsent)? |  yes  |  |
 | sessionConfig | [SessionExpiry](#SessionExpiry)? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [LookAndFeel](#LookAndFeel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardPosition | String? |  yes  |  |
 | backgroundColor | String? |  yes  |  |

---


 
 
 #### [Login](#Login)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | password | Bool? |  yes  |  |
 | otp | Bool? |  yes  |  |

---


 
 
 #### [MetaSchema](#MetaSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndDefault | Bool? |  yes  |  |

---


 
 
 #### [Social](#Social)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accountKit | Bool? |  yes  |  |
 | facebook | Bool? |  yes  |  |
 | google | Bool? |  yes  |  |
 | apple | Bool? |  yes  |  |

---


 
 
 #### [RequiredFields](#RequiredFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [PlatformEmail](#PlatformEmail)? |  yes  |  |
 | mobile | [PlatformMobile](#PlatformMobile)? |  yes  |  |

---


 
 
 #### [PlatformEmail](#PlatformEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [PlatformMobile](#PlatformMobile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [RegisterRequiredFields](#RegisterRequiredFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [RegisterRequiredFieldsEmail](#RegisterRequiredFieldsEmail)? |  yes  |  |
 | mobile | [RegisterRequiredFieldsMobile](#RegisterRequiredFieldsMobile)? |  yes  |  |

---


 
 
 #### [RegisterRequiredFieldsEmail](#RegisterRequiredFieldsEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [RegisterRequiredFieldsMobile](#RegisterRequiredFieldsMobile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [FlashCard](#FlashCard)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | textColor | String? |  yes  |  |
 | backgroundColor | String? |  yes  |  |

---


 
 
 #### [SocialTokens](#SocialTokens)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [Facebook](#Facebook)? |  yes  |  |
 | accountKit | [Accountkit](#Accountkit)? |  yes  |  |
 | google | [Google](#Google)? |  yes  |  |

---


 
 
 #### [DeleteAccountReasons](#DeleteAccountReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonText | String? |  yes  |  |
 | reasonId | String? |  yes  |  |
 | showTextArea | Bool? |  yes  |  |

---


 
 
 #### [DeleteAccountConsent](#DeleteAccountConsent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | consentText | String? |  yes  |  |

---


 
 
 #### [Facebook](#Facebook)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |
 | appSecret | String? |  yes  |  |

---


 
 
 #### [Accountkit](#Accountkit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |
 | appSecret | String? |  yes  |  |

---


 
 
 #### [Google](#Google)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |
 | appSecret | String? |  yes  |  |

---


 
 
 #### [SessionExpiry](#SessionExpiry)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | duration | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | isRolling | Bool? |  yes  |  |

---


 
 
 #### [UpdateUserGroupSchema](#UpdateUserGroupSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | conditions | [[ConditionsSchema](#ConditionsSchema)]? |  yes  |  |
 | type | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | fileUrl | String? |  yes  |  |

---


 
 
 #### [PartialUserGroupUpdateSchema](#PartialUserGroupUpdateSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | Source of update to be used to update individual users. Default value is considered file_url if not passed. |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | fileUrl | String? |  yes  | Required property when passed type file_url. Internet reachable csv file url which will be used to fetch download data. It must have one of columns from `phone_number``, `email``, `user_id`` and must have `action` column. `action` column can have `add` or `remove` value. |
 | userData | [[UserGroupUpdateData](#UserGroupUpdateData)]? |  yes  | Required property when passed type json. Array of user data. Must have `action` field and one of `phone_number`, `email` or `user_id` field in object |

---


 
 
 #### [UserGroupUpdateData](#UserGroupUpdateData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  | Must be valid mongodb objectid of existing user |
 | phoneNumber | String? |  yes  | Phone number of registered user |
 | email | String? |  yes  | Email of registered user |
 | action | String |  no  |  |

---


 
 
 #### [UpdateUserRequestSchema](#UpdateUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | externalId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | phoneNumbers | [[UserPhoneNumbers](#UserPhoneNumbers)]? |  yes  |  |
 | emails | [[UserEmails](#UserEmails)]? |  yes  |  |

---


 
 
 #### [UserEmails](#UserEmails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [UserPhoneNumbers](#UserPhoneNumbers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | phone | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [UserSchema](#UserSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | lastName | String? |  yes  |  |
 | phoneNumbers | [[PhoneNumber](#PhoneNumber)]? |  yes  |  |
 | emails | [[Email](#Email)]? |  yes  |  |
 | gender | String? |  yes  |  |
 | dob | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | profilePicUrl | String? |  yes  |  |
 | username | String? |  yes  |  |
 | accountType | String? |  yes  |  |
 | id | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | externalId | String? |  yes  |  |

---


 
 
 #### [UserSearchSchema](#UserSearchSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | lastName | String? |  yes  |  |
 | phoneNumbers | [[PhoneNumber](#PhoneNumber)]? |  yes  |  |
 | emails | [[Email](#Email)]? |  yes  |  |
 | gender | String? |  yes  |  |
 | dob | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | profilePicUrl | String? |  yes  |  |
 | username | String? |  yes  |  |
 | accountType | String? |  yes  |  |
 | id | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | externalId | String? |  yes  |  |
 | archive | Bool? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [PhoneNumber](#PhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | phone | String? |  yes  |  |
 | countryCode | Int? |  yes  |  |

---


 
 
 #### [Email](#Email)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primary | Bool? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | email | String? |  yes  |  |
 | active | Bool? |  yes  |  |

---



