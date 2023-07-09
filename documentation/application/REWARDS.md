



##### [Back to Application docs](./README.md)

## Rewards Methods
Earn and redeem reward points
* [getPointsOnProduct](#getpointsonproduct)
* [getOfferByName](#getofferbyname)
* [getOrderDiscount](#getorderdiscount)
* [getUserPoints](#getuserpoints)
* [getUserPointsHistory](#getuserpointshistory)
* [getUserReferralDetails](#getuserreferraldetails)
* [redeemReferralCode](#redeemreferralcode)



## Methods with example and description


#### getPointsOnProduct
Get the eligibility of reward points on a product




```swift
applicationClient.rewards.getPointsOnProduct(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CatalogueOrderRequest | yes | Request body |


Use this API to evaluate the amount of reward points that could be earned on any catalogue product.

*Returned Response:*




[CatalogueOrderResponse](#CatalogueOrderResponse)

Success. Check example below or refer `CatalogueOrderRequest` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getOfferByName
Get offer by name




```swift
applicationClient.rewards.getOfferByName(name: name) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| name | String | yes | The name given to the offer. |  



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


#### getOrderDiscount
Calculates the discount on order-amount




```swift
applicationClient.rewards.getOrderDiscount(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | OrderDiscountRequest | yes | Request body |


Use this API to calculate the discount on order-amount based on all the amount range configured in order_discount.

*Returned Response:*




[OrderDiscountResponse](#OrderDiscountResponse)

Success. Check example below or refer `OrderDiscountResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getUserPoints
Get reward points available with a user




```swift
applicationClient.rewards.getUserPoints() { (response, error) in
    // Use response
}
```






Use this API to retrieve total available points of a user for current application

*Returned Response:*




[PointsResponse](#PointsResponse)

Success. Check example below or refer `PointsResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getUserPointsHistory
Get all transactions of reward points




```swift
applicationClient.rewards.getUserPointsHistory(pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageId | String? | no | PageID is the ID of the requested page. For first request it should be kept empty. |   
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to get a list of points transactions. The list of points history is paginated.

*Returned Response:*




[PointsHistoryResponse](#PointsHistoryResponse)

Success. Check example below or refer `PointsHistoryResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getUserReferralDetails
Get referral details of a user




```swift
applicationClient.rewards.getUserReferralDetails() { (response, error) in
    // Use response
}
```






Use this API to retrieve the referral details a user has configured in the application.

*Returned Response:*




[ReferralDetailsResponse](#ReferralDetailsResponse)

Success. Check example below or refer `ReferralDetailsResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### redeemReferralCode
Redeems a referral code and credits reward points to users




```swift
applicationClient.rewards.redeemReferralCode(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | RedeemReferralCodeRequest | yes | Request body |


Use this API to enter a referral code following which, the configured points would be credited to a user's reward points account.

*Returned Response:*




[RedeemReferralCodeResponse](#RedeemReferralCodeResponse)

Success. Check example below or refer `RedeemReferralCodeResponse` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [ActionPageParams](#ActionPageParams)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | [String]? |  yes  |  |

---


 
 
 #### [Asset](#Asset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | id | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [CatalogueOrderRequest](#CatalogueOrderRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articles | [[RewardsArticle](#RewardsArticle)]? |  yes  |  |

---


 
 
 #### [CatalogueOrderResponse](#CatalogueOrderResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articles | [[RewardsArticle](#RewardsArticle)]? |  yes  |  |

---


 
 
 #### [DiscountProperties](#DiscountProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | absolute | Double? |  yes  |  |
 | currency | String? |  yes  |  |
 | displayAbsolute | String? |  yes  |  |
 | displayPercent | String? |  yes  |  |
 | percent | Double? |  yes  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | Int? |  yes  |  |
 | exception | String? |  yes  |  |
 | info | String? |  yes  |  |
 | message | String? |  yes  |  |

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


 
 
 #### [OrderDiscountRequest](#OrderDiscountRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currency | String? |  yes  |  |
 | orderAmount | Double |  no  |  |

---


 
 
 #### [OrderDiscountResponse](#OrderDiscountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appliedRuleBucket | [OrderDiscountRuleBucket](#OrderDiscountRuleBucket)? |  yes  |  |
 | baseDiscount | [DiscountProperties](#DiscountProperties)? |  yes  |  |
 | discount | [DiscountProperties](#DiscountProperties)? |  yes  |  |
 | orderAmount | Double? |  yes  |  |
 | points | Double? |  yes  |  |

---


 
 
 #### [OrderDiscountRuleBucket](#OrderDiscountRuleBucket)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | high | Double? |  yes  |  |
 | low | Double? |  yes  |  |
 | max | Double? |  yes  |  |
 | value | Double? |  yes  |  |
 | valueType | String? |  yes  |  |

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


 
 
 #### [PointsHistoryResponse](#PointsHistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PointsHistory](#PointsHistory)]? |  yes  | History is the list of points transaction. |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PointsResponse](#PointsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | points | Double? |  yes  | Points is the total available |

---


 
 
 #### [RedeemReferralCodeRequest](#RedeemReferralCodeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deviceId | String |  no  |  |
 | referralCode | String |  no  |  |

---


 
 
 #### [RedeemReferralCodeResponse](#RedeemReferralCodeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | points | Double? |  yes  |  |
 | redeemed | Bool? |  yes  |  |
 | referrerId | String? |  yes  |  |
 | referrerInfo | String? |  yes  |  |

---


 
 
 #### [ReferralDetailsResponse](#ReferralDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | referral | [Offer](#Offer)? |  yes  |  |
 | referrerInfo | String? |  yes  |  |
 | share | [ShareMessages](#ShareMessages)? |  yes  |  |
 | user | [ReferralDetailsUser](#ReferralDetailsUser)? |  yes  |  |

---


 
 
 #### [ReferralDetailsUser](#ReferralDetailsUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | blocked | Bool? |  yes  |  |
 | points | Double? |  yes  |  |
 | redeemed | Bool? |  yes  |  |
 | referralCode | String? |  yes  |  |

---


 
 
 #### [RewardsArticle](#RewardsArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | points | Double? |  yes  |  |
 | price | Double? |  yes  |  |

---


 
 
 #### [Schedule](#Schedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String? |  yes  |  |
 | duration | Int? |  yes  |  |
 | end | String? |  yes  |  |
 | start | String? |  yes  |  |

---


 
 
 #### [ShareMessages](#ShareMessages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | facebook | String? |  yes  |  |
 | fallback | String? |  yes  |  |
 | message | String? |  yes  |  |
 | messenger | String? |  yes  |  |
 | sms | String? |  yes  |  |
 | text | String? |  yes  |  |
 | twitter | String? |  yes  |  |
 | whatsapp | String? |  yes  |  |

---



