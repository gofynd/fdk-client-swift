



##### [Back to Public docs](./README.md)

## Billing Methods
Handle public plans

Default
* [getStandardPlans](#getstandardplans)
* [getPlanDetails](#getplandetails)




## Methods with example and description



#### getStandardPlans
Get Standard/Public Plans




```swift
publicClient.billing.getStandardPlans(platformType: platformType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| platformType | String | yes | The type of platform for which plans are requested. |  



Get Standard/Public Plans.


*Returned Response:*




[DetailList](#DetailList)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getPlanDetails
Get plan details




```swift
publicClient.billing.getPlanDetails(planId: planId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| planId | String | yes | Plan unique id. |  



Get plan details.


*Returned Response:*




[PlanDetails](#PlanDetails)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---




### Schemas

 
 
 #### [InternalServerError](#InternalServerError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Internal server Server error |
 | code | String? |  yes  | Error code |

---


 
 
 #### [PlanRecurring](#PlanRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String? |  yes  |  |
 | intervalCount | Double? |  yes  |  |

---


 
 
 #### [Plan](#Plan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [PlanRecurring](#PlanRecurring)? |  yes  |  |
 | isTrialPlan | Bool? |  yes  |  |
 | planGroup | String? |  yes  |  |
 | tagLines | [String]? |  yes  |  |
 | currency | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | isVisible | Bool? |  yes  |  |
 | trialPeriod | Double? |  yes  |  |
 | addons | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | country | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | amount | Double? |  yes  |  |
 | productSuiteId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |

---


 
 
 #### [DetailList](#DetailList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | plans | [[Plan](#Plan)]? |  yes  |  |
 | trialPlan | [Plan](#Plan)? |  yes  |  |
 | componentGroups | [String]? |  yes  |  |

---


 
 
 #### [PlanTaxation](#PlanTaxation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gst | Double? |  yes  |  |

---


 
 
 #### [OneTimeFees](#OneTimeFees)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | developement | Int? |  yes  |  |
 | marketing | Int? |  yes  |  |

---


 
 
 #### [CreditLine](#CreditLine)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |

---


 
 
 #### [PlanMeta](#PlanMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | planPlatformDisplayName | String? |  yes  |  |

---


 
 
 #### [FeatureConfig](#FeatureConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [PlanConfig](#PlanConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | displayText | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | processingType | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | featureConfig | [FeatureConfig](#FeatureConfig)? |  yes  |  |
 | id | String? |  yes  |  |
 | componentId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |

---


 
 
 #### [ComponentsSchema](#ComponentsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | description | String? |  yes  |  |
 | group | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | links | [String: Any]? |  yes  |  |
 | config | [PlanConfig](#PlanConfig)? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | displayText | String? |  yes  |  |

---


 
 
 #### [PlanDetails](#PlanDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [PlanRecurring](#PlanRecurring)? |  yes  |  |
 | isTrialPlan | Bool? |  yes  |  |
 | planGroup | String? |  yes  |  |
 | tagLines | [String]? |  yes  |  |
 | currency | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | isVisible | Bool? |  yes  |  |
 | trialPeriod | Double? |  yes  |  |
 | addons | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | country | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | amount | Double? |  yes  |  |
 | productSuiteId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | taxation | [PlanTaxation](#PlanTaxation)? |  yes  |  |
 | oneTimeFees | [OneTimeFees](#OneTimeFees)? |  yes  |  |
 | creditLine | [CreditLine](#CreditLine)? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | meta | [PlanMeta](#PlanMeta)? |  yes  |  |
 | components | [[ComponentsSchema](#ComponentsSchema)]? |  yes  |  |

---



