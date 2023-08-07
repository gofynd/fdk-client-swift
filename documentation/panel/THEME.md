



##### [Back to Panel docs](./README.md)

## Theme Methods
Responsible for themes listing published theme on theme marketplace
* [getMarketplaceThemes](#getmarketplacethemes)
* [getMarketplaceThemeBySlug](#getmarketplacethemebyslug)
* [getMarketplaceThemeVersions](#getmarketplacethemeversions)



## Methods with example and description


#### getMarketplaceThemes
Get marketplace themes




```swift
panelClient.theme.getMarketplaceThemes(pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageSize | Int? | no | Number of themes per page |   
| pageNo | Int? | no | Page number to retrieve |  



This API use to get list of pulished marketplace themes

*Returned Response:*




[MarketplaceThemeResponseBody](#MarketplaceThemeResponseBody)

Successful operation




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getMarketplaceThemeBySlug
Get marketplace theme by slug




```swift
panelClient.theme.getMarketplaceThemeBySlug(slugName: slugName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slugName | String | yes | Slug of marketplace theme |  



Fetches the theme details by slug

*Returned Response:*




[ThemeSlugResponse](#ThemeSlugResponse)

Successful response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getMarketplaceThemeVersions
Get theme and user details




```swift
panelClient.theme.getMarketplaceThemeVersions(slugName: slugName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slugName | String | yes | Slug of theme |  



This API use to get list of theme published theme versions

*Returned Response:*




[ThemeAndUserDetailsResponse](#ThemeAndUserDetailsResponse)

Successfully retrieved theme and user details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [MarketplaceThemeResponseBody](#MarketplaceThemeResponseBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[MarketplaceTheme](#MarketplaceTheme)]? |  yes  |  |
 | page | [PaginationSchema](#PaginationSchema)? |  yes  |  |

---


 
 
 #### [MarketplaceTheme](#MarketplaceTheme)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Theme ID |
 | payment | [PaymentInfo](#PaymentInfo)? |  yes  |  |
 | contact | [ContactInfo](#ContactInfo)? |  yes  |  |
 | industry | [String]? |  yes  | Industries the theme is suitable for |
 | isUpdate | Bool? |  yes  | Indicates if the theme is an update |
 | isDefault | Bool? |  yes  | Indicates if the theme is a default theme |
 | name | String? |  yes  | Theme name |
 | tagline | String? |  yes  | Theme tagline |
 | description | String? |  yes  | Theme description |
 | catalogSize | [CatalogSize](#CatalogSize)? |  yes  |  |
 | images | [MarketplaceThemeImages](#MarketplaceThemeImages)? |  yes  |  |
 | carousel | [[CarouselItem](#CarouselItem)]? |  yes  |  |
 | src | String? |  yes  | Theme source URL |
 | explore | [ExploreInfo](#ExploreInfo)? |  yes  |  |
 | features | [[Feature](#Feature)]? |  yes  |  |
 | highlights | [[Highlight](#Highlight)]? |  yes  |  |
 | variations | [[Variation](#Variation)]? |  yes  |  |
 | documentation | [Documentation](#Documentation)? |  yes  |  |
 | status | String? |  yes  | Theme status |
 | step | Int? |  yes  | Theme step |
 | comments | [Comments](#Comments)? |  yes  |  |
 | release | [Release](#Release)? |  yes  |  |
 | slug | String? |  yes  | Theme slug |
 | organizationId | String? |  yes  | Organization ID |
 | userId | String? |  yes  | User ID |
 | createdAt | String? |  yes  | Theme creation timestamp |
 | updatedAt | String? |  yes  | Theme update timestamp |
 | templateThemeId | String? |  yes  | Template theme ID |

---


 
 
 #### [PaymentInfo](#PaymentInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPaid | Bool? |  yes  | Indicates if the theme is paid |
 | amount | Double? |  yes  | Amount of payment |

---


 
 
 #### [ContactInfo](#ContactInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | developerContact | [String]? |  yes  | Developer contact information |
 | sellerContact | String? |  yes  | Seller contact information |

---


 
 
 #### [CatalogSize](#CatalogSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int? |  yes  | Minimum catalog size |
 | max | Int? |  yes  | Maximum catalog size |

---


 
 
 #### [MarketplaceThemeImages](#MarketplaceThemeImages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | String? |  yes  | Desktop theme image URL |
 | mobile | String? |  yes  | Mobile theme image URL |

---


 
 
 #### [CarouselItem](#CarouselItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | String? |  yes  | Desktop carousel image URL |
 | mobile | String? |  yes  | Mobile carousel image URL |

---


 
 
 #### [ExploreInfo](#ExploreInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Explore feature title |
 | description | String? |  yes  | Explore feature description |

---


 
 
 #### [Feature](#Feature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | String? |  yes  | Feature category |
 | list | [[FeatureItem](#FeatureItem)]? |  yes  |  |

---


 
 
 #### [FeatureItem](#FeatureItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | label | String? |  yes  | Feature label |
 | description | String? |  yes  | Feature description |

---


 
 
 #### [Highlight](#Highlight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Highlight title |
 | description | String? |  yes  | Highlight description |
 | image | String? |  yes  | Highlight image URL |

---


 
 
 #### [Variation](#Variation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Variation name |
 | color | String? |  yes  | Variation color |
 | demoUrl | String? |  yes  | Variation demo URL |
 | images | [MarketplaceThemeImages](#MarketplaceThemeImages)? |  yes  |  |

---


 
 
 #### [Documentation](#Documentation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notes | String? |  yes  | Documentation notes |
 | url | String? |  yes  | Documentation URL |

---


 
 
 #### [Comments](#Comments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | developerRemark | String? |  yes  | Developer remark |
 | reviewerFeedback | String? |  yes  | Reviewer feedback |

---


 
 
 #### [Release](#Release)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | version | String? |  yes  | Release version |
 | notes | String? |  yes  | Release notes |

---


 
 
 #### [ThemeSlugResponse](#ThemeSlugResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | theme | [MarketplaceTheme](#MarketplaceTheme)? |  yes  |  |
 | organization | [Organization](#Organization)? |  yes  |  |
 | user | [[ThemeCreator](#ThemeCreator)]? |  yes  | An array of user objects |

---


 
 
 #### [Organization](#Organization)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [OrganizationMeta](#OrganizationMeta)? |  yes  |  |
 | id | String? |  yes  | The unique identifier of the organization |

---


 
 
 #### [OrganizationMeta](#OrganizationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ecommPlatformUsed | [String]? |  yes  | List of e-commerce platforms used by the organization |
 | goals | [String]? |  yes  | List of goals for the organization |

---


 
 
 #### [ThemeCreator](#ThemeCreator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  | Unique identifier for the user |
 | gender | String? |  yes  | Gender of the user (null if not specified) |
 | accountType | String? |  yes  | Type of user account |
 | active | Bool |  no  | Whether the user is active or not |
 | firstName | String? |  yes  | First name of the user |
 | lastName | String? |  yes  | Last name of the user |
 | phoneNumbers | [[PhoneNumber](#PhoneNumber)]? |  yes  | List of phone numbers associated with the user |
 | emails | [[Email](#Email)] |  no  | List of email addresses associated with the user |

---


 
 
 #### [PhoneNumber](#PhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  | Whether the phone number is active or not |
 | primary | Bool |  no  | Whether the phone number is the primary contact number for the user |
 | verified | Bool |  no  | Whether the phone number has been verified or not |
 | phone | String |  no  | Phone number |
 | countryCode | Int? |  yes  | Country code for the phone number |

---


 
 
 #### [Email](#Email)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  | Whether the email address is active or not |
 | primary | Bool |  no  | Whether the email address is the primary contact email for the user |
 | verified | Bool |  no  | Whether the email address has been verified or not |
 | email | String |  no  | Email address |

---


 
 
 #### [ThemeAndUserDetailsResponse](#ThemeAndUserDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | themes | [[MarketplaceTheme](#MarketplaceTheme)]? |  yes  | List of themes |
 | user | [[ThemeCreator](#ThemeCreator)]? |  yes  | List of users |

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



