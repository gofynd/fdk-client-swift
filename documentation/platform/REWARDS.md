



##### [Back to Platform docs](./README.md)

## Rewards Methods
Earn and redeem reward points
* [showGiveaways](#showgiveaways)
* [saveGiveAway](#savegiveaway)
* [getGiveawayById](#getgiveawaybyid)
* [updateGiveAway](#updategiveaway)
* [showOffers](#showoffers)
* [getOfferByName](#getofferbyname)
* [updateOfferByName](#updateofferbyname)
* [updateUserStatus](#updateuserstatus)
* [getUserDetails](#getuserdetails)
* [getUserPointsHistory](#getuserpointshistory)
* [getRewardsConfiguration](#getrewardsconfiguration)
* [setRewardsConfiguration](#setrewardsconfiguration)



## Methods with example and description


#### showGiveaways
List of giveaways of the current application.




```swift
platformClient.application("<APPLICATION_ID>").rewards.showGiveaways(pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageId | String | yes | pagination page id |   
| pageSize | Int | yes | pagination page size |  



Fetch the detailed compilation of live, completed, and scheduled point-based giveaways created.

*Returned Response:*




[GiveawayResponse](#GiveawayResponse)

ok




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "645c9cdd199c5232d7848bc2",
        "application_id": "5d5c304a4df829372e2ad6d1",
        "name": "test deacs",
        "title": "wscws",
        "description": "wscfws",
        "active": true,
        "audience": {
          "header_user_id": "uid",
          "id": "645b6c682c6786d31eac6c89"
        },
        "rule": {
          "amount": 100
        },
        "_schedule": {
          "start": "2023-05-11T07:44:09.542Z",
          "end": "2023-05-11T18:30:00.000Z"
        },
        "banner_image": {
          "aspect_ratio": "2:1",
          "secure_url": ""
        },
        "updated_by": "600693a01faf8695d70a15df",
        "created_at": "2023-05-11T07:44:29.123Z",
        "id": "645c9cdd199c5232d7848bc2"
      },
      {
        "_id": "645b6e9be02d1131fc06c2b4",
        "application_id": "5d5c304a4df829372e2ad6d1",
        "name": "yedbx",
        "title": "wdc",
        "description": "wdfc",
        "active": true,
        "audience": {
          "header_user_id": "uid",
          "id": "645b6c682c6786d31eac6c89"
        },
        "rule": {
          "amount": 100
        },
        "_schedule": {
          "start": "2023-05-10T10:14:45.672Z",
          "end": "2023-05-10T18:30:00.000Z"
        },
        "banner_image": {
          "aspect_ratio": "2:1",
          "secure_url": ""
        },
        "created_at": "2023-05-10T10:14:51.807Z",
        "id": "645b6e9be02d1131fc06c2b4"
      }
    ],
    "page": {
      "type": "string",
      "item_total": 2,
      "size": 10,
      "current": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### saveGiveAway
List of giveaways of the current application.




```swift
platformClient.application("<APPLICATION_ID>").rewards.saveGiveAway(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | Giveaway | yes | Request body |


Creates a new giveaway in the current application, specifying the target audience, points allocation, as well as the name and display name of the giveaway.

*Returned Response:*




[Giveaway](#Giveaway)

ok




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "application_id": "5d5c304a4df829372e2ad6d1",
    "name": "abhinav test",
    "title": "abhinav test",
    "description": "abhinav test",
    "active": true,
    "audience": {
      "id": "6459029c9020a3d96599c528",
      "header_user_id": "uid"
    },
    "rule": {
      "amount": 1000
    },
    "_schedule": {
      "start": "2023-05-24T09:35:02.800Z",
      "end": "2023-05-24T18:30:00.000Z"
    },
    "banner_image": {
      "secure_url": "",
      "aspect_ratio": "2:1"
    }
  }
}
```
</details>

</details>









---


#### getGiveawayById
Get giveaway by ID.




```swift
platformClient.application("<APPLICATION_ID>").rewards.getGiveawayById(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Giveaway ID |  



Retrieve the specific giveaway by giveaway ID. It will show all the details of the requested giveaway.

*Returned Response:*




[Giveaway](#Giveaway)

ok




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "application_id": "5d5c304a4df829372e2ad6d1",
    "name": "abhinav test",
    "title": "abhinav test",
    "description": "abhinav test",
    "active": true,
    "audience": {
      "id": "6459029c9020a3d96599c528",
      "header_user_id": "uid"
    },
    "rule": {
      "amount": 1000
    },
    "_schedule": {
      "start": "2023-05-24T09:35:02.800Z",
      "end": "2023-05-24T18:30:00.000Z"
    },
    "banner_image": {
      "secure_url": "",
      "aspect_ratio": "2:1"
    }
  }
}
```
</details>

</details>









---


#### updateGiveAway
Updates the giveaway by it's ID.




```swift
platformClient.application("<APPLICATION_ID>").rewards.updateGiveAway(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Giveaway ID |  
| body | Giveaway | yes | Request body |


Make the necessary updates to the giveaway based on its giveaway ID.

*Returned Response:*




[Giveaway](#Giveaway)

ok




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "application_id": "5d5c304a4df829372e2ad6d1",
    "name": "abhinav test",
    "title": "abhinav test",
    "description": "abhinav test",
    "active": true,
    "audience": {
      "id": "6459029c9020a3d96599c528",
      "header_user_id": "uid"
    },
    "rule": {
      "amount": 1000
    },
    "_schedule": {
      "start": "2023-05-24T09:35:02.800Z",
      "end": "2023-05-24T18:30:00.000Z"
    },
    "banner_image": {
      "secure_url": "",
      "aspect_ratio": "2:1"
    }
  }
}
```
</details>

</details>









---


#### showOffers
List of offers of the current application.




```swift
platformClient.application("<APPLICATION_ID>").rewards.showOffers() { (response, error) in
    // Use response
}
```






Retrieve the list of offers within the current application, including order_discount, order, sign_up, and referral, along with their respective details.

*Returned Response:*




[[Offer]](#[Offer])

ok




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Offer</i></summary>

```json
{
  "value": [
    {
      "_id": "63bfb9c1195d62ac089641cd",
      "application_id": "5d5c304a4df829372e2ad6d1",
      "name": "order",
      "_schedule": {},
      "active": true,
      "banner_image": {
        "aspect_ratio": "2:1",
        "secure_url": "https://hdn-1.fynd.com/company/884/applications/000000000000000000000001/rewards/pictures/landscape-banner/original/dbY4bHh9d-reward-banner.png"
      },
      "created_at": "2023-01-12T07:41:53.356Z",
      "display": {
        "validity": 1000,
        "validity_unit": "hours"
      },
      "info_action": {
        "type": "",
        "page": {
          "type": "",
          "params": {
            "slug": null
          },
          "url": ""
        }
      },
      "rule": {
        "claimed": true,
        "value": 10,
        "value_type": "percent",
        "validity": 60000
      },
      "share": {
        "default": "Hey, join me on {{application_name}} and get exciting offers and reward points. Signup today and quickly earn Rs.{{offer_amount}}. Visit {{offer_link}} now!",
        "text": ""
      },
      "sub_text": "Purchase and get reward points",
      "text": "Order & Earn",
      "type": "earn",
      "updated_at": "2023-01-12T15:46:04.854Z",
      "updated_by": "6678589f5d0df704c9996644",
      "url": ""
    },
    {
      "_id": "6363f62638693f31a29e51ea",
      "application_id": "5d5c304a4df829372e2ad6d1",
      "name": "order_discount",
      "_schedule": {},
      "active": true,
      "banner_image": {
        "aspect_ratio": "2:1",
        "secure_url": "https://hdn-1.fynd.com/company/884/applications/000000000000000000000001/rewards/pictures/landscape-banner/original/dbY4bHh9d-reward-banner.png"
      },
      "created_at": "2022-11-03T17:11:02.555Z",
      "display": {
        "validity": 0,
        "validity_unit": ""
      },
      "info_action": {
        "type": "",
        "page": {
          "type": "",
          "params": {
            "slug": null
          },
          "url": ""
        }
      },
      "rule": {
        "currency": "INR",
        "buckets": [
          {
            "low": 1,
            "high": 1000,
            "max": 10000,
            "value": 100,
            "value_type": "percent"
          },
          {
            "low": 1001,
            "high": -1,
            "max": 15000,
            "value": 1000,
            "value_type": "percent"
          }
        ]
      },
      "share": {
        "default": "",
        "text": ""
      },
      "sub_text": "Get flat discounts on total order amount. Shop now!",
      "text": "Get flat discounts on total order amount",
      "type": "redeem",
      "updated_at": "2022-11-03T17:11:02.557Z",
      "updated_by": "3d20f854d736c43f7fd4a9e3",
      "url": ""
    },
    {
      "_id": "6321aee18c981b2d5053942a",
      "application_id": "5d5c304a4df829372e2ad6d1",
      "name": "referral",
      "_schedule": {},
      "active": true,
      "banner_image": {
        "aspect_ratio": "2:1",
        "secure_url": "https://hdn-1.fynd.com/company/884/applications/000000000000000000000001/rewards/pictures/landscape-banner/original/dbY4bHh9d-reward-banner.png"
      },
      "created_at": "0001-01-01T00:00:00.000Z",
      "display": {
        "validity": 10,
        "validity_unit": "days"
      },
      "info_action": {
        "type": "",
        "page": {
          "type": "",
          "params": {
            "slug": null
          },
          "url": ""
        }
      },
      "rule": {
        "counter": 0,
        "amount": 100,
        "referrer_amount": 100,
        "amount_validity": 14400,
        "threshold": 10000
      },
      "share": {
        "default": "Hey, join me on {{application_name}} and get exciting offers and reward points. Signup today and quickly earn Rs.{{offer_amount}}. Visit {{offer_link}} now!",
        "text": ""
      },
      "sub_text": "Share your referral code, invite your friends and you'll both get exciting reward points!",
      "text": "Refer & Earn",
      "type": "earn",
      "updated_at": "2022-09-14T10:37:22.340Z",
      "updated_by": "600693a01faf8695d70a15df",
      "url": ""
    },
    {
      "_id": "642312c095baca2e5ba4e8a7",
      "application_id": "5d5c304a4df829372e2ad6d1",
      "name": "refund_points",
      "__v": 0,
      "active": true,
      "banner_image": {
        "secure_url": "",
        "aspect_ratio": "2:1"
      },
      "created_at": "2023-03-28T16:15:54.294Z",
      "rule": {
        "amount_validity": 60000,
        "counter": 0
      },
      "sub_text": "Your wallet is configure with the points related to the most recent order cancellation. Happy shopping.",
      "text": "Points Returned",
      "type": "earn",
      "updated_at": "2023-03-28T16:16:01.539Z",
      "updated_by": "600693a01faf8695d70a15df",
      "updated_by_name": "abhinavmaurya_gofynd_com_44493",
      "display": {
        "validity": 60000,
        "validity_unit": "minutes"
      },
      "share": {}
    },
    {
      "_id": "6385d7d8a30091f25bf71514",
      "application_id": "5d5c304a4df829372e2ad6d1",
      "name": "sign_up",
      "_schedule": {},
      "active": true,
      "banner_image": {
        "aspect_ratio": "2:1",
        "secure_url": "https://hdn-1.fynd.com/company/884/applications/000000000000000000000001/rewards/pictures/landscape-banner/original/dbY4bHh9d-reward-banner.png"
      },
      "created_at": "2022-11-29T09:58:48.487Z",
      "display": {
        "validity": 10,
        "validity_unit": "days"
      },
      "info_action": {
        "type": "",
        "page": {
          "type": "",
          "params": {
            "slug": null
          },
          "url": ""
        }
      },
      "rule": {
        "counter": 0,
        "amount": 1000,
        "amount_validity": 14400,
        "threshold": 10000
      },
      "share": {
        "default": "",
        "text": ""
      },
      "sub_text": "Sign-up today and get exclusive offers and reward points!",
      "text": "Sign Up & Win",
      "type": "earn",
      "updated_at": "2022-11-29T09:58:48.491Z",
      "updated_by": "600693a01faf8695d70a15df",
      "url": ""
    }
  ]
}
```
</details>

</details>









---


#### getOfferByName
Fetch a offer by its name




```swift
platformClient.application("<APPLICATION_ID>").rewards.getOfferByName(name: name) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| name | String | yes | The name given to the offer. |  



Fetch the specific offer details and configuration by the name of the offer.

*Returned Response:*




[Offer](#Offer)

Success. Check example below or refer `Offer` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "_id": "63bfb9c1195d62ac089641cd",
    "application_id": "5d5c304a4df829372e2ad6d1",
    "name": "order",
    "_schedule": {},
    "active": true,
    "banner_image": {
      "aspect_ratio": "2:1",
      "secure_url": "https://hdn-1.fynd.com/company/884/applications/000000000000000000000001/rewards/pictures/landscape-banner/original/dbY4bHh9d-reward-banner.png"
    },
    "created_at": "2023-01-12T07:41:53.356Z",
    "display": {
      "validity": 1000,
      "validity_unit": "hours"
    },
    "info_action": {
      "type": "",
      "page": {
        "type": "",
        "params": {
          "slug": null
        },
        "url": ""
      }
    },
    "rule": {
      "claimed": true,
      "value": 10,
      "value_type": "percent",
      "validity": 60000
    },
    "share": {
      "default": "Hey, join me on {{application_name}} and get exciting offers and reward points. Signup today and quickly earn Rs.{{offer_amount}}. Visit {{offer_link}} now!",
      "text": ""
    },
    "sub_text": "Purchase and get reward points",
    "text": "Order & Earn",
    "type": "earn",
    "updated_at": "2023-01-12T15:46:04.854Z",
    "updated_by": "6678589f5d0df704c9996644",
    "url": ""
  }
}
```
</details>

</details>









---


#### updateOfferByName
Update offer by name




```swift
platformClient.application("<APPLICATION_ID>").rewards.updateOfferByName(name: name, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| name | String | yes | The name given to the offer. |  
| body | Offer | yes | Request body |


Update the specific offer details and its configuration by offer name.

*Returned Response:*




[Offer](#Offer)

Success. Check example below or refer `Offer` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "_id": "63bfb9c1195d62ac089641cd",
    "application_id": "5d5c304a4df829372e2ad6d1",
    "name": "order",
    "_schedule": {},
    "active": true,
    "banner_image": {
      "aspect_ratio": "2:1",
      "secure_url": "https://hdn-1.fynd.com/company/884/applications/000000000000000000000001/rewards/pictures/landscape-banner/original/dbY4bHh9d-reward-banner.png"
    },
    "created_at": "2023-01-12T07:41:53.356Z",
    "display": {
      "validity": 1000,
      "validity_unit": "hours"
    },
    "info_action": {
      "type": "",
      "page": {
        "type": "",
        "params": {
          "slug": null
        },
        "url": ""
      }
    },
    "rule": {
      "claimed": true,
      "value": 10,
      "value_type": "percent",
      "validity": 60000
    },
    "share": {
      "default": "Hey, join me on {{application_name}} and get exciting offers and reward points. Signup today and quickly earn Rs.{{offer_amount}}. Visit {{offer_link}} now!",
      "text": ""
    },
    "sub_text": "Purchase and get reward points",
    "text": "Order & Earn",
    "type": "earn",
    "updated_at": "2023-01-12T15:46:04.854Z",
    "updated_by": "6678589f5d0df704c9996644",
    "url": ""
  }
}
```
</details>

</details>









---


#### updateUserStatus
Update user status




```swift
platformClient.application("<APPLICATION_ID>").rewards.updateUserStatus(userId: userId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| userId | String | yes | user id |  
| body | AppUser | yes | Request body |


Update the user status by marking them as a block or unblock. It can be done by changing the active flag in request body.

*Returned Response:*




[AppUser](#AppUser)

Success




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "user": {
      "_id": "6362648a38693f31a29e51e2",
      "user_id": "620f8234e517800d9497660d",
      "referral": {
        "code": "HASE02"
      },
      "application_id": "5d5c304a4df829372e2ad6d1",
      "created_at": "2022-11-02T12:37:30.078Z",
      "updated_at": "2022-11-02T12:37:30.078Z",
      "active": false,
      "block_reason": "test"
    },
    "points": {
      "available": 0
    }
  }
}
```
</details>

</details>









---


#### getUserDetails
Get user reward details




```swift
platformClient.application("<APPLICATION_ID>").rewards.getUserDetails(userId: userId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| userId | String | yes | user id |  



Fetches the user details and the user reward details with their current reward points for the specific user.

*Returned Response:*




[UserRes](#UserRes)

Success. Check example below or refer `UserRes` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "user": {
      "_id": "6362648a38693f31a29e51e2",
      "user_id": "620f8234e517800d9497660d",
      "referral": {
        "code": "HASE02"
      },
      "application_id": "5d5c304a4df829372e2ad6d1",
      "created_at": "2022-11-02T12:37:30.078Z",
      "updated_at": "2022-11-02T12:37:30.078Z",
      "active": false,
      "block_reason": "test"
    },
    "points": {
      "available": 0
    }
  }
}
```
</details>

</details>









---


#### getUserPointsHistory
Get all transactions of reward points




```swift
platformClient.application("<APPLICATION_ID>").rewards.getUserPointsHistory(userId: userId, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| userId | String | yes | user id |   
| pageId | String? | no | PageID is the ID of the requested page. For first request it should be kept empty. |   
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Fetches a list of points transactions like giveaway points, signup points, referral points, order earn points, redeem points and expired points.

*Returned Response:*




[HistoryRes](#HistoryRes)

Success. Check example below or refer `HistoryRes` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "6464a9eb70e0debb8462667d",
        "application_id": "000000000000000000000001",
        "user_id": "000000000000000009802478",
        "points": 500,
        "remaining_points": 500,
        "txn_name": "signup_credit",
        "claimed": true,
        "expires_on": "2023-06-14T10:18:19.118Z",
        "meta": {
          "offer_id": "630e0b8e349f3f1cfbec572f"
        },
        "created_at": "2023-05-17T10:18:19.118Z",
        "updated_at": "2023-05-17T10:18:19.118Z",
        "text_1": "Signup points",
        "text_2": "Additional Points",
        "text_3": "Will expire on 3:48 PM, 14 Jun'23"
      },
      {
        "_id": "6464a9d370e0debb84626677",
        "application_id": "000000000000000000000001",
        "user_id": "000000000000000009802478",
        "points": 500,
        "remaining_points": 500,
        "txn_name": "signup_credit",
        "claimed": true,
        "expires_on": "2023-06-14T10:17:55.588Z",
        "meta": {
          "offer_id": "630e0b8e349f3f1cfbec572f"
        },
        "created_at": "2023-05-17T10:17:55.588Z",
        "updated_at": "2023-05-17T10:17:55.588Z",
        "text_1": "Signup points",
        "text_2": "Additional Points",
        "text_3": "Will expire on 3:47 PM, 14 Jun'23"
      }
    ],
    "page": {
      "current": 0,
      "item_total": 2,
      "type": "cursor",
      "size": 1,
      "has_previous": true,
      "has_next": false,
      "next_id": ""
    }
  }
}
```
</details>

</details>









---


#### getRewardsConfiguration
Get all valid android paths




```swift
platformClient.application("<APPLICATION_ID>").rewards.getRewardsConfiguration() { (response, error) in
    // Use response
}
```






Use this API to get a list of valid android paths required by the Rewards INIT API to validate a fraudulent device.

*Returned Response:*




[ConfigurationRes](#ConfigurationRes)

Success. Refer `ConfigurationRes` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; ConfigurationRes</i></summary>

```json
{
  "value": {
    "success": true,
    "terms_conditions_link": "https://fynd.freshdesk.com/support/solutions/folders/33000111619",
    "valid_android_packages": [
      "co.abc.com"
    ],
    "application_id": "5d5c304a4df829372e2ad6d1"
  }
}
```
</details>

</details>









---


#### setRewardsConfiguration
Updates the collection with given android paths.




```swift
platformClient.application("<APPLICATION_ID>").rewards.setRewardsConfiguration(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ConfigurationRequest | yes | Request body |


Updates the configuration or inserts new records with the given android paths.

*Returned Response:*




[SetConfigurationRes](#SetConfigurationRes)

ok




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "success": true,
    "terms_conditions_link": "https://fynd.freshdesk.com/support/solutions/folders/33000111619",
    "valid_android_packages": [
      "co.abc.com"
    ],
    "application_id": "5d5c304a4df829372e2ad6d1"
  }
}
```
</details>

</details>









---



### Schemas

 
 
 #### [E](#E)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | Int? |  yes  |  |
 | exception | String? |  yes  |  |
 | info | String? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [GiveawayResponse](#GiveawayResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Giveaway](#Giveaway)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [Giveaway](#Giveaway)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | schedule | [Schedule](#Schedule)? |  yes  |  |
 | active | Bool? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | audience | [RewardsAudience](#RewardsAudience)? |  yes  |  |
 | bannerImage | [Asset](#Asset)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | description | String? |  yes  |  |
 | name | String? |  yes  |  |
 | rule | [RewardsRule](#RewardsRule)? |  yes  |  |
 | title | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [Schedule](#Schedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | duration | Int? |  yes  |  |
 | end | String? |  yes  |  |
 | start | String? |  yes  |  |
 | cron | String? |  yes  |  |

---


 
 
 #### [RewardsAudience](#RewardsAudience)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headerUserId | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [Asset](#Asset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | id | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [RewardsRule](#RewardsRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | type | String |  no  |  |

---


 
 
 #### [Offer](#Offer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | schedule | [Schedule](#Schedule)? |  yes  |  |
 | active | Bool? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | bannerImage | [Asset](#Asset)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | name | String? |  yes  |  |
 | rule | [String: Any]? |  yes  |  |
 | share | [ShareMessages](#ShareMessages)? |  yes  |  |
 | subText | String? |  yes  |  |
 | text | String? |  yes  |  |
 | type | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | updatedBy | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [ShareMessages](#ShareMessages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | Int? |  yes  |  |
 | facebook | String? |  yes  |  |
 | fallback | String? |  yes  |  |
 | message | String? |  yes  |  |
 | messenger | String? |  yes  |  |
 | sms | String? |  yes  |  |
 | text | String? |  yes  |  |
 | twitter | String? |  yes  |  |
 | whatsapp | String? |  yes  |  |

---


 
 
 #### [UserRes](#UserRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | points | [Points](#Points)? |  yes  |  |
 | user | [RewardUser](#RewardUser)? |  yes  |  |

---


 
 
 #### [Points](#Points)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | available | Double? |  yes  |  |

---


 
 
 #### [RewardUser](#RewardUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | referral | [Referral](#Referral)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | userBlockReason | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [Referral](#Referral)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |

---


 
 
 #### [AppUser](#AppUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | blockReason | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | updatedBy | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [HistoryRes](#HistoryRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PointsHistory](#PointsHistory)]? |  yes  | History is the list of points transaction. |
 | page | [Page](#Page)? |  yes  |  |
 | points | Double? |  yes  |  |

---


 
 
 #### [PointsHistory](#PointsHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | claimed | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | expiresOn | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | points | Double? |  yes  |  |
 | remainingPoints | Double? |  yes  |  |
 | text1 | String? |  yes  |  |
 | text2 | String? |  yes  |  |
 | text3 | String? |  yes  |  |
 | txnName | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [ConfigurationRes](#ConfigurationRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | validAndroidPackages | [String]? |  yes  | Contains array of string items, Valid android package names. |
 | termsConditionsLink | String? |  yes  | A URL that redirects to the referral information suport page link |
 | applicationId | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [SetConfigurationRes](#SetConfigurationRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ConfigurationRequest](#ConfigurationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | validAndroidPackages | [String]? |  yes  |  |
 | termsConditionsLink | String? |  yes  |  |

---



