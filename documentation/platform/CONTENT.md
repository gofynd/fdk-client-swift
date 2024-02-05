



##### [Back to Platform docs](./README.md)

## Content Methods
Content System

Default
* [getAnnouncementsList](#getannouncementslist)
* [createAnnouncement](#createannouncement)
* [getAnnouncementById](#getannouncementbyid)
* [updateAnnouncement](#updateannouncement)
* [updateAnnouncementSchedule](#updateannouncementschedule)
* [deleteAnnouncement](#deleteannouncement)
* [createBlog](#createblog)
* [getBlogs](#getblogs)
* [updateBlog](#updateblog)
* [deleteBlog](#deleteblog)
* [getComponentById](#getcomponentbyid)
* [addDataLoader](#adddataloader)
* [getDataLoaders](#getdataloaders)
* [deleteDataLoader](#deletedataloader)
* [editDataLoader](#editdataloader)
* [getDataLoadersByService](#getdataloadersbyservice)
* [selectDataLoader](#selectdataloader)
* [resetDataLoader](#resetdataloader)
* [getFaqCategories](#getfaqcategories)
* [getFaqCategoryBySlugOrId](#getfaqcategorybyslugorid)
* [createFaqCategory](#createfaqcategory)
* [updateFaqCategory](#updatefaqcategory)
* [deleteFaqCategory](#deletefaqcategory)
* [getFaqsByCategoryIdOrSlug](#getfaqsbycategoryidorslug)
* [addFaq](#addfaq)
* [updateFaq](#updatefaq)
* [deleteFaq](#deletefaq)
* [getFaqByIdOrSlug](#getfaqbyidorslug)
* [generateSEOTitle](#generateseotitle)
* [getLandingPages](#getlandingpages)
* [createLandingPage](#createlandingpage)
* [updateLandingPage](#updatelandingpage)
* [deleteLandingPage](#deletelandingpage)
* [getLegalInformation](#getlegalinformation)
* [updateLegalInformation](#updatelegalinformation)
* [getNavigations](#getnavigations)
* [createNavigation](#createnavigation)
* [getDefaultNavigations](#getdefaultnavigations)
* [getNavigationBySlug](#getnavigationbyslug)
* [updateNavigation](#updatenavigation)
* [deleteNavigation](#deletenavigation)
* [getPageMeta](#getpagemeta)
* [getPageSpec](#getpagespec)
* [createPagePreview](#createpagepreview)
* [updatePagePreview](#updatepagepreview)
* [deletePage](#deletepage)
* [addPathRedirectionRules](#addpathredirectionrules)
* [getPathRedirectionRules](#getpathredirectionrules)
* [getPathRedirectionRule](#getpathredirectionrule)
* [updatePathRedirectionRules](#updatepathredirectionrules)
* [deletePathRedirectionRules](#deletepathredirectionrules)
* [getSEOConfiguration](#getseoconfiguration)
* [updateSEOConfiguration](#updateseoconfiguration)
* [getDefaultSEOMarkupSchema](#getdefaultseomarkupschema)
* [getSEOMarkupSchemas](#getseomarkupschemas)
* [createSEOMarkupSchema](#createseomarkupschema)
* [getSEOMarkupSchema](#getseomarkupschema)
* [editSEOMarkupSchema](#editseomarkupschema)
* [deleteSEOMarkupSchema](#deleteseomarkupschema)
* [getSlideshows](#getslideshows)
* [createSlideshow](#createslideshow)
* [getSlideshowBySlug](#getslideshowbyslug)
* [updateSlideshow](#updateslideshow)
* [deleteSlideshow](#deleteslideshow)
* [getSupportInformation](#getsupportinformation)
* [updateSupportInformation](#updatesupportinformation)
* [updateInjectableTag](#updateinjectabletag)
* [getInjectableTags](#getinjectabletags)
* [addInjectableTag](#addinjectabletag)
* [removeInjectableTag](#removeinjectabletag)
* [editInjectableTag](#editinjectabletag)
* [getBlogBySlug](#getblogbyslug)
* [createPage](#createpage)
* [getPages](#getpages)
* [updatePage](#updatepage)
* [getPageBySlug](#getpagebyslug)
* [getCustomFieldTypes](#getcustomfieldtypes)
* [getResources](#getresources)
* [getCustomFieldDefinitions](#getcustomfielddefinitions)
* [createCustomFieldDefinition](#createcustomfielddefinition)
* [getCustomFieldDefinition](#getcustomfielddefinition)
* [updateCustomFieldDefinition](#updatecustomfielddefinition)
* [deleteCustomFieldDefinition](#deletecustomfielddefinition)
* [getCustomFields](#getcustomfields)
* [getCustomFieldsByResourceId](#getcustomfieldsbyresourceid)
* [createCustomFieldByResourceId](#createcustomfieldbyresourceid)
* [createCustomObjectDefinition](#createcustomobjectdefinition)
* [getCustomObjectDefinitions](#getcustomobjectdefinitions)
* [getCustomObjectDefinition](#getcustomobjectdefinition)
* [updateCustomObjectDefinition](#updatecustomobjectdefinition)
* [deleteCustomObjectDefinition](#deletecustomobjectdefinition)
* [getCustomObjects](#getcustomobjects)
* [createCustomObject](#createcustomobject)
* [getCustomObject](#getcustomobject)
* [deleteCustomObject](#deletecustomobject)
* [updateCustomObject](#updatecustomobject)
* [getJobs](#getjobs)
* [importCustomObjectEntries](#importcustomobjectentries)
* [exportCustomObjectEntries](#exportcustomobjectentries)
* [sampleCustomObjectBulkEntry](#samplecustomobjectbulkentry)
* [getAppCustomFieldTypes](#getappcustomfieldtypes)
* [getAppResources](#getappresources)
* [getAppCustomFieldDefinitions](#getappcustomfielddefinitions)
* [createAppCustomFieldDefinition](#createappcustomfielddefinition)
* [getAppCustomFieldDefinition](#getappcustomfielddefinition)
* [updateAppCustomFieldDefinition](#updateappcustomfielddefinition)
* [deleteAppCustomFieldDefinition](#deleteappcustomfielddefinition)
* [getAppCustomFields](#getappcustomfields)
* [getAppCustomFieldsByResourceId](#getappcustomfieldsbyresourceid)
* [createAppCustomFieldByResourceId](#createappcustomfieldbyresourceid)
* [createAppCustomObjectDefinition](#createappcustomobjectdefinition)
* [getAppCustomObjectDefinitions](#getappcustomobjectdefinitions)
* [getAppCustomObjectDefinition](#getappcustomobjectdefinition)
* [updateAppCustomObjectDefinition](#updateappcustomobjectdefinition)
* [deleteAppCustomObjectDefinition](#deleteappcustomobjectdefinition)
* [getAppCustomObjects](#getappcustomobjects)
* [createAppCustomObject](#createappcustomobject)
* [getAppCustomObject](#getappcustomobject)
* [deleteAppCustomObject](#deleteappcustomobject)
* [updateAppCustomObject](#updateappcustomobject)
* [getAppJobs](#getappjobs)
* [importAppCustomObjectEntries](#importappcustomobjectentries)
* [exportAppCustomObjectEntries](#exportappcustomobjectentries)
* [sampleAppCustomObjectBulkEntry](#sampleappcustomobjectbulkentry)




## Methods with example and description



#### getAnnouncementsList
Get a list of announcements




```swift
platformClient.application("<APPLICATION_ID>").content.getAnnouncementsList(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Announcements are useful to highlight a message or information on top of a webpage. Use this API to retrieve a list of announcements.	

*Returned Response:*




[GetAnnouncementListSchema](#GetAnnouncementListSchema)

Success. Refer `GetAnnouncementListSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "6026283125f06a827dc1a5cc",
        "platforms": [
          "web",
          "android",
          "ios"
        ],
        "title": "test",
        "announcement": "<p>test</p>\n",
        "pages": [
          {
            "page_slug": "$all",
            "type": "custom"
          }
        ],
        "editor_meta": {
          "foreground_color": "#000",
          "background_color": "#fff",
          "content_type": "markdown",
          "content": "test"
        },
        "_schedule": {
          "published": true,
          "cron": "",
          "start": "2021-02-10T20:40:00.000Z",
          "end": "2021-02-18T22:00:00.000Z",
          "duration": 0,
          "next_schedule": [
            {
              "start": "2021-02-10T20:40:00.000Z",
              "end": "2021-02-18T22:00:00.000Z"
            }
          ]
        },
        "app": "000000000000000000000001",
        "author": {
          "created_by": "5e199e6998cfe1776f1385dc",
          "modified_by": "5e199e6998cfe1776f1385dc"
        },
        "created_at": "2021-02-12T07:03:13.503Z",
        "modified_at": "2021-02-12T07:03:13.503Z",
        "id": "6026283125f06a827dc1a5cc"
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### createAnnouncement
Create an announcement




```swift
platformClient.application("<APPLICATION_ID>").content.createAnnouncement(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AdminAnnouncementSchema | yes | Request body |


Announcements are useful to highlight a message or information on top of a webpage. Use this API to create an announcement.

*Returned Response:*




[CreateAnnouncementSchema](#CreateAnnouncementSchema)

Success. Refer `CreateAnnouncementSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "message": "Successfully saved announcement",
    "data": {
      "value": {
        "platforms": [
          "web",
          "android",
          "ios"
        ],
        "_id": "6026283125f06a827dc1a5cc",
        "title": "test",
        "announcement": "<p>test123</p>\n",
        "pages": [
          {
            "page_slug": "$all",
            "type": "custom"
          }
        ],
        "editor_meta": {
          "foreground_color": "#000",
          "background_color": "#fff",
          "content_type": "markdown",
          "content": "test"
        },
        "_schedule": {
          "published": true,
          "next_schedule": [
            {
              "start": "2021-02-10T20:40:00.000Z",
              "end": "2021-02-18T22:00:00.000Z"
            }
          ],
          "cron": null,
          "start": "2021-02-10T20:40:00.000Z",
          "end": "2021-02-18T22:00:00.000Z",
          "duration": null
        },
        "app": "000000000000000000000001",
        "author": {
          "created_by": "5e199e6998cfe1776f1385dc",
          "modified_by": "5e199e6998cfe1776f1385dc"
        },
        "created_at": "2021-02-12T07:03:13.503Z",
        "modified_at": "2021-02-12T07:05:57.020Z"
      }
    }
  }
}
```
</details>

</details>









---


#### getAnnouncementById
Get announcement by ID




```swift
platformClient.application("<APPLICATION_ID>").content.getAnnouncementById(announcementId: announcementId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| announcementId | String | yes | ID allotted to the announcement. |  



Use this API to retrieve an announcement and its details such as the target platform and pages on which it's applicable

*Returned Response:*




[AdminAnnouncementSchema](#AdminAnnouncementSchema)

Success. Refer `AdminAnnouncementSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "platforms": [
      "web",
      "android",
      "ios"
    ],
    "_id": "6026283125f06a827dc1a5cc",
    "title": "test",
    "announcement": "<p>test123</p>\n",
    "pages": [
      {
        "page_slug": "$all",
        "type": "custom"
      }
    ],
    "editor_meta": {
      "foreground_color": "#000",
      "background_color": "#fff",
      "content_type": "markdown",
      "content": "test"
    },
    "_schedule": {
      "published": true,
      "next_schedule": [
        {
          "start": "2021-02-10T20:40:00.000Z",
          "end": "2021-02-18T22:00:00.000Z"
        }
      ],
      "cron": "",
      "start": "2021-02-10T20:40:00.000Z",
      "end": "2021-02-18T22:00:00.000Z",
      "duration": 0
    },
    "app": "000000000000000000000001",
    "author": {
      "created_by": "5e199e6998cfe1776f1385dc",
      "modified_by": "5e199e6998cfe1776f1385dc"
    },
    "created_at": "2021-02-12T07:03:13.503Z",
    "modified_at": "2021-02-12T07:05:57.020Z"
  }
}
```
</details>

</details>









---


#### updateAnnouncement
Update an announcement




```swift
platformClient.application("<APPLICATION_ID>").content.updateAnnouncement(announcementId: announcementId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| announcementId | String | yes | ID allotted to the announcement. |  
| body | AdminAnnouncementSchema | yes | Request body |


Use this API to edit an existing announcement and its details such as the target platform and pages on which it's applicable

*Returned Response:*




[CreateAnnouncementSchema](#CreateAnnouncementSchema)

Success. Refer `CreateAnnouncementSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "message": "Successfully updated announcement",
    "data": {
      "value": {
        "platforms": [
          "web",
          "android",
          "ios"
        ],
        "_id": "6026283125f06a827dc1a5cc",
        "title": "test",
        "announcement": "<p>test123</p>\n",
        "pages": [
          {
            "page_slug": "$all",
            "type": "custom"
          }
        ],
        "editor_meta": {
          "foreground_color": "#000",
          "background_color": "#fff",
          "content_type": "markdown",
          "content": "test"
        },
        "_schedule": {
          "published": true,
          "next_schedule": [
            {
              "start": "2021-02-10T20:40:00.000Z",
              "end": "2021-02-18T22:00:00.000Z"
            }
          ],
          "cron": null,
          "start": "2021-02-10T20:40:00.000Z",
          "end": "2021-02-18T22:00:00.000Z",
          "duration": null
        },
        "app": "000000000000000000000001",
        "author": {
          "created_by": "5e199e6998cfe1776f1385dc",
          "modified_by": "5e199e6998cfe1776f1385dc"
        },
        "created_at": "2021-02-12T07:03:13.503Z",
        "modified_at": "2021-02-12T07:05:57.020Z"
      }
    }
  }
}
```
</details>

</details>









---


#### updateAnnouncementSchedule
Update the schedule and the publish status of an announcement




```swift
platformClient.application("<APPLICATION_ID>").content.updateAnnouncementSchedule(announcementId: announcementId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| announcementId | String | yes | ID allotted to the announcement. |  
| body | ScheduleSchema | yes | Request body |


Use this API to edit the duration, i.e. start date-time and end date-time of an announcement. Moreover, you can enable/disable an announcement using this API.

*Returned Response:*




[CreateAnnouncementSchema](#CreateAnnouncementSchema)

Success. Refer `CreateAnnouncementSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "message": "Announcement unpublished",
    "data": {
      "value": {
        "platforms": [
          "web",
          "android",
          "ios"
        ],
        "_id": "6026283125f06a827dc1a5cc",
        "title": "test",
        "announcement": "<p>test123</p>\n",
        "pages": [
          {
            "page_slug": "$all",
            "type": "custom"
          }
        ],
        "editor_meta": {
          "foreground_color": "#000",
          "background_color": "#fff",
          "content_type": "markdown",
          "content": "test"
        },
        "_schedule": {
          "published": false,
          "next_schedule": [
            {
              "start": "2021-02-10T20:40:00.000Z",
              "end": "2021-02-18T22:00:00.000Z"
            }
          ],
          "cron": null,
          "start": "2021-02-10T20:40:00.000Z",
          "end": "2021-02-18T22:00:00.000Z",
          "duration": null
        },
        "app": "000000000000000000000001",
        "author": {
          "created_by": "5e199e6998cfe1776f1385dc",
          "modified_by": "5e199e6998cfe1776f1385dc"
        },
        "created_at": "2021-02-12T07:03:13.503Z",
        "modified_at": "2021-02-12T07:05:57.020Z"
      }
    }
  }
}
```
</details>

</details>









---


#### deleteAnnouncement
Delete announcement by id




```swift
platformClient.application("<APPLICATION_ID>").content.deleteAnnouncement(announcementId: announcementId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| announcementId | String | yes | ID allotted to the announcement. |  



Use this API to delete an existing announcement.

*Returned Response:*




[CreateAnnouncementSchema](#CreateAnnouncementSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "message": "Successfully deleted announcement",
    "data": {
      "value": {
        "platforms": [
          "web",
          "android",
          "ios"
        ],
        "_id": "6026283125f06a827dc1a5cc",
        "title": "test",
        "announcement": "<p>test123</p>\n",
        "pages": [
          {
            "page_slug": "$all",
            "type": "custom"
          }
        ],
        "editor_meta": {
          "foreground_color": "#000",
          "background_color": "#fff",
          "content_type": "markdown",
          "content": "test"
        },
        "_schedule": {
          "published": true,
          "next_schedule": [
            {
              "start": "2021-02-10T20:40:00.000Z",
              "end": "2021-02-18T22:00:00.000Z"
            }
          ],
          "cron": null,
          "start": "2021-02-10T20:40:00.000Z",
          "end": "2021-02-18T22:00:00.000Z",
          "duration": null
        },
        "app": "000000000000000000000001",
        "author": {
          "created_by": "5e199e6998cfe1776f1385dc",
          "modified_by": "5e199e6998cfe1776f1385dc"
        },
        "created_at": "2021-02-12T07:03:13.503Z",
        "modified_at": "2021-02-12T07:05:57.020Z"
      }
    }
  }
}
```
</details>

</details>









---


#### createBlog
Create a blog




```swift
platformClient.application("<APPLICATION_ID>").content.createBlog(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BlogRequest | yes | Request body |


Use this API to create a blog.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success. Refer `BlogSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5eaa451a21a4dd75f0fd96c5",
    "application": "5d3ebd89f540e7506b8b3548",
    "tags": [
      "abhinav"
    ],
    "title": "my first blog",
    "slug": "1st_blog",
    "feature_image": {
      "secure_url": "https://google.com"
    },
    "content": [
      {
        "type": "html",
        "value": "<p>hey there!</p>"
      }
    ],
    "_schedule": {
      "cron": "* 10 * * *",
      "start": "2021-03-31T23:30:00.000Z",
      "end": "2021-03-31T23:55:00.000Z",
      "duration": 1000,
      "next_schedule": [
        {
          "start": "2021-03-17T04:30:00.000Z",
          "end": "2021-03-17T04:46:40.000Z"
        }
      ]
    },
    "published": true,
    "author": {
      "name": "Fynd App"
    },
    "date_meta": {
      "created_on": "2021-03-14T06:49:03.945Z",
      "modified_on": "2021-03-14T06:49:03.945Z"
    }
  }
}
```
</details>

</details>









---


#### getBlogs
Get blogs




```swift
platformClient.application("<APPLICATION_ID>").content.getBlogs(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Use this API to get a list of blogs along with their details, such as the title, reading time, publish status, feature image, tags, author, etc.

*Returned Response:*




[BlogGetResponse](#BlogGetResponse)

Success. Refer `BlogGetResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "date_meta": {
          "created_on": "2021-03-14T06:49:03.945Z",
          "modified_on": "2021-03-14T06:49:03.945Z"
        },
        "tags": [],
        "_id": "604db275b3ae202873964d94",
        "content": [
          {
            "type": "html",
            "value": "<p>test abhinav</p>"
          }
        ],
        "title": "1st Blog",
        "slug": "1st-blog",
        "published": true,
        "_schedule": {
          "next_schedule": [
            {}
          ],
          "start": "2021-04-08T07:15:13.000Z",
          "end": "2021-04-10T02:00:00.000Z"
        },
        "feature_image": {
          "secure_url": ""
        },
        "application": "000000000000000000000001",
        "author": {
          "name": "Fynd App"
        }
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 2,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### updateBlog
Update a blog




```swift
platformClient.application("<APPLICATION_ID>").content.updateBlog(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the blog. |  
| body | BlogRequest | yes | Request body |


Use this API to update the details of an existing blog which includes title, feature image, content, SEO details, expiry, etc.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5eaa451a21a4dd75f0fd96c5",
    "application": "5d3ebd89f540e7506b8b3548",
    "tags": [
      "abhinav"
    ],
    "title": "my first blog",
    "slug": "1st_blog",
    "feature_image": {
      "secure_url": "https://google.com"
    },
    "content": [
      {
        "type": "html",
        "value": "<p>hey there!</p>"
      }
    ],
    "_schedule": {
      "cron": "* 10 * * *",
      "start": "2021-03-31T23:30:00.000Z",
      "end": "2021-03-31T23:55:00.000Z",
      "duration": 1000,
      "next_schedule": [
        {
          "start": "2021-03-17T04:30:00.000Z",
          "end": "2021-03-17T04:46:40.000Z"
        }
      ]
    },
    "published": true,
    "author": {
      "name": "Fynd App"
    },
    "date_meta": {
      "created_on": "2021-03-14T06:49:03.945Z",
      "modified_on": "2021-03-14T06:49:03.945Z"
    }
  }
}
```
</details>

</details>









---


#### deleteBlog
Delete blogs




```swift
platformClient.application("<APPLICATION_ID>").content.deleteBlog(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the blog. |  



Use this API to delete a blog.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5eaa451a21a4dd75f0fd96c5",
    "application": "5d3ebd89f540e7506b8b3548",
    "tags": [
      "abhinav"
    ],
    "title": "my first blog",
    "slug": "1st_blog",
    "feature_image": {
      "secure_url": "https://google.com"
    },
    "content": [
      {
        "type": "html",
        "value": "<p>hey there!</p>"
      }
    ],
    "_schedule": {
      "cron": "* 10 * * *",
      "start": "2021-03-31T23:30:00.000Z",
      "end": "2021-03-31T23:55:00.000Z",
      "duration": 1000,
      "next_schedule": [
        {
          "start": "2021-03-17T04:30:00.000Z",
          "end": "2021-03-17T04:46:40.000Z"
        }
      ]
    },
    "published": true,
    "author": {
      "name": "Fynd App"
    },
    "date_meta": {
      "created_on": "2021-03-14T06:49:03.945Z",
      "modified_on": "2021-03-14T06:49:03.945Z"
    }
  }
}
```
</details>

</details>









---


#### getComponentById
Get components of a blog




```swift
platformClient.application("<APPLICATION_ID>").content.getComponentById(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of a blog page. You can get slug value of a blog from `getBlogs` API. |  



Use this API to retrieve the components of a blog, such as title, slug, feature image, content, schedule, publish status, author, etc.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success. Returns a a JSON object with components. Refer `BlogSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5eaa451a21a4dd75f0fd96c5",
    "application": "5d3ebd89f540e7506b8b3548",
    "tags": [
      "abhinav"
    ],
    "title": "my first blog",
    "slug": "1st_blog",
    "feature_image": {
      "secure_url": "https://google.com"
    },
    "content": [
      {
        "type": "html",
        "value": "<p>hey there!</p>"
      }
    ],
    "_schedule": {
      "cron": "* 10 * * *",
      "start": "2021-03-31T23:30:00.000Z",
      "end": "2021-03-31T23:55:00.000Z",
      "duration": 1000,
      "next_schedule": [
        {
          "start": "2021-03-17T04:30:00.000Z",
          "end": "2021-03-17T04:46:40.000Z"
        }
      ]
    },
    "published": true,
    "author": {
      "name": "Fynd App"
    },
    "date_meta": {
      "created_on": "2021-03-14T06:49:03.945Z",
      "modified_on": "2021-03-14T06:49:03.945Z"
    }
  }
}
```
</details>

</details>









---


#### addDataLoader
Adds a data loader




```swift
platformClient.application("<APPLICATION_ID>").content.addDataLoader(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DataLoaderSchema | yes | Request body |


Use this API to add data loader. This includes the data loader name, operationId, service name and its type (url/function) with corresponding value.

*Returned Response:*




[DataLoaderResponseSchema](#DataLoaderResponseSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "601f77e7aa61066feda44487",
  "name": "Search API from Algolia",
  "service": "catalog",
  "operation_id": "fetchSuggestions",
  "type": "url",
  "application": "000000000000000000000001",
  "__v": 0
}
```
</details>









---


#### getDataLoaders
Get all the data loaders in an application




```swift
platformClient.application("<APPLICATION_ID>").content.getDataLoaders() { (response, error) in
    // Use response
}
```






Use this to get all data loaders of an application

*Returned Response:*




[DataLoadersSchema](#DataLoadersSchema)

Success. Refer `DataLoadersSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "name": "Algolia",
      "is_selected": false,
      "type": "url",
      "_id": "61bc4523a7ffc7504f4de4a5",
      "service": "catalog",
      "operation_id": "fetchSuggestions",
      "url": "/ext/example/url",
      "__source": {
        "type": "extension",
        "id": "000000000000000000000003"
      },
      "application": "100000000000000000000001",
      "__v": 0
    },
    {
      "name": "Algolia v3",
      "is_selected": false,
      "type": "url",
      "_id": "61bc452da7ffc7504f4de4a7",
      "service": "catalog",
      "operation_id": "fetchSuggestions",
      "url": "/ext/example/url",
      "__source": {
        "type": "extension",
        "id": "000000000000000000000003"
      },
      "application": "100000000000000000000001",
      "__v": 0
    }
  ]
}
```
</details>









---


#### deleteDataLoader
Delete data loader in application




```swift
platformClient.application("<APPLICATION_ID>").content.deleteDataLoader(dataLoaderId: dataLoaderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| dataLoaderId | String | yes | ID allotted to the data loader. |  



Use this API to delete data loader.

*Returned Response:*




[DataLoaderResponseSchema](#DataLoaderResponseSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "601f77e7aa61066feda44487",
  "name": "Search API from Algolia",
  "service": "catalog",
  "operation_id": "fetchSuggestions",
  "type": "url",
  "application": "000000000000000000000001",
  "__v": 0
}
```
</details>









---


#### editDataLoader
Edit a data loader by id




```swift
platformClient.application("<APPLICATION_ID>").content.editDataLoader(dataLoaderId: dataLoaderId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| dataLoaderId | String | yes | ID allotted to the data loader. |  
| body | DataLoaderSchema | yes | Request body |


Use this API to edit the details of an existing data loader by its ID.

*Returned Response:*




[DataLoaderResponseSchema](#DataLoaderResponseSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "601f77e7aa61066feda44487",
  "name": "Search API from Algolia",
  "service": "catalog",
  "operation_id": "fetchSuggestions",
  "type": "url",
  "application": "000000000000000000000001",
  "__v": 0
}
```
</details>









---


#### getDataLoadersByService
Get all the data loaders in an application by service name




```swift
platformClient.application("<APPLICATION_ID>").content.getDataLoadersByService(serviceName: serviceName) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| serviceName | String | yes | Service name of the data loader.. |  



Use this to get all data loaders of an application by service name

*Returned Response:*




[DataLoaderResponseSchema](#DataLoaderResponseSchema)

Success. Refer `DataLoaderResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "name": "Algolia",
      "is_selected": false,
      "type": "url",
      "_id": "61bc4523a7ffc7504f4de4a5",
      "service": "catalog",
      "operation_id": "fetchSuggestions",
      "url": "/ext/example/url",
      "__source": {
        "type": "extension",
        "id": "000000000000000000000003"
      },
      "application": "100000000000000000000001",
      "__v": 0
    },
    {
      "name": "Algolia v3",
      "is_selected": false,
      "type": "url",
      "_id": "61bc452da7ffc7504f4de4a7",
      "service": "catalog",
      "operation_id": "fetchSuggestions",
      "url": "/ext/example/url",
      "__source": {
        "type": "extension",
        "id": "000000000000000000000003"
      },
      "application": "100000000000000000000001",
      "__v": 0
    }
  ]
}
```
</details>









---


#### selectDataLoader
Select a data loader by id




```swift
platformClient.application("<APPLICATION_ID>").content.selectDataLoader(dataLoaderId: dataLoaderId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| dataLoaderId | String | yes | ID allotted to the data loader. |  



Use this API to select a data loader to be used in applications.

*Returned Response:*




[DataLoaderResponseSchema](#DataLoaderResponseSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "601f77e7aa61066feda44487",
  "name": "Search API from Algolia",
  "service": "catalog",
  "operation_id": "fetchSuggestions",
  "type": "url",
  "application": "000000000000000000000001",
  "__v": 0
}
```
</details>









---


#### resetDataLoader
Reset a data loader by serive name and operation Id




```swift
platformClient.application("<APPLICATION_ID>").content.resetDataLoader(service: service, operationId: operationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| service | String | yes | Name of service. |   
| operationId | String | yes | Name of operation id of the service. |  



Use this API to reselect a data loader.

*Returned Response:*




[DataLoaderResetResponseSchema](#DataLoaderResetResponseSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "reset": true
}
```
</details>









---


#### getFaqCategories
Get a list of FAQ categories




```swift
platformClient.application("<APPLICATION_ID>").content.getFaqCategories() { (response, error) in
    // Use response
}
```






FAQs can be divided into categories. Use this API to get a list of FAQ categories.

*Returned Response:*




[GetFaqCategoriesSchema](#GetFaqCategoriesSchema)

Success. Refer `GetFaqCategoriesSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "categories": [
    {
      "index": 0,
      "children": [
        "6026426ae507768b168dee4b"
      ],
      "title": "Test",
      "_id": "60263f80c83c1f89f2863a8a",
      "slug": "test",
      "application": "000000000000000000000001"
    }
  ]
}
```
</details>









---


#### getFaqCategoryBySlugOrId
Get an FAQ category by slug or id




```swift
platformClient.application("<APPLICATION_ID>").content.getFaqCategoryBySlugOrId(idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| idOrSlug | String | yes | ID or the slug allotted to an FAQ category. Slug is a short, human-readable, URL-friendly identifier of an object. You can get slug value of an FAQ category from `getFaqCategories` API. |  



FAQs can be divided into categories. Use this API to get an FAQ categories using its slug or ID.

*Returned Response:*




[GetFaqCategoryBySlugSchema](#GetFaqCategoryBySlugSchema)

Success. Refer `GetFaqCategoryBySlugSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "category": {
    "index": 0,
    "children": [
      {
        "_id": "6026426ae507768b168dee4b",
        "question": "question 1",
        "answer": "answer 1",
        "slug": "question-1",
        "application": "000000000000000000000001"
      }
    ],
    "_id": "60263f80c83c1f89f2863a8a",
    "slug": "test",
    "title": "Test",
    "application": "000000000000000000000001"
  }
}
```
</details>









---


#### createFaqCategory
Create an FAQ category




```swift
platformClient.application("<APPLICATION_ID>").content.createFaqCategory(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateFaqCategoryRequestSchema | yes | Request body |


FAQs help users to solve an issue or know more about a process. FAQs can be categorized separately, for e.g. some questions can be related to payment, some could be related to purchase, shipping, navigating, etc. Use this API to create an FAQ category.

*Returned Response:*




[CreateFaqCategorySchema](#CreateFaqCategorySchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "category": {
    "index": 0,
    "children": [],
    "_id": "60263f80c83c1f89f2863a8a",
    "slug": "test",
    "application": "000000000000000000000001",
    "title": "Test"
  }
}
```
</details>









---


#### updateFaqCategory
Update an FAQ category




```swift
platformClient.application("<APPLICATION_ID>").content.updateFaqCategory(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to an FAQ category. |  
| body | UpdateFaqCategoryRequestSchema | yes | Request body |


Use this API to edit an existing FAQ category.

*Returned Response:*




[CreateFaqCategorySchema](#CreateFaqCategorySchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "category": {
    "index": 0,
    "children": [],
    "_id": "60263f80c83c1f89f2863a8a",
    "title": "Test Updated",
    "slug": "test",
    "application": "000000000000000000000001"
  }
}
```
</details>









---


#### deleteFaqCategory
Delete an FAQ category




```swift
platformClient.application("<APPLICATION_ID>").content.deleteFaqCategory(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to an FAQ category. |  



Use this API to delete an FAQ category.

*Returned Response:*




[FaqSchema](#FaqSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "category": {
    "index": 0,
    "children": [],
    "_id": "60263f80c83c1f89f2863a8a",
    "slug": "test",
    "title": "Test",
    "application": "000000000000000000000001",
    "__v": 2
  }
}
```
</details>









---


#### getFaqsByCategoryIdOrSlug
Get question and answers within an FAQ category




```swift
platformClient.application("<APPLICATION_ID>").content.getFaqsByCategoryIdOrSlug(idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| idOrSlug | String | yes | ID or the slug allotted to an FAQ category. Slug is a short, human-readable, URL-friendly identifier of an object. You can get slug value of an FAQ category from `getFaqCategories` API. |  



Use this API to retrieve all the commonly asked question and answers belonging to an FAQ category.

*Returned Response:*




[GetFaqSchema](#GetFaqSchema)

Success. Refer `GetFaqSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "faqs": [
    {
      "_id": "60265b64e507768b168dee4d",
      "question": "question 1",
      "answer": "answer 1",
      "slug": "question-1",
      "application": "000000000000000000000001"
    }
  ]
}
```
</details>









---


#### addFaq
Create an FAQ




```swift
platformClient.application("<APPLICATION_ID>").content.addFaq(categoryId: categoryId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| categoryId | String | yes | ID allotted to an FAQ category. |  
| body | CreateFaqSchema | yes | Request body |


FAQs help users to solve an issue or know more about a process. Use this API to create an FAQ for a given FAQ category.

*Returned Response:*




[CreateFaqResponseSchema](#CreateFaqResponseSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "faq": {
    "_id": "60265b64e507768b168dee4d",
    "question": "question 1",
    "answer": "answer 1",
    "slug": "question-1",
    "application": "000000000000000000000001"
  }
}
```
</details>









---


#### updateFaq
Update an FAQ




```swift
platformClient.application("<APPLICATION_ID>").content.updateFaq(categoryId: categoryId, faqId: faqId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| categoryId | String | yes | ID allotted to an FAQ category. |   
| faqId | String | yes | ID allotted to an FAQ. |  
| body | CreateFaqSchema | yes | Request body |


Use this API to edit an existing FAQ.

*Returned Response:*




[CreateFaqResponseSchema](#CreateFaqResponseSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "faq": {
    "_id": "60265b64e507768b168dee4d",
    "question": "question 1 updated",
    "answer": "answer 1",
    "slug": "question-1",
    "application": "000000000000000000000001"
  }
}
```
</details>









---


#### deleteFaq
Delete an FAQ




```swift
platformClient.application("<APPLICATION_ID>").content.deleteFaq(categoryId: categoryId, faqId: faqId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| categoryId | String | yes | ID allotted to an FAQ category. |   
| faqId | String | yes | ID allotted to an FAQ. |  



Use this API to delete an existing FAQ.

*Returned Response:*




[CreateFaqResponseSchema](#CreateFaqResponseSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "faq": {
    "_id": "60265b64e507768b168dee4d",
    "question": "question 1 updated",
    "answer": "answer 1",
    "slug": "question-1",
    "application": "000000000000000000000001"
  }
}
```
</details>









---


#### getFaqByIdOrSlug
Get an FAQ




```swift
platformClient.application("<APPLICATION_ID>").content.getFaqByIdOrSlug(idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| idOrSlug | String | yes | ID or the slug allotted to an FAQ category. Slug is a short, human-readable, URL-friendly identifier of an object. You can get slug value of an FAQ category from `getFaqCategories` API. |  



Use this API to retrieve a specific FAQ. You will get the question and answer of that FAQ.

*Returned Response:*




[CreateFaqResponseSchema](#CreateFaqResponseSchema)

Success. Refer `CreateFaqResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "faq": {
    "_id": "60265b64e507768b168dee4d",
    "question": "question 1",
    "answer": "answer 1",
    "slug": "question-1",
    "application": "000000000000000000000001"
  }
}
```
</details>









---


#### generateSEOTitle
Get SEO meta tag title for content




```swift
platformClient.application("<APPLICATION_ID>").content.generateSEOTitle(type: type, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| type | GenerationEntityType | yes | String representing the type of SEO content to be generated. Possible values are: title, description |  
| body | GenerateSEOContent | yes | Request body |


Use this API to get GPT3 generated SEO meta tag title for content

*Returned Response:*




[GeneratedSEOContent](#GeneratedSEOContent)

Returns the generated SEO title




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "title": "SEO Title example",
    "description": "SEO Description example"
  }
}
```
</details>

</details>









---


#### getLandingPages
Get landing pages




```swift
platformClient.application("<APPLICATION_ID>").content.getLandingPages(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Landing page is the first page that a prospect lands upon while visiting a website. Use this API to fetch a list of landing pages.

*Returned Response:*




[LandingPageGetResponse](#LandingPageGetResponse)

Success. Refer `LandingPageGetResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "date_meta": {
          "created_on": "2021-03-12T09:26:12.157Z",
          "modified_on": "2021-03-12T09:26:12.157Z"
        },
        "platform": [
          "android"
        ],
        "_id": "604b342e29f19310d8ae9743",
        "slug": "landing-page-default-2",
        "action": {
          "page": {
            "type": "default"
          },
          "popup": {},
          "type": "page"
        },
        "application": "5cd3db5e9d692cfe5302a7bb",
        "archived": false,
        "_custom_json": {},
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 2,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### createLandingPage
Create a landing page




```swift
platformClient.application("<APPLICATION_ID>").content.createLandingPage(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | LandingPageSchema | yes | Request body |


Landing page is the first page that a prospect lands upon while visiting a website. Use this API to create a landing page.

*Returned Response:*




[LandingPageSchema](#LandingPageSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5eaa451a21a4dd75f0fd96c5",
    "application": "5d3ebd89f540e7506b8b3548",
    "_custom_json": {},
    "slug": "pnc-landing",
    "action": {
      "page": {
        "type": "home"
      },
      "popup": {},
      "type": "page"
    },
    "platform": [
      "web"
    ],
    "created_by": {
      "id": "000000000000000000000000"
    },
    "date_meta": {
      "created_on": "2020-04-30T03:25:14.549Z",
      "modified_on": "2020-04-30T03:25:14.549Z"
    },
    "archived": false
  }
}
```
</details>

</details>









---


#### updateLandingPage
Update a landing page




```swift
platformClient.application("<APPLICATION_ID>").content.updateLandingPage(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to a landing page. |  
| body | LandingPageSchema | yes | Request body |


Use this API to edit the details of an existing landing page.

*Returned Response:*




[LandingPageSchema](#LandingPageSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5eaa451a21a4dd75f0fd96c5",
    "application": "5d3ebd89f540e7506b8b3548",
    "_custom_json": {},
    "slug": "pnc-landing",
    "action": {
      "page": {
        "type": "home"
      },
      "popup": {},
      "type": "page"
    },
    "platform": [
      "web"
    ],
    "created_by": {
      "id": "000000000000000000000000"
    },
    "date_meta": {
      "created_on": "2020-04-30T03:25:14.549Z",
      "modified_on": "2020-04-30T03:25:14.549Z"
    },
    "archived": false
  }
}
```
</details>

</details>









---


#### deleteLandingPage
Delete a landing page




```swift
platformClient.application("<APPLICATION_ID>").content.deleteLandingPage(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to a landing page. |  



Use this API to delete an existing landing page.

*Returned Response:*




[LandingPageSchema](#LandingPageSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5eaa451a21a4dd75f0fd96c5",
    "application": "5d3ebd89f540e7506b8b3548",
    "_custom_json": {},
    "slug": "pnc-landing",
    "action": {
      "page": {
        "type": "home"
      },
      "popup": {},
      "type": "page"
    },
    "platform": [
      "web"
    ],
    "created_by": {
      "id": "000000000000000000000000"
    },
    "date_meta": {
      "created_on": "2020-04-30T03:25:14.549Z",
      "modified_on": "2020-04-30T03:25:14.549Z"
    },
    "archived": true
  }
}
```
</details>

</details>









---


#### getLegalInformation
Get legal information




```swift
platformClient.application("<APPLICATION_ID>").content.getLegalInformation() { (response, error) in
    // Use response
}
```






Use this API to get the legal information of an application, which includes Policy, Terms and Conditions, Shipping Policy and FAQ regarding the application.

*Returned Response:*




[ApplicationLegal](#ApplicationLegal)

Success. Refer `ApplicationLegal` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "tnc": "**Terms and Conditions test**",
    "policy": "**Privacy policy test**",
    "shipping": "**Shipping term and conditions**",
    "returns": "**Terms & conditions for returns **",
    "_id": "5e8b2b96abe7dc94c02c9ac9",
    "application": "000000000000000000000001",
    "faq": [
      {
        "question": "New Question",
        "answer": "New Answer"
      },
      {
        "question": "New",
        "answer": "sdfghjhg"
      },
      {
        "question": "test",
        "answer": "test"
      },
      {
        "question": "New Test",
        "answer": "New Test answer"
      },
      {
        "question": "test",
        "answer": "test"
      }
    ],
    "created_at": "2020-04-06T13:16:06.818Z",
    "updated_at": "2020-07-16T09:47:40.751Z",
    "__v": 260
  }
}
```
</details>

</details>









---


#### updateLegalInformation
Save legal information




```swift
platformClient.application("<APPLICATION_ID>").content.updateLegalInformation(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ApplicationLegal | yes | Request body |


Use this API to edit, update and save the legal information of an application, which includes Policy, Terms and Conditions, Shipping Policy and FAQ regarding the application.

*Returned Response:*




[ApplicationLegal](#ApplicationLegal)

Success. Refer `ApplicationLegal` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "tnc": "This is terms and condition",
  "policy": "This is policy",
  "faq": [
    {
      "question": "This is question",
      "answer": "This is answer"
    }
  ]
}
```
</details>









---


#### getNavigations
Get navigations




```swift
platformClient.application("<APPLICATION_ID>").content.getNavigations(devicePlatform: devicePlatform, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| devicePlatform | String | yes | Filter navigations by platform. Acceptable values are: web, android, ios, all |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Use this API to fetch the navigations details which includes the items of the navigation pane. It also shows the orientation, links, sub-navigations, etc.

*Returned Response:*




[NavigationGetResponse](#NavigationGetResponse)

Success. Refer `NavigationGetResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "5ffbd9b90ac98678ae0458d7",
        "application": "000000000000000000000001",
        "_custom_json": null,
        "name": "temp",
        "slug": "temp",
        "platform": "web",
        "position": "top",
        "orientation": "landscape",
        "navigation": [
          {
            "display": "Home",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/mystore-tab_y0dqzt.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "home"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": {
              "type": "array",
              "items": {
                "type": "string"
              }
            },
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            },
            "sub_navigation": [
              {
                "display": "Brands",
                "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
                "sort_order": 1,
                "type": "",
                "action": {
                  "page": {
                    "url": "/brands/",
                    "type": "brands"
                  },
                  "popup": {},
                  "type": "page"
                },
                "active": true,
                "tags": null,
                "acl": [
                  "all"
                ],
                "_locale_language": {
                  "hi": {
                    "display": ""
                  },
                  "ar": {
                    "display": ""
                  },
                  "en_us": {
                    "display": ""
                  }
                }
              }
            ]
          },
          {
            "display": "Collections",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/collections-tab_a0tg9c.png",
            "sort_order": 2,
            "type": "",
            "action": {
              "page": {
                "url": "/collections/",
                "type": "collections"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            },
            "sub_navigation": [
              {
                "display": "Categories",
                "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148154/production/system/icons/categories-tab_ss8e0q.png",
                "sort_order": 1,
                "type": "",
                "action": {
                  "page": {
                    "url": "/categories/",
                    "type": "categories"
                  },
                  "popup": {},
                  "type": "page"
                },
                "active": true,
                "tags": null,
                "acl": [
                  "all"
                ],
                "_locale_language": {
                  "hi": {
                    "display": ""
                  },
                  "ar": {
                    "display": ""
                  },
                  "en_us": {
                    "display": ""
                  }
                }
              }
            ]
          },
          {
            "display": "Primary Menu",
            "image": "",
            "sort_order": 3,
            "type": "",
            "action": {
              "page": {
                "type": "home"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ],
        "created_by": {
          "id": "000000000000000000000000"
        },
        "date_meta": {
          "created_on": "2021-01-11T04:53:13.585Z",
          "modified_on": "2021-01-14T10:24:34.485Z"
        }
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 2,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### createNavigation
Create a navigation




```swift
platformClient.application("<APPLICATION_ID>").content.createNavigation(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | NavigationRequest | yes | Request body |


Navigation is the arrangement of navigational items to ease the accessibility of resources for users on a website. Use this API to create a navigation.

*Returned Response:*




[NavigationSchema](#NavigationSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5ffbd9b90ac98678ae0458d7",
    "application": "000000000000000000000001",
    "_custom_json": null,
    "name": "test-nav",
    "slug": "test-nav",
    "platform": [
      "ios",
      "android"
    ],
    "orientation": {
      "portrait": [
        "left"
      ]
    },
    "navigation": [
      {
        "display": "Home",
        "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/mystore-tab_y0dqzt.png",
        "sort_order": 1,
        "type": "",
        "action": {
          "page": {
            "url": "/",
            "type": "home"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        },
        "sub_navigation": [
          {
            "display": "Brands",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/brands/",
                "type": "brands"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ]
      },
      {
        "display": "Collections",
        "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/collections-tab_a0tg9c.png",
        "sort_order": 2,
        "type": "",
        "action": {
          "page": {
            "url": "/collections/",
            "type": "collections"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": null,
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        },
        "sub_navigation": [
          {
            "display": "Categories",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148154/production/system/icons/categories-tab_ss8e0q.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/categories/",
                "type": "categories"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ]
      },
      {
        "display": "Primary Menu",
        "image": "",
        "sort_order": 3,
        "type": "",
        "action": {
          "page": {
            "type": "home"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": null,
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        }
      }
    ],
    "created_by": {
      "id": "000000000000000000000000"
    },
    "date_meta": {
      "created_on": "2021-01-11T04:53:13.585Z",
      "modified_on": "2021-01-14T10:24:34.485Z"
    },
    "archived": false
  }
}
```
</details>

</details>









---


#### getDefaultNavigations
Get default navigations




```swift
platformClient.application("<APPLICATION_ID>").content.getDefaultNavigations() { (response, error) in
    // Use response
}
```






On any website (application), there are navigations that are present by default. Use this API to retrieve those default navigations.

*Returned Response:*




[DefaultNavigationResponse](#DefaultNavigationResponse)

Success. Refer `DefaultNavigationResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "name": "default-bottom",
        "slug": "default-bottom-vIhLiJKQvUZdQvGWzDdrzLP3CTC4Hbxg",
        "orientation": {
          "landscape": [
            "bottom"
          ]
        },
        "version": 3,
        "navigation": [
          {
            "display": "Home",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/mystore-tab_y0dqzt.png",
            "sort_order": 1,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "home"
              },
              "type": "page"
            },
            "active": true
          },
          {
            "display": "Brands",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
            "sort_order": 2,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "brands"
              },
              "type": "page"
            },
            "active": true
          },
          {
            "display": "Collections",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/collections-tab_a0tg9c.png",
            "sort_order": 3,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "collections"
              },
              "type": "page"
            },
            "active": true
          },
          {
            "display": "Categories",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148154/production/system/icons/categories-tab_ss8e0q.png",
            "sort_order": 4,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "categories"
              },
              "type": "page"
            },
            "active": true
          }
        ],
        "created_by": {},
        "_id": "6050244dbd9e072063f1586b",
        "platform": [
          "android"
        ]
      },
      {
        "name": "default-bottom",
        "slug": "default-bottom-SB0zLTfiPN4Z5doJQBKRagsLTDldm8Ug",
        "orientation": {
          "landscape": [
            "bottom"
          ]
        },
        "version": 3,
        "navigation": [
          {
            "display": "Home",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/mystore-tab_y0dqzt.png",
            "sort_order": 1,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "home"
              },
              "type": "page"
            },
            "active": true
          },
          {
            "display": "Brands",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
            "sort_order": 2,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "brands"
              },
              "type": "page"
            },
            "active": true
          },
          {
            "display": "Collections",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/collections-tab_a0tg9c.png",
            "sort_order": 3,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "collections"
              },
              "type": "page"
            },
            "active": true
          },
          {
            "display": "Categories",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148154/production/system/icons/categories-tab_ss8e0q.png",
            "sort_order": 4,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "categories"
              },
              "type": "page"
            },
            "active": true
          }
        ],
        "created_by": {},
        "_id": "6050244dbd9e072063f1586c",
        "platform": [
          "ios"
        ]
      },
      {
        "name": "default-left",
        "slug": "default-left-dWrrfpfcNw6Arl0QtmK5VgunYYAHhGRR",
        "orientation": {
          "portrait": [
            "left"
          ]
        },
        "version": 3,
        "navigation": [
          {
            "display": "Profile",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583938091/production/applications/app_000000000000000000000001/media/navigation/icon/hv0cd5jdo0rkhsqoizmi.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "profile"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "registered"
            ]
          },
          {
            "display": "Orders",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583938144/production/applications/app_000000000000000000000001/media/navigation/icon/lmv4fzpxxk0a6acitlfg.png",
            "sort_order": 2,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "orders"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "registered"
            ]
          },
          {
            "display": "Track Order",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583938144/production/applications/app_000000000000000000000001/media/navigation/icon/lmv4fzpxxk0a6acitlfg.png",
            "sort_order": 3,
            "type": "",
            "action": {
              "page": {
                "type": "track-order"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "anonymous"
            ]
          },
          {
            "display": "Addresses",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583938161/production/applications/app_000000000000000000000001/media/navigation/icon/qbod8vkjmot3qnaroibr.png",
            "sort_order": 4,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "addresses"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "registered"
            ]
          },
          {
            "display": "Wishlist",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583938125/production/applications/app_000000000000000000000001/media/navigation/icon/u8c7jdke4a3wwc0ftz8x.png",
            "sort_order": 5,
            "type": "",
            "action": {
              "page": {
                "url": "/wishlist/",
                "type": "wishlist"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "registered"
            ]
          },
          {
            "display": "Settings",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1584003256/production/applications/app_000000000000000000000001/media/navigation/icon/vywbdiio1zi7cbnltvgz.png",
            "sort_order": 6,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "settings"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "all"
            ]
          },
          {
            "display": "Policy",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583939301/production/applications/app_000000000000000000000001/media/navigation/icon/bygqvme7hkrd45oemzy0.png",
            "sort_order": 7,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "policy"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "all"
            ]
          },
          {
            "display": "Terms & Conditions",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583939382/production/applications/app_000000000000000000000001/media/navigation/icon/eaq0aagqr0xirojbuki3.png",
            "sort_order": 8,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "tnc"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "all"
            ]
          },
          {
            "display": "Need Help",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583939416/production/applications/app_000000000000000000000001/media/navigation/icon/xeqv7pzyxagwtxcwvxbw.png",
            "sort_order": 9,
            "type": "",
            "action": {
              "page": {
                "url": "/faq/",
                "type": "faq"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "all"
            ]
          },
          {
            "display": "About Us",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583939196/production/applications/app_000000000000000000000001/media/navigation/icon/dccm5et4sgylisbug9xr.png",
            "sort_order": 10,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "about-us"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "all"
            ]
          },
          {
            "display": "Rate Us",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1584091739/production/applications/app_000000000000000000000001/media/navigation/icon/afryyfeccqgjyeosdmbz.png",
            "sort_order": 11,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "rate-us"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "registered"
            ]
          }
        ],
        "created_by": {},
        "_id": "6050244dbd9e072063f1586d",
        "platform": [
          "android"
        ]
      },
      {
        "name": "default-left",
        "slug": "default-left-tRK1fsQVUD7BmdvX30Fb4u5ZVSrSi3KW",
        "orientation": {
          "portrait": [
            "left"
          ]
        },
        "version": 3,
        "navigation": [
          {
            "display": "Profile",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583938091/production/applications/app_000000000000000000000001/media/navigation/icon/hv0cd5jdo0rkhsqoizmi.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "profile"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "registered"
            ]
          },
          {
            "display": "Orders",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583938144/production/applications/app_000000000000000000000001/media/navigation/icon/lmv4fzpxxk0a6acitlfg.png",
            "sort_order": 2,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "orders"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "registered"
            ]
          },
          {
            "display": "Track Order",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583938144/production/applications/app_000000000000000000000001/media/navigation/icon/lmv4fzpxxk0a6acitlfg.png",
            "sort_order": 3,
            "type": "",
            "action": {
              "page": {
                "type": "track-order"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "anonymous"
            ]
          },
          {
            "display": "Addresses",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583938161/production/applications/app_000000000000000000000001/media/navigation/icon/qbod8vkjmot3qnaroibr.png",
            "sort_order": 4,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "addresses"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "registered"
            ]
          },
          {
            "display": "Wishlist",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583938125/production/applications/app_000000000000000000000001/media/navigation/icon/u8c7jdke4a3wwc0ftz8x.png",
            "sort_order": 5,
            "type": "",
            "action": {
              "page": {
                "url": "/wishlist/",
                "type": "wishlist"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "registered"
            ]
          },
          {
            "display": "Settings",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1584003256/production/applications/app_000000000000000000000001/media/navigation/icon/vywbdiio1zi7cbnltvgz.png",
            "sort_order": 6,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "settings"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "all"
            ]
          },
          {
            "display": "Policy",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583939301/production/applications/app_000000000000000000000001/media/navigation/icon/bygqvme7hkrd45oemzy0.png",
            "sort_order": 7,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "policy"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "all"
            ]
          },
          {
            "display": "Terms & Conditions",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583939382/production/applications/app_000000000000000000000001/media/navigation/icon/eaq0aagqr0xirojbuki3.png",
            "sort_order": 8,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "tnc"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "all"
            ]
          },
          {
            "display": "Need Help",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583939416/production/applications/app_000000000000000000000001/media/navigation/icon/xeqv7pzyxagwtxcwvxbw.png",
            "sort_order": 9,
            "type": "",
            "action": {
              "page": {
                "url": "/faq/",
                "type": "faq"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "all"
            ]
          },
          {
            "display": "About Us",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1583939196/production/applications/app_000000000000000000000001/media/navigation/icon/dccm5et4sgylisbug9xr.png",
            "sort_order": 10,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "about-us"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "all"
            ]
          },
          {
            "display": "Rate Us",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1584091739/production/applications/app_000000000000000000000001/media/navigation/icon/afryyfeccqgjyeosdmbz.png",
            "sort_order": 11,
            "type": "",
            "action": {
              "page": {
                "url": "/",
                "type": "rate-us"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "acl": [
              "registered"
            ]
          }
        ],
        "created_by": {},
        "_id": "6050244dbd9e072063f1586e",
        "platform": [
          "ios"
        ]
      },
      {
        "name": "default-top",
        "slug": "default-top-qrprb8dxqr3m698wwUGXWsvTfVkjt4cR",
        "orientation": {
          "landscape": [
            "top"
          ]
        },
        "version": 3,
        "navigation": [
          {
            "display": "Home",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/mystore-tab_y0dqzt.png",
            "sort_order": 1,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "home"
              },
              "type": "page"
            },
            "active": true
          },
          {
            "display": "Brands",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
            "sort_order": 2,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "brands"
              },
              "type": "page"
            },
            "active": true
          },
          {
            "display": "Collections",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/collections-tab_a0tg9c.png",
            "sort_order": 3,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "collections"
              },
              "type": "page"
            },
            "active": true
          },
          {
            "display": "Categories",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148154/production/system/icons/categories-tab_ss8e0q.png",
            "sort_order": 4,
            "acl": [
              "all"
            ],
            "action": {
              "page": {
                "type": "categories"
              },
              "type": "page"
            },
            "active": true
          }
        ],
        "created_by": {},
        "_id": "6050244dbd9e072063f1586f",
        "platform": [
          "web"
        ]
      }
    ]
  }
}
```
</details>

</details>









---


#### getNavigationBySlug
Get a navigation by slug




```swift
platformClient.application("<APPLICATION_ID>").content.getNavigationBySlug(slug: slug, devicePlatform: devicePlatform) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of a navigation. You can get slug value of a navigation from `getNavigations` API. |   
| devicePlatform | String | yes | Filter navigations by platform. Acceptable values are: web, android, ios, all |  



Use this API to retrieve a navigation by its slug.

*Returned Response:*




[NavigationSchema](#NavigationSchema)

Success. Refer `NavigationSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5ffbd9b90ac98678ae0458d7",
    "application": "000000000000000000000001",
    "_custom_json": null,
    "name": "test-nav",
    "slug": "test-nav",
    "platform": [
      "ios",
      "android"
    ],
    "orientation": {
      "portrait": [
        "left"
      ]
    },
    "navigation": [
      {
        "display": "Home",
        "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/mystore-tab_y0dqzt.png",
        "sort_order": 1,
        "type": "",
        "action": {
          "page": {
            "url": "/",
            "type": "home"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        },
        "sub_navigation": [
          {
            "display": "Brands",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/brands/",
                "type": "brands"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ]
      },
      {
        "display": "Collections",
        "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/collections-tab_a0tg9c.png",
        "sort_order": 2,
        "type": "",
        "action": {
          "page": {
            "url": "/collections/",
            "type": "collections"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": null,
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        },
        "sub_navigation": [
          {
            "display": "Categories",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148154/production/system/icons/categories-tab_ss8e0q.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/categories/",
                "type": "categories"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ]
      },
      {
        "display": "Primary Menu",
        "image": "",
        "sort_order": 3,
        "type": "",
        "action": {
          "page": {
            "type": "home"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": null,
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        }
      }
    ],
    "created_by": {
      "id": "000000000000000000000000"
    },
    "date_meta": {
      "created_on": "2021-01-11T04:53:13.585Z",
      "modified_on": "2021-01-14T10:24:34.485Z"
    },
    "archived": false
  }
}
```
</details>

</details>









---


#### updateNavigation
Update a navigation




```swift
platformClient.application("<APPLICATION_ID>").content.updateNavigation(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the navigation. |  
| body | NavigationRequest | yes | Request body |


Use this API to edit the details of an existing navigation.

*Returned Response:*




[NavigationSchema](#NavigationSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5ffbd9b90ac98678ae0458d7",
    "application": "000000000000000000000001",
    "_custom_json": null,
    "name": "test-nav",
    "slug": "test-nav",
    "platform": [
      "ios",
      "android"
    ],
    "orientation": {
      "portrait": [
        "left"
      ]
    },
    "navigation": [
      {
        "display": "Home",
        "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/mystore-tab_y0dqzt.png",
        "sort_order": 1,
        "type": "",
        "action": {
          "page": {
            "url": "/",
            "type": "home"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        },
        "sub_navigation": [
          {
            "display": "Brands",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/brands/",
                "type": "brands"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ]
      },
      {
        "display": "Collections",
        "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/collections-tab_a0tg9c.png",
        "sort_order": 2,
        "type": "",
        "action": {
          "page": {
            "url": "/collections/",
            "type": "collections"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": null,
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        },
        "sub_navigation": [
          {
            "display": "Categories",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148154/production/system/icons/categories-tab_ss8e0q.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/categories/",
                "type": "categories"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ]
      },
      {
        "display": "Primary Menu",
        "image": "",
        "sort_order": 3,
        "type": "",
        "action": {
          "page": {
            "type": "home"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": null,
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        }
      }
    ],
    "created_by": {
      "id": "000000000000000000000000"
    },
    "date_meta": {
      "created_on": "2021-01-11T04:53:13.585Z",
      "modified_on": "2021-01-14T10:24:34.485Z"
    },
    "archived": false
  }
}
```
</details>

</details>









---


#### deleteNavigation
Delete a navigation




```swift
platformClient.application("<APPLICATION_ID>").content.deleteNavigation(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the navigation. |  



Use this API to delete an existing navigation.

*Returned Response:*




[NavigationSchema](#NavigationSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5ffbd9b90ac98678ae0458d7",
    "application": "000000000000000000000001",
    "_custom_json": null,
    "name": "temp",
    "slug": "temp",
    "platform": "[web]",
    "orientation": {
      "portrait": [
        "left"
      ]
    },
    "navigation": [
      {
        "display": "Home",
        "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/mystore-tab_y0dqzt.png",
        "sort_order": 1,
        "type": "",
        "action": {
          "page": {
            "url": "/",
            "type": "home"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        },
        "sub_navigation": [
          {
            "display": "Brands",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/brands/",
                "type": "brands"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ]
      },
      {
        "display": "Collections",
        "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/collections-tab_a0tg9c.png",
        "sort_order": 2,
        "type": "",
        "action": {
          "page": {
            "url": "/collections/",
            "type": "collections"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": null,
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        },
        "sub_navigation": [
          {
            "display": "Categories",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148154/production/system/icons/categories-tab_ss8e0q.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/categories/",
                "type": "categories"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ]
      },
      {
        "display": "Primary Menu",
        "image": "",
        "sort_order": 3,
        "type": "",
        "action": {
          "page": {
            "type": "home"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": null,
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        }
      }
    ],
    "created_by": {
      "id": "000000000000000000000000"
    },
    "date_meta": {
      "created_on": "2021-01-11T04:53:13.585Z",
      "modified_on": "2021-01-14T10:24:34.485Z"
    },
    "archived": true
  }
}
```
</details>

</details>









---


#### getPageMeta
Get page meta




```swift
platformClient.application("<APPLICATION_ID>").content.getPageMeta() { (response, error) in
    // Use response
}
```






Use this API to get the meta of custom pages (blog, page) and default system pages (e.g. home/brand/category/collection).

*Returned Response:*




[PageMetaSchema](#PageMetaSchema)

Success. Refer `PageMetaSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "application_id": "000000000000000000000001",
    "system_pages": [
      {
        "display": "Home",
        "action": {
          "page": {
            "type": "home"
          },
          "type": "page"
        },
        "page_type": "home"
      },
      {
        "display": "Brands",
        "action": {
          "page": {
            "type": "brands"
          },
          "type": "page"
        },
        "page_type": "brands"
      },
      {
        "display": "Collections",
        "action": {
          "page": {
            "type": "collections"
          },
          "type": "page"
        },
        "page_type": "collections"
      },
      {
        "display": "Categories",
        "action": {
          "page": {
            "type": "categories"
          },
          "type": "page"
        },
        "page_type": "categories"
      }
    ],
    "custom_pages": [
      {
        "display": "my first page",
        "slug": "first_page"
      },
      {
        "display": "my second page",
        "slug": "second_page"
      }
    ]
  }
}
```
</details>

</details>









---


#### getPageSpec
Get page spec




```swift
platformClient.application("<APPLICATION_ID>").content.getPageSpec() { (response, error) in
    // Use response
}
```






Use this API to get the specifications of a page, such as page type, display name, params and query.

*Returned Response:*




[PageSpec](#PageSpec)

Success. Refer `PageSpec` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "specifications": [
      {
        "page_type": "home",
        "display_name": "Home",
        "params": [],
        "query": []
      },
      {
        "page_type": "collections",
        "display_name": "Collections",
        "params": [],
        "query": []
      },
      {
        "page_type": "collection",
        "display_name": "Collection",
        "params": [
          {
            "key": "slug",
            "required": true
          }
        ],
        "query": []
      }
    ]
  }
}
```
</details>

</details>









---


#### createPagePreview
Create a page preview




```swift
platformClient.application("<APPLICATION_ID>").content.createPagePreview(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PageRequest | yes | Request body |


Use this API to create a page preview to check the appearance of a custom page.

*Returned Response:*




[PageSchema](#PageSchema)

Success. Refer `PageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-16T08:24:19.197Z",
      "modified_on": "2021-03-16T08:24:19.197Z"
    },
    "tags": [
      "my first page"
    ],
    "published": true,
    "component_ids": [],
    "archived": false,
    "_id": "60506dcad18cb33946026862",
    "title": "my first page",
    "slug": "1st_page",
    "feature_image": {
      "secure_url": "https://google.com/some-image"
    },
    "content": [
      {
        "type": "html",
        "value": "<div id=\"icfm\">Emtpy Page. Create Page here.</div><div id=\"izu5\" class=\"aa\">hello there!<div id=\"izzl\">how are you doing</div><div><br/></div></div><img id=\"ibgj\" src=\"https://hdn-1.addsale.com/x0/company/52/applications/614957b7e7a0ccc371e96094/pages/pictures/free-content/original/-zLi_CuyM-apple.jpeg\"/>"
      },
      {
        "type": "css",
        "value": "* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}#icfm{text-align:center;padding-top:30px;padding-right:30px;padding-bottom:30px;padding-left:30px;}#izu5{padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;}#ibgj{color:black;}#izzl{float:none;display:flex;}.aa{float:right;}"
      },
      {
        "type": "js",
        "value": ""
      }
    ],
    "content_path": "https://hdn-1.fynd.com/company/1526/applications/61012f6a9250ccd1b9ef8a1d/pages/content/page_slug.html",
    "platform": "web",
    "description": "hey this is my first page",
    "visibility": {
      "test": true
    },
    "_schedule": {
      "start": "2021-04-23T23:50:00.000Z",
      "next_schedule": [
        {}
      ]
    },
    "seo": {
      "title": "my first page",
      "description": "hey this is my first page",
      "image": {
        "url": ""
      }
    },
    "type": "rawhtml",
    "application": "000000000000000000000001",
    "orientation": "portrait",
    "page_meta": []
  }
}
```
</details>

</details>









---


#### updatePagePreview
Change the publish status of a page




```swift
platformClient.application("<APPLICATION_ID>").content.updatePagePreview(slug: slug, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of a page. You can get slug value of a page from `getPages` API. |  
| body | PagePublishRequest | yes | Request body |


Use this API to change the publish status of an existing page. Allows you to publish and unpublish the page.

*Returned Response:*




[PageSchema](#PageSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-16T08:24:19.197Z",
      "modified_on": "2021-03-16T08:24:19.197Z"
    },
    "tags": [
      "my first page"
    ],
    "published": true,
    "component_ids": [],
    "archived": false,
    "_id": "60506dcad18cb33946026862",
    "title": "my first page",
    "slug": "1st_page",
    "feature_image": {
      "secure_url": "https://google.com/some-image"
    },
    "content": [
      {
        "type": "html",
        "value": "<div id=\"icfm\">Emtpy Page. Create Page here.</div><div id=\"izu5\" class=\"aa\">hello there!<div id=\"izzl\">how are you doing</div><div><br/></div></div><img id=\"ibgj\" src=\"https://hdn-1.addsale.com/x0/company/52/applications/614957b7e7a0ccc371e96094/pages/pictures/free-content/original/-zLi_CuyM-apple.jpeg\"/>"
      },
      {
        "type": "css",
        "value": "* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}#icfm{text-align:center;padding-top:30px;padding-right:30px;padding-bottom:30px;padding-left:30px;}#izu5{padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;}#ibgj{color:black;}#izzl{float:none;display:flex;}.aa{float:right;}"
      },
      {
        "type": "js",
        "value": ""
      }
    ],
    "content_path": "https://hdn-1.fynd.com/company/1526/applications/61012f6a9250ccd1b9ef8a1d/pages/content/page_slug.html",
    "platform": "web",
    "description": "hey this is my first page",
    "visibility": {
      "test": true
    },
    "_schedule": {
      "start": "2021-04-23T23:50:00.000Z",
      "next_schedule": [
        {}
      ]
    },
    "seo": {
      "title": "my first page",
      "description": "hey this is my first page",
      "image": {
        "url": ""
      }
    },
    "type": "rawhtml",
    "application": "000000000000000000000001",
    "orientation": "portrait",
    "page_meta": []
  }
}
```
</details>

</details>









---


#### deletePage
Delete a page




```swift
platformClient.application("<APPLICATION_ID>").content.deletePage(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the page. |  



Use this API to delete an existing page.

*Returned Response:*




[PageSchema](#PageSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-16T08:24:19.197Z",
      "modified_on": "2021-03-16T08:24:19.197Z"
    },
    "tags": [
      "my first page"
    ],
    "published": true,
    "component_ids": [],
    "archived": false,
    "_id": "60506dcad18cb33946026862",
    "title": "my first page",
    "slug": "1st_page",
    "feature_image": {
      "secure_url": "https://google.com/some-image"
    },
    "content": [
      {
        "type": "html",
        "value": "<div id=\"icfm\">Emtpy Page. Create Page here.</div><div id=\"izu5\" class=\"aa\">hello there!<div id=\"izzl\">how are you doing</div><div><br/></div></div><img id=\"ibgj\" src=\"https://hdn-1.addsale.com/x0/company/52/applications/614957b7e7a0ccc371e96094/pages/pictures/free-content/original/-zLi_CuyM-apple.jpeg\"/>"
      },
      {
        "type": "css",
        "value": "* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}#icfm{text-align:center;padding-top:30px;padding-right:30px;padding-bottom:30px;padding-left:30px;}#izu5{padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;}#ibgj{color:black;}#izzl{float:none;display:flex;}.aa{float:right;}"
      },
      {
        "type": "js",
        "value": ""
      }
    ],
    "content_path": "https://hdn-1.fynd.com/company/1526/applications/61012f6a9250ccd1b9ef8a1d/pages/content/page_slug.html",
    "platform": "web",
    "description": "hey this is my first page",
    "visibility": {
      "test": true
    },
    "_schedule": {
      "start": "2021-04-23T23:50:00.000Z",
      "next_schedule": [
        {}
      ]
    },
    "seo": {
      "title": "my first page",
      "description": "hey this is my first page",
      "image": {
        "url": ""
      }
    },
    "type": "rawhtml",
    "application": "000000000000000000000001",
    "orientation": "portrait",
    "page_meta": []
  }
}
```
</details>

</details>









---


#### addPathRedirectionRules
Save path based redirection rules




```swift
platformClient.application("<APPLICATION_ID>").content.addPathRedirectionRules(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PathMappingSchema | yes | Request body |


Use this API to add redirection rules

*Returned Response:*




[PathMappingSchema](#PathMappingSchema)

Success. Refer `PathMappingSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "_id": "615188e9db1e444cb0f40837",
    "application": "000000000000000000000002",
    "redirect_from": "/from",
    "redirect_to": "/to",
    "createdAt": "2021-09-27T09:03:37.053Z",
    "updatedAt": "2021-09-27T09:09:25.587Z"
  }
}
```
</details>

</details>









---


#### getPathRedirectionRules
Get path based redirection rules




```swift
platformClient.application("<APPLICATION_ID>").content.getPathRedirectionRules(pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 5.  |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |  



Use this API to get path based redirection rules.

*Returned Response:*




[PathMappingSchema](#PathMappingSchema)

Success. Refer `PathMappingSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "_id": "615188e9db1e444cb0f40837",
    "application": "000000000000000000000002",
    "redirect_from": "/from",
    "redirect_to": "/to",
    "createdAt": "2021-09-27T09:03:37.053Z",
    "updatedAt": "2021-09-27T09:09:25.587Z"
  }
}
```
</details>

</details>









---


#### getPathRedirectionRule
Get path based redirection rule




```swift
platformClient.application("<APPLICATION_ID>").content.getPathRedirectionRule(pathId: pathId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pathId | String | yes | ID allotted to the path redirection rule. |  



Use this API to get path based redirection rule.

*Returned Response:*




[PathMappingSchema](#PathMappingSchema)

Success. Refer `PathMappingSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "_id": "615188e9db1e444cb0f40837",
    "application": "000000000000000000000002",
    "redirect_from": "/from",
    "redirect_to": "/to",
    "createdAt": "2021-09-27T09:03:37.053Z",
    "updatedAt": "2021-09-27T09:09:25.587Z"
  }
}
```
</details>

</details>









---


#### updatePathRedirectionRules
Update path based redirection rules




```swift
platformClient.application("<APPLICATION_ID>").content.updatePathRedirectionRules(pathId: pathId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pathId | String | yes | ID allotted to the path redirection rule. |  
| body | PathMappingSchema | yes | Request body |


Use this API to update redirection rules

*Returned Response:*




[PathMappingSchema](#PathMappingSchema)

Success. Refer `PathMappingSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Success</i></summary>

```json
{
  "value": {
    "_id": "615188e9db1e444cb0f40837",
    "application": "000000000000000000000002",
    "redirect_from": "/from",
    "redirect_to": "/to",
    "createdAt": "2021-09-27T09:03:37.053Z",
    "updatedAt": "2021-09-27T09:09:25.587Z"
  }
}
```
</details>

</details>









---


#### deletePathRedirectionRules
Delete path based redirection rules




```swift
platformClient.application("<APPLICATION_ID>").content.deletePathRedirectionRules(pathId: pathId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pathId | String | yes | ID allotted to the path redirection rule. |  



Use this API to delete redirection rules

*Returned Response:*




[[String: Any]](#[String: Any])

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Redirection deleted successfully"
}
```
</details>









---


#### getSEOConfiguration
Get SEO configuration of an application




```swift
platformClient.application("<APPLICATION_ID>").content.getSEOConfiguration() { (response, error) in
    // Use response
}
```






Use this API to know how the SEO is configured in the application. This includes the sitemap, robot.txt, custom meta tags, etc.

*Returned Response:*




[SeoComponent](#SeoComponent)

Success. Refer `SeoComponent` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "seo": {
      "details": {
        "title": "Zyosa Zyosa",
        "description": "",
        "image_url": ""
      },
      "robots_txt": "User-agent: * \nAllow: / \nsancisciasn xwsaixjowqnxwsiwjs",
      "sitemap_enabled": false,
      "cannonical_enabled": false,
      "_id": "6009819ee463ad40de397eb2",
      "app": "000000000000000000000001",
      "created_at": "2021-01-21T13:29:02.543Z",
      "updated_at": "2021-02-05T06:36:16.048Z",
      "__v": 11,
      "custom_meta_tags": [
        {
          "name": "test 0000",
          "content": "<meta name=\"test\" content=\"0000 cn dcje dcj rejre cjrenurenc \">",
          "_id": "6017c301bde3c21dbb13b284"
        },
        {
          "name": "cwdcdc",
          "content": "<meta content=\"wdcewdewc\">",
          "_id": "6017c675bde3c22cfb13b290"
        }
      ]
    }
  }
}
```
</details>

</details>









---


#### updateSEOConfiguration
Update SEO of application




```swift
platformClient.application("<APPLICATION_ID>").content.updateSEOConfiguration(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SeoComponent | yes | Request body |


Use this API to edit the SEO details of an application. This includes the sitemap, robot.txt, custom meta tags, etc.

*Returned Response:*




[SeoSchema](#SeoSchema)

Success. Refer `SeoSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "details": {
      "title": "Zyosa Zyosa",
      "description": "",
      "image_url": ""
    },
    "robots_txt": "User-agent: * \nAllow: / \nsancisciasn xwsaixjowqnxwsiwjs",
    "sitemap_enabled": false,
    "_id": "6009819ee463ad40de397eb2",
    "app": "000000000000000000000001",
    "created_at": "2021-01-21T13:29:02.543Z",
    "updated_at": "2021-02-05T06:36:16.048Z",
    "__v": 11,
    "custom_meta_tags": [
      {
        "name": "test 0000",
        "content": "<meta name=\"test\" content=\"0000 cn dcje dcj rejre cjrenurenc \">",
        "_id": "6017c301bde3c21dbb13b284"
      },
      {
        "name": "cwdcdc",
        "content": "<meta content=\"wdcewdewc\">",
        "_id": "6017c675bde3c22cfb13b290"
      }
    ]
  }
}
```
</details>

</details>









---


#### getDefaultSEOMarkupSchema
Get Default SEO Markup schemas of an application




```swift
platformClient.application("<APPLICATION_ID>").content.getDefaultSEOMarkupSchema(pageType: pageType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageType | String? | no | The type of page against which schema template was created |  



Use this API to get the Default SEO Markup schema Templates setup for an application

*Returned Response:*




[DefaultSchemaComponent](#DefaultSchemaComponent)

Success. Refer `DefaultSchemaComponent` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getSEOMarkupSchemas
Get SEO Markup schemas of an application




```swift
platformClient.application("<APPLICATION_ID>").content.getSEOMarkupSchemas(title: title, active: active, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| title | String? | no | Title of the seo schema. |   
| active | String? | no | Boolean value for fetching seo schema. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Use this API to get all SEO Markup schema Templates setup for an application

*Returned Response:*




[SeoSchemaComponent](#SeoSchemaComponent)

Success. Refer `SeoSchemaComponent` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createSEOMarkupSchema
Create a SEO Markup schema Template of a page type for an application




```swift
platformClient.application("<APPLICATION_ID>").content.createSEOMarkupSchema(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SEOSchemaMarkupTemplateRequestBody | yes | Request body |


Use this API to create a SEO Markup schema Template inside an application

*Returned Response:*




[SEOSchemaMarkupTemplate](#SEOSchemaMarkupTemplate)

Success. Refer `SEOSchemaMarkupTemplate` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getSEOMarkupSchema
Get a particular SEO Markup schema of an application using its id




```swift
platformClient.application("<APPLICATION_ID>").content.getSEOMarkupSchema(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Alphanumeric ID allotted to a SEO Markup Schema Template created within a business. |  



Use this API to get a existing SEO Markup schema an application

*Returned Response:*




[SEOSchemaMarkupTemplate](#SEOSchemaMarkupTemplate)

Success. Refer `SEOSchemaMarkupTemplate` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### editSEOMarkupSchema
Get a particular SEO Markup schema of an application using its id




```swift
platformClient.application("<APPLICATION_ID>").content.editSEOMarkupSchema(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Alphanumeric ID allotted to a SEO Markup Schema Template created within a business. |  
| body | SEOSchemaMarkupTemplateRequestBody | yes | Request body |


Use this API to edit an existing SEO Markup schema an application

*Returned Response:*




[SEOSchemaMarkupTemplate](#SEOSchemaMarkupTemplate)

Success. Refer `SEOSchemaMarkupTemplate` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### deleteSEOMarkupSchema
delete a particular SEO Markup schema of an application using its id




```swift
platformClient.application("<APPLICATION_ID>").content.deleteSEOMarkupSchema(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Alphanumeric ID allotted to a SEO Markup Schema Template created within a business. |  



Use this API to delete an existing SEO Markup schema an application

*Returned Response:*




[SEOSchemaMarkupTemplate](#SEOSchemaMarkupTemplate)

Success. Refer `SEOSchemaMarkupTemplate` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getSlideshows
Get slideshows




```swift
platformClient.application("<APPLICATION_ID>").content.getSlideshows(devicePlatform: devicePlatform, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| devicePlatform | String | yes | Filter slideshows by platform. Acceptable values are: web, android, ios and all |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to fetch a list of slideshows.

*Returned Response:*




[SlideshowGetResponse](#SlideshowGetResponse)

Success. Refer `SlideshowGetResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "date_meta": {
          "created_on": "2021-03-14T05:27:12.319Z",
          "modified_on": "2021-03-14T05:27:12.319Z"
        },
        "archived": false,
        "_id": "604d9eb975e9d136bb1b8b83",
        "configuration": {
          "start_on_launch": false,
          "duration": 50,
          "sleep_time": 100,
          "slide_direction": "horizontal"
        },
        "slug": "ss-sfsd-updated",
        "platform": "ios",
        "media": [
          {
            "auto_decide_duration": false,
            "type": "image",
            "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
            "bg_color": "#ffffff",
            "duration": 10,
            "action": {
              "type": ""
            }
          },
          {
            "auto_decide_duration": true,
            "type": "youtube",
            "url": "https://www.youtube.com/embed/9vJRopau0g0",
            "bg_color": "#ffffff",
            "duration": 909,
            "action": {
              "type": ""
            }
          }
        ],
        "application": "5cd3db5e9d692cfe5302a7bb",
        "active": true,
        "__v": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 2,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### createSlideshow
Create a slideshow




```swift
platformClient.application("<APPLICATION_ID>").content.createSlideshow(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | SlideshowRequest | yes | Request body |


A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to create a slideshow.

*Returned Response:*




[SlideshowSchema](#SlideshowSchema)

Success. Refer `SlideshowSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-14T05:27:12.319Z",
      "modified_on": "2021-03-14T05:27:12.319Z"
    },
    "archived": false,
    "_id": "604d9eb975e9d136bb1b8b83",
    "configuration": {
      "start_on_launch": false,
      "duration": 50,
      "sleep_time": 100,
      "slide_direction": "horizontal"
    },
    "slug": "ss-sfsd-updated",
    "platform": "ios",
    "media": [
      {
        "auto_decide_duration": false,
        "type": "image",
        "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
        "bg_color": "#ffffff",
        "duration": 10,
        "action": {
          "type": ""
        }
      },
      {
        "auto_decide_duration": true,
        "type": "youtube",
        "url": "https://www.youtube.com/embed/9vJRopau0g0",
        "bg_color": "#ffffff",
        "duration": 909,
        "action": {
          "type": ""
        }
      }
    ],
    "application": "5cd3db5e9d692cfe5302a7bb",
    "active": true
  }
}
```
</details>

</details>









---


#### getSlideshowBySlug
Get slideshow by slug




```swift
platformClient.application("<APPLICATION_ID>").content.getSlideshowBySlug(slug: slug, devicePlatform: devicePlatform) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of a slideshow. You can get slug value of a page from `getSlideshows` API. |   
| devicePlatform | String | yes | Filter slideshows by platform. Acceptable values are: web, android, ios and all |  



Use this API to retrieve the details of a slideshow by its slug.

*Returned Response:*




[SlideshowSchema](#SlideshowSchema)

Success. Refer `SlideshowSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-14T05:27:12.319Z",
      "modified_on": "2021-03-14T05:27:12.319Z"
    },
    "archived": false,
    "_id": "604d9eb975e9d136bb1b8b83",
    "configuration": {
      "start_on_launch": false,
      "duration": 50,
      "sleep_time": 100,
      "slide_direction": "horizontal"
    },
    "slug": "ss-sfsd-updated",
    "platform": "ios",
    "media": [
      {
        "auto_decide_duration": false,
        "type": "image",
        "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
        "bg_color": "#ffffff",
        "duration": 10,
        "action": {
          "type": ""
        }
      },
      {
        "auto_decide_duration": true,
        "type": "youtube",
        "url": "https://www.youtube.com/embed/9vJRopau0g0",
        "bg_color": "#ffffff",
        "duration": 909,
        "action": {
          "type": ""
        }
      }
    ],
    "application": "5cd3db5e9d692cfe5302a7bb",
    "active": true
  }
}
```
</details>

</details>









---


#### updateSlideshow
Update a slideshow




```swift
platformClient.application("<APPLICATION_ID>").content.updateSlideshow(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the slideshow. |  
| body | SlideshowRequest | yes | Request body |


Use this API to edit the details of an existing slideshow.

*Returned Response:*




[SlideshowSchema](#SlideshowSchema)

Success. Refer `SlideshowSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-14T05:27:12.319Z",
      "modified_on": "2021-03-14T05:27:12.319Z"
    },
    "archived": false,
    "_id": "604d9eb975e9d136bb1b8b83",
    "configuration": {
      "start_on_launch": false,
      "duration": 50,
      "sleep_time": 100,
      "slide_direction": "horizontal"
    },
    "slug": "ss-sfsd-updated",
    "platform": "ios",
    "media": [
      {
        "auto_decide_duration": false,
        "type": "image",
        "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
        "bg_color": "#ffffff",
        "duration": 10,
        "action": {
          "type": ""
        }
      },
      {
        "auto_decide_duration": true,
        "type": "youtube",
        "url": "https://www.youtube.com/embed/9vJRopau0g0",
        "bg_color": "#ffffff",
        "duration": 909,
        "action": {
          "type": ""
        }
      }
    ],
    "application": "5cd3db5e9d692cfe5302a7bb",
    "active": true
  }
}
```
</details>

</details>









---


#### deleteSlideshow
Delete a slideshow




```swift
platformClient.application("<APPLICATION_ID>").content.deleteSlideshow(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the slideshow. |  



Use this API to delete an existing slideshow.

*Returned Response:*




[SlideshowSchema](#SlideshowSchema)

Success.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-14T05:27:12.319Z",
      "modified_on": "2021-03-14T05:27:12.319Z"
    },
    "archived": true,
    "_id": "604d9eb975e9d136bb1b8b83",
    "configuration": {
      "start_on_launch": false,
      "duration": 50,
      "sleep_time": 100,
      "slide_direction": "horizontal"
    },
    "slug": "ss-sfsd-updated",
    "platform": "ios",
    "media": [
      {
        "auto_decide_duration": false,
        "type": "image",
        "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
        "bg_color": "#ffffff",
        "duration": 10,
        "action": {
          "type": ""
        }
      },
      {
        "auto_decide_duration": true,
        "type": "youtube",
        "url": "https://www.youtube.com/embed/9vJRopau0g0",
        "bg_color": "#ffffff",
        "duration": 909,
        "action": {
          "type": ""
        }
      }
    ],
    "application": "5cd3db5e9d692cfe5302a7bb",
    "active": true
  }
}
```
</details>

</details>









---


#### getSupportInformation
Get support information




```swift
platformClient.application("<APPLICATION_ID>").content.getSupportInformation() { (response, error) in
    // Use response
}
```






Use this API to get the contact details for customer support, including emails and phone numbers.

*Returned Response:*




[Support](#Support)

Success. Refer `Support` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5ea4980b87a7944094216193",
    "config_type": "app",
    "application": "000000000000000000000001",
    "created_at": "2020-04-25T20:05:31.300Z",
    "updated_at": "2020-12-04T10:48:12.194Z",
    "contact": {
      "phone": {
        "active": true,
        "phone": [
          {
            "key": "Jane Doe",
            "code": "91",
            "number": "9988776655"
          }
        ]
      },
      "email": {
        "active": false,
        "email": []
      }
    },
    "created": true
  }
}
```
</details>

</details>









---


#### updateSupportInformation
Update the support data of an application




```swift
platformClient.application("<APPLICATION_ID>").content.updateSupportInformation(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | Support | yes | Request body |


Use this API to edit the existing contact details for customer support, including emails and phone numbers.

*Returned Response:*




[Support](#Support)

Success. Refer `Support` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5ea4980b87a7944094216193",
    "config_type": "app",
    "application": "000000000000000000000001",
    "created_at": "2020-04-25T20:05:31.300Z",
    "updated_at": "2020-12-04T10:48:12.194Z",
    "contact": {
      "phone": {
        "active": true,
        "phone": [
          {
            "key": "Jane Doe",
            "code": "91",
            "number": "9988776655"
          }
        ]
      },
      "email": {
        "active": false,
        "email": []
      }
    },
    "created": true
  }
}
```
</details>

</details>









---


#### updateInjectableTag
Update the exisitng tags for an application by replacing with provided tags




```swift
platformClient.application("<APPLICATION_ID>").content.updateInjectableTag(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateTagRequestSchema | yes | Request body |


Use this API to edit and override all existing tags. All existing tags will be replaced by the new tags provided in body. 

*Returned Response:*




[TagsSchema](#TagsSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "601f77e7aa61066feda44487",
  "tags": [
    {
      "name": "Test",
      "sub_type": "external",
      "_id": "601f77e7aa61066feda44488",
      "type": "js",
      "url": "youtube.com/watch?v=AaxFIY-cWH0&list=PL3O3jhFJEElBHFbs6XsOqZAWZLtlEkZTw&index=31",
      "position": "head"
    },
    {
      "name": "Test 2",
      "sub_type": "external",
      "_id": "601f77e7aa61066feda44489",
      "type": "js",
      "url": "youtube.com/watch?v=AaxFIY-cWH0&list=PL3O3jhFJEElBHFbs6XsOqZAWZLtlEkZTw&index=31",
      "position": "head"
    }
  ],
  "application": "000000000000000000000001",
  "__v": 0
}
```
</details>









---


#### getInjectableTags
Get all the tags in an application




```swift
platformClient.application("<APPLICATION_ID>").content.getInjectableTags(all: all) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| all | Bool? | no | Get all tags irrespective of the creator of tags |  



Use this API to get the CSS and JS injected in the application in the form of tags.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success. Refer `TagsSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "601f77e7aa61066feda44487",
  "tags": [
    {
      "name": "Test",
      "sub_type": "external",
      "_id": "601f77e7aa61066feda44488",
      "type": "js",
      "url": "youtube.com/watch?v=AaxFIY-cWH0&list=PL3O3jhFJEElBHFbs6XsOqZAWZLtlEkZTw&index=31",
      "position": "head"
    },
    {
      "name": "Test 2",
      "sub_type": "external",
      "_id": "601f77e7aa61066feda44489",
      "type": "js",
      "url": "youtube.com/watch?v=AaxFIY-cWH0&list=PL3O3jhFJEElBHFbs6XsOqZAWZLtlEkZTw&index=31",
      "position": "head"
    }
  ],
  "application": "000000000000000000000001",
  "__v": 0
}
```
</details>









---


#### addInjectableTag
Add a tag




```swift
platformClient.application("<APPLICATION_ID>").content.addInjectableTag(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateTagRequestSchema | yes | Request body |


CSS and JS can be injected in the application (website) with the help of tags. Use this API to create such tags by entering the tag name, tag type (css/js), url and position of the tag.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "601f77e7aa61066feda44487",
  "tags": [
    {
      "name": "Test",
      "sub_type": "external",
      "_id": "601f77e7aa61066feda44488",
      "type": "js",
      "url": "youtube.com/watch?v=AaxFIY-cWH0&list=PL3O3jhFJEElBHFbs6XsOqZAWZLtlEkZTw&index=31",
      "position": "head"
    }
  ],
  "application": "000000000000000000000001",
  "__v": 0
}
```
</details>









---


#### removeInjectableTag
Remove a tag




```swift
platformClient.application("<APPLICATION_ID>").content.removeInjectableTag(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | RemoveHandpickedSchema | yes | Request body |


Use this API to delete an existing tag.

*Returned Response:*




[TagDeleteSuccessResponse](#TagDeleteSuccessResponse)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### editInjectableTag
Edit a tag by id




```swift
platformClient.application("<APPLICATION_ID>").content.editInjectableTag(tagId: tagId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| tagId | String | yes | ID allotted to the tag. |  
| body | UpdateHandpickedSchema | yes | Request body |


Use this API to edit the details of an existing tag by its ID.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "602671b3c0bac99158b10874",
  "application": "000000000000000000000001",
  "tags": [
    {
      "_id": "601f77e7aa61066feda44488",
      "name": "floating whatsapp",
      "sub_type": "inline",
      "type": "css",
      "position": "head",
      "content": ".float{\n\tposition:fixed;\n\twidth:60px;\n\theight:60px;\n\tbottom:40px;\n\tright:40px;\n\tbackground-color:#25d366;\n\tcolor:#FFF;\n\tborder-radius:50px;\n\ttext-align:center;\n  font-size:30px;\n\tbox-shadow: 2px 2px 3px #999;\n  z-index:100;\n}\n\n.my-float{\n\tmargin-top:16px;\n}"
    }
  ],
  "__v": 1
}
```
</details>









---


#### getBlogBySlug
Get blog by slug




```swift
platformClient.application("<APPLICATION_ID>").content.getBlogBySlug(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of a blog page. You can get slug value of a blog from `getBlogs` API. |  



Use this API to retrieve the components of a blog, such as title, slug, feature image, content, schedule, publish status, author, etc.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success. Returns a a JSON object with components. Refer `BlogSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "_id": "5eaa451a21a4dd75f0fd96c5",
    "application": "5d3ebd89f540e7506b8b3548",
    "tags": [
      "abhinav"
    ],
    "title": "my first blog",
    "slug": "1st_blog",
    "feature_image": {
      "secure_url": "https://google.com"
    },
    "content": [
      {
        "type": "html",
        "value": "<p>hey there!</p>"
      }
    ],
    "_schedule": {
      "cron": "* 10 * * *",
      "start": "2021-03-31T23:30:00.000Z",
      "end": "2021-03-31T23:55:00.000Z",
      "duration": 1000,
      "next_schedule": [
        {
          "start": "2021-03-17T04:30:00.000Z",
          "end": "2021-03-17T04:46:40.000Z"
        }
      ]
    },
    "published": true,
    "author": {
      "name": "Fynd App"
    },
    "date_meta": {
      "created_on": "2021-03-14T06:49:03.945Z",
      "modified_on": "2021-03-14T06:49:03.945Z"
    }
  }
}
```
</details>

</details>









---


#### createPage
Create a page




```swift
platformClient.application("<APPLICATION_ID>").content.createPage(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PageRequest | yes | Request body |


Use this API to create a custom page using a title, seo, publish status, feature image, tags, meta, etc.

*Returned Response:*




[PageSchema](#PageSchema)

Success. Refer `PageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-16T08:24:19.197Z",
      "modified_on": "2021-03-16T08:24:19.197Z"
    },
    "tags": [
      "my first page"
    ],
    "published": true,
    "component_ids": [],
    "archived": false,
    "_id": "60506dcad18cb33946026862",
    "title": "my first page",
    "slug": "1st_page",
    "feature_image": {
      "secure_url": "https://google.com/some-image"
    },
    "content": [
      {
        "type": "html",
        "value": "<div id=\"icfm\">Emtpy Page. Create Page here.</div><div id=\"izu5\" class=\"aa\">hello there!<div id=\"izzl\">how are you doing</div><div><br/></div></div><img id=\"ibgj\" src=\"https://hdn-1.addsale.com/x0/company/52/applications/614957b7e7a0ccc371e96094/pages/pictures/free-content/original/-zLi_CuyM-apple.jpeg\"/>"
      },
      {
        "type": "css",
        "value": "* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}#icfm{text-align:center;padding-top:30px;padding-right:30px;padding-bottom:30px;padding-left:30px;}#izu5{padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;}#ibgj{color:black;}#izzl{float:none;display:flex;}.aa{float:right;}"
      },
      {
        "type": "js",
        "value": ""
      }
    ],
    "content_path": "https://hdn-1.fynd.com/company/1526/applications/61012f6a9250ccd1b9ef8a1d/pages/content/page_slug.html",
    "platform": "web",
    "description": "hey this is my first page",
    "visibility": {
      "test": true
    },
    "_schedule": {
      "start": "2021-04-23T23:50:00.000Z",
      "next_schedule": [
        {}
      ]
    },
    "seo": {
      "title": "my first page",
      "description": "hey this is my first page",
      "image": {
        "url": ""
      }
    },
    "type": "rawhtml",
    "application": "000000000000000000000001",
    "orientation": "portrait",
    "page_meta": []
  }
}
```
</details>

</details>









---


#### getPages
Get a list of pages




```swift
platformClient.application("<APPLICATION_ID>").content.getPages(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Use this API to retrieve a list of pages.

*Returned Response:*




[PageGetResponse](#PageGetResponse)

Success. Refer `PageGetResponse` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "items": [
      {
        "date_meta": {
          "created_on": "2021-03-14T06:49:03.945Z",
          "modified_on": "2021-03-14T06:49:03.945Z"
        },
        "tags": [
          "my first page"
        ],
        "_id": "604db275b3ae202873964d94",
        "content_path": "https://hdn-1.fynd.com/company/1526/applications/61012f6a9250ccd1b9ef8a1d/pages/content/page_slug.html",
        "title": "test-page",
        "slug": "test-page",
        "published": true,
        "_schedule": {
          "next_schedule": [
            {}
          ],
          "start": "2021-04-08T07:15:13.000Z",
          "end": "2021-04-10T02:00:00.000Z"
        },
        "feature_image": {
          "secure_url": "https://google.com/some-image"
        },
        "seo": {
          "title": "my first page",
          "description": "hey this is my first page",
          "image": {
            "url": ""
          }
        },
        "application": "000000000000000000000001",
        "author": {
          "name": "Abhinav Maurya"
        }
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 1,
      "item_total": 2,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### updatePage
Update a page




```swift
platformClient.application("<APPLICATION_ID>").content.updatePage(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | ID allotted to the page. |  
| body | PageSchema | yes | Request body |


Use this API to edit the details of an existing page, such as its title, seo, publish status, feature image, tags, schedule, etc.

*Returned Response:*




[PageSchema](#PageSchema)

Success. Refer `PageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-16T08:24:19.197Z",
      "modified_on": "2021-03-16T08:24:19.197Z"
    },
    "tags": [
      "my first page"
    ],
    "published": true,
    "component_ids": [],
    "archived": false,
    "_id": "60506dcad18cb33946026862",
    "title": "my first page",
    "slug": "1st_page",
    "feature_image": {
      "secure_url": "https://google.com/some-image"
    },
    "content": [
      {
        "type": "html",
        "value": "<div id=\"icfm\">Emtpy Page. Create Page here.</div><div id=\"izu5\" class=\"aa\">hello there!<div id=\"izzl\">how are you doing</div><div><br/></div></div><img id=\"ibgj\" src=\"https://hdn-1.addsale.com/x0/company/52/applications/614957b7e7a0ccc371e96094/pages/pictures/free-content/original/-zLi_CuyM-apple.jpeg\"/>"
      },
      {
        "type": "css",
        "value": "* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}#icfm{text-align:center;padding-top:30px;padding-right:30px;padding-bottom:30px;padding-left:30px;}#izu5{padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;}#ibgj{color:black;}#izzl{float:none;display:flex;}.aa{float:right;}"
      },
      {
        "type": "js",
        "value": ""
      }
    ],
    "content_path": "https://hdn-1.fynd.com/company/1526/applications/61012f6a9250ccd1b9ef8a1d/pages/content/page_slug.html",
    "platform": "web",
    "description": "hey this is my first page",
    "visibility": {
      "test": true
    },
    "_schedule": {
      "start": "2021-04-23T23:50:00.000Z",
      "next_schedule": [
        {}
      ]
    },
    "seo": {
      "title": "my first page",
      "description": "hey this is my first page",
      "image": {
        "url": ""
      }
    },
    "type": "rawhtml",
    "application": "000000000000000000000001",
    "orientation": "portrait",
    "page_meta": []
  }
}
```
</details>

</details>









---


#### getPageBySlug
Get page by slug




```swift
platformClient.application("<APPLICATION_ID>").content.getPageBySlug(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A short, human-readable, URL-friendly identifier of a page. You can get slug value of a page from `getPages` API. |  



Use this API to retrieve the components of a page, such as its title, seo, publish status, feature image, tags, schedule, etc.

*Returned Response:*




[PageSchema](#PageSchema)

Success. Returns a JSON object of components. Refer `PageSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; default</i></summary>

```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-16T08:24:19.197Z",
      "modified_on": "2021-03-16T08:24:19.197Z"
    },
    "tags": [
      "my first page"
    ],
    "published": true,
    "component_ids": [],
    "archived": false,
    "_id": "60506dcad18cb33946026862",
    "title": "my first page",
    "slug": "1st_page",
    "feature_image": {
      "secure_url": "https://google.com/some-image"
    },
    "content": [
      {
        "type": "html",
        "value": "<div id=\"icfm\">Emtpy Page. Create Page here.</div><div id=\"izu5\" class=\"aa\">hello there!<div id=\"izzl\">how are you doing</div><div><br/></div></div><img id=\"ibgj\" src=\"https://hdn-1.addsale.com/x0/company/52/applications/614957b7e7a0ccc371e96094/pages/pictures/free-content/original/-zLi_CuyM-apple.jpeg\"/>"
      },
      {
        "type": "css",
        "value": "* { box-sizing: border-box; } body {margin: 0;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}*{box-sizing:border-box;}body{margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;}#icfm{text-align:center;padding-top:30px;padding-right:30px;padding-bottom:30px;padding-left:30px;}#izu5{padding-top:10px;padding-right:10px;padding-bottom:10px;padding-left:10px;}#ibgj{color:black;}#izzl{float:none;display:flex;}.aa{float:right;}"
      },
      {
        "type": "js",
        "value": ""
      }
    ],
    "content_path": "https://hdn-1.fynd.com/company/1526/applications/61012f6a9250ccd1b9ef8a1d/pages/content/page_slug.html",
    "platform": "web",
    "description": "hey this is my first page",
    "visibility": {
      "test": true
    },
    "_schedule": {
      "start": "2021-04-23T23:50:00.000Z",
      "next_schedule": [
        {}
      ]
    },
    "seo": {
      "title": "my first page",
      "description": "hey this is my first page",
      "image": {
        "url": ""
      }
    },
    "type": "rawhtml",
    "application": "000000000000000000000001",
    "orientation": "portrait",
    "page_meta": []
  }
}
```
</details>

</details>









---


#### getCustomFieldTypes
Get custom field types




```swift
platformClient.content.getCustomFieldTypes() { (response, error) in
    // Use response
}
```






Use this API to retrieve the custom field types 

*Returned Response:*




[CustomObjectByIdSchema](#CustomObjectByIdSchema)

Success. Returns all custom field types. 




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "metafield_types": {
      "string_single_line": {
        "name": "Single Line Text",
        "list_enabled": true,
        "category": "TEXT",
        "type": "string",
        "supported_validations": [
          {
            "name": "min",
            "type": "integer",
            "display": "Minimum Characters"
          },
          {
            "name": "max",
            "type": "integer",
            "display": "Maximum Characters"
          },
          {
            "name": "regex",
            "type": "string",
            "display": "Regular Expression",
            "meta": {
              "examples": [
                {
                  "name": "Alphabet Characters",
                  "value": "^[a-zA-Z]+$"
                },
                {
                  "name": "Alphanumeric Characters",
                  "value": "^[a-zA-Z0-9]+$"
                },
                {
                  "name": "Numeric Characters",
                  "value": "^[0-9]+$"
                },
                {
                  "name": "Email Address",
                  "value": "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
                }
              ]
            }
          },
          {
            "name": "choices",
            "type": "string_array",
            "display": "Choices"
          }
        ]
      },
      "string_multi_line": {
        "name": "Multi Line Text",
        "list_enabled": true,
        "category": "TEXT",
        "type": "string",
        "supported_validations": [
          {
            "name": "min",
            "type": "integer",
            "display": "Minimum Characters"
          },
          {
            "name": "max",
            "type": "integer",
            "display": "Maximum Characters"
          }
        ]
      },
      "dropdown": {
        "name": "Dropdown",
        "list_enabled": true,
        "category": "TEXT",
        "type": "string",
        "supported_validations": [
          {
            "name": "choices",
            "type": "string_array",
            "display": "Choices",
            "required": true
          }
        ]
      },
      "integer": {
        "name": "Integer",
        "list_enabled": true,
        "type": "integer",
        "category": "NUMBER",
        "supported_validations": [
          {
            "name": "min",
            "type": "integer",
            "display": "Minimum Value"
          },
          {
            "name": "max",
            "type": "integer",
            "display": "Maximum Value"
          },
          {
            "name": "choices",
            "type": "integer_array",
            "display": "Choices"
          }
        ]
      },
      "float_type": {
        "name": "Decimal",
        "list_enabled": true,
        "type": "float",
        "category": "NUMBER",
        "supported_validations": [
          {
            "name": "min",
            "type": "float",
            "display": "Minimum Value"
          },
          {
            "name": "max",
            "type": "float",
            "display": "Maximum Value"
          },
          {
            "name": "choices",
            "type": "float_array",
            "display": "Choices"
          }
        ]
      },
      "boolean_type": {
        "name": "Boolean",
        "category": "TRUE_FALSE",
        "list_enabled": false,
        "type": "boolean",
        "supported_validations": []
      },
      "date": {
        "name": "Date",
        "list_enabled": true,
        "category": "DATETIME",
        "type": "date",
        "supported_validations": [
          {
            "name": "min",
            "type": "date",
            "display": "From Date"
          },
          {
            "name": "max",
            "type": "date",
            "display": "To Date"
          }
        ]
      },
      "datetime": {
        "name": "Date - Time",
        "category": "DATETIME",
        "list_enabled": true,
        "type": "datetime",
        "supported_validations": [
          {
            "name": "min",
            "type": "date",
            "display": "From Date & Time"
          },
          {
            "name": "max",
            "type": "date",
            "display": "To Date & Time"
          }
        ]
      },
      "json": {
        "name": "JSON",
        "list_enabled": false,
        "category": "ADVANCED",
        "type": "json",
        "supported_validations": [
          {
            "name": "schema",
            "type": "json",
            "display": "JSON Schema"
          }
        ]
      },
      "file": {
        "name": "File",
        "category": "REFERENCE",
        "list_enabled": true,
        "type": "string",
        "supported_validations": [
          {
            "name": "file_type_options",
            "type": "string_array",
            "meta": {
              "options": [
                {
                  "image": {
                    "supported_types": [
                      "jpeg",
                      "jpg",
                      "png",
                      "svg+xml",
                      "tiff",
                      "webp",
                      "gif"
                    ],
                    "max_size": 20971520
                  },
                  "video": {
                    "supported_types": [
                      "x-flv",
                      "mp4",
                      "x-mpegURL",
                      "MP2T",
                      "3gpp",
                      "/quicktime",
                      "x-msvideo",
                      "x-ms-wmv",
                      "webm"
                    ],
                    "max_size": 1048576000
                  }
                }
              ]
            }
          }
        ]
      },
      "url": {
        "name": "URL",
        "list_enabled": true,
        "type": "string",
        "supported_validations": [
          {
            "name": "allowed_domains",
            "display": "Allowed Domains",
            "type": "string_array"
          }
        ]
      },
      "metaobject": {
        "name": "Custom Object",
        "list_enabled": true,
        "category": "REFERENCE",
        "type": "string",
        "supported_validations": [
          {
            "name": "metaobject_definition_id",
            "display": "Reference",
            "type": "string",
            "required": true
          }
        ]
      },
      "product": {
        "name": "Product",
        "list_enabled": true,
        "category": "REFERENCE",
        "type": "string",
        "supported_validations": [],
        "scope": [
          "company",
          "application"
        ]
      }
    }
  }
}
```
</details>

</details>









---


#### getResources
Get resources




```swift
platformClient.content.getResources() { (response, error) in
    // Use response
}
```






Use this API to retrieve the resources, such as products, collections, customers, selling locations, etc.

*Returned Response:*




[ResourcesSchema](#ResourcesSchema)

Success. Returns a JSON object of resources. Refer `ResourcesSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "resources": [
      {
        "name": "product",
        "key": "product",
        "definitions_count": 0
      },
      {
        "name": "Collection",
        "key": "collection",
        "definitions_count": 0
      },
      {
        "name": "Page",
        "key": "page",
        "definitions_count": 0
      },
      {
        "name": "Blog",
        "key": "blog",
        "definitions_count": 0
      },
      {
        "name": "Customer",
        "key": "customer",
        "definitions_count": 0
      },
      {
        "name": "Store",
        "key": "store",
        "definitions_count": 0
      }
    ]
  }
}
```
</details>

</details>









---


#### getCustomFieldDefinitions
Get custom fields definitions




```swift
platformClient.content.getCustomFieldDefinitions(pageNo: pageNo, pageSize: pageSize, resources: resources, types: types, search: search) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | String | yes |  |   
| pageSize | String | yes |  |   
| resources | String? | no |  |   
| types | String? | no |  |   
| search | String? | no |  |  



Use this API to retrieve the definitions of custom fields.

*Returned Response:*




[CustomFieldDefinitionsSchema](#CustomFieldDefinitionsSchema)

Success. Returns a list of custom fields definitions. Refer `CustomFieldDefinitionsSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "652e183347320aa8d8c28361",
        "creator": "company",
        "resource": "product",
        "name": "new meta object",
        "namespace": "custom",
        "key": "new-meta-object",
        "description": "",
        "type": "metaobject",
        "multi_value": false,
        "validations": [
          {
            "name": "metaobject_definition_id",
            "type": "string",
            "value": "652e1298b6ece12d06684c18"
          }
        ],
        "company_id": "2",
        "created_by": "5e5796c4fc10a0d133839372",
        "updated_by": "5e5796c4fc10a0d133839372",
        "required": false,
        "is_deleted": false,
        "created_at": "2023-10-17T05:14:27.960Z",
        "updated_at": "2023-10-17T05:14:27.960Z",
        "type_name": "Custom Object",
        "invalid_fields_count": 0
      },
      {
        "_id": "652826cd99822ff1f62cbf13",
        "creator": "company",
        "resource": "product",
        "name": "single image",
        "namespace": "custom",
        "key": "single-image",
        "description": "this is single",
        "type": "file",
        "multi_value": false,
        "validations": [
          {
            "name": "file_type_options",
            "type": "string_array",
            "value": [
              "image",
              "audio",
              "video",
              "document",
              "pdf"
            ]
          }
        ],
        "company_id": "2",
        "created_by": "5e5796c4fc10a0d133839372",
        "updated_by": "5e5796c4fc10a0d133839372",
        "required": false,
        "is_deleted": false,
        "created_at": "2023-10-12T17:03:09.868Z",
        "updated_at": "2023-10-12T17:03:09.868Z",
        "type_name": "File",
        "invalid_fields_count": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 15,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### createCustomFieldDefinition
Create custom field definition




```swift
platformClient.content.createCustomFieldDefinition(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CustomFieldDefinitionRequestSchema | yes | Request body |


Use this API to create a custom field definition for your application.

*Returned Response:*




[CustomFieldDefinitionDetailResSchema](#CustomFieldDefinitionDetailResSchema)

Custom field definition created.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success1</i></summary>

```json
{
  "value": {
    "creator": "application",
    "resource": "product",
    "name": "name",
    "namespace": "fname",
    "key": "fname",
    "description": "First name",
    "type": "string_single_line",
    "multi_value": false,
    "company_id": "1",
    "application_id": "000000000000000000000001",
    "created_by": "000000000000000000000001",
    "updated_by": "000000000000000000000001",
    "required": false,
    "is_deleted": false,
    "_id": "65369654d436ae0e54147e7b",
    "validations": [],
    "created_at": "2023-10-23T15:50:44.143Z",
    "updated_at": "2023-10-23T15:50:44.143Z"
  }
}
```
</details>

<details>
<summary><i>&nbsp; success2</i></summary>

```json
{
  "value": {
    "creator": "application",
    "resource": "product",
    "name": "name",
    "namespace": "fname",
    "key": "fname",
    "description": "First name",
    "type": "string_single_line",
    "multi_value": false,
    "company_id": "1",
    "application_id": "000000000000000000000001",
    "created_by": "000000000000000000000001",
    "updated_by": "000000000000000000000001",
    "required": false,
    "is_deleted": false,
    "_id": "65369654d436ae0e54147e7b",
    "validations": [],
    "created_at": "2023-10-23T15:50:44.143Z",
    "updated_at": "2023-10-23T15:50:44.143Z"
  }
}
```
</details>

</details>









---


#### getCustomFieldDefinition
Get custom fields definition by id




```swift
platformClient.content.getCustomFieldDefinition(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this API to retrieve the definitions of custom fields using definition_id.

*Returned Response:*




[CustomFieldDefinitionDetailResSchema](#CustomFieldDefinitionDetailResSchema)

Success. Returns a object of custom field definition. Refer `CustomFieldDefinitionsSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "652e183347320aa8d8c28361",
        "creator": "company",
        "resource": "product",
        "name": "new meta object",
        "namespace": "custom",
        "key": "new-meta-object",
        "description": "",
        "type": "metaobject",
        "multi_value": false,
        "validations": [
          {
            "name": "metaobject_definition_id",
            "type": "string",
            "value": "652e1298b6ece12d06684c18"
          }
        ],
        "company_id": "2",
        "created_by": "5e5796c4fc10a0d133839372",
        "updated_by": "5e5796c4fc10a0d133839372",
        "required": false,
        "is_deleted": false,
        "created_at": "2023-10-17T05:14:27.960Z",
        "updated_at": "2023-10-17T05:14:27.960Z",
        "type_name": "Custom Object",
        "invalid_fields_count": 0
      },
      {
        "_id": "652826cd99822ff1f62cbf13",
        "creator": "company",
        "resource": "product",
        "name": "single image",
        "namespace": "custom",
        "key": "single-image",
        "description": "this is single",
        "type": "file",
        "multi_value": false,
        "validations": [
          {
            "name": "file_type_options",
            "type": "string_array",
            "value": [
              "image",
              "audio",
              "video",
              "document",
              "pdf"
            ]
          }
        ],
        "company_id": "2",
        "created_by": "5e5796c4fc10a0d133839372",
        "updated_by": "5e5796c4fc10a0d133839372",
        "required": false,
        "is_deleted": false,
        "created_at": "2023-10-12T17:03:09.868Z",
        "updated_at": "2023-10-12T17:03:09.868Z",
        "type_name": "File",
        "invalid_fields_count": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 15,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### updateCustomFieldDefinition
Update custom field definition




```swift
platformClient.content.updateCustomFieldDefinition(definitionId: definitionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  
| body | CustomFieldDefinitionRequestSchema | yes | Request body |


Use this API to update a custom field definition for your application.

*Returned Response:*




[CustomFieldDefinitionDetailResSchema](#CustomFieldDefinitionDetailResSchema)

Custom field definition created.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "creator": "application",
    "resource": "product",
    "name": "name",
    "namespace": "fname",
    "key": "fname",
    "description": "First name",
    "type": "string_single_line",
    "multi_value": false,
    "company_id": "1",
    "application_id": "000000000000000000000001",
    "created_by": "000000000000000000000001",
    "updated_by": "000000000000000000000001",
    "required": false,
    "is_deleted": false,
    "_id": "65369654d436ae0e54147e7b",
    "validations": [],
    "created_at": "2023-10-23T15:50:44.143Z",
    "updated_at": "2023-10-23T15:50:44.143Z"
  }
}
```
</details>

</details>









---


#### deleteCustomFieldDefinition
Delete custom fields definition.




```swift
platformClient.content.deleteCustomFieldDefinition(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this API to delete the definitions of custom fields using definition_id. This will also delete related custom fields entries related to this definition.

*Returned Response:*




[CustomDataDeleteSchema](#CustomDataDeleteSchema)

Success. It will returns the message for delete successfully.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "Metafield definition deleted successfully"
  }
}
```
</details>

</details>









---


#### getCustomFields
Get list of custom fields of given resource




```swift
platformClient.content.getCustomFields(resource: resource) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| resource | String | yes |  |  



Use this API to retrieve the custom fields for given resource in param.

*Returned Response:*




[CustomFieldsResponseSchema](#CustomFieldsResponseSchema)

Success. Returns a list of custom fields. Refer `CustomFieldsResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "652f8c5b6c1643cbd1659d88",
        "namespace": "product_test_2",
        "key": "manufacturer",
        "resource": "product",
        "creator": "company",
        "value": [
          "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/general/free/original/NWt9CSoYbo-airtel_money.png",
          "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/general/free/original/QqkJBM4IQL-amazon-pay.png",
          "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/general/free/original/2Ed7Pk03Z-amex.png"
        ],
        "resource_id": "64bb987e9a3c4b6c29d676bc",
        "type": "file",
        "multi_value": true,
        "company_id": "1",
        "definition_id": "650c4ea3e0e7980d14c16c06",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "000000000000000000000001",
        "is_deleted": false,
        "created_at": "2023-10-18T07:42:19.551Z",
        "updated_at": "2023-10-18T07:42:19.551Z"
      },
      {
        "_id": "652f8b4628dd2571fe5e90d8",
        "namespace": "product_test_1",
        "key": "manufacturer",
        "resource": "product",
        "creator": "company",
        "value": [
          "this",
          "is",
          "testing"
        ],
        "resource_id": "64ba480fdf9cbe3a90b052f4",
        "type": "string_single_line",
        "multi_value": true,
        "company_id": "1",
        "definition_id": "650ae0d67f9c7b2a7d56b409",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "000000000000000000000001",
        "is_deleted": false,
        "created_at": "2023-10-18T07:37:42.797Z",
        "updated_at": "2023-10-18T07:37:42.797Z"
      },
      {
        "_id": "652f8b4628dd2571fe5e90d7",
        "namespace": "product_test",
        "key": "manufacturer",
        "resource": "product",
        "creator": "company",
        "value": [
          "kuldeep",
          "kumar",
          "harshwal"
        ],
        "resource_id": "64ba32fbdf9cbe3a90b052f0",
        "type": "string_single_line",
        "multi_value": true,
        "company_id": "1",
        "definition_id": "650ae0b27f9c7b2a7d56b407",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "000000000000000000000001",
        "is_deleted": false,
        "created_at": "2023-10-18T07:37:42.796Z",
        "updated_at": "2023-10-18T07:37:42.796Z"
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 20,
      "item_total": 3,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### getCustomFieldsByResourceId
Get list of custom fields of given resource and resource id




```swift
platformClient.content.getCustomFieldsByResourceId(resource: resource, resourceId: resourceId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| resource | String | yes |  |   
| resourceId | String | yes |  |  



Use this API to retrieve the custom fields for given resource in param.

*Returned Response:*




[CustomFieldsResponseByResourceIdSchema](#CustomFieldsResponseByResourceIdSchema)

Success. Returns a list of custom fields. Refer `CustomFieldsResponseByResourceIdSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "65705772a20cc45d3f2585b3",
        "namespace": "custom",
        "key": "designer-name",
        "resource": "product",
        "creator": "company",
        "value": [
          "ramsons"
        ],
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "definition_id": "65604cdb6a78c23f082c850b",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "bd7223b6727eb087987eece7",
        "is_deleted": false,
        "created_at": "2023-12-06T11:13:54.217Z",
        "updated_at": "2023-12-06T11:19:02.311Z",
        "updated_by": "bd7223b6727eb087987eece7"
      },
      {
        "_id": "65705772a20cc45d3f2585b4",
        "namespace": "custom",
        "key": "manufactures",
        "resource": "product",
        "creator": "company",
        "value": [
          "kartik"
        ],
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "definition_id": "655f53ddca37f5deb832a185",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "bd7223b6727eb087987eece7",
        "is_deleted": false,
        "created_at": "2023-12-06T11:13:54.218Z",
        "updated_at": "2023-12-06T11:19:02.311Z",
        "updated_by": "bd7223b6727eb087987eece7"
      },
      {
        "_id": "65705772a20cc45d3f2585b1",
        "namespace": "custom",
        "key": "product-designer",
        "resource": "product",
        "creator": "company",
        "value": [
          "65702b4574c5764716ee671d"
        ],
        "resource_id": "7612437",
        "type": "metaobject",
        "multi_value": true,
        "company_id": "2",
        "definition_id": "656d6bc9766f9511345091a6",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "bd7223b6727eb087987eece7",
        "is_deleted": false,
        "created_at": "2023-12-06T11:13:54.217Z",
        "updated_at": "2023-12-06T11:19:02.311Z",
        "updated_by": "bd7223b6727eb087987eece7"
      },
      {
        "_id": "65705772a20cc45d3f2585b2",
        "namespace": "custom",
        "key": "validation-check",
        "resource": "product",
        "creator": "company",
        "value": [
          "ram"
        ],
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "definition_id": "656866a30152b0584464d547",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "bd7223b6727eb087987eece7",
        "is_deleted": false,
        "created_at": "2023-12-06T11:13:54.217Z",
        "updated_at": "2023-12-06T11:19:02.311Z",
        "updated_by": "bd7223b6727eb087987eece7"
      }
    ]
  }
}
```
</details>

</details>









---


#### createCustomFieldByResourceId
Create custom field entries for gives resource and resource_id




```swift
platformClient.content.createCustomFieldByResourceId(resource: resource, resourceId: resourceId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| resource | String | yes |  |   
| resourceId | String | yes |  |  
| body | CustomFieldRequestSchema | yes | Request body |


Use this API to create the custom field entry for given resource and resource_id in param.

*Returned Response:*




[CustomFieldsResponseByResourceIdSchema](#CustomFieldsResponseByResourceIdSchema)

Success. Returns a list of custom fields. Refer `CustomFieldsResponseByResourceIdSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "65705772a20cc45d3f2585b1",
        "updated_by": "bd7223b6727eb087987eece7",
        "namespace": "custom",
        "key": "product-designer",
        "resource": "product",
        "resource_id": "7612437",
        "type": "metaobject",
        "multi_value": true,
        "company_id": "2",
        "creator": "company",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "definition_id": "656d6bc9766f9511345091a6",
        "value": [
          "65702b4574c5764716ee671d"
        ]
      },
      {
        "_id": "65705772a20cc45d3f2585b2",
        "updated_by": "bd7223b6727eb087987eece7",
        "namespace": "custom",
        "key": "validation-check",
        "resource": "product",
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "creator": "company",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "definition_id": "656866a30152b0584464d547",
        "value": [
          "ram"
        ]
      },
      {
        "_id": "65705772a20cc45d3f2585b3",
        "updated_by": "bd7223b6727eb087987eece7",
        "namespace": "custom",
        "key": "designer-name",
        "resource": "product",
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "creator": "company",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "definition_id": "65604cdb6a78c23f082c850b",
        "value": [
          "ramsons"
        ]
      },
      {
        "_id": "65705772a20cc45d3f2585b4",
        "updated_by": "bd7223b6727eb087987eece7",
        "namespace": "custom",
        "key": "manufactures",
        "resource": "product",
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "creator": "company",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "definition_id": "655f53ddca37f5deb832a185",
        "value": [
          "kartik"
        ]
      }
    ]
  }
}
```
</details>

</details>









---


#### createCustomObjectDefinition
Create custom object definition




```swift
platformClient.content.createCustomObjectDefinition(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CustomObjectDefinitionRequestSchema | yes | Request body |


Use this API to create custom object defintion

*Returned Response:*




[CustomObjectDefinitionSchema](#CustomObjectDefinitionSchema)

Success. Returns the saved custom object defintion




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "656db530766f951134509542",
    "name": "customObject1",
    "type": "customobject1",
    "display_name_key": "cocustomfield2",
    "description": "",
    "creator": "company",
    "created_by": "bd7223b6727eb087987eece7",
    "updated_by": "bd7223b6727eb087987eece7",
    "field_definitions": [
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "coCustomField1",
        "namespace": "customobject1",
        "key": "cocustomfield1",
        "description": "",
        "type": "string_single_line",
        "multi_value": false,
        "validations": [
          {
            "name": "min",
            "type": "integer",
            "value": 2
          },
          {
            "name": "max",
            "type": "integer",
            "value": 10
          },
          {
            "name": "regex",
            "type": "string",
            "value": "^[a-zA-Z]+$"
          }
        ],
        "company_id": "1",
        "created_by": "bd7223b6727eb087987eece7",
        "metaobject_definition_id": "656db530766f951134509542",
        "required": false,
        "is_deleted": false,
        "_id": "656db530766f951134509545",
        "created_at": "2023-12-04T11:17:04.153Z",
        "updated_at": "2023-12-04T11:17:04.153Z"
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "coCustomField2",
        "namespace": "customobject1",
        "key": "cocustomfield2",
        "description": "this is custom field 2 of custom object",
        "type": "string_single_line",
        "multi_value": false,
        "validations": [
          {
            "name": "min",
            "type": "integer",
            "value": 1
          },
          {
            "name": "max",
            "type": "integer",
            "value": 100
          }
        ],
        "company_id": "1",
        "created_by": "bd7223b6727eb087987eece7",
        "metaobject_definition_id": "656db530766f951134509542",
        "required": false,
        "is_deleted": false,
        "_id": "656db530766f951134509546",
        "created_at": "2023-12-04T11:17:04.154Z",
        "updated_at": "2023-12-04T11:17:04.154Z"
      }
    ]
  }
}
```
</details>

</details>









---


#### getCustomObjectDefinitions
Get custom object definitions




```swift
platformClient.content.getCustomObjectDefinitions(pageNo: pageNo, pageSize: pageSize, search: search) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | String | yes |  |   
| pageSize | String | yes |  |   
| search | String? | no |  |  



Use this API to retrieve the custom object definitions

*Returned Response:*




[CustomObjectDefinitionsSchema](#CustomObjectDefinitionsSchema)

Success. Returns a list custom object definitions.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "656db530766f951134509542",
        "name": "customObject1",
        "type": "customobject1",
        "updated_at": "2023-12-04T11:17:04.136Z",
        "entries_count": 0,
        "fields_count": 2
      },
      {
        "_id": "656db2d9766f95113450952b",
        "name": "sample",
        "type": "sample",
        "updated_at": "2023-12-04T11:07:05.705Z",
        "entries_count": 0,
        "fields_count": 1
      },
      {
        "_id": "656495b58d3278a7c24260f8",
        "name": "address",
        "type": "address",
        "updated_at": "2023-11-27T13:12:21.999Z",
        "entries_count": 1,
        "fields_count": 3
      },
      {
        "_id": "655c706ad5ff69fd3b95a1d9",
        "name": "coCustomObject",
        "type": "cocustomobject",
        "updated_at": "2023-11-21T08:55:06.013Z",
        "entries_count": 0,
        "fields_count": 2
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 4,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### getCustomObjectDefinition
get custom object definition by id




```swift
platformClient.content.getCustomObjectDefinition(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this API to update a custom object definition for your application.

*Returned Response:*




[CustomObjectDefinitionSchema](#CustomObjectDefinitionSchema)

Custom object definition details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "656d67de766f95113450917b",
    "name": "Designer",
    "type": "designer",
    "display_name_key": "name",
    "description": "",
    "creator": "company",
    "created_by": "9759643b65ebc6bacb5275f5",
    "updated_by": "bd7223b6727eb087987eece7",
    "field_definitions": [
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "city2",
        "namespace": "designer",
        "key": "city",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "mobile",
        "namespace": "designer",
        "key": "mobile",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "name",
        "namespace": "designer",
        "key": "name",
        "type": "string_single_line",
        "description": "This is name of designer",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": true
      }
    ]
  }
}
```
</details>

</details>









---


#### updateCustomObjectDefinition
Update custom object definition




```swift
platformClient.content.updateCustomObjectDefinition(definitionId: definitionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  
| body | CustomObjectDefinitionUpdateRequestSchema | yes | Request body |


Use this API to update a custom object definition for your application.

*Returned Response:*




[CustomObjectDefinitionSchema](#CustomObjectDefinitionSchema)

Custom field definition updated.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "656d67de766f95113450917b",
    "name": "Designer",
    "type": "designer",
    "display_name_key": "name",
    "description": "",
    "creator": "company",
    "created_by": "9759643b65ebc6bacb5275f5",
    "updated_by": "bd7223b6727eb087987eece7",
    "field_definitions": [
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "city2",
        "namespace": "designer",
        "key": "city",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "mobile",
        "namespace": "designer",
        "key": "mobile",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "name",
        "namespace": "designer",
        "key": "name",
        "type": "string_single_line",
        "description": "This is name of designer",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": true
      }
    ]
  }
}
```
</details>

</details>









---


#### deleteCustomObjectDefinition
delete custom object definition by id




```swift
platformClient.content.deleteCustomObjectDefinition(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this API to delete a custom object definition and related data for your application.

*Returned Response:*




[CustomObjectDefinitionDeleteResponseSchema](#CustomObjectDefinitionDeleteResponseSchema)

Custom object definition details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "MetaObjectDefinition deleted successfully"
  }
}
```
</details>

</details>









---


#### getCustomObjects
Get list of custom objects




```swift
platformClient.content.getCustomObjects(definitionId: definitionId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String? | no |  |   
| pageNo | String | yes |  |   
| pageSize | String | yes |  |  



Use this API to retrieve the custom objects.

*Returned Response:*




[CustomObjectsSchema](#CustomObjectsSchema)

Success. Returns a list of custom objects. Refer `CustomObjectsSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "653929f012376081aafa90f1",
        "definition_id": "653907ced878d53c1a502d92",
        "status": "active",
        "updated_at": "2023-10-25T14:45:04.446Z",
        "display_name": "painter #653929f012376081aafa90f1",
        "definition": {
          "_id": "653907ced878d53c1a502d92",
          "name": "painter",
          "type": "painter"
        },
        "references": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### createCustomObject
Create custom object entries




```swift
platformClient.content.createCustomObject(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CustomObjectRequestSchema | yes | Request body |


Use this API to create the custom object entry.

*Returned Response:*




[CustomObjectSchema](#CustomObjectSchema)

Success. Returns a list of custom objects. Refer `CustomObjectSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "65392bd912376081aafa90ff",
    "creator": "application",
    "company_id": "1",
    "application_id": "000000000000000000000001",
    "created_by": "000000000000000000000001",
    "updated_by": "000000000000000000000001",
    "status": "active",
    "type": "painter",
    "display_name": "painter #65392bd912376081aafa90ff",
    "definition_id": "653907ced878d53c1a502d92",
    "fields": [
      {
        "_id": "65392bd912376081aafa9103",
        "namespace": "painter",
        "key": "name",
        "resource": "metaobject",
        "resource_id": "65392bd912376081aafa90ff",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "1",
        "application_id": "000000000000000000000001",
        "creator": "application",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "metaobject_definition_id": "653907ced878d53c1a502d92",
        "definition_id": "653907ced878d53c1a502d95",
        "value": [
          "Batman"
        ],
        "created_by": "000000000000000000000001"
      },
      {
        "_id": "65392bd912376081aafa9104",
        "namespace": "painter",
        "key": "age",
        "resource": "metaobject",
        "resource_id": "65392bd912376081aafa90ff",
        "type": "integer",
        "multi_value": false,
        "company_id": "1",
        "application_id": "000000000000000000000001",
        "creator": "application",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "metaobject_definition_id": "653907ced878d53c1a502d92",
        "definition_id": "653907ced878d53c1a502d96",
        "value": [
          50
        ],
        "created_by": "000000000000000000000001"
      }
    ]
  }
}
```
</details>

</details>









---


#### getCustomObject
Get custom object details




```swift
platformClient.content.getCustomObject(metaobjectId: metaobjectId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| metaobjectId | String | yes |  |  



Use this API to retrieve the custom object details and their fields details and definitions and references.

*Returned Response:*




[CustomObjectByIdSchema](#CustomObjectByIdSchema)

Success. Returns a custom object. Refer `CustomObjectByIdSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "653929f012376081aafa90f1",
    "status": "active",
    "display_name": "painter #653929f012376081aafa90f1",
    "definition": {
      "_id": "653907ced878d53c1a502d92",
      "name": "painter",
      "type": "painter"
    },
    "references": [],
    "fields": [
      {
        "_id": "653929f012376081aafa90f5",
        "key": "name",
        "value": [
          "Bruce Wayne"
        ],
        "type": "string_single_line",
        "definition_id": "653907ced878d53c1a502d95"
      },
      {
        "_id": "653929f012376081aafa90f6",
        "key": "age",
        "value": [
          5
        ],
        "type": "integer",
        "definition_id": "653907ced878d53c1a502d96"
      }
    ]
  }
}
```
</details>

</details>









---


#### deleteCustomObject
Delete custom object




```swift
platformClient.content.deleteCustomObject(metaobjectId: metaobjectId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| metaobjectId | String | yes |  |  



Use this API to delete the custom object entry by id. This will also delete related custom fields entries related to this custom object.

*Returned Response:*




[CustomDataDeleteSchema](#CustomDataDeleteSchema)

Success. It will returns the message for delete successfully.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "Metafield definition deleted successfully"
  }
}
```
</details>

</details>









---


#### updateCustomObject
Update custom object details




```swift
platformClient.content.updateCustomObject(metaobjectId: metaobjectId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| metaobjectId | String | yes |  |  
| body | CustomObjectRequestSchema | yes | Request body |


Use this API to update a custom object detail for your application.

*Returned Response:*




[CustomObjectByIdSchema](#CustomObjectByIdSchema)

Custom field definition created.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "656d67de766f95113450917b",
    "name": "Designer",
    "type": "designer",
    "display_name_key": "name",
    "description": "",
    "creator": "company",
    "created_by": "9759643b65ebc6bacb5275f5",
    "updated_by": "bd7223b6727eb087987eece7",
    "field_definitions": [
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "city2",
        "namespace": "designer",
        "key": "city",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "mobile",
        "namespace": "designer",
        "key": "mobile",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "name",
        "namespace": "designer",
        "key": "name",
        "type": "string_single_line",
        "description": "This is name of designer",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": true
      }
    ]
  }
}
```
</details>

</details>









---


#### getJobs
Fetch bulk import and export job list.




```swift
platformClient.content.getJobs(page: page, pageSize: pageSize, actionType: actionType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| page | String | yes |  |   
| pageSize | String | yes |  |   
| actionType | String | yes |  |  



Use this api to get list of jobs of bulk import and exports

*Returned Response:*




[CustomObjectBulkEntry](#CustomObjectBulkEntry)

Success. Returns all bulk entries history. 




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "6570124da20cc45d3f2582a7",
        "jobs": [
          "2311"
        ],
        "finished_jobs": [
          "2311"
        ],
        "error_jobs": [],
        "errors_occured": [],
        "company_id": "2",
        "creator": "company",
        "URL": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/custom-data/CustomObject-designer-import-6570124da20cc45d3f2582a7.csv",
        "status": "completed",
        "action_type": "upload",
        "entity": "metaobject",
        "error_url": "",
        "finished_count": 0,
        "error_count": 0,
        "success_count": 0,
        "total_jobs": 1,
        "meta": {
          "mo_total_count": 2,
          "mo_success_count": 2,
          "mo_error_count": 0,
          "mo_defintion_type": "designer"
        },
        "created_by": "bd7223b6727eb087987eece7",
        "created_at": "2023-12-06T06:18:53.219Z",
        "updated_at": "2023-12-06T06:20:23.560Z",
        "id": "6570124da20cc45d3f2582a7"
      },
      {
        "_id": "6558b8c49340c43a7015b4af",
        "jobs": [
          "2297"
        ],
        "finished_jobs": [
          "2297"
        ],
        "error_jobs": [],
        "errors_occured": [],
        "company_id": "2",
        "creator": "company",
        "URL": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/custom-data/CustomObject-kuldeep-custom-import-6558b8c49340c43a7015b4af.csv",
        "status": "completed",
        "action_type": "upload",
        "entity": "metaobject",
        "error_url": "",
        "finished_count": 0,
        "error_count": 0,
        "success_count": 0,
        "total_jobs": 1,
        "meta": {
          "mo_total_count": 1,
          "mo_success_count": 0,
          "mo_error_count": 1,
          "mo_defintion_type": "kuldeep-custom"
        },
        "created_by": "9759643b65ebc6bacb5275f5",
        "created_at": "2023-11-18T13:14:44.360Z",
        "updated_at": "2023-11-18T13:17:19.765Z",
        "id": "6558b8c49340c43a7015b4af"
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 20,
      "item_total": 2,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### importCustomObjectEntries
Bulk custom object entries upload




```swift
platformClient.content.importCustomObjectEntries(definitionId: definitionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  
| body | CustomObjectBulkSchema | yes | Request body |


Use this API to upload custom object entries

*Returned Response:*




[CustomObjectEntryBulkUploadResponse](#CustomObjectEntryBulkUploadResponse)

Success. Returns confirmation that the upload has started




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "message": "Bulk upload of Meta objects started successfully",
    "task_id": "6570124da20cc45d3f2582a7"
  }
}
```
</details>

</details>









---


#### exportCustomObjectEntries
Initiate download for bulk custom object entries




```swift
platformClient.content.exportCustomObjectEntries(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this api to initiate download of bulk entries

*Returned Response:*




[CustomObjectBulkEntryInitiateDownload](#CustomObjectBulkEntryInitiateDownload)

Success. Initiates bulk entries download 




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "message": "Bulk download of Meta Objects started successfully",
    "task_id": "65702d2aa20cc45d3f258358"
  }
}
```
</details>

</details>









---


#### sampleCustomObjectBulkEntry
download sample for custom object bulk entry




```swift
platformClient.content.sampleCustomObjectBulkEntry(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this api to get sample csv file 

*Returned Response:*




[String](#String)

Success. Get headers of custom object definition




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": "city,mobile,name,custom_object_status"
}
```
</details>

</details>









---


#### getAppCustomFieldTypes
Get custom field types




```swift
platformClient.application("<APPLICATION_ID>").content.getAppCustomFieldTypes() { (response, error) in
    // Use response
}
```






Use this API to retrieve the custom field types 

*Returned Response:*




[CustomObjectByIdSchema](#CustomObjectByIdSchema)

Success. Returns all custom field types. 




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "metafield_types": {
      "string_single_line": {
        "name": "Single Line Text",
        "list_enabled": true,
        "category": "TEXT",
        "type": "string",
        "supported_validations": [
          {
            "name": "min",
            "type": "integer",
            "display": "Minimum Characters"
          },
          {
            "name": "max",
            "type": "integer",
            "display": "Maximum Characters"
          },
          {
            "name": "regex",
            "type": "string",
            "display": "Regular Expression",
            "meta": {
              "examples": [
                {
                  "name": "Alphabet Characters",
                  "value": "^[a-zA-Z]+$"
                },
                {
                  "name": "Alphanumeric Characters",
                  "value": "^[a-zA-Z0-9]+$"
                },
                {
                  "name": "Numeric Characters",
                  "value": "^[0-9]+$"
                },
                {
                  "name": "Email Address",
                  "value": "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
                }
              ]
            }
          },
          {
            "name": "choices",
            "type": "string_array",
            "display": "Choices"
          }
        ]
      },
      "string_multi_line": {
        "name": "Multi Line Text",
        "list_enabled": true,
        "category": "TEXT",
        "type": "string",
        "supported_validations": [
          {
            "name": "min",
            "type": "integer",
            "display": "Minimum Characters"
          },
          {
            "name": "max",
            "type": "integer",
            "display": "Maximum Characters"
          }
        ]
      },
      "dropdown": {
        "name": "Dropdown",
        "list_enabled": true,
        "category": "TEXT",
        "type": "string",
        "supported_validations": [
          {
            "name": "choices",
            "type": "string_array",
            "display": "Choices",
            "required": true
          }
        ]
      },
      "integer": {
        "name": "Integer",
        "list_enabled": true,
        "type": "integer",
        "category": "NUMBER",
        "supported_validations": [
          {
            "name": "min",
            "type": "integer",
            "display": "Minimum Value"
          },
          {
            "name": "max",
            "type": "integer",
            "display": "Maximum Value"
          },
          {
            "name": "choices",
            "type": "integer_array",
            "display": "Choices"
          }
        ]
      },
      "float_type": {
        "name": "Decimal",
        "list_enabled": true,
        "type": "float",
        "category": "NUMBER",
        "supported_validations": [
          {
            "name": "min",
            "type": "float",
            "display": "Minimum Value"
          },
          {
            "name": "max",
            "type": "float",
            "display": "Maximum Value"
          },
          {
            "name": "choices",
            "type": "float_array",
            "display": "Choices"
          }
        ]
      },
      "boolean_type": {
        "name": "Boolean",
        "category": "TRUE_FALSE",
        "list_enabled": false,
        "type": "boolean",
        "supported_validations": []
      },
      "date": {
        "name": "Date",
        "list_enabled": true,
        "category": "DATETIME",
        "type": "date",
        "supported_validations": [
          {
            "name": "min",
            "type": "date",
            "display": "From Date"
          },
          {
            "name": "max",
            "type": "date",
            "display": "To Date"
          }
        ]
      },
      "datetime": {
        "name": "Date - Time",
        "category": "DATETIME",
        "list_enabled": true,
        "type": "datetime",
        "supported_validations": [
          {
            "name": "min",
            "type": "date",
            "display": "From Date & Time"
          },
          {
            "name": "max",
            "type": "date",
            "display": "To Date & Time"
          }
        ]
      },
      "json": {
        "name": "JSON",
        "list_enabled": false,
        "category": "ADVANCED",
        "type": "json",
        "supported_validations": [
          {
            "name": "schema",
            "type": "json",
            "display": "JSON Schema"
          }
        ]
      },
      "file": {
        "name": "File",
        "category": "REFERENCE",
        "list_enabled": true,
        "type": "string",
        "supported_validations": [
          {
            "name": "file_type_options",
            "type": "string_array",
            "meta": {
              "options": [
                {
                  "image": {
                    "supported_types": [
                      "jpeg",
                      "jpg",
                      "png",
                      "svg+xml",
                      "tiff",
                      "webp",
                      "gif"
                    ],
                    "max_size": 20971520
                  },
                  "video": {
                    "supported_types": [
                      "x-flv",
                      "mp4",
                      "x-mpegURL",
                      "MP2T",
                      "3gpp",
                      "/quicktime",
                      "x-msvideo",
                      "x-ms-wmv",
                      "webm"
                    ],
                    "max_size": 1048576000
                  }
                }
              ]
            }
          }
        ]
      },
      "url": {
        "name": "URL",
        "list_enabled": true,
        "type": "string",
        "supported_validations": [
          {
            "name": "allowed_domains",
            "display": "Allowed Domains",
            "type": "string_array"
          }
        ]
      },
      "metaobject": {
        "name": "Custom Object",
        "list_enabled": true,
        "category": "REFERENCE",
        "type": "string",
        "supported_validations": [
          {
            "name": "metaobject_definition_id",
            "display": "Reference",
            "type": "string",
            "required": true
          }
        ]
      },
      "product": {
        "name": "Product",
        "list_enabled": true,
        "category": "REFERENCE",
        "type": "string",
        "supported_validations": [],
        "scope": [
          "company",
          "application"
        ]
      }
    }
  }
}
```
</details>

</details>









---


#### getAppResources
Get resources




```swift
platformClient.application("<APPLICATION_ID>").content.getAppResources() { (response, error) in
    // Use response
}
```






Use this API to retrieve the resources, such as products, collections, customers, selling locations, etc.

*Returned Response:*




[ResourcesSchema](#ResourcesSchema)

Success. Returns a JSON object of resources. Refer `ResourcesSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "resources": [
      {
        "name": "product",
        "key": "product",
        "definitions_count": 0
      },
      {
        "name": "Collection",
        "key": "collection",
        "definitions_count": 0
      },
      {
        "name": "Page",
        "key": "page",
        "definitions_count": 0
      },
      {
        "name": "Blog",
        "key": "blog",
        "definitions_count": 0
      },
      {
        "name": "Customer",
        "key": "customer",
        "definitions_count": 0
      },
      {
        "name": "Store",
        "key": "store",
        "definitions_count": 0
      }
    ]
  }
}
```
</details>

</details>









---


#### getAppCustomFieldDefinitions
Get custom fields definitions




```swift
platformClient.application("<APPLICATION_ID>").content.getAppCustomFieldDefinitions(pageNo: pageNo, pageSize: pageSize, resources: resources, types: types, search: search) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | String | yes |  |   
| pageSize | String | yes |  |   
| resources | String? | no |  |   
| types | String? | no |  |   
| search | String? | no |  |  



Use this API to retrieve the definitions of custom fields.

*Returned Response:*




[CustomFieldDefinitionsSchema](#CustomFieldDefinitionsSchema)

Success. Returns a list of custom fields definitions. Refer `CustomFieldDefinitionsSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "652e183347320aa8d8c28361",
        "creator": "company",
        "resource": "product",
        "name": "new meta object",
        "namespace": "custom",
        "key": "new-meta-object",
        "description": "",
        "type": "metaobject",
        "multi_value": false,
        "validations": [
          {
            "name": "metaobject_definition_id",
            "type": "string",
            "value": "652e1298b6ece12d06684c18"
          }
        ],
        "company_id": "2",
        "created_by": "5e5796c4fc10a0d133839372",
        "updated_by": "5e5796c4fc10a0d133839372",
        "required": false,
        "is_deleted": false,
        "created_at": "2023-10-17T05:14:27.960Z",
        "updated_at": "2023-10-17T05:14:27.960Z",
        "type_name": "Custom Object",
        "invalid_fields_count": 0
      },
      {
        "_id": "652826cd99822ff1f62cbf13",
        "creator": "company",
        "resource": "product",
        "name": "single image",
        "namespace": "custom",
        "key": "single-image",
        "description": "this is single",
        "type": "file",
        "multi_value": false,
        "validations": [
          {
            "name": "file_type_options",
            "type": "string_array",
            "value": [
              "image",
              "audio",
              "video",
              "document",
              "pdf"
            ]
          }
        ],
        "company_id": "2",
        "created_by": "5e5796c4fc10a0d133839372",
        "updated_by": "5e5796c4fc10a0d133839372",
        "required": false,
        "is_deleted": false,
        "created_at": "2023-10-12T17:03:09.868Z",
        "updated_at": "2023-10-12T17:03:09.868Z",
        "type_name": "File",
        "invalid_fields_count": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 15,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### createAppCustomFieldDefinition
Create custom field definition




```swift
platformClient.application("<APPLICATION_ID>").content.createAppCustomFieldDefinition(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CustomFieldDefinitionRequestSchema | yes | Request body |


Use this API to create a custom field definition for your application.

*Returned Response:*




[CustomFieldDefinitionDetailResSchema](#CustomFieldDefinitionDetailResSchema)

Custom field definition created.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success1</i></summary>

```json
{
  "value": {
    "creator": "application",
    "resource": "product",
    "name": "name",
    "namespace": "fname",
    "key": "fname",
    "description": "First name",
    "type": "string_single_line",
    "multi_value": false,
    "company_id": "1",
    "application_id": "000000000000000000000001",
    "created_by": "000000000000000000000001",
    "updated_by": "000000000000000000000001",
    "required": false,
    "is_deleted": false,
    "_id": "65369654d436ae0e54147e7b",
    "validations": [],
    "created_at": "2023-10-23T15:50:44.143Z",
    "updated_at": "2023-10-23T15:50:44.143Z"
  }
}
```
</details>

<details>
<summary><i>&nbsp; success2</i></summary>

```json
{
  "value": {
    "creator": "application",
    "resource": "product",
    "name": "name",
    "namespace": "fname",
    "key": "fname",
    "description": "First name",
    "type": "string_single_line",
    "multi_value": false,
    "company_id": "1",
    "application_id": "000000000000000000000001",
    "created_by": "000000000000000000000001",
    "updated_by": "000000000000000000000001",
    "required": false,
    "is_deleted": false,
    "_id": "65369654d436ae0e54147e7b",
    "validations": [],
    "created_at": "2023-10-23T15:50:44.143Z",
    "updated_at": "2023-10-23T15:50:44.143Z"
  }
}
```
</details>

</details>









---


#### getAppCustomFieldDefinition
Get custom fields definition by id




```swift
platformClient.application("<APPLICATION_ID>").content.getAppCustomFieldDefinition(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this API to retrieve the definitions of custom fields using definition_id.

*Returned Response:*




[CustomFieldDefinitionDetailResSchema](#CustomFieldDefinitionDetailResSchema)

Success. Returns a object of custom field definition. Refer `CustomFieldDefinitionsSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "652e183347320aa8d8c28361",
        "creator": "company",
        "resource": "product",
        "name": "new meta object",
        "namespace": "custom",
        "key": "new-meta-object",
        "description": "",
        "type": "metaobject",
        "multi_value": false,
        "validations": [
          {
            "name": "metaobject_definition_id",
            "type": "string",
            "value": "652e1298b6ece12d06684c18"
          }
        ],
        "company_id": "2",
        "created_by": "5e5796c4fc10a0d133839372",
        "updated_by": "5e5796c4fc10a0d133839372",
        "required": false,
        "is_deleted": false,
        "created_at": "2023-10-17T05:14:27.960Z",
        "updated_at": "2023-10-17T05:14:27.960Z",
        "type_name": "Custom Object",
        "invalid_fields_count": 0
      },
      {
        "_id": "652826cd99822ff1f62cbf13",
        "creator": "company",
        "resource": "product",
        "name": "single image",
        "namespace": "custom",
        "key": "single-image",
        "description": "this is single",
        "type": "file",
        "multi_value": false,
        "validations": [
          {
            "name": "file_type_options",
            "type": "string_array",
            "value": [
              "image",
              "audio",
              "video",
              "document",
              "pdf"
            ]
          }
        ],
        "company_id": "2",
        "created_by": "5e5796c4fc10a0d133839372",
        "updated_by": "5e5796c4fc10a0d133839372",
        "required": false,
        "is_deleted": false,
        "created_at": "2023-10-12T17:03:09.868Z",
        "updated_at": "2023-10-12T17:03:09.868Z",
        "type_name": "File",
        "invalid_fields_count": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 15,
      "has_next": true
    }
  }
}
```
</details>

</details>









---


#### updateAppCustomFieldDefinition
Update custom field definition




```swift
platformClient.application("<APPLICATION_ID>").content.updateAppCustomFieldDefinition(definitionId: definitionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  
| body | CustomFieldDefinitionRequestSchema | yes | Request body |


Use this API to update a custom field definition for your application.

*Returned Response:*




[CustomFieldDefinitionDetailResSchema](#CustomFieldDefinitionDetailResSchema)

Custom field definition created.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "creator": "application",
    "resource": "product",
    "name": "name",
    "namespace": "fname",
    "key": "fname",
    "description": "First name",
    "type": "string_single_line",
    "multi_value": false,
    "company_id": "1",
    "application_id": "000000000000000000000001",
    "created_by": "000000000000000000000001",
    "updated_by": "000000000000000000000001",
    "required": false,
    "is_deleted": false,
    "_id": "65369654d436ae0e54147e7b",
    "validations": [],
    "created_at": "2023-10-23T15:50:44.143Z",
    "updated_at": "2023-10-23T15:50:44.143Z"
  }
}
```
</details>

</details>









---


#### deleteAppCustomFieldDefinition
Delete custom fields definition.




```swift
platformClient.application("<APPLICATION_ID>").content.deleteAppCustomFieldDefinition(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this API to delete the definitions of custom fields using definition_id. This will also delete related custom fields entries related to this definition.

*Returned Response:*




[CustomDataDeleteSchema](#CustomDataDeleteSchema)

Success. It will returns the message for delete successfully.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "Metafield definition deleted successfully"
  }
}
```
</details>

</details>









---


#### getAppCustomFields
Get list of custom fields of given resource




```swift
platformClient.application("<APPLICATION_ID>").content.getAppCustomFields(resource: resource) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| resource | String | yes |  |  



Use this API to retrieve the custom fields for given resource in param.

*Returned Response:*




[CustomFieldsResponseSchema](#CustomFieldsResponseSchema)

Success. Returns a list of custom fields. Refer `CustomFieldsResponseSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "652f8c5b6c1643cbd1659d88",
        "namespace": "product_test_2",
        "key": "manufacturer",
        "resource": "product",
        "creator": "company",
        "value": [
          "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/general/free/original/NWt9CSoYbo-airtel_money.png",
          "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/general/free/original/QqkJBM4IQL-amazon-pay.png",
          "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/general/free/original/2Ed7Pk03Z-amex.png"
        ],
        "resource_id": "64bb987e9a3c4b6c29d676bc",
        "type": "file",
        "multi_value": true,
        "company_id": "1",
        "definition_id": "650c4ea3e0e7980d14c16c06",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "000000000000000000000001",
        "is_deleted": false,
        "created_at": "2023-10-18T07:42:19.551Z",
        "updated_at": "2023-10-18T07:42:19.551Z"
      },
      {
        "_id": "652f8b4628dd2571fe5e90d8",
        "namespace": "product_test_1",
        "key": "manufacturer",
        "resource": "product",
        "creator": "company",
        "value": [
          "this",
          "is",
          "testing"
        ],
        "resource_id": "64ba480fdf9cbe3a90b052f4",
        "type": "string_single_line",
        "multi_value": true,
        "company_id": "1",
        "definition_id": "650ae0d67f9c7b2a7d56b409",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "000000000000000000000001",
        "is_deleted": false,
        "created_at": "2023-10-18T07:37:42.797Z",
        "updated_at": "2023-10-18T07:37:42.797Z"
      },
      {
        "_id": "652f8b4628dd2571fe5e90d7",
        "namespace": "product_test",
        "key": "manufacturer",
        "resource": "product",
        "creator": "company",
        "value": [
          "kuldeep",
          "kumar",
          "harshwal"
        ],
        "resource_id": "64ba32fbdf9cbe3a90b052f0",
        "type": "string_single_line",
        "multi_value": true,
        "company_id": "1",
        "definition_id": "650ae0b27f9c7b2a7d56b407",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "000000000000000000000001",
        "is_deleted": false,
        "created_at": "2023-10-18T07:37:42.796Z",
        "updated_at": "2023-10-18T07:37:42.796Z"
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 20,
      "item_total": 3,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### getAppCustomFieldsByResourceId
Get list of custom fields of given resource and resource id




```swift
platformClient.application("<APPLICATION_ID>").content.getAppCustomFieldsByResourceId(resource: resource, resourceId: resourceId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| resource | String | yes |  |   
| resourceId | String | yes |  |  



Use this API to retrieve the custom fields for given resource in param.

*Returned Response:*




[CustomFieldsResponseByResourceIdSchema](#CustomFieldsResponseByResourceIdSchema)

Success. Returns a list of custom fields. Refer `CustomFieldsResponseByResourceIdSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "65705772a20cc45d3f2585b3",
        "namespace": "custom",
        "key": "designer-name",
        "resource": "product",
        "creator": "company",
        "value": [
          "ramsons"
        ],
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "definition_id": "65604cdb6a78c23f082c850b",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "bd7223b6727eb087987eece7",
        "is_deleted": false,
        "created_at": "2023-12-06T11:13:54.217Z",
        "updated_at": "2023-12-06T11:19:02.311Z",
        "updated_by": "bd7223b6727eb087987eece7"
      },
      {
        "_id": "65705772a20cc45d3f2585b4",
        "namespace": "custom",
        "key": "manufactures",
        "resource": "product",
        "creator": "company",
        "value": [
          "kartik"
        ],
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "definition_id": "655f53ddca37f5deb832a185",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "bd7223b6727eb087987eece7",
        "is_deleted": false,
        "created_at": "2023-12-06T11:13:54.218Z",
        "updated_at": "2023-12-06T11:19:02.311Z",
        "updated_by": "bd7223b6727eb087987eece7"
      },
      {
        "_id": "65705772a20cc45d3f2585b1",
        "namespace": "custom",
        "key": "product-designer",
        "resource": "product",
        "creator": "company",
        "value": [
          "65702b4574c5764716ee671d"
        ],
        "resource_id": "7612437",
        "type": "metaobject",
        "multi_value": true,
        "company_id": "2",
        "definition_id": "656d6bc9766f9511345091a6",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "bd7223b6727eb087987eece7",
        "is_deleted": false,
        "created_at": "2023-12-06T11:13:54.217Z",
        "updated_at": "2023-12-06T11:19:02.311Z",
        "updated_by": "bd7223b6727eb087987eece7"
      },
      {
        "_id": "65705772a20cc45d3f2585b2",
        "namespace": "custom",
        "key": "validation-check",
        "resource": "product",
        "creator": "company",
        "value": [
          "ram"
        ],
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "definition_id": "656866a30152b0584464d547",
        "has_invalid_values": false,
        "invalid_value_errors": [],
        "created_by": "bd7223b6727eb087987eece7",
        "is_deleted": false,
        "created_at": "2023-12-06T11:13:54.217Z",
        "updated_at": "2023-12-06T11:19:02.311Z",
        "updated_by": "bd7223b6727eb087987eece7"
      }
    ]
  }
}
```
</details>

</details>









---


#### createAppCustomFieldByResourceId
Create custom field entries for gives resource and resource_id




```swift
platformClient.application("<APPLICATION_ID>").content.createAppCustomFieldByResourceId(resource: resource, resourceId: resourceId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| resource | String | yes |  |   
| resourceId | String | yes |  |  
| body | CustomFieldRequestSchema | yes | Request body |


Use this API to create the custom field entry for given resource and resource_id in param.

*Returned Response:*




[CustomFieldsResponseByResourceIdSchema](#CustomFieldsResponseByResourceIdSchema)

Success. Returns a list of custom fields. Refer `CustomFieldsResponseByResourceIdSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "65705772a20cc45d3f2585b1",
        "updated_by": "bd7223b6727eb087987eece7",
        "namespace": "custom",
        "key": "product-designer",
        "resource": "product",
        "resource_id": "7612437",
        "type": "metaobject",
        "multi_value": true,
        "company_id": "2",
        "creator": "company",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "definition_id": "656d6bc9766f9511345091a6",
        "value": [
          "65702b4574c5764716ee671d"
        ]
      },
      {
        "_id": "65705772a20cc45d3f2585b2",
        "updated_by": "bd7223b6727eb087987eece7",
        "namespace": "custom",
        "key": "validation-check",
        "resource": "product",
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "creator": "company",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "definition_id": "656866a30152b0584464d547",
        "value": [
          "ram"
        ]
      },
      {
        "_id": "65705772a20cc45d3f2585b3",
        "updated_by": "bd7223b6727eb087987eece7",
        "namespace": "custom",
        "key": "designer-name",
        "resource": "product",
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "creator": "company",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "definition_id": "65604cdb6a78c23f082c850b",
        "value": [
          "ramsons"
        ]
      },
      {
        "_id": "65705772a20cc45d3f2585b4",
        "updated_by": "bd7223b6727eb087987eece7",
        "namespace": "custom",
        "key": "manufactures",
        "resource": "product",
        "resource_id": "7612437",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "2",
        "creator": "company",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "definition_id": "655f53ddca37f5deb832a185",
        "value": [
          "kartik"
        ]
      }
    ]
  }
}
```
</details>

</details>









---


#### createAppCustomObjectDefinition
Create custom object definition




```swift
platformClient.application("<APPLICATION_ID>").content.createAppCustomObjectDefinition(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CustomObjectDefinitionRequestSchema | yes | Request body |


Use this API to create custom object defintion

*Returned Response:*




[CustomObjectDefinitionSchema](#CustomObjectDefinitionSchema)

Success. Returns the saved custom object defintion




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "656db530766f951134509542",
    "name": "customObject1",
    "type": "customobject1",
    "display_name_key": "cocustomfield2",
    "description": "",
    "creator": "company",
    "created_by": "bd7223b6727eb087987eece7",
    "updated_by": "bd7223b6727eb087987eece7",
    "field_definitions": [
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "coCustomField1",
        "namespace": "customobject1",
        "key": "cocustomfield1",
        "description": "",
        "type": "string_single_line",
        "multi_value": false,
        "validations": [
          {
            "name": "min",
            "type": "integer",
            "value": 2
          },
          {
            "name": "max",
            "type": "integer",
            "value": 10
          },
          {
            "name": "regex",
            "type": "string",
            "value": "^[a-zA-Z]+$"
          }
        ],
        "company_id": "1",
        "created_by": "bd7223b6727eb087987eece7",
        "metaobject_definition_id": "656db530766f951134509542",
        "required": false,
        "is_deleted": false,
        "_id": "656db530766f951134509545",
        "created_at": "2023-12-04T11:17:04.153Z",
        "updated_at": "2023-12-04T11:17:04.153Z"
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "coCustomField2",
        "namespace": "customobject1",
        "key": "cocustomfield2",
        "description": "this is custom field 2 of custom object",
        "type": "string_single_line",
        "multi_value": false,
        "validations": [
          {
            "name": "min",
            "type": "integer",
            "value": 1
          },
          {
            "name": "max",
            "type": "integer",
            "value": 100
          }
        ],
        "company_id": "1",
        "created_by": "bd7223b6727eb087987eece7",
        "metaobject_definition_id": "656db530766f951134509542",
        "required": false,
        "is_deleted": false,
        "_id": "656db530766f951134509546",
        "created_at": "2023-12-04T11:17:04.154Z",
        "updated_at": "2023-12-04T11:17:04.154Z"
      }
    ]
  }
}
```
</details>

</details>









---


#### getAppCustomObjectDefinitions
Get custom object definitions




```swift
platformClient.application("<APPLICATION_ID>").content.getAppCustomObjectDefinitions(pageNo: pageNo, pageSize: pageSize, search: search) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | String | yes |  |   
| pageSize | String | yes |  |   
| search | String? | no |  |  



Use this API to retrieve the custom object definitions

*Returned Response:*




[CustomObjectDefinitionsSchema](#CustomObjectDefinitionsSchema)

Success. Returns a list custom object definitions.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "656db530766f951134509542",
        "name": "customObject1",
        "type": "customobject1",
        "updated_at": "2023-12-04T11:17:04.136Z",
        "entries_count": 0,
        "fields_count": 2
      },
      {
        "_id": "656db2d9766f95113450952b",
        "name": "sample",
        "type": "sample",
        "updated_at": "2023-12-04T11:07:05.705Z",
        "entries_count": 0,
        "fields_count": 1
      },
      {
        "_id": "656495b58d3278a7c24260f8",
        "name": "address",
        "type": "address",
        "updated_at": "2023-11-27T13:12:21.999Z",
        "entries_count": 1,
        "fields_count": 3
      },
      {
        "_id": "655c706ad5ff69fd3b95a1d9",
        "name": "coCustomObject",
        "type": "cocustomobject",
        "updated_at": "2023-11-21T08:55:06.013Z",
        "entries_count": 0,
        "fields_count": 2
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 4,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### getAppCustomObjectDefinition
get custom object definition by id




```swift
platformClient.application("<APPLICATION_ID>").content.getAppCustomObjectDefinition(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this API to update a custom object definition for your application.

*Returned Response:*




[CustomObjectDefinitionSchema](#CustomObjectDefinitionSchema)

Custom object definition details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "656d67de766f95113450917b",
    "name": "Designer",
    "type": "designer",
    "display_name_key": "name",
    "description": "",
    "creator": "company",
    "created_by": "9759643b65ebc6bacb5275f5",
    "updated_by": "bd7223b6727eb087987eece7",
    "field_definitions": [
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "city2",
        "namespace": "designer",
        "key": "city",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "mobile",
        "namespace": "designer",
        "key": "mobile",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "name",
        "namespace": "designer",
        "key": "name",
        "type": "string_single_line",
        "description": "This is name of designer",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": true
      }
    ]
  }
}
```
</details>

</details>









---


#### updateAppCustomObjectDefinition
Update custom object definition




```swift
platformClient.application("<APPLICATION_ID>").content.updateAppCustomObjectDefinition(definitionId: definitionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  
| body | CustomObjectDefinitionUpdateRequestSchema | yes | Request body |


Use this API to update a custom object definition for your application.

*Returned Response:*




[CustomObjectDefinitionSchema](#CustomObjectDefinitionSchema)

Custom field definition updated.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "656d67de766f95113450917b",
    "name": "Designer",
    "type": "designer",
    "display_name_key": "name",
    "description": "",
    "creator": "company",
    "created_by": "9759643b65ebc6bacb5275f5",
    "updated_by": "bd7223b6727eb087987eece7",
    "field_definitions": [
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "city2",
        "namespace": "designer",
        "key": "city",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "mobile",
        "namespace": "designer",
        "key": "mobile",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "name",
        "namespace": "designer",
        "key": "name",
        "type": "string_single_line",
        "description": "This is name of designer",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": true
      }
    ]
  }
}
```
</details>

</details>









---


#### deleteAppCustomObjectDefinition
delete custom object definition by id




```swift
platformClient.application("<APPLICATION_ID>").content.deleteAppCustomObjectDefinition(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this API to delete a custom object definition and related data for your application.

*Returned Response:*




[CustomObjectDefinitionDeleteResponseSchema](#CustomObjectDefinitionDeleteResponseSchema)

Custom object definition details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "MetaObjectDefinition deleted successfully"
  }
}
```
</details>

</details>









---


#### getAppCustomObjects
Get list of custom objects




```swift
platformClient.application("<APPLICATION_ID>").content.getAppCustomObjects(definitionId: definitionId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String? | no |  |   
| pageNo | String | yes |  |   
| pageSize | String | yes |  |  



Use this API to retrieve the custom objects.

*Returned Response:*




[CustomObjectsSchema](#CustomObjectsSchema)

Success. Returns a list of custom objects. Refer `CustomObjectsSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "653929f012376081aafa90f1",
        "definition_id": "653907ced878d53c1a502d92",
        "status": "active",
        "updated_at": "2023-10-25T14:45:04.446Z",
        "display_name": "painter #653929f012376081aafa90f1",
        "definition": {
          "_id": "653907ced878d53c1a502d92",
          "name": "painter",
          "type": "painter"
        },
        "references": 0
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 10,
      "item_total": 1,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### createAppCustomObject
Create custom object entries




```swift
platformClient.application("<APPLICATION_ID>").content.createAppCustomObject(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CustomObjectRequestSchema | yes | Request body |


Use this API to create the custom object entry.

*Returned Response:*




[CustomObjectSchema](#CustomObjectSchema)

Success. Returns a list of custom objects. Refer `CustomObjectSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "65392bd912376081aafa90ff",
    "creator": "application",
    "company_id": "1",
    "application_id": "000000000000000000000001",
    "created_by": "000000000000000000000001",
    "updated_by": "000000000000000000000001",
    "status": "active",
    "type": "painter",
    "display_name": "painter #65392bd912376081aafa90ff",
    "definition_id": "653907ced878d53c1a502d92",
    "fields": [
      {
        "_id": "65392bd912376081aafa9103",
        "namespace": "painter",
        "key": "name",
        "resource": "metaobject",
        "resource_id": "65392bd912376081aafa90ff",
        "type": "string_single_line",
        "multi_value": false,
        "company_id": "1",
        "application_id": "000000000000000000000001",
        "creator": "application",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "metaobject_definition_id": "653907ced878d53c1a502d92",
        "definition_id": "653907ced878d53c1a502d95",
        "value": [
          "Batman"
        ],
        "created_by": "000000000000000000000001"
      },
      {
        "_id": "65392bd912376081aafa9104",
        "namespace": "painter",
        "key": "age",
        "resource": "metaobject",
        "resource_id": "65392bd912376081aafa90ff",
        "type": "integer",
        "multi_value": false,
        "company_id": "1",
        "application_id": "000000000000000000000001",
        "creator": "application",
        "invalid_value_errors": [],
        "has_invalid_values": false,
        "metaobject_definition_id": "653907ced878d53c1a502d92",
        "definition_id": "653907ced878d53c1a502d96",
        "value": [
          50
        ],
        "created_by": "000000000000000000000001"
      }
    ]
  }
}
```
</details>

</details>









---


#### getAppCustomObject
Get custom object details




```swift
platformClient.application("<APPLICATION_ID>").content.getAppCustomObject(metaobjectId: metaobjectId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| metaobjectId | String | yes |  |  



Use this API to retrieve the custom object details and their fields details and definitions and references.

*Returned Response:*




[CustomObjectByIdSchema](#CustomObjectByIdSchema)

Success. Returns a custom object. Refer `CustomObjectByIdSchema` for more details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "653929f012376081aafa90f1",
    "status": "active",
    "display_name": "painter #653929f012376081aafa90f1",
    "definition": {
      "_id": "653907ced878d53c1a502d92",
      "name": "painter",
      "type": "painter"
    },
    "references": [],
    "fields": [
      {
        "_id": "653929f012376081aafa90f5",
        "key": "name",
        "value": [
          "Bruce Wayne"
        ],
        "type": "string_single_line",
        "definition_id": "653907ced878d53c1a502d95"
      },
      {
        "_id": "653929f012376081aafa90f6",
        "key": "age",
        "value": [
          5
        ],
        "type": "integer",
        "definition_id": "653907ced878d53c1a502d96"
      }
    ]
  }
}
```
</details>

</details>









---


#### deleteAppCustomObject
Delete custom object




```swift
platformClient.application("<APPLICATION_ID>").content.deleteAppCustomObject(metaobjectId: metaobjectId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| metaobjectId | String | yes |  |  



Use this API to delete the custom object entry by id. This will also delete related custom fields entries related to this custom object.

*Returned Response:*




[CustomDataDeleteSchema](#CustomDataDeleteSchema)

Success. It will returns the message for delete successfully.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "success": true,
    "message": "Metafield definition deleted successfully"
  }
}
```
</details>

</details>









---


#### updateAppCustomObject
Update custom object details




```swift
platformClient.application("<APPLICATION_ID>").content.updateAppCustomObject(metaobjectId: metaobjectId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| metaobjectId | String | yes |  |  
| body | CustomObjectRequestSchema | yes | Request body |


Use this API to update a custom object detail for your application.

*Returned Response:*




[CustomObjectByIdSchema](#CustomObjectByIdSchema)

Custom field definition created.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "_id": "656d67de766f95113450917b",
    "name": "Designer",
    "type": "designer",
    "display_name_key": "name",
    "description": "",
    "creator": "company",
    "created_by": "9759643b65ebc6bacb5275f5",
    "updated_by": "bd7223b6727eb087987eece7",
    "field_definitions": [
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "city2",
        "namespace": "designer",
        "key": "city",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "mobile",
        "namespace": "designer",
        "key": "mobile",
        "type": "string_single_line",
        "description": "",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": false
      },
      {
        "creator": "company",
        "resource": "metaobject",
        "name": "name",
        "namespace": "designer",
        "key": "name",
        "type": "string_single_line",
        "description": "This is name of designer",
        "multi_value": false,
        "validations": [],
        "company_id": "2",
        "metaobject_definition_id": "656d67de766f95113450917b",
        "required": true
      }
    ]
  }
}
```
</details>

</details>









---


#### getAppJobs
Fetch bulk import and export job list.




```swift
platformClient.application("<APPLICATION_ID>").content.getAppJobs(page: page, pageSize: pageSize, actionType: actionType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| page | String | yes |  |   
| pageSize | String | yes |  |   
| actionType | String | yes |  |  



Use this api to get list of jobs of bulk import and exports

*Returned Response:*




[CustomObjectBulkEntry](#CustomObjectBulkEntry)

Success. Returns all bulk entries history. 




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "items": [
      {
        "_id": "6570124da20cc45d3f2582a7",
        "jobs": [
          "2311"
        ],
        "finished_jobs": [
          "2311"
        ],
        "error_jobs": [],
        "errors_occured": [],
        "company_id": "2",
        "creator": "company",
        "URL": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/custom-data/CustomObject-designer-import-6570124da20cc45d3f2582a7.csv",
        "status": "completed",
        "action_type": "upload",
        "entity": "metaobject",
        "error_url": "",
        "finished_count": 0,
        "error_count": 0,
        "success_count": 0,
        "total_jobs": 1,
        "meta": {
          "mo_total_count": 2,
          "mo_success_count": 2,
          "mo_error_count": 0,
          "mo_defintion_type": "designer"
        },
        "created_by": "bd7223b6727eb087987eece7",
        "created_at": "2023-12-06T06:18:53.219Z",
        "updated_at": "2023-12-06T06:20:23.560Z",
        "id": "6570124da20cc45d3f2582a7"
      },
      {
        "_id": "6558b8c49340c43a7015b4af",
        "jobs": [
          "2297"
        ],
        "finished_jobs": [
          "2297"
        ],
        "error_jobs": [],
        "errors_occured": [],
        "company_id": "2",
        "creator": "company",
        "URL": "https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/misc/custom-data/CustomObject-kuldeep-custom-import-6558b8c49340c43a7015b4af.csv",
        "status": "completed",
        "action_type": "upload",
        "entity": "metaobject",
        "error_url": "",
        "finished_count": 0,
        "error_count": 0,
        "success_count": 0,
        "total_jobs": 1,
        "meta": {
          "mo_total_count": 1,
          "mo_success_count": 0,
          "mo_error_count": 1,
          "mo_defintion_type": "kuldeep-custom"
        },
        "created_by": "9759643b65ebc6bacb5275f5",
        "created_at": "2023-11-18T13:14:44.360Z",
        "updated_at": "2023-11-18T13:17:19.765Z",
        "id": "6558b8c49340c43a7015b4af"
      }
    ],
    "page": {
      "type": "number",
      "current": 1,
      "size": 20,
      "item_total": 2,
      "has_next": false
    }
  }
}
```
</details>

</details>









---


#### importAppCustomObjectEntries
Bulk custom object entries upload




```swift
platformClient.application("<APPLICATION_ID>").content.importAppCustomObjectEntries(definitionId: definitionId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  
| body | CustomObjectBulkSchema | yes | Request body |


Use this API to upload custom object entries

*Returned Response:*




[CustomObjectEntryBulkUploadResponse](#CustomObjectEntryBulkUploadResponse)

Success. Returns confirmation that the upload has started




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "message": "Bulk upload of Meta objects started successfully",
    "task_id": "6570124da20cc45d3f2582a7"
  }
}
```
</details>

</details>









---


#### exportAppCustomObjectEntries
Initiate download for bulk custom object entries




```swift
platformClient.application("<APPLICATION_ID>").content.exportAppCustomObjectEntries(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this api to initiate download of bulk entries

*Returned Response:*




[CustomObjectBulkEntryInitiateDownload](#CustomObjectBulkEntryInitiateDownload)

Success. Initiates bulk entries download 




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": {
    "message": "Bulk download of Meta Objects started successfully",
    "task_id": "65702d2aa20cc45d3f258358"
  }
}
```
</details>

</details>









---


#### sampleAppCustomObjectBulkEntry
download sample for custom object bulk entry




```swift
platformClient.application("<APPLICATION_ID>").content.sampleAppCustomObjectBulkEntry(definitionId: definitionId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| definitionId | String | yes |  |  



Use this api to get sample csv file 

*Returned Response:*




[String](#String)

Success. Get headers of custom object definition




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; success</i></summary>

```json
{
  "value": "city,mobile,name,custom_object_status"
}
```
</details>

</details>









---




### Schemas

 
 
 #### [GenerateSEOContent](#GenerateSEOContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | existingText | String? |  yes  |  |
 | keywords | [String]? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [GeneratedSEOContent](#GeneratedSEOContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [ApplicationLegal](#ApplicationLegal)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | tnc | String? |  yes  |  |
 | policy | String? |  yes  |  |
 | shipping | String? |  yes  |  |
 | returns | String? |  yes  |  |
 | faq | [[ApplicationLegalFAQ](#ApplicationLegalFAQ)]? |  yes  |  |
 | id | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [ApplicationLegalFAQ](#ApplicationLegalFAQ)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |

---


 
 
 #### [PathMappingSchema](#PathMappingSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | id | String? |  yes  |  |
 | redirectFrom | String? |  yes  |  |
 | redirectTo | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | source | [PathSourceSchema](#PathSourceSchema)? |  yes  |  |

---


 
 
 #### [PathSourceSchema](#PathSourceSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [SeoComponent](#SeoComponent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | seo | [SeoSchema](#SeoSchema)? |  yes  |  |

---


 
 
 #### [SeoSchema](#SeoSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | String? |  yes  |  |
 | id | String? |  yes  |  |
 | robotsTxt | String? |  yes  |  |
 | sitemapEnabled | Bool? |  yes  |  |
 | additionalSitemap | String? |  yes  |  |
 | cannonicalEnabled | Bool? |  yes  |  |
 | customMetaTags | [[CustomMetaTag](#CustomMetaTag)]? |  yes  |  |
 | details | [Detail](#Detail)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [CustomMetaTag](#CustomMetaTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | content | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [Detail](#Detail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | imageUrl | String? |  yes  |  |

---


 
 
 #### [SeoSchemaComponent](#SeoSchemaComponent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SEOSchemaMarkupTemplate](#SEOSchemaMarkupTemplate)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SEOSchemaMarkupTemplate](#SEOSchemaMarkupTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | title | String? |  yes  |  |
 | pageType | String? |  yes  |  |
 | schema | String? |  yes  |  |
 | description | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | application | String? |  yes  |  |
 | targetJson | [String: Any]? |  yes  |  |

---


 
 
 #### [SEOSchemaMarkupTemplateRequestBody](#SEOSchemaMarkupTemplateRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | pageType | String? |  yes  |  |
 | schema | String? |  yes  |  |
 | description | String? |  yes  |  |
 | targetJson | [String: Any]? |  yes  |  |
 | active | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [AnnouncementPageSchema](#AnnouncementPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageSlug | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [EditorMeta](#EditorMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | foregroundColor | String? |  yes  |  |
 | backgroundColor | String? |  yes  |  |
 | contentType | String? |  yes  |  |
 | content | String? |  yes  |  |

---


 
 
 #### [AnnouncementAuthorSchema](#AnnouncementAuthorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String? |  yes  |  |
 | modifiedBy | String? |  yes  |  |

---


 
 
 #### [AdminAnnouncementSchema](#AdminAnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | platforms | [String]? |  yes  |  |
 | title | String? |  yes  |  |
 | announcement | String? |  yes  |  |
 | pages | [[AnnouncementPageSchema](#AnnouncementPageSchema)]? |  yes  |  |
 | editorMeta | [EditorMeta](#EditorMeta)? |  yes  |  |
 | author | [AnnouncementAuthorSchema](#AnnouncementAuthorSchema)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | app | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema)? |  yes  |  |

---


 
 
 #### [DefaultSchemaComponent](#DefaultSchemaComponent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[DefaultSEOSchemaMarkupTemplate](#DefaultSEOSchemaMarkupTemplate)]? |  yes  |  |

---


 
 
 #### [DefaultSEOSchemaMarkupTemplate](#DefaultSEOSchemaMarkupTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageType | String? |  yes  |  |
 | schema | String? |  yes  |  |
 | targetJson | [String: Any]? |  yes  |  |

---


 
 
 #### [ScheduleSchema](#ScheduleSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String? |  yes  |  |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |
 | duration | Double? |  yes  |  |
 | nextSchedule | [[NextSchedule](#NextSchedule)]? |  yes  |  |

---


 
 
 #### [NextSchedule](#NextSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [BlogGetResponse](#BlogGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BlogSchema](#BlogSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [ResourceContent](#ResourceContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [Asset](#Asset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | id | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [Author](#Author)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | designation | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [BlogSchema](#BlogSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | application | String? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | author | [Author](#Author)? |  yes  |  |
 | content | [[ResourceContent](#ResourceContent)]? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | published | Bool? |  yes  |  |
 | readingTime | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | schedule | [CronSchedule](#CronSchedule)? |  yes  |  |
 | title | String? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |

---


 
 
 #### [SEO](#SEO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | image | [SEOImage](#SEOImage)? |  yes  |  |
 | title | String? |  yes  |  |
 | metaTags | [[SEOMetaItem](#SEOMetaItem)]? |  yes  |  |
 | sitemap | [SEOSitemap](#SEOSitemap)? |  yes  |  |
 | breadcrumb | [[SEObreadcrumb](#SEObreadcrumb)]? |  yes  |  |
 | canonicalUrl | String? |  yes  |  |

---


 
 
 #### [SEOImage](#SEOImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [SEOMetaItem](#SEOMetaItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | items | [[SEOMetaItems](#SEOMetaItems)]? |  yes  |  |

---


 
 
 #### [SEOMetaItems](#SEOMetaItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [SEOSitemap](#SEOSitemap)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Double? |  yes  |  |
 | frequency | String? |  yes  |  |

---


 
 
 #### [SEObreadcrumb](#SEObreadcrumb)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |

---


 
 
 #### [DateMeta](#DateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [BlogRequest](#BlogRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | author | [Author](#Author)? |  yes  |  |
 | content | [[ResourceContent](#ResourceContent)]? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | published | Bool? |  yes  |  |
 | readingTime | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | title | String? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | schedule | [CronSchedule](#CronSchedule)? |  yes  |  |

---


 
 
 #### [GetAnnouncementListSchema](#GetAnnouncementListSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AdminAnnouncementSchema](#AdminAnnouncementSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [CreateAnnouncementSchema](#CreateAnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | data | [AdminAnnouncementSchema](#AdminAnnouncementSchema)? |  yes  |  |

---


 
 
 #### [DataLoaderResponseSchema](#DataLoaderResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | company | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | service | String? |  yes  |  |
 | operationId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | url | String? |  yes  |  |
 | content | String? |  yes  |  |
 | source | [DataLoaderSourceSchema](#DataLoaderSourceSchema)? |  yes  |  |

---


 
 
 #### [DataLoaderResetResponseSchema](#DataLoaderResetResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reset | Bool? |  yes  |  |

---


 
 
 #### [LocaleLanguage](#LocaleLanguage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hi | [Language](#Language)? |  yes  |  |
 | ar | [Language](#Language)? |  yes  |  |
 | enUs | [Language](#Language)? |  yes  |  |

---


 
 
 #### [Language](#Language)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |

---


 
 
 #### [Action](#Action)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [ActionPage](#ActionPage)? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ActionPage](#ActionPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | params | [String: [String]]? |  yes  |  |
 | query | [String: [String]]? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [NavigationReference](#NavigationReference)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | acl | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | localeLanguage | [LocaleLanguage](#LocaleLanguage)? |  yes  |  |
 | image | String? |  yes  |  |
 | type | String? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | active | Bool? |  yes  |  |
 | display | String? |  yes  |  |
 | sortOrder | Int? |  yes  |  |
 | schedule | [CronBasedScheduleSchema](#CronBasedScheduleSchema)? |  yes  |  |
 | subNavigation | [[NavigationReference](#NavigationReference)]? |  yes  |  |

---


 
 
 #### [CronBasedScheduleSchema](#CronBasedScheduleSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | cron | String? |  yes  |  |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [ConfigurationSchema](#ConfigurationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sleepTime | Int? |  yes  |  |
 | startOnLaunch | Bool? |  yes  |  |
 | duration | Int? |  yes  |  |
 | slideDirection | String? |  yes  |  |

---


 
 
 #### [SlideshowMedia](#SlideshowMedia)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | url | String? |  yes  |  |
 | bgColor | String? |  yes  |  |
 | duration | Int? |  yes  |  |
 | autoDecideDuration | Bool? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |

---


 
 
 #### [UpdateHandpickedSchema](#UpdateHandpickedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | [HandpickedTagSchema](#HandpickedTagSchema)? |  yes  |  |

---


 
 
 #### [HandpickedTagSchema](#HandpickedTagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | position | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | content | String? |  yes  |  |

---


 
 
 #### [RemoveHandpickedSchema](#RemoveHandpickedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  |  |

---


 
 
 #### [CreateTagSchema](#CreateTagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |
 | url | String? |  yes  |  |
 | position | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | pages | [[String: Any]]? |  yes  |  |
 | content | String? |  yes  |  |

---


 
 
 #### [CreateTagRequestSchema](#CreateTagRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [[CreateTagSchema](#CreateTagSchema)]? |  yes  |  |

---


 
 
 #### [DataLoaderSchema](#DataLoaderSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | service | String? |  yes  |  |
 | operationId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | url | String? |  yes  |  |
 | content | String? |  yes  |  |
 | source | [DataLoaderSourceSchema](#DataLoaderSourceSchema)? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [DataLoaderSourceSchema](#DataLoaderSourceSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [DataLoadersSchema](#DataLoadersSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[DataLoaderSchema](#DataLoaderSchema)]? |  yes  |  |

---


 
 
 #### [TagDeleteSuccessResponse](#TagDeleteSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ContentAPIError](#ContentAPIError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | status | Double? |  yes  |  |
 | code | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | info | String? |  yes  |  |
 | requestId | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [CommonError](#CommonError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [CategorySchema](#CategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | index | Int? |  yes  |  |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | children | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | iconUrl | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [ChildrenSchema](#ChildrenSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [CategoryRequestSchema](#CategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [FAQCategorySchema](#FAQCategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | index | Int? |  yes  |  |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | children | [[ChildrenSchema](#ChildrenSchema)]? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | iconUrl | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [FaqSchema](#FaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | id | String? |  yes  |  |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |
 | tags | [String]? |  yes  |  |

---


 
 
 #### [FAQ](#FAQ)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |

---


 
 
 #### [CreateFaqResponseSchema](#CreateFaqResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faq | [FaqSchema](#FaqSchema)? |  yes  |  |

---


 
 
 #### [CreateFaqSchema](#CreateFaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faq | [FAQ](#FAQ)? |  yes  |  |

---


 
 
 #### [GetFaqSchema](#GetFaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faqs | [[FaqSchema](#FaqSchema)]? |  yes  |  |

---


 
 
 #### [UpdateFaqCategoryRequestSchema](#UpdateFaqCategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategorySchema](#CategorySchema)? |  yes  |  |

---


 
 
 #### [CreateFaqCategoryRequestSchema](#CreateFaqCategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategoryRequestSchema](#CategoryRequestSchema)? |  yes  |  |

---


 
 
 #### [CreateFaqCategorySchema](#CreateFaqCategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategorySchema](#CategorySchema)? |  yes  |  |

---


 
 
 #### [GetFaqCategoriesSchema](#GetFaqCategoriesSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categories | [[CategorySchema](#CategorySchema)]? |  yes  |  |

---


 
 
 #### [GetFaqCategoryBySlugSchema](#GetFaqCategoryBySlugSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [FAQCategorySchema](#FAQCategorySchema)? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | current | Int? |  yes  |  |
 | type | String |  no  |  |
 | size | Int? |  yes  |  |

---


 
 
 #### [LandingPageGetResponse](#LandingPageGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[LandingPageSchema](#LandingPageSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [LandingPageSchema](#LandingPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | platform | [String]? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [DefaultNavigationResponse](#DefaultNavigationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[NavigationSchema](#NavigationSchema)]? |  yes  |  |

---


 
 
 #### [NavigationGetResponse](#NavigationGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[NavigationSchema](#NavigationSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [Orientation](#Orientation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | portrait | [String]? |  yes  |  |
 | landscape | [String]? |  yes  |  |

---


 
 
 #### [NavigationSchema](#NavigationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | platform | [String]? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | orientation | [Orientation](#Orientation)? |  yes  |  |
 | version | Double? |  yes  |  |
 | navigation | [[NavigationReference](#NavigationReference)]? |  yes  |  |

---


 
 
 #### [NavigationRequest](#NavigationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | platform | [String]? |  yes  |  |
 | orientation | [Orientation](#Orientation)? |  yes  |  |
 | navigation | [[NavigationReference](#NavigationReference)]? |  yes  |  |

---


 
 
 #### [PageGetResponse](#PageGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PageSchema](#PageSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PageSpec](#PageSpec)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | specifications | [[PageSpecItem](#PageSpecItem)]? |  yes  |  |

---


 
 
 #### [PageSpecParam](#PageSpecParam)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | required | Bool? |  yes  |  |

---


 
 
 #### [PageSpecItem](#PageSpecItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageType | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | params | [[PageSpecParam](#PageSpecParam)]? |  yes  |  |
 | query | [[PageSpecParam](#PageSpecParam)]? |  yes  |  |

---


 
 
 #### [PageSchema](#PageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | componentIds | [String]? |  yes  | Components can be used to store multiple components |
 | content | [[String: Any]]? |  yes  |  |
 | contentPath | String? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | description | String? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | pageMeta | [[String: Any]]? |  yes  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | orientation | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | title | String? |  yes  |  |
 | type | String? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | visibility | [String: Any]? |  yes  |  |
 | archived | Bool? |  yes  |  |

---


 
 
 #### [CreatedBySchema](#CreatedBySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |

---


 
 
 #### [PageRequest](#PageRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | schedule | [CronSchedule](#CronSchedule)? |  yes  |  |
 | application | String? |  yes  |  |
 | author | [Author](#Author)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | orientation | String? |  yes  |  |
 | content | [[String: Any]]? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | published | Bool? |  yes  |  |
 | readingTime | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [CronSchedule](#CronSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String? |  yes  |  |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |
 | duration | Double? |  yes  |  |

---


 
 
 #### [PagePublishRequest](#PagePublishRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | publish | Bool? |  yes  |  |

---


 
 
 #### [PageMetaSchema](#PageMetaSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | systemPages | [[NavigationSchema](#NavigationSchema)]? |  yes  |  |
 | customPages | [[PageSchema](#PageSchema)]? |  yes  |  |
 | applicationId | String? |  yes  |  |

---


 
 
 #### [SlideshowGetResponse](#SlideshowGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SlideshowSchema](#SlideshowSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SlideshowSchema](#SlideshowSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | application | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | configuration | [ConfigurationSchema](#ConfigurationSchema)? |  yes  |  |
 | media | [[SlideshowMedia](#SlideshowMedia)]? |  yes  |  |
 | active | Bool? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [SlideshowRequest](#SlideshowRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | configuration | [ConfigurationSchema](#ConfigurationSchema)? |  yes  |  |
 | media | [SlideshowMedia](#SlideshowMedia)? |  yes  |  |
 | active | Bool? |  yes  |  |

---


 
 
 #### [Support](#Support)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | created | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | configType | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | contact | [ContactSchema](#ContactSchema)? |  yes  |  |

---


 
 
 #### [PhoneProperties](#PhoneProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | code | String? |  yes  |  |
 | number | String? |  yes  |  |

---


 
 
 #### [PhoneSchema](#PhoneSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | phone | [[PhoneProperties](#PhoneProperties)]? |  yes  |  |

---


 
 
 #### [EmailProperties](#EmailProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [EmailSchema](#EmailSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | email | [[EmailProperties](#EmailProperties)]? |  yes  |  |

---


 
 
 #### [ContactSchema](#ContactSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [PhoneSchema](#PhoneSchema)? |  yes  |  |
 | email | [EmailSchema](#EmailSchema)? |  yes  |  |

---


 
 
 #### [TagsSchema](#TagsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | id | String? |  yes  |  |
 | tags | [[TagSchema](#TagSchema)]? |  yes  |  |

---


 
 
 #### [TagSchema](#TagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | id | String? |  yes  |  |
 | position | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | content | String? |  yes  |  |
 | pages | [[String: Any]]? |  yes  |  |
 | source | [TagSourceSchema](#TagSourceSchema)? |  yes  |  |

---


 
 
 #### [TagSourceSchema](#TagSourceSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [ResourcesSchema](#ResourcesSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | resources | [[ResourceSchema](#ResourceSchema)]? |  yes  |  |

---


 
 
 #### [ResourceSchema](#ResourceSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Resource name |
 | key | String? |  yes  | Resource key |
 | definitionsCount | Double? |  yes  | Number of definitions |

---


 
 
 #### [FieldValidations](#FieldValidations)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [FieldDefinitionSchema](#FieldDefinitionSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | creator | String? |  yes  |  |
 | resource | String? |  yes  |  |
 | name | String? |  yes  |  |
 | namespace | String? |  yes  |  |
 | key | String? |  yes  |  |
 | description | String? |  yes  |  |
 | type | String? |  yes  |  |
 | multiValue | Bool? |  yes  |  |
 | validations | [[FieldValidations](#FieldValidations)]? |  yes  |  |
 | companyId | String? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | updatedBy | String? |  yes  |  |
 | required | Bool? |  yes  |  |
 | isDeleted | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | typeName | String? |  yes  |  |
 | invalidFieldsCount | Int? |  yes  |  |

---


 
 
 #### [CustomFieldDefinitionsSchema](#CustomFieldDefinitionsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[FieldDefinitionSchema](#FieldDefinitionSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [CustomFieldDefinitionRequestSchema](#CustomFieldDefinitionRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | resource | String? |  yes  |  |
 | type | String? |  yes  |  |
 | key | String? |  yes  |  |
 | namespace | String? |  yes  |  |
 | multiValue | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | validations | [[FieldValidations](#FieldValidations)]? |  yes  |  |

---


 
 
 #### [CustomObjectCustomFieldDefinitions](#CustomObjectCustomFieldDefinitions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |
 | description | String? |  yes  |  |
 | name | String? |  yes  |  |
 | multiValue | Bool? |  yes  |  |
 | required | Bool? |  yes  |  |
 | key | String? |  yes  |  |
 | validations | [[FieldValidations](#FieldValidations)]? |  yes  |  |
 | action | String? |  yes  |  |

---


 
 
 #### [CustomObjectDefinitionUpdateRequestSchema](#CustomObjectDefinitionUpdateRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | description | String? |  yes  |  |
 | name | String? |  yes  |  |
 | displayNameKey | String? |  yes  |  |
 | fieldDefinitions | [[CustomObjectCustomFieldDefinitions](#CustomObjectCustomFieldDefinitions)]? |  yes  |  |

---


 
 
 #### [CustomFieldDefinitionDetailResSchema](#CustomFieldDefinitionDetailResSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creator | String? |  yes  |  |
 | resource | String? |  yes  |  |
 | name | String? |  yes  |  |
 | namespace | String? |  yes  |  |
 | key | String? |  yes  |  |
 | description | String? |  yes  |  |
 | type | String? |  yes  |  |
 | multiValue | Bool? |  yes  |  |
 | companyId | String? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | updatedBy | String? |  yes  |  |
 | required | Bool? |  yes  |  |
 | isDeleted | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | validations | [[String: Any]]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [CustomDataDeleteSchema](#CustomDataDeleteSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [CustomFieldSchema](#CustomFieldSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | namespace | String? |  yes  |  |
 | key | String? |  yes  |  |
 | resource | String? |  yes  |  |
 | creator | String? |  yes  |  |
 | value | [[String: Any]]? |  yes  |  |
 | resourceId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | multiValue | Bool? |  yes  |  |
 | companyId | String? |  yes  |  |
 | definitionId | String? |  yes  |  |
 | hasInvalidValues | Bool? |  yes  |  |
 | invalidValueErrors | [[String: Any]]? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | isDeleted | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [CustomFieldsResponseSchema](#CustomFieldsResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CustomFieldSchema](#CustomFieldSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [CustomFieldsResponseByResourceIdSchema](#CustomFieldsResponseByResourceIdSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CustomFieldSchema](#CustomFieldSchema)]? |  yes  |  |

---


 
 
 #### [CustomField](#CustomField)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | [[String: Any]]? |  yes  |  |
 | definitionId | String? |  yes  |  |

---


 
 
 #### [CustomFieldRequestSchema](#CustomFieldRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fields | [[CustomField](#CustomField)]? |  yes  |  |

---


 
 
 #### [CustomObjectSchema](#CustomObjectSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | creator | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | updatedBy | String? |  yes  |  |
 | status | String? |  yes  |  |
 | type | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | definitionId | String? |  yes  |  |
 | fields | [[CustomFieldSchema](#CustomFieldSchema)]? |  yes  |  |

---


 
 
 #### [CustomObjectDefinitionRequestSchema](#CustomObjectDefinitionRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | description | String? |  yes  |  |
 | name | String? |  yes  |  |
 | displayNameKey | String? |  yes  |  |
 | fieldDefinitions | [[CustomObjectCustomFieldDefinitions](#CustomObjectCustomFieldDefinitions)]? |  yes  |  |

---


 
 
 #### [CustomObjectCustomFieldDefinitionResSchema](#CustomObjectCustomFieldDefinitionResSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creator | String? |  yes  |  |
 | resource | String? |  yes  |  |
 | name | String? |  yes  |  |
 | namespace | String? |  yes  |  |
 | key | String? |  yes  |  |
 | description | String? |  yes  |  |
 | type | String? |  yes  |  |
 | multiValue | Bool? |  yes  |  |
 | validations | [[FieldValidations](#FieldValidations)]? |  yes  |  |
 | companyId | String? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | metaobjectDefinitionId | String? |  yes  |  |
 | required | Bool? |  yes  |  |
 | isDeleted | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [CustomObjectDefinitionSchema](#CustomObjectDefinitionSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |
 | displayNameKey | String? |  yes  |  |
 | description | String? |  yes  |  |
 | creator | String? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | updatedBy | String? |  yes  |  |
 | fieldDefinitions | [[CustomObjectCustomFieldDefinitionResSchema](#CustomObjectCustomFieldDefinitionResSchema)]? |  yes  |  |

---


 
 
 #### [CustomObjectDefinitionDeleteResponseSchema](#CustomObjectDefinitionDeleteResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [CustomObjectEntryBulkUploadResponse](#CustomObjectEntryBulkUploadResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | totalRecords | Int? |  yes  |  |

---


 
 
 #### [CustomObjectListItemDefinationSchema](#CustomObjectListItemDefinationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [CustomObjectListItemSchema](#CustomObjectListItemSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | definitionId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | definition | [CustomObjectListItemDefinationSchema](#CustomObjectListItemDefinationSchema)? |  yes  |  |
 | references | Int? |  yes  |  |

---


 
 
 #### [CustomObjectsSchema](#CustomObjectsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CustomObjectListItemSchema](#CustomObjectListItemSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [CustomObjectFieldSchema](#CustomObjectFieldSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | key | String? |  yes  |  |
 | value | [[String: Any]]? |  yes  |  |
 | type | String? |  yes  |  |
 | definitionId | String? |  yes  |  |

---


 
 
 #### [CustomObjectByIdSchema](#CustomObjectByIdSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | status | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | definition | [CustomObjectListItemDefinationSchema](#CustomObjectListItemDefinationSchema)? |  yes  |  |
 | references | [[String: Any]]? |  yes  |  |
 | fields | [[CustomObjectFieldSchema](#CustomObjectFieldSchema)]? |  yes  |  |

---


 
 
 #### [CustomObjectBulkEntryInitiateDownload](#CustomObjectBulkEntryInitiateDownload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | taskId | String? |  yes  |  |

---


 
 
 #### [CustomObjectMetaSchema](#CustomObjectMetaSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | moTotalCount | Int? |  yes  |  |
 | moSuccessCount | Int? |  yes  |  |
 | moErrorCount | Int? |  yes  |  |
 | moDefintionType | String? |  yes  |  |

---


 
 
 #### [CustomObjectJobSchema](#CustomObjectJobSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | jobs | [String]? |  yes  |  |
 | finishedJobs | [String]? |  yes  |  |
 | errorJobs | [String]? |  yes  |  |
 | errorsOccured | [String]? |  yes  |  |
 | companyId | String? |  yes  |  |
 | creator | String? |  yes  |  |
 | url | String? |  yes  |  |
 | status | String? |  yes  |  |
 | actionType | String? |  yes  |  |
 | entity | String? |  yes  |  |
 | errorUrl | String? |  yes  |  |
 | finishedCount | Int? |  yes  |  |
 | errorCount | Int? |  yes  |  |
 | successCount | Int? |  yes  |  |
 | totalJobs | Int? |  yes  |  |
 | meta | [CustomObjectMetaSchema](#CustomObjectMetaSchema)? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [CustomObjectBulkEntry](#CustomObjectBulkEntry)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CustomObjectJobSchema](#CustomObjectJobSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [CustomFieldTypeSchema](#CustomFieldTypeSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stringSingleLine | [StringSingleLine](#StringSingleLine)? |  yes  |  |
 | stringMultiLine | [StringMultiLine](#StringMultiLine)? |  yes  |  |
 | dropdown | [Dropdown](#Dropdown)? |  yes  |  |
 | integer | [Integer](#Integer)? |  yes  |  |
 | floatType | [FloatType](#FloatType)? |  yes  |  |
 | booleanType | [BooleanType](#BooleanType)? |  yes  |  |
 | date | [Date](#Date)? |  yes  |  |
 | datetime | [Datetime](#Datetime)? |  yes  |  |
 | json | [Json](#Json)? |  yes  |  |
 | file | [File](#File)? |  yes  |  |
 | url | [Url](#Url)? |  yes  |  |
 | metaobject | [Metaobject](#Metaobject)? |  yes  |  |
 | product | [Product](#Product)? |  yes  |  |

---


 
 
 #### [SupportedValidationsMetaExampleSchema](#SupportedValidationsMetaExampleSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [SupportedValidationsMetaSchema](#SupportedValidationsMetaSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | examples | [[SupportedValidationsMetaExampleSchema](#SupportedValidationsMetaExampleSchema)]? |  yes  |  |

---


 
 
 #### [SupportedValidationsSchema](#SupportedValidationsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |
 | display | String? |  yes  |  |
 | required | Bool? |  yes  |  |
 | meta | [SupportedValidationsMetaSchema](#SupportedValidationsMetaSchema)? |  yes  |  |

---


 
 
 #### [StringSingleLine](#StringSingleLine)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [StringMultiLine](#StringMultiLine)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [Dropdown](#Dropdown)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [Integer](#Integer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | category | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [FloatType](#FloatType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | category | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [BooleanType](#BooleanType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | category | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [Date](#Date)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [Datetime](#Datetime)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | category | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [Json](#Json)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [File](#File)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | category | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [Url](#Url)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [Metaobject](#Metaobject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [Product](#Product)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | listEnabled | Bool? |  yes  |  |
 | category | String? |  yes  |  |
 | type | String? |  yes  |  |
 | supportedValidations | [[SupportedValidationsSchema](#SupportedValidationsSchema)]? |  yes  |  |

---


 
 
 #### [CustomObjectEntry](#CustomObjectEntry)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | entriesCount | Int? |  yes  |  |
 | fieldsCount | Int? |  yes  |  |

---


 
 
 #### [CustomObjectDefinitionsSchema](#CustomObjectDefinitionsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CustomObjectEntry](#CustomObjectEntry)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [CustomObjectEntryFieldSchema](#CustomObjectEntryFieldSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | definitionId | String? |  yes  |  |
 | value | [[String: Any]]? |  yes  |  |

---


 
 
 #### [CustomObjectRequestSchema](#CustomObjectRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | definitionId | String? |  yes  |  |
 | fields | [[CustomObjectEntryFieldSchema](#CustomObjectEntryFieldSchema)]? |  yes  |  |

---


 
 
 #### [CustomObjectBulkSchema](#CustomObjectBulkSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | totalRecords | Int? |  yes  |  |

---




### Enums





 #### [GenerationEntityType](#GenerationEntityType)
 Type : string

 | Name | Value | Description |
 | ---- | ----- | ----------- |
 | title | title | Denotes title will be generated |
 | description | description | Denotes description will be generated |

---



 #### [PageType](#PageType)
 Type : string

 | Name | Value | Description |
 | ---- | ----- | ----------- |
 | aboutUs | about-us | Symbolic link for About Us: /about-us |
 | addresses | addresses | Symbolic link for Saved Addresses: /profile/address |
 | blog | blog | Symbolic link for Blog: /blog/:slug |
 | brands | brands | Symbolic link for Brands: /brands/:department |
 | cards | cards | Symbolic link for Saved Cards: /profile/my-cards |
 | cart | cart | Symbolic link for Cart: /cart/bag/ |
 | categories | categories | Symbolic link for Categories: /categories/:department |
 | brand | brand | Symbolic link for Brand: /brand/:slug |
 | category | category | Symbolic link for Category: /category/:slug |
 | collection | collection | Symbolic link for Collection: /collection/:slug |
 | collections | collections | Symbolic link for Collections: /collections/ |
 | contactUs | contact-us | Symbolic link for Contact Us: /contact-us/ |
 | external | external | Symbolic link for External Link: /external/ |
 | faq | faq | Symbolic link for FAQ: /faq |
 | freshchat | freshchat | Symbolic link for Chat by Freshchat: /freshchat |
 | home | home | Symbolic link for Home: / |
 | notificationSettings | notification-settings | Symbolic link for Notification Settings: /notification-settings |
 | orders | orders | Symbolic link for Orders: /profile/orders |
 | page | page | Symbolic link for Page: /page/:slug |
 | policy | policy | Symbolic link for Privacy Policy: /privacy-policy |
 | product | product | Symbolic link for Product: /product/:slug |
 | productRequest | product-request | Symbolic link for Product Request: /product-request/ |
 | products | products | Symbolic link for Products: /products/ |
 | profile | profile | Symbolic link for Profile: /profile |
 | profileOrderShipment | profile-order-shipment | Symbolic link for profile orders shipment: /profile/orders/shipment/:shipmentid |
 | profileBasic | profile-basic | Symbolic link for Basic Profile: /profile/details |
 | profileCompany | profile-company | Symbolic link for Profile Company: /profile/company |
 | profileEmails | profile-emails | Symbolic link for Profile Emails: /profile/email |
 | profilePhones | profile-phones | Symbolic link for Profile Phones: /profile/phone |
 | rateUs | rate-us | Symbolic link for Rate Us: /rate-us |
 | referEarn | refer-earn | Symbolic link for Refer & Earn: /profile/refer-earn |
 | settings | settings | Symbolic link for Settings: /setting/currency |
 | sharedCart | shared-cart | Symbolic link for Shared Cart: /shared-cart/:token |
 | tnc | tnc | Symbolic link for Terms and Conditions: /terms-and-conditions |
 | trackOrder | track-order | Symbolic link for Track Order: /order-tracking/:orderId |
 | wishlist | wishlist | Symbolic link for Wishlist: /wishlist/ |
 | sections | sections | Symbolic link for Sections: /sections/:group |
 | form | form | Symbolic link for Form: /form/:slug |
 | cartDelivery | cart-delivery | Symbolic link for Cart Delivery: /cart/delivery |
 | cartPayment | cart-payment | Symbolic link for Cart Payment Information: /cart/payment-info |
 | cartReview | cart-review | Symbolic link for Cart Order Review: /cart/order-review |
 | login | login | Symbolic link for Login: /auth/login |
 | register | register | Symbolic link for Register: /auth/register |
 | shippingPolicy | shipping-policy | Symbolic link for Shipping policy: /shipping-policy |
 | returnPolicy | return-policy | Symbolic link for Return policy: /return-policy |
 | orderStatus | order-status | Symbolic link for Order status: /cart/order-status |

---





