



##### [Back to Platform docs](./README.md)

## Feedback Methods
User Reviews and Rating System
* [getAttributes](#getattributes)
* [getCustomerReviews](#getcustomerreviews)
* [updateApprove](#updateapprove)
* [getHistory](#gethistory)
* [getApplicationTemplates](#getapplicationtemplates)
* [createTemplate](#createtemplate)
* [getTemplateById](#gettemplatebyid)
* [updateTemplate](#updatetemplate)
* [updateTemplateStatus](#updatetemplatestatus)



## Methods with example and description


#### getAttributes
Get list of attribute data




```swift
client.application("<APPLICATION_ID>").feedback.getAttributes(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String | yes | company id |   
| applicationId | String | yes | application id |   
| pageNo | Int? | no | pagination page no |   
| pageSize | Int? | no | pagination page size |  



Provides a list of all attribute data.

*Returned Response:*




[FeedbackAttributes](#FeedbackAttributes)

ok




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCustomerReviews
Get list of customer reviews [admin]




```swift
client.application("<APPLICATION_ID>").feedback.getCustomerReviews(id: id, entityId: entityId, entityType: entityType, userId: userId, media: media, rating: rating, attributeRating: attributeRating, facets: facets, sort: sort, next: next, start: start, limit: limit, count: count, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String | yes | company id |   
| applicationId | String | yes | application id |   
| id | String? | no | review id |   
| entityId | String? | no | entity id |   
| entityType | String? | no | entity type |   
| userId | String? | no | user id |   
| media | String? | no | media type e.g. image | video | video_file | video_link |   
| rating | [Double]? | no | rating filter, 1-5 |   
| attributeRating | [String]? | no | attribute rating filter with ma,e of attribute |   
| facets | Bool? | no | facets (true|false) |   
| sort | String? | no | sort by : default | top | recent |   
| next | String? | no | pagination next |   
| start | String? | no | pagination start |   
| limit | String? | no | pagination limit |   
| count | String? | no | pagination count |   
| pageId | String? | no | pagination page id |   
| pageSize | Int? | no | pagination page size |  



The endpoint provides a list of customer reviews based on entity and provided filters

*Returned Response:*




[GetReviewResponse](#GetReviewResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateApprove
update approve details




```swift
client.application("<APPLICATION_ID>").feedback.updateApprove(reviewId: reviewId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String | yes | company id |   
| applicationId | String | yes | application id |   
| reviewId | String | yes | review id |  
| body | ApproveRequest | yes | Request body |


The is used to update approve details like status and description text

*Returned Response:*




[UpdateResponse](#UpdateResponse)

ok




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getHistory
get history details




```swift
client.application("<APPLICATION_ID>").feedback.getHistory(reviewId: reviewId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String | yes | company id |   
| applicationId | String | yes | application id |   
| reviewId | String | yes | review id |  



The is used to get the history details like status and description text

*Returned Response:*




[[ActivityDump]](#[ActivityDump])

ok




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getApplicationTemplates
Get list of templates




```swift
client.application("<APPLICATION_ID>").feedback.getApplicationTemplates(pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String | yes | company id |   
| applicationId | String | yes | application id |   
| pageId | String? | no | pagination page id |   
| pageSize | Int? | no | pagination page size |  



Get all templates of application

*Returned Response:*




[TemplateGetResponse](#TemplateGetResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createTemplate
Create a new template




```swift
client.application("<APPLICATION_ID>").feedback.createTemplate(body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String | yes | company id |   
| applicationId | String | yes | application id |  
| body | TemplateRequestList | yes | Request body |


Create a new template for review with following data:
- Enable media, rating and review
- Rating - active/inactive/selected rate choices, attributes, text on rate, comment for each rate, type
- Review - header, title, description, image and video meta, enable votes

*Returned Response:*




[InsertResponse](#InsertResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getTemplateById
Get a template by ID




```swift
client.application("<APPLICATION_ID>").feedback.getTemplateById(id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String | yes | company id |   
| applicationId | String | yes | application id |   
| id | String | yes | template id |  



Get the template for product or l3 type by ID

*Returned Response:*




[Template](#Template)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateTemplate
Update a template's status




```swift
client.application("<APPLICATION_ID>").feedback.updateTemplate(id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String | yes | company id |   
| applicationId | String | yes | application id |   
| id | String | yes | template id |  
| body | UpdateTemplateRequest | yes | Request body |


Update existing template status, active/archive

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateTemplateStatus
Update a template's status




```swift
client.application("<APPLICATION_ID>").feedback.updateTemplateStatus(id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String | yes | company id |   
| applicationId | String | yes | application id |   
| id | String | yes | template id |  
| body | UpdateTemplateStatusRequest | yes | Request body |


Update existing template status, active/archive

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---



### Schemas

 
 
 #### [Activity](#Activity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currentState | [String: Any]? |  yes  |  |
 | documentId | String? |  yes  |  |
 | previousState | [String: Any]? |  yes  |  |

---


 
 
 #### [ActivityDump](#ActivityDump)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activity | [Activity](#Activity)? |  yes  |  |
 | createdBy | [CreatedBy](#CreatedBy)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [AddMediaListRequest](#AddMediaListRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | mediaList | [[AddMediaRequest](#AddMediaRequest)]? |  yes  |  |
 | refId | String? |  yes  |  |
 | refType | String? |  yes  |  |

---


 
 
 #### [AddMediaRequest](#AddMediaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cloudId | String? |  yes  |  |
 | cloudName | String? |  yes  |  |
 | cloudProvider | String? |  yes  |  |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | mediaUrl | String? |  yes  |  |
 | refId | String? |  yes  |  |
 | refType | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | thumbnailUrl | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ApproveRequest](#ApproveRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | approve | Bool? |  yes  |  |
 | entityType | String? |  yes  |  |
 | id | String |  no  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [Attribute](#Attribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | description | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [[TagMeta](#TagMeta)]? |  yes  |  |

---


 
 
 #### [AttributeObject](#AttributeObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | name | String |  no  |  |
 | slug | String? |  yes  |  |
 | title | String? |  yes  |  |
 | type | String |  no  |  |
 | value | Double |  no  |  |

---


 
 
 #### [CreatedBy](#CreatedBy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | tags | [[TagMeta](#TagMeta)]? |  yes  |  |

---


 
 
 #### [CursorGetResponse](#CursorGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [DateMeta](#DateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [DeviceMeta](#DeviceMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appVersion | String? |  yes  |  |
 | platform | String? |  yes  |  |

---


 
 
 #### [Entity](#Entity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [EntityRequest](#EntityRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |

---


 
 
 #### [FeedbackAttributes](#FeedbackAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Attribute](#Attribute)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [FeedbackError](#FeedbackError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | [String: Any]? |  yes  |  |
 | exception | String? |  yes  |  |
 | info | String? |  yes  |  |
 | message | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | requestId | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | status | Int? |  yes  |  |

---


 
 
 #### [FeedbackState](#FeedbackState)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | archive | Bool? |  yes  |  |
 | media | String? |  yes  | image, video, any |
 | qna | Bool? |  yes  |  |
 | rating | Bool? |  yes  |  |
 | review | Bool? |  yes  |  |

---


 
 
 #### [GetResponse](#GetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [GetReviewResponse](#GetReviewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facets | [[ReviewFacet](#ReviewFacet)]? |  yes  |  |
 | items | [[String: Any]]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | sort | [[SortMethod](#SortMethod)]? |  yes  |  |

---


 
 
 #### [InsertResponse](#InsertResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |

---


 
 
 #### [MediaMeta](#MediaMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxCount | Int? |  yes  |  |
 | size | Int? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [MediaMetaRequest](#MediaMetaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxCount | Int |  no  |  |
 | size | Int |  no  |  |

---


 
 
 #### [NumberGetResponse](#NumberGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

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


 
 
 #### [PageCursor](#PageCursor)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | size | Int |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [PageNumber](#PageNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | size | Int? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Rating](#Rating)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [[Attribute](#Attribute)]? |  yes  |  |
 | attributesSlugs | [String]? |  yes  |  |
 | ui | [UI](#UI)? |  yes  |  |

---


 
 
 #### [RatingRequest](#RatingRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [String] |  no  |  |
 | ui | [UI](#UI)? |  yes  |  |

---


 
 
 #### [ReportAbuseRequest](#ReportAbuseRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | entityId | String |  no  |  |
 | entityType | String |  no  |  |

---


 
 
 #### [Review](#Review)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | header | String? |  yes  |  |
 | imageMeta | [MediaMeta](#MediaMeta)? |  yes  |  |
 | title | String? |  yes  |  |
 | videoMeta | [MediaMeta](#MediaMeta)? |  yes  |  |
 | voteAllowed | Bool? |  yes  |  |

---


 
 
 #### [ReviewFacet](#ReviewFacet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |
 | selected | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | type | String? |  yes  | rating, attributerating |

---


 
 
 #### [ReviewRequest](#ReviewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | header | String |  no  |  |
 | imageMeta | [MediaMetaRequest](#MediaMetaRequest) |  no  |  |
 | isVoteAllowed | Bool |  no  |  |
 | title | String |  no  |  |
 | videoMeta | [MediaMetaRequest](#MediaMetaRequest) |  no  |  |

---


 
 
 #### [SaveAttributeRequest](#SaveAttributeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |

---


 
 
 #### [SortMethod](#SortMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | selected | Bool? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [TagMeta](#TagMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | media | [[MediaMeta](#MediaMeta)]? |  yes  |  |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Template](#Template)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | entity | [Entity](#Entity)? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | rating | [Rating](#Rating)? |  yes  |  |
 | review | [Review](#Review)? |  yes  |  |
 | state | [FeedbackState](#FeedbackState)? |  yes  |  |
 | tags | [[TagMeta](#TagMeta)]? |  yes  |  |

---


 
 
 #### [TemplateGetResponse](#TemplateGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Template](#Template)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [TemplateRequest](#TemplateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | enableMediaType | String? |  yes  | image | video | any |
 | enableQna | Bool? |  yes  |  |
 | enableRating | Bool |  no  |  |
 | enableReview | Bool |  no  |  |
 | entity | [EntityRequest](#EntityRequest) |  no  |  |
 | rating | [RatingRequest](#RatingRequest) |  no  |  |
 | review | [ReviewRequest](#ReviewRequest) |  no  |  |

---


 
 
 #### [TemplateRequestList](#TemplateRequestList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateList | [[TemplateRequest](#TemplateRequest)] |  no  |  |

---


 
 
 #### [UI](#UI)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feedbackQuestion | [String]? |  yes  |  |
 | icon | [UIIcon](#UIIcon)? |  yes  |  |
 | text | [String]? |  yes  |  |
 | type | String? |  yes  | star | images | gifs | smileys |

---


 
 
 #### [UIIcon](#UIIcon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | String? |  yes  |  |
 | inactive | String? |  yes  |  |
 | selected | [String]? |  yes  |  |

---


 
 
 #### [UpdateAttributeRequest](#UpdateAttributeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | name | String |  no  |  |
 | slug | String? |  yes  |  |

---


 
 
 #### [UpdateResponse](#UpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |

---


 
 
 #### [UpdateReviewRequest](#UpdateReviewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | application | String? |  yes  |  |
 | approve | Bool? |  yes  |  |
 | archive | Bool? |  yes  |  |
 | attributesRating | [[AttributeObject](#AttributeObject)]? |  yes  |  |
 | description | String? |  yes  |  |
 | deviceMeta | [DeviceMeta](#DeviceMeta)? |  yes  |  |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | mediaResource | [[MediaMeta](#MediaMeta)]? |  yes  |  |
 | rating | Double? |  yes  |  |
 | reviewId | String? |  yes  |  |
 | templateId | String? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [UpdateTemplateRequest](#UpdateTemplateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | enableMediaType | String? |  yes  | image | video | any |
 | enableQna | Bool? |  yes  |  |
 | enableRating | Bool |  no  |  |
 | enableReview | Bool |  no  |  |
 | entity | [EntityRequest](#EntityRequest) |  no  |  |
 | rating | [RatingRequest](#RatingRequest) |  no  |  |
 | review | [ReviewRequest](#ReviewRequest) |  no  |  |

---


 
 
 #### [UpdateTemplateStatusRequest](#UpdateTemplateStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | archive | Bool? |  yes  |  |

---



