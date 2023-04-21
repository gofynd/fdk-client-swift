



##### [Back to Platform docs](./README.md)

## Rewards Methods
Earn and redeem reward points
* [showGiveaways](#showgiveaways)
* [saveGiveAway](#savegiveaway)
* [getGiveawayById](#getgiveawaybyid)
* [updateGiveAway](#updategiveaway)
* [getGiveawayAudienceStatus](#getgiveawayaudiencestatus)
* [showOffers](#showoffers)
* [getOfferByName](#getofferbyname)
* [updateOfferByName](#updateofferbyname)
* [updateUserStatus](#updateuserstatus)
* [user](#user)
* [getUserPointsHistory](#getuserpointshistory)



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



List of giveaways of the current application.

*Returned Response:*




[GiveawayResponse](#GiveawayResponse)

ok




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
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


Adds a new giveaway.

*Returned Response:*




[Giveaway](#Giveaway)

ok




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
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



Get giveaway by ID.

*Returned Response:*




[Giveaway](#Giveaway)

ok




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
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


Updates the giveaway by it's ID.

*Returned Response:*




[Giveaway](#Giveaway)

ok




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getGiveawayAudienceStatus
Get the Giveaway audience status




```swift
platformClient.application("<APPLICATION_ID>").rewards.getGiveawayAudienceStatus(audienceId: audienceId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| audienceId | String | yes | audience id |  



Get giveaway audience status

*Returned Response:*




[GiveawayAudience](#GiveawayAudience)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### showOffers
List of offers of the current application.




```swift
platformClient.application("<APPLICATION_ID>").rewards.showOffers() { (response, error) in
    // Use response
}
```






List of offers of the current application.

*Returned Response:*




[[Offer]](#[Offer])

ok




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOfferByName
Get offer by name




```swift
platformClient.application("<APPLICATION_ID>").rewards.getOfferByName(name: name, cookie: cookie) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| name | String | yes | The name given to the offer. |   
| cookie | String | yes | User's session cookie. This cookie is set in browser cookie when logged-in to fynd's authentication system i.e. `Grimlock` or by using grimlock-backend SDK for backend implementation. |  



Use this API to get the offer details and configuration by entering the name of the offer.

*Returned Response:*




[Offer](#Offer)

Success. Check example below or refer `Offer` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
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


Use this API to update the offer details

*Returned Response:*




[Offer](#Offer)

Success. Check example below or refer `Offer` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
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


Use this API to update the user status active/archive

*Returned Response:*




[AppUser](#AppUser)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### user
Get user reward details




```swift
platformClient.application("<APPLICATION_ID>").rewards.user(userId: userId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| userId | String | yes | user id |  



Use this API to get the user reward details

*Returned Response:*




[UserRes](#UserRes)

Success. Check example below or refer `UserRes` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
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



Use this API to get a list of points transactions.

*Returned Response:*




[HistoryRes](#HistoryRes)

Success. Check example below or refer `HistoryRes` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
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


 
 
 #### [GiveawayAudience](#GiveawayAudience)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | audienceId | String? |  yes  |  |
 | currentCount | Double? |  yes  |  |

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



