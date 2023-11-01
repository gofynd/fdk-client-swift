



##### [Back to Platform docs](./README.md)

## User Methods
Authentication Service
* [getCustomers](#getcustomers)
* [searchUsers](#searchusers)
* [createUser](#createuser)
* [blockOrUnblockUsers](#blockorunblockusers)
* [archiveUser](#archiveuser)
* [unDeleteUser](#undeleteuser)
* [updateUser](#updateuser)
* [createUserSession](#createusersession)
* [deleteSession](#deletesession)
* [getActiveSessions](#getactivesessions)
* [deleteActiveSessions](#deleteactivesessions)
* [getPlatformConfig](#getplatformconfig)
* [updatePlatformConfig](#updateplatformconfig)
* [createUserGroup](#createusergroup)
* [getUserGroups](#getusergroups)
* [updateUserGroup](#updateusergroup)
* [getUserGroupById](#getusergroupbyid)
* [updateUserGroupPartially](#updateusergrouppartially)



## Methods with example and description


#### getCustomers
Get a list of customers




```swift
platformClient.application("<APPLICATION_ID>").user.getCustomers(q: q, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | [String: Any]? | no | The search query. Mobile number or email ID of a customer. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |  



Use this API to retrieve a list of customers who have registered in the application.

*Returned Response:*




[CustomerListResponseSchema](#CustomerListResponseSchema)

Success. Refer `CustomerListResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

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
Search an existing user.




```swift
platformClient.application("<APPLICATION_ID>").user.searchUsers(q: q, query: query) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | The search query. Mobile number or email ID of a customer. |   
| query | [String]? | no | The search queries. Mobile numbers or email IDs of customers. |  



Use this API to retrieve an existing user from a list.

*Returned Response:*




[UserSearchResponseSchema](#UserSearchResponseSchema)

Success. Returns first name, last name, emails, phone number and gender of the user. Refer `UserSearchResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
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
```
</details>









---


#### createUser
Create user




```swift
platformClient.application("<APPLICATION_ID>").user.createUser(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateUserRequestSchema | yes | Request body |


Create user

*Returned Response:*




[CreateUserResponseSchema](#CreateUserResponseSchema)

User create




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
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
```
</details>









---


#### blockOrUnblockUsers
Block/Unblock user




```swift
platformClient.application("<APPLICATION_ID>").user.blockOrUnblockUsers(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BlockUserRequestSchema | yes | Request body |


Block/Unblock user

*Returned Response:*




[BlockUserSuccess](#BlockUserSuccess)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
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
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### unDeleteUser
undelete user who deleted from application and have not elapsed the platform configured delete days




```swift
platformClient.application("<APPLICATION_ID>").user.unDeleteUser(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | UnDeleteUserRequestSchema | yes | Request body |


undelete user who deleted from application and have not elapsed the platform configured delete days

*Returned Response:*




[UnDeleteUserSuccess](#UnDeleteUserSuccess)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### updateUser
Update user




```swift
platformClient.application("<APPLICATION_ID>").user.updateUser(userId: userId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| userId | String | yes | User ID |  
| body | UpdateUserRequestSchema | yes | Request body |


Use this API to update user details, Note: Existing emails and phone numbers of user will be replaced directly if phone_numbers or emails field sent in request data.

*Returned Response:*




[CreateUserResponseSchema](#CreateUserResponseSchema)

User update




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
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
```
</details>









---


#### createUserSession
Create user session




```swift
platformClient.application("<APPLICATION_ID>").user.createUserSession(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateUserSessionRequestSchema | yes | Request body |


Create user session

*Returned Response:*




[CreateUserSessionResponseSchema](#CreateUserSessionResponseSchema)

Create user session




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "domain": "vinit.com",
  "max_age": 4555555,
  "secure": true,
  "http_only": true,
  "cookie": {
    "f.session": "s%3A-LrEF5FVR8jrT5DCtCHSbAy7JFyX-f9T.uXOQwzje8nOfx4ODANrLi4yNX5fW2W5kLQ2rkBdO2xE"
  }
}
```
</details>









---


#### deleteSession
Delete a session for a user




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



Use this API to Delete a session of customers who have registered in the application.

*Returned Response:*




[SessionDeleteResponseSchema](#SessionDeleteResponseSchema)

Success. Refer `SessionDeleteResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

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
Get a list of all session with info for a user




```swift
platformClient.application("<APPLICATION_ID>").user.getActiveSessions(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID of a customer. |  



Use this API to retrieve a list of session with info of customers who have registered in the application.

*Returned Response:*




[SessionListResponseSchema](#SessionListResponseSchema)

Success. Refer `SessionListResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

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
Delete a list of all session for a user




```swift
platformClient.application("<APPLICATION_ID>").user.deleteActiveSessions(id: id, reason: reason) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID of a customer. |   
| reason | String | yes | Reason to delete sessions. |  



Use this API to Delete a list of session of customers who have registered in the application.

*Returned Response:*




[SessionsDeleteResponseSchema](#SessionsDeleteResponseSchema)

Success. Refer `SessionsDeleteResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

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
Get platform configurations




```swift
platformClient.application("<APPLICATION_ID>").user.getPlatformConfig() { (response, error) in
    // Use response
}
```






Use this API to get all the platform configurations such as mobile image, desktop image, social logins, and all other text.

*Returned Response:*




[PlatformSchema](#PlatformSchema)

Success. Returns a JSON object containing the all the platform configurations. Refer `PlatformSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
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
      "appId": "token_123"
    },
    "facebook": {
      "appId": "token_123"
    },
    "account_kit": {
      "appId": "token_123"
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
```
</details>









---


#### updatePlatformConfig
Update platform configurations




```swift
platformClient.application("<APPLICATION_ID>").user.updatePlatformConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PlatformSchema | yes | Request body |


Use this API to edit the existing platform configurations such as mobile image, desktop image, social logins, and all other text.

*Returned Response:*




[PlatformSchema](#PlatformSchema)

Success. Returns a JSON object with the updated platform configurations. Refer `PlatformSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
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
      "appId": "token_123"
    },
    "facebook": {
      "appId": "token_123"
    },
    "account_kit": {
      "appId": "token_123"
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
```
</details>









---


#### createUserGroup
Create an User Group




```swift
platformClient.application("<APPLICATION_ID>").user.createUserGroup(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateUserGroupSchema | yes | Request body |


Use this API to create new user Group

*Returned Response:*




[UserGroupResponseSchema](#UserGroupResponseSchema)

Success. returns created User Group. `UserGroupResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
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
}
```
</details>









---


#### getUserGroups
Get User Groups mathcing criteria




```swift
platformClient.application("<APPLICATION_ID>").user.getUserGroups(pageNo: pageNo, pageSize: pageSize, name: name, status: status, groupUid: groupUid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | String? | no | page number for pagination result |   
| pageSize | String? | no | page size for pagination result |   
| name | String? | no | to seartch for User Groups which contains given string in their name |   
| status | String? | no | to get User Groups with given status |   
| groupUid | Int? | no | to get User Groups with given uid |  



Use this API to get User Groups mathing criteria passed in query

*Returned Response:*




[UserGroupListResponseSchema](#UserGroupListResponseSchema)

Success. User Group details. `UserGroupListResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
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
```
</details>









---


#### updateUserGroup
Update an User Group




```swift
platformClient.application("<APPLICATION_ID>").user.updateUserGroup(groupId: groupId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| groupId | String | yes | Numeric ID allotted to a User Group |  
| body | UpdateUserGroupSchema | yes | Request body |


Use this API to update an existing user Group

*Returned Response:*




[UserGroupResponseSchema](#UserGroupResponseSchema)

Success. returns updated User Group. `UserGroupResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
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
}
```
</details>









---


#### getUserGroupById
Get an User Group by Id




```swift
platformClient.application("<APPLICATION_ID>").user.getUserGroupById(groupId: groupId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| groupId | String | yes | Numeric ID allotted to a User Group |  



Use this API to get details of an existing user Group

*Returned Response:*




[UserGroupResponseSchema](#UserGroupResponseSchema)

Success. User Group details. `UserGroupResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
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
}
```
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


Use this API to update user group details and add or remove an user to the user group.

*Returned Response:*




[UserGroupResponseSchema](#UserGroupResponseSchema)

Success. returns updated User Group. `UserGroupResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
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
}
```
</details>









---



### Schemas

 
 
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
 | users | [[UserSchema](#UserSchema)]? |  yes  |  |

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


 
 
 #### [AuthenticationApiErrorSchema](#AuthenticationApiErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [SessionListResponseInfo](#SessionListResponseInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sessionId | String? |  yes  |  |
 | userAgent | String? |  yes  |  |
 | ip | String? |  yes  |  |
 | domain | String? |  yes  |  |
 | expireIn | String? |  yes  |  |

---


 
 
 #### [UserGroupResponseSchema](#UserGroupResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | fileUrl | String? |  yes  |  |
 | id | String? |  yes  |  |
 | status | String? |  yes  |  |
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


 
 
 #### [CreateUserGroupSchema](#CreateUserGroupSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | fileUrl | String |  no  |  |

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
 | deleteAccountConsent | [String: Any]? |  yes  |  |
 | sessionConfig | [String: Any]? |  yes  |  |

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

---


 
 
 #### [Accountkit](#Accountkit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |

---


 
 
 #### [Google](#Google)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |

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



