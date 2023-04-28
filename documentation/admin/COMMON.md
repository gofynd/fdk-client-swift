



##### [Back to Admin docs](./README.md)

## Common Methods
Authorization configuration apis
* [testAdmin](#testadmin)



## Methods with example and description


#### testAdmin
API to Test SDK generation.




```swift
adminClient.common.testAdmin() { (response, error) in
    // Use response
}
```






Test Administrator API.

*Returned Response:*




[[String: Any]](#[String: Any])

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [Pagination](#Pagination)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageNo | Int? |  yes  | Page No |
 | pageSize | Int? |  yes  | Page Size |

---


 
 
 #### [Scopes](#Scopes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | permissions | [String] |  no  |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | comment | String? |  yes  |  |
 | name | String? |  yes  |  |
 | tags | [String]? |  yes  |  |

---


 
 
 #### [Author](#Author)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String? |  yes  |  |
 | updatedBy | String? |  yes  |  |
 | creatorName | String? |  yes  |  |
 | updatorName | String? |  yes  |  |

---


 
 
 #### [OAuthClient](#OAuthClient)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | scopes | [Scopes](#Scopes)? |  yes  |  |
 | secret | [String]? |  yes  |  |
 | grants | [String]? |  yes  |  |
 | redirectUrls | [String]? |  yes  |  |
 | accessTokenLifetime | Double? |  yes  |  |
 | refreshTokenLifetime | Double? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | clientType | String? |  yes  |  |
 | meta | [Meta](#Meta)? |  yes  |  |
 | author | [Author](#Author)? |  yes  |  |
 | clientId | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | v | Double? |  yes  |  |

---



