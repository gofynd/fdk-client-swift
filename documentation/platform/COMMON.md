



##### [Back to Platform docs](./README.md)

## Common Methods
Application configuration apis
* [searchApplication](#searchapplication)
* [getLocations](#getlocations)



## Methods with example and description


#### searchApplication
Search Application




```swift
common.searchApplication(authorization: authorization, query: query) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| authorization | String? | no |  |   
| query | String? | no | Provide application name |  



Provide application name or domain url

*Returned Response:*




[ApplicationResponse](#ApplicationResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "application": {
    "website": {
      "enabled": true,
      "basepath": "/"
    },
    "cors": {
      "domains": []
    },
    "auth": {
      "enabled": true
    },
    "description": "test",
    "channel_type": "store",
    "cache_ttl": -1,
    "internal": false,
    "is_active": true,
    "mode": "live",
    "_id": "620b931ee7bfb11f910bf4a3",
    "company_id": 2,
    "name": "test",
    "owner": "5b9b98150df588546aaea6d2",
    "logo": {
      "secure_url": "https://hdn-1.addsale.com/x0/company/164/applications/5efc9913f474c329718e3690/application/pictures/free-logo/original/olqHM8LNr-JioMart-Groceries.png"
    },
    "favicon": {
      "secure_url": "https://hdn-1.addsale.com/x0/company/164/applications/5efc9913f474c329718e3690/application/pictures/free-logo/original/olqHM8LNr-JioMart-Groceries.png"
    },
    "banner": {
      "secure_url": "https://hdn-1.addsale.com/x0/company/164/applications/5efc9913f474c329718e3690/application/pictures/landscape-banner/original/D2fr98CUH-JioMart-Groceries.png"
    },
    "token": "tPQv0nc23",
    "tokens": [
      {
        "token": "tPQv0nc23",
        "created_at": "2022-02-15T11:48:46.909Z"
      }
    ],
    "domains": [
      {
        "verified": true,
        "is_primary": true,
        "is_shortlink": true,
        "_id": "620b931ee7bfb11f910bf4a4",
        "name": "qckvv5lhp.hostfynd.dev"
      }
    ],
    "redirections": [],
    "meta": [],
    "created_at": "2022-02-15T11:48:46.909Z",
    "modified_at": "2022-02-15T11:48:46.909Z",
    "__v": 0,
    "domain": {
      "verified": true,
      "is_primary": true,
      "is_shortlink": true,
      "_id": "620b931ee7bfb11f910bf4a4",
      "name": "qckvv5lhp.hostfynd.dev"
    },
    "id": "620b931ee7bfb11f910bf4a3"
  }
}
```
</details>









---


#### getLocations
Get countries, states, cities




```swift
common.getLocations(locationType: locationType, id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| locationType | String? | no | Provide location type to query on. Possible values : country, state, city |   
| id | String? | no | Field is optional when location_type is country. If querying for state, provide id of country. If querying for city, provide id of state. |  





*Returned Response:*




[Locations](#Locations)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [ApplicationResponse](#ApplicationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | [Application](#Application)? |  yes  |  |

---


 
 
 #### [Currency](#Currency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | The unique identifier of the current sales channel supported currency |
 | isActive | Bool? |  yes  | Shows currency is enabled or not in current sales channel |
 | name | String? |  yes  | Name of the currency |
 | code | String? |  yes  | Identifier code of the currency |
 | createdAt | String? |  yes  | Epoch timestamp of sales channel support currency creation |
 | updatedAt | String? |  yes  | Epoch timestamp of sales channel support currency updation |
 | decimalDigits | Int? |  yes  | It shows a currency that can be divided into smaller units by dividing by ten or a hundred |
 | symbol | String? |  yes  | Unique Symbol of the currency for identify the currency |

---


 
 
 #### [Domain](#Domain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool? |  yes  | Indicates domain is verified or not |
 | isPrimary | Bool? |  yes  | Indicates domain is primary or not |
 | isShortlink | Bool? |  yes  | Shortlink is present or not for the domain |
 | id | String? |  yes  | The unique identifier of the domain |
 | name | String? |  yes  |  |
 | isPredefined | Bool? |  yes  | Domain is hosting domain or not. |

---


 
 
 #### [ApplicationWebsite](#ApplicationWebsite)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  | Shows sales channel website url is enabled or not |
 | basepath | String? |  yes  | Base path for the current sales channel website |

---


 
 
 #### [ApplicationCors](#ApplicationCors)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [String]? |  yes  |  |

---


 
 
 #### [ApplicationAuth](#ApplicationAuth)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [ApplicationRedirections](#ApplicationRedirections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | redirectFrom | String? |  yes  | Old domain url of the sales channel. |
 | redirectTo | String? |  yes  | New domain url of the sales channel. User will redirect from old domain to new domain. |
 | type | String? |  yes  | It shows domain redirection type. Permanent redirection is for long time period redirection and temporary redirection for the short time period. |

---


 
 
 #### [ApplicationMeta](#ApplicationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [SecureUrl](#SecureUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String? |  yes  | Hosted Url of the image |

---


 
 
 #### [Application](#Application)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | website | [ApplicationWebsite](#ApplicationWebsite)? |  yes  |  |
 | cors | [ApplicationCors](#ApplicationCors)? |  yes  |  |
 | auth | [ApplicationAuth](#ApplicationAuth)? |  yes  |  |
 | description | String? |  yes  | Detailed information about the sales channel |
 | channelType | String? |  yes  | It indicates different channel types like store, website-and-mobile-apps. Default value is store |
 | cacheTtl | Int? |  yes  |  |
 | isInternal | Bool? |  yes  | Indicates sales channel is internal sales channel or not an internal sales channel |
 | isActive | Bool? |  yes  | Indicates sales channel is active or not active |
 | id | String? |  yes  | The unique identifier of the sales channel |
 | name | String? |  yes  | Name of the sales channel |
 | owner | String? |  yes  | Unique id of the owner to identify owner |
 | companyId | Int? |  yes  | Company ID for the sales channel |
 | token | String? |  yes  |  |
 | redirections | [[ApplicationRedirections](#ApplicationRedirections)]? |  yes  |  |
 | meta | [[ApplicationMeta](#ApplicationMeta)]? |  yes  |  |
 | createdAt | String? |  yes  | Epoch timestamp of sale channel creation |
 | updatedAt | String? |  yes  | Epoch timestamp of sale channel updation |
 | v | Int? |  yes  | Version key for tracking revisions. Default value is zero. |
 | banner | [SecureUrl](#SecureUrl)? |  yes  |  |
 | logo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | favicon | [SecureUrl](#SecureUrl)? |  yes  |  |
 | domains | [[Domain](#Domain)]? |  yes  |  |
 | appType | String? |  yes  | It shows application is live or in development mode. |
 | mobileLogo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | domain | [Domain](#Domain)? |  yes  |  |

---


 
 
 #### [NotFound](#NotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Response message for not found |

---


 
 
 #### [BadRequest](#BadRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Failure message. |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  | Page type |
 | size | Int? |  yes  | The number of items to retrieve in each page. Default value is 10. |
 | current | Int? |  yes  | Current page number |
 | hasNext | Bool? |  yes  | Next page is present or not |
 | itemTotal | Int? |  yes  | Total number of items to retrieve |
 | nextId | String? |  yes  | Next page id |
 | hasPrevious | Bool? |  yes  | Previous page is present or not |

---


 
 
 #### [LocationDefaultLanguage](#LocationDefaultLanguage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [LocationDefaultCurrency](#LocationDefaultCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | symbol | String? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [LocationCountry](#LocationCountry)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | capital | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | iso2 | String? |  yes  |  |
 | iso3 | String? |  yes  |  |
 | name | String? |  yes  |  |
 | parent | String? |  yes  |  |
 | phoneCode | String? |  yes  |  |
 | type | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | v | Int? |  yes  |  |
 | id | String? |  yes  |  |
 | defaultCurrency | [LocationDefaultCurrency](#LocationDefaultCurrency)? |  yes  |  |
 | defaultLanguage | [LocationDefaultLanguage](#LocationDefaultLanguage)? |  yes  |  |

---


 
 
 #### [Locations](#Locations)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]]? |  yes  |  |

---



