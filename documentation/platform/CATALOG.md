



##### [Back to Platform docs](./README.md)

## Catalog Methods
Catalog - Platform Front API's' API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features. 
* [updateSearchKeywords](#updatesearchkeywords)
* [getSearchKeywords](#getsearchkeywords)
* [deleteSearchKeywords](#deletesearchkeywords)
* [getAllSearchKeyword](#getallsearchkeyword)
* [createCustomKeyword](#createcustomkeyword)
* [updateAutocompleteKeyword](#updateautocompletekeyword)
* [getAutocompleteKeywordDetail](#getautocompletekeyworddetail)
* [deleteAutocompleteKeyword](#deleteautocompletekeyword)
* [getAutocompleteConfig](#getautocompleteconfig)
* [createCustomAutocompleteRule](#createcustomautocompleterule)
* [listSearchRerankConfig](#listsearchrerankconfig)
* [createSearchRerankingConfig](#createsearchrerankingconfig)
* [updateSearchRerankConfig](#updatesearchrerankconfig)
* [getSearchRerankingConfig](#getsearchrerankingconfig)
* [deleteSearchRerankConfig](#deletesearchrerankconfig)
* [getProductBundle](#getproductbundle)
* [createProductBundle](#createproductbundle)
* [updateProductBundle](#updateproductbundle)
* [getProductBundleDetail](#getproductbundledetail)
* [getSizeGuides](#getsizeguides)
* [createSizeGuide](#createsizeguide)
* [updateSizeGuide](#updatesizeguide)
* [getSizeGuide](#getsizeguide)
* [getAppProduct](#getappproduct)
* [updateAppProduct](#updateappproduct)
* [getConfigurationMetadata](#getconfigurationmetadata)
* [getGroupConfigurations](#getgroupconfigurations)
* [createGroupConfiguration](#creategroupconfiguration)
* [updateGroupConfiguration](#updategroupconfiguration)
* [deleteGroupConfiguration](#deletegroupconfiguration)
* [getListingConfigurations](#getlistingconfigurations)
* [createListingConfiguration](#createlistingconfiguration)
* [updateListingConfiguration](#updatelistingconfiguration)
* [deleteListingConfiguration](#deletelistingconfiguration)
* [updateAllowSingle](#updateallowsingle)
* [updateDefaultSort](#updatedefaultsort)
* [getCatalogConfiguration](#getcatalogconfiguration)
* [getConfigurations](#getconfigurations)
* [createConfigurationProductListing](#createconfigurationproductlisting)
* [getConfigurationByType](#getconfigurationbytype)
* [createConfigurationByType](#createconfigurationbytype)
* [getQueryFilters](#getqueryfilters)
* [getAllCollections](#getallcollections)
* [createCollection](#createcollection)
* [getCollectionDetail](#getcollectiondetail)
* [updateCollection](#updatecollection)
* [deleteCollection](#deletecollection)
* [getCollectionItems](#getcollectionitems)
* [addCollectionItems](#addcollectionitems)
* [getCatalogInsights](#getcataloginsights)
* [getSellerInsights](#getsellerinsights)
* [createMarketplaceOptin](#createmarketplaceoptin)
* [getMarketplaceOptinDetail](#getmarketplaceoptindetail)
* [getCompanyDetail](#getcompanydetail)
* [getCompanyBrandDetail](#getcompanybranddetail)
* [getCompanyMetrics](#getcompanymetrics)
* [getStoreDetail](#getstoredetail)
* [getGenderAttribute](#getgenderattribute)
* [listProductTemplateCategories](#listproducttemplatecategories)
* [listDepartments](#listdepartments)
* [getDepartment](#getdepartment)
* [listProductTemplate](#listproducttemplate)
* [validateProductTemplate](#validateproducttemplate)
* [downloadProductTemplateViews](#downloadproducttemplateviews)
* [downloadInventoryTemplateView](#downloadinventorytemplateview)
* [validateProductTemplateSchema](#validateproducttemplateschema)
* [listHSNCodes](#listhsncodes)
* [listProductTemplateExportDetails](#listproducttemplateexportdetails)
* [getProductExportJobs](#getproductexportjobs)
* [createProductExportJob](#createproductexportjob)
* [listTemplateBrandTypeValues](#listtemplatebrandtypevalues)
* [listCategories](#listcategories)
* [createCategories](#createcategories)
* [updateCategory](#updatecategory)
* [getCategoryData](#getcategorydata)
* [getProducts](#getproducts)
* [createProduct](#createproduct)
* [getVariantsOfProducts](#getvariantsofproducts)
* [getProductAttributes](#getproductattributes)
* [editProduct](#editproduct)
* [getProduct](#getproduct)
* [deleteProduct](#deleteproduct)
* [allSizes](#allsizes)
* [getProductValidation](#getproductvalidation)
* [getProductSize](#getproductsize)
* [getProductBulkUploadHistory](#getproductbulkuploadhistory)
* [createBulkProductUploadJob](#createbulkproductuploadjob)
* [uploadBulkProducts](#uploadbulkproducts)
* [deleteProductBulkJob](#deleteproductbulkjob)
* [createProductsInBulk](#createproductsinbulk)
* [getProductTags](#getproducttags)
* [getProductAssetsInBulk](#getproductassetsinbulk)
* [createProductAssetsInBulk](#createproductassetsinbulk)
* [deleteSize](#deletesize)
* [getInventoryBySize](#getinventorybysize)
* [addInventory](#addinventory)
* [getInventoryBySizeIdentifier](#getinventorybysizeidentifier)
* [getInventories](#getinventories)
* [getDiscountedInventoryBySizeIdentifier](#getdiscountedinventorybysizeidentifier)
* [deleteInventory](#deleteinventory)
* [getInventoryBulkUploadHistory](#getinventorybulkuploadhistory)
* [createBulkInventoryJob](#createbulkinventoryjob)
* [deleteBulkInventoryJob](#deletebulkinventoryjob)
* [createBulkInventory](#createbulkinventory)
* [getInventoryExport](#getinventoryexport)
* [createInventoryExportJob](#createinventoryexportjob)
* [listInventoryExport](#listinventoryexport)
* [createInventoryExport](#createinventoryexport)
* [exportInventoryConfig](#exportinventoryconfig)
* [deleteRealtimeInventory](#deleterealtimeinventory)
* [updateRealtimeInventory](#updaterealtimeinventory)
* [updateInventories](#updateinventories)
* [updateHsnCode](#updatehsncode)
* [getHsnCode](#gethsncode)
* [bulkHsnCode](#bulkhsncode)
* [getAllProductHsnCodes](#getallproducthsncodes)
* [getSingleProductHSNCode](#getsingleproducthsncode)
* [getApplicationBrands](#getapplicationbrands)
* [getDepartments](#getdepartments)
* [getCategories](#getcategories)
* [getAppicationProducts](#getappicationproducts)
* [getProductDetailBySlug](#getproductdetailbyslug)
* [getAppProducts](#getappproducts)
* [getAppInventory](#getappinventory)
* [getOptimalLocations](#getoptimallocations)
* [getAppLocations](#getapplocations)
* [getApplicationBrandListing](#getapplicationbrandlisting)
* [updateAppBrand](#updateappbrand)
* [getApplicationCategoryListing](#getapplicationcategorylisting)
* [updateAppCategory](#updateappcategory)
* [getApplicationDepartmentListing](#getapplicationdepartmentlisting)
* [updateAppDepartment](#updateappdepartment)
* [updateAppLocation](#updateapplocation)



## Methods with example and description


#### updateSearchKeywords
Update the search keyword configuraton by their ID.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateSearchKeywords(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a specific keyword search configuration. |  
| body | CreateSearchKeyword | yes | Request body |


Thist API allows you to update the search keyword configuration by their ID.

*Returned Response:*




[GetSearchWordsData](#GetSearchWordsData)

A successful response contains the keyword object with id that is updated. See example below or refer `GetSearchWordsDataSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": "602fa1e9a596ce349563f6b9",
  "words": [
    "sds"
  ],
  "app_id": "000000000000000000000001",
  "is_active": true,
  "result": {
    "query": {
      "department": [
        "men"
      ]
    },
    "sort_on": "popular"
  },
  "_custom_json": {}
}
```
</details>









---


#### getSearchKeywords
Get a custom keyword search detail by their ID.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getSearchKeywords(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a specific keyword search configuration. Pass the `id` of the keywords which you want to retrieve. |  



The API allows you to get the details of a words by its `id`. If successful, returns a Collection resource in the response body specified in `GetSearchWordsDetailResponseSchema`

*Returned Response:*




[GetSearchWordsData](#GetSearchWordsData)

A successful response contains the detail of the custom keyword search mapping if exists. See example below or refer `GetSearchWordsDetailResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": "602fa1e9a596ce349563f6b9",
  "words": [
    "sds"
  ],
  "app_id": "000000000000000000000001",
  "is_active": true,
  "result": {
    "query": {
      "department": [
        "men"
      ]
    },
    "sort_on": "popular"
  },
  "_custom_json": {}
}
```
</details>









---


#### deleteSearchKeywords
Delete a custom keyword mapping by thier ID.




```swift
platformClient.application("<APPLICATION_ID>").catalog.deleteSearchKeywords(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a specific keyword search configuration. Pass the `id` of the keywords which you want to delete. |  



This API allows you to delete a custom keyword mapping by their ID within an application. Returns an object that tells whether the keywords was deleted successfully

*Returned Response:*




[DeleteResponse](#DeleteResponse)

A successful response contains the success message if the keyword search mapping is deleted. See example below or refer `DeleteResponse`




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Words Deleted"
}
```
</details>









---


#### getAllSearchKeyword
List all the custom keyword search added in the application.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAllSearchKeyword(isActive: isActive, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| isActive | Bool? | no | Filter the custom keyword listing by their active status. |   
| q | String? | no | It is to search by keywords. |  



Custom Search Keyword allows you to map conditions with keywords to give you the ultimate results. This API allows you to list all the custom keyword search configured for the application.

*Returned Response:*




[GetSearchWordsResponse](#GetSearchWordsResponse)

A successful response contains the list of the custom keywords searches configured for the application. See example below or refer `GetSearchWordsResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "current": 1,
    "size": 1,
    "has_previous": false,
    "has_next": false,
    "item_count": 1
  },
  "items": [
    {
      "uid": "602fa1e9a596ce349563f6b9",
      "words": [
        "sds"
      ],
      "app_id": "000000000000000000000001",
      "is_active": true,
      "result": {
        "query": {
          "department": [
            "men"
          ]
        },
        "sort_on": "popular"
      },
      "_custom_json": {}
    }
  ]
}
```
</details>









---


#### createCustomKeyword
Add custom keywords search for an application.




```swift
platformClient.application("<APPLICATION_ID>").catalog.createCustomKeyword(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateSearchKeyword | yes | Request body |


Custom Search Keyword allows you to map conditions with keywords to give you the ultimate results. This API allows you to add a rule for the custom keyword to a search behaviour for an application. See `CreateSearchKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateSearchKeywordSchema`

*Returned Response:*




[GetSearchWordsData](#GetSearchWordsData)

A successful response contains the keyword object with id that is added. See example below or refer `GetSearchWordsDataSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": "602fa1e9a596ce349563f6b9",
  "words": [
    "sds"
  ],
  "app_id": "000000000000000000000001",
  "is_active": true,
  "result": {
    "query": {
      "department": [
        "men"
      ]
    },
    "sort_on": "popular"
  },
  "_custom_json": {}
}
```
</details>









---


#### updateAutocompleteKeyword
Update a autocomplete keyword config by ID.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateAutocompleteKeyword(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a specific autocomplete keyword map. Pass the `id` of the keywords which you want to delete. |  
| body | GetAutocompleteWordsData | yes | Request body |


Autocomplete keywords configuration help you to extend and customize the behaviour of autocomplete search results in Fynd Platform. This API allows you to update a mapping by it's `id`.

*Returned Response:*




[UpdateAutocompleteWordData](#UpdateAutocompleteWordData)

The Mapping object. See example below or refer `GetAutocompleteWordsResponseSchema` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "_id": "602fa1eaa596ce349563f6c6",
  "uid": "602fa1eaa596ce349563f6c6",
  "app_id": "000000000000000000000001",
  "words": [
    "dasd"
  ],
  "is_active": true,
  "results": [
    {
      "_custom_json": {},
      "display": "Helllow",
      "logo": {
        "url": "https://hdn-1.addsale.com/addsale/company/61/applications/600a5b3fe0991a4718cdb448/company/1/application/000000000000000000000001/search/pictures/square-logo/original/n_8bvEaBw-Helllow.png"
      },
      "action": {
        "type": "page",
        "page": {
          "query": {
            "brand": [
              "nike"
            ]
          },
          "type": "products",
          "url": "/products/?brand=nike"
        }
      }
    }
  ]
}
```
</details>









---


#### getAutocompleteKeywordDetail
Get the detail of the autocomplete config by ID.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAutocompleteKeywordDetail(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a specific autocomplete keyword map. Pass the `id` of the keywords which you want to retrieve. |  



Autocomplete keywords configuration help you to extend and customize the behaviour of autocomplete search results in Fynd Platform. This API allows you to get the details of a words by its `id`.

*Returned Response:*




[GetAutocompleteWordsData](#GetAutocompleteWordsData)

A successful response contains the data of the autocomplete with its specific ID. See example below or refer `GetAutocompleteWordsResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": "602fa1eaa596ce349563f6c6",
  "app_id": "000000000000000000000001",
  "words": [
    "dasd"
  ],
  "is_active": true,
  "results": [
    {
      "_custom_json": {},
      "display": "Helllow",
      "logo": {
        "url": "https://hdn-1.addsale.com/addsale/company/61/applications/600a5b3fe0991a4718cdb448/company/1/application/000000000000000000000001/search/pictures/square-logo/original/n_8bvEaBw-Helllow.png"
      },
      "action": {
        "type": "page",
        "page": {
          "query": {
            "brand": [
              "nike"
            ]
          },
          "type": "products",
          "url": "/products/?brand=nike"
        }
      }
    }
  ]
}
```
</details>









---


#### deleteAutocompleteKeyword
Delete a autocomplete keyword config by ID.




```swift
platformClient.application("<APPLICATION_ID>").catalog.deleteAutocompleteKeyword(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a specific autocomplete keyword map. Pass the `id` of the keywords which you want to delete. |  



Autocomplete keywords configuration help you to extend and customize the behaviour of autocomplete search results in Fynd Platform. This API allows you to delete a keywords by it's `id`.

*Returned Response:*




[DeleteResponse](#DeleteResponse)

A successful response contains success message if config is deleted. See example below or refer `DeleteResponse`




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Words Deleted"
}
```
</details>









---


#### getAutocompleteConfig
List all autocomplete keyword configuration of an application.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAutocompleteConfig() { (response, error) in
    // Use response
}
```






The custom autocomplete keyword allows you to map conditions with keywords to give you the autocomplete results. This API allows you to list all the autocomplete keyword configured for an application.

*Returned Response:*




[GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

A successful response contains the list of custom autocomplete keywords. See example below or refer `GetAutocompleteWordsResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "current": 1,
    "size": 1,
    "has_previous": false,
    "has_next": false,
    "item_count": 1
  },
  "items": [
    {
      "uid": "602fa1eaa596ce349563f6c6",
      "app_id": "000000000000000000000001",
      "words": [
        "dasd"
      ],
      "is_active": true,
      "results": [
        {
          "_custom_json": {},
          "display": "Helllow",
          "logo": {
            "url": "https://hdn-1.addsale.com/addsale/company/61/applications/600a5b3fe0991a4718cdb448/company/1/application/000000000000000000000001/search/pictures/square-logo/original/n_8bvEaBw-Helllow.png"
          },
          "action": {
            "type": "page",
            "page": {
              "query": {
                "brand": [
                  "nike"
                ]
              },
              "type": "products",
              "url": "/products/?brand=nike"
            }
          }
        }
      ]
    }
  ]
}
```
</details>









---


#### createCustomAutocompleteRule
Add a custom autocomplete keyword configuration.




```swift
platformClient.application("<APPLICATION_ID>").catalog.createCustomAutocompleteRule(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateAutocompleteKeyword | yes | Request body |


Autocomplete keywords configuration help you to extend and customize the behaviour of autocomplete search results in Fynd Platform. This API allows to create the auto-complete configuration for the application.

*Returned Response:*




[GetAutocompleteWordsData](#GetAutocompleteWordsData)

A successful response contains the data of the autocomplete config with UID. See example below or refer `GetAutocompleteWordsDataSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": "602fa1eaa596ce349563f6c6",
  "app_id": "000000000000000000000001",
  "words": [
    "dasd"
  ],
  "is_active": true,
  "results": [
    {
      "_custom_json": {},
      "display": "Helllow",
      "logo": {
        "url": "https://hdn-1.addsale.com/addsale/company/61/applications/600a5b3fe0991a4718cdb448/company/1/application/000000000000000000000001/search/pictures/square-logo/original/n_8bvEaBw-Helllow.png"
      },
      "action": {
        "type": "page",
        "page": {
          "query": {
            "brand": [
              "nike"
            ]
          },
          "type": "products",
          "url": "/products/?brand=nike"
        }
      }
    }
  ]
}
```
</details>









---


#### listSearchRerankConfig
List all the search reranking config in an application.




```swift
platformClient.application("<APPLICATION_ID>").catalog.listSearchRerankConfig(isActive: isActive, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| isActive | Bool? | no | Filter the custom keyword listing by their active status. |   
| q | String? | no | It is to search by keywords. |  



Search Reranking allows you rank and boost the search of the keywords and products in the product listing. This API allows you to list all the search re-ranking configured for the application.

*Returned Response:*




[SearchRerankListing](#SearchRerankListing)

A successful response contains the list of the custom search rerank configured for the application. See example below or refer `GetSearchWordsResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "current": 1,
    "type": "number",
    "size": 1,
    "has_previous": false,
    "has_next": false,
    "item_total": 1
  },
  "items": [
    {
      "_id": "6474e801227f5e8d15299b97",
      "modified_by": {
        "username": "test_gmail_com",
        "user_id": "8a5a962f98cadea5b3569ce8"
      },
      "created_by": {
        "username": "test_gmail_com",
        "user_id": "8a5a962f98cadea5b3569ce8"
      },
      "is_active": true,
      "app_id": "64679f0adf5dd8b4db6c8e5b",
      "words": [
        "test",
        "tira"
      ],
      "modified_on": "2023-05-29T17:59:29.757000",
      "ranking": {
        "boost": [
          {
            "attribute_key": "brand_slug",
            "attribute_value": "soulflower"
          },
          {
            "attribute_key": "l3_category_slugs",
            "attribute_value": "categorylevel3"
          }
        ]
      },
      "created_on": "2023-05-29T17:59:29.757000",
      "id": "6474e801227f5e8d15299b97"
    }
  ]
}
```
</details>









---


#### createSearchRerankingConfig
Add a Custom Search Keywords and boosting score against it




```swift
platformClient.application("<APPLICATION_ID>").catalog.createSearchRerankingConfig(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateSearchReranking | yes | Request body |


Search Reranking allows you rank and boost the search of the keywords and products in the product listing. Create a Custom Search Reranking rule. This API allows you to create a custom search re rank rule to re-rank the search in the listing of an application.

*Returned Response:*




[SearchRerankingModel](#SearchRerankingModel)

A successful response contains the data of the search re ranking with the ID. See example below or refer `SearchRerankingModelSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "ranking": {
    "boost": [
      {
        "attribute_key": "brand_slug",
        "attribute_value": "rishikaaa"
      }
    ]
  },
  "words": [
    "test"
  ],
  "app_id": "637f6d91f605ecc8a0454f48",
  "is_active": true,
  "modified_on": "2023-05-29T18:38:28.360981",
  "modified_by": {
    "username": "test_gmail_com",
    "user_id": "df03898d9fe7aa3aa63d9cd3"
  }
}
```
</details>









---


#### updateSearchRerankConfig
Update the search rerank details of an application by its ID.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateSearchRerankConfig(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a specific keyword search configuration. Pass the `id` of the keywords which you want to retrieve. |  
| body | CreateSearchReranking | yes | Request body |


Search Reranking allows you rank and boost the search of the keywords and products in the product listing. This API allows you to update the search re-ranking configured for the application.

*Returned Response:*




[SearchRerankingModel](#SearchRerankingModel)

A successful response contains the data of the updated custom search rerank configured for the application. See example below or refer `SearchRerankingModelSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "ranking": {
    "boost": [
      {
        "attribute_key": "brand_slug",
        "attribute_value": "rishikaaa"
      }
    ]
  },
  "words": [
    "test"
  ],
  "app_id": "637f6d91f605ecc8a0454f48",
  "is_active": true,
  "modified_on": "2023-05-29T18:38:28.360981",
  "modified_by": {
    "username": "test_gmail_com",
    "user_id": "df03898d9fe7aa3aa63d9cd3"
  }
}
```
</details>









---


#### getSearchRerankingConfig
Get the search rerank details of an application by its ID.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getSearchRerankingConfig(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a specific keyword search configuration. Pass the `id` of the keywords which you want to retrieve. |  



Search Reranking allows you rank and boost the search of the keywords and products in the product listing. This API allows you to get the data of a search re-ranking configured for the application by their ID.

*Returned Response:*




[SearchRerankingModel](#SearchRerankingModel)

A successful response contains the detail of the custom search rerank configured for the application. See example below or refer `GetSearchWordsResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "ranking": {
    "boost": [
      {
        "attribute_key": "brand_slug",
        "attribute_value": "soulflower"
      },
      {
        "attribute_key": "l3_category_slugs",
        "attribute_value": "categorylevel3"
      }
    ]
  },
  "modified_by": {
    "username": "test_gmail_com_com_45636",
    "user_id": "8a5a962f98cadea5b3569ce8"
  },
  "created_on": "2023-05-29T17:59:29.757000",
  "app_id": "64679f0adf5dd8b4db6c8e5b",
  "words": [
    "test",
    "tira"
  ],
  "is_active": true,
  "created_by": {
    "username": "test_gmail_com_com_45636",
    "user_id": "8a5a962f98cadea5b3569ce8"
  },
  "modified_on": "2023-05-29T17:59:29.757000",
  "id": "6474e801227f5e8d15299b97"
}
```
</details>









---


#### deleteSearchRerankConfig
Delete the search re-ranking configured for an application bt its ID.




```swift
platformClient.application("<APPLICATION_ID>").catalog.deleteSearchRerankConfig(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a specific keyword search configuration. Pass the `id` of the keywords which you want to delete. |  



Search Reranking allows you rank and boost the search of the keywords and products in the product listing. This API allows you to delete a search re-ranking configured for the application.

*Returned Response:*




[DeleteRerankResponse](#DeleteRerankResponse)

A successful response contains the success response for the deleted custom search rerank configured for the application. See example below or refer `DeleteRerankResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "message": "Ranking Config deleted"
}
```
</details>









---


#### getProductBundle
List all Product Bundles




```swift
platformClient.catalog.getProductBundle(q: q, slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | A search string that is searched with product bundle name. |   
| slug | [String]? | no | slugs of bundles to be retrieved. |  



Get all product bundles for a particular company

*Returned Response:*




[GetProductBundleListingResponse](#GetProductBundleListingResponse)

List of bundle configured for a company. See example below or refer `GetProductBundleListingResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "current": 1,
    "total": 1,
    "has_previous": false,
    "has_next": false,
    "total_item_count": 4
  },
  "items": [
    {
      "slug": "bag",
      "logo": "http://g.com/poo.png/",
      "name": "Bag",
      "choice": "multi",
      "products": [
        {
          "product_uid": 7500001,
          "max_quantity": 1,
          "min_quantity": 1,
          "auto_add_to_cart": false,
          "auto_select": false,
          "allow_remove": true
        }
      ],
      "meta": {},
      "same_store_assignment": true,
      "is_active": true,
      "page_visibility": [
        "pdp"
      ],
      "created_by": {
        "username": "917827311650_22960",
        "uid": "123"
      },
      "company_id": 1,
      "created_on": "2021-02-19 16:40:26.310007",
      "modified_by": {
        "username": "917827311650_22960",
        "uid": "123"
      },
      "modified_on": "2021-02-19 16:40:26.310027",
      "id": "602f9ca2a596ce312f5956f9"
    },
    {
      "choice": "multi",
      "same_store_assignment": true,
      "products": [
        {
          "auto_select": false,
          "allow_remove": true,
          "auto_add_to_cart": false,
          "max_quantity": 1,
          "product_uid": 7500001,
          "min_quantity": 1
        }
      ],
      "is_active": true,
      "slug": "bag",
      "meta": {},
      "logo": "http://g.com/poo.png/",
      "page_visibility": [
        "pdp"
      ],
      "name": "Bag",
      "created_by": {
        "username": "917827311650_22960",
        "uid": "123"
      },
      "company_id": 1,
      "created_on": "2021-02-19 16:21:35.091512",
      "modified_by": {
        "username": "917827311650_22960",
        "uid": "123"
      },
      "modified_on": "2021-02-19 16:21:35.091540",
      "id": "602f9837a596ce2edf9868e2"
    },
    {
      "slug": "bag",
      "is_active": true,
      "same_store_assignment": true,
      "meta": {},
      "choice": "multi",
      "logo": "http://g.com/poo.png/",
      "page_visibility": [
        "pdp"
      ],
      "name": "Bag",
      "products": [
        {
          "auto_select": false,
          "min_quantity": 1,
          "allow_remove": true,
          "auto_add_to_cart": false,
          "max_quantity": 1,
          "product_uid": 7500001
        }
      ],
      "created_by": {
        "username": "917827311650_22960",
        "uid": "123"
      },
      "company_id": 1,
      "created_on": "2021-02-19 16:20:24.605207",
      "modified_by": {
        "username": "917827311650_22960",
        "uid": "123"
      },
      "modified_on": "2021-02-19 16:20:24.605230",
      "id": "602f97f0a596ce2ead47cd0b"
    },
    {
      "products": [
        {
          "auto_select": false,
          "auto_add_to_cart": false,
          "min_quantity": 1,
          "allow_remove": true,
          "max_quantity": 1,
          "product_uid": 7500001
        }
      ],
      "is_active": true,
      "logo": "http://g.com/poo.png/",
      "name": "Bag",
      "choice": "multi",
      "slug": "bag",
      "same_store_assignment": true,
      "page_visibility": [
        "pdp"
      ],
      "meta": {},
      "created_by": {
        "username": "917827311650_22960",
        "uid": "123"
      },
      "company_id": 1,
      "created_on": "2021-02-19 16:16:46.196449",
      "modified_by": {
        "username": "917827311650_22960",
        "uid": "123"
      },
      "modified_on": "2021-02-19 16:16:46.196467",
      "id": "602f9716a596ce2e415196df"
    }
  ]
}
```
</details>









---


#### createProductBundle
Create Product Bundle




```swift
platformClient.catalog.createProductBundle(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ProductBundleRequest | yes | Request body |


Create Product Bundle. See `ProductBundleRequest` for the request body parameter need to create a product bundle. On successful request, returns in `ProductBundleRequest` with id

*Returned Response:*




[GetProductBundleCreateResponse](#GetProductBundleCreateResponse)

Get bundle with id that is added. See example below or refer `GetProductBundleCreateResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "slug": "bag",
  "logo": "http://g.com/poo.png/",
  "name": "Bag",
  "choice": "multi",
  "products": [
    {
      "product_uid": 7500001,
      "max_quantity": 1,
      "min_quantity": 1,
      "auto_add_to_cart": false,
      "auto_select": false,
      "allow_remove": true
    }
  ],
  "meta": {},
  "same_store_assignment": true,
  "is_active": true,
  "page_visibility": [
    "pdp"
  ],
  "created_by": {
    "username": "917827311650_22960",
    "uid": "123"
  },
  "company_id": 1,
  "created_on": "2021-02-19 16:40:26.310007",
  "modified_by": {
    "username": "917827311650_22960",
    "uid": "123"
  },
  "modified_on": "2021-02-19 16:40:26.310027",
  "id": "602f9ca2a596ce312f5956f9"
}
```
</details>









---


#### updateProductBundle
Update a Product Bundle




```swift
platformClient.catalog.updateProductBundle(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  
| body | ProductBundleUpdateRequest | yes | Request body |


Update a Product Bundle by its id. On successful request, returns the updated product bundle

*Returned Response:*




[GetProductBundleCreateResponse](#GetProductBundleCreateResponse)

The Collection object. See example below or refer `GetProductBundleCreateResponse` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "slug": "bag",
  "logo": "http://g.com/poo.png/",
  "name": "Bag",
  "choice": "multi",
  "products": [
    {
      "product_uid": 7500001,
      "max_quantity": 1,
      "min_quantity": 1,
      "auto_add_to_cart": false,
      "auto_select": false,
      "allow_remove": true
    }
  ],
  "meta": {},
  "same_store_assignment": true,
  "is_active": true,
  "page_visibility": [
    "pdp"
  ],
  "created_by": {
    "username": "917827311650_22960",
    "uid": "123"
  },
  "company_id": 1,
  "created_on": "2021-02-19 16:40:26.310007",
  "modified_by": {
    "username": "917827311650_22960",
    "uid": "123"
  },
  "modified_on": "2021-02-19 16:40:26.310027",
  "id": "602f9ca2a596ce312f5956f9"
}
```
</details>









---


#### getProductBundleDetail
Get a particular Product Bundle details




```swift
platformClient.catalog.getProductBundleDetail(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. |  



Get a particular Bundle details by its `id`. If successful, returns a Product bundle resource in the response body specified in `GetProductBundleResponse`

*Returned Response:*




[GetProductBundleResponse](#GetProductBundleResponse)

The Collection object. See example below or refer `GetProductBundleResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "slug": "bag",
  "company_id": 1,
  "logo": "http://g.com/poo.png/",
  "name": "Bag",
  "choice": "multi",
  "products": [
    {
      "product_uid": 7500001,
      "product_details": {
        "country_of_origin": "India",
        "slug": "slug-1",
        "item_code": "760B3BFF-4905-44B8-A50E-082829E7107F",
        "attributes": {
          "brand_name": "brand 2"
        },
        "name": "Some Phone",
        "images": [
          "https://hdn-1.addsale.com/x0/media/pictures/tagged_items/original/random_code_4/FE6DUR_000000.png"
        ],
        "uid": 7500001
      },
      "max_quantity": 1,
      "min_quantity": 1,
      "auto_add_to_cart": false,
      "auto_select": false,
      "allow_remove": true
    }
  ],
  "meta": {},
  "same_store_assignment": true,
  "page_visibility": [
    "pdp"
  ]
}
```
</details>









---


#### getSizeGuides
Get list of size guides




```swift
platformClient.catalog.getSizeGuides(active: active, q: q, tag: tag, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| active | Bool? | no | filter size guide on basis of active, in-active |   
| q | String? | no | Query that is to be searched. |   
| tag | String? | no | to filter size guide on basis of tag. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |  



This API allows to view all the size guides associated to the seller.

*Returned Response:*




[ListSizeGuide](#ListSizeGuide)

Size guide object. See example below or refer `ListSizeGuide` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "modified_by": {
        "username": "silverbolt",
        "user_id": "-1"
      },
      "active": true,
      "id": "60364384f08385bee776f83d",
      "title": "Demo SG",
      "modified_on": "2021-02-24T17:46:04.146000Z",
      "brand_id": 2,
      "created_by": {
        "username": "silverbolt",
        "user_id": "-1"
      },
      "subtitle": "I am demo",
      "company_id": 12,
      "created_on": "2021-02-24T17:46:04.146000Z",
      "guide": {
        "meta": {
          "values": [
            {
              "col_1": "10",
              "col_2": "20"
            },
            {
              "col_1": "12",
              "col_2": "22"
            },
            {
              "col_1": "14",
              "col_2": "24"
            }
          ],
          "unit": "cm",
          "headers": {
            "col_1": {
              "value": "Head",
              "convertable": false
            },
            "col_2": {
              "value": "Shoulder",
              "convertable": true
            }
          }
        }
      },
      "tag": "demo",
      "name": "Demo"
    }
  ],
  "page": {
    "current": 1,
    "size": 1,
    "has_previous": false,
    "has_next": false,
    "item_count": 1
  }
}
```
</details>









---


#### createSizeGuide
Create a size guide.




```swift
platformClient.catalog.createSizeGuide(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ValidateSizeGuide | yes | Request body |


This API allows to create a size guide associated to a brand.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### updateSizeGuide
Edit a size guide.




```swift
platformClient.catalog.updateSizeGuide(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Mongo id of the size guide to be edited |  
| body | ValidateSizeGuide | yes | Request body |


This API allows to edit a size guide.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getSizeGuide
Get a single size guide.




```swift
platformClient.catalog.getSizeGuide(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Id of the size guide to be viewed. |  



This API helps to get data associated to a size guide.

*Returned Response:*




[SizeGuideResponse](#SizeGuideResponse)

Brand object. See example below or refer `SizeGuideResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "active": true,
  "brand_id": 1,
  "created_on": "2021-02-24T17:46:04.146000Z",
  "modified_on": "2021-02-25T15:19:30.822000Z",
  "created_by": {
    "username": "silverbolt",
    "user_id": "-1"
  },
  "modified_by": {
    "username": "917827311650_22960",
    "user_id": "123"
  },
  "name": "edited size guide",
  "company_id": 1,
  "guide": {
    "meta": {
      "headers": {
        "col_1": {
          "value": "Head",
          "convertable": false
        },
        "col_2": {
          "value": "Shoulder",
          "convertable": true
        }
      },
      "values": [
        {
          "col_1": "10",
          "col_2": "20"
        },
        {
          "col_1": "12",
          "col_2": "22"
        },
        {
          "col_1": "14",
          "col_2": "24"
        }
      ],
      "unit": "cm"
    }
  },
  "tag": "demo",
  "title": "Demo SG",
  "subtitle": "I am demo",
  "id": "60364384f08385bee776f83d"
}
```
</details>









---


#### getAppProduct
Get company application product data.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAppProduct(itemId: itemId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | String | yes | product id for a particular product. |  



Products are the core resource of an application. If successful, returns a Company Application Product resource in the response body depending upon filter sent.

*Returned Response:*




[OwnerAppItemResponse](#OwnerAppItemResponse)

The Company Applicaton Product Data(MOQ/SEO).




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "moq": {
    "minimum": 1,
    "maximum": 10,
    "increment_unit": 2
  },
  "seo": {
    "title": "test-title",
    "description": "test-description"
  },
  "alt_text": {
    "https://test-url.com/test.png": "test-alt"
  },
  "is_gift": false,
  "is_cod": false
}
```
</details>









---


#### updateAppProduct
Update a single custom meta.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateAppProduct(itemId: itemId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | String | yes | product id for which the custom_meta is associated. |  
| body | ApplicationItemMeta | yes | Request body |


This API helps to update data associated to a item custom meta.

*Returned Response:*




[SuccessResponse1](#SuccessResponse1)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getConfigurationMetadata
Get configuration metadata details for catalog for admin panel




```swift
platformClient.application("<APPLICATION_ID>").catalog.getConfigurationMetadata(configType: configType, templateSlug: templateSlug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | A `config_type` is an identifier that defines a specific type of configuration. |   
| templateSlug | String? | no | Get configuration list filtered by `template_slug` string. This is for the details and comparision groups. |  



Get the configuraion metadata details for catalog.

*Returned Response:*




[GetConfigMetadataResponse](#GetConfigMetadataResponse)

configuration details for catalog. See example below or refer `GetConfigMetadataResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": [
    {
      "key": "screen_size_filter",
      "display": "Screen Size",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "primary_camera_filter",
      "display": "Primary Camera (duplicate)",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "selfie_camera_filter",
      "display": "Selfie Camera (Duplicate)",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "weight_group",
      "display": "Weight Group",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "pallet",
      "display": "pallet",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "general_information",
      "display": "General Information",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "brand_name",
      "display": "brand",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "gender",
      "display": "Gender",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "socks_length",
      "display": "Socks Length",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "sub_brand",
      "display": "Sub-brand",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "color",
      "display": "Colour",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "boot_length",
      "display": "Boot Length",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "bottomwear_length",
      "display": "Bottomwear Length",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "thread_count",
      "display": "Thread Count",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "sleeve_type",
      "display": "Sleeve Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "collar_type",
      "display": "Collar Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "food-preference",
      "display": "Food Preference",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "guitar-types",
      "display": "Guitar Types",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "storage",
      "display": "Storage",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "quality",
      "display": "Quality",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "material",
      "display": "Material",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "arch_type",
      "display": "Arch Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "like-dislike",
      "display": "Like & Dislike",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "dietary-preference",
      "display": "Dietary preference",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "organic",
      "display": "organic",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "utility",
      "display": "Utility",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "dial_shape",
      "display": "Dial Shape",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "sheet_size",
      "display": "Sheet Size",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "strap_type",
      "display": "Strap Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "movement_type",
      "display": "Movement Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "sleeve_length",
      "display": "Sleeve Length",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "neck_type",
      "display": "Neck Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "denim_type",
      "display": "Denim Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "bed_size",
      "display": "Bed Size",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "pattern",
      "display": "Pattern",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "topwear_length",
      "display": "Topwear Length",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "closure_type",
      "display": "Closure Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "product_fit",
      "display": "Product Fit",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "clasp_type",
      "display": "Clasp Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "toe_type",
      "display": "Toe Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "ram",
      "display": "Memory (RAM)",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "stone_type",
      "display": "Stone Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "hair_type",
      "display": "Hair Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "care_instructions",
      "display": "Care Instructions",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "warranty",
      "display": "Warranty",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "spf",
      "display": "Spf",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "fragrance_type",
      "display": "Fragrance Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "primary-colour",
      "display": "Primary Colour",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "fretboard-material",
      "display": "Fretboard Material",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "cleaning-type",
      "display": "Cleaning Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "lens_material",
      "display": "Lens Material",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "maximum-shelf-life",
      "display": "Maximum Shelf Life",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "base-flavour",
      "display": "Base Flavour",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "battery",
      "display": "Battery",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "net-quantity",
      "display": "Net Quantity",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "marketer-address",
      "display": "Marketer Address",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "marketer-name",
      "display": "Marketer Name",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "import-month-and-year",
      "display": "Import Month & Year",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "name-of-the-commodity",
      "display": "Name of the commodity",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "date-first-available",
      "display": "Date first available",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "iron",
      "display": "iron_attribute",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "iron-template2",
      "display": "iron-template2",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "mg",
      "display": "Mg",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": [
        "mg",
        "g",
        "oz",
        "kg",
        "lb"
      ]
    },
    {
      "key": "name",
      "display": "Name",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "sassy-level",
      "display": "Sassy Level",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": [
        "mm",
        "cm",
        "in",
        "ft",
        "m",
        "km"
      ]
    },
    {
      "key": "test-attribute",
      "display": "Test Attribute",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "filter-type",
      "display": "Filter Type",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "l3-category",
      "display": "L3 Category",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "country_of_origin",
      "display": "Country of Origin",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "item_code",
      "display": "Item Code",
      "filter_types": [
        "multivalued"
      ],
      "compatible_units": []
    },
    {
      "key": "item_code",
      "display": "Item Code",
      "filter_types": [
        "multivalued"
      ],
      "units": []
    },
    {
      "key": "brand",
      "display": "Brand",
      "filter_types": [
        "multivalued"
      ],
      "units": []
    },
    {
      "key": "country_of_origin",
      "display": "Country Of Origin",
      "filter_types": [
        "multivalued"
      ],
      "units": []
    },
    {
      "key": "image_nature",
      "display": "Image Type",
      "filter_types": [
        "multivalued"
      ]
    },
    {
      "key": "sizes",
      "display": "Sizes",
      "filter_types": [
        "multivalued"
      ]
    },
    {
      "key": "discount",
      "display": "Discount",
      "filter_types": [
        "range",
        "intervals",
        "multivalued"
      ]
    },
    {
      "key": "min_price_effective",
      "display": "Price",
      "filter_types": [
        "range",
        "intervals",
        "multivalued"
      ]
    },
    {
      "key": "departments",
      "display": "Department",
      "filter_types": [
        "multivalued"
      ]
    },
    {
      "key": "l3_category_slugs",
      "display": "Category",
      "filter_types": [
        "multivalued"
      ]
    },
    {
      "key": "brand_slug",
      "display": "Brand",
      "filter_types": [
        "multivalued"
      ]
    },
    {
      "key": "size_depth",
      "display": "Size Depth",
      "filter_types": [
        "multivalued",
        "range"
      ]
    },
    {
      "key": "is_set",
      "display": "Set",
      "filter_types": [
        "multivalued"
      ]
    },
    {
      "key": "country_of_origin",
      "display": "Country of Origin",
      "filter_types": [
        "multivalued"
      ]
    },
    {
      "key": "item_code",
      "display": "Item Code",
      "filter_types": [
        "multivalued"
      ]
    },
    {
      "key": "is_available",
      "display": "Available",
      "filter_types": [
        "singlevalued"
      ]
    },
    {
      "key": "rating",
      "display": "Rating",
      "filter_types": [
        "range",
        "intervals",
        "multivalued"
      ]
    }
  ],
  "values": {
    "type": [
      {
        "key": "range",
        "display": "Range Bar"
      },
      {
        "key": "intervals",
        "display": "Bucket Values"
      },
      {
        "key": "multivalued",
        "display": "Single"
      },
      {
        "key": "singlevalued",
        "display": "Single"
      }
    ],
    "sort": [
      {
        "key": "count",
        "display": "Product Count"
      },
      {
        "key": "ascending",
        "display": "Ascending"
      },
      {
        "key": "descending",
        "display": "Descending"
      }
    ]
  },
  "condition": [
    {
      "key": "OR",
      "display": "OR"
    },
    {
      "key": "AND",
      "display": "AND"
    }
  ]
}
```
</details>









---


#### getGroupConfigurations
Get the details of the application configured configurations of group config types.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getGroupConfigurations(configType: configType, pageNo: pageNo, pageSize: pageSize, search: search, templateSlug: templateSlug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | A `config_type` is an identifier that defines a specific type of configuration. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| search | String? | no | Get configuration list filtered by `search` string. |   
| templateSlug | String? | no | Get configuration list filtered by `template_slug` string. This is for the details and comparision groups. |  



Get the details of the application configured configurations of group config types.

*Returned Response:*




[GetConfigResponse](#GetConfigResponse)

configuration details for catalog. See example below or refer `GetConfigResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": [
    {
      "is_active": true,
      "slug": "test-group12-31",
      "is_default": false,
      "attributes": [
        {
          "is_active": true,
          "display_type": "text",
          "slug": "item_code",
          "key": "item_code",
          "priority": 1,
          "name": "Item Code"
        },
        {
          "is_active": true,
          "display_type": "text",
          "slug": "brand",
          "key": "brand",
          "priority": 2,
          "name": "Brand"
        }
      ],
      "app_id": "5d65089e031f9029f8e8dc2f",
      "priority": 1,
      "template_slugs": [
        "atesttemplate"
      ],
      "name": "Test Group12 ",
      "id": "62a84b90bd43c0fe4cf53574"
    },
    {
      "is_active": true,
      "slug": "et14",
      "is_default": false,
      "attributes": [
        {
          "is_active": true,
          "display_type": "text",
          "slug": "item_code",
          "key": "item_code",
          "priority": 1,
          "name": "Item Code"
        },
        {
          "is_active": true,
          "display_type": "text",
          "slug": "brand",
          "key": "brand",
          "priority": 2,
          "name": "Brand"
        },
        {
          "is_active": true,
          "display_type": "text",
          "slug": "country_of_origin",
          "key": "country_of_origin",
          "priority": 3,
          "name": "Country Of Origin"
        },
        {
          "is_active": true,
          "display_type": "text",
          "slug": "image_nature",
          "key": "image_nature",
          "priority": 4,
          "name": "Image Type"
        },
        {
          "is_active": true,
          "display_type": "text",
          "slug": "discount",
          "key": "discount",
          "priority": 5,
          "name": "Discount"
        }
      ],
      "app_id": "5d65089e031f9029f8e8dc2f",
      "priority": 2,
      "template_slugs": [
        "atesttemplate"
      ],
      "name": "ET",
      "id": "62a84b9ebd43c0fe4cf53576"
    }
  ],
  "page": {
    "current": 1,
    "next": 2,
    "has_next": false,
    "total_count": 2
  }
}
```
</details>









---


#### createGroupConfiguration
Create configuration for Group config types.




```swift
platformClient.application("<APPLICATION_ID>").catalog.createGroupConfiguration(configType: configType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | A `config_type` is a unique identifier for a particular group configuration type. |  
| body | AppConfigurationDetail | yes | Request body |


Create configuration for Group config types.

*Returned Response:*




[AppConfigurationDetail](#AppConfigurationDetail)

success flag will tell whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "priority": 1,
  "is_default": false,
  "attributes": [
    {
      "priority": 1,
      "display_type": "text",
      "key": "features",
      "name": "Features",
      "is_active": true,
      "slug": "features"
    }
  ],
  "name": "test",
  "app_id": "5d64e3500bcad8693a821c0d",
  "template_slugs": [
    "bags"
  ],
  "is_active": true,
  "slug": "test15",
  "id": "62b1cdab15c88fa867ee4dac"
}
```
</details>









---


#### updateGroupConfiguration
Update the group configurations for the application.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateGroupConfiguration(configType: configType, groupSlug: groupSlug, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | A `config_type` is a unique identifier for a particular group configuration type. |   
| groupSlug | String | yes | A `group_slug` is a unique identifier of a particular configuration. |  
| body | AppConfigurationDetail | yes | Request body |


Update the group configurations for the application.

*Returned Response:*




[AppConfigurationDetail](#AppConfigurationDetail)

success flag will tell whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "is_active": true,
  "template_slugs": [
    "bags"
  ],
  "priority": 1,
  "slug": "test15",
  "name": "test",
  "app_id": "5d64e3500bcad8693a821c0d",
  "is_default": false,
  "attributes": [
    {
      "is_active": true,
      "priority": 1,
      "slug": "features",
      "name": "Features",
      "key": "features",
      "display_type": "text"
    }
  ],
  "id": "62b1cdab15c88fa867ee4dac"
}
```
</details>









---


#### deleteGroupConfiguration
Delete configuration of the product config type of the application.




```swift
platformClient.application("<APPLICATION_ID>").catalog.deleteGroupConfiguration(configType: configType, groupSlug: groupSlug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | A `config_type` is a unique identifier for a particular group configuration type. |   
| groupSlug | String | yes | A `group_slug` is a unique identifier of a particular configuration. |  



Delete configuration of the product config type of the application.

*Returned Response:*




[ConfigSuccessResponse](#ConfigSuccessResponse)

success message will tell whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Config Item deleted successfully."
}
```
</details>









---


#### getListingConfigurations
Get the details of the application configured configurations of listing config types.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getListingConfigurations(configType: configType, pageNo: pageNo, pageSize: pageSize, search: search) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | A `config_type` is an identifier that defines a specific type of configuration. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| search | String? | no | Get configuration list filtered by `search` string. |  



Get the details of the application configured configurations of listing config types.

*Returned Response:*




[GetConfigResponse](#GetConfigResponse)

configuration details for catalog. See example below or refer `GetConfigResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": [
    {
      "is_active": true,
      "slug": "test-group12-31",
      "is_default": false,
      "attributes": [
        {
          "is_active": true,
          "display_type": "text",
          "slug": "item_code",
          "key": "item_code",
          "priority": 1,
          "name": "Item Code"
        },
        {
          "is_active": true,
          "display_type": "text",
          "slug": "brand",
          "key": "brand",
          "priority": 2,
          "name": "Brand"
        }
      ],
      "app_id": "5d65089e031f9029f8e8dc2f",
      "priority": 1,
      "template_slugs": [
        "atesttemplate"
      ],
      "name": "Test Group12 ",
      "id": "62a84b90bd43c0fe4cf53574"
    },
    {
      "is_active": true,
      "slug": "et14",
      "is_default": false,
      "attributes": [
        {
          "is_active": true,
          "display_type": "text",
          "slug": "item_code",
          "key": "item_code",
          "priority": 1,
          "name": "Item Code"
        },
        {
          "is_active": true,
          "display_type": "text",
          "slug": "brand",
          "key": "brand",
          "priority": 2,
          "name": "Brand"
        },
        {
          "is_active": true,
          "display_type": "text",
          "slug": "country_of_origin",
          "key": "country_of_origin",
          "priority": 3,
          "name": "Country Of Origin"
        },
        {
          "is_active": true,
          "display_type": "text",
          "slug": "image_nature",
          "key": "image_nature",
          "priority": 4,
          "name": "Image Type"
        },
        {
          "is_active": true,
          "display_type": "text",
          "slug": "discount",
          "key": "discount",
          "priority": 5,
          "name": "Discount"
        }
      ],
      "app_id": "5d65089e031f9029f8e8dc2f",
      "priority": 2,
      "template_slugs": [
        "atesttemplate"
      ],
      "name": "ET",
      "id": "62a84b9ebd43c0fe4cf53576"
    }
  ],
  "page": {
    "current": 1,
    "next": 2,
    "has_next": false,
    "total_count": 2
  }
}
```
</details>









---


#### createListingConfiguration
Add configuration for listings




```swift
platformClient.application("<APPLICATION_ID>").catalog.createListingConfiguration(configType: configType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | A `config_type` is a unique identifier for a particular listing configuration type. |  
| body | AppConfigurationsSort | yes | Request body |


Add configuration for listing.

*Returned Response:*




[AppConfigurationsSort](#AppConfigurationsSort)

success flag will tell whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "priority": 4,
  "default_key": "",
  "is_default": false,
  "key": "discount_dsc",
  "name": "Discount High to Low",
  "app_id": "5d64e3500bcad8693a821c0d",
  "is_active": true,
  "logo": "https://hdn-1.fynd.com/products/pictures/attribute/logo/original/iG82Qjay9X-Popularity.png",
  "id": "62b1ccb815c88fa867ee4dab"
}
```
</details>









---


#### updateListingConfiguration
Update configuration for listings




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateListingConfiguration(configType: configType, configId: configId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | A `config_type` is a unique identifier for a particular listing configuration type. |   
| configId | String | yes | A `config_id` is a unique identifier of a particular configuration. |  
| body | AppConfigurationsSort | yes | Request body |


Update configuration for listing.

*Returned Response:*




[AppConfigurationsSort](#AppConfigurationsSort)

success flag will tell whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "app_id": "5d64e3500bcad8693a821c0d",
  "key": "latest",
  "default_key": "latest",
  "is_active": true,
  "is_default": false,
  "name": "Latest",
  "priority": 1,
  "id": "6250568de404abd533db571d"
}
```
</details>









---


#### deleteListingConfiguration
Delete configuration for listings




```swift
platformClient.application("<APPLICATION_ID>").catalog.deleteListingConfiguration(configType: configType, configId: configId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| configType | String | yes | A `config_type` is a unique identifier for a particular listing configuration type. |   
| configId | String | yes | A `config_id` is a unique identifier of a particular configuration. |  



Delete configuration for listing.

*Returned Response:*




[ConfigSuccessResponse](#ConfigSuccessResponse)

success message will tell whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Config Item deleted successfully."
}
```
</details>









---


#### updateAllowSingle
Update allow single flag for filters of the application.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateAllowSingle(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AllowSingleRequest | yes | Request body |


Update allow single flag for filters of the application.

*Returned Response:*




[ConfigSuccessResponse](#ConfigSuccessResponse)

success message will tell whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### updateDefaultSort
Update the default sort key configuration for the application.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateDefaultSort(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DefaultKeyRequest | yes | Request body |


Update the default sort key configuration for the application.

*Returned Response:*




[ConfigSuccessResponse](#ConfigSuccessResponse)

success message will tell whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCatalogConfiguration
Get configuration meta  details for catalog for admin panel




```swift
platformClient.application("<APPLICATION_ID>").catalog.getCatalogConfiguration() { (response, error) in
    // Use response
}
```






configuration meta  details for catalog.

*Returned Response:*




[GetCatalogConfigurationMetaData](#GetCatalogConfigurationMetaData)

configuration details for catalog. See example below or refer `GetCatalogConfigurationMetaDataSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getConfigurations
Get configured details for catalog




```swift
platformClient.application("<APPLICATION_ID>").catalog.getConfigurations() { (response, error) in
    // Use response
}
```






configured details for catalog.

*Returned Response:*




[GetAppCatalogConfiguration](#GetAppCatalogConfiguration)

Get application level configured catalog details. See example below or refer `GetAppCatalogConfigurationSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "app_id": "000000000000000000000001",
    "listing": {
      "filter": {
        "attribute_config": [
          {
            "key": "gender",
            "priority": 1,
            "type": "multivalued",
            "name": "Gender",
            "value_config": {
              "condition": "OR",
              "sort": "count",
              "value": "",
              "bucket_points": [],
              "map": {}
            },
            "is_active": true
          },
          {
            "key": "min_price_effective",
            "priority": 2,
            "type": "range",
            "name": "Price",
            "value_config": {
              "condition": "OR",
              "sort": "count",
              "value": "",
              "bucket_points": [],
              "map": {
                "< 500": "Below Rs. 500",
                ">= 6000": "Above Rs. 6000"
              }
            },
            "is_active": true
          },
          {
            "key": "departments",
            "priority": 3,
            "type": "multivalued",
            "name": "Department",
            "value_config": {
              "condition": "OR",
              "sort": "count",
              "value": "metadata",
              "bucket_points": [],
              "map": {}
            },
            "is_active": true
          },
          {
            "key": "brand_id",
            "priority": 4,
            "type": "multivalued",
            "name": "Brand",
            "value_config": {
              "condition": "OR",
              "sort": "ascending",
              "value": "metadata",
              "bucket_points": [],
              "map": {
                "5th Avenue": "A {{value}}"
              }
            },
            "is_active": true
          },
          {
            "key": "season",
            "priority": 5,
            "type": "multivalued",
            "name": "Season",
            "value_config": {
              "condition": "OR",
              "sort": "count",
              "value": "",
              "bucket_points": [],
              "map": {
                "": ""
              }
            },
            "is_active": false
          },
          {
            "key": "is_set",
            "priority": 6,
            "type": "multivalued",
            "name": "Set",
            "value_config": {
              "condition": "OR",
              "sort": "descending",
              "value": "",
              "bucket_points": [],
              "map": {
                "true": "Yes",
                "false": "No"
              }
            },
            "is_active": true
          },
          {
            "key": "rating",
            "priority": 7,
            "type": "multivalued",
            "name": "Rating",
            "value_config": {
              "condition": "OR",
              "sort": "count",
              "value": "",
              "bucket_points": [],
              "map": {
                "": ""
              }
            },
            "is_active": true
          },
          {
            "key": "size_depth",
            "priority": 8,
            "type": "range",
            "name": "Size Depth",
            "value_config": {
              "condition": "OR",
              "sort": "count",
              "value": "",
              "bucket_points": [],
              "map": {
                "{} - {}": "{} - {}"
              }
            },
            "is_active": true
          }
        ],
        "allow_single": false
      },
      "sort": {
        "default": "",
        "config": [
          {
            "key": "price_dsc",
            "logo": "https://hdn-1.fynd.com/global/menu-icons/Price%20High%20to%20Low.png",
            "priority": 1,
            "name": "Price High to Low",
            "is_active": false
          },
          {
            "key": "rating_dsc",
            "logo": "https://hdn-1.fynd.com/global/menu-icons/Rating.png",
            "priority": 2,
            "name": "Rating",
            "is_active": true
          },
          {
            "key": "depth_desc",
            "priority": 3,
            "name": "Size Depth (High to Low)",
            "is_active": true
          },
          {
            "key": "discount_dsc",
            "logo": "https://hdn-1.fynd.com/global/menu-icons/Discount%20Low%20to%20High.png",
            "priority": 4,
            "name": "Discount High to Low",
            "is_active": true
          },
          {
            "key": "popular",
            "logo": "https://hdn-1.fynd.com/global/menu-icons/Popularity.png",
            "priority": 5,
            "name": "Popularity",
            "is_active": true
          },
          {
            "key": "relevance",
            "priority": 6,
            "name": "Relevance",
            "is_active": true
          },
          {
            "key": "price_asc",
            "logo": "https://hdn-1.fynd.com/global/menu-icons/Price%20Low%20to%20High.png",
            "priority": 7,
            "name": "Price Low to High",
            "is_active": true
          }
        ]
      }
    },
    "product": {
      "similar": {
        "config": [
          {
            "key": "seller",
            "size": {
              "max": 10,
              "min": 2
            },
            "priority": 1,
            "title": "Seller",
            "is_active": true,
            "subtitle": ""
          },
          {
            "key": "visual",
            "size": {
              "max": 10,
              "min": 2
            },
            "priority": 2,
            "title": "Visual",
            "is_active": true,
            "subtitle": ""
          },
          {
            "key": "brand",
            "size": {
              "max": 10,
              "min": 2
            },
            "priority": 3,
            "title": "Brand",
            "is_active": true,
            "subtitle": ""
          },
          {
            "key": "specs",
            "size": {
              "max": 10,
              "min": 2
            },
            "priority": 4,
            "title": "Specs",
            "is_active": true,
            "subtitle": ""
          }
        ]
      },
      "variant": {
        "config": [
          {
            "key": "color",
            "display_type": "image",
            "size": {
              "max": 10,
              "min": 2
            },
            "priority": 1,
            "name": "Additional Colors12",
            "is_active": true
          },
          {
            "key": "storage",
            "display_type": "text",
            "size": {
              "max": 10,
              "min": 2
            },
            "priority": 2,
            "name": "Memory",
            "is_active": true
          },
          {
            "key": "visual",
            "display_type": "image",
            "size": {
              "max": 10,
              "min": 2
            },
            "priority": 3,
            "name": "Additional Colors",
            "is_active": true
          },
          {
            "key": "ram_storage",
            "display_type": "text",
            "size": {
              "max": 10,
              "min": 2
            },
            "priority": 4,
            "name": "Ram_Storage",
            "is_active": true
          },
          {
            "key": "shade",
            "display_type": "color",
            "size": {
              "max": 10,
              "min": 2
            },
            "priority": 5,
            "name": "Additional Shades",
            "is_active": true
          },
          {
            "key": "water_resistant",
            "display_type": "text",
            "size": {
              "max": 10,
              "min": 2
            },
            "priority": 6,
            "name": "Water_Resistant",
            "is_active": true
          }
        ]
      }
    },
    "config_id": "000000000000000000000001",
    "config_type": "app"
  },
  "is_default": false
}
```
</details>









---


#### createConfigurationProductListing
Add configuration for products & listings




```swift
platformClient.application("<APPLICATION_ID>").catalog.createConfigurationProductListing(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AppConfiguration | yes | Request body |


Add configuration for products & listing.

*Returned Response:*




[GetAppCatalogConfiguration](#GetAppCatalogConfiguration)

success flag will tell whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getConfigurationByType
Get configured details for catalog




```swift
platformClient.application("<APPLICATION_ID>").catalog.getConfigurationByType(type: type) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| type | String | yes | type can be brands, categories etc. |  



configured details for catalog.

*Returned Response:*




[GetAppCatalogEntityConfiguration](#GetAppCatalogEntityConfiguration)

Get application level configured catalog details. See example below or refer `GetAppCatalogEntityConfigurationSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createConfigurationByType
Add configuration for categories and brands




```swift
platformClient.application("<APPLICATION_ID>").catalog.createConfigurationByType(type: type, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| type | String | yes | type can be brands, categories etc. |  
| body | AppConfiguration | yes | Request body |


Add configuration for categories & brands.

*Returned Response:*




[GetAppCatalogConfiguration](#GetAppCatalogConfiguration)

success flag will tell whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getQueryFilters
Retrieve the filters and sort options for collections.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getQueryFilters(f: f, sortOn: sortOn) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| f | String? | no | Filter the products in the collection using key-value pairs. |   
| sortOn | String? | no | Attribute key on which the products should be sorted. |  



A Collection allows you to organize your products into hierarchical groups. This API retrieves the query filters that can be used to configure a collection for a specific seller account and sale channel.

*Returned Response:*




[GetCollectionQueryOptionResponse](#GetCollectionQueryOptionResponse)

A successful response contains the options for query that can be applied for the application. See the example below or refer to `GetCollectionQueryOptionResponse` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "filters": [
    {
      "key": {
        "display": "Department",
        "name": "department",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/products/pictures/attribute/logo/original/FiQP7BeJbz-Department.png",
        "operators": [
          "in",
          "nin"
        ]
      },
      "values": [
        {
          "display": "Home & Living",
          "count": 54353,
          "is_selected": false,
          "value": "home--living",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.fynd.com/media/category_tab_icons/department/HomeDecor.png"
          }
        },
        {
          "display": "j",
          "count": 20149,
          "is_selected": false,
          "value": "mens-fashions",
          "logo": {
            "type": "image",
            "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/department/pictures/square-logo/original/FnYlrpol3-department.webp"
          }
        },
        {
          "display": "Fashion",
          "count": 6184,
          "is_selected": false,
          "value": "fashion",
          "logo": {
            "type": "image",
            "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/department/pictures/square-logo/original/7rZN3ToJ3-.png"
          }
        },
        {
          "display": "Asma111",
          "count": 38,
          "is_selected": false,
          "value": "asmasssaa",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.jiox0.de/jiox5/department/pictures/square-logo/original/rLdO59CM--department.jpeg"
          }
        },
        {
          "display": "Toys & games",
          "count": 14,
          "is_selected": false,
          "value": "toys",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.fynd.com/media/category_tab_icons/department/Toys.png"
          }
        },
        {
          "display": "Baby Care & Kids Essentials",
          "count": 10,
          "is_selected": false,
          "value": "baby-care-kids-essentials",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.fynd.com/media/category_tab_icons/department/Babycareandkidsessential.png"
          }
        },
        {
          "display": "Electronics",
          "count": 5,
          "is_selected": false,
          "value": "electronics",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.fynd.com/media/logo/department/original/13239_660c6f5b2b8d458789de4552d241ea1b.jpg"
          }
        },
        {
          "display": "APPAREL & ACCESSORIES",
          "count": 1,
          "is_selected": false,
          "value": "apparel-accessories",
          "logo": {
            "type": "image",
            "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/department/pictures/square-logo/original/Yu0vJvcEE-department.jpeg"
          }
        },
        {
          "display": "Electronicstesting",
          "count": 1,
          "is_selected": false,
          "value": "electronicstesting",
          "logo": {
            "type": "image",
            "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/department/pictures/square-logo/original/JuzodT3tk-department.webp"
          }
        },
        {
          "display": "Kids fashion",
          "count": 1,
          "is_selected": false,
          "value": "kids",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.fynd.com/media/category_tab_icons/department/Kids.png"
          }
        },
        {
          "display": "test-dept",
          "count": 1,
          "is_selected": false,
          "value": "test-dept",
          "logo": {
            "type": "image",
            "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr/addsale/department/pictures/square-logo/original/B-WiKG2_B-department.png"
          }
        }
      ]
    },
    {
      "key": {
        "display": "Price",
        "name": "min_price_effective",
        "kind": "range",
        "logo": "https://hdn-1.fynd.com/products/pictures/attribute/logo/original/m4SDdD279_-Min-price-effective.png",
        "operators": [
          "btw",
          "lte",
          "gte",
          "lt",
          "gt"
        ]
      },
      "values": [
        {
          "count": 80740,
          "min": 0,
          "max": 250000,
          "is_selected": false,
          "selected_min": 0.82,
          "selected_max": 250000,
          "display_format": "{} to {}",
          "currency_code": "INR",
          "currency_symbol": "₹",
          "query_format": "[{},INR TO {},INR]",
          "display": "₹0.82 to ₹250000.0"
        }
      ]
    }
  ],
  "sort_on": [
    {
      "display": "Latest Products",
      "name": "Latest Products",
      "logo": "https://hdn-1.fynd.com/products/pictures/attribute/logo/original/QEvUfhsfyg-Latest-Products.png",
      "value": "latest",
      "is_selected": true
    },
    {
      "display": "Manual",
      "name": "Manual",
      "value": "manual",
      "logo": "https://hdn-1.fynd.com/global/menu-icons/Size%20Depth.png",
      "is_selected": true
    }
  ],
  "operators": {
    "btw": "Between",
    "lte": "Less than Equals",
    "gte": "Greater than Equals",
    "gt": "Greater than",
    "lt": "Less than",
    "in": "Equal to",
    "nin": "Not Equal to"
  }
}
```
</details>









---


#### getAllCollections
List collections of an application.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAllCollections(q: q, scheduleStatus: scheduleStatus, type: type, tag: tag, isActive: isActive, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | The query string for searching collections. |   
| scheduleStatus | String? | no | Filter collections by their schedule status. |   
| type | String? | no | It is the type of collection. |   
| tag | [String]? | no | Filter the collections by a tag. |   
| isActive | Bool? | no | Filter collections by active status. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. |   
| pageSize | Int? | no | Number of items to retrieve in each page. |  



A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections as specified in `CollectionListingSchema`

*Returned Response:*




[GetCollectionListingResponse](#GetCollectionListingResponse)

A successful response contains the list of collection in an application. See the example below or refer to `GetCollectionListingResponse` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "current": 1,
    "size": 19,
    "has_previous": false,
    "has_next": true,
    "item_total": 190
  },
  "items": [
    {
      "uid": "6040fed076d8a500011ef829",
      "type": "query",
      "query": {
        "brand": [
          "6",
          "3",
          "4",
          "2"
        ],
        "min_price_effective": "[6319,INR TO 11805,INR]",
        "platform_discount": "[15 TO 39]",
        "sort_on": "price_asc"
      },
      "name": "test1",
      "banners": {
        "portrait": {
          "type": "image",
          "url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000001/collections/pictures/portrait-banner/original/mP6OnINGR-1601466767814.jpeg"
        },
        "landscape": {
          "type": "image",
          "url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000001/collections/pictures/landscape-banner/original/3jSEzw9CN-1601465376892.jpeg"
        }
      },
      "logo": {
        "type": "image",
        "url": "https://hdn-1.addsale.com/x0/company/1/applications/000000000000000000000001/collections/pictures/square-logo/original/y_-XUYXwx-1602326103322.jpeg"
      },
      "published": true,
      "description": "this is description",
      "is_active": true,
      "tags": [],
      "slug": "test1",
      "action": {
        "page": {
          "type": "collection",
          "query": {
            "collection": [
              "test1"
            ]
          }
        },
        "type": "page"
      },
      "allow_facets": true,
      "allow_sort": true,
      "visible_facets_keys": [],
      "meta": {},
      "badge": {
        "text": "",
        "color": "#ffffff"
      },
      "sort_on": "price_asc",
      "_custom_json": {},
      "_locale_language": {},
      "_schedule": {
        "start": "2021-03-04T15:35:13.640000Z",
        "next_schedule": [
          {
            "start": "2021-03-04T15:35:13.640000Z",
            "end": null
          }
        ],
        "end": null
      }
    },
    {
      "uid": "6040a9b250f97e0001886294",
      "type": "items",
      "query": {},
      "name": "newapiplaform",
      "banners": {
        "portrait": {
          "type": "image",
          "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588858137/production/applications/app_000000000000000000000001/media/collection/portrait/xzuftshmmw4yuwzb12pm.png"
        },
        "landscape": {
          "type": "image",
          "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588857999/production/applications/app_000000000000000000000001/media/collection/landscape/avm7xibo2jgk8glc4bwl.png"
        }
      },
      "logo": {
        "type": "image",
        "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588857854/production/applications/app_000000000000000000000001/media/collection/logo/w9ns7nfgv7fk45xqrpoh.png"
      },
      "published": true,
      "description": "sadasd",
      "is_active": true,
      "tags": [
        "sdsadas",
        "asd"
      ],
      "slug": "newapiplaform",
      "action": {
        "page": {
          "type": "collection",
          "query": {
            "collection": [
              "newapiplaform"
            ]
          }
        },
        "type": "page"
      },
      "allow_facets": true,
      "allow_sort": true,
      "visible_facets_keys": [],
      "meta": {},
      "badge": {
        "text": "",
        "color": "#aa2727"
      },
      "sort_on": "popular",
      "_custom_json": {},
      "_locale_language": {},
      "_schedule": {
        "start": "2021-03-04T09:33:53.686000Z",
        "next_schedule": [
          {
            "start": "2021-03-04T09:33:53.686000Z",
            "end": null
          }
        ],
        "end": null
      }
    },
    {
      "uid": "603f68fd953a69000145dc92",
      "type": "query",
      "query": {},
      "name": "new",
      "banners": {
        "portrait": {
          "type": "image",
          "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588858137/production/applications/app_000000000000000000000001/media/collection/portrait/xzuftshmmw4yuwzb12pm.png"
        },
        "landscape": {
          "type": "image",
          "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588857999/production/applications/app_000000000000000000000001/media/collection/landscape/avm7xibo2jgk8glc4bwl.png"
        }
      },
      "logo": {
        "type": "image",
        "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588857854/production/applications/app_000000000000000000000001/media/collection/logo/w9ns7nfgv7fk45xqrpoh.png"
      },
      "published": true,
      "description": "",
      "is_active": true,
      "tags": [],
      "slug": "old",
      "action": {
        "page": {
          "type": "collection",
          "query": {
            "collection": [
              "old"
            ]
          }
        },
        "type": "page"
      },
      "allow_facets": true,
      "allow_sort": true,
      "visible_facets_keys": [],
      "meta": {},
      "badge": {
        "color": "#ffffff",
        "text": ""
      },
      "sort_on": "popular",
      "_custom_json": {},
      "_locale_language": {},
      "_schedule": {
        "start": "2021-03-03T10:45:40.544000Z",
        "next_schedule": [
          {
            "start": "2021-03-03T10:45:40.544000Z",
            "end": null
          }
        ],
        "end": null
      }
    }
  ],
  "filters": {
    "tags": [
      {
        "name": "1+",
        "is_selected": false,
        "display": "1+"
      },
      {
        "name": "aa",
        "is_selected": false,
        "display": "aa"
      },
      {
        "name": "asd",
        "is_selected": false,
        "display": "asd"
      },
      {
        "name": "dda",
        "is_selected": false,
        "display": "dda"
      },
      {
        "name": "fahim",
        "is_selected": false,
        "display": "fahim"
      },
      {
        "name": "gfg",
        "is_selected": false,
        "display": "gfg"
      },
      {
        "name": "sakri",
        "is_selected": false,
        "display": "sakri"
      },
      {
        "name": "sdsadas",
        "is_selected": false,
        "display": "sdsadas"
      },
      {
        "name": "uuy",
        "is_selected": false,
        "display": "uuy"
      }
    ],
    "type": [
      {
        "name": "items",
        "is_selected": false,
        "display": "items"
      },
      {
        "name": "query",
        "is_selected": false,
        "display": "query"
      }
    ]
  }
}
```
</details>









---


#### createCollection
Create a collection.




```swift
platformClient.application("<APPLICATION_ID>").catalog.createCollection(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateCollection | yes | Request body |


A Collection allows you to organize your products into hierarchical groups. This API helps you in creating the collection.

*Returned Response:*




[CollectionCreateResponse](#CollectionCreateResponse)

A successful response contains the details of the created collection. See the example below or refer to `CollectionCreateResponse` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": "604f585a7051e30001173ac1",
  "type": "query",
  "query": {},
  "name": "New",
  "banners": {
    "portrait": {
      "type": "image",
      "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588858137/production/applications/app_000000000000000000000001/media/collection/portrait/xzuftshmmw4yuwzb12pm.png"
    },
    "landscape": {
      "type": "image",
      "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588857999/production/applications/app_000000000000000000000001/media/collection/landscape/avm7xibo2jgk8glc4bwl.png"
    }
  },
  "logo": {
    "type": "image",
    "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588857854/production/applications/app_000000000000000000000001/media/collection/logo/w9ns7nfgv7fk45xqrpoh.png"
  },
  "published": true,
  "description": "",
  "is_active": true,
  "tags": [],
  "slug": "new",
  "action": {
    "page": {
      "type": "collection",
      "query": {
        "collection": [
          "new"
        ]
      }
    },
    "type": "page"
  },
  "allow_facets": true,
  "allow_sort": true,
  "visible_facets_keys": [],
  "meta": {},
  "badge": {
    "color": "#ffffff",
    "text": ""
  },
  "sort_on": "depth_desc",
  "_custom_json": {},
  "_locale_language": {},
  "_schedule": {
    "start": "2021-03-15T12:51:21.333000+00:00Z",
    "next_schedule": [
      {
        "start": "2021-03-15T12:51:21.333000+00:00Z",
        "end": null
      }
    ],
    "end": null
  },
  "seo": {
    "title": "Test",
    "description": "Test description"
  }
}
```
</details>









---


#### getCollectionDetail
Retrieve the collection details by its slug.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getCollectionDetail(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A `slug` is a human readable, URL friendly unique identifier of an object. Pass the `slug` of the collection which you want to retrieve. |  



This API retrieves the detail of the collection in an application.

*Returned Response:*




[CollectionDetailResponse](#CollectionDetailResponse)

A successful response contains the collection object. See example below or refer `CollectionDetailResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "uid": "5ec5fc757cb1e4740a17da23",
  "type": "query",
  "query": {
    "l3_categories": [
      "12"
    ],
    "sort_on": "discount_asc"
  },
  "name": "new",
  "banners": {
    "portrait": {
      "type": "image",
      "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588858137/production/applications/app_000000000000000000000001/media/collection/portrait/xzuftshmmw4yuwzb12pm.png"
    },
    "landscape": {
      "type": "image",
      "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588857999/production/applications/app_000000000000000000000001/media/collection/landscape/avm7xibo2jgk8glc4bwl.png"
    }
  },
  "logo": {
    "type": "image",
    "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1588857854/production/applications/app_000000000000000000000001/media/collection/logo/w9ns7nfgv7fk45xqrpoh.png"
  },
  "published": true,
  "description": "",
  "is_active": true,
  "tags": [],
  "slug": "new",
  "action": {
    "page": {
      "type": "collection",
      "query": {
        "collection": [
          "new"
        ]
      }
    },
    "type": "page"
  },
  "allow_facets": true,
  "allow_sort": true,
  "visible_facets_keys": [],
  "meta": {},
  "badge": {
    "color": "#ffffff",
    "text": ""
  },
  "sort_on": "popular",
  "_custom_json": {},
  "_locale_language": {},
  "_schedule": {
    "start": "2020-05-21T03:58:41.237000Z",
    "next_schedule": [
      {
        "start": "2020-05-21T03:58:41.237000Z",
        "end": null
      }
    ],
    "end": null
  }
}
```
</details>









---


#### updateCollection
Update a collection by its ID.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateCollection(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | An `id` is a unique identifier of a collection. |  
| body | UpdateCollection | yes | Request body |


This API enables you to update a collection by specifying its unique identifier (`ID`). By utilizing this endpoint, you can easily modify and refine the attributes, settings, and contents of a specific collection, ensuring it remains relevant and aligned with your business goals.

*Returned Response:*




[CollectionUpdateResponse](#CollectionUpdateResponse)

A successful response contains the data of the collection with the updated data. See example below or refer `CollectionUpdateResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "app_id": "000000000000000000000001",
  "name": "flat 10 summer sale",
  "slug": "flat_10_summer_sale",
  "modified_by": {
    "id": 123,
    "username": "john_doe"
  },
  "banners": {
    "portrait": {
      "type": "image",
      "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr//addsale/misc/general/free/original/mlr7_3OLx-image.jpg"
    },
    "landscape": {
      "type": "image",
      "url": "//addsale/misc/general/free/original/jMmfDuegs-image.jpg"
    }
  },
  "logo": {
    "logo": {
      "type": "image",
      "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyndnp/wrkr//addsale/misc/general/free/original/Enaw8jODo-image.jpg"
    }
  },
  "_schedule": {
    "next_schedule": [
      {
        "start": "2023-02-15T11:00:03.412000Z",
        "end": null
      }
    ],
    "start": null,
    "end": null
  },
  "is_active": false,
  "description": "Summer collection flat 10 off on all the products",
  "query": [
    {
      "attribute": "l3_categories",
      "op": "in",
      "value": [
        "mens",
        "womens"
      ]
    }
  ],
  "sort_on": "popular",
  "tags": [
    "summer-sale",
    "flat10",
    "discount"
  ],
  "allow_facets": false,
  "allow_sort": true,
  "badge": {
    "text": "New",
    "color": "red"
  },
  "visible_facets_keys": [
    "price",
    "color",
    "size"
  ],
  "published": true,
  "meta": {
    "job_id": "z98uashd",
    "default": {}
  },
  "_custom_json": {
    "custom_field1": "value1",
    "custom_field2": [
      "value2",
      "value3"
    ],
    "custom_field3": {
      "sub_field1": 10,
      "sub_field2": "text"
    }
  },
  "_locale_language": {
    "en": {
      "name": "Fynd Memes Collection",
      "description": "Shop exclusive Fynd merchandise and fan gear inspired by internet memes."
    },
    "fr": {
      "name": "Collection Fynd Memes",
      "description": "Achetez des produits exclusifs de Fynd et des articles de fan inspirés des mèmes Internet."
    }
  },
  "seo": {
    "title": "Flat 10 Summer Sale - Shop Now!",
    "description": "Explore our exclusive summer collection and enjoy a flat 10% discount on all products."
  },
  "is_visible": true,
  "priority": 1,
  "type": "query"
}
```
</details>









---


#### deleteCollection
Delete a collection.




```swift
platformClient.application("<APPLICATION_ID>").catalog.deleteCollection(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | An `id` is a unique identifier of a collection. |  



This API allows you to delete the collection of an application.

*Returned Response:*




[DeleteResponse](#DeleteResponse)

A successful response contains the success message if the collection is deleted. See example below or refer `DeleteResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Collection Deleted"
}
```
</details>









---


#### getCollectionItems
Retrieve items of a collection.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getCollectionItems(id: id, f: f, sortOn: sortOn, pageId: pageId, pageSize: pageSize, xCurrencyCode: xCurrencyCode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | An `id` is a unique identifier of a collection. |   
| f | String? | no | Filter the products in the collection using key-value pairs. |   
| sortOn | String? | no | It is the attribute's value on which the products will be sorted for a collection. |   
| pageId | Int? | no | It is the currency id of the page in the pagniation. |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| xCurrencyCode | String? | no | The currency code used for pricing and monetary transactions. |  



A Collection API allows you to organize your products into hierarchical groups. This API provides a list of items and filters that can be applied to the items within a collection. It enables you to retrieve specific items based on various filter criteria.The API allows you to fetch information about items in the collection, including their attributes, categories, media URLs, pricing details, and more. Additionally, you can apply filters such as size and color to narrow down the search results and find the desired items. By utilizing this API, you can efficiently manage and display collections of products, making it easier for users to navigate and explore your e-commerce platform. It offers flexibility in organizing and presenting products, enhancing the overall user experience.

*Returned Response:*




[GetCollectionItemsResponse](#GetCollectionItemsResponse)

A successful response contains the attached items of an collection. See example below or refer `GetCollectionItemsResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "filters": [
    {
      "key": {
        "display": "Size",
        "name": "sizes",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/products/pictures/attribute/logo/original/M45tOYu45x-Sizes.png"
      },
      "values": [
        {
          "display": "L",
          "count": 17,
          "is_selected": false,
          "value": "L"
        },
        {
          "display": "M",
          "count": 17,
          "is_selected": false,
          "value": "M"
        }
      ]
    }
  ],
  "items": [
    {
      "type": "product",
      "attributes": {
        "primary_color_hex": "Navy Blue",
        "care_instructions": "Wash at 30 (Degree) C, Cold Machine Wash, Iron at Medium Heat, Dry Clean, Do Not Tumble Dry, Do Not Bleach, Do Not Iron On, Print or Embroidery",
        "description": "Official Mumbai Indians T-Shirts! Finally, the epic Tees are out, and now you can show your support for the GOATS with this coolest outfit. This is the best #ootd you could ever have. The durable, 100% cotton fabric is soft and comfortable, making it perfect for the season. Whether cheering for our Men in Blue at the stadium or cheering them on from home, this T-shirt is the perfect way to show your love for Mumbai Indians.",
        "gender": "unisex",
        "marketer-address": "DUDE ME DESIGNS LLP 15-1, VLB NAGAR, KOVAIPUDUR, LANDMARK: ABOVE IDFC BANK, Coimbatore, TAMIL NADU, 641042",
        "marketer-name": "DUDE ME DESIGNS LLP",
        "material": "100% Cotton",
        "name": "MI:  Love MI  T-Shirt (Navy)",
        "neck_type": "Round Neck",
        "net-quantity": "1 N",
        "pattern": "Solid",
        "primary_color": null,
        "primary_material": "Cotton",
        "product_fit": "Regular",
        "sleeve_length": "Short",
        "topwear_length": "Long"
      },
      "categories": [
        {
          "id": 192,
          "uid": 192,
          "name": "T-Shirts",
          "slug": "t-shirts",
          "logo": {
            "type": "image",
            "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyprod/wrkr/media/banner_portrait/brand/original/540_ecba3a1af141467da8abc20500f983db.jpg"
          },
          "action": {
            "page": {
              "type": "category",
              "query": {
                "category": [
                  "t-shirts"
                ]
              }
            },
            "type": "page"
          },
          "_custom_json": {}
        }
      ],
      "_custom_meta": [],
      "sellable": true,
      "name": "MI:  Love MI  T-Shirt (Navy)",
      "slug": "mi--love-mi--t-shirt-navy-di1dctpbgz",
      "uid": 8611670,
      "item_type": "standard",
      "item_code": "ILMI-N",
      "brand": {
        "type": "brand",
        "uid": 5151,
        "name": "Dudeme",
        "logo": {
          "type": "image",
          "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyprod/wrkr/brands/pictures/square-logo/original/sdm24nUQC-Logo.jpeg"
        },
        "action": {
          "page": {
            "type": "products",
            "query": {
              "brand": [
                "dudeme"
              ]
            }
          },
          "type": "page"
        },
        "_custom_json": {}
      },
      "action": {
        "page": {
          "type": "product",
          "query": {
            "slug": "mi--love-mi--t-shirt-navy-di1dctpbgz"
          }
        },
        "type": "page"
      },
      "medias": [
        {
          "type": "image",
          "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyprod/wrkr/products/pictures/item/free/original/DM-ILMI-N-S/BPewurvIXY-ILMI-N_1.jpg"
        },
        {
          "type": "image",
          "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyprod/wrkr/products/pictures/item/free/original/DM-ILMI-N-S/7pvcuGISvN-ILMI-N_2.jpg"
        },
        {
          "type": "image",
          "url": "https://cdn.pixelbin.io/v2/falling-surf-7c8bb8/fyprod/wrkr/products/pictures/item/free/original/DM-ILMI-N-S/klF4Cjz5gr-ILMI-N_3.jpg"
        }
      ],
      "discount": "44% OFF",
      "price": {
        "marked": {
          "min": 999,
          "max": 999,
          "currency_code": "INR",
          "currency_symbol": "₹"
        },
        "effective": {
          "min": 550,
          "max": 550,
          "currency_code": "INR",
          "currency_symbol": "₹"
        }
      },
      "is_tryout": false,
      "promo_meta": {},
      "all_company_ids": [
        3670
      ],
      "short_description": "",
      "country_of_origin": "India"
    }
  ],
  "sort_on": [
    {
      "display": "Latest Products",
      "name": "Latest Products",
      "logo": "https://hdn-1.fynd.com/products/pictures/attribute/logo/original/QEvUfhsfyg-Latest-Products.png",
      "value": "latest",
      "is_selected": true
    },
    {
      "display": "Manual",
      "name": "Manual",
      "value": "manual",
      "logo": "https://hdn-1.fynd.com/global/menu-icons/Size%20Depth.png",
      "is_selected": true
    }
  ],
  "page": {
    "current": 1,
    "type": "number",
    "size": 1,
    "has_previous": false,
    "has_next": false,
    "item_total": 17
  }
}
```
</details>









---


#### addCollectionItems
Add/Remove items for a collection.




```swift
platformClient.application("<APPLICATION_ID>").catalog.addCollectionItems(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | An `id` is a unique identifier of a collection. |  
| body | CollectionItemUpdate | yes | Request body |


Adds items to a collection specified by its `id`. This API allows you to add items to a specific collection identified by its unique `id`. By utilizing this endpoint, you can expand and enhance the product offerings within a collection, providing users with a wider range of options and choices.

*Returned Response:*




[UpdatedResponse](#UpdatedResponse)

A successful response contains the success message if the collection is updated with the provided items. See example below or refer `UpdatedResponse` for details




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; All items update</i></summary>

```json
{
  "summary": "All the given items are updated in the collection.",
  "value": {
    "message": "items updated"
  }
}
```
</details>

<details>
<summary><i>&nbsp; Partial items update</i></summary>

```json
{
  "summary": "Partial update of items in a collection.",
  "value": {
    "items_not_updated": [
      2343423,
      2342352
    ]
  }
}
```
</details>

</details>









---


#### getCatalogInsights
Retrieve the analytics data of catalog and inventory.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getCatalogInsights(brand: brand) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| brand | String? | no | The slug of the brand. |  



The Catalog Insights API provides information about the count of catalog-related data, including products, brands, departments, and categories that have been made available based on the configuration of the application. This API allows you to retrieve statistical insights and metrics regarding the catalog, helping you gain valuable information about the live data in your catalog.

*Returned Response:*




[CatalogInsightResponse](#CatalogInsightResponse)

A successful response contains the insights of the catalog. See the example below or refer to `CatalogInsightResponseSchema` for details.




<details>
<summary><i>&nbsp; Examples:</i></summary>


<details>
<summary><i>&nbsp; Get all the catalog insights for the application</i></summary>

```json
{
  "summary": "Get all the catalog insights for the application.",
  "value": {
    "item": {
      "count": 637707,
      "out_of_stock_count": 452806,
      "sellable_count": 184901
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; Get the brand distribution for the application</i></summary>

```json
{
  "summary": "Get the brand distribution catalog insights for the application by providing the brand slug in the brand parameter.",
  "value": {
    "brand_distribution": {
      "name": "fynd",
      "available_articles": 5,
      "total_articles": 10,
      "available_sizes": 3,
      "total_sizes": 5,
      "article_freshness": 2
    }
  }
}
```
</details>

<details>
<summary><i>&nbsp; Response for invalid brand slug</i></summary>

```json
{
  "summary": "Response for invaid brand slug.",
  "value": {}
}
```
</details>

</details>









---


#### getSellerInsights
Retrieve the analytics data of catalog and inventory that are being cross-selled.




```swift
platformClient.catalog.getSellerInsights(sellerAppId: sellerAppId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| sellerAppId | String | yes | A `seller_app_id` is alphanumeric ID allotted to a sales channel application created within a business account. |  



Analytics data of catalog and inventory that are being cross-selled.

*Returned Response:*




[CrossSellingDataResponse](#CrossSellingDataResponse)

A successful response contains the insights of the catalog. See the example below or refer to `CrossSellingDataResponseSchema` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "products": 18,
  "articles": 18
}
```
</details>









---


#### createMarketplaceOptin
Create/Update opt-in infomation.




```swift
platformClient.catalog.createMarketplaceOptin(marketplace: marketplace, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| marketplace | String | yes | The marketplace for which the detail needs to be retrieved. |  
| body | OptInPostRequest | yes | Request body |


Use this API to create/update opt-in information for given platform. If successful, returns data in the response body as specified in `OptInPostResponseSchema`

*Returned Response:*




[UpdatedResponse](#UpdatedResponse)

See example below or refer `UpdatedResponse` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getMarketplaceOptinDetail
Get opt-in infomation.




```swift
platformClient.catalog.getMarketplaceOptinDetail() { (response, error) in
    // Use response
}
```






Use this API to fetch opt-in information for all the platforms. If successful, returns a logs in the response body as specified in `GetOptInPlatformSchema`

*Returned Response:*




[GetOptInPlatform](#GetOptInPlatform)

See example below or refer `GetOptInPlatformSchema` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCompanyDetail
Get the Company details.




```swift
platformClient.catalog.getCompanyDetail() { (response, error) in
    // Use response
}
```






Get the details of the company associated with the given company_id passed.

*Returned Response:*




[OptinCompanyDetail](#OptinCompanyDetail)

See example below or refer `OptinCompanyDetailSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCompanyBrandDetail
Get the Company Brand details of Optin.




```swift
platformClient.catalog.getCompanyBrandDetail(isActive: isActive, q: q, pageNo: pageNo, pageSize: pageSize, marketplace: marketplace) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| isActive | Bool? | no | The is_active status for the optin id. |   
| q | String? | no | The search value to filter the list. |   
| pageNo | Int? | no | The number of page for the company id. |   
| pageSize | Int? | no | Number of records that can be seen on the page for the company id. |   
| marketplace | String? | no | The marketplace platform associated with the company id. |  



Get the details of the Brands associated with the given company_id passed.

*Returned Response:*




[OptinCompanyBrandDetailsView](#OptinCompanyBrandDetailsView)

See example below or refer `OptinCompanyBrandDetailsView` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCompanyMetrics
Get the Company metrics




```swift
platformClient.catalog.getCompanyMetrics() { (response, error) in
    // Use response
}
```






Get the Company metrics associated with the company ID passed.

*Returned Response:*




[OptinCompanyMetrics](#OptinCompanyMetrics)

See example below or refer `OptinCompanyMetrics` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getStoreDetail
Get the Store details.




```swift
platformClient.catalog.getStoreDetail(q: q, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | The search related the store for the company id. |   
| pageNo | Int? | no | The number of page for the company id. |   
| pageSize | Int? | no | Number of records that can be seen on the page for the company id. |  



Get the details of the store associated with the company ID passed.

*Returned Response:*




[OptinStoreDetails](#OptinStoreDetails)

See example below or refer `OptinStoreDetailsSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getGenderAttribute
Get gender attribute details




```swift
platformClient.catalog.getGenderAttribute(attributeSlug: attributeSlug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| attributeSlug | String | yes | slug of the attribute for which you want to view the genders |  



This API allows to view the gender attribute details.

*Returned Response:*




[GenderDetail](#GenderDetail)

Size guide object. See example below or refer `GenderDetailSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "description": "Clothing department needs gener attribute",
  "schema": {
    "format": "",
    "mandatory": false,
    "multi": true,
    "enum": [
      "Men",
      "Women",
      "Boy",
      "Girl",
      "more",
      "men"
    ],
    "type": "str"
  },
  "meta": {
    "enriched": false,
    "mandatory_details": {
      "l3_keys": []
    }
  },
  "slug": "gender",
  "name": "Gender",
  "enabled_for_end_consumer": true,
  "details": {
    "display_type": "text"
  },
  "is_nested": true,
  "filters": {
    "indexing": true,
    "priority": 2
  },
  "departments": [
    "men-s-fashion",
    "kids",
    "women-s-fashion",
    "beauty-personal-care"
  ],
  "logo": "https://hdn-1.addsale.com/x0/products/pictures/attribute/logo/original/Rhv89tqRo-brand-website-logo.png",
  "id": "5ed11eb0be8d5e00016f0335"
}
```
</details>









---


#### listProductTemplateCategories
List Department specifiec product categories




```swift
platformClient.catalog.listProductTemplateCategories(departments: departments, itemType: itemType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| departments | String | yes | A `department` is name of a departments whose category needs to be listed. Can specify multiple departments. |   
| itemType | String | yes | An `item_type` is the type of item, it can be `set`, `standard`, `digital`, etc. |  



Allows you to list all product categories values for the departments specified

*Returned Response:*




[ProdcutTemplateCategoriesResponse](#ProdcutTemplateCategoriesResponse)

List of all categories attached to departments specified. See example below or refer `ProdcutTemplateCategoriesResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {},
  "items": []
}
```
</details>









---


#### listDepartments
Retrieve a list of departments using various filters




```swift
platformClient.catalog.listDepartments(pageNo: pageNo, pageSize: pageSize, name: name, search: search, isActive: isActive, itemType: itemType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number of results to retrieve. Defaults to 1 if not provided. |   
| pageSize | Int? | no | The number of results to retrieve per page. Defaults to 12 if not provided. |   
| name | String? | no | Filter departments by name. Performs a case-insensitive search across department names. If provided, only departments with matching names will be returned. |   
| search | String? | no | Filter departments by a search term. Performs a case-insensitive search across department names. If provided, departments with names containing the search term will be returned. |   
| isActive | Bool? | no | Filter departments by active status. If set to `true`, only active departments will be returned. If set to `false`, only inactive departments will be returned. |   
| itemType | String? | no | Filter departments by the type of product. |  



This API endpoint allows you to retrieve a paginated list of departments based on different filters, such as name, search term, and department status (active or inactive).

*Returned Response:*




[DepartmentListResponse](#DepartmentListResponse)

A successful response containing the list of departments. See the example below or refer to the `DepartmentListResponseSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "current": 1,
    "type": "number",
    "size": 118,
    "has_previous": false,
    "has_next": true,
    "item_total": 1176
  },
  "items": [
    {
      "synonyms": [
        "hi-polka"
      ],
      "is_active": false,
      "slug": "electronics",
      "modified_on": "2023-05-03T11:58:35.551000",
      "modified_by": {
        "username": "akashjadhav_fynd_external_com_59909",
        "user_id": "87d78bc345c88d9070a80d23"
      },
      "created_on": "2019-09-09T07:04:37.949000",
      "created_by": {
        "username": "meghagolecha@gofynd.com",
        "user_id": "3230"
      },
      "uid": 10,
      "priority_order": 100,
      "name": "Electronics",
      "logo": "https://hdn-1.fynd.com/media/logo/department/original/13239_660c6f5b2b8d458789de4552d241ea1b.jpg",
      "_cls": "Department"
    }
  ]
}
```
</details>









---


#### getDepartment
This API is used to retrieve detailed information about a specific department based on its UID.




```swift
platformClient.catalog.getDepartment(uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uid | Int | yes | A unique identifier of a department. Retrieve the department with the specified UID. |  



This API is used to retrieve detailed information about a specific department based on its UID.

*Returned Response:*




[DepartmentUpdate](#DepartmentUpdate)

A successful response containing the department data. See the example below or refer to the `DepartmentUpdateSchema` for more details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "is_active": true,
  "name": "Fashion",
  "slug": "fashion",
  "priority_order": 1,
  "logo": "https://hdn-1.addsale.com/x0/department/pictures/square-logo/original/xKDsQBbu4-department.png",
  "synonyms": [
    "fashion",
    "mensfashion"
  ],
  "uid": 2,
  "modified_by": {
    "username": "31315573458_05620",
    "user_id": "f5b6a546565146sdfg584c342"
  },
  "modified_on": "2022-08-09T15:44:02.540740"
}
```
</details>









---


#### listProductTemplate
List all Templates




```swift
platformClient.catalog.listProductTemplate(department: department) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| department | String | yes | A `department` is the name of a particular department. |  



Allows you to list all product templates, also can filter by department

*Returned Response:*




[TemplatesResponse](#TemplatesResponse)

List of product templates. See example below or refer `TemplatesResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "current": 1,
    "size": 3,
    "has_previous": false,
    "has_next": true,
    "item_total": 36
  },
  "items": [
    {
      "name": "Accessories",
      "categories": [
        "accessories-adornments",
        "messenger-bags",
        "wallets",
        "satchels",
        "backpacks",
        "laptop-bags",
        "briefcases",
        "suitcases",
        "duffles",
        "analog-watches",
        "chronograph-watches",
        "digital-watches",
        "aviators",
        "wayfarers",
        "round-sunglasses",
        "cateye-sunglasses",
        "rectangle-sunglasses",
        "oversized-sunglasses",
        "browline-sunglasses",
        "square-sunglasses",
        "sports-sunglasses",
        "belts",
        "ties",
        "cufflinks",
        "pocket-squares",
        "tie-pins",
        "brooches",
        "baseball-caps",
        "hats",
        "shawls",
        "mufflers",
        "stoles",
        "socks",
        "dupattas",
        "handbags",
        "clutches",
        "totes",
        "sling-bags",
        "hobos",
        "scarves",
        "stockings",
        "hairbands",
        "hair-clips",
        "pouches",
        "oval-sunglasses",
        "gloves",
        "frames",
        "maang-tikka",
        "bags",
        "sunglasses",
        "mittens",
        "money-clips",
        "card-cases",
        "brushes",
        "horns",
        "spray",
        "cleaner",
        "cream",
        "polishes",
        "decoration-charms",
        "care-kits",
        "trees",
        "shoe-bag",
        "laces",
        "insoles",
        "handkerchief",
        "toy-box",
        "play-gym",
        "camera-bag",
        "fanny-pack",
        "usb-cable",
        "rca-cable",
        "usb-c-to-multiport-adapter",
        "batteries",
        "power-banks",
        "lightning-cable",
        "tos-cable",
        "aux-cable",
        "hdmi-cable",
        "charging-cable",
        "mini-display-port-hdmi-cable",
        "thunderbolt-cable",
        "bluetooth-headphones",
        "headphone",
        "bluetooth-earphones",
        "earphones",
        "hard-disk-drive",
        "photo-frame",
        "notebook",
        "pen",
        "luggage-tag",
        "stationery-combo",
        "jewellery-case",
        "folder",
        "key-chain",
        "suspender",
        "cummerbund",
        "cravet",
        "toiletry-bag",
        "cosmetic-bag",
        "gift-bag",
        "packaging-material",
        "spectacle-case",
        "cuff-bands",
        "playing-cards",
        "kalangi",
        "kataar",
        "safa",
        "watch-case",
        "paper-weight",
        "caps",
        "visor-caps",
        "bucket-hats",
        "beanie-caps",
        "cowboy-hats",
        "gatsby-caps",
        "fedora-hats",
        "rain-cover",
        "round-glasses",
        "rectangle-glasses",
        "cateye-glasses",
        "aviator-glasses",
        "square-glasses",
        "oval-glasses",
        "almond-glasses",
        "wayfarer-glasses",
        "toric-contact-lenses",
        "daily-disposable",
        "monthly-reusable",
        "multifocal-varifocal",
        "solutions-accessories",
        "coloured-lenses"
      ],
      "description": "This is the file validation template for the fashion department and accessories category.",
      "departments": [
        "electronics",
        "men",
        "women",
        "kids",
        "toys"
      ],
      "attributes": [
        "gender",
        "age-group",
        "occasion",
        "collection",
        "season",
        "color",
        "material",
        "product_type",
        "pattern",
        "closure_type",
        "product_length",
        "feature",
        "care_instructions",
        "package_contents",
        "essential",
        "gst-inclusive",
        "gst-if-exclusive",
        "fragile",
        "manufacturer-packer-importer-name",
        "manufacturer-packer-importer-address"
      ],
      "slug": "accessories",
      "banner": "https://hdn-1.fynd.com/seller/pictures/landscape-banner/original/F4W6Pd_DEFAULT-BANNER_LANDSCAPE.jpgd54cb24d-dd2c-441c-bca0-8f65ea3b101c/F4W6Pd_DEFAULT-BANNER_LANDSCAPE.jpg",
      "logo": "https://hdn-1.fynd.com/seller/pictures/logo/original/hkE1dC_0DEFAULT-LOGO.jpgfb5b1b31-9449-43db-9049-435fec88ee77/hkE1dC_0DEFAULT-LOGO.jpg",
      "is_physical": true,
      "id": "5f04a23544a2e5404274bc07"
    },
    {
      "slug": "all-attributes-template",
      "categories": [
        "hd-television"
      ],
      "banner": "https://hdn-1.addsale.com/x0/seller/pictures/landscape-banner/original/tBqIbw_dj.jpg0b8e229f-45bd-4a96-97a5-3e5b193828d2/tBqIbw_dj.jpg",
      "name": "All attributes Template",
      "attributes": [
        "test-attribute-3",
        "test-attribute",
        "test-attribute-1",
        "test-attribute-4",
        "gender",
        "neck-type",
        "qwertyu",
        "testtt-attribute-5",
        "storage_humidity",
        "operating_humidity",
        "certifications",
        "aspect_ratio",
        "storage_temperature",
        "memory_details",
        "cache_memory",
        "operating_temperature",
        "expansion_slots",
        "included_software",
        "web_camera",
        "video_memory",
        "optical_drive",
        "hard_drive_speed",
        "hard_drive_type",
        "hard_drive",
        "speaker_type",
        "core_type",
        "processor_core",
        "processor_model_number",
        "processor_speed",
        "processor_brand",
        "processor_sub_brand",
        "battery_cell",
        "laptop_type",
        "graphics_card_model",
        "accessories",
        "services",
        "promotion_freebie",
        "action",
        "home_delivery",
        "colour_reproduction",
        "brightness",
        "data_transfer_on_cloud",
        "card_reader",
        "battery_filter",
        "volumetric_weight_in_kg",
        "price_filter",
        "brands_filter",
        "number_of_usb_ports_filter",
        "number_of_hdmi_ports_filter",
        "smart_tv_filter",
        "resolution_filter",
        "display_technology",
        "panel_type",
        "record_as_you_watch",
        "schedule_recording",
        "no_of_channels",
        "additional_side_panel_ports",
        "response_time",
        "contrast_ratio",
        "hdmi_arc",
        "tv_operating_system",
        "refresh_rate",
        "connect_to_router_via",
        "connect_to_home_theatre_via",
        "no_of_hdmi_ports",
        "no_of_usb_ports",
        "standby_power_consumption",
        "connect_to_set_top_box_via",
        "stream_content_from_devices",
        "surround_sound_technology",
        "tv_speaker_type",
        "graphics_card_sub_brand",
        "hdr",
        "power_supply",
        "power_consumption",
        "connect_to_dvd_players_via",
        "graphics_card_brand",
        "rated_speaker_output_power_rms",
        "3d_technology",
        "optimized_heat_dissipation",
        "backlit_keyboard_support",
        "ethernet_lan_support",
        "hdmi_support",
        "anti_glare_screen",
        "phone_network_and_connectivity",
        "storage_filter",
        "ram_filter",
        "pallet",
        "waterproof",
        "selfie_camera_filter",
        "primary_camera_filter",
        "screen_size_filter",
        "battery_power_features",
        "in_the_box_warranty",
        "features",
        "screen_display_camera",
        "phone_battery_charge_time",
        "network_inter_device_connectivity",
        "phone_os",
        "phone_build_convenience",
        "phone_hardware_storage",
        "testcomparsion",
        "country_of_origin",
        "manufacturer_packer_importer_address",
        "manufacturer_packer_importer_name",
        "warranty_type",
        "dlna_compliant",
        "user_guides_attachment",
        "resq_support_guide_attachment",
        "water_resistant",
        "speaker_support",
        "fm_radio",
        "nfc_support",
        "package_content",
        "talk_time",
        "standby_time",
        "quick_charge",
        "preloaded_apps",
        "metal_frame",
        "touch_screen",
        "glass_type",
        "meta_description",
        "short_description",
        "is_flammable",
        "transfer_price_tp",
        "screen_size",
        "bluetooth",
        "wi_fi",
        "3g",
        "internal_storage",
        "in_the_box",
        "memory_ram",
        "4g",
        "usb",
        "otg_support",
        "edge",
        "nfc",
        "microphone",
        "dummy_int",
        "product_details",
        "subtitle",
        "general_information",
        "expandable",
        "style_note",
        "is_waterproof",
        "brand_name",
        "color",
        "model",
        "product_type",
        "series",
        "product_identifiers",
        "style",
        "sub_brand",
        "socks_length",
        "heel_height",
        "occasion",
        "storage",
        "season",
        "processor",
        "collection",
        "storage_type",
        "topwear_length",
        "bottomwear_length",
        "denim_type",
        "boot_length",
        "dial_shape",
        "thickness",
        "lens_colour",
        "sensors",
        "dial_colour",
        "material",
        "usb_support",
        "fingerprint_recognition",
        "strap_type",
        "operating_system",
        "frame_style",
        "brand_rating",
        "operating_system_type",
        "4g_bands",
        "strap_colour",
        "4g_support",
        "2g_bands",
        "frame_colour",
        "video_formats",
        "3g_bands",
        "feature",
        "3g_support",
        "movement_type",
        "bluetooth_version",
        "pattern",
        "wi_fi_support",
        "bluetooth_support",
        "inner_material",
        "selfie_camera",
        "closure_type",
        "screen_resolution",
        "product_fit",
        "screen_size_diagonal",
        "dimensions",
        "display_type",
        "plating",
        "primary_camera",
        "toe_type",
        "dual_camera_rear",
        "clasp_type",
        "ram",
        "padding",
        "microphone_support",
        "sim_type",
        "capacity",
        "arch_type",
        "stone_type",
        "warranty_description",
        "additional_connectivity",
        "compartments",
        "audio_formats",
        "sleeve_type",
        "audio_jack",
        "diameter",
        "battery_capacity",
        "sleeve_length",
        "battery_operated",
        "product_length",
        "battery_run_time",
        "neck_type",
        "battery_type",
        "collar_type",
        "battery_voltage",
        "cellular_technology",
        "waist_rise",
        "edge_support",
        "coverage",
        "expandable_memory",
        "package_contents",
        "gprs_support",
        "care_instructions",
        "hybrid_sim_slot",
        "model_info",
        "variant",
        "warranty",
        "complexion",
        "skin_type",
        "spf",
        "speciality",
        "finish",
        "lasting_power",
        "benefits",
        "hair_type",
        "fragrance_family",
        "fragrance_type",
        "product_format",
        "active_ingredients",
        "ingredients",
        "how_to_use",
        "shelf_life",
        "safety_warning",
        "testtt-attribute-6"
      ],
      "departments": [
        "electronics"
      ],
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/7V0z2B_dj.jpg21ac07ea-9f83-403e-ad37-69076c6c5c46/7V0z2B_dj.jpg",
      "description": "Blah Blah",
      "is_physical": true,
      "id": "5ed5f84d2abe0f0001174d73"
    },
    {
      "name": "Baby Care & Toys",
      "categories": [
        "kids-puzzles",
        "kids-shirts"
      ],
      "description": "This is the file validation template for the Baby Care & Toys department.",
      "departments": [
        "baby-care-kids-essentials",
        "toys",
        "kids"
      ],
      "attributes": [
        "gender",
        "age-group",
        "occasion",
        "collection",
        "season",
        "color",
        "material",
        "product_type",
        "no-of-pieces",
        "battery_operated",
        "is-portable",
        "is_flammable",
        "capacity",
        "carrying-capacity",
        "inner-dimension",
        "seat-dimension",
        "package_contents",
        "additional-features",
        "certification",
        "essential",
        "gst-inclusive",
        "gst-if-exclusive",
        "fragile",
        "manufacturer-packer-importer-name",
        "manufacturer-packer-importer-address"
      ],
      "slug": "baby-care-toys",
      "banner": "https://hdn-1.fynd.com/seller/pictures/landscape-banner/original/Ikt1sK_DEFAULT-BANNER_LANDSCAPE.jpg7f923d3d-abc9-4a2e-9a49-204a36e1073c/Ikt1sK_DEFAULT-BANNER_LANDSCAPE.jpg",
      "logo": "https://hdn-1.fynd.com/seller/pictures/logo/original/saEu9Z_0DEFAULT-LOGO.jpg4cd36f29-a15b-4ec1-ab33-1162ede2c61f/saEu9Z_0DEFAULT-LOGO.jpg",
      "is_physical": true,
      "id": "5f04a24944a2e5404274bc09"
    },
    {
      "name": "Bags",
      "categories": [
        "seal-bags",
        "reusable-bag",
        "poly-bag",
        "shoe-bag",
        "sling-bags",
        "bags"
      ],
      "description": "This is the file validation template for the fashion department and bags category.",
      "departments": [
        "kids",
        "women",
        "men"
      ],
      "attributes": [
        "gender",
        "age-group",
        "color",
        "outer-material",
        "inner_material",
        "product_type",
        "collection",
        "occasion",
        "season",
        "pattern",
        "closure_type",
        "care_instructions",
        "compartments",
        "expandable",
        "water-resistence",
        "water-resistence-details",
        "water-proof",
        "water-proof-details",
        "warranty_type",
        "warranty_description",
        "package_contents",
        "essential",
        "gst-inclusive",
        "gst-if-exclusive",
        "fragile",
        "manufacturer-packer-importer-name",
        "manufacturer-packer-importer-address"
      ],
      "slug": "bags",
      "banner": "https://hdn-1.fynd.com/seller/pictures/landscape-banner/original/ejcGMm_DEFAULT-BANNER_LANDSCAPE.jpg658c38fd-d6de-4fcf-9f0e-3a886b2e2225/ejcGMm_DEFAULT-BANNER_LANDSCAPE.jpg",
      "logo": "https://hdn-1.fynd.com/seller/pictures/logo/original/GIysAV_0DEFAULT-LOGO.jpgf1942433-2bcb-4939-9128-675f66cd6d70/GIysAV_0DEFAULT-LOGO.jpg",
      "is_physical": true,
      "id": "5f04a24a44a2e5404274bc0b"
    },
    {
      "modified_on": "2020-08-19T04:04:30.421000Z",
      "logo": "https://hdn-1.addsale.com/x0/products/pictures/template/logo/original/fW2zqHspe-q1.png",
      "created_on": "2020-08-19T04:04:30.421000Z",
      "banner": "https://hdn-1.addsale.com/x0/products/pictures/template/banner/original/_YRvLuMDn-q1.jpeg",
      "attributes": [
        "base-material"
      ],
      "modified_by": {
        "username": "fahimsakri_gofynd_com_44938",
        "user_id": "10"
      },
      "departments": [
        "men-s-fashion",
        "kids",
        "women-s-fashion",
        "beauty-personal-care"
      ],
      "slug": "base-template",
      "description": "ad",
      "name": "Base Template",
      "categories": [
        "adcdas"
      ],
      "created_by": {
        "username": "fahimsakri_gofynd_com_44938",
        "user_id": "10"
      },
      "is_physical": true,
      "id": "5f3ca4ce3f7e74000111925f"
    },
    {
      "description": "This is the file validation template for the Beauty & Personal Care department. ",
      "name": "Beauty & Personal Care",
      "slug": "beauty-personal-care",
      "departments": [
        "beauty-personal-care"
      ],
      "attributes": [
        "gender",
        "age-group",
        "occasion",
        "collection",
        "season",
        "color",
        "product_type",
        "complexion",
        "skin_type",
        "spf",
        "speciality",
        "finish",
        "lasting_power",
        "coverage",
        "hair_type",
        "fragrance_family",
        "fragrance_type",
        "closure_type",
        "capacity",
        "product_format",
        "active_ingredients",
        "benefits",
        "how-to-use",
        "shelf_life",
        "safety_warning",
        "mask_type",
        "material",
        "adjustable",
        "reusable",
        "foldable",
        "filtration",
        "compatible_filter",
        "package_contents",
        "warranty_type",
        "warranty_description",
        "essential",
        "gst-inclusive",
        "gst-if-exclusive",
        "fragile",
        "manufacturer-packer-importer-name",
        "manufacturer-packer-importer-address"
      ],
      "categories": [
        "foundation",
        "concealer",
        "mascara",
        "kajal",
        "eyeshadow",
        "false-eyelashes",
        "eyebrow-enhancer",
        "eyeliner",
        "personal-care-gift-sets",
        "primer",
        "compact",
        "hair-removal-cream",
        "lip-liner",
        "nail-polish-remover",
        "liquid-lipstick",
        "lipstick",
        "nail-polish",
        "moisturizing-socks",
        "hand-cream",
        "sindoor",
        "crayon-lipstick",
        "eye-brushes",
        "manicure-kits",
        "lip-gloss",
        "makeup-remover",
        "nail-art-kit",
        "foot-cream",
        "bb-cream",
        "brush-sets",
        "pedicure-kits",
        "face-brushes",
        "highlighters",
        "lip-balm",
        "lip-brushes",
        "sunscreen",
        "trimmer",
        "facial-kits",
        "colour-contact-lens",
        "body-wash",
        "toners",
        "cleanser",
        "epilator",
        "eye-gels",
        "face-wash",
        "eye-masks",
        "eye-creams",
        "facial-wipes",
        "masks",
        "perfume",
        "moisturizer",
        "serum",
        "night-cream",
        "shoe-deodorant",
        "razor",
        "soaps",
        "body-scrubs",
        "day-cream",
        "deodorants",
        "eye-roll-on",
        "eye-serums",
        "attar",
        "bath-sets",
        "bathing-accessories",
        "scrubs",
        "sets",
        "underarm-roll-on",
        "wax-strips",
        "body-creams",
        "body-lotions",
        "talcum-powders",
        "body-butters",
        "body-mousse",
        "hair-brushes",
        "combs",
        "hair-spa",
        "hair-colour",
        "hair-spa-kits",
        "hair-cream",
        "hair-extensions",
        "anti-stretch-mark-cream",
        "body-oils",
        "body-souffles",
        "conditioner",
        "hair-accessories",
        "hair-oil",
        "hair-serum",
        "hair-spray",
        "shampoo",
        "body-mists",
        "body-sprays",
        "liquid-soap",
        "beard-oil",
        "beard-colour",
        "beard-wash",
        "beard-balm",
        "nail-cutter",
        "home-fragrance",
        "gift-set",
        "hand-soap",
        "hand-sanitizer",
        "face-oil",
        "body-massage-balm",
        "face-gel",
        "face-mist",
        "bath-oil",
        "insect-repellent",
        "anti-ageing-cream",
        "bath-salt",
        "anti-acne-cream",
        "face-massage-cream",
        "whitening-cream",
        "anti-wrinkle-cream",
        "foot-spray",
        "anti-blemish-cream",
        "blush",
        "makeup-fixer",
        "makeup-kit",
        "sponge",
        "foot-scrub",
        "eyeshadow-palette",
        "cc-cream",
        "eye-wipes",
        "head-wrap",
        "patches",
        "nipple-butter",
        "pillow-spray",
        "pillow-roll-on",
        "fragrance-plug",
        "pain-relief-balm",
        "headache-roll-on",
        "mirror",
        "toilet-seat-spray",
        "intimate-wash",
        "massager",
        "makeup-accessories",
        "pillow",
        "nail-accessories",
        "sanitary-napkins",
        "protective-mask",
        "kohl-kajal",
        "natural-lipstick",
        "pearl-lipstick",
        "creme-lipstick",
        "matte-lipstick",
        "glossy-lipstick",
        "compact-spray",
        "compact-stick",
        "compact-powder",
        "highlighter-cake",
        "blush-highlighter",
        "kajal-stick",
        "compact-cake",
        "roll-on-kajal-pencil",
        "liquid-compact",
        "stick-highlighter",
        "kajal-pencil",
        "gel-kajal",
        "liquid-glossy-lipstick",
        "liquid-matte-lipstick",
        "crayon-matte-lipstick",
        "liquid-creme-lipstick",
        "crayon-glossy-lipstick",
        "natural-lip-gloss",
        "liquid-natural-lipstick",
        "crayon-creme-lipstick",
        "pearl-lip-gloss",
        "liquid-pearl-lipstick",
        "crayon-natural-lipstick",
        "liquid-highlighter",
        "crayon-pearl-lipstick",
        "glossy-lip-gloss",
        "matte-lip-gloss",
        "creme-lip-gloss",
        "eye-concealer",
        "object-disinfectant",
        "face-disinfectant",
        "vegetable-fruit-wash",
        "infrared-thermometer",
        "safety-goggle",
        "personal-protective-equipment-kit",
        "examination-gloves",
        "face-shield"
      ],
      "banner": "https://hdn-1.fynd.com/seller/pictures/landscape-banner/original/ZxNlYp_DEFAULT-BANNER_LANDSCAPE.jpg66a71bf3-c1a7-4aa0-98e6-f2a837caa59a/ZxNlYp_DEFAULT-BANNER_LANDSCAPE.jpg",
      "logo": "https://hdn-1.fynd.com/seller/pictures/logo/original/OInLCX_0DEFAULT-LOGO.jpg03aeaeb8-2d04-4694-b641-f60fbdea5c4d/OInLCX_0DEFAULT-LOGO.jpg",
      "is_physical": true,
      "id": "5f05b34844a2e571575f3047"
    },
    {
      "name": "Clothing",
      "categories": [
        "casual-shirts",
        "formal-shirts",
        "sweaters",
        "sweatshirts",
        "hoodies",
        "cardigans",
        "suits",
        "front-open-jackets",
        "blazers",
        "waistcoats",
        "jeans",
        "chinos",
        "cargos",
        "corduroys",
        "formal-trousers",
        "3-4ths",
        "trunks",
        "boardshorts",
        "rashguard",
        "briefs",
        "trackpants",
        "tracksuits",
        "joggers",
        "t-shirts",
        "shorts",
        "gowns",
        "blouson-top",
        "tunics",
        "corsets",
        "kaftan-top",
        "shift-dress",
        "jumpsuits",
        "jeggings",
        "skirts",
        "palazzos",
        "culottes",
        "leggings",
        "shrugs",
        "sports-bra",
        "bikinis",
        "swimsuit",
        "sarong",
        "kaftan",
        "shapewear",
        "camisole",
        "activewear-tops",
        "tights",
        "yoga-pants",
        "capris",
        "harem",
        "bomber-jackets",
        "gilet",
        "leather-jackets",
        "polos",
        "bodycon-dress",
        "off-shoulder-dress",
        "skater-dress",
        "maxi-dress",
        "sheath-dress",
        "sweater-dress",
        "tube-dress",
        "slip-dress",
        "asymmetric-dress",
        "bodysuit",
        "peplum-top",
        "crop-top",
        "tiered-dress",
        "maxi-top",
        "tank-top",
        "tube-top",
        "strappy-top",
        "activewear-jackets",
        "denim-jackets",
        "windcheater",
        "peplum-dress",
        "off-shoulder-top",
        "shirt-dress",
        "kids-shirts",
        "twin-sets",
        "dungarees",
        "trousers",
        "western-jackets",
        "frocks",
        "dresses",
        "tops",
        "casual-pants",
        "beachwear-bottoms",
        "coat",
        "fusion-set",
        "indowestern-kurta",
        "tapered-jeans",
        "joggers-jeans",
        "straight-chinos",
        "tapered-chinos",
        "double-breasted-suits",
        "activewear-crop-tops",
        "flat-front-formal-trousers",
        "pleated-formal-trousers",
        "straight-formal-trousers",
        "straight-jeans",
        "flared-jeans",
        "tapered-formal-trousers",
        "straight-skirt",
        "flared-skirt",
        "asymmetric-skirt",
        "pleated-corduroys",
        "tapered-corduroys",
        "straight-corduroys",
        "cropped-chinos",
        "cropped-corduroys",
        "bootcut-jeans",
        "drop-crotch-jeans",
        "cropped-jeans",
        "bootcut-formal-trousers",
        "cropped-formal-trousers",
        "five-buttoned-suits",
        "tuxedo-suits",
        "one-buttoned-suits",
        "two-buttoned-suits",
        "four-buttoned-suits",
        "three-buttoned-suits",
        "pleated-chinos",
        "pleated-jeans",
        "beachwear-bikini-tops",
        "pleated-skirt",
        "flared-formal-trousers",
        "activewear-tank-tops",
        "beachwear-bikini-bottoms",
        "pencil-skirt",
        "activewear-blouse",
        "casual-joggers"
      ],
      "description": "This is the file validation template for the fashion department and clothing category.",
      "departments": [
        "men",
        "women",
        "kids",
        "clothing"
      ],
      "attributes": [
        "gender",
        "age-group",
        "color",
        "material",
        "occasion",
        "collection",
        "season",
        "product_fit",
        "product_type",
        "product_length",
        "pattern",
        "sleeve_type",
        "sleeve_length",
        "closure_type",
        "neck_type",
        "waist_rise",
        "denim-fade",
        "care_instructions",
        "package_contents",
        "number-of-pockets",
        "model_info",
        "essential",
        "gst-inclusive",
        "gst-if-exclusive",
        "fragile",
        "manufacturer-packer-importer-name",
        "manufacturer-packer-importer-address"
      ],
      "slug": "clothing",
      "banner": "https://hdn-1.fynd.com/seller/pictures/landscape-banner/original/720R34_DEFAULT-BANNER_LANDSCAPE.jpga765babe-cfaa-4cc5-9da7-f4e1402fa97e/720R34_DEFAULT-BANNER_LANDSCAPE.jpg",
      "logo": "https://hdn-1.fynd.com/seller/pictures/logo/original/jKZEs7_0DEFAULT-LOGO.jpg78413c0a-11a8-43f8-88ad-1442e9fdb898/jKZEs7_0DEFAULT-LOGO.jpg",
      "is_physical": true,
      "id": "5f04a25044a2e5404274bc0e"
    },
    {
      "description": "asdd",
      "attributes": [
        "color",
        "warranty_type",
        "care_instructions"
      ],
      "modified_on": "2020-08-20T16:15:33.598000Z",
      "modified_by": {
        "username": "fahimsakri_gofynd_com_44938",
        "user_id": "10"
      },
      "name": "FA-Template",
      "categories": [
        "vision-qa-f9447f89-d2da-41fc-ac33-b9f286308c14"
      ],
      "logo": "https://hdn-1.addsale.com/x0/products/pictures/template/logo/original/fW2zqHspe-q1.png",
      "departments": [
        "electronics"
      ],
      "banner": "https://hdn-1.addsale.com/x0/products/pictures/template/banner/original/L_u77Mz4T-FA-Template.png",
      "slug": "fa-template",
      "created_on": "2020-08-19T09:51:08.215000Z",
      "created_by": {
        "username": "fahimsakri_gofynd_com_44938",
        "user_id": "10"
      },
      "is_physical": true,
      "id": "5f3cf60c9788cc00018ab276"
    },
    {
      "name": "Footwear",
      "categories": [
        "sneakers",
        "running-shoes",
        "hiking-shoes",
        "football-shoes",
        "indoor-sports-shoes",
        "trainers",
        "outdoor-sports-shoes",
        "moccasins",
        "loafers",
        "boat-shoes",
        "brogues",
        "derby-shoes",
        "oxfords",
        "monk-strap-shoes",
        "lace-ups",
        "formal-slip-ons",
        "boots",
        "sandals",
        "flip-flops",
        "floaters",
        "d-orsay",
        "espadrilles",
        "pointed-toe",
        "flat-slip-ons",
        "gladiators",
        "flat-sandals",
        "stilettos",
        "wedges",
        "block-heels",
        "kitten-heels",
        "louis-heels",
        "cone-heels",
        "heel-sandals",
        "ballerinas",
        "casual-slip-ons",
        "casual-lace-ups",
        "ethnic-sandals",
        "clogs",
        "slippers",
        "school-shoes",
        "high-heels",
        "flats",
        "mules",
        "crocs",
        "heels-pumps",
        "mojaris",
        "jutties",
        "labour-shoes"
      ],
      "description": "This is the file validation template for the fashion department and footwear category.",
      "departments": [
        "men",
        "women",
        "kids"
      ],
      "attributes": [
        "gender",
        "age-group",
        "color",
        "outer-material",
        "inner_material",
        "sole-material",
        "occasion",
        "collection",
        "season",
        "product_type",
        "pattern",
        "closure_type",
        "toe_type",
        "arch_type",
        "heel_height",
        "heel-height-unit-of-measure",
        "care_instructions",
        "package_contents",
        "water-resistence",
        "water-resistence-details",
        "water-proof",
        "water-proof-details",
        "warranty_type",
        "warranty_description",
        "essential",
        "gst-inclusive",
        "gst-if-exclusive",
        "fragile",
        "manufacturer-packer-importer-name",
        "manufacturer-packer-importer-address"
      ],
      "slug": "footwear",
      "banner": "https://hdn-1.fynd.com/seller/pictures/landscape-banner/original/phMzNh_DEFAULT-BANNER_LANDSCAPE.jpgf06e7d2f-15a0-405a-b37b-1333c618abdb/phMzNh_DEFAULT-BANNER_LANDSCAPE.jpg",
      "logo": "https://hdn-1.fynd.com/seller/pictures/logo/original/PkIwbo_0DEFAULT-LOGO.jpgbb9acb1b-5e2c-44d4-918a-9429367ccb7d/PkIwbo_0DEFAULT-LOGO.jpg",
      "is_physical": true,
      "id": "5f04a25344a2e5404274bc10"
    },
    {
      "slug": "groceries",
      "name": "Groceries",
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/EtkWQm_fruit___vegetable_logo.jpgc541c78c-dabc-4823-bb72-c4bd3e5db449/EtkWQm_fruit___vegetable_logo.jpg",
      "departments": [
        "groceries"
      ],
      "description": "Groceries",
      "banner": "https://hdn-1.addsale.com/x0/seller/pictures/landscape-banner/original/BPjEl6_fruit___vegetable_logo.jpg577eb6bb-de4e-444c-a86a-bc23e0d97178/BPjEl6_fruit___vegetable_logo.jpg",
      "attributes": [
        "ingredient-type",
        "manufacturer_packer_importer_address"
      ],
      "categories": [
        "buns",
        "non-veg-pickle",
        "condensed-milk",
        "shoe-shiners",
        "bath-stool-tub-basin-sets",
        "soda-cocktail-mix",
        "tofu",
        "buckets-mugs",
        "fresh-mutton",
        "games-calculators",
        "kolam",
        "namkeen-savoury-snacks",
        "gift-bags",
        "honey",
        "cutlery-spoons-fork",
        "pita",
        "potato-onion-tomato",
        "apples-pomegranate",
        "dishwash-powder",
        "country-eggs",
        "fish-tuna",
        "coconut-milk",
        "sugarfree-sweeteners",
        "cups-mugs-tumblers",
        "turkey",
        "breakfast-snack-mixes",
        "diabetic-drinks",
        "other-dal",
        "herbs-seasoning",
        "incense-sticks",
        "scissor",
        "slice-cakes",
        "dips-dressings",
        "files",
        "lavash",
        "flakes",
        "tawa-sauce-pan",
        "breads",
        "jaggery",
        "soya-chunks",
        "exotic-vegetables",
        "wine-rise-vinegar",
        "recipe-packs",
        "pen",
        "cookware-sets",
        "jam-conserve-marmalade",
        "holi-pichkari",
        "knives-peelers",
        "chicken-sausages",
        "poha",
        "jowar-flour",
        "cook-serve",
        "unsweetened-cold-press",
        "decorations",
        "dust-cloth-wipes",
        "jelly",
        "gift-boxes",
        "organic-cold-press-oil",
        "glucose-powder-tablets",
        "frozen-non-veg-snacks",
        "leafy-vegetables",
        "salted-biscuits",
        "cooking-chocolates-cocoa",
        "marinated-meat",
        "berries",
        "basmati-rice",
        "ground-coffee",
        "cut-vegetables",
        "moong-dal",
        "glue",
        "fabric-pre-post-wash",
        "canola-rapeseed-oil",
        "water-fridge-bottle",
        "frozen-fish-seafood",
        "choppers-graters",
        "soya",
        "kiwi-melon-citrus-fruits",
        "buttermilk",
        "focaccia",
        "healthy-baked-snacks",
        "bowls",
        "car-freshener",
        "nachos",
        "powdered-spices",
        "rawa",
        "pressure-cookers",
        "chips",
        "cream-rolls",
        "tape",
        "bajra",
        "jowar",
        "ice-cream",
        "wicks",
        "cooking-pastes",
        "erasers-sharpeners",
        "imported-fruits",
        "notebooks",
        "masoor-dal",
        "canned-seafood",
        "regular-white-vinegar",
        "croissants-bread",
        "pasta",
        "root-vegetables",
        "whole-spices",
        "chana-dal",
        "glassware",
        "cucumber-gourds-capsicum",
        "papads-ready-to-fry",
        "lamp",
        "hakka-noodles",
        "balsamic-cider-vinegar",
        "garbage-bags",
        "pumpkin-drumstick",
        "other-plastic-ware",
        "frozen-indian-breads",
        "glucose-milk-biscuits",
        "non-alcoholic-drinks",
        "paneer",
        "toor-dal",
        "fresh-salads-sprouts",
        "fresh-chicken",
        "wheat-flour",
        "fruits-pulps",
        "cheese-spread",
        "camphor",
        "cabbage-broccoli-cauliflower",
        "sugar",
        "candles",
        "plates",
        "mangoes",
        "aerated-drinks",
        "toffee-candy-lollypop",
        "pizza-base",
        "thai-asian-sauce",
        "shoe-brushes",
        "gas-stove",
        "sports-energy-drinks",
        "shrikhand",
        "hangers-clips-ropes",
        "croutons",
        "floor-other-cleaners",
        "toilet-cleaners",
        "macaroni",
        "folders",
        "choco-nut-spread",
        "salts",
        "butter",
        "pavs",
        "hangers",
        "khari",
        "frozen-veg-snacks",
        "tea-cakes",
        "seasonal-fruits",
        "olive",
        "seasonal-accessories",
        "cream",
        "heat-eat-ready-meals",
        "dishwash-liquid-paste",
        "rubs",
        "beans-pulses",
        "seasonal-vegetables",
        "besan",
        "shoe-polish",
        "packaged-water",
        "kids-cereal",
        "instant-coffee",
        "powdered-milk",
        "dishwash-bar",
        "home-baking",
        "laundry-storage-baskets",
        "detergent-liquid",
        "instant-noodles",
        "canned-food",
        "disposable-cups-plates",
        "brinjals",
        "imported-cleaners",
        "tinned-packed-sweets",
        "container-set",
        "lamp-oil",
        "mayonnaise",
        "wall-hooks",
        "spreads",
        "juices",
        "quinoa-grains",
        "pooja-thali",
        "milk",
        "syrups-concentrates",
        "cut-fruit-tender-coconut",
        "kitchen-rolls",
        "cold-drinks",
        "vessels",
        "premium-cookies",
        "pooja-bells",
        "other-pooja-needs",
        "rise-flour",
        "breadcrumbs",
        "cup-cakes",
        "berry",
        "regional-rice",
        "regional-grains",
        "chilli-soya-sauce",
        "gourmet-popcorn",
        "beans-okra",
        "wafers",
        "sparkling-drinks",
        "muffins",
        "daliya",
        "match-box",
        "bagels-bread",
        "rice-products",
        "dry-fruits",
        "dal-mix",
        "flavoured-water",
        "roasted-seeds-nuts",
        "marshmallow",
        "toilet-paper",
        "wet-wipes",
        "fruit-baskets",
        "leaf-dust-tea",
        "rakhi",
        "insect-repellent",
        "bajra-flour",
        "ghee",
        "lunch-boxes",
        "cup-noodles",
        "chocolates",
        "candle-holder",
        "frozen-mutton",
        "marie-health-digestive",
        "pencils",
        "turkey-duck",
        "vermicelli",
        "exotic-flavoured-tea",
        "powdered-mixes",
        "urad-dal",
        "toilet-other-brushes",
        "jalapeno",
        "maida",
        "chutney",
        "fresh-sweets",
        "dessert-mixes",
        "instant-pasta",
        "kitchen-tools-other-accessories",
        "mushrooms",
        "chilli-lemon-garlic-ginger",
        "gherkin",
        "cooking-oil",
        "curry-paste",
        "tumblers",
        "lamb",
        "cheese",
        "other-seafood",
        "other-meat",
        "frozen-chicken",
        "banana-sapota-papaya",
        "granola-cereal-bars",
        "sabudana",
        "cream-biscuits",
        "bread-sticks",
        "chia-seeds",
        "utensil-scrub-pad-glove",
        "soya-granules",
        "soups",
        "spring-water",
        "rusks",
        "olive-oil",
        "organic-eggs",
        "aluminium-foil-cling-wrap",
        "colours-crayons",
        "corn-snacks",
        "pulses",
        "protein-eggs",
        "tomatoes-vegetables",
        "cookies",
        "still-drinks",
        "mustard-cheese-sauce",
        "regional-flour",
        "detergent-powder",
        "flavoured-other-oils",
        "chikki-gajak",
        "curd",
        "strainers-ladle-spatula",
        "holi-colours",
        "trail-cocktail-mixes",
        "baking-cake-decoration",
        "biscuits",
        "pencil-box",
        "muesli",
        "air-freshener",
        "quinoa",
        "metal-furniture-cleaners",
        "green-tea",
        "paper-napkin",
        "flavoured-milk",
        "mints-chewing-gum",
        "lighters",
        "lassi",
        "edamame-beans",
        "dry-fish",
        "blended-masalas",
        "tomato-ketchup",
        "kadai-fry-pans",
        "dustbins",
        "syrups",
        "wheat",
        "kitchen-glass-drains",
        "pork-ham",
        "panini",
        "flours-pre-mixes",
        "cfl-led-bulbs",
        "baguette-bread",
        "brooms-dust-pans",
        "prawns-shrimps",
        "soap-cases-dispensers",
        "oats-porridge",
        "mops-wipers",
        "exam-pads",
        "tea-bags",
        "pastries",
        "mosquito-repellent",
        "cut-peeled-veggies",
        "pickle",
        "brownies",
        "margarine",
        "soya-milk",
        "fresh-fish",
        "cloth-dryer-iron-table",
        "gift-wrap",
        "farm-eggs",
        "detergent-bar",
        "battery-electricals"
      ],
      "is_physical": true,
      "id": "5efc43b13b4ca00001328666"
    },
    {
      "description": "This is the file validation template for the Home & Living Department",
      "name": "Home & Living",
      "slug": "home-living",
      "departments": [
        "home-living"
      ],
      "categories": [
        "slippers",
        "chairs",
        "table",
        "beds",
        "vases",
        "bed-sheets",
        "dining-table",
        "blankets",
        "bath-robe",
        "bathing-accessories",
        "napkins",
        "hanger",
        "lunch-box",
        "photo-frame",
        "toiletry-bag",
        "pillow",
        "cup-saucer",
        "pet-collar-charm",
        "alarm-clocks",
        "dessert-plates",
        "vintage-clocks",
        "tissue-holder",
        "flush-mount-lights",
        "jewellery-box-stands",
        "desk-accessories",
        "serving-sets",
        "cake-stands",
        "bath-towel",
        "cutlery",
        "knives",
        "knives-holder",
        "pillow-covers",
        "placemats",
        "saucer",
        "coasters",
        "tea-sets",
        "forks",
        "shower-curtains",
        "serving-bowls",
        "soap-dispensers",
        "spoons",
        "bath-mats",
        "table-runner",
        "bed-covers",
        "tea-coffee-accessories",
        "coverlets",
        "soap-dishes",
        "duvet",
        "bed-sheets-sets",
        "duvet-cover",
        "bolster-pillows",
        "quilts-rajais",
        "mattress",
        "bed-linen-set",
        "candles",
        "clothes-storage",
        "shoe-racks",
        "cushion-fillers",
        "scented-candles",
        "art-pieces",
        "key-holder",
        "planters",
        "showpieces",
        "decals-stickers",
        "mirrors",
        "clocks",
        "coffee-tables",
        "dining-benches",
        "ottoman",
        "artificial-flowers",
        "dining-chair",
        "dining-table-set",
        "drapery",
        "console-table",
        "baking-mould",
        "cup",
        "dohars",
        "cushion-covers",
        "fountains",
        "comforters",
        "mugs",
        "flowerpot",
        "cushions",
        "decorative-objects",
        "napkin-holder",
        "trays",
        "table-cloth",
        "tea-cosy",
        "shower-caps",
        "shower-mats",
        "bed-skirts",
        "wardrobe-organisers",
        "mattress-protectors",
        "pillow-protectors",
        "tea-light-candles",
        "sculptures",
        "faux-plants",
        "vintage-finds",
        "wall-art",
        "dressing-tables",
        "benches",
        "sofas",
        "storage-trunks",
        "curtains",
        "side-table",
        "pillow-shams",
        "wind-chimes",
        "candle-holders",
        "cheese-boards",
        "serving-platters",
        "pitchers",
        "drinking-glasses",
        "pet-collar",
        "bathroom-faucets",
        "lamp-bases",
        "wreath",
        "pendant-lamps",
        "hearth-fireplace",
        "sconces",
        "succulents-plants",
        "fireplace-screens",
        "garlands",
        "electric-fireplaces",
        "storage-boxes",
        "elecrtonics-tech-accessories",
        "diffusers",
        "potpourri",
        "throws",
        "ceiling-lights",
        "pet-feeding-bowl",
        "chandeliers",
        "carpets",
        "salad-plates",
        "room-partitions",
        "bar-accessories",
        "decorative-lights",
        "hand-towel",
        "lamp-shades",
        "face-towel",
        "study-table-lamps",
        "floor-runner",
        "wall-lamps",
        "frying-pan",
        "door-mats",
        "carafe",
        "dinner-plates",
        "snifter",
        "dinner-set",
        "peg-measure",
        "platters",
        "shot-bottles",
        "bathroom-caddy",
        "vinegar-dispenser",
        "toilet-brush-holder",
        "cutlery-holder",
        "toothbrush-holder",
        "kitchen-trolly",
        "stemware",
        "measuring-cup",
        "baking-tray",
        "strainer",
        "stew-pan",
        "whisk",
        "cocktail-shaker",
        "flask",
        "food-container",
        "string-lights",
        "bottle-holder",
        "poufs",
        "chopping-board",
        "fireplace-tools",
        "dish-rack",
        "log-racks-holders",
        "ladle",
        "aroma-oils",
        "peeler",
        "incense-sticks-holders",
        "tongs",
        "incense-sticks",
        "kettle",
        "kulladhs",
        "table-linen-set",
        "handbag-organiser",
        "upholstery",
        "laundry-bag",
        "floor-lamps",
        "magazine-organiser",
        "lighting-accessories",
        "makeup-organiser",
        "table-lamps",
        "shelf-liner",
        "rugs-dhurries",
        "shoes-organiser",
        "sweater-bag",
        "bowls",
        "decanters",
        "garbage-bag",
        "beach-towel",
        "bookcase",
        "towel-set",
        "pool-table",
        "bath-rug",
        "poker-table",
        "shower-holder",
        "table-tennis",
        "towel-holder",
        "bar-counter-stools",
        "bath-mirror",
        "bar-carts",
        "towel-rod",
        "bar-furniture",
        "floor-mats",
        "bedside-table",
        "kadhai",
        "foundations",
        "sauce-pan",
        "pillow-inserts",
        "tawa",
        "bathroom-vanities",
        "cocktail-set",
        "lounging-relaxing-furniture",
        "canister",
        "oil-dispenser",
        "salt-pepper-shakers",
        "spatula",
        "casserole",
        "handi",
        "glasses",
        "kitchen-linen-set",
        "wardrobe-organiser",
        "jewellery-organiser",
        "separators",
        "closet-storage",
        "garbage-bag-holder",
        "hooks",
        "foosball-table",
        "board-game",
        "wall-shelves",
        "media-furniture",
        "file-cabinets",
        "leather-furniture",
        "buffets-sidebars",
        "mattress-pads",
        "wastebaskets",
        "hampers-baskets",
        "outdoor-dining-furniture",
        "entry-furniture",
        "water-jugs",
        "table-covers",
        "lanterns",
        "desk-organiser",
        "drawer-organiser",
        "suit-organiser",
        "swab-storage",
        "tote-basket",
        "hanger-holder",
        "cabinet",
        "hockey-table",
        "shuffleboard",
        "game-accessories",
        "desk",
        "office-chairs",
        "dining-storage",
        "kitchen-island",
        "nightstands",
        "duvet-inserts",
        "mattress-toppers",
        "medicine-cabinets",
        "bathroom-hardware-accessories",
        "salt-pepper-grinders",
        "water-bottle"
      ],
      "attributes": [
        "occasion",
        "collection",
        "color",
        "material",
        "product_type",
        "bed_size",
        "utility",
        "quality",
        "pattern",
        "filling",
        "shape",
        "sheet-type",
        "sheet_size",
        "thread_count",
        "product-dimensions",
        "pocket_depth",
        "group-id",
        "variation-type",
        "variation-based-on",
        "capacity",
        "dishwasher_safe",
        "microwave_safe",
        "oven_safe",
        "additional-features",
        "care_instructions",
        "package_contents",
        "sales_package",
        "warranty_type",
        "warranty_description",
        "gst-inclusive",
        "gst-if-exclusive",
        "fragile",
        "manufacturer-packer-importer-name",
        "manufacturer-packer-importer-address"
      ],
      "banner": "https://hdn-1.fynd.com/seller/pictures/landscape-banner/original/EHRCqs_DEFAULT-BANNER_LANDSCAPE.jpgc596e149-f6e1-4695-9446-9a8b88797d4c/EHRCqs_DEFAULT-BANNER_LANDSCAPE.jpg",
      "logo": "https://hdn-1.fynd.com/seller/pictures/logo/original/UAiJlq_0DEFAULT-LOGO.jpg25c9816d-2376-4eaf-b4ab-accb37e9a564/UAiJlq_0DEFAULT-LOGO.jpg",
      "is_physical": true,
      "id": "5f05acfa44a2e55081728be2"
    },
    {
      "categories": [
        "3-ply-box",
        "5-ply-box",
        "7-ply-box",
        "9-ply-box",
        "bubble-roll",
        "card-board-roll",
        "courier-bag",
        "courier-pouch",
        "die-cut-box",
        "double-side-tape",
        "drawer-box",
        "duct-tape",
        "filament-tape",
        "laminated-box",
        "packaging-tape",
        "poly-bag",
        "printed-tape",
        "reusable-bag",
        "seal-bags",
        "stretch-wrap",
        "suit-box",
        "zip-lock-bags",
        "box"
      ],
      "name": "Industrial Supplies",
      "banner": "https://hdn-1.fynd.com/seller/pictures/landscape-banner/original/9DpMn3_Beauty_&_Personal_Care_L.jpg80d89967-9c2c-498b-a79c-d176b3e71ea5/9DpMn3_Beauty_and_Personal_Care_L.jpg",
      "slug": "industrial-supplies",
      "attributes": [
        "color",
        "primary_color",
        "style",
        "features",
        "safety_warning",
        "is_flammable",
        "water_resistant",
        "product_details",
        "package_contents",
        "essential",
        "pallet"
      ],
      "logo": "https://hdn-1.fynd.com/seller/pictures/logo/original/I2NV2c_indi.jpg2eaf85b5-8076-4b0b-8f01-f119d6d8b559/I2NV2c_indi.jpg",
      "departments": [
        "industrial-supplies"
      ],
      "description": "Products used for business and industrial manufacturing process comes under this category. Example: Packaging Material",
      "modified_by": {
        "username": "meghagolecha_fynd_com_89167",
        "user_id": "23244269"
      },
      "modified_on": "2020-08-20T19:12:26.040000Z",
      "is_active": true,
      "is_physical": true,
      "id": "5f11eced5ca7f90001685a70"
    }
  ]
}
```
</details>









---


#### validateProductTemplate
Validate Product Template Schema




```swift
platformClient.catalog.validateProductTemplate(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A `slug` is a unique identifier for a particular template. |  



Allows you to list all product templates validation values for all the fields present in the database

*Returned Response:*




[TemplatesValidationResponse](#TemplatesValidationResponse)

List of fields and validation values fro each. See example below or refer `TemplatesValidationResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
null
```
</details>









---


#### downloadProductTemplateViews
Download Product Template View




```swift
platformClient.catalog.downloadProductTemplateViews(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A `slug` is a unique identifier for a particular template. |  



Allows you to download product template data

*Returned Response:*




[String](#String)

CSV File of product template data. See example below or refer `TemplatesResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### downloadInventoryTemplateView
Download Product Template View




```swift
platformClient.catalog.downloadInventoryTemplateView(itemType: itemType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemType | String | yes | An `item_type` defines the type of item. |  



Allows you to download product template data

*Returned Response:*




[String](#String)

CSV File of product template data.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### validateProductTemplateSchema
Validate Product Template Schema




```swift
platformClient.catalog.validateProductTemplateSchema(itemType: itemType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemType | String | yes | An `item_type` defines the type of item. The default value is standard. |  



Allows you to list all product templates validation values for all the fields present in the database

*Returned Response:*




[InventoryValidationResponse](#InventoryValidationResponse)

List of fields and validation values fro each. See example below or refer `InventoryValidationResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "title": "InventoryValidationResponse",
    "type": "object",
    "properties": {
      "item": {
        "$ref": ""
      },
      "sizes": {
        "title": "Sizes",
        "type": "array",
        "items": {
          "$ref": ""
        }
      }
    },
    "required": [
      "item",
      "sizes"
    ],
    "definitions": {
      "ItemQuery": {
        "title": "ItemQuery",
        "type": "object",
        "properties": {
          "uid": {
            "title": "Uid",
            "type": "integer"
          },
          "brand_uid": {
            "title": "Brand Uid",
            "type": "integer"
          },
          "item_code": {
            "title": "Item Code",
            "type": "integer"
          }
        }
      },
      "InventoryBaseSchema": {
        "title": "InventoryBaseSchema",
        "type": "object",
        "properties": {
          "price": {
            "title": "Actual Price",
            "exclusiveMinimum": 1,
            "type": "number"
          },
          "price_effective": {
            "title": "Selling Price",
            "exclusiveMinimum": 1,
            "type": "number"
          },
          "seller_identifier": {
            "title": "Gtin Value",
            "pattern": "^[A-Za-z0-9]*$",
            "type": "string"
          },
          "quantity": {
            "title": "Quantity",
            "minimum": 0,
            "type": "integer"
          },
          "store_code": {
            "title": "Store Code",
            "type": "string",
            "enum": [
              "RUOSH43",
              "S106",
              "S108",
              "TIO9",
              "talha"
            ]
          },
          "currency": {
            "title": "Currency",
            "enum": [
              "INR",
              "QAR"
            ],
            "type": "string"
          },
          "size": {
            "title": "Size",
            "type": "string"
          }
        },
        "required": [
          "price",
          "price_effective",
          "seller_identifier",
          "quantity",
          "store_code",
          "currency",
          "size"
        ]
      }
    }
  },
  "message": "Success"
}
```
</details>









---


#### listHSNCodes
List HSN Codes




```swift
platformClient.catalog.listHSNCodes() { (response, error) in
    // Use response
}
```






Allows you to list all hsn Codes

*Returned Response:*




[HSNCodesResponse](#HSNCodesResponse)

List of all HSN Codes. See example below or refer `HSNCodesResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "country_of_origin": [
      "India"
    ],
    "hsn_code": [
      "11111111"
    ]
  },
  "message": "Success"
}
```
</details>









---


#### listProductTemplateExportDetails
Allows you to list all product templates export list details




```swift
platformClient.catalog.listProductTemplateExportDetails() { (response, error) in
    // Use response
}
```






Can view details including trigger data, task id , etc.

*Returned Response:*




[ProductDownloadsResponse](#ProductDownloadsResponse)

List of Product Downloads Data. See example below or refer `ProductDownloadsResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {},
  "items": [
    {
      "created_by": {
        "username": "917972410891_48194",
        "user_id": "5646"
      },
      "data": {
        "type": "csv",
        "brand": [
          "ruosh"
        ],
        "templates": [
          "mobile-phones-and-tablet"
        ]
      },
      "status": "success",
      "task_id": "c4b54ace-44ef-11eb-9806-1ef9bc4a2da1",
      "template_tags": {
        "mobile-phones-and-tablet": {
          "display": "Mobile Phones & Tablet",
          "logo": "https://hdn-1.jiox0.de/jiox0/seller/pictures/logo/original/Oda39B_99946594-portable-devices-with-tablet-and-mobile-phone-vector-icon-for-apps-and-websites.jpgcc2dff44-7fae-4002-9ebe-d2b59c8bee91/Oda39B_99946594-portable-devices-with-tablet-and-mobile-phone-vector-icon-for-apps-and-websites.jpg"
        }
      },
      "trigger_on": "2020-12-23T07:23:35.302000Z",
      "seller_id": 3,
      "completed_on": "2020-12-23T07:23:41.031000Z",
      "url": "https://regrowth.s3.amazonaws.com/slingshot-catalogues/seller-catalog/3/c4b54ace-44ef-11eb-9806-1ef9bc4a2da1/c4b54ace-44ef-11eb-9806-1ef9bc4a2da1.zip",
      "id": "5fe2f077516d980001880943"
    }
  ]
}
```
</details>









---


#### getProductExportJobs
Allows you to list all product templates export list details




```swift
platformClient.catalog.getProductExportJobs(status: status, fromDate: fromDate, toDate: toDate, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| status | String? | no | This is a parameter used to find all the jobs with the specified status. |   
| fromDate | String? | no | This is a parameter used to find the job from the date specified to the current date. |   
| toDate | String? | no | This is a parameter used to find the job from the from_date specified to the to_date. |   
| q | String? | no | It is a query parameter to search the export job with the task ID. |  



Can view details including trigger data, task id , etc.

*Returned Response:*




[ProductDownloadsResponse](#ProductDownloadsResponse)

List of Product Downloads Data. See example below or refer `ProductDownloadsResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {},
  "items": [
    {
      "created_by": {
        "username": "917972410891_48194",
        "user_id": "5646"
      },
      "data": {
        "type": "csv",
        "brand": [
          "ruosh"
        ],
        "templates": [
          "mobile-phones-and-tablet"
        ]
      },
      "status": "success",
      "task_id": "c4b54ace-44ef-11eb-9806-1ef9bc4a2da1",
      "template_tags": {
        "mobile-phones-and-tablet": {
          "display": "Mobile Phones & Tablet",
          "logo": "https://hdn-1.jiox0.de/jiox0/seller/pictures/logo/original/Oda39B_99946594-portable-devices-with-tablet-and-mobile-phone-vector-icon-for-apps-and-websites.jpgcc2dff44-7fae-4002-9ebe-d2b59c8bee91/Oda39B_99946594-portable-devices-with-tablet-and-mobile-phone-vector-icon-for-apps-and-websites.jpg"
        }
      },
      "trigger_on": "2020-12-23T07:23:35.302000Z",
      "seller_id": 3,
      "completed_on": "2020-12-23T07:23:41.031000Z",
      "url": "https://regrowth.s3.amazonaws.com/slingshot-catalogues/seller-catalog/3/c4b54ace-44ef-11eb-9806-1ef9bc4a2da1/c4b54ace-44ef-11eb-9806-1ef9bc4a2da1.zip",
      "id": "5fe2f077516d980001880943"
    }
  ]
}
```
</details>









---


#### createProductExportJob
Create a product export job.




```swift
platformClient.catalog.createProductExportJob(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ProductTemplateDownloadsExport | yes | Request body |


This API helps to create a Inventory export job.

*Returned Response:*




[ProductDownloadsResponse](#ProductDownloadsResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "filters": {
      "templates": [
        "footwear"
      ],
      "brands": [],
      "catalogue_types": [
        "standard"
      ]
    },
    "stats": {},
    "modified_on": "2023-03-03T10:26:47.047179",
    "type": "excel",
    "created_by": {
      "user_id": "550fe8ce436ea332b9e4b4b0",
      "username": "purvashukla_gofynd_com_44895"
    },
    "notification_emails": [],
    "status": "pending",
    "_id": "6401cb6729885c34aa30b0c6",
    "seller_id": 577,
    "created_on": "2023-03-03T10:26:47.047171Z",
    "task_id": "e6c47f1a-b9ad-11ed-b7a0-3ef7b700888d"
  }
}
```
</details>









---


#### listTemplateBrandTypeValues
Allows you to list all values for Templates, Brands or Type




```swift
platformClient.catalog.listTemplateBrandTypeValues(filter: filter, templateTag: templateTag, itemType: itemType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| filter | String | yes | A `filter` is the unique identifier of the type of value required. |   
| templateTag | String? | no | A `template_tag` is the identifier of the type of template required. |   
| itemType | String? | no | A `item_type` is the identifier of the type of template required. |  



The filter type query parameter defines what type of data to return. The type of query returns the valid values for the same

*Returned Response:*




[ProductConfigurationDownloads](#ProductConfigurationDownloads)

See example below or refer `ProductConfigurationDownloadsSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": [
    {
      "display": "csv",
      "value": "csv"
    },
    {
      "display": "excel",
      "value": "excel"
    }
  ],
  "multivalue": false
}
```
</details>









---


#### listCategories
Get product categories list




```swift
platformClient.catalog.listCategories(level: level, departments: departments, q: q, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| level | String? | no | Get category for multiple levels |   
| departments | String? | no | Get category for multiple departments filtered |   
| q | String? | no | Get multiple categories filtered by search string |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |  



This API gets meta associated to product categories.

*Returned Response:*




[CategoryResponse](#CategoryResponse)

Category Meta. See example below or refer `CategoryResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "current": 1,
    "size": 58,
    "has_previous": false,
    "has_next": true,
    "item_total": 574
  },
  "items": [
    {
      "name": "Air Conditioners",
      "media": {
        "logo": "https://hdn-1.addsale.com/x0/category/pictures/square-logo/original/zTgh1zslj-.png",
        "portrait": "https://hdn-1.addsale.com/x0/category/pictures/portrait-banner/original/VKqwRngFh-.png",
        "landscape": "https://hdn-1.addsale.com/x0/category/pictures/landscape-banner/original/_7GDi3tyi-.png"
      },
      "marketplaces": {},
      "tryouts": [],
      "is_active": true,
      "created_by": {
        "username": "917972410891_48194",
        "user_id": "5646"
      },
      "uid": 22330,
      "slug": "air-conditioners",
      "priority": 1,
      "synonyms": [],
      "modified_by": {
        "username": "917972410891_48194",
        "user_id": "5646"
      },
      "level": 3,
      "hierarchy": [
        {
          "l1": 1,
          "department": 1,
          "l2": 22329
        }
      ],
      "created_on": "2021-04-02T15:43:59.410000Z",
      "departments": [
        1
      ],
      "modified_on": "2021-04-02T15:43:59.410000Z",
      "id": "60673bbf7896da00017885ad"
    },
    {
      "name": "Home Appliances",
      "media": {
        "logo": "https://hdn-1.addsale.com/x0/category/pictures/square-logo/original/zTgh1zslj-.png",
        "portrait": "https://hdn-1.addsale.com/x0/category/pictures/portrait-banner/original/VKqwRngFh-.png",
        "landscape": "https://hdn-1.addsale.com/x0/category/pictures/landscape-banner/original/_7GDi3tyi-.png"
      },
      "is_active": true,
      "created_by": {
        "username": "917972410891_48194",
        "user_id": "5646"
      },
      "uid": 22329,
      "slug": "home-appliances",
      "priority": 1,
      "synonyms": [],
      "modified_by": {
        "username": "917972410891_48194",
        "user_id": "5646"
      },
      "level": 2,
      "hierarchy": [],
      "created_on": "2021-04-02T15:42:55.405000Z",
      "departments": [
        1
      ],
      "modified_on": "2021-04-02T15:42:55.405000Z",
      "id": "60673b7f7896da00017885ac"
    },
    {
      "created_by": {
        "username": "919821012599_75351",
        "user_id": "5721"
      },
      "slug": "dummy-category-level-2",
      "level": 2,
      "uid": 22323,
      "is_active": true,
      "media": {
        "portrait": "https://hdn-1.addsale.com/x0/category/pictures/portrait-banner/original/VKqwRngFh-.png",
        "landscape": "https://hdn-1.addsale.com/x0/category/pictures/landscape-banner/original/0wCdjxWpI-.png",
        "logo": "https://hdn-1.addsale.com/x0/category/pictures/square-logo/original/zTgh1zslj-.png"
      },
      "name": "Dummy category level 2 by fahim",
      "modified_on": "2021-03-04T15:43:50.495000Z",
      "modified_by": {
        "username": "917753852478_51632",
        "user_id": "5677"
      },
      "synonyms": [
        "skin",
        "care",
        "asdasd"
      ],
      "created_on": "2021-01-14T05:28:02.148000Z",
      "priority": 123456,
      "hierarchy": [],
      "departments": [
        21
      ],
      "id": "5fffd662e64eb40001fc8a42"
    },
    {
      "synonyms": [],
      "marketplaces": {},
      "created_on": "2021-02-25T00:00:47.589000Z",
      "modified_by": {
        "username": "917753852478_51632",
        "user_id": "5677"
      },
      "media": {
        "landscape": "https://hdn-1.addsale.com/x0/category/pictures/landscape-banner/original/0wCdjxWpI-.png",
        "logo": "https://hdn-1.addsale.com/x0/category/pictures/square-logo/original/EfCt9iXx8-http/d3p8ifzkmzds37.cloudfront.net/media/logo/department/original/15870_c287d3c2431a432bb0e49363ef6b82bc.png.jpeg",
        "portrait": "https://hdn-1.addsale.com/x0/category/pictures/portrait-banner/original/S1axCMOJ4-.png"
      },
      "modified_on": "2021-03-04T15:39:52.108000Z",
      "hierarchy": [
        {
          "l2": 22323,
          "l1": 22322,
          "department": 21
        }
      ],
      "name": "Dummy level 4",
      "is_active": true,
      "slug": "dummy-level-4",
      "departments": [
        21
      ],
      "level": 3,
      "tryouts": [],
      "uid": 22325,
      "priority": 986532,
      "created_by": {
        "username": "silverbolt",
        "user_id": "-1"
      },
      "id": "60369b57d23031d14be92c18"
    },
    {
      "created_by": {
        "username": "919821012599_75351",
        "user_id": "5721"
      },
      "slug": "dummy-level-3",
      "level": 3,
      "uid": 22324,
      "is_active": true,
      "media": {
        "landscape": "https://hdn-1.addsale.com/x0/category/pictures/landscape-banner/original/0wCdjxWpI-.png",
        "logo": "https://hdn-1.addsale.com/x0/category/pictures/square-logo/original/EfCt9iXx8-http/d3p8ifzkmzds37.cloudfront.net/media/logo/department/original/15870_c287d3c2431a432bb0e49363ef6b82bc.png.jpeg",
        "portrait": "https://hdn-1.addsale.com/x0/category/pictures/portrait-banner/original/S1axCMOJ4-.png"
      },
      "name": "Dummy level 3 by fahim",
      "tryouts": [
        "Lipstick",
        "Eyeliner"
      ],
      "modified_on": "2021-03-04T15:39:46.246000Z",
      "modified_by": {
        "username": "917753852478_51632",
        "user_id": "5677"
      },
      "synonyms": [],
      "marketplaces": {},
      "created_on": "2021-01-14T05:28:59.852000Z",
      "priority": 986532,
      "hierarchy": [
        {
          "l2": 22323,
          "l1": 22322,
          "department": 21
        },
        {
          "l2": 3732,
          "l1": 3672,
          "department": 4
        },
        {
          "l2": 730,
          "l1": 595,
          "department": 2
        }
      ],
      "departments": [
        2,
        4,
        21
      ],
      "id": "5fffd69be64eb40001fc8a65"
    },
    {
      "uid": 3151,
      "departments": [
        4
      ],
      "is_active": true,
      "level": 1,
      "media": {
        "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/YHIeoQ_fruit___vegetable_logo.jpg16aab608-a78a-458f-b60b-524525f27dec/YHIeoQ_fruit___vegetable_logo.jpg",
        "portrait": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/ywPVrU_preview_a637ca6e4da6e38f03eb0d650ac5d6ba.jpgc73cc22f-b5ee-4fd4-a585-8ada35762d68/ywPVrU_preview_a637ca6e4da6e38f03eb0d650ac5d6ba.jpg",
        "landscape": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/ywPVrU_preview_a637ca6e4da6e38f03eb0d650ac5d6ba.jpgc73cc22f-b5ee-4fd4-a585-8ada35762d68/ywPVrU_preview_a637ca6e4da6e38f03eb0d650ac5d6ba.jpg"
      },
      "name": "Gourmet & World Food",
      "priority": 123,
      "slug": "gourmet-world-food",
      "synonyms": [
        "gourmet & world food",
        "food",
        "gourmet"
      ],
      "created_on": "2016-04-09T06:44:35Z",
      "hierarchy": [],
      "modified_by": {
        "username": "917753852478_51632",
        "uid": "5677"
      },
      "modified_on": "2021-03-03T09:35:50.415000Z",
      "id": "5fabab8ea18a1284b97ff6c4"
    },
    {
      "modified_by": {
        "username": "917753852478_51632",
        "uid": "5677"
      },
      "marketplaces": {},
      "hierarchy": [
        {
          "l1": 595,
          "l2": 714,
          "department": 2
        },
        {
          "l1": 2,
          "l2": 4,
          "department": 1
        }
      ],
      "created_on": "2021-03-03T06:30:08.342000Z",
      "created_by": {
        "username": "917753852478_51632",
        "uid": "5677"
      },
      "level": 3,
      "name": "Test Category kaf",
      "media": {
        "landscape": "https://hdn-1.addsale.com/x0/category/pictures/landscape-banner/original/0wCdjxWpI-.png",
        "logo": "https://hdn-1.addsale.com/x0/category/pictures/square-logo/original/EfCt9iXx8-http/d3p8ifzkmzds37.cloudfront.net/media/logo/department/original/15870_c287d3c2431a432bb0e49363ef6b82bc.png.jpeg",
        "portrait": "https://hdn-1.addsale.com/x0/category/pictures/portrait-banner/original/VKqwRngFh-.png"
      },
      "tryouts": [
        "Lipstick",
        "Blush"
      ],
      "is_active": true,
      "slug": "test-category-kaf",
      "uid": 22328,
      "synonyms": [
        "test",
        "category"
      ],
      "priority": 23,
      "departments": [
        1,
        2
      ],
      "modified_on": "2021-03-03T08:34:47.999000Z",
      "id": "603f2cf0aac0360001c00731"
    },
    {
      "level": 3,
      "departments": [
        1
      ],
      "is_active": false,
      "created_by": {
        "username": "silverbolt",
        "user_id": "-1"
      },
      "created_on": "2021-02-25T09:26:53.123000Z",
      "tryouts": [],
      "slug": "smart-cell",
      "marketplaces": {},
      "priority": 5,
      "media": {
        "portrait": "http://cdn4.gofynd.com/media/logo/department/original/13239_660c6f5b2b8d458789de4552d241ea1b.jpg",
        "landscape": "https://hdn-1.fynd.com/media/banner/category/original/16128_380bed8bff064a0b981041df65e0d8b3.jpg",
        "logo": "http://d3p8ifzkmzds37.cloudfront.net/media/logo/department/original/15870_c287d3c2431a432bb0e49363ef6b82bc.png"
      },
      "modified_on": "2021-02-25T09:26:53.123000Z",
      "synonyms": [],
      "uid": 22327,
      "hierarchy": [
        {
          "l1": 2,
          "l2": 3,
          "department": 1
        }
      ],
      "name": "Smart Cell",
      "modified_by": {
        "username": "silverbolt",
        "user_id": "-1"
      },
      "id": "60372005d230311fe9e51f0b"
    },
    {
      "is_active": true,
      "hierarchy": [
        {
          "department": 21,
          "l1": 22322,
          "l2": 22323
        }
      ],
      "slug": "dummy-level-98",
      "priority": 986532,
      "uid": 22326,
      "departments": [
        21
      ],
      "created_by": {
        "username": "silverbolt",
        "user_id": "-1"
      },
      "modified_on": "2021-02-25T00:09:35.026000Z",
      "marketplaces": {},
      "tryouts": [],
      "synonyms": [],
      "media": {
        "landscape": "https://hdn-1.addsale.com/x0/category/pictures/landscape-banner/original/0wCdjxWpI-.png",
        "portrait": "https://hdn-1.addsale.com/x0/category/pictures/portrait-banner/original/S1axCMOJ4-.png",
        "logo": "https://hdn-1.addsale.com/x0/category/pictures/square-logo/original/EfCt9iXx8-http/d3p8ifzkmzds37.cloudfront.net/media/logo/department/original/15870_c287d3c2431a432bb0e49363ef6b82bc.png.jpeg"
      },
      "level": 3,
      "name": "Dummy level 98",
      "created_on": "2021-02-25T00:09:35.026000Z",
      "modified_by": {
        "username": "silverbolt",
        "user_id": "-1"
      },
      "id": "60369d67d2303111b8924dcf"
    },
    {
      "uid": 315,
      "created_on": "2016-04-09T06:44:35Z",
      "departments": [
        2,
        3
      ],
      "hierarchy": [
        {
          "l1": 65,
          "l2": 66,
          "department": 2
        },
        {
          "l1": 442,
          "l2": 26,
          "department": 2
        },
        {
          "l1": 442,
          "l2": 26,
          "department": 3
        }
      ],
      "is_active": true,
      "level": 3,
      "marketplaces": {},
      "media": {
        "landscape": "https://hdn-1.fynd.com/media/banner/category/original/19961_f042f1f4a90f4e828b6d77d6dbea264d.jpg",
        "logo": "https://hdn-1.fynd.com/media/logo/category/original/81ef023d375044e9b9daa66b81ec411f.jpg",
        "portrait": "https://hdn-1.fynd.com/media/banner_portrait/category/original/19960_c679d51cb1bd4ca99f00f9050aa647a4.jpg"
      },
      "modified_by": {
        "username": "917753852478_51632",
        "user_id": "5677"
      },
      "modified_on": "2021-02-15T15:48:05.329000Z",
      "name": "Sports Bra",
      "priority": 281,
      "slug": "sports-bra",
      "synonyms": [
        "Sports Bra",
        "activewear bra",
        "gym bra"
      ],
      "tryouts": [],
      "id": "5fdba984642de8d93efb0d71"
    }
  ]
}
```
</details>









---


#### createCategories
Create product categories




```swift
platformClient.catalog.createCategories(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CategoryRequestBody | yes | Request body |


This API lets user create product categories

*Returned Response:*




[CategoryCreateResponse](#CategoryCreateResponse)

Category Meta. See example below or refer `CategoryCreateResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Success",
  "uid": 0
}
```
</details>









---


#### updateCategory
Update product categories




```swift
platformClient.catalog.updateCategory(uid: uid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uid | String | yes | Category unique id |  
| body | CategoryRequestBody | yes | Request body |


Update a product category using this api

*Returned Response:*




[CategoryUpdateResponse](#CategoryUpdateResponse)

Category Meta. See example below or refer `CategoryUpdateResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCategoryData
Get product category by uid




```swift
platformClient.catalog.getCategoryData(uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uid | String | yes | Category unique id |  



This API gets meta associated to product categories.

*Returned Response:*




[SingleCategoryResponse](#SingleCategoryResponse)

Get Data for one category. See example below or refer `CategoryResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "name": "Air Conditioners",
    "media": {
      "portrait": "https://hdn-1.addsale.com/x0/category/pictures/portrait-banner/original/_4p7Kz9Yp-banner.png",
      "landscape": "https://hdn-1.addsale.com/x0/category/pictures/landscape-banner/original/nsi0nJ6gX-landscape.png",
      "logo": "https://hdn-1.addsale.com/x0/category/pictures/square-logo/original/zTgh1zslj-.png"
    },
    "marketplaces": {},
    "tryouts": [],
    "is_active": true,
    "created_by": {
      "username": "917972410891_48194",
      "user_id": "5646"
    },
    "uid": 22330,
    "slug": "air-conditioners",
    "priority": 1,
    "synonyms": [],
    "modified_by": {
      "username": "nikhilmhatre_gofynd_com_97636",
      "user_id": "16"
    },
    "level": 3,
    "hierarchy": [
      {
        "l1": 1,
        "department": 1,
        "l2": 22329
      }
    ],
    "created_on": "2021-04-02T15:43:59.410000Z",
    "departments": [
      1
    ],
    "modified_on": "2021-04-13T13:57:56.443000Z",
    "id": "60673bbf7896da00017885ad"
  }
}
```
</details>









---


#### getProducts
Get product list




```swift
platformClient.catalog.getProducts(brandIds: brandIds, categoryIds: categoryIds, itemIds: itemIds, departmentIds: departmentIds, itemCode: itemCode, q: q, tags: tags, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| brandIds | [Int]? | no | Get multiple products filtered by Brand Ids |   
| categoryIds | [Int]? | no | Get multiple products filtered by Category Ids |   
| itemIds | [Int]? | no | Get multiple products filtered by Item Ids |   
| departmentIds | [Int]? | no | Get multiple products filtered by Department Ids |   
| itemCode | [String]? | no | Get multiple products filtered by Item Code |   
| q | String? | no | Get multiple products filtered by q string |   
| tags | [String]? | no | Get multiple products filtered by tags |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |  



This API gets meta associated to products.

*Returned Response:*




[ProductListingResponseV2](#ProductListingResponseV2)

Product Meta. See example below for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "name": "TV Set",
      "description": "Tv",
      "country_of_origin": "India",
      "currency": "INR",
      "short_description": "",
      "is_set": true,
      "item_code": "TVSET111",
      "brand_uid": 1,
      "template_tag": "television",
      "highlights": [
        "42 Inch"
      ],
      "slug": "tv-set",
      "_custom_json": {},
      "l3_mapping": [
        "electronics>qled_television"
      ],
      "image_nature": "standard",
      "departments": [
        1
      ],
      "created_on": 1599024995,
      "created_by": {
        "username": "919049753052_37528",
        "user_id": "5"
      },
      "modified_on": 1627642010,
      "modified_by": {
        "username": "xxxxxxxxxx",
        "user_id": "xxxxxxxxxxx"
      },
      "stage": "verified",
      "uid": 7501547,
      "verified_by": {
        "username": "Silverbolt",
        "user_id": "0"
      },
      "verified_on": "2020-07-23T04:20:43.810000Z",
      "all_sizes": [
        {
          "item_code": "TVSET111",
          "brand_uid": 1,
          "seller_identifier": "HGS272727272",
          "identifiers": [
            {
              "gtin_type": "ean",
              "gtin_value": "HGS272727272",
              "primary": true
            }
          ],
          "company_id": 1,
          "size": "XXLX23, MX11, LX67, XLX45 (146 PCS)",
          "marked_price": 35000
        }
      ],
      "category_slug": "qled-television",
      "is_image_less_product": false,
      "media": [
        {
          "url": "https://hdn-1.addsale.com/x0/products/pictures/item/free/135x0/dcizgsG_Y-Tv-Set.png",
          "type": "image"
        }
      ],
      "variants": {},
      "product_publish": {
        "is_set": false,
        "product_online_date": 1626965521
      },
      "is_dependent": false,
      "is_physical": true,
      "item_type": "set",
      "category_uid": 1,
      "custom_order": {
        "manufacturing_time": 2,
        "is_custom_order": true,
        "manufacturing_time_unit": "days"
      },
      "multi_size": true,
      "no_of_boxes": 1,
      "product_group_tag": [],
      "size_guide": "slim-fit-shirts-for-men",
      "tags": [],
      "teaser_tag": {},
      "synonyms": [],
      "hsn_code": "11111111",
      "return_config": {
        "unit": "days",
        "returnable": false,
        "time": 0
      },
      "all_company_ids": [
        1
      ],
      "all_identifiers": [
        "19WE100"
      ],
      "trader": {
        "address": "sdfdsfsdf",
        "name": "asdasd"
      },
      "trader_type": "Packer",
      "verification_status": "pending",
      "sizes": [
        {
          "size": "FGX33, GHX33 (66 PCS)",
          "store_count": 1
        },
        {
          "size": "XSE WE23X100 (100 PCS)",
          "store_count": 2
        },
        {
          "size": "XSEX100 (100 PCS)",
          "store_count": 3
        },
        {
          "size": "XXLX23, MX11, LX67, XLX45 (146 PCS)",
          "store_count": 3
        }
      ],
      "id": "5f4f2f6371a5970001f13655",
      "brand": {
        "name": "Apple",
        "logo": {
          "aspect_ratio": "1:1",
          "aspect_ratio_f": 1,
          "url": "https://hdn-1.jiox0.de/jioecomm/seller/pictures/logo/50x0/apple-7f951c/logo_apple.png",
          "secure_url": "https://hdn-1.jiox0.de/jioecomm/seller/pictures/logo/50x0/apple-7f951c/logo_apple.png"
        },
        "uid": 13
      },
      "images": [
        {
          "aspect_ratio": "16:25",
          "aspect_ratio_f": 0.64,
          "url": "https://hdn-1.addsale.com/x0/products/pictures/item/free/135x0/dcizgsG_Y-Tv-Set.png",
          "secure_url": "https://hdn-1.addsale.com/x0/products/pictures/item/free/135x0/dcizgsG_Y-Tv-Set.png"
        }
      ],
      "price": {
        "marked": {
          "min": 35000,
          "max": 35000
        },
        "effective": {
          "min": 25000,
          "max": 25000
        }
      }
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 1,
    "item_total": 1,
    "has_previous": false,
    "has_next": false
  }
}
```
</details>









---


#### createProduct
Create a product.




```swift
platformClient.catalog.createProduct(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ProductCreateUpdateSchemaV2 | yes | Request body |


This API allows to create product.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getVariantsOfProducts
Get product list




```swift
platformClient.catalog.getVariantsOfProducts(itemId: itemId, variantType: variantType, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Get list of variants of item Id |   
| variantType | String | yes | Get multiple products filtered by variant type |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |  



This API gets meta associated to products.

*Returned Response:*




[ProductVariantsResponse](#ProductVariantsResponse)

Product Meta. See example below for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "variants": [
    {
      "slug": "test-msa-6",
      "item_code": "TEST-MSA-6",
      "brand_uid": 401,
      "media": [
        {
          "type": "image",
          "url": "https://hdn-1.jiox0.de/jiox0/products/pictures/item/free/original/7cGLXZLpO-iN3Jd9uro-Wiv-7J9qC-product.png"
        }
      ],
      "name": "test-msa-6",
      "category_uid": 3938,
      "uid": 7526471
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 1,
    "item_total": 1,
    "has_previous": false,
    "has_next": false
  }
}
```
</details>









---


#### getProductAttributes
Get list of all the attributes by their l3_categories




```swift
platformClient.catalog.getProductAttributes(category: category, filter: filter) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| category | String | yes | It is the name of the l3 cateogry |   
| filter | Bool? | no | If true, returns filtered values, else returns all the attributes |  



This API allows to list all the attributes by their l3_categories.

*Returned Response:*




[ProductAttributesResponse](#ProductAttributesResponse)

Size guide object. See example below or refer `ProductAttributesResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "filters": {
        "indexing": false
      },
      "schema": {
        "multi": true,
        "allowed_values": [],
        "format": "",
        "type": "int",
        "range": {}
      },
      "created_on": "2022-05-25T16:15:01.276000Z",
      "modified_on": "2022-05-25T16:15:01.276000Z",
      "slug": "test-number-area",
      "modified_by": {
        "username": "anveshreddy_fynd_external_com_85084",
        "user_id": "8ec76d9df98f4246a9d6e5a6"
      },
      "details": {
        "display_type": "text"
      },
      "description": "to test the attribute that represents area",
      "unit": "ft**2",
      "variant": false,
      "departments": [
        "men-s-fashion"
      ],
      "created_by": {
        "username": "anveshreddy_fynd_external_com_85084",
        "user_id": "8ec76d9df98f4246a9d6e5a6"
      },
      "name": "test number area",
      "id": "628e5605c71589dba709c365"
    },
    {
      "created_by": {
        "username": "anveshreddy_fynd_external_com_85084",
        "user_id": "8ec76d9df98f4246a9d6e5a6"
      },
      "name": "Motor Power",
      "details": {
        "display_type": "text"
      },
      "slug": "motor-power",
      "logo": "https://hdn-1.jiomarketx0.de/x0/products/pictures/attribute/logo/original/UYTUHgLGj-Color.png",
      "modified_on": "2022-05-05T09:40:00.453000Z",
      "schema": {
        "allowed_values": [],
        "format": "",
        "multi": false,
        "range": {
          "min": 1,
          "max": 10
        },
        "mandatory": true,
        "type": "int"
      },
      "modified_by": {
        "username": "anveshreddy_fynd_external_com_85084",
        "user_id": "8ec76d9df98f4246a9d6e5a6"
      },
      "created_on": "2022-05-05T09:40:00.453000Z",
      "filters": {
        "indexing": true,
        "priority": 26
      },
      "variant": true,
      "enabled_for_end_consumer": true,
      "description": "tells the power of the motor",
      "departments": [
        "men-s-fashion",
        "anvesh-department"
      ],
      "unit": "hp",
      "id": "62739b7043385c1f314d4868"
    },
    {
      "created_by": {
        "username": "anveshreddy_fynd_external_com_85084",
        "user_id": "8ec76d9df98f4246a9d6e5a6"
      },
      "name": "SIZE NEW",
      "details": {
        "display_type": "text"
      },
      "slug": "size-new",
      "logo": "https://hdn-1.jiomarketx0.de/x0/products/pictures/attribute/logo/original/UYTUHgLGj-Color.png",
      "modified_on": "2022-05-05T13:25:33.353000Z",
      "schema": {
        "allowed_values": [
          "XS",
          "S",
          "M",
          "L",
          "XXL",
          "XXXL"
        ],
        "format": "upper case",
        "multi": false,
        "range": {},
        "mandatory": true,
        "type": "str"
      },
      "modified_by": {
        "username": "anveshreddy_fynd_external_com_85084",
        "user_id": "8ec76d9df98f4246a9d6e5a6"
      },
      "created_on": "2022-05-05T08:56:59.483000Z",
      "filters": {
        "indexing": true,
        "priority": 25
      },
      "variant": false,
      "enabled_for_end_consumer": true,
      "description": "describes the size of the item",
      "departments": [
        "men-s-fashion",
        "electronics-test",
        "anvesh-department",
        "fashion",
        "test1"
      ],
      "id": "6273915b43385c1f314d4867"
    },
    {
      "variant": false,
      "modified_on": "2022-04-13T13:35:53.611000Z",
      "modified_by": {
        "username": "piyushsinha_fynd_external_com_34090",
        "user_id": "5d9aa3ca5acdcb33fdcc8472"
      },
      "filters": {
        "indexing": false
      },
      "slug": "white",
      "created_on": "2022-04-13T13:35:53.611000Z",
      "departments": [
        "men-s-fashion"
      ],
      "created_by": {
        "username": "piyushsinha_fynd_external_com_34090",
        "user_id": "5d9aa3ca5acdcb33fdcc8472"
      },
      "schema": {
        "format": "title case",
        "multi": false,
        "allowed_values": [],
        "range": {},
        "type": "str"
      },
      "name": "White",
      "details": {
        "display_type": "text"
      },
      "id": "6256d1b9635e136dc2cb9a02"
    },
    {
      "filters": {
        "indexing": false
      },
      "created_by": {
        "username": "jagadeshsahadevan_gofynd_com_66706",
        "user_id": "f6fccadda27e6b365b87c027"
      },
      "name": "Test Attributes",
      "details": {
        "display_type": "text"
      },
      "departments": [
        "men-s-fashion"
      ],
      "modified_by": {
        "username": "jagadeshsahadevan_gofynd_com_66706",
        "user_id": "f6fccadda27e6b365b87c027"
      },
      "slug": "test-attributes",
      "schema": {
        "format": "",
        "range": {},
        "allowed_values": [
          "A",
          "B"
        ],
        "type": "str",
        "multi": true
      },
      "modified_on": "2022-03-24T07:16:59.998000Z",
      "variant": false,
      "created_on": "2022-03-24T07:16:59.998000Z",
      "description": "Hello World",
      "id": "623c1aecb9e8edcfeb8d076a"
    },
    {
      "schema": {
        "allowed_values": [],
        "multi": false,
        "format": "",
        "range": {},
        "type": "str"
      },
      "modified_by": {
        "username": "rockypatro_gofynd_com_32787",
        "user_id": "59ad6a452775bfd63674f0a5"
      },
      "name": "Care Instructions",
      "details": {
        "display_type": "text"
      },
      "created_on": "2022-03-17T14:54:41.251000Z",
      "created_by": {
        "username": "rockypatro_gofynd_com_32787",
        "user_id": "59ad6a452775bfd63674f0a5"
      },
      "description": "Any specific care instruction note or Safety instructions that needs to be followed",
      "variant": false,
      "modified_on": "2022-03-17T14:54:41.251000Z",
      "enabled_for_end_consumer": true,
      "departments": [
        "men-s-fashion"
      ],
      "filters": {
        "indexing": true,
        "priority": 9
      },
      "slug": "care-instructions",
      "id": "62334bb1d6b144588682e1c0"
    },
    {
      "schema": {
        "allowed_values": [
          "Sleeveless",
          "Short",
          "Long"
        ],
        "multi": false,
        "format": "",
        "range": {},
        "type": "str"
      },
      "modified_by": {
        "username": "rockypatro_gofynd_com_32787",
        "user_id": "59ad6a452775bfd63674f0a5"
      },
      "name": "Sleeve Length",
      "details": {
        "display_type": "text"
      },
      "created_on": "2022-03-17T14:53:45.700000Z",
      "created_by": {
        "username": "rockypatro_gofynd_com_32787",
        "user_id": "59ad6a452775bfd63674f0a5"
      },
      "description": "Specify the length of the sleeve. Select the value from the dropdown",
      "variant": false,
      "modified_on": "2022-03-17T14:53:45.700000Z",
      "enabled_for_end_consumer": true,
      "departments": [
        "men-s-fashion"
      ],
      "filters": {
        "indexing": true,
        "priority": 8
      },
      "slug": "sleeve-length",
      "id": "62334b79d6b144588682e1bf"
    },
    {
      "schema": {
        "format": "",
        "range": {},
        "allowed_values": [
          "Solid",
          "Printed",
          "Ripped",
          "Checked"
        ],
        "type": "str",
        "multi": false
      },
      "modified_by": {
        "username": "jagadeshsahadevan_gofynd_com_66706",
        "user_id": "f6fccadda27e6b365b87c027"
      },
      "name": "Pattern",
      "details": {
        "display_type": "text"
      },
      "created_on": "2022-03-17T14:52:12.367000Z",
      "created_by": {
        "username": "rockypatro_gofynd_com_32787",
        "user_id": "59ad6a452775bfd63674f0a5"
      },
      "description": "A repeated form or design on the product, Select the values from the dropdown.",
      "variant": false,
      "modified_on": "2022-03-24T07:23:32.752000Z",
      "enabled_for_end_consumer": true,
      "departments": [
        "men-s-fashion",
        "women-s-fashion"
      ],
      "filters": {
        "priority": 7,
        "indexing": true
      },
      "slug": "pattern",
      "id": "62334b1cd6b144588682e1be"
    },
    {
      "schema": {
        "allowed_values": [],
        "multi": false,
        "format": "",
        "range": {},
        "type": "str"
      },
      "modified_by": {
        "username": "rockypatro_gofynd_com_32787",
        "user_id": "59ad6a452775bfd63674f0a5"
      },
      "name": "Material",
      "details": {
        "display_type": "text"
      },
      "created_on": "2022-03-17T14:50:30.717000Z",
      "created_by": {
        "username": "rockypatro_gofynd_com_32787",
        "user_id": "59ad6a452775bfd63674f0a5"
      },
      "description": "Specify the Material name or Material composition of the product",
      "variant": false,
      "modified_on": "2022-03-17T14:50:30.717000Z",
      "enabled_for_end_consumer": true,
      "departments": [
        "men-s-fashion",
        "beauty-and-personal-care",
        "electronics"
      ],
      "filters": {
        "indexing": true,
        "priority": 6
      },
      "slug": "material",
      "id": "62334ab6d6b144588682e1bd"
    },
    {
      "schema": {
        "allowed_values": [],
        "multi": false,
        "format": "",
        "range": {},
        "type": "str"
      },
      "modified_by": {
        "username": "rockypatro_gofynd_com_32787",
        "user_id": "59ad6a452775bfd63674f0a5"
      },
      "name": "Colour",
      "details": {
        "display_type": "text"
      },
      "created_on": "2022-03-17T14:49:43.160000Z",
      "created_by": {
        "username": "rockypatro_gofynd_com_32787",
        "user_id": "59ad6a452775bfd63674f0a5"
      },
      "description": "Specify the colour of the product, if you have any customized colour name Specify in this column.",
      "variant": false,
      "modified_on": "2022-03-17T14:49:43.160000Z",
      "enabled_for_end_consumer": true,
      "departments": [
        "men-s-fashion",
        "beauty-and-personal-care",
        "electronics"
      ],
      "filters": {
        "indexing": true,
        "priority": 5
      },
      "slug": "colour",
      "id": "62334a87d6b144588682e1bc"
    }
  ]
}
```
</details>









---


#### editProduct
Edit a product.




```swift
platformClient.catalog.editProduct(itemId: itemId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Id of the product to be updated. |  
| body | ProductCreateUpdateSchemaV2 | yes | Request body |


This API allows to edit product.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getProduct
Get a single product.




```swift
platformClient.catalog.getProduct(itemId: itemId, brandUid: brandUid, itemCode: itemCode) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Item Id of the product. |   
| brandUid | Int? | no | Brand Id of the product. |   
| itemCode | String? | no | Item code of the product. |  



This API helps to get data associated to a particular product.

*Returned Response:*




[SingleProductResponse](#SingleProductResponse)

Product object. See example below or refer `product.utils.format_product_response` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "is_image_less_product": false,
    "short_description": "",
    "departments": [
      21
    ],
    "country_of_origin": "India",
    "net_quantity": {},
    "is_set": false,
    "variant_media": {},
    "brand_uid": 3272,
    "item_type": "standard",
    "category_slug": "abayas",
    "media": [
      {
        "type": "image",
        "url": "/x0/products/pictures/item/free/original/Hsw-U3Kut-Test-01.jpeg"
      }
    ],
    "product_publish": {
      "is_set": false,
      "product_online_date": "2023-02-16T09:37:29.620000Z"
    },
    "return_config": {
      "returnable": false,
      "unit": "days",
      "time": 0
    },
    "slug": "test-01-7542894",
    "teaser_tag": {},
    "no_of_boxes": 1,
    "_custom_json": {},
    "is_dependent": false,
    "item_code": "TEST-01",
    "custom_order": {
      "manufacturing_time_unit": "days",
      "is_custom_order": false,
      "manufacturing_time": 0
    },
    "highlights": [],
    "currency": "INR",
    "product_group_tag": [],
    "name": "Test-01",
    "description": "",
    "multi_size": false,
    "tags": [],
    "size_guide": "",
    "template_tag": "ethnicwear",
    "category_uid": 441,
    "variants": {},
    "created_on": "2023-02-16T09:37:31.304000",
    "created_by": {
      "username": "mdnehalahmed_fynd_external_com_90136",
      "user_id": "757bf08ff5dd4ba95f8778cf",
      "super_user": false
    },
    "modified_on": "2023-02-16T09:37:31.304000",
    "modified_by": {
      "username": "mdnehalahmed_fynd_external_com_90136",
      "user_id": "757bf08ff5dd4ba95f8778cf",
      "super_user": false
    },
    "stage": "pending",
    "uid": 7542894,
    "all_company_ids": [
      835
    ],
    "all_identifiers": [
      "TEST-015434"
    ],
    "id": "63edf95bf314486d44a6b361",
    "brand": {
      "name": null,
      "logo": {
        "aspect_ratio": "1:1",
        "aspect_ratio_f": 1,
        "url": "",
        "secure_url": ""
      },
      "uid": 3272
    },
    "sizes": [
      {
        "price_transfer": 0,
        "is_set": false,
        "item_dimensions_unit_of_measure": "cm",
        "item_weight_unit_of_measure": "gram",
        "item_width": 10,
        "item_length": 10,
        "size": "OS",
        "price_effective": 10,
        "identifiers": [
          {
            "gtin_value": "TEST-015434",
            "primary": true,
            "gtin_type": "ean"
          }
        ],
        "price": 10,
        "item_weight": 10,
        "seller_identifier": "TEST-015434",
        "track_inventory": true,
        "item_height": 10,
        "_custom_json": {},
        "item_code": "TEST-01",
        "company_id": 835,
        "currency": "INR",
        "modified_on": "2023-02-16T09:37:31.352000",
        "brand_uid": 3272,
        "created_on": "2023-02-16T09:37:31.352000",
        "id": "63edf95bf314486d44a6b364"
      }
    ],
    "is_expirable": false,
    "is_active": true,
    "trader": [
      {
        "type": "Manufacturer",
        "address": [
          "fdgh"
        ],
        "name": "fgt"
      }
    ],
    "tax_identifier": {
      "hsn_code_id": "63d78f483c1714abdd406766",
      "reporting_hsn": "97211110H1",
      "hsn_code": "97211110"
    },
    "category": {
      "l3": {
        "name": "Abayas",
        "uid": 441,
        "slug": "abayas"
      },
      "l1": {
        "uid": 443,
        "name": "Ethnic Wear",
        "slug": "ethnic-wear"
      },
      "l2": {
        "uid": 414,
        "name": "Hijabs & Abayas",
        "slug": "hijabs-abayas"
      }
    },
    "attributes": {
      "marketer-address": "dfg",
      "primary_color": "Black",
      "essential": "No",
      "pattern": "Printed",
      "primary_material": "Cotton Blend",
      "marketer-name": "gfdfd",
      "gender": [
        "Men"
      ]
    }
  }
}
```
</details>









---


#### deleteProduct
Delete a product.




```swift
platformClient.catalog.deleteProduct(itemId: itemId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Id of the product to be updated. |  



This API allows to delete product.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### allSizes
All Sizes for a given Product




```swift
platformClient.catalog.allSizes(itemId: itemId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Id of the product to be updated. |  



This API allows to get  All Sizes for a given Product.

*Returned Response:*




[GetAllSizes](#GetAllSizes)

List Product Sizes. See example below or refer `AllSizes` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "all_sizes": [
    {
      "size": "OS",
      "identifiers": [
        {
          "primary": true,
          "gtin_type": "ean",
          "gtin_value": "74352323423"
        }
      ],
      "item_length": 1000,
      "item_weight": 100,
      "item_height": 100,
      "item_width": 1000,
      "item_weight_unit_of_measure": "gram",
      "item_dimensions_unit_of_measure": "cm"
    }
  ]
}
```
</details>









---


#### getProductValidation
Validate product/size data




```swift
platformClient.catalog.getProductValidation() { (response, error) in
    // Use response
}
```






This API validates product data.

*Returned Response:*




[ValidateProduct](#ValidateProduct)

Validate Meta. See example below for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "valid": true
}
```
</details>









---


#### getProductSize
Get a single product size.




```swift
platformClient.catalog.getProductSize(itemCode: itemCode, itemId: itemId, brandUid: brandUid, uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemCode | String? | no | Item code of the product size. |   
| itemId | Int | yes | Item Id of the product size. |   
| brandUid | Int? | no | Brand Id of the product size. |   
| uid | Int? | no | Id of the product size. |  



This API helps to get data associated to a particular product size.

*Returned Response:*




[ProductListingResponse](#ProductListingResponse)

Product object. See example below for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "name": "SQUADMTGIVESPACE",
  "country_of_origin": "India",
  "highlights": null,
  "hsn_code": "61099090",
  "item_code": "ACTESTCREATELISTING1",
  "is_set": false,
  "description": "",
  "currency": "INR",
  "slug": "play-clan-squadmtgivespace-857587-e928b0",
  "template_tag": "topwear",
  "is_active": false,
  "departments": [
    1
  ],
  "uid": 857587,
  "all_sizes": [
    "3XL"
  ],
  "category_slug": "t-shirts",
  "company_id": 61,
  "media": [],
  "size_guide": "play-clan-men-casual-tees",
  "is_dependent": false,
  "item_type": "standard",
  "multi_size": true,
  "product_publish": {
    "is_set": false,
    "product_online_date": 1595478043
  },
  "id": "5f19101b99ee0500011dc896",
  "brand": {
    "name": "play clan",
    "logo": {
      "aspect_ratio": "1:1",
      "aspect_ratio_f": 1,
      "url": "https://hdn-1.fynd.com/brands/pictures/square-logo/50x0/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg",
      "secure_url": "https://hdn-1.fynd.com/brands/pictures/square-logo/50x0/zjt4-wU8Lk-VQYu0pcokb-r6yteuannoorjkq9f4tk.jpg"
    },
    "uid": 85
  },
  "images": [],
  "sizes": [
    {
      "price_transfer": 0,
      "price_effective": 10000,
      "price": 10000,
      "currency": "INR",
      "is_set": false,
      "size": "3XL",
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "ACTESTCREATELISTING1_3XL",
          "primary": true
        }
      ]
    }
  ],
  "attributes": {
    "essential": "Yes",
    "color": "Red",
    "gender": [
      "Men"
    ],
    "material": "cotton",
    "pattern": "Printed",
    "product_fit": "Regular",
    "sleeve_length": "Short",
    "neck_type": "Round Neck",
    "primary_color": "Red",
    "primary_material": "Others",
    "l3_mapping": [
      "men>casual_tees",
      "women>casual_tees",
      "girls>casual_tees",
      "more>casual_tees"
    ],
    "image_nature": "standard",
    "meta_nature": "standard",
    "created_on": "2020-07-23T04:20:43.810000Z",
    "created_by": {
      "username": "silverbolt",
      "user_id": "-1",
      "company_id": 1181
    },
    "modified_on": "2020-07-23T04:20:44.185000Z",
    "modified_by": {
      "username": "silverbolt",
      "user_id": "-1",
      "company_id": 61
    },
    "stage": "verified",
    "verified_by": {
      "username": "Silverbolt",
      "user_id": "0"
    },
    "verified_on": 1595478044,
    "is_image_less_product": false
  }
}
```
</details>









---


#### getProductBulkUploadHistory
Get a list of all bulk product upload jobs.




```swift
platformClient.catalog.getProductBulkUploadHistory(search: search, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| search | String? | no | Search string to filter the results by batch id |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



This API helps to get bulk product upload jobs data.

*Returned Response:*




[ProductBulkRequestList](#ProductBulkRequestList)

List of bulk product upload jobs. See `BulkRequestGetSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "stage": "completed",
      "company_id": 61,
      "is_active": true,
      "cancelled_records": [],
      "failed": 0,
      "template_tag": "footwear",
      "modified_on": "2021-03-12T08:11:08.646000Z",
      "created_on": "2021-03-12T08:11:06.848000Z",
      "failed_records": [],
      "created_by": {
        "username": "yadavanuja039_gmail_com_82948",
        "user_id": "23218433",
        "full_name": "Anuja Yadav"
      },
      "total": 1,
      "file_path": "https://hdn-1.fynd.com/company/61/self/documents/product-import/free/original/mkX5ApRmw-sample_bulk_products_footwear.xlsx",
      "succeed": 1,
      "modified_by": {
        "username": "Silverbolt",
        "user_id": "0"
      },
      "cancelled": 0,
      "template": {
        "name": "Footwear",
        "banner": "https://hdn-1.fynd.com/seller/pictures/landscape-banner/original/nFPtXR_Beauty_&_Personal_Care_L.jpgf30455a5-d265-4382-b513-65afb9240320/nFPtXR_Beauty_and_Personal_Care_L.jpg",
        "slug": "footwear",
        "logo": "https://hdn-1.fynd.com/seller/pictures/logo/original/9Y2UEp_ssssss.jpg7359e4c6-4c53-4dbe-a920-ef8ac658afb1/9Y2UEp_ssssss.jpg",
        "departments": [
          "men",
          "women",
          "kids",
          "fashion"
        ],
        "description": "Footwear is a garment worn on the feet to protect against environmental adversities like heat or ground textures. Example: Sports Shoes"
      },
      "id": "604b221a73bfa20001cb00e8"
    }
  ],
  "page": {
    "current": 1,
    "size": 26,
    "has_previous": false,
    "has_next": true,
    "item_total": 251
  }
}
```
</details>









---


#### createBulkProductUploadJob
Create a Bulk product to upload job.




```swift
platformClient.catalog.createBulkProductUploadJob(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BulkJob | yes | Request body |


This API helps to create a bulk products upload job.

*Returned Response:*




[BulkResponse](#BulkResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "batch_id": "507f1f77bcf86cd799439011"
}
```
</details>









---


#### uploadBulkProducts
Create a Bulk product to upload job.




```swift
platformClient.catalog.uploadBulkProducts(department: department, productType: productType, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| department | String | yes | Department of the product to be uploaded. |   
| productType | String | yes | Product type of the product to be uploaded i.e. set, standard , digital. |  
| body | BulkJob | yes | Request body |


This API helps to create a bulk products upload job.

*Returned Response:*




[BulkResponse](#BulkResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "batch_id": "507f1f77bcf86cd799439011"
}
```
</details>









---


#### deleteProductBulkJob
Delete Bulk product job.




```swift
platformClient.catalog.deleteProductBulkJob(batchId: batchId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| batchId | Int | yes | Batch Id of the bulk product job to be deleted. |  



This API allows to delete bulk product job associated with company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### createProductsInBulk
Create products in bulk associated with given batch Id.




```swift
platformClient.catalog.createProductsInBulk(batchId: batchId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| batchId | String | yes | Batch Id in which assets to be uploaded. |  
| body | BulkProductRequest | yes | Request body |


This API helps to create products in bulk push to kafka for approval/creation.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getProductTags
Get a list of all tags associated with company.




```swift
platformClient.catalog.getProductTags() { (response, error) in
    // Use response
}
```






This API helps to get tags data associated to a particular company.

*Returned Response:*




[ProductTagsViewResponse](#ProductTagsViewResponse)

Tag List. See example below for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    "demo",
    "custom"
  ]
}
```
</details>









---


#### getProductAssetsInBulk
Get a list of all bulk asset jobs.




```swift
platformClient.catalog.getProductAssetsInBulk(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



This API helps to get bulk asset jobs data associated to a particular company.

*Returned Response:*




[BulkAssetResponse](#BulkAssetResponse)

List of bulk asset jobs List. See `BulkUtil.modify_batch_response` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "created_on": "2021-02-25T16:45:22.425000Z",
      "file_path": "https://hdn-1.fynd.com/company/61/self/documents/product-import/free/original/ZUSmmXHmZ-U8mTYx3KR-Nike-hoddie.zip",
      "succeed": 1,
      "cancelled_records": [],
      "failed": 0,
      "failed_records": [],
      "stage": "completed",
      "is_active": true,
      "modified_by": {
        "user_id": "23175373",
        "username": "nikhilmhatre_gofynd_com_28085_23175373"
      },
      "modified_on": "2021-02-25T16:47:24.551000Z",
      "retry": 1,
      "total": 1,
      "company_id": 61,
      "created_by": {
        "user_id": "23175373",
        "username": "nikhilmhatre_gofynd_com_28085_23175373",
        "full_name": "nikhil mhatre"
      },
      "cancelled": 0,
      "tracking_url": "https://api.fynd.com/common/assets/v1/asset/status/extract-zips/3296",
      "id": "6037d422aa879600015c6d1d"
    }
  ],
  "page": {
    "current": 1,
    "size": 3,
    "has_previous": false,
    "has_next": false,
    "item_total": 1
  }
}
```
</details>









---


#### createProductAssetsInBulk
Create a Bulk asset upload Job.




```swift
platformClient.catalog.createProductAssetsInBulk(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | ProductBulkAssets | yes | Request body |


This API helps to create a bulk asset upload job.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### deleteSize
Delete a Size associated with product.




```swift
platformClient.catalog.deleteSize(itemId: itemId, size: size) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Item Id of the product associated with size to be deleted. |   
| size | String | yes | size to be deleted. |  



This API allows to delete size associated with product.

*Returned Response:*




[ProductSizeDeleteResponse](#ProductSizeDeleteResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true,
  "data": {
    "item_id": 114,
    "size": 3,
    "company_id": 1
  }
}
```
</details>









---


#### getInventoryBySize
Get Inventory for company




```swift
platformClient.catalog.getInventoryBySize(itemId: itemId, size: size, pageNo: pageNo, pageSize: pageSize, q: q, sellable: sellable) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Item code of the product of which size is to be get. |   
| size | String | yes | Size of which inventory is to get. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| q | String? | no | Search with help of store code. |   
| sellable | Bool? | no | Filter on whether product is in stock or not. |  



This API allows get Inventory data for particular company grouped by size and store.

*Returned Response:*




[InventoryResponsePaginated](#InventoryResponsePaginated)

returns a list of all inventory grouped by size and store




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "store": {
        "name": "yosss sdd dsdyo",
        "store_code": "sanic6sdfsf7",
        "uid": 59,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "A/204, SAI VANDAN, NARAYAN NAGAR, TULINJ ROAD",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              72.8231511,
              19.4232024
            ]
          },
          "address2": "",
          "pincode": 401209,
          "country": "INDIA",
          "city": "MUMBAI",
          "landmark": ""
        },
        "manager": {
          "name": "abc",
          "email": "a@b.com",
          "mobile_no": {
            "number": "2382634324",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "59_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-04-06T03:30:01.487000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 10,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 10,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "Saran Ledonne",
        "store_code": "af6198fe-2c23-4441-bbf4-e694c96e255c",
        "uid": 10,
        "address": {
          "state": "MAHA",
          "address1": "NO",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              1,
              1
            ]
          },
          "address2": "",
          "pincode": 400072,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "abc",
          "email": "rehman@cashkart.com",
          "mobile_no": {
            "number": "9167943983",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "10_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-04-06T03:29:35.291000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 10,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 10,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "ABC-1-17",
        "store_code": "ABC-1-17",
        "uid": 11061,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "14/1, VINOBHA BHAVE NAGAR",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              1,
              1
            ]
          },
          "address2": "VINOBHA BHAVE NAGAR, KURLA WEST, KURLA, ",
          "pincode": 400070,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "Fahim",
          "email": "fahimsakri@gofynd.com",
          "mobile_no": {
            "number": "9594495254",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "11061_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-03-17T12:35:29.992000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 10000000,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 10000000,
      "order_committed_quantity": 0,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "RRL01",
        "store_code": "WH_8513",
        "uid": 1,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED 1ST FLOOR WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR,",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              72.8691788,
              19.1174114
            ]
          },
          "address2": "KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTRA 400069",
          "pincode": 400059,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "ASHISH CHANDORKAR",
          "email": "ASHISHCHANDORKAR@FYND.COM",
          "mobile_no": {
            "number": "8369782851",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "1_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-03-31T19:00:10.943000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 39,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 18,
      "order_committed_quantity": 7,
      "not_available_quantity": 0,
      "damaged_quantity": 0,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "RRL01",
        "store_code": "WH_8513",
        "uid": 1,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED 1ST FLOOR WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR,",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              72.8691788,
              19.1174114
            ]
          },
          "address2": "KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTRA 400069",
          "pincode": 400059,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "ASHISH CHANDORKAR",
          "email": "ASHISHCHANDORKAR@FYND.COM",
          "mobile_no": {
            "number": "8369782851",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "1_rtyuidsdfv",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2020-07-07T10:37:06.146000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 39,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 0,
      "order_committed_quantity": 39,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 1,
    "item_total": 5,
    "has_previous": false,
    "has_next": false
  }
}
```
</details>









---


#### addInventory
Add Inventory for particular size and store.




```swift
platformClient.catalog.addInventory(itemId: itemId, size: size, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Item code of the product of which size is to be get. |   
| size | String | yes | Size in which inventory is to be added. |  
| body | InventoryRequest | yes | Request body |


This API allows add Inventory for particular size and store.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getInventoryBySizeIdentifier
Get Inventory for company




```swift
platformClient.catalog.getInventoryBySizeIdentifier(itemId: itemId, sizeIdentifier: sizeIdentifier, pageNo: pageNo, pageSize: pageSize, q: q, locationIds: locationIds) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Item code of the product of which size is to be get. |   
| sizeIdentifier | String | yes | Size Identifier (Seller Identifier or Primary Identifier) of which inventory is to get. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| q | String? | no | Search with help of store code. |   
| locationIds | [Int]? | no | Search by store ids. |  



This API allows get Inventory data for particular company grouped by size and store.

*Returned Response:*




[InventorySellerIdentifierResponsePaginated](#InventorySellerIdentifierResponsePaginated)

returns a list of all inventory grouped by size and store




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "store": {
        "name": "yosss sdd dsdyo",
        "store_code": "sanic6sdfsf7",
        "uid": 59,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "A/204, SAI VANDAN, NARAYAN NAGAR, TULINJ ROAD",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              72.8231511,
              19.4232024
            ]
          },
          "address2": "",
          "pincode": 401209,
          "country": "INDIA",
          "city": "MUMBAI",
          "landmark": ""
        },
        "manager": {
          "name": "abc",
          "email": "a@b.com",
          "mobile_no": {
            "number": "2382634324",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "59_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-04-06T03:30:01.487000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 10,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 10,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "Saran Ledonne",
        "store_code": "af6198fe-2c23-4441-bbf4-e694c96e255c",
        "uid": 10,
        "address": {
          "state": "MAHA",
          "address1": "NO",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              1,
              1
            ]
          },
          "address2": "",
          "pincode": 400072,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "abc",
          "email": "rehman@cashkart.com",
          "mobile_no": {
            "number": "9167943983",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "10_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-04-06T03:29:35.291000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 10,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 10,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "ABC-1-17",
        "store_code": "ABC-1-17",
        "uid": 11061,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "14/1, VINOBHA BHAVE NAGAR",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              1,
              1
            ]
          },
          "address2": "VINOBHA BHAVE NAGAR, KURLA WEST, KURLA, ",
          "pincode": 400070,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "Fahim",
          "email": "fahimsakri@gofynd.com",
          "mobile_no": {
            "number": "9594495254",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "11061_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-03-17T12:35:29.992000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 10000000,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 10000000,
      "order_committed_quantity": 0,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "RRL01",
        "store_code": "WH_8513",
        "uid": 1,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED 1ST FLOOR WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR,",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              72.8691788,
              19.1174114
            ]
          },
          "address2": "KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTRA 400069",
          "pincode": 400059,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "ASHISH CHANDORKAR",
          "email": "ASHISHCHANDORKAR@FYND.COM",
          "mobile_no": {
            "number": "8369782851",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "1_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-03-31T19:00:10.943000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 39,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 18,
      "order_committed_quantity": 7,
      "not_available_quantity": 0,
      "damaged_quantity": 0,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "RRL01",
        "store_code": "WH_8513",
        "uid": 1,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED 1ST FLOOR WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR,",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              72.8691788,
              19.1174114
            ]
          },
          "address2": "KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTRA 400069",
          "pincode": 400059,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "ASHISH CHANDORKAR",
          "email": "ASHISHCHANDORKAR@FYND.COM",
          "mobile_no": {
            "number": "8369782851",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "1_rtyuidsdfv",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2020-07-07T10:37:06.146000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 39,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 0,
      "order_committed_quantity": 39,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 1,
    "item_total": 5,
    "has_previous": false,
    "has_next": false
  }
}
```
</details>









---


#### getInventories
Get Inventory for company




```swift
platformClient.catalog.getInventories(itemId: itemId, size: size, pageNo: pageNo, pageSize: pageSize, q: q, sellable: sellable, storeIds: storeIds, sizeIdentifier: sizeIdentifier) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | String? | no | Item code of the product of which size is to be get. |   
| size | String? | no | Size of which inventory is to get. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| q | String? | no | Search with help of store code. |   
| sellable | Bool? | no | Filter on whether product is in stock or not. |   
| storeIds | [Int]? | no | The Store Id of products to fetch inventory. |   
| sizeIdentifier | String? | no | Size Identifier (Seller Identifier or Primary Identifier) of which inventory is to get. |  



This API allows get Inventories data for particular company.

*Returned Response:*




[GetInventoriesResponse](#GetInventoriesResponse)

returns a list of all inventory grouped by size and store




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "is_set": false,
      "size": "S",
      "trader": [
        {
          "type": "Importer",
          "name": "Imported & Marketed by Brooks Brothers India Pvt.Ltd",
          "address": [
            "Brooks Brothers India Private Limited registered address is 8th Floor, Maker Tower 'E' Cuffe Parade Mumbai MH 400005 IN"
          ]
        }
      ],
      "weight": {
        "shipping": 999,
        "unit": "gram"
      },
      "date_meta": {
        "modified_on": "2023-01-20T07:26:18.828000",
        "added_on_store": "2023-01-20T07:26:18.834000",
        "created_on": "2023-01-20T07:26:18.828000",
        "inventory_updated_on": "2023-01-20T07:26:18.828000"
      },
      "created_by": {
        "user_id": "68c3800d602c0fda0dab4fea",
        "username": "abhishekbhakurlekar_gofynd_com_63787"
      },
      "modified_by": {
        "user_id": "68c3800d602c0fda0dab4fea",
        "username": "abhishekbhakurlekar_gofynd_com_63787"
      },
      "brand": {
        "id": 355
      },
      "price": {
        "marked": 8000,
        "transfer": 0,
        "currency": "INR",
        "effective": 8000
      },
      "total_quantity": 12,
      "quantities": {
        "sellable": {
          "count": 12
        }
      },
      "stage": "verified",
      "seller_identifier": "410163085004",
      "expiration_date": "9998-01-30T23:59:00",
      "manufacturer": {
        "name": "RELIANCE BRANDS LIMITED",
        "is_default": true,
        "address": "5TH FLOOR, COURT HOUSE,LOKMANYA TILAK MARGA, DHOBI TALAOMUMBAI MAHARASHTRA, , MAHARASHTRA, MUMBAI"
      },
      "id": "63ca421a6fb0ce930685f46e",
      "country_of_origin": "Malaysia",
      "identifier": {
        "upc": "777697046",
        "alu": "410163085004"
      },
      "return_config": {
        "unit": "days",
        "returnable": true,
        "time": 30
      },
      "trace_id": "inventory.bb475064-9893-11ed-88db-2efc0f0504bd",
      "uid": "10444_410163085004",
      "platforms": {
        "fynd": false,
        "uniket_wholesale": false
      },
      "store": {
        "store_code": "THR1",
        "store_type": "high_street",
        "uid": 10444,
        "name": "Khan Market"
      },
      "company": {
        "id": 46
      },
      "tax_identifier": {
        "hsn_code_id": "000000000000000000000001"
      },
      "dimension": {
        "unit": "cm",
        "width": 15,
        "length": 25,
        "height": 10
      },
      "track_inventory": true
    },
    {
      "is_set": false,
      "size": "M",
      "trader": [
        {
          "type": "Importer",
          "name": "Imported & Marketed by Brooks Brothers India Pvt.Ltd",
          "address": [
            "Brooks Brothers India Private Limited registered address is 8th Floor, Maker Tower 'E' Cuffe Parade Mumbai MH 400005 IN"
          ]
        }
      ],
      "weight": {
        "shipping": 999,
        "unit": "gram"
      },
      "date_meta": {
        "modified_on": "2023-01-16T05:25:49.482000",
        "added_on_store": "2023-01-16T05:25:49.491000",
        "created_on": "2023-01-16T05:25:49.482000",
        "inventory_updated_on": "2023-01-16T05:25:49.482000"
      },
      "created_by": {
        "user_id": "68c3800d602c0fda0dab4fea",
        "username": "abhishekbhakurlekar_gofynd_com_63787"
      },
      "modified_by": {
        "user_id": "68c3800d602c0fda0dab4fea",
        "username": "abhishekbhakurlekar_gofynd_com_63787"
      },
      "brand": {
        "id": 355
      },
      "price": {
        "marked": 8000,
        "transfer": 0,
        "currency": "INR",
        "effective": 8000
      },
      "total_quantity": 12,
      "quantities": {
        "sellable": {
          "count": 12
        }
      },
      "stage": "verified",
      "seller_identifier": "410163085005",
      "expiration_date": "9998-01-30T23:59:00",
      "manufacturer": {
        "name": "RELIANCE BRANDS LIMITED",
        "is_default": true,
        "address": "5TH FLOOR, COURT HOUSE,LOKMANYA TILAK MARGA, DHOBI TALAOMUMBAI MAHARASHTRA, , MAHARASHTRA, MUMBAI"
      },
      "id": "63c4dfdd11e44ffd96d600bc",
      "country_of_origin": "Malaysia",
      "identifier": {
        "upc": "777697038",
        "alu": "410163085005"
      },
      "return_config": {
        "unit": "days",
        "returnable": true,
        "time": 30
      },
      "trace_id": "inventory.3c9a25e4-955e-11ed-8584-92a07e366903",
      "uid": "10444_410163085005",
      "platforms": {
        "fynd": false,
        "uniket_wholesale": false
      },
      "store": {
        "store_code": "THR1",
        "store_type": "high_street",
        "uid": 10444,
        "name": "Khan Market"
      },
      "company": {
        "id": 46
      },
      "tax_identifier": {
        "hsn_code_id": "000000000000000000000001"
      },
      "dimension": {
        "unit": "cm",
        "width": 15,
        "length": 25,
        "height": 10
      },
      "track_inventory": true
    },
    {
      "is_set": false,
      "size": "S",
      "trader": [
        {
          "type": "Importer",
          "name": "Imported & Marketed by Brooks Brothers India Pvt.Ltd",
          "address": [
            "Brooks Brothers India Private Limited registered address is 8th Floor, Maker Tower 'E' Cuffe Parade Mumbai MH 400005 IN"
          ]
        }
      ],
      "weight": {
        "shipping": 999,
        "unit": "gram"
      },
      "date_meta": {
        "modified_on": "2023-01-19T10:37:00.504000",
        "added_on_store": "2023-01-05T10:45:41.988000",
        "created_on": "2023-01-05T10:45:41.979000",
        "inventory_updated_on": "2023-01-19T10:37:00.504000"
      },
      "created_by": {
        "user_id": "bc5fbaf5e6f4b5288e9a9a22",
        "username": "sagardhiman_gofynd_com_43846"
      },
      "modified_by": {
        "user_id": "68c3800d602c0fda0dab4fea",
        "username": "abhishekbhakurlekar_gofynd_com_63787"
      },
      "brand": {
        "id": 355
      },
      "price": {
        "marked": 8000,
        "transfer": 0,
        "currency": "INR",
        "effective": 7001
      },
      "total_quantity": 5001,
      "quantities": {
        "not_available": {
          "count": 0
        },
        "damaged": {
          "count": 0
        },
        "sellable": {
          "count": 5001
        }
      },
      "stage": "verified",
      "seller_identifier": "410163085004",
      "expiration_date": "9998-01-30T23:59:00",
      "manufacturer": {
        "name": "RELIANCE BRANDS LIMITED",
        "is_default": true,
        "address": "5TH FLOOR, COURT HOUSE,LOKMANYA TILAK MARGA, DHOBI TALAOMUMBAI MAHARASHTRA, , MAHARASHTRA, MUMBAI"
      },
      "id": "63b6aa5558bf3ed100740c10",
      "country_of_origin": "Malaysia",
      "identifier": {
        "upc": "777697046",
        "alu": "410163085004"
      },
      "return_config": {
        "unit": "days",
        "returnable": true,
        "time": 30
      },
      "trace_id": "inventory.3485e8b4-97e5-11ed-a9d9-5eca1fff6de0",
      "uid": "11336_410163085004",
      "platforms": {
        "fynd": false,
        "uniket_wholesale": false
      },
      "store": {
        "store_code": "R591",
        "store_type": "warehouse",
        "uid": 11336,
        "name": "Reliance 2"
      },
      "company": {
        "id": 46
      },
      "tax_identifier": {
        "hsn_code_id": "000000000000000000000001"
      },
      "dimension": {
        "unit": "cm",
        "width": 15,
        "length": 25,
        "height": 10
      },
      "track_inventory": true
    },
    {
      "is_set": false,
      "size": "XXL",
      "trader": [
        {
          "type": "Importer",
          "name": "Imported & Marketed by Brooks Brothers India Pvt.Ltd",
          "address": [
            "Brooks Brothers India Private Limited registered address is 8th Floor, Maker Tower 'E' Cuffe Parade Mumbai MH 400005 IN"
          ]
        }
      ],
      "weight": {
        "shipping": 999,
        "unit": "gram"
      },
      "date_meta": {
        "modified_on": "2022-11-29T11:18:35.183000",
        "added_on_store": "2022-11-29T11:17:42.271000",
        "created_on": "2022-11-29T11:17:42.263000",
        "inventory_updated_on": "2022-11-29T11:18:35.183000"
      },
      "created_by": {
        "user_id": "5f200182ee4d3377e83330c2",
        "username": "meghanakate_gofynd_com_58351"
      },
      "modified_by": {
        "user_id": "5f200182ee4d3377e83330c2",
        "username": "meghanakate_gofynd_com_58351"
      },
      "brand": {
        "id": 355
      },
      "price": {
        "marked": 8000,
        "transfer": 0,
        "currency": "INR",
        "effective": 8000
      },
      "total_quantity": 1000,
      "quantities": {
        "not_available": {
          "count": 0
        },
        "damaged": {
          "count": 0
        },
        "sellable": {
          "count": 1000
        }
      },
      "stage": "verified",
      "seller_identifier": "410163085001",
      "expiration_date": "9998-01-30T23:59:00",
      "manufacturer": {
        "name": "RELIANCE BRANDS LIMITED",
        "is_default": true,
        "address": "5TH FLOOR, COURT HOUSE,LOKMANYA TILAK MARGA, DHOBI TALAOMUMBAI MAHARASHTRA, , MAHARASHTRA, MUMBAI"
      },
      "id": "6385ea569715e74d8a92ce88",
      "country_of_origin": "Malaysia",
      "identifier": {
        "upc": "777697079",
        "alu": "410163085001"
      },
      "return_config": {
        "unit": "days",
        "returnable": true,
        "time": 30
      },
      "uid": "11701_410163085001",
      "platforms": {
        "fynd": false,
        "uniket_wholesale": false
      },
      "store": {
        "store_code": "SRT91",
        "store_type": "warehouse",
        "uid": 11701,
        "name": "Shopsense Retail Technologies"
      },
      "company": {
        "id": 46
      },
      "tax_identifier": {
        "hsn_code_id": "000000000000000000000001"
      },
      "dimension": {
        "unit": "cm",
        "width": 15,
        "length": 25,
        "height": 10
      },
      "track_inventory": true
    },
    {
      "is_set": false,
      "size": "XL",
      "trader": [
        {
          "type": "Importer",
          "name": "Imported & Marketed by Brooks Brothers India Pvt.Ltd",
          "address": [
            "Brooks Brothers India Private Limited registered address is 8th Floor, Maker Tower 'E' Cuffe Parade Mumbai MH 400005 IN"
          ]
        }
      ],
      "weight": {
        "shipping": 999,
        "unit": "gram"
      },
      "date_meta": {
        "modified_on": "2022-11-29T11:18:27.331000",
        "added_on_store": "2022-11-29T11:17:34.431000",
        "created_on": "2022-11-29T11:17:34.424000",
        "inventory_updated_on": "2022-11-29T11:18:27.331000"
      },
      "created_by": {
        "user_id": "5f200182ee4d3377e83330c2",
        "username": "meghanakate_gofynd_com_58351"
      },
      "modified_by": {
        "user_id": "5f200182ee4d3377e83330c2",
        "username": "meghanakate_gofynd_com_58351"
      },
      "brand": {
        "id": 355
      },
      "price": {
        "marked": 8000,
        "transfer": 0,
        "currency": "INR",
        "effective": 8000
      },
      "total_quantity": 1000,
      "quantities": {
        "not_available": {
          "count": 0
        },
        "damaged": {
          "count": 0
        },
        "sellable": {
          "count": 1000
        }
      },
      "stage": "verified",
      "seller_identifier": "410163085003",
      "expiration_date": "9998-01-30T23:59:00",
      "manufacturer": {
        "name": "RELIANCE BRANDS LIMITED",
        "is_default": true,
        "address": "5TH FLOOR, COURT HOUSE,LOKMANYA TILAK MARGA, DHOBI TALAOMUMBAI MAHARASHTRA, , MAHARASHTRA, MUMBAI"
      },
      "id": "6385ea4e9715e74d8a92ce86",
      "country_of_origin": "Malaysia",
      "identifier": {
        "upc": "777697053",
        "alu": "410163085003"
      },
      "return_config": {
        "unit": "days",
        "returnable": true,
        "time": 30
      },
      "uid": "11701_410163085003",
      "platforms": {
        "fynd": false,
        "uniket_wholesale": false
      },
      "store": {
        "store_code": "SRT91",
        "store_type": "warehouse",
        "uid": 11701,
        "name": "Shopsense Retail Technologies"
      },
      "company": {
        "id": 46
      },
      "tax_identifier": {
        "hsn_code_id": "000000000000000000000001"
      },
      "dimension": {
        "unit": "cm",
        "width": 15,
        "length": 25,
        "height": 10
      },
      "track_inventory": true
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 1,
    "item_total": 5,
    "has_previous": false,
    "has_next": false
  }
}
```
</details>









---


#### getDiscountedInventoryBySizeIdentifier
Get Inventory for company




```swift
platformClient.application("<APPLICATION_ID>").catalog.getDiscountedInventoryBySizeIdentifier(itemId: itemId, sizeIdentifier: sizeIdentifier, pageNo: pageNo, pageSize: pageSize, q: q, locationIds: locationIds) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Item code of the product of which size is to be get. |   
| sizeIdentifier | String | yes | Size Identifier (Seller Identifier or Primary Identifier) of which inventory is to get. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| q | String? | no | Search with help of store code. |   
| locationIds | [Int]? | no | Search by store ids. |  



This API allows get Inventory data for particular company grouped by size and store.

*Returned Response:*




[InventorySellerIdentifierResponsePaginated](#InventorySellerIdentifierResponsePaginated)

returns a list of all inventory grouped by size and store




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "store": {
        "name": "yosss sdd dsdyo",
        "store_code": "sanic6sdfsf7",
        "uid": 59,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "A/204, SAI VANDAN, NARAYAN NAGAR, TULINJ ROAD",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              72.8231511,
              19.4232024
            ]
          },
          "address2": "",
          "pincode": 401209,
          "country": "INDIA",
          "city": "MUMBAI",
          "landmark": ""
        },
        "manager": {
          "name": "abc",
          "email": "a@b.com",
          "mobile_no": {
            "number": "2382634324",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "59_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-04-06T03:30:01.487000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 10,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 10,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "Saran Ledonne",
        "store_code": "af6198fe-2c23-4441-bbf4-e694c96e255c",
        "uid": 10,
        "address": {
          "state": "MAHA",
          "address1": "NO",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              1,
              1
            ]
          },
          "address2": "",
          "pincode": 400072,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "abc",
          "email": "rehman@cashkart.com",
          "mobile_no": {
            "number": "9167943983",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "10_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-04-06T03:29:35.291000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 10,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 10,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "ABC-1-17",
        "store_code": "ABC-1-17",
        "uid": 11061,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "14/1, VINOBHA BHAVE NAGAR",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              1,
              1
            ]
          },
          "address2": "VINOBHA BHAVE NAGAR, KURLA WEST, KURLA, ",
          "pincode": 400070,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "Fahim",
          "email": "fahimsakri@gofynd.com",
          "mobile_no": {
            "number": "9594495254",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "11061_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-03-17T12:35:29.992000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 10000000,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 10000000,
      "order_committed_quantity": 0,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "RRL01",
        "store_code": "WH_8513",
        "uid": 1,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED 1ST FLOOR WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR,",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              72.8691788,
              19.1174114
            ]
          },
          "address2": "KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTRA 400069",
          "pincode": 400059,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "ASHISH CHANDORKAR",
          "email": "ASHISHCHANDORKAR@FYND.COM",
          "mobile_no": {
            "number": "8369782851",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "1_RTYUIDSDFV",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2021-03-31T19:00:10.943000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 39,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 18,
      "order_committed_quantity": 7,
      "not_available_quantity": 0,
      "damaged_quantity": 0,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    },
    {
      "store": {
        "name": "RRL01",
        "store_code": "WH_8513",
        "uid": 1,
        "address": {
          "state": "MAHARASHTRA",
          "address1": "SHOPSENSE RETAIL TECHNOLOGIES PRIVATE LIMITED 1ST FLOOR WEWORK VIJAY DIAMOND, CROSS RD B, AJIT NAGAR,",
          "lat_long": {
            "type": "Point",
            "coordinates": [
              72.8691788,
              19.1174114
            ]
          },
          "address2": "KONDIVITA, ANDHERI EAST, MUMBAI, MAHARASHTRA 400069",
          "pincode": 400059,
          "country": "INDIA",
          "city": "MUMBAI"
        },
        "manager": {
          "name": "ASHISH CHANDORKAR",
          "email": "ASHISHCHANDORKAR@FYND.COM",
          "mobile_no": {
            "number": "8369782851",
            "country_code": 91
          }
        },
        "integration_type": {
          "order": "browntape",
          "inventory": "browntape"
        },
        "_custom_json": {}
      },
      "uid": "1_rtyuidsdfv",
      "size": "AAX1 (1 PCS)",
      "inventory_updated_on": "2020-07-07T10:37:06.146000",
      "seller_identifier": "RTYUIDSDFV",
      "item_id": 7500651,
      "quantity": 39,
      "price": 1234,
      "price_effective": 1234,
      "price_transfer": 0,
      "currency": "INR",
      "sellable_quantity": 0,
      "order_committed_quantity": 39,
      "identifiers": [
        {
          "gtin_type": "sku_code",
          "gtin_value": "RTYUIDSDFV",
          "primary": true
        }
      ]
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 1,
    "item_total": 5,
    "has_previous": false,
    "has_next": false
  }
}
```
</details>









---


#### deleteInventory
Delete a Inventory.




```swift
platformClient.catalog.deleteInventory(size: size, itemId: itemId, locationId: locationId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| size | String | yes | size that is to be deleted. |   
| itemId | Int | yes | Id of the product associated with Inventory to be deleted. |   
| locationId | Double | yes | Location ID of store of which inventory is to be deleted. |  



This API allows to delete inventory of a particular product for particular company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getInventoryBulkUploadHistory
Get a list of all bulk Inventory upload jobs.




```swift
platformClient.catalog.getInventoryBulkUploadHistory(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



This API helps to get bulk Inventory upload jobs data.

*Returned Response:*




[BulkInventoryGet](#BulkInventoryGet)

List of bulk Inventory upload jobs. See `BulkInventoryGetSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "succeed": 1,
      "stage": "completed",
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/50DbgKLND-NtnL_EAVb-REicn1sDv-V8ZrKdnLt-product_inventory.csv",
      "created_on": "2021-03-11T10:54:44.998000Z",
      "cancelled_records": [],
      "created_by": {
        "username": "nikhilmhatre_gofynd_com_97636",
        "user_id": "16",
        "full_name": "Nikhil Mhatre"
      },
      "modified_on": "2021-03-11T10:54:45.296000Z",
      "cancelled": 0,
      "failed": 0,
      "modified_by": {
        "user_id": "0",
        "username": "Silverbolt"
      },
      "company_id": 1,
      "total": 1,
      "is_active": true,
      "failed_records": [],
      "id": "6049f6f5723043000125a9ea"
    },
    {
      "created_by": {
        "username": "silverbolt",
        "user_id": "-1"
      },
      "cancelled": 0,
      "modified_by": {
        "username": "Silverbolt",
        "user_id": "0"
      },
      "created_on": "2021-03-04T09:46:51.714000Z",
      "company_id": 1,
      "failed": 0,
      "failed_records": [],
      "succeed": 1,
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/NtnL_EAVb-REicn1sDv-V8ZrKdnLt-product_inventory.csv",
      "cancelled_records": [],
      "total": 1,
      "is_active": true,
      "modified_on": "2021-03-04T09:46:55.349000Z",
      "stage": "completed",
      "id": "6040ac8b1803830001fcc1ed"
    },
    {
      "company_id": 1,
      "failed": 0,
      "modified_by": {
        "user_id": "-1",
        "username": "silverbolt"
      },
      "cancelled": 0,
      "is_active": true,
      "cancelled_records": [],
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/bmBZY9iAX-REicn1sDv-V8ZrKdnLt-product_inventory.csv",
      "created_by": {
        "user_id": "-1",
        "username": "silverbolt"
      },
      "modified_on": "2021-03-04T09:22:32.222000Z",
      "succeed": 0,
      "failed_records": [],
      "stage": "terminated",
      "created_on": "2021-03-04T09:22:32.222000Z",
      "total": 1,
      "id": "6040a6d8104f110001a85061"
    },
    {
      "company_id": 1,
      "failed": 0,
      "modified_by": {
        "user_id": "-1",
        "username": "silverbolt"
      },
      "cancelled": 0,
      "is_active": true,
      "cancelled_records": [],
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/m73yWRT3v-REicn1sDv-V8ZrKdnLt-product_inventory.csv",
      "created_by": {
        "user_id": "-1",
        "username": "silverbolt"
      },
      "modified_on": "2021-03-04T09:20:29.719000Z",
      "succeed": 0,
      "failed_records": [],
      "stage": "terminated",
      "created_on": "2021-03-04T09:20:29.719000Z",
      "total": 1,
      "id": "6040a65d104f110001a85060"
    },
    {
      "created_on": "2021-03-04T08:50:49.367000Z",
      "cancelled_records": [],
      "failed_records": [],
      "succeed": 0,
      "cancelled": 0,
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/W9lxe19Uu-REicn1sDv-V8ZrKdnLt-product_inventory.csv",
      "total": 1,
      "created_by": {
        "username": "silverbolt",
        "user_id": "-1"
      },
      "is_active": true,
      "modified_by": {
        "username": "silverbolt",
        "user_id": "-1"
      },
      "company_id": 1,
      "failed": 0,
      "modified_on": "2021-03-04T08:50:49.367000Z",
      "stage": "terminated",
      "id": "60409f699b21e30001c1e6b5"
    },
    {
      "total": 1,
      "succeed": 1,
      "created_on": "2021-02-10T10:57:57.236000Z",
      "failed": 0,
      "modified_by": {
        "user_id": "0",
        "username": "Silverbolt"
      },
      "created_by": {
        "username": "917972410891_48194",
        "user_id": "5646",
        "full_name": "Sourabh Nilakhe"
      },
      "is_active": true,
      "cancelled_records": [],
      "failed_records": [],
      "company_id": 1,
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/REicn1sDv-V8ZrKdnLt-product_inventory.csv",
      "modified_on": "2021-02-10T10:57:57.571000Z",
      "stage": "completed",
      "cancelled": 0,
      "id": "6023bc35c85ca1000171e08a"
    },
    {
      "total": 1,
      "succeed": 1,
      "created_on": "2021-02-10T10:57:22.535000Z",
      "failed": 0,
      "modified_by": {
        "user_id": "0",
        "username": "Silverbolt"
      },
      "created_by": {
        "username": "917972410891_48194",
        "user_id": "5646",
        "full_name": "Sourabh Nilakhe"
      },
      "is_active": true,
      "cancelled_records": [],
      "failed_records": [],
      "company_id": 1,
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/Oth_LaVyI-V8ZrKdnLt-product_inventory.csv",
      "modified_on": "2021-02-10T10:57:23.311000Z",
      "stage": "completed",
      "cancelled": 0,
      "id": "6023bc12c85ca1000171e089"
    },
    {
      "created_by": {
        "user_id": "16",
        "username": "nikhilmhatre_gofynd_com_97636",
        "full_name": "Nikhil Mhatre"
      },
      "succeed": 1,
      "failed": 0,
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/V8ZrKdnLt-product_inventory.csv",
      "company_id": 1,
      "created_on": "2021-01-13T13:58:06.155000Z",
      "stage": "completed",
      "modified_by": {
        "username": "Silverbolt",
        "user_id": "0"
      },
      "is_active": true,
      "total": 1,
      "failed_records": [],
      "modified_on": "2021-01-13T13:58:06.369000Z",
      "cancelled_records": [],
      "cancelled": 0,
      "id": "5ffefc6ee2db8f000183fab8"
    },
    {
      "succeed": 0,
      "is_active": true,
      "cancelled": 0,
      "failed_records": [
        {
          "identifiers": "1.91887E+11",
          "message": "Invalid identifier: 1.91887E+11. Product not found."
        }
      ],
      "total": 1,
      "stage": "failed",
      "modified_by": {
        "username": "Silverbolt",
        "user_id": "0"
      },
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/t3T6X2Riy-product_inventory.csv",
      "cancelled_records": [],
      "created_by": {
        "username": "nikhilmhatre_gofynd_com_97636",
        "user_id": "16",
        "full_name": "Nikhil Mhatre"
      },
      "created_on": "2021-01-13T13:57:38.598000Z",
      "company_id": 1,
      "failed": 1,
      "modified_on": "2021-01-13T13:57:38.832000Z",
      "id": "5ffefc5252f31100012ea981"
    },
    {
      "total": 1,
      "company_id": 1,
      "created_by": {
        "user_id": "16",
        "username": "nikhilmhatre_gofynd_com_97636",
        "full_name": "Nikhil Mhatre"
      },
      "failed": 1,
      "modified_on": "2021-01-13T13:57:13.847000Z",
      "succeed": 0,
      "stage": "failed",
      "cancelled_records": [],
      "failed_records": [
        {
          "identifiers": "1.91887E+11",
          "message": "Invalid identifier: 1.91887E+11. Product not found."
        }
      ],
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/NSTuhgsgq-product_inventory.csv",
      "is_active": true,
      "created_on": "2021-01-13T13:57:13.639000Z",
      "cancelled": 0,
      "modified_by": {
        "username": "Silverbolt",
        "user_id": "0"
      },
      "id": "5ffefc39a0d1e20001ae118c"
    },
    {
      "succeed": 1,
      "failed": 0,
      "failed_records": [],
      "cancelled": 0,
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/cwQV-Z6gT-product_inventory.xlsx",
      "created_on": "2021-01-12T06:37:06.167000Z",
      "is_active": true,
      "cancelled_records": [],
      "created_by": {
        "user_id": "16",
        "username": "nikhilmhatre_gofynd_com_97636",
        "full_name": "Nikhil Mhatre"
      },
      "company_id": 1,
      "stage": "completed",
      "modified_by": {
        "username": "Silverbolt",
        "user_id": "0"
      },
      "modified_on": "2021-01-12T06:37:06.307000Z",
      "total": 1,
      "id": "5ffd4392b4c34d000170697b"
    },
    {
      "succeed": 1,
      "failed": 0,
      "failed_records": [],
      "cancelled": 0,
      "file_path": "https://hdn-1.addsale.com/x0/company/1/self/documents/inventory-import/free/original/gccehef2f-product_inventory.xlsx",
      "created_on": "2021-01-12T06:36:24.292000Z",
      "is_active": true,
      "cancelled_records": [],
      "created_by": {
        "user_id": "16",
        "username": "nikhilmhatre_gofynd_com_97636",
        "full_name": "Nikhil Mhatre"
      },
      "company_id": 1,
      "stage": "completed",
      "modified_by": {
        "username": "Silverbolt",
        "user_id": "0"
      },
      "modified_on": "2021-01-12T06:36:24.535000Z",
      "total": 1,
      "id": "5ffd4368b4c34d0001706960"
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 4,
    "item_total": 39,
    "has_previous": false,
    "has_next": true
  }
}
```
</details>









---


#### createBulkInventoryJob
Create a Bulk Inventory upload Job.




```swift
platformClient.catalog.createBulkInventoryJob(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BulkJob | yes | Request body |


This API helps to create a bulk Inventory upload job.

*Returned Response:*




[BulkResponse](#BulkResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "batch_id": "507f1f77bcf86cd799439011"
}
```
</details>









---


#### deleteBulkInventoryJob
Delete Bulk Inventory job.




```swift
platformClient.catalog.deleteBulkInventoryJob(batchId: batchId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| batchId | String | yes | Batch Id of the bulk delete job. |  



This API allows to delete bulk Inventory job associated with company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### createBulkInventory
Create products in bulk associated with given batch Id.




```swift
platformClient.catalog.createBulkInventory(batchId: batchId, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| batchId | String | yes | Batch Id of the bulk create job. |  
| body | InventoryBulkRequest | yes | Request body |


This API helps to create products in bulk push to kafka for approval/creation.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getInventoryExport
Get Inventory export history.




```swift
platformClient.catalog.getInventoryExport() { (response, error) in
    // Use response
}
```






This API helps to get Inventory export history.

*Returned Response:*




[InventoryExportJob](#InventoryExportJob)

Returns a list of inventory export jobs




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### createInventoryExportJob
Create a Inventory export Job.




```swift
platformClient.catalog.createInventoryExportJob(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InventoryExportRequest | yes | Request body |


This API helps to create a Inventory export job.

*Returned Response:*




[InventoryExportResponse](#InventoryExportResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### listInventoryExport
Get the history of the inventory export.




```swift
platformClient.catalog.listInventoryExport(status: status, fromDate: fromDate, toDate: toDate, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| status | String? | no | Status of the export job. |   
| fromDate | String? | no | Inventory export history filtered according to from_date. |   
| toDate | String? | no | Inventory export history filtered according to from_date. |   
| q | String? | no | Inventory export history filtered according to task ID. |  



This API helps you the get the history of inventory jobs depending on the filtered criteria.

*Returned Response:*




[InventoryExportJobListResponse](#InventoryExportJobListResponse)

Returns a list of inventory export jobs




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "url": "https://regrowth.s3.amazonaws.com/slingshot-catalogues/seller-catalog/577/ab469da4-b9a5-11ed-955a-d6fb21611540/ab469da4-b9a5-11ed-955a-d6fb21611540.zip",
      "type": "excel",
      "created_on": "2023-03-03T09:27:51.262000Z",
      "_id": "6401bd972a2e6c3d508c9203",
      "task_id": "ab469da4-b9a5-11ed-955a-d6fb21611540",
      "filters": {
        "brand_ids": [
          2751
        ],
        "store_ids": [
          3622
        ],
        "brands": [
          "Puma"
        ],
        "stores": [
          "Vikings Cbs"
        ]
      },
      "modified_on": "2023-03-03T09:27:51.262000",
      "status": "success",
      "notification_emails": [],
      "created_by": {
        "username": "rohanshah@fynd.com",
        "user_id": "5e199e6998cfe1776f1385dc"
      },
      "completed_on": "2023-03-03T09:33:11.416000Z",
      "seller_id": 577,
      "id": "6401bd972a2e6c3d508c9203"
    }
  ]
}
```
</details>









---


#### createInventoryExport
Create an inventory export job.




```swift
platformClient.catalog.createInventoryExport(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InventoryCreateRequest | yes | Request body |


This API helps to create a Inventory export job.

*Returned Response:*




[InventoryExportResponse](#InventoryExportResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### exportInventoryConfig
Get List of different filters for inventory export




```swift
platformClient.catalog.exportInventoryConfig(filterType: filterType) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| filterType | String? | no | filter type from any one of ['brand', 'store', 'type'] |  



This API allows get List of different filters like brand, store, and type for inventory export.

*Returned Response:*




[InventoryConfig](#InventoryConfig)

returns filters configuration for inventory export




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": [
    {
      "display": "csv",
      "value": "csv"
    },
    {
      "display": "excel",
      "value": "excel"
    }
  ],
  "multivalues": true
}
```
</details>









---


#### deleteRealtimeInventory
Add Inventory for particular size and store.




```swift
platformClient.catalog.deleteRealtimeInventory(itemId: itemId, sellerIdentifier: sellerIdentifier, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Item code of the product of which size is to be get. |   
| sellerIdentifier | String | yes | Size Identifier (Seller Identifier or Primary Identifier) of which inventory is to get. |  
| body | InventoryRequestSchemaV2 | yes | Request body |


This API allows add Inventory for particular size and store.

*Returned Response:*




[InventoryUpdateResponse](#InventoryUpdateResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Partially Successful",
  "items": [
    {
      "reason": {
        "reason_code": 2005,
        "message": "Product not found"
      },
      "data": {
        "seller_identifier": "000000000490922067",
        "store_id": 124,
        "price_marked": 130,
        "price_effective": 109.01,
        "total_quantity": 34,
        "expiration_date": "9998-01-30T23:59:00"
      }
    },
    {
      "reason": {
        "reason_code": 2004,
        "message": "Size not found"
      },
      "data": {
        "seller_identifier": "000000000490922067",
        "store_id": 124,
        "price_marked": 130,
        "price_effective": 109.01,
        "total_quantity": 34,
        "expiration_date": "9998-01-30T23:59:00"
      }
    }
  ]
}
```
</details>









---


#### updateRealtimeInventory
Add Inventory for particular size and store.




```swift
platformClient.catalog.updateRealtimeInventory(itemId: itemId, sellerIdentifier: sellerIdentifier, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemId | Int | yes | Item code of the product of which size is to be get. |   
| sellerIdentifier | String | yes | Size Identifier (Seller Identifier or Primary Identifier) of which inventory is to get. |  
| body | InventoryRequestSchemaV2 | yes | Request body |


This API allows add Inventory for particular size and store.

*Returned Response:*




[InventoryUpdateResponse](#InventoryUpdateResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Partially Successful",
  "items": [
    {
      "reason": {
        "reason_code": 2005,
        "message": "Product not found"
      },
      "data": {
        "seller_identifier": "000000000490922067",
        "store_id": 124,
        "price_marked": 130,
        "price_effective": 109.01,
        "total_quantity": 34,
        "expiration_date": "9998-01-30T23:59:00"
      }
    },
    {
      "reason": {
        "reason_code": 2004,
        "message": "Size not found"
      },
      "data": {
        "seller_identifier": "000000000490922067",
        "store_id": 124,
        "price_marked": 130,
        "price_effective": 109.01,
        "total_quantity": 34,
        "expiration_date": "9998-01-30T23:59:00"
      }
    }
  ]
}
```
</details>









---


#### updateInventories
Add Inventory for particular size and store.




```swift
platformClient.catalog.updateInventories(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | InventoryRequestSchemaV2 | yes | Request body |


This API allows add Inventory for particular size and store.

*Returned Response:*




[InventoryUpdateResponse](#InventoryUpdateResponse)

Returns a success or partial success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Partially Successful",
  "items": [
    {
      "reason": {
        "reason_code": 2005,
        "message": "Product not found"
      },
      "data": {
        "seller_identifier": "000000000490922067",
        "store_id": 124,
        "price_marked": 130,
        "price_effective": 109.01,
        "total_quantity": 34,
        "expiration_date": "9998-01-30T23:59:00"
      }
    },
    {
      "reason": {
        "reason_code": 2004,
        "message": "Size not found"
      },
      "data": {
        "seller_identifier": "000000000490922067",
        "store_id": 124,
        "price_marked": 130,
        "price_effective": 109.01,
        "total_quantity": 34,
        "expiration_date": "9998-01-30T23:59:00"
      }
    }
  ]
}
```
</details>









---


#### updateHsnCode
Update Hsn Code.




```swift
platformClient.catalog.updateHsnCode(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Unique id |  
| body | HsnUpsert | yes | Request body |


Update Hsn Code.

*Returned Response:*




[HsnCode](#HsnCode)

See example below for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "company_id": 1,
    "hs2_code": "xx",
    "modified_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    },
    "id": "xxxxxxxxxxxx",
    "tax_on": "esp",
    "slabs": [
      {
        "tax": 0,
        "threshold": 999999
      },
      {
        "tax": 0,
        "threshold": 0
      }
    ],
    "hsn_code": "xxxxxxxx"
  }
}
```
</details>









---


#### getHsnCode
Fetch Hsn Code.




```swift
platformClient.catalog.getHsnCode(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | Unique id |  



Fetch Hsn Code.

*Returned Response:*




[HsnCode](#HsnCode)

See example below details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "data": {
    "company_id": 1,
    "hs2_code": "xx",
    "modified_by": {
      "username": "narutouzumaki",
      "user_id": "0"
    },
    "id": "xxxxxxxxxxxx",
    "tax_on": "esp",
    "slabs": [
      {
        "tax": 0,
        "threshold": 999999
      },
      {
        "tax": 0,
        "threshold": 0
      }
    ],
    "hsn_code": "xxxxxxxx"
  }
}
```
</details>









---


#### bulkHsnCode
Bulk Create or Update Hsn Code.




```swift
platformClient.catalog.bulkHsnCode(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | BulkHsnUpsert | yes | Request body |


Bulk Create or Update Hsn Code.

*Returned Response:*




[BulkHsnResponse](#BulkHsnResponse)

See example below for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getAllProductHsnCodes
Hsn Code List.




```swift
platformClient.catalog.getAllProductHsnCodes(pageNo: pageNo, pageSize: pageSize, q: q, type: type) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | page no |   
| pageSize | Int? | no | page size |   
| q | String? | no | search using hsn code, description, reporting_hsn |   
| type | String? | no | search using type |  



Hsn Code List.

*Returned Response:*




[HsnCodesListingResponseSchemaV2](#HsnCodesListingResponseSchemaV2)

List of all HSN Codes. See example below or refer `HsnCodesListingResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "tax_on_esp": true,
      "id": "619e17925e3d3ea77d6fe8cf",
      "hs2_code": "26",
      "modified_on": "2021-11-25T06:37:00.880000Z",
      "description": "final test updated",
      "tax_on_mrp": false,
      "slabs": [
        {
          "threshold": 100,
          "effective_date": "2021-11-18T10:00:31.798000+00:00",
          "tax": 10
        },
        {
          "threshold": 200,
          "effective_date": "2022-11-18T10:00:31.798000+00:00",
          "tax": 20
        }
      ],
      "hsn_code": "123fght3",
      "uid": "123fgh43-1"
    }
  ],
  "page": {
    "current": 1,
    "type": "number",
    "size": 8,
    "has_previous": false,
    "has_next": true,
    "item_total": 8
  }
}
```
</details>









---


#### getSingleProductHSNCode
Hsn Code List.




```swift
platformClient.catalog.getSingleProductHSNCode(reportingHsn: reportingHsn) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| reportingHsn | String | yes | reporting_hsn |  



Hsn Code List.

*Returned Response:*




[HSNDataInsertV2](#HSNDataInsertV2)

Get specific HSN details. See example below or refer `HsnCodesListingResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "description": "Data for HSN Code",
  "created_on": "2022-02-24T09:14:03Z",
  "created_by": {
    "username": "silverbolt",
    "user_id": -1
  },
  "modified_on": "2022-02-24T09:14:03Z",
  "reporting_hsn": "89787179H29",
  "modified_by": {
    "username": "silverbolt",
    "user_id": -1
  },
  "country_code": "IN",
  "taxes": [
    {
      "effective_date": "2022-02-11T15:00:00",
      "rate": 5,
      "threshold": 10000,
      "cess": 23
    },
    {
      "effective_date": "2022-02-11T15:00:00",
      "rate": 12,
      "threshold": 12000
    },
    {
      "effective_date": "2022-02-12T15:00:00",
      "rate": 18,
      "threshold": 5000
    }
  ],
  "type": "goods",
  "hsn_code": "89787179",
  "id": "6216ff0378da3f906fc82544"
}
```
</details>









---


#### getApplicationBrands
List all the brands




```swift
platformClient.application("<APPLICATION_ID>").catalog.getApplicationBrands(department: department, pageNo: pageNo, pageSize: pageSize, q: q, brandId: brandId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| department | String? | no | The name of the department. Use this parameter to filter products by a particular department. See below the list of available departments. You can retrieve available departments from the **v1.0/departments/** API |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| q | String? | no | Search query with brand name.Use this parameter to search brands by  brand name. |   
| brandId | [Int]? | no | Helps to sort the brands list on the basis of uid list. |  



A brand is the name under which a product is being sold. Use this API to list all the brands. You can pass optionally filter the brands by the department. If successful, returns a paginated list of brands specified in `BrandListingResponse`

*Returned Response:*




[BrandListingResponse](#BrandListingResponse)

List of Brands. See example below or refer `BrandListingResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "uid": 1,
      "name": "Barry, Jennings and Larson",
      "slug": "Hess-Inc",
      "action": {
        "page": {
          "type": "products",
          "query": {
            "brand": [
              "Hess-Inc"
            ]
          }
        },
        "type": "page"
      },
      "logo": {
        "type": "image",
        "url": "https://hdn-1.fynd.com/media/logo/brand/original/12391_0d956c6c71a4427895c15e44cba82f88.jpg"
      },
      "banners": {
        "portrait": {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/banner_portrait/brand/original/12537_9cdfc6835e814b0986ee1643d38cf6cd.png"
        }
      },
      "en_name": "Barry, Jennings and Larson"
    }
  ],
  "page": {
    "current": 1,
    "total": 1,
    "has_previous": false,
    "has_next": false,
    "item_total": 1,
    "type": "number"
  }
}
```
</details>









---


#### getDepartments
List all the departments




```swift
platformClient.application("<APPLICATION_ID>").catalog.getDepartments() { (response, error) in
    // Use response
}
```






Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the departments. If successful, returns the list of departments specified in `DepartmentResponse`

*Returned Response:*




[DepartmentResponse](#DepartmentResponse)

List of Departments. See example below or refer `DepartmentResponse` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "uid": 1,
      "name": "Zachary Harris",
      "slug": "Zachary-Harris",
      "priority_order": 7,
      "logo": {
        "type": "image",
        "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
      }
    },
    {
      "uid": 2,
      "name": "Aaron Reilly",
      "slug": "Aaron-Reilly",
      "priority_order": 7,
      "logo": {
        "type": "image",
        "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
      }
    },
    {
      "uid": 3,
      "name": "Bobby Sandoval",
      "slug": "Bobby-Sandoval",
      "priority_order": 7,
      "logo": {
        "type": "image",
        "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
      }
    },
    {
      "uid": 4,
      "name": "Seth Hughes",
      "slug": "Seth-Hughes",
      "priority_order": 7,
      "logo": {
        "type": "image",
        "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
      }
    },
    {
      "uid": 5,
      "name": "Michelle Moore",
      "slug": "Michelle-Moore",
      "priority_order": 7,
      "logo": {
        "type": "image",
        "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
      }
    },
    {
      "uid": 6,
      "name": "Annette Baldwin",
      "slug": "Annette-Baldwin",
      "priority_order": 7,
      "logo": {
        "type": "image",
        "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
      }
    },
    {
      "uid": 7,
      "name": "Chris Mata",
      "slug": "Chris-Mata",
      "priority_order": 7,
      "logo": {
        "type": "image",
        "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
      }
    },
    {
      "uid": 8,
      "name": "Nicole Jacobs",
      "slug": "Nicole-Jacobs",
      "priority_order": 7,
      "logo": {
        "type": "image",
        "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
      }
    },
    {
      "uid": 9,
      "name": "Pamela Smith",
      "slug": "Pamela-Smith",
      "priority_order": 7,
      "logo": {
        "type": "image",
        "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
      }
    },
    {
      "uid": 10,
      "name": "Nicole Simon",
      "slug": "Nicole-Simon",
      "priority_order": 7,
      "logo": {
        "type": "image",
        "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
      }
    }
  ]
}
```
</details>









---


#### getCategories
List all the categories




```swift
platformClient.application("<APPLICATION_ID>").catalog.getCategories(department: department) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| department | String? | no | The name of the department. Use this parameter to filter products by a particular department. See below the list of available departments. You can retrieve available departments from the **v1.0/departments/** API |  



List all the categories. You can optionally pass filter the brands by the department. If successful, returns a paginated list of brands specified in `CategoryListingResponse`

*Returned Response:*




[CategoryListingResponse](#CategoryListingResponse)

List of Categories. See example below or refer `CategoryListingResponse` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "departments": [
    {
      "slug": "Cody-Doyle",
      "uid": 1
    }
  ],
  "data": [
    {
      "department": "Cody-Doyle",
      "items": [
        {
          "name": "Janet Parker",
          "image": {
            "aspect_ratio": "13:20",
            "aspect_ratio_f": 0.65,
            "url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/banner_portrait/category/resize-w:130,h:200/12064_e69e1d8b5e934d3488f0dc8663d8a158.jpg"
          },
          "uid": 1,
          "slug": "Janet-Parker",
          "_custom_json": {},
          "action": {
            "type": "category",
            "url": "https://api.addsale.com/platform/content/v1/products/?l1_category=Janet-Parker&department=Jaime-Chambers",
            "query": {
              "l1_category": [
                "Janet-Parker"
              ],
              "department": [
                "Jaime-Chambers"
              ]
            }
          },
          "childs": [
            {
              "name": "Hannah Lawson",
              "image": {
                "aspect_ratio": "13:20",
                "aspect_ratio_f": 0.65,
                "url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/banner_portrait/category/resize-w:130,h:200/12064_e69e1d8b5e934d3488f0dc8663d8a158.jpg"
              },
              "uid": 2,
              "slug": "Hannah-Lawson",
              "_custom_json": {},
              "action": {
                "type": "category",
                "url": "https://api.addsale.com/platform/content/v1/products/?l2_category=Hannah-Lawson&department=Jaime-Chambers",
                "query": {
                  "l2_category": [
                    "Hannah-Lawson"
                  ],
                  "department": [
                    "Jaime-Chambers"
                  ]
                }
              },
              "childs": [
                {
                  "name": "Logan Black",
                  "image": {
                    "aspect_ratio": "13:20",
                    "aspect_ratio_f": 0.65,
                    "url": "https://d2zv4gzhlr4ud6.cloudfront.net/media/banner_portrait/category/resize-w:130,h:200/12064_e69e1d8b5e934d3488f0dc8663d8a158.jpg"
                  },
                  "uid": 3,
                  "slug": "Logan-Black",
                  "_custom_json": {},
                  "action": {
                    "type": "category",
                    "url": "https://api.addsale.com/platform/content/v1/products/?category=Logan-Black&department=Jaime-Chambers",
                    "query": {
                      "category": [
                        "Logan-Black"
                      ],
                      "department": [
                        "Jaime-Chambers"
                      ]
                    }
                  },
                  "childs": []
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}
```
</details>









---


#### getAppicationProducts
List the products




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAppicationProducts(q: q, f: f, c: c, filters: filters, isDependent: isDependent, sortOn: sortOn, pageId: pageId, pageSize: pageSize, pageNo: pageNo, pageType: pageType, itemIds: itemIds) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | The search query. This can be a partial or complete name of a either a product, brand or category |   
| f | String? | no | The search filter parameters. All the parameter filtered from filter parameters will be passed in **f** parameter in this format. **?f=brand:voi-jeans||and:::category:t-shirts||shirts** |   
| c | String? | no | The search filter parameters for collection items. All the parameter filtered from filter parameters will be passed in **c** parameter in this format. **?c=brand:in:voi-jeans|and:::category:nin:t-shirts|shirts** |   
| filters | Bool? | no | Pass `filters` parameter to fetch the filter details. This flag is used to fetch all filters |   
| isDependent | Bool? | no | This query parameter is used to get the dependent products in the listing. |   
| sortOn | String? | no | The order to sort the list of products on. The supported sort parameters are popularity, price, redemption and discount in either ascending or descending order. See the supported values below. |   
| pageId | String? | no | Each response will contain **page_id** param, which should be sent back to make pagination work. |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| pageNo | Int? | no | If page_type is number then pass it to fetch page items. Default is 1. |   
| pageType | String? | no | For pagination type should be cursor or number. Default is cursor. |   
| itemIds | [Int]? | no | Item Ids of product |  



List all the products associated with a brand, collection or category in a requested sort order. The API additionally supports arbitrary search queries that may refer the name of any product, brand, category or collection. If successful, returns a paginated list of products specified in `ApplicationProductListingResponse`

*Returned Response:*




[ApplicationProductListingResponse](#ApplicationProductListingResponse)

List of Products. See example below or refer `ApplicationProductListingResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "filters": [
    {
      "key": {
        "display": "Department",
        "name": "department",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Department.svg"
      },
      "values": [
        {
          "display": "Debra Villarreal",
          "count": 15,
          "is_selected": false,
          "value": "Debra-Villarreal",
          "logo": {
            "type": "image",
            "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
          }
        },
        {
          "display": "Tracey Miller",
          "count": 15,
          "is_selected": false,
          "value": "Tracey-Miller",
          "logo": {
            "type": "image",
            "url": "http://cdn4.gofynd.com/media/category_tab_icons/department/Men.png"
          }
        }
      ]
    },
    {
      "key": {
        "display": "Category",
        "name": "category",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Category.svg"
      },
      "values": [
        {
          "display": "Amy Kim DDS",
          "count": 15,
          "is_selected": false,
          "value": "3",
          "logo": "http://cdn4.gofynd.com/media/banner/category/original/12063_a5bb91bd5cb44c3c9db98c2a0e6b3d99.jpg"
        }
      ]
    },
    {
      "key": {
        "display": "Gender",
        "name": "gender",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Gender.svg"
      },
      "values": [
        {
          "display": "Men",
          "count": 15,
          "is_selected": false,
          "value": "men"
        },
        {
          "display": "Women",
          "count": 15,
          "is_selected": false,
          "value": "women"
        }
      ]
    },
    {
      "key": {
        "display": "Size",
        "name": "sizes",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Sizes.svg"
      },
      "values": [
        {
          "display": "13",
          "count": 15,
          "is_selected": false,
          "value": "13"
        }
      ]
    },
    {
      "key": {
        "display": "Brand",
        "name": "brand",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Brand%20ID.svg"
      },
      "values": [
        {
          "display": "Barry, Jennings and Larson",
          "count": 15,
          "is_selected": false,
          "value": "1",
          "logo": "https://hdn-1.fynd.com/media/logo/brand/original/12391_0d956c6c71a4427895c15e44cba82f88.jpg"
        }
      ]
    },
    {
      "key": {
        "display": "Rating",
        "name": "rating",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Rating.svg"
      },
      "values": [
        {
          "count": 15,
          "display": "2 - 3",
          "value": "[2 TO 3}",
          "is_selected": false
        }
      ]
    },
    {
      "key": {
        "display": "Image",
        "name": "image_nature",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/image%20Nature.svg"
      },
      "values": [
        {
          "display": "GoodQuality",
          "count": 15,
          "is_selected": false,
          "value": "standard"
        }
      ]
    },
    {
      "key": {
        "display": "Monica Hampton",
        "name": "material",
        "kind": "multivalued",
        "logo": ""
      },
      "values": [
        {
          "display": "Neoprene",
          "count": 15,
          "is_selected": false,
          "value": "Neoprene"
        }
      ]
    },
    {
      "key": {
        "display": "John Mendoza",
        "name": "weight",
        "kind": "multivalued",
        "logo": ""
      },
      "values": [
        {
          "display": "100",
          "count": 15,
          "is_selected": false,
          "value": "100"
        }
      ]
    },
    {
      "key": {
        "display": "Kimberly Mcdaniel",
        "name": "gender",
        "kind": "multivalued",
        "logo": ""
      },
      "values": [
        {
          "display": "['Men', 'Women']",
          "count": 15,
          "is_selected": false,
          "value": "['Men', 'Women']"
        }
      ]
    },
    {
      "key": {
        "display": "Kimberly Davidson",
        "name": "color",
        "kind": "multivalued",
        "logo": ""
      },
      "values": [
        {
          "display": "Grey",
          "count": 15,
          "is_selected": false,
          "value": "808080"
        }
      ]
    },
    {
      "key": {
        "display": "Available",
        "name": "is_available",
        "kind": "singlevalued",
        "logo": ""
      },
      "values": [
        {
          "display": "Available",
          "count": 3,
          "is_selected": false,
          "value": true
        }
      ]
    }
  ],
  "items": [
    {
      "type": "product",
      "attributes": {
        "primary_color_hex": "808080",
        "weight": "100",
        "gender": "women",
        "material": "Neoprene",
        "primary_color": "DarkGrey"
      },
      "categories": [
        {
          "id": 3,
          "uid": 3,
          "name": "Amy Kim DDS",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.fynd.com/media/banner_portrait/brand/original/540_ecba3a1af141467da8abc20500f983db.jpg"
          },
          "action": {
            "page": {
              "type": "category",
              "query": {
                "category": [
                  "Amy-Kim-DDS"
                ]
              }
            },
            "type": "page"
          },
          "_custom_json": {}
        }
      ],
      "sellable": true,
      "name": "benchmark collaborative paradigms",
      "slug": "benchmark-collaborative-paradigms",
      "uid": 1,
      "item_type": "set",
      "brand": {
        "type": "brand",
        "name": "Hess Inc",
        "logo": {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/logo/brand/original/12391_0d956c6c71a4427895c15e44cba82f88.jpg"
        },
        "action": {
          "page": {
            "type": "products",
            "query": {
              "brand": [
                "Hess-Inc"
              ]
            }
          },
          "type": "page"
        },
        "_custom_json": {}
      },
      "action": {
        "page": {
          "type": "product",
          "query": {
            "slug": "benchmark-collaborative-paradigms"
          }
        },
        "type": "page"
      },
      "medias": [
        {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/fynd_store_items/l2_category/original/2830_c5bb5fc02f414307a828c4c56483c30a.jpg"
        }
      ],
      "discount": "14% OFF",
      "price": {
        "marked": {
          "min": 1399,
          "max": 1499,
          "currency_code": "INR",
          "currency_symbol": "₹"
        },
        "effective": {
          "min": 1199,
          "max": 1399,
          "currency_code": "INR",
          "currency_symbol": "₹"
        }
      },
      "is_tryout": false,
      "promo_meta": {
        "title": "",
        "subtitle": ""
      },
      "item_code": "ITEM_CODE_1",
      "rating": 2.7
    },
    {
      "type": "product",
      "attributes": {
        "primary_color_hex": "808080",
        "weight": "100",
        "gender": "women",
        "material": "Neoprene",
        "primary_color": "DarkGrey"
      },
      "categories": [
        {
          "id": 3,
          "uid": 3,
          "name": "Amy Kim DDS",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.fynd.com/media/banner_portrait/brand/original/540_ecba3a1af141467da8abc20500f983db.jpg"
          },
          "action": {
            "page": {
              "type": "category",
              "query": {
                "category": [
                  "Amy-Kim-DDS"
                ]
              }
            },
            "type": "page"
          },
          "_custom_json": {}
        }
      ],
      "sellable": true,
      "name": "architect granular e-business",
      "slug": "architect-granular-e-business",
      "uid": 10,
      "item_type": "set",
      "brand": {
        "type": "brand",
        "name": "Hess Inc",
        "logo": {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/logo/brand/original/12391_0d956c6c71a4427895c15e44cba82f88.jpg"
        },
        "action": {
          "page": {
            "type": "products",
            "query": {
              "brand": [
                "Hess-Inc"
              ]
            }
          },
          "type": "page"
        },
        "_custom_json": {}
      },
      "action": {
        "page": {
          "type": "product",
          "query": {
            "slug": "architect-granular-e-business"
          }
        },
        "type": "page"
      },
      "medias": [
        {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/fynd_store_items/l2_category/original/2830_c5bb5fc02f414307a828c4c56483c30a.jpg"
        }
      ],
      "discount": "14% OFF",
      "price": {
        "marked": {
          "min": 1399,
          "max": 1499,
          "currency_code": "INR",
          "currency_symbol": "₹"
        },
        "effective": {
          "min": 1199,
          "max": 1399,
          "currency_code": "INR",
          "currency_symbol": "₹"
        }
      },
      "is_tryout": false,
      "promo_meta": {
        "title": "",
        "subtitle": ""
      },
      "item_code": "ITEM_CODE_2",
      "rating": 2.7
    },
    {
      "type": "product",
      "attributes": {
        "primary_color_hex": "808080",
        "weight": "100",
        "gender": "women",
        "material": "Neoprene",
        "primary_color": "DarkGrey"
      },
      "categories": [
        {
          "id": 3,
          "uid": 3,
          "name": "Amy Kim DDS",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.fynd.com/media/banner_portrait/brand/original/540_ecba3a1af141467da8abc20500f983db.jpg"
          },
          "action": {
            "page": {
              "type": "category",
              "query": {
                "category": [
                  "Amy-Kim-DDS"
                ]
              }
            },
            "type": "page"
          },
          "_custom_json": {}
        }
      ],
      "sellable": true,
      "name": "facilitate enterprise supply-chains",
      "slug": "facilitate-enterprise-supply-chains",
      "uid": 11,
      "item_type": "set",
      "brand": {
        "type": "brand",
        "name": "Hess Inc",
        "logo": {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/logo/brand/original/12391_0d956c6c71a4427895c15e44cba82f88.jpg"
        },
        "action": {
          "page": {
            "type": "products",
            "query": {
              "brand": [
                "Hess-Inc"
              ]
            }
          },
          "type": "page"
        },
        "_custom_json": {}
      },
      "action": {
        "page": {
          "type": "product",
          "query": {
            "slug": "facilitate-enterprise-supply-chains"
          }
        },
        "type": "page"
      },
      "medias": [
        {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/fynd_store_items/l2_category/original/2830_c5bb5fc02f414307a828c4c56483c30a.jpg"
        }
      ],
      "discount": "14% OFF",
      "price": {
        "marked": {
          "min": 1399,
          "max": 1499,
          "currency_code": "INR",
          "currency_symbol": "₹"
        },
        "effective": {
          "min": 1199,
          "max": 1399,
          "currency_code": "INR",
          "currency_symbol": "₹"
        }
      },
      "is_tryout": false,
      "promo_meta": {
        "title": "",
        "subtitle": ""
      },
      "item_code": "ITEM_CODE_3",
      "rating": 2.7
    },
    {
      "type": "product",
      "attributes": {
        "primary_color_hex": "808080",
        "weight": "100",
        "gender": "women",
        "material": "Neoprene",
        "primary_color": "DarkGrey"
      },
      "categories": [
        {
          "id": 3,
          "uid": 3,
          "name": "Amy Kim DDS",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.fynd.com/media/banner_portrait/brand/original/540_ecba3a1af141467da8abc20500f983db.jpg"
          },
          "action": {
            "page": {
              "type": "category",
              "query": {
                "category": [
                  "Amy-Kim-DDS"
                ]
              }
            },
            "type": "page"
          },
          "_custom_json": {}
        }
      ],
      "sellable": true,
      "name": "optimize web-enabled e-tailers",
      "slug": "optimize-web-enabled-e-tailers",
      "uid": 12,
      "item_type": "set",
      "brand": {
        "type": "brand",
        "name": "Hess Inc",
        "logo": {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/logo/brand/original/12391_0d956c6c71a4427895c15e44cba82f88.jpg"
        },
        "action": {
          "page": {
            "type": "products",
            "query": {
              "brand": [
                "Hess-Inc"
              ]
            }
          },
          "type": "page"
        },
        "_custom_json": {}
      },
      "action": {
        "page": {
          "type": "product",
          "query": {
            "slug": "optimize-web-enabled-e-tailers"
          }
        },
        "type": "page"
      },
      "medias": [
        {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/fynd_store_items/l2_category/original/2830_c5bb5fc02f414307a828c4c56483c30a.jpg"
        }
      ],
      "discount": "14% OFF",
      "price": {
        "marked": {
          "min": 1399,
          "max": 1499,
          "currency_code": "INR",
          "currency_symbol": "₹"
        },
        "effective": {
          "min": 1199,
          "max": 1399,
          "currency_code": "INR",
          "currency_symbol": "₹"
        }
      },
      "is_tryout": false,
      "promo_meta": {
        "title": "",
        "subtitle": ""
      },
      "item_code": "ITEM_CODE_4",
      "rating": 2.7
    }
  ],
  "sort_on": [
    {
      "display": "Latest Products.",
      "name": "Latest Products.",
      "logo": "https://d2zv4gzhlr4ud6.cloudfront.net/media/pictures/tagged_items/360x0/56_MKT02AI060CORAL/1_1567590349681.jpg",
      "value": "latest",
      "is_selected": true
    }
  ],
  "page": {
    "current": 1,
    "total": 2,
    "has_previous": false,
    "has_next": true,
    "item_total": 15,
    "type": "number"
  }
}
```
</details>









---


#### getProductDetailBySlug
Get a product




```swift
platformClient.application("<APPLICATION_ID>").catalog.getProductDetailBySlug(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | The unique identifier of a product. i.e; `slug` of a product. You can retrieve these from the APIs that list products like **v1.0/products/** |  



Products are the core resource of an application. Products can be associated by categories, collections, brands and more. This API retrieves the product specified by the given **slug**. If successful, returns a Product resource in the response body specified in `ProductDetail`

*Returned Response:*




[ProductDetail](#ProductDetail)

The Product object. See example below or refer `ProductDetail` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "type": "product",
  "grouped_attributes": [
    {
      "title": "Alexander Sawyer",
      "details": [
        {
          "key": "Kimberly Davidson",
          "type": "text",
          "value": "DarkGrey"
        },
        {
          "key": "Kimberly Mcdaniel",
          "type": "text",
          "value": "Men,Women"
        },
        {
          "key": "Monica Hampton",
          "type": "text",
          "value": "Neoprene"
        },
        {
          "key": "John Mendoza",
          "type": "text",
          "value": "100 g"
        }
      ]
    }
  ],
  "medias": [
    {
      "type": "image",
      "url": "http://cdn4.gofynd.com/media/pictures/tagged_items/original/1309_LGLAPTOPSLEEVE5/1_1564735832806.jpg"
    }
  ],
  "brand": {
    "name": "Barry, Jennings and Larson",
    "uid": 1,
    "logo": {
      "type": "image",
      "url": "https://hdn-1.fynd.com/media/logo/brand/original/12391_0d956c6c71a4427895c15e44cba82f88.jpg"
    },
    "action": {
      "page": {
        "type": "products",
        "query": {
          "brand": [
            "Hess-Inc"
          ]
        }
      },
      "type": "page"
    },
    "_custom_json": {}
  },
  "uid": 1,
  "slug": "benchmark-collaborative-paradigms",
  "attributes": {
    "color_hex": "808080",
    "weight": 100,
    "product_type": "LaptopBags",
    "gender": [
      "Men",
      "Women"
    ],
    "material": "Neoprene",
    "style_note": "Shape up your overall appeal with this stunning laptop bag. The amazing storage and great design will let you carry your laptop in style!",
    "item_code": "LGLAPTOPSLEEVE5",
    "occasion": "Casual",
    "primary_color": "Grey",
    "primary_material": "Others",
    "variant": "LGLAPTOPSLEEVE5",
    "color": "DarkGrey",
    "product_details": "This is a Unisex Product.",
    "primary_color_hex": "808080",
    "brand": "Barry, Jennings and Larson"
  },
  "name": "benchmark collaborative paradigms",
  "has_variant": true,
  "categories": [
    {
      "id": 3,
      "uid": 3,
      "name": "Amy Kim DDS",
      "logo": {
        "type": "image",
        "url": "https://hdn-1.fynd.com/media/banner_portrait/brand/original/540_ecba3a1af141467da8abc20500f983db.jpg"
      },
      "action": {
        "page": {
          "type": "category",
          "query": {
            "category": [
              "Amy-Kim-DDS"
            ]
          }
        },
        "type": "page"
      },
      "_custom_json": {}
    }
  ],
  "tryouts": [],
  "rating": 2.7,
  "rating_count": 2,
  "image_nature": "standard",
  "tags": [
    "Digital"
  ],
  "teaser_tag": {},
  "no_of_boxes": 1,
  "product_online_date": "2021-02-03T07:22:29Z",
  "custom_order": {},
  "color": "808080",
  "similars": [
    "brand"
  ]
}
```
</details>









---


#### getAppProducts
Get applicationwise products




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAppProducts(brandIds: brandIds, categoryIds: categoryIds, departmentIds: departmentIds, tags: tags, isDependent: isDependent, itemIds: itemIds, pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| brandIds | [Int]? | no | Get multiple products filtered by Brand Ids |   
| categoryIds | [Int]? | no | Get multiple products filtered by Category Ids |   
| departmentIds | [Int]? | no | Get multiple products filtered by Department Ids |   
| tags | [String]? | no | Get multiple products filtered by tags |   
| isDependent | Bool? | no | This query parameter is used to get the dependent products in the listing. |   
| itemIds | [Int]? | no | Get multiple products filtered by Item Ids |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |   
| q | String? | no | Search with Item Code, Name, Slug or Identifier. |  



Products are the core resource of an application. Products can be associated by categories, collections, brands and more. If successful, returns a Product resource in the response body specified in `ApplicationProductListingResponseDatabasePowered`

*Returned Response:*




[ProductListingResponse](#ProductListingResponse)

The Product object. See example below or refer `ApplicationProductListingResponseDatabasePowered` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "name": "TV Set",
      "description": "Tv",
      "country_of_origin": "India",
      "currency": "INR",
      "short_description": "",
      "is_set": true,
      "item_code": "TVSET111",
      "brand_uid": 1,
      "template_tag": "television",
      "highlights": [
        "42 Inch"
      ],
      "slug": "tv-set",
      "_custom_json": {},
      "l3_mapping": [
        "electronics>qled_television"
      ],
      "image_nature": "standard",
      "departments": [
        1
      ],
      "created_on": 1599024995,
      "created_by": {
        "username": "919049753052_37528",
        "user_id": "5"
      },
      "modified_on": 1627642010,
      "modified_by": {
        "username": "xxxxxxxxxx",
        "user_id": "xxxxxxxxxxx"
      },
      "stage": "verified",
      "uid": 7501547,
      "verified_by": {
        "username": "Silverbolt",
        "user_id": "0"
      },
      "verified_on": 1626965521,
      "all_sizes": [
        {
          "item_code": "TVSET111",
          "brand_uid": 1,
          "seller_identifier": "HGS272727272",
          "identifiers": [
            {
              "gtin_type": "ean",
              "gtin_value": "HGS272727272",
              "primary": true
            }
          ],
          "company_id": 1,
          "size": "XXLX23, MX11, LX67, XLX45 (146 PCS)",
          "marked_price": 35000
        }
      ],
      "category_slug": "qled-television",
      "is_image_less_product": false,
      "media": [
        {
          "url": "https://hdn-1.addsale.com/x0/products/pictures/item/free/135x0/dcizgsG_Y-Tv-Set.png",
          "type": "image"
        }
      ],
      "variants": {},
      "product_publish": {
        "is_set": false,
        "product_online_date": 1627642009
      },
      "is_dependent": false,
      "is_physical": true,
      "item_type": "set",
      "category_uid": 1,
      "custom_order": {
        "manufacturing_time": 2,
        "is_custom_order": true,
        "manufacturing_time_unit": "days"
      },
      "multi_size": true,
      "no_of_boxes": 1,
      "product_group_tag": [],
      "size_guide": "slim-fit-shirts-for-men",
      "tags": [],
      "teaser_tag": {},
      "synonyms": [],
      "hsn_code": "11111111",
      "return_config": {
        "unit": "days",
        "returnable": false,
        "time": 0
      },
      "all_company_ids": [
        1
      ],
      "all_identifiers": [
        "19WE100"
      ],
      "trader": {
        "address": "sdfdsfsdf",
        "name": "asdasd"
      },
      "trader_type": "Packer",
      "verification_status": "pending",
      "sizes": [
        {
          "size": "FGX33, GHX33 (66 PCS)",
          "store_count": 1
        },
        {
          "size": "XSE WE23X100 (100 PCS)",
          "store_count": 2
        },
        {
          "size": "XSEX100 (100 PCS)",
          "store_count": 3
        },
        {
          "size": "XXLX23, MX11, LX67, XLX45 (146 PCS)",
          "store_count": 3
        }
      ],
      "id": "5f4f2f6371a5970001f13655",
      "brand": {
        "name": "Apple",
        "logo": {
          "aspect_ratio": "1:1",
          "aspect_ratio_f": 1,
          "url": "https://hdn-1.jiox0.de/jioecomm/seller/pictures/logo/50x0/apple-7f951c/logo_apple.png",
          "secure_url": "https://hdn-1.jiox0.de/jioecomm/seller/pictures/logo/50x0/apple-7f951c/logo_apple.png"
        },
        "uid": 13
      },
      "images": [
        {
          "aspect_ratio": "16:25",
          "aspect_ratio_f": 0.64,
          "url": "https://hdn-1.addsale.com/x0/products/pictures/item/free/135x0/dcizgsG_Y-Tv-Set.png",
          "secure_url": "https://hdn-1.addsale.com/x0/products/pictures/item/free/135x0/dcizgsG_Y-Tv-Set.png"
        }
      ],
      "price": {
        "marked": {
          "min": 35000,
          "max": 35000
        },
        "effective": {
          "min": 25000,
          "max": 25000
        }
      }
    }
  ],
  "page": {
    "type": "number",
    "current": 1,
    "size": 1,
    "item_total": 1,
    "has_previous": false,
    "has_next": false
  }
}
```
</details>









---


#### getAppInventory
Get the stock of a product




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAppInventory(itemIds: itemIds, storeIds: storeIds, brandIds: brandIds, sellerIdentifiers: sellerIdentifiers, timestamp: timestamp, pageSize: pageSize, pageId: pageId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemIds | [Int]? | no | The Item Id of the product. |   
| storeIds | [Int]? | no | The Store Id of products to fetch inventory. |   
| brandIds | [Int]? | no | The Brand Id of products to fetch inventory. |   
| sellerIdentifiers | [String]? | no | Unique seller_identifier of the product. |   
| timestamp | String? | no | Timestamp in UTC format (2020-07-23T10:27:50Z) |   
| pageSize | Int? | no | The number of items to retrieve in each page. |   
| pageId | String? | no | Page ID to retrieve next set of results. |  



Retrieve the available Inventory of the products. Use this API to get the Inventory status of products with the filters of timestamp, store_ids, brand_ids, item_id - Items - Pagination

*Returned Response:*




[InventoryStockResponse](#InventoryStockResponse)

Success. Returns the article/stock of the product stock.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "_id": "62d809eebeed53f4e27824b0",
      "company": {
        "id": 3
      },
      "weight": {
        "unit": "gram",
        "is_default": true,
        "shipping": 40
      },
      "modified_by": {
        "username": "mohitkhare_gofynd_com_12594",
        "user_id": "2a00eecae43d7e7f4340e7cf"
      },
      "tax_identifier": {
        "hsn_code_id": "000000000000000000000001"
      },
      "fynd_item_code": "LS101269",
      "created_by": {
        "username": "mohitkhare_gofynd_com_12594",
        "user_id": "2a00eecae43d7e7f4340e7cf"
      },
      "meta": {
        "service": "Inventory Job"
      },
      "uid": "624_LSRS401269",
      "size": "11",
      "total_quantity": 100,
      "fragile": false,
      "country_of_origin": "India",
      "expiration_date": "9998-01-30T23:59:00",
      "raw_meta": {
        "fynd_identifier": "624_LSRS401269"
      },
      "identifier": {
        "ean": "LSRS401269"
      },
      "seller_identifier": "LSRS401269",
      "dimension": {
        "width": 20,
        "unit": "cm",
        "height": 30,
        "length": 10,
        "is_default": true
      },
      "trader": [
        {
          "address": [
            "Load Galli, Mumbai"
          ],
          "name": "Load Company",
          "type": "Importer"
        }
      ],
      "is_active": true,
      "return_config": {
        "unit": "days",
        "returnable": true,
        "time": 30
      },
      "price": {
        "currency": "INR",
        "effective": 3250,
        "marked": 5000,
        "updated_at": "2022-07-20T13:58:06.122914+00:00",
        "transfer": 0
      },
      "store": {
        "id": 624
      },
      "manufacturer": {
        "address": "POLARIS, 2ND FLOOR, ANDHERI, JSNLCA, MAHARASHTRA, THANE",
        "is_default": true,
        "name": "Test 21"
      },
      "track_inventory": true,
      "brand": {
        "id": 2586
      },
      "is_set": false,
      "quantities": {
        "sellable": {
          "count": 100,
          "updated_at": 1658325486
        }
      },
      "item_id": 7523701,
      "fynd_article_code": "LS101269_11",
      "date_meta": {
        "added_on_store": 1658325486,
        "inventory_updated_on": 1658325486,
        "modified_on": 1660913492,
        "created_on": 1658325486
      },
      "stage": "verified",
      "_custom_json": {},
      "platforms": {
        "fynd": false,
        "uniket_wholesale": true
      },
      "discount_applied": null
    },
    {
      "_id": "62d809eebeed53f4e27824b2",
      "company": {
        "id": 3
      },
      "weight": {
        "unit": "gram",
        "is_default": true,
        "shipping": 40
      },
      "modified_by": {
        "username": "mohitkhare_gofynd_com_12594",
        "user_id": "2a00eecae43d7e7f4340e7cf"
      },
      "tax_identifier": {
        "hsn_code_id": "000000000000000000000001"
      },
      "fynd_item_code": "LS101163",
      "created_by": {
        "username": "mohitkhare_gofynd_com_12594",
        "user_id": "2a00eecae43d7e7f4340e7cf"
      },
      "meta": {
        "service": "Inventory Job"
      },
      "uid": "624_LSRS401163",
      "size": "11",
      "total_quantity": 100,
      "fragile": false,
      "country_of_origin": "India",
      "expiration_date": "9998-01-30T23:59:00",
      "raw_meta": {
        "fynd_identifier": "624_LSRS401163"
      },
      "identifier": {
        "ean": "LSRS401163"
      },
      "seller_identifier": "LSRS401163",
      "dimension": {
        "width": 20,
        "unit": "cm",
        "height": 30,
        "length": 10,
        "is_default": true
      },
      "trader": [
        {
          "address": [
            "Load Galli, Mumbai"
          ],
          "name": "Load Company",
          "type": "Importer"
        }
      ],
      "is_active": true,
      "return_config": {
        "unit": "days",
        "returnable": true,
        "time": 30
      },
      "price": {
        "currency": "INR",
        "effective": 3250,
        "marked": 5000,
        "updated_at": "2022-07-20T13:58:06.396235+00:00",
        "transfer": 0
      },
      "store": {
        "id": 624
      },
      "manufacturer": {
        "address": "POLARIS, 2ND FLOOR, ANDHERI, JSNLCA, MAHARASHTRA, THANE",
        "is_default": true,
        "name": "Test 21"
      },
      "track_inventory": true,
      "brand": {
        "id": 2586
      },
      "is_set": false,
      "quantities": {
        "sellable": {
          "count": 100,
          "updated_at": 1658325486
        }
      },
      "item_id": 7523925,
      "fynd_article_code": "LS101163_11",
      "date_meta": {
        "added_on_store": 1658325486,
        "inventory_updated_on": 1658325486,
        "modified_on": 1660913492,
        "created_on": 1658325486
      },
      "stage": "verified",
      "_custom_json": {},
      "platforms": {
        "fynd": false,
        "uniket_wholesale": true
      },
      "discount_applied": null
    },
    {
      "_id": "62d809eebeed53f4e27824b4",
      "company": {
        "id": 3
      },
      "weight": {
        "unit": "gram",
        "is_default": true,
        "shipping": 40
      },
      "modified_by": {
        "username": "mohitkhare_gofynd_com_12594",
        "user_id": "2a00eecae43d7e7f4340e7cf"
      },
      "tax_identifier": {
        "hsn_code_id": "000000000000000000000001"
      },
      "fynd_item_code": "LS101173",
      "created_by": {
        "username": "mohitkhare_gofynd_com_12594",
        "user_id": "2a00eecae43d7e7f4340e7cf"
      },
      "meta": {
        "service": "Inventory Job"
      },
      "uid": "624_LSRS401173",
      "size": "11",
      "total_quantity": 100,
      "fragile": false,
      "country_of_origin": "India",
      "expiration_date": "9998-01-30T23:59:00",
      "raw_meta": {
        "fynd_identifier": "624_LSRS401173"
      },
      "identifier": {
        "ean": "LSRS401173"
      },
      "seller_identifier": "LSRS401173",
      "dimension": {
        "width": 20,
        "unit": "cm",
        "height": 30,
        "length": 10,
        "is_default": true
      },
      "trader": [
        {
          "address": [
            "Load Galli, Mumbai"
          ],
          "name": "Load Company",
          "type": "Importer"
        }
      ],
      "is_active": true,
      "return_config": {
        "unit": "days",
        "returnable": true,
        "time": 30
      },
      "price": {
        "currency": "INR",
        "effective": 3250,
        "marked": 5000,
        "updated_at": "2022-07-20T13:58:06.635248+00:00",
        "transfer": 0
      },
      "store": {
        "id": 624
      },
      "manufacturer": {
        "address": "POLARIS, 2ND FLOOR, ANDHERI, JSNLCA, MAHARASHTRA, THANE",
        "is_default": true,
        "name": "Test 21"
      },
      "track_inventory": true,
      "brand": {
        "id": 2586
      },
      "is_set": false,
      "quantities": {
        "sellable": {
          "count": 100,
          "updated_at": 1658325486
        }
      },
      "item_id": 7523691,
      "fynd_article_code": "LS101173_11",
      "date_meta": {
        "added_on_store": 1658325486,
        "inventory_updated_on": 1658325486,
        "modified_on": 1660913492,
        "created_on": 1658325486
      },
      "stage": "verified",
      "_custom_json": {},
      "platforms": {
        "fynd": false,
        "uniket_wholesale": true
      },
      "discount_applied": null
    },
    {
      "_id": "62d809eebeed53f4e27824b6",
      "company": {
        "id": 3
      },
      "weight": {
        "unit": "gram",
        "is_default": true,
        "shipping": 40
      },
      "modified_by": {
        "username": "mohitkhare_gofynd_com_12594",
        "user_id": "2a00eecae43d7e7f4340e7cf"
      },
      "tax_identifier": {
        "hsn_code_id": "000000000000000000000001"
      },
      "fynd_item_code": "LS101198",
      "created_by": {
        "username": "mohitkhare_gofynd_com_12594",
        "user_id": "2a00eecae43d7e7f4340e7cf"
      },
      "meta": {
        "service": "Inventory Job"
      },
      "uid": "624_LSRS401198",
      "size": "11",
      "total_quantity": 100,
      "fragile": false,
      "country_of_origin": "India",
      "expiration_date": "9998-01-30T23:59:00",
      "raw_meta": {
        "fynd_identifier": "624_LSRS401198"
      },
      "identifier": {
        "ean": "LSRS401198"
      },
      "seller_identifier": "LSRS401198",
      "dimension": {
        "width": 20,
        "unit": "cm",
        "height": 30,
        "length": 10,
        "is_default": true
      },
      "trader": [
        {
          "address": [
            "Load Galli, Mumbai"
          ],
          "name": "Load Company",
          "type": "Importer"
        }
      ],
      "is_active": true,
      "return_config": {
        "unit": "days",
        "returnable": true,
        "time": 30
      },
      "price": {
        "currency": "INR",
        "effective": 3250,
        "marked": 5000,
        "updated_at": "2022-07-20T13:58:06.898687+00:00",
        "transfer": 0
      },
      "store": {
        "id": 624
      },
      "manufacturer": {
        "address": "POLARIS, 2ND FLOOR, ANDHERI, JSNLCA, MAHARASHTRA, THANE",
        "is_default": true,
        "name": "Test 21"
      },
      "track_inventory": true,
      "brand": {
        "id": 2586
      },
      "is_set": false,
      "quantities": {
        "sellable": {
          "count": 100,
          "updated_at": 1658325486
        }
      },
      "item_id": 7524280,
      "fynd_article_code": "LS101198_11",
      "date_meta": {
        "added_on_store": 1658325486,
        "inventory_updated_on": 1658325486,
        "modified_on": 1660913492,
        "created_on": 1658325486
      },
      "stage": "verified",
      "_custom_json": {},
      "platforms": {
        "fynd": false,
        "uniket_wholesale": true
      },
      "discount_applied": null
    }
  ],
  "page": {
    "type": "cursor",
    "next_id": "62d809eebeed53f4e27824b6",
    "has_previous": true,
    "has_next": true,
    "item_total": 1714
  }
}
```
</details>









---


#### getOptimalLocations
Location Reassignment




```swift
platformClient.catalog.getOptimalLocations(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | AssignStore | yes | Request body |




*Returned Response:*




[StoreAssignResponse](#StoreAssignResponse)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "meta": {},
      "store_id": 11550,
      "size": "OS",
      "_id": "61161830f1061e7c7f81d8ed",
      "store_pincode": 201303,
      "company_id": 783,
      "s_city": "NOIDA",
      "quantity": 1,
      "price_effective": 995,
      "status": true,
      "price_marked": 995,
      "uid": "11550_000000410234883001",
      "article_assignment": {
        "strategy": "app-config",
        "level": "multi-company"
      },
      "item_id": 75252658,
      "strategy_wise_listing": [],
      "index": 0
    }
  ]
}
```
</details>









---


#### getAppLocations
Get list of locations




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAppLocations(storeType: storeType, uid: uid, q: q, stage: stage, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| storeType | String? | no | Helps to sort the location list on the basis of location type. |   
| uid | [Int]? | no | Helps to sort the location list on the basis of uid list. |   
| q | String? | no | Query that is to be searched. |   
| stage | String? | no | to filter companies on basis of verified or unverified companies. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 20. |  



This API allows to view all the locations asscoiated to a application.

*Returned Response:*




[LocationListSerializer](#LocationListSerializer)

Company profile object. See example below or refer `LocationListSerializer` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "current": 1,
    "type": "number",
    "size": 3,
    "has_previous": false,
    "has_next": true,
    "item_total": 3
  },
  "items": [
    {
      "uid": 2,
      "address": {
        "address1": "POLARIS 2ND FLOOR, ANDHERI",
        "address2": "",
        "landmark": "",
        "lat_long": {
          "type": "Point",
          "coordinates": [
            72.8776559,
            19.0759837
          ]
        },
        "country": "INDIA",
        "state": "MAHARASHTRA",
        "city": "MUMBAI",
        "pincode": 400001
      },
      "company_id": 2,
      "display_name": "Test",
      "name": "Test",
      "store_code": "HS-a0c85",
      "store_type": "high_street"
    }
  ],
  "filters": []
}
```
</details>









---


#### getApplicationBrandListing
List all the brands for the application




```swift
platformClient.application("<APPLICATION_ID>").catalog.getApplicationBrandListing(pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| q | String? | no | Search query with brand name.Use this parameter to search brands by  brand name. |  



A brand is the name under which a product is being sold. Use this API to list all the brands. You can pass optionally filter the brands by the department. If successful, returns a paginated list of brands specified in `BrandListingResponse`

*Returned Response:*




[BrandListingResponse](#BrandListingResponse)

List of Brands. See example below or refer `BrandListingResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "uid": 1,
      "name": "Barry, Jennings and Larson",
      "slug": "Hess-Inc",
      "action": {
        "page": {
          "type": "products",
          "query": {
            "brand": [
              "Hess-Inc"
            ]
          }
        },
        "type": "page"
      },
      "logo": {
        "type": "image",
        "url": "https://hdn-1.fynd.com/media/logo/brand/original/12391_0d956c6c71a4427895c15e44cba82f88.jpg"
      },
      "banners": {
        "portrait": {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/banner_portrait/brand/original/12537_9cdfc6835e814b0986ee1643d38cf6cd.png"
        }
      },
      "en_name": "Barry, Jennings and Larson"
    }
  ],
  "page": {
    "current": 1,
    "total": 1,
    "has_previous": false,
    "has_next": false,
    "item_total": 1,
    "type": "number"
  }
}
```
</details>









---


#### updateAppBrand
Update a single custom json.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateAppBrand(brandUid: brandUid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| brandUid | String | yes | brand id for which the custom_json is associated. |  
| body | ApplicationBrandJson | yes | Request body |


This API helps to update data associated to a item custom meta.

*Returned Response:*




[SuccessResponse1](#SuccessResponse1)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getApplicationCategoryListing
List all the brands for the application




```swift
platformClient.application("<APPLICATION_ID>").catalog.getApplicationCategoryListing(departmentId: departmentId, pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| departmentId | Int? | no | A `department_id` is a unique identifier for a particular department. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| q | String? | no | Search query with brand name.Use this parameter to search brands by  brand name. |  



A brand is the name under which a product is being sold. Use this API to list all the brands. You can pass optionally filter the brands by the department. If successful, returns a paginated list of brands specified in `BrandListingResponse`

*Returned Response:*




[BrandListingResponse](#BrandListingResponse)

List of Brands. See example below or refer `BrandListingResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "uid": 1,
      "name": "Barry, Jennings and Larson",
      "slug": "Hess-Inc",
      "action": {
        "page": {
          "type": "products",
          "query": {
            "brand": [
              "Hess-Inc"
            ]
          }
        },
        "type": "page"
      },
      "logo": {
        "type": "image",
        "url": "https://hdn-1.fynd.com/media/logo/brand/original/12391_0d956c6c71a4427895c15e44cba82f88.jpg"
      },
      "banners": {
        "portrait": {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/banner_portrait/brand/original/12537_9cdfc6835e814b0986ee1643d38cf6cd.png"
        }
      },
      "en_name": "Barry, Jennings and Larson"
    }
  ],
  "page": {
    "current": 1,
    "total": 1,
    "has_previous": false,
    "has_next": false,
    "item_total": 1,
    "type": "number"
  }
}
```
</details>









---


#### updateAppCategory
Update a single custom json.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateAppCategory(categoryUid: categoryUid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| categoryUid | String | yes | category id for which the custom_json is associated. |  
| body | ApplicationCategoryJson | yes | Request body |


This API helps to update data associated to a item custom meta.

*Returned Response:*




[SuccessResponse1](#SuccessResponse1)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### getApplicationDepartmentListing
List all the departments for the application




```swift
platformClient.application("<APPLICATION_ID>").catalog.getApplicationDepartmentListing(pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| q | String? | no | Search query with brand name.Use this parameter to search department by name. |  



Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the application departments. If successful, returns the list of departments specified in `ApplicationDepartmentListingResponse`

*Returned Response:*




[ApplicationDepartmentListingResponse](#ApplicationDepartmentListingResponse)

List of Departments. See example below or refer `BrandListingResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "items": [
    {
      "uid": 1,
      "name": "Barry, Jennings and Larson",
      "slug": "Hess-Inc",
      "action": {
        "page": {
          "type": "products",
          "query": {
            "brand": [
              "Hess-Inc"
            ]
          }
        },
        "type": "page"
      },
      "logo": {
        "type": "image",
        "url": "https://hdn-1.fynd.com/media/logo/brand/original/12391_0d956c6c71a4427895c15e44cba82f88.jpg"
      },
      "banners": {
        "portrait": {
          "type": "image",
          "url": "https://hdn-1.fynd.com/media/banner_portrait/brand/original/12537_9cdfc6835e814b0986ee1643d38cf6cd.png"
        }
      },
      "en_name": "Barry, Jennings and Larson"
    }
  ],
  "page": {
    "current": 1,
    "total": 1,
    "has_previous": false,
    "has_next": false,
    "item_total": 1,
    "type": "number"
  }
}
```
</details>









---


#### updateAppDepartment
Update a single custom json.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateAppDepartment(departmentUid: departmentUid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| departmentUid | String | yes | department id for which the custom_json is associated. |  
| body | ApplicationDepartmentJson | yes | Request body |


This API helps to update data associated to a item custom meta.

*Returned Response:*




[SuccessResponse1](#SuccessResponse1)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---


#### updateAppLocation
Update a single custom json.




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateAppLocation(storeUid: storeUid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| storeUid | String | yes | store id for which the custom_json is associated. |  
| body | ApplicationStoreJson | yes | Request body |


This API helps to update data associated to a item custom meta.

*Returned Response:*




[SuccessResponse1](#SuccessResponse1)

Returns a success response




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "success": true
}
```
</details>









---



### Schemas

 
 
 #### [SearchKeywordResult](#SearchKeywordResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sortOn | String |  no  | It is the sort on the listing page of the keyword config. |
 | query | [String: Any] |  no  | It is the query of the keyword search config. |

---


 
 
 #### [CreateSearchKeyword](#CreateSearchKeyword)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  | The ID of the application performing the search. |
 | isActive | Bool? |  yes  | A flag indicating whether the search is active or not. |
 | customJson | [String: Any]? |  yes  | Custom JSON data that can be attached to the search model. |
 | result | [SearchKeywordResult](#SearchKeywordResult) |  no  | The search result containing the search query and sort field. |
 | words | [String]? |  yes  | A list of search keywords to search for in the database. |

---


 
 
 #### [SearchKeywordResult1](#SearchKeywordResult1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sortOn | String |  no  | The field to sort the search results on. |
 | query | [String: Any] |  no  | The search query containing various search parameters. |

---


 
 
 #### [GetSearchWordsData](#GetSearchWordsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  | The ID of the application performing the search. |
 | isActive | Bool? |  yes  | A flag indicating whether the search is active or not. |
 | customJson | [String: Any]? |  yes  | Custom JSON data that can be attached to the search model. |
 | uid | String? |  yes  | The UID of the search words data. |
 | result | [SearchKeywordResult1](#SearchKeywordResult1) |  no  | The search result containing the search query and sort field. |
 | words | [String]? |  yes  | A list of search keywords to search for in the database. |

---


 
 
 #### [SearchErrorResponse](#SearchErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | A descriptive message providing details about the error. |
 | code | Int |  no  | The HTTP status code indicating the error. |
 | errors | [[String: Any]]? |  yes  | Additional errors related to the request, if applicable. |

---


 
 
 #### [DeleteResponse](#DeleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | It is the success message of the action. |

---


 
 
 #### [BaseErrorResponse](#BaseErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | A descriptive message providing details about the error. |
 | code | Int |  no  | The HTTP status code indicating the error. |
 | errors | [String: Any]? |  yes  | Additional errors related to the request, if applicable. |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasNext | Bool? |  yes  | Indicates if there is a next page. |
 | size | Int? |  yes  | Number of items per page. |
 | nextId | String? |  yes  | Identifier for the next page. |
 | itemTotal | Int? |  yes  | Total number of items. |
 | current | Int? |  yes  | Current page number. |
 | type | String |  no  | Type of the page. |
 | hasPrevious | Bool? |  yes  | Indicates if there is a previous page. |

---


 
 
 #### [GetSearchWordsResponse](#GetSearchWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  | The pagniation detail for the listing. |
 | items | [[GetSearchWordsData](#GetSearchWordsData)]? |  yes  | A list of search words data. |

---


 
 
 #### [Media](#Media)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the media, e.g. image, video. |
 | aspectRatio | String? |  yes  | The aspect ratio of the media, e.g. 16:9. |
 | url | String |  no  | The URL of the media. |

---


 
 
 #### [AutocompletePageAction](#AutocompletePageAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the action page |
 | params | [String: Any]? |  yes  | Additional parameters for the autocomplete page action |
 | url | String? |  yes  | The URL for the autocomplete page action |
 | query | [String: Any]? |  yes  | Query parameters for the action page |

---


 
 
 #### [AutocompleteAction](#AutocompleteAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the action performed |
 | page | [AutocompletePageAction](#AutocompletePageAction)? |  yes  | The page where the autocomplete action is performed |

---


 
 
 #### [AutocompleteResult](#AutocompleteResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  | The display name of the autocomplete result. |
 | logo | [Media](#Media)? |  yes  | The logo of the autocomplete result. |
 | customJson | [String: Any]? |  yes  | Any custom JSON data for the autocomplete result. |
 | action | [AutocompleteAction](#AutocompleteAction)? |  yes  | The action to be performed when the autocomplete result is selected. |

---


 
 
 #### [GetAutocompleteWordsData](#GetAutocompleteWordsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  | It is a flag that indicate the active status of the config. |
 | appId | String? |  yes  | The ID of the application performing the search. |
 | results | [[AutocompleteResult](#AutocompleteResult)]? |  yes  | It contains the action page related to the autocomplete keywords. |
 | customJson | [String: Any]? |  yes  | Custom JSON data that can be attached to the search model. |
 | uid | String? |  yes  | The UID of the autocomplete config. |
 | words | [String]? |  yes  | A list of search keywords to search for in the database. |

---


 
 
 #### [UpdateAutocompleteWordData](#UpdateAutocompleteWordData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  | It is a flag that indicate the active status of the config. |
 | appId | String? |  yes  | The ID of the application performing the search. |
 | results | [[AutocompleteResult](#AutocompleteResult)]? |  yes  | It contains the action page related to the autocomplete keywords. |
 | customJson | [String: Any]? |  yes  | Custom JSON data that can be attached to the search model. |
 | uid | String? |  yes  | The UID of the autocomplete config. |
 | words | [String]? |  yes  | A list of search keywords to search for in the database. |
 | id | String? |  yes  | The UID of the autocomplete config. |

---


 
 
 #### [GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetAutocompleteWordsData](#GetAutocompleteWordsData)]? |  yes  | It is the list of the autocomplete config for the application. |

---


 
 
 #### [Media1](#Media1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [AutocompletePageAction1](#AutocompletePageAction1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the action page. |
 | params | [String: Any]? |  yes  | The parameters associated with the autocomplete page. |
 | url | String? |  yes  | The URL associated with the autocomplete page. |
 | query | [String: Any]? |  yes  | The query associated with the action page. |

---


 
 
 #### [AutocompleteAction1](#AutocompleteAction1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of action. |
 | page | [AutocompletePageAction1](#AutocompletePageAction1)? |  yes  |  |

---


 
 
 #### [AutocompleteResult1](#AutocompleteResult1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | logo | [Media1](#Media1)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | action | [AutocompleteAction1](#AutocompleteAction1)? |  yes  |  |

---


 
 
 #### [CreateAutocompleteKeyword](#CreateAutocompleteKeyword)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  | The ID of the application performing the search. |
 | isActive | Bool? |  yes  | It is a flag that indicate the active status of the config. |
 | results | [[AutocompleteResult1](#AutocompleteResult1)] |  no  | It contains the action page related to the autocomplete keywords. |
 | customJson | [String: Any]? |  yes  | Custom JSON data that can be attached to the search model. |
 | words | [String]? |  yes  | A list of search keywords to search for in the database. |

---


 
 
 #### [UserDetail](#UserDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  | The username of the user. |
 | superUser | Bool? |  yes  | A flag indicating whether the user is a super user. |
 | userId | String |  no  | The user ID of the user. |
 | contact | String? |  yes  | The contact details of the user. |

---


 
 
 #### [RerankingAttribute](#RerankingAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributeValue | String |  no  | The value of the attribute to rerank on. |
 | attributeKey | String |  no  | The key of the attribute to rerank on. |

---


 
 
 #### [BoostBury](#BoostBury)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | boost | [[RerankingAttribute](#RerankingAttribute)]? |  yes  | A list of attributes to boost the relevance of the search results. |

---


 
 
 #### [SearchRerankingModel](#SearchRerankingModel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verifiedBy | [UserDetail](#UserDetail)? |  yes  | User details of the verifier of the document, if applicable |
 | appId | String |  no  | The ID of the application making the search request. |
 | createdBy | [UserDetail](#UserDetail)? |  yes  | User details of the creator of the document |
 | verifiedOn | String? |  yes  | Timestamp of when the document was verified, if applicable |
 | isActive | Bool? |  yes  | A boolean indicating whether the search reranking model is active. |
 | ranking | [BoostBury](#BoostBury)? |  yes  | A schema containing the attributes to boost the relevance of the search results. |
 | modifiedOn | String |  no  | Timestamp of the last modification of the document |
 | createdOn | String |  no  | Timestamp of the creation of the document |
 | modifiedBy | [UserDetail](#UserDetail)? |  yes  | User details of the last modifier of the document |
 | words | [String] |  no  | A list of search keywords. |
 | id | [String: Any]? |  yes  |  |

---


 
 
 #### [SearchRerankListing](#SearchRerankListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[SearchRerankingModel](#SearchRerankingModel)]? |  yes  |  |

---


 
 
 #### [RerankingAttribute1](#RerankingAttribute1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributeValue | String |  no  |  |
 | attributeKey | String |  no  |  |

---


 
 
 #### [BoostBury1](#BoostBury1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | boost | [[RerankingAttribute1](#RerankingAttribute1)]? |  yes  |  |

---


 
 
 #### [CreateSearchReranking](#CreateSearchReranking)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | ranking | [BoostBury1](#BoostBury1)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | words | [String] |  no  |  |

---


 
 
 #### [DeleteRerankResponse](#DeleteRerankResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | It is the succes message. |
 | success | Bool? |  yes  | It is the flag that indicates the success of the action performed. |

---


 
 
 #### [ProductBundleItem](#ProductBundleItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | autoAddToCart | Bool? |  yes  |  |
 | autoSelect | Bool? |  yes  |  |
 | allowRemove | Bool? |  yes  |  |
 | minQuantity | Int |  no  |  |
 | maxQuantity | Int |  no  |  |
 | productUid | Int |  no  |  |

---


 
 
 #### [GetProductBundleCreateResponse](#GetProductBundleCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | isActive | Bool |  no  |  |
 | name | String |  no  |  |
 | choice | String |  no  |  |
 | sameStoreAssignment | Bool? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | logo | String? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)] |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | pageVisibility | [String]? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [GetProductBundleListingResponse](#GetProductBundleListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetProductBundleCreateResponse](#GetProductBundleCreateResponse)]? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  | A detailed error description. |
 | meta | [String: Any]? |  yes  | Additional metadata related to the error. |
 | code | String? |  yes  | The error code. |
 | status | Int? |  yes  | The HTTP status code of the error. |
 | message | String? |  yes  | The error message. |

---


 
 
 #### [ProductBundleRequest](#ProductBundleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | isActive | Bool |  no  |  |
 | name | String |  no  |  |
 | choice | String |  no  |  |
 | sameStoreAssignment | Bool? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | logo | String? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)] |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | pageVisibility | [String]? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [ProductBundleUpdateRequest](#ProductBundleUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | isActive | Bool |  no  |  |
 | name | String |  no  |  |
 | choice | String |  no  |  |
 | sameStoreAssignment | Bool? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | logo | String? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)] |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | pageVisibility | [String]? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [LimitedProductData](#LimitedProductData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [String: Any]? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | identifier | [String: Any]? |  yes  |  |
 | sizes | [String]? |  yes  |  |
 | price | [String: Any]? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | uid | Int? |  yes  |  |
 | images | [String]? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |

---


 
 
 #### [Size](#Size)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isAvailable | Bool? |  yes  |  |
 | display | String? |  yes  |  |
 | value | String? |  yes  |  |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [Price](#Price)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currency | String? |  yes  |  |
 | maxMarked | Double? |  yes  |  |
 | maxEffective | Double? |  yes  |  |
 | minEffective | Double? |  yes  |  |
 | minMarked | Double? |  yes  |  |

---


 
 
 #### [GetProducts](#GetProducts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | autoAddToCart | Bool? |  yes  |  |
 | productDetails | [LimitedProductData](#LimitedProductData)? |  yes  |  |
 | allowRemove | Bool? |  yes  |  |
 | autoSelect | Bool? |  yes  |  |
 | minQuantity | Int? |  yes  |  |
 | maxQuantity | Int? |  yes  |  |
 | sizes | [[Size](#Size)]? |  yes  |  |
 | price | [Price](#Price)? |  yes  |  |
 | productUid | Int? |  yes  |  |

---


 
 
 #### [GetProductBundleResponse](#GetProductBundleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | choice | String? |  yes  |  |
 | sameStoreAssignment | Bool? |  yes  |  |
 | products | [[GetProducts](#GetProducts)]? |  yes  |  |
 | logo | String? |  yes  |  |
 | pageVisibility | [String]? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [ListSizeGuide](#ListSizeGuide)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [String: Any]? |  yes  |  |
 | items | [[String: Any]]? |  yes  |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headers | [String: Any]? |  yes  |  |
 | unit | String? |  yes  |  |
 | values | [[String: Any]]? |  yes  |  |

---


 
 
 #### [Guide](#Guide)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [Meta](#Meta)? |  yes  |  |

---


 
 
 #### [ValidateSizeGuide](#ValidateSizeGuide)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | guide | [Guide](#Guide)? |  yes  |  |
 | image | String? |  yes  |  |
 | name | String |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | tag | String? |  yes  |  |
 | title | String |  no  |  |
 | description | String? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | active | Bool? |  yes  |  |

---


 
 
 #### [SuccessResponse](#SuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [SizeGuideResponse](#SizeGuideResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | guide | [String: Any]? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |
 | id | String? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | tag | String? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | title | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | active | Bool? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [MOQData](#MOQData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minimum | Int? |  yes  |  |
 | maximum | Int? |  yes  |  |
 | incrementUnit | Int? |  yes  |  |

---


 
 
 #### [SEOData](#SEOData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [OwnerAppItemResponse](#OwnerAppItemResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCod | Bool? |  yes  |  |
 | isGift | Bool? |  yes  |  |
 | moq | [MOQData](#MOQData)? |  yes  |  |
 | altText | [String: Any]? |  yes  |  |
 | seo | [SEOData](#SEOData)? |  yes  |  |

---


 
 
 #### [ApplicationItemMOQ](#ApplicationItemMOQ)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minimum | Int? |  yes  | The minimum quantity required for purchase. |
 | maximum | Int? |  yes  | The maximum quantity allowed for purchase. |
 | incrementUnit | Int? |  yes  | The minimum quantity increment in which the item can be purchased. |

---


 
 
 #### [MetaFields](#MetaFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  | The key of the metadata. Should be a non-empty string and length should not exceed 30 characters. |
 | value | String |  no  | The value of the metadata. Should be a non-empty string and length should not exceed 100 characters. |

---


 
 
 #### [ApplicationItemSEO](#ApplicationItemSEO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | The SEO title of the item |
 | description | String? |  yes  | The SEO description of the item |

---


 
 
 #### [ApplicationItemMeta](#ApplicationItemMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCod | Bool? |  yes  | Whether the item is available for Cash on Delivery (COD) or not |
 | isGift | Bool? |  yes  | Whether the item is a gift or not |
 | customJson | [String: Any]? |  yes  | Custom JSON data for the item |
 | moq | [ApplicationItemMOQ](#ApplicationItemMOQ)? |  yes  | Minimum Order Quantity information for the item |
 | altText | [String: Any]? |  yes  | Alternative text for the item's images |
 | customMeta | [[MetaFields](#MetaFields)]? |  yes  | Custom meta fields for the item |
 | seo | [ApplicationItemSEO](#ApplicationItemSEO)? |  yes  | Search Engine Optimization information for the item |

---


 
 
 #### [SuccessResponse1](#SuccessResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [GetConfigMetadataResponse](#GetConfigMetadataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[String: Any]] |  no  |  |
 | condition | [[String: Any]]? |  yes  |  |
 | values | [[String: Any]]? |  yes  |  |

---


 
 
 #### [PageResponseType](#PageResponseType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalCount | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | next | Int |  no  |  |
 | current | Int |  no  |  |

---


 
 
 #### [GetConfigResponse](#GetConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [PageResponseType](#PageResponseType) |  no  |  |
 | data | [[String: Any]] |  no  |  |

---


 
 
 #### [ConfigErrorResponse](#ConfigErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [AttributeDetailsGroup](#AttributeDetailsGroup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int |  no  |  |
 | key | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | name | String |  no  |  |
 | unit | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | displayType | String |  no  |  |

---


 
 
 #### [AppConfigurationDetail](#AppConfigurationDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateSlugs | [String]? |  yes  |  |
 | priority | Int |  no  |  |
 | attributes | [[AttributeDetailsGroup](#AttributeDetailsGroup)]? |  yes  |  |
 | slug | String |  no  |  |
 | isActive | Bool |  no  |  |
 | appId | String |  no  |  |
 | name | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | isDefault | Bool |  no  |  |

---


 
 
 #### [ConfigSuccessResponse](#ConfigSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [AppConfigurationsSort](#AppConfigurationsSort)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int |  no  |  |
 | key | String |  no  |  |
 | isActive | Bool |  no  |  |
 | appId | String |  no  |  |
 | name | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | defaultKey | String |  no  |  |
 | isDefault | Bool |  no  |  |

---


 
 
 #### [AllowSingleRequest](#AllowSingleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allowSingle | Bool |  no  |  |

---


 
 
 #### [DefaultKeyRequest](#DefaultKeyRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | defaultKey | String |  no  |  |

---


 
 
 #### [MetaDataListingFilterMetaResponse](#MetaDataListingFilterMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filterTypes | [String]? |  yes  |  |
 | key | String? |  yes  |  |
 | display | String? |  yes  |  |
 | units | [[String: Any]]? |  yes  |  |

---


 
 
 #### [MetaDataListingFilterResponse](#MetaDataListingFilterResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[MetaDataListingFilterMetaResponse](#MetaDataListingFilterMetaResponse)]? |  yes  |  |

---


 
 
 #### [MetaDataListingSortMetaResponse](#MetaDataListingSortMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | display | String? |  yes  |  |

---


 
 
 #### [MetaDataListingSortResponse](#MetaDataListingSortResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[MetaDataListingSortMetaResponse](#MetaDataListingSortMetaResponse)]? |  yes  |  |

---


 
 
 #### [MetaDataListingResponse](#MetaDataListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filter | [MetaDataListingFilterResponse](#MetaDataListingFilterResponse) |  no  |  |
 | sort | [MetaDataListingSortResponse](#MetaDataListingSortResponse) |  no  |  |

---


 
 
 #### [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | variant | [String: Any]? |  yes  |  |
 | detail | [String: Any]? |  yes  |  |
 | compare | [String: Any]? |  yes  |  |
 | similar | [String: Any]? |  yes  |  |

---


 
 
 #### [GetCatalogConfigurationMetaData](#GetCatalogConfigurationMetaData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | listing | [MetaDataListingResponse](#MetaDataListingResponse)? |  yes  |  |
 | product | [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)? |  yes  |  |

---


 
 
 #### [ConfigurationBucketPoints](#ConfigurationBucketPoints)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | Double? |  yes  |  |
 | display | String? |  yes  |  |
 | end | Double? |  yes  |  |

---


 
 
 #### [ConfigurationListingFilterValue](#ConfigurationListingFilterValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bucketPoints | [[ConfigurationBucketPoints](#ConfigurationBucketPoints)]? |  yes  |  |
 | map | [String: Any]? |  yes  |  |
 | condition | String? |  yes  |  |
 | sort | String? |  yes  |  |
 | value | String? |  yes  |  |
 | mapValues | [[String: Any]]? |  yes  |  |

---


 
 
 #### [ConfigurationListingFilterConfig](#ConfigurationListingFilterConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int |  no  |  |
 | key | String |  no  |  |
 | isActive | Bool |  no  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | type | String |  no  |  |
 | valueConfig | [ConfigurationListingFilterValue](#ConfigurationListingFilterValue)? |  yes  |  |

---


 
 
 #### [ConfigurationListingFilter](#ConfigurationListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributeConfig | [[ConfigurationListingFilterConfig](#ConfigurationListingFilterConfig)]? |  yes  |  |
 | allowSingle | Bool |  no  |  |

---


 
 
 #### [ConfigurationListingSortConfig](#ConfigurationListingSortConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int |  no  |  |
 | key | String |  no  |  |
 | isActive | Bool |  no  |  |
 | name | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [ConfigurationListingSort](#ConfigurationListingSort)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | defaultKey | String |  no  |  |
 | config | [[ConfigurationListingSortConfig](#ConfigurationListingSortConfig)]? |  yes  |  |

---


 
 
 #### [ConfigurationListing](#ConfigurationListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filter | [ConfigurationListingFilter](#ConfigurationListingFilter) |  no  |  |
 | sort | [ConfigurationListingSort](#ConfigurationListingSort) |  no  |  |

---


 
 
 #### [ProductSize](#ProductSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int |  no  |  |
 | min | Int |  no  |  |

---


 
 
 #### [ConfigurationProductVariantConfig](#ConfigurationProductVariantConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int |  no  |  |
 | key | String |  no  |  |
 | size | [ProductSize](#ProductSize) |  no  |  |
 | isActive | Bool |  no  |  |
 | name | String |  no  |  |
 | logo | String? |  yes  |  |
 | displayType | String |  no  |  |

---


 
 
 #### [ConfigurationProductVariant](#ConfigurationProductVariant)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [[ConfigurationProductVariantConfig](#ConfigurationProductVariantConfig)]? |  yes  |  |

---


 
 
 #### [ConfigurationProductConfig](#ConfigurationProductConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int |  no  |  |
 | key | String |  no  |  |
 | size | [ProductSize](#ProductSize)? |  yes  |  |
 | isActive | Bool |  no  |  |
 | subtitle | String? |  yes  |  |
 | title | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [ConfigurationProductSimilar](#ConfigurationProductSimilar)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [[ConfigurationProductConfig](#ConfigurationProductConfig)]? |  yes  |  |

---


 
 
 #### [ConfigurationProduct](#ConfigurationProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | variant | [ConfigurationProductVariant](#ConfigurationProductVariant) |  no  |  |
 | similar | [ConfigurationProductSimilar](#ConfigurationProductSimilar) |  no  |  |

---


 
 
 #### [AppCatalogConfiguration](#AppCatalogConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configId | String? |  yes  |  |
 | configType | String |  no  |  |
 | appId | String |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | listing | [ConfigurationListing](#ConfigurationListing)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | type | String? |  yes  |  |
 | product | [ConfigurationProduct](#ConfigurationProduct)? |  yes  |  |

---


 
 
 #### [GetAppCatalogConfiguration](#GetAppCatalogConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [AppCatalogConfiguration](#AppCatalogConfiguration)? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [AppConfiguration](#AppConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configId | String? |  yes  |  |
 | configType | String |  no  |  |
 | appId | String |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | listing | [ConfigurationListing](#ConfigurationListing)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | type | String? |  yes  |  |
 | product | [ConfigurationProduct](#ConfigurationProduct)? |  yes  |  |

---


 
 
 #### [GetCatalogConfigurationDetailsSchemaListing](#GetCatalogConfigurationDetailsSchemaListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filter | [String: Any]? |  yes  |  |
 | sort | [String: Any]? |  yes  |  |

---


 
 
 #### [EntityConfiguration](#EntityConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configId | String? |  yes  |  |
 | configType | String |  no  |  |
 | appId | String |  no  |  |
 | id | String? |  yes  |  |
 | listing | [GetCatalogConfigurationDetailsSchemaListing](#GetCatalogConfigurationDetailsSchemaListing)? |  yes  |  |
 | product | [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)? |  yes  |  |

---


 
 
 #### [GetAppCatalogEntityConfiguration](#GetAppCatalogEntityConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [EntityConfiguration](#EntityConfiguration)? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [ProductSortOn](#ProductSortOn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  | The display name of the sort on. |
 | name | String? |  yes  | The display name of the sort on. |
 | isSelected | Bool? |  yes  | Indicates whether the sort tag is selected or not. |
 | value | String? |  yes  | The value of the sort on. |
 | logo | String? |  yes  | It is the logo to be shown for the sort in the listing. |

---


 
 
 #### [ProductFiltersKey](#ProductFiltersKey)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  | The display name of the filter tag. |
 | name | String |  no  | The name of the filter tag. |
 | logo | String? |  yes  | This is the logo of the filter. |
 | operators | [String]? |  yes  | This is operators that can be used with the filter tag. |
 | kind | String? |  yes  | This is the type of filter tag. |

---


 
 
 #### [ProductFiltersValue](#ProductFiltersValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  | The display name of the filter value. |
 | currencyCode | String? |  yes  | The currency code associated with the filter value. |
 | max | Int? |  yes  | The maximum value of the filter range. |
 | selectedMax | Int? |  yes  | The selected maximum value of the filter range. |
 | count | Int? |  yes  | The count of items associated with the filter value. |
 | isSelected | Bool |  no  | Indicates whether the filter value is selected or not. |
 | min | Int? |  yes  | The minimum value of the filter range. |
 | displayFormat | String? |  yes  | The display format of the filter value. |
 | value | [String: Any] |  no  | The value of the filter value. |
 | selectedMin | Int? |  yes  | The selected minimum value of the filter range. |
 | currencySymbol | String? |  yes  | The currency symbol associated with the filter value. |
 | queryFormat | String? |  yes  | The query format of the filter value. |

---


 
 
 #### [ProductFilters](#ProductFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | [ProductFiltersKey](#ProductFiltersKey) |  no  | It is the metadata of the filter key. |
 | values | [[ProductFiltersValue](#ProductFiltersValue)] |  no  | It is the list of the values for the filter and the its metadata. |

---


 
 
 #### [GetCollectionQueryOptionResponse](#GetCollectionQueryOptionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | operators | [String: String] |  no  | It is the key-value pair of operators that can be applied on the Product listing. |
 | sortOn | [[ProductSortOn](#ProductSortOn)]? |  yes  | It is the list of sort that can be applied on the items. |
 | filters | [[ProductFilters](#ProductFilters)]? |  yes  | These are list of filter that can be applied on the items. |

---


 
 
 #### [CollectionErrorResponse](#CollectionErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | A descriptive message providing details about the error. |
 | code | Int |  no  | The HTTP status code indicating the error. |
 | errors | [String: Any]? |  yes  | Additional errors related to the request, if applicable. |

---


 
 
 #### [CollectionQuery](#CollectionQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attribute | String |  no  | The attribute of the collection query |
 | op | String |  no  | The operation to be performed on the attribute of the collection query |
 | value | [[String: Any]] |  no  | The value of the attribute of the collection query |

---


 
 
 #### [BannerImage](#BannerImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  | URL of the banner image. |
 | aspectRatio | String? |  yes  | The aspect ratio of the banner image. |
 | type | String? |  yes  | The type of the banner image. |

---


 
 
 #### [ImageUrls](#ImageUrls)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | [BannerImage](#BannerImage)? |  yes  | The banner image in landscape orientation. |
 | portrait | [BannerImage](#BannerImage)? |  yes  | The banner image in portrait orientation. |

---


 
 
 #### [ActionPage](#ActionPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of the action page. |
 | query | [String: Any]? |  yes  | The query associated with the action page. |

---


 
 
 #### [Action](#Action)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of action. |
 | page | [ActionPage](#ActionPage)? |  yes  | The page associated with the action. |

---


 
 
 #### [Media2](#Media2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | type | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [GetCollectionDetailNest](#GetCollectionDetailNest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | [String]? |  yes  | The tags associated with the collection. |
 | type | String? |  yes  | The type of the collection. |
 | sortOn | String? |  yes  | The sort_on attribute on which the collection product will be sorted. |
 | visibleFacetsKeys | [String]? |  yes  | The keys of the visible facets for the collection. |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  | The queries associated with the collection. |
 | banners | [ImageUrls](#ImageUrls)? |  yes  | The URLs and aspect ratios of the collection banners. |
 | slug | String? |  yes  | The slug of the collection. |
 | meta | [String: Any]? |  yes  | Additional metadata for the collection. |
 | cron | [String: Any]? |  yes  | The cron configuration for the collection. |
 | description | String? |  yes  | The description of the collection. |
 | allowSort | Bool? |  yes  | Indicates whether sorting is allowed for the collection. |
 | badge | [String: Any]? |  yes  | The badge configuration for the collection. |
 | action | [Action](#Action)? |  yes  | The action associated with the collection detail. |
 | uid | String? |  yes  | The UID of the collection detail. |
 | allowFacets | Bool? |  yes  | Indicates whether facets are allowed for the collection. |
 | priority | Int? |  yes  | The priority level of the collection. |
 | isActive | Bool? |  yes  | Indicates whether the collection is active or not. |
 | appId | String? |  yes  | It is alphanumeric ID allotted to a sales channel application created within a business account. |
 | name | String? |  yes  | The name of the collection. |
 | schedule | [String: Any]? |  yes  | The schedule configuration for the collection. |
 | logo | [Media2](#Media2)? |  yes  | The logo of the collection. |

---


 
 
 #### [CollectionListingFilterType](#CollectionListingFilterType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  | The display name of the filter tag. |
 | isSelected | Bool? |  yes  | Indicates whether the filter tag is selected or not. |
 | name | String? |  yes  | The name of the filter tag. |

---


 
 
 #### [CollectionListingFilterTag](#CollectionListingFilterTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  | The display name of the filter tag. |
 | isSelected | Bool? |  yes  | Indicates whether the filter tag is selected or not. |
 | name | String? |  yes  | The name of the filter tag. |

---


 
 
 #### [CollectionListingFilter](#CollectionListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | [[CollectionListingFilterType](#CollectionListingFilterType)]? |  yes  | It is the list of filters applicable on the filter listing |
 | tags | [[CollectionListingFilterTag](#CollectionListingFilterTag)]? |  yes  | It is the list of tagas filterable on the collections. |

---


 
 
 #### [GetCollectionListingResponse](#GetCollectionListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetCollectionDetailNest](#GetCollectionDetailNest)]? |  yes  | It is the list of collections. |
 | filters | [CollectionListingFilter](#CollectionListingFilter)? |  yes  | It is the filters to filter the collections. |

---


 
 
 #### [SeoDetail](#SeoDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | It is the title of the collection. |
 | description | String? |  yes  | It is the description that should be used for SEO. |

---


 
 
 #### [CollectionImage](#CollectionImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  | The URL of the item. |
 | aspectRatio | String |  no  | The aspect ratio of the item. |

---


 
 
 #### [CollectionBanner](#CollectionBanner)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | [CollectionImage](#CollectionImage) |  no  | The landscape image of the item. |
 | portrait | [CollectionImage](#CollectionImage) |  no  | The portrait image of the item. |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String? |  yes  | The unique identifier of the user. |
 | email | String? |  yes  | The email address of the user. |
 | userId | String? |  yes  | The user ID of the user. |
 | username | String? |  yes  | The username of the user. |

---


 
 
 #### [CollectionBadge](#CollectionBadge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  | It is the text value of the badge on the collection. |
 | color | String? |  yes  | It is the color of the badge to be shown on the collection. |

---


 
 
 #### [NextSchedule](#NextSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  | The start date and time. |
 | end | String? |  yes  | The end date and time. |

---


 
 
 #### [CollectionSchedule](#CollectionSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | duration | Int? |  yes  | The duration of the collection in minutes. |
 | nextSchedule | [[NextSchedule](#NextSchedule)]? |  yes  | List of next scheduled dates for the collection. |
 | cron | String? |  yes  | The cron expression for scheduling the collection. |
 | start | String? |  yes  | The start date and time of the collection. |
 | end | String? |  yes  | The end date and time of the collection. |

---


 
 
 #### [CreateCollection](#CreateCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  | The tags associated with the collection. |
 | type | String |  no  | The type of the collection. |
 | localeLanguage | [String: Any]? |  yes  | It is translations or language-specific content related to the collection. |
 | sortOn | String? |  yes  | Ihe attribute value on which the products within a collection to be sorted. |
 | visibleFacetsKeys | [String]? |  yes  | The keys of the visible facets for the collection. |
 | seo | [SeoDetail](#SeoDetail)? |  yes  | It contains the SEO detail for the collection. |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  | The queries associated with the collection. |
 | isVisible | Bool? |  yes  | It represents whether the collection is visible on the store front application. |
 | banners | [CollectionBanner](#CollectionBanner) |  no  | The URLs and aspect ratios of the collection banners. |
 | slug | String |  no  | The slug of the collection. |
 | meta | [String: Any]? |  yes  | Additional metadata for the collection. |
 | createdBy | [UserInfo](#UserInfo)? |  yes  |  |
 | description | String? |  yes  | The description of the collection. |
 | allowSort | Bool? |  yes  | Indicates whether sorting is allowed for the collection. |
 | badge | [CollectionBadge](#CollectionBadge)? |  yes  | It is the data of the badge to be shown on the store front collection listing. |
 | allowFacets | Bool? |  yes  | Indicates whether facets are allowed for the collection. |
 | priority | Int? |  yes  | The priority level of the collection. |
 | appId | String |  no  | It is alphanumeric ID allotted to a sales channel application created within a business account. |
 | isActive | Bool? |  yes  | Indicates whether the collection is active or not. |
 | name | String |  no  | The name of the collection. |
 | schedule | [CollectionSchedule](#CollectionSchedule)? |  yes  | The schedule configuration for the collection. |
 | logo | [CollectionImage](#CollectionImage) |  no  | The logo of the collection. |
 | published | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  | It allows for flexibility in adding additional information or attributes that may not be explicitly defined by the existing schema or predefined fields. |
 | modifiedBy | [UserInfo](#UserInfo)? |  yes  |  |

---


 
 
 #### [CollectionCreateResponse](#CollectionCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  | The tags associated with the collection. |
 | type | String? |  yes  | The type of the collection. |
 | sortOn | String? |  yes  | The sort_on attribute on which the collection product will be sorted. |
 | visibleFacetsKeys | [String]? |  yes  | The keys of the visible facets for the collection. |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  | The queries associated with the collection. |
 | banners | [ImageUrls](#ImageUrls)? |  yes  | The URLs and aspect ratios of the collection banners. |
 | slug | String? |  yes  | The slug of the collection. |
 | meta | [String: Any]? |  yes  | Additional metadata for the collection. |
 | cron | [String: Any]? |  yes  | The cron configuration for the collection. |
 | description | String? |  yes  | The description of the collection. |
 | allowSort | Bool? |  yes  | Indicates whether sorting is allowed for the collection. |
 | badge | [String: Any]? |  yes  | The badge configuration for the collection. |
 | allowFacets | Bool? |  yes  | Indicates whether facets are allowed for the collection. |
 | priority | Int? |  yes  | The priority level of the collection. |
 | isActive | Bool? |  yes  | Indicates whether the collection is active or not. |
 | appId | String? |  yes  | It is alphanumeric ID allotted to a sales channel application created within a business account. |
 | name | String? |  yes  | The name of the collection. |
 | schedule | [String: Any]? |  yes  | The schedule configuration for the collection. |
 | logo | [Media2](#Media2)? |  yes  | The logo of the collection. |

---


 
 
 #### [CollectionDetailResponse](#CollectionDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | [String]? |  yes  | The tags associated with the collection. |
 | type | String? |  yes  | The type of the collection. |
 | sortOn | String? |  yes  | The sort_on attribute on which the collection product will be sorted. |
 | visibleFacetsKeys | [String]? |  yes  | The keys of the visible facets for the collection. |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  | The queries associated with the collection. |
 | banners | [ImageUrls](#ImageUrls)? |  yes  | The URLs and aspect ratios of the collection banners. |
 | slug | String? |  yes  | The slug of the collection. |
 | meta | [String: Any]? |  yes  | Additional metadata for the collection. |
 | cron | [String: Any]? |  yes  | The cron configuration for the collection. |
 | description | String? |  yes  | The description of the collection. |
 | allowSort | Bool? |  yes  | Indicates whether sorting is allowed for the collection. |
 | badge | [String: Any]? |  yes  | The badge configuration for the collection. |
 | uid | String? |  yes  | The unique identifier of the collection. |
 | allowFacets | Bool? |  yes  | Indicates whether facets are allowed for the collection. |
 | priority | Int? |  yes  | The priority level of the collection. |
 | isActive | Bool? |  yes  | Indicates whether the collection is active or not. |
 | appId | String? |  yes  | It is alphanumeric ID allotted to a sales channel application created within a business account. |
 | name | String? |  yes  | The name of the collection. |
 | schedule | [String: Any]? |  yes  | The schedule configuration for the collection. |
 | logo | [Media2](#Media2)? |  yes  | The logo of the collection. |

---


 
 
 #### [UpdateCollection](#UpdateCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  | The tags associated with the collection. |
 | type | String? |  yes  | The type of the collection. |
 | localeLanguage | [String: Any]? |  yes  | It is translations or language-specific content related to the collection. |
 | sortOn | String? |  yes  | Ihe attribute value on which the products within a collection to be sorted. |
 | visibleFacetsKeys | [String]? |  yes  | The keys of the visible facets for the collection. |
 | seo | [SeoDetail](#SeoDetail)? |  yes  | It contains the SEO detail for the collection. |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  | The queries associated with the collection. |
 | isVisible | Bool? |  yes  | It represents whether the collection is visible on the store front application. |
 | banners | [CollectionBanner](#CollectionBanner)? |  yes  | The URLs and aspect ratios of the collection banners. |
 | slug | String? |  yes  | The slug of the collection. |
 | meta | [String: Any]? |  yes  | Additional metadata for the collection. |
 | description | String? |  yes  | The description of the collection. |
 | allowSort | Bool? |  yes  | Indicates whether sorting is allowed for the collection. |
 | badge | [CollectionBadge](#CollectionBadge)? |  yes  | It is the data of the badge to be shown on the store front collection listing. |
 | allowFacets | Bool? |  yes  | Indicates whether facets are allowed for the collection. |
 | priority | Int? |  yes  | The priority level of the collection. |
 | isActive | Bool? |  yes  | Indicates whether the collection is active or not. |
 | name | String? |  yes  | The name of the collection. |
 | schedule | [CollectionSchedule](#CollectionSchedule)? |  yes  | The schedule configuration for the collection. |
 | logo | [CollectionImage](#CollectionImage)? |  yes  | The logo of the collection. |
 | published | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  | It allows for flexibility in adding additional information or attributes that may not be explicitly defined by the existing schema or predefined fields. |
 | modifiedBy | [UserInfo](#UserInfo)? |  yes  |  |

---


 
 
 #### [CollectionUpdateImage](#CollectionUpdateImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  | This is the type of the URL. |
 | url | String |  no  | The URL of the item. |

---


 
 
 #### [CollectionUpdateBanner](#CollectionUpdateBanner)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | [CollectionUpdateImage](#CollectionUpdateImage) |  no  | The landscape image of the item. |
 | portrait | [CollectionUpdateImage](#CollectionUpdateImage) |  no  | The portrait image of the item. |

---


 
 
 #### [CollectionUpdateResponse](#CollectionUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  | The tags associated with the collection. |
 | type | String? |  yes  | The type of the collection. |
 | localeLanguage | [String: Any]? |  yes  | It is translations or language-specific content related to the collection. |
 | sortOn | String? |  yes  | Ihe attribute value on which the products within a collection to be sorted. |
 | visibleFacetsKeys | [String]? |  yes  | The keys of the visible facets for the collection. |
 | seo | [SeoDetail](#SeoDetail)? |  yes  | It contains the SEO detail for the collection. |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  | The queries associated with the collection. |
 | isVisible | Bool? |  yes  | It represents whether the collection is visible on the store front application. |
 | banners | [CollectionUpdateBanner](#CollectionUpdateBanner)? |  yes  | The URLs and aspect ratios of the collection banners. |
 | slug | String? |  yes  | The slug of the collection. |
 | meta | [String: Any]? |  yes  | Additional metadata for the collection. |
 | description | String? |  yes  | The description of the collection. |
 | allowSort | Bool? |  yes  | Indicates whether sorting is allowed for the collection. |
 | badge | [CollectionBadge](#CollectionBadge)? |  yes  | It is the data of the badge to be shown on the store front collection listing. |
 | allowFacets | Bool? |  yes  | Indicates whether facets are allowed for the collection. |
 | priority | Int? |  yes  | The priority level of the collection. |
 | isActive | Bool? |  yes  | Indicates whether the collection is active or not. |
 | appId | String? |  yes  | It is alphanumeric ID allotted to a sales channel application created within a business account. |
 | name | String? |  yes  | The name of the collection. |
 | schedule | [CollectionSchedule](#CollectionSchedule)? |  yes  | The schedule configuration for the collection. |
 | logo | [CollectionUpdateImage](#CollectionUpdateImage)? |  yes  | The logo of the collection. |
 | published | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  | It allows for flexibility in adding additional information or attributes that may not be explicitly defined by the existing schema or predefined fields. |
 | modifiedBy | [UserInfo](#UserInfo)? |  yes  |  |

---


 
 
 #### [ProductDetailAttribute](#ProductDetailAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | It is the display type of the attribute in a detail group. |
 | key | String? |  yes  | It is the key of the attribute in a detail group. |
 | value | String? |  yes  | It is the value of the attribute to be displayed in detail group. |

---


 
 
 #### [ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | It is the title of the product detail group. |
 | details | [[ProductDetailAttribute](#ProductDetailAttribute)]? |  yes  | It is the list of attributes in the detail group. |

---


 
 
 #### [Price1](#Price1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencySymbol | String? |  yes  | The currency symbol associated for the currency associated. |
 | max | Double? |  yes  | The maximum value of the price. |
 | min | Double? |  yes  | The minimum value of the price. |
 | currencyCode | String? |  yes  | The currency code associated. |

---


 
 
 #### [ProductListingPrice](#ProductListingPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | effective | [Price1](#Price1)? |  yes  | It is the Effective selling price. |
 | marked | [Price1](#Price1)? |  yes  | It is the Maximum retail price. |

---


 
 
 #### [ProductBrand](#ProductBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  | It is the unique identifier of the brand. |
 | action | [Action](#Action)? |  yes  | It is the page action used to route the navigation. |
 | logo | [Media2](#Media2)? |  yes  | It is the logo of the brand. |
 | name | String? |  yes  | It is the name of the brand of the product. |

---


 
 
 #### [ProductListingDetail](#ProductListingDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellable | Bool? |  yes  |  |
 | hasVariant | Bool? |  yes  | Indicates whether the product has variants or not. |
 | productOnlineDate | String? |  yes  | The date when the product was made available online. |
 | groupedAttributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)]? |  yes  | The grouped attributes of the product. |
 | discount | String? |  yes  |  |
 | similars | [String]? |  yes  | List of similar products. |
 | price | [ProductListingPrice](#ProductListingPrice)? |  yes  |  |
 | type | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  | Additional attributes of the product. |
 | itemCode | String? |  yes  | This is the unique identifier of the Item within a brand. |
 | rating | Double? |  yes  | The rating of the product. |
 | shortDescription | String? |  yes  | The short description of the product. |
 | imageNature | String? |  yes  | The nature of the product image. |
 | promoMeta | [String: Any]? |  yes  | Additional promotional metadata. |
 | slug | String |  no  | The unique slug of the product. |
 | tryouts | [String]? |  yes  | List of tryouts available for the product. |
 | teaserTag | [String: Any]? |  yes  | The teaser tag of the product. |
 | description | String? |  yes  | The description of the product. |
 | medias | [[Media2](#Media2)]? |  yes  |  |
 | itemType | String? |  yes  | The type of item. |
 | highlights | [String]? |  yes  | List of product highlights. |
 | uid | Int? |  yes  | The unique identifier of the product. |
 | brand | [ProductBrand](#ProductBrand)? |  yes  | The brand of the product. |
 | name | String? |  yes  | The name of the product. |
 | color | String? |  yes  | The color of the product. |
 | ratingCount | Int? |  yes  | The count of ratings for the product. |

---


 
 
 #### [GetCollectionItemsResponse](#GetCollectionItemsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  | It is the metadata of the page for pagination. |
 | sortOn | [[ProductSortOn](#ProductSortOn)]? |  yes  | It is the list of sort that can be applied on the items. |
 | items | [[ProductListingDetail](#ProductListingDetail)]? |  yes  | It is the list of items available for the collection. |
 | filters | [[ProductFilters](#ProductFilters)]? |  yes  | These are list of filter that can be applied on the items. |

---


 
 
 #### [CollectionItem](#CollectionItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int |  no  | The ID of the item. |
 | priority | Int? |  yes  | The priority of the item. |
 | action | String |  no  | The action to perform on the item. |

---


 
 
 #### [CollectionItemUpdate](#CollectionItemUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CollectionItem](#CollectionItem)]? |  yes  | List of items to update in the collection. |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  | List of queries to update in the collection. |
 | allowSort | Bool? |  yes  | Flag indicating if sorting is allowed in the collection. |
 | type | String? |  yes  | The type of collection update. |
 | allowFacets | Bool? |  yes  | Flag indicating if facets are allowed in the collection. |
 | visibleFacetsKeys | [String]? |  yes  | List of keys for visible facets in the collection. |

---


 
 
 #### [UpdatedResponse](#UpdatedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | It is the success message of the action. |
 | itemsNotUpdated | [Int]? |  yes  | It is the list of item that are not added in the items of handpick collection. |

---


 
 
 #### [CatalogInsightItem](#CatalogInsightItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | outOfStockCount | Int? |  yes  | The count of items that are out of stock. |
 | count | Int? |  yes  | The total count of items in the catalog. |
 | sellableCount | Int? |  yes  | The count of items that are sellable. |

---


 
 
 #### [CatalogInsightBrand](#CatalogInsightBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | The name of the brand. |
 | totalArticles | Int? |  yes  | The total count of articles for the brand. |
 | articleFreshness | Int? |  yes  | The freshness score of the articles for the brand. |
 | availableSizes | Int? |  yes  | The count of available sizes for the brand. |
 | availableArticles | Int? |  yes  | The count of available articles for the brand. |
 | totalSizes | Int? |  yes  | The total count of sizes for the brand. |

---


 
 
 #### [CatalogInsightResponse](#CatalogInsightResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [CatalogInsightItem](#CatalogInsightItem)? |  yes  | Insight information about catalog items. |
 | brandDistribution | [CatalogInsightBrand](#CatalogInsightBrand)? |  yes  | Distribution information about brands in the catalog. |

---


 
 
 #### [CrossSellingDataResponse](#CrossSellingDataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | products | Int? |  yes  | The count of products for cross-selling. |
 | articles | Int? |  yes  | The count of articles for cross-selling. |

---


 
 
 #### [OptInPostRequest](#OptInPostRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | optLevel | String |  no  |  |
 | companyId | Int? |  yes  |  |
 | platform | String? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [CompanyOptIn](#CompanyOptIn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | [String: Any]? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | brandIds | [Int] |  no  |  |
 | storeIds | [Int] |  no  |  |
 | optLevel | String |  no  |  |
 | modifiedOn | Int |  no  |  |
 | createdOn | Int |  no  |  |
 | companyId | Int |  no  |  |
 | platform | String |  no  |  |
 | enabled | Bool |  no  |  |

---


 
 
 #### [GetOptInPlatform](#GetOptInPlatform)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[CompanyOptIn](#CompanyOptIn)] |  no  |  |

---


 
 
 #### [OptinCompanyDetail](#OptinCompanyDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyType | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | businessType | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [CompanyBrandDetail](#CompanyBrandDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | brandName | String? |  yes  |  |
 | totalArticle | Int? |  yes  |  |

---


 
 
 #### [OptinCompanyBrandDetailsView](#OptinCompanyBrandDetailsView)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[CompanyBrandDetail](#CompanyBrandDetail)]? |  yes  |  |

---


 
 
 #### [OptinCompanyMetrics](#OptinCompanyMetrics)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company | String? |  yes  |  |
 | store | Int? |  yes  |  |
 | brand | Int? |  yes  |  |

---


 
 
 #### [StoreDetail](#StoreDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeCode | String? |  yes  |  |
 | additionalContacts | [[String: Any]]? |  yes  |  |
 | name | String? |  yes  |  |
 | documents | [[String: Any]]? |  yes  |  |
 | displayName | String? |  yes  |  |
 | timing | [String: Any]? |  yes  |  |
 | manager | [String: Any]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | uid | Int? |  yes  |  |
 | address | [String: Any]? |  yes  |  |
 | storeType | String? |  yes  |  |

---


 
 
 #### [OptinStoreDetails](#OptinStoreDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[StoreDetail](#StoreDetail)]? |  yes  |  |

---


 
 
 #### [AttributeSchemaRange](#AttributeSchemaRange)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int? |  yes  |  |
 | min | Int? |  yes  |  |

---


 
 
 #### [AttributeMaster](#AttributeMaster)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multi | Bool? |  yes  |  |
 | allowedValues | [String]? |  yes  |  |
 | mandatory | Bool? |  yes  |  |
 | format | String? |  yes  |  |
 | type | String |  no  |  |
 | range | [AttributeSchemaRange](#AttributeSchemaRange)? |  yes  |  |

---


 
 
 #### [AttributeMasterMandatoryDetails](#AttributeMasterMandatoryDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l3Keys | [String]? |  yes  |  |

---


 
 
 #### [AttributeMasterMeta](#AttributeMasterMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enriched | Bool? |  yes  |  |
 | mandatoryDetails | [AttributeMasterMandatoryDetails](#AttributeMasterMandatoryDetails) |  no  |  |

---


 
 
 #### [AttributeMasterFilter](#AttributeMasterFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int? |  yes  |  |
 | dependsOn | [String]? |  yes  |  |
 | indexing | Bool |  no  |  |

---


 
 
 #### [AttributeMasterDetails](#AttributeMasterDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayType | String |  no  |  |

---


 
 
 #### [GenderDetail](#GenderDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | schema | [AttributeMaster](#AttributeMaster)? |  yes  |  |
 | slug | String? |  yes  |  |
 | meta | [AttributeMasterMeta](#AttributeMasterMeta)? |  yes  |  |
 | name | String? |  yes  |  |
 | enabledForEndConsumer | Bool? |  yes  |  |
 | departments | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | isNested | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | filters | [AttributeMasterFilter](#AttributeMasterFilter)? |  yes  |  |
 | details | [AttributeMasterDetails](#AttributeMasterDetails)? |  yes  |  |

---


 
 
 #### [CategoriesResponse](#CategoriesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | templateSlug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | uid | Int? |  yes  |  |

---


 
 
 #### [ProdcutTemplateCategoriesResponse](#ProdcutTemplateCategoriesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[CategoriesResponse](#CategoriesResponse)]? |  yes  |  |

---


 
 
 #### [PTErrorResponse](#PTErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | code | String? |  yes  |  |
 | errors | [String: Any]? |  yes  |  |
 | status | Int? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [DepartmentPageResponse](#DepartmentPageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasNext | Bool |  no  | Indicates if there is a next page. |
 | size | Int? |  yes  | The number of items per page in number pagination. |
 | nextId | String? |  yes  | The next identifier used in cursor pagination. |
 | itemTotal | Int |  no  | Total number of items. |
 | current | Int? |  yes  | The current page number used in number pagination. |
 | type | String? |  yes  | Specifies the type of pagination being used. |
 | hasPrevious | Bool |  no  | Indicates if there is a previous page. |

---


 
 
 #### [DepartmentModel](#DepartmentModel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cls | String? |  yes  |  |
 | verifiedBy | [UserDetail](#UserDetail)? |  yes  | User details of the verifier of the document, if applicable |
 | slug | String |  no  | The unique slug identifier for the department |
 | createdBy | [UserDetail](#UserDetail)? |  yes  | User details of the creator of the document |
 | verifiedOn | String? |  yes  | Timestamp of when the document was verified, if applicable |
 | name | String |  no  | The name of the department |
 | isActive | Bool? |  yes  | Whether the department is currently active |
 | priorityOrder | Int |  no  | The priority order of the department |
 | synonyms | [String]? |  yes  | A list of synonyms for the department name |
 | logo | String |  no  | The URL of the department's logo |
 | modifiedOn | String |  no  | Timestamp of the last modification of the document |
 | createdOn | String |  no  | Timestamp of the creation of the document |
 | customJson | [String: Any]? |  yes  |  |
 | modifiedBy | [UserDetail](#UserDetail)? |  yes  | User details of the last modifier of the document |
 | uid | Int |  no  | The unique ID for the department |
 | id | [String: Any]? |  yes  |  |

---


 
 
 #### [DepartmentListResponse](#DepartmentListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [DepartmentPageResponse](#DepartmentPageResponse)? |  yes  | Pagination information. |
 | items | [[DepartmentModel](#DepartmentModel)]? |  yes  | The list of departments. |

---


 
 
 #### [DepartmentCreateError](#DepartmentCreateError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String |  no  | A message describing the reason for the error. |

---


 
 
 #### [DepartmentUpdate](#DepartmentUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  | It is the unique list of tags for the department. |
 | slug | String? |  yes  | It is the unique identifier for the department. |
 | priorityOrder | Int |  no  | It is the priority of the department. |
 | isActive | Bool? |  yes  | It flag to identify the active status of department. |
 | name | String |  no  | It is the name of the department. |
 | uid | Int |  no  | It is the uid of the department. |
 | synonyms | [String]? |  yes  | It is the list of unique synonyms to be added for this department. |
 | logo | String |  no  | It is the logo of the department. |
 | customJson | [String: Any]? |  yes  | It is used to store the extra values in the form of JSON for departments. |
 | cls | String? |  yes  | It is the cls of the entity |
 | platform | String? |  yes  | It is the platform this should be for the department |

---


 
 
 #### [ProductTemplate](#ProductTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [String]? |  yes  |  |
 | isExpirable | Bool |  no  |  |
 | slug | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | departments | [String]? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | tag | String? |  yes  |  |
 | categories | [String]? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | isPhysical | Bool |  no  |  |

---


 
 
 #### [TemplatesResponse](#TemplatesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [ProductTemplate](#ProductTemplate)? |  yes  |  |

---


 
 
 #### [Properties](#Properties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String: Any]? |  yes  |  |
 | productGroupTag | [String: Any]? |  yes  |  |
 | currency | [String: Any]? |  yes  |  |
 | productPublish | [String: Any]? |  yes  |  |
 | countryOfOrigin | [String: Any]? |  yes  |  |
 | hsnCode | [String: Any]? |  yes  |  |
 | itemCode | [String: Any]? |  yes  |  |
 | shortDescription | [String: Any]? |  yes  |  |
 | returnConfig | [String: Any]? |  yes  |  |
 | customOrder | [String: Any]? |  yes  |  |
 | slug | [String: Any]? |  yes  |  |
 | isDependent | [String: Any]? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | description | [String: Any]? |  yes  |  |
 | highlights | [String: Any]? |  yes  |  |
 | itemType | [String: Any]? |  yes  |  |
 | traderType | [String: Any]? |  yes  |  |
 | multiSize | [String: Any]? |  yes  |  |
 | isActive | [String: Any]? |  yes  |  |
 | name | [String: Any]? |  yes  |  |
 | categorySlug | [String: Any]? |  yes  |  |
 | sizeGuide | [String: Any]? |  yes  |  |
 | noOfBoxes | [String: Any]? |  yes  |  |
 | trader | [String: Any]? |  yes  |  |
 | command | [String: Any]? |  yes  |  |
 | sizes | [String: Any]? |  yes  |  |
 | brandUid | [String: Any]? |  yes  |  |
 | variants | [String: Any]? |  yes  |  |
 | media | [String: Any]? |  yes  |  |

---


 
 
 #### [GlobalValidation](#GlobalValidation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | properties | [Properties](#Properties)? |  yes  |  |
 | required | [String]? |  yes  |  |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | definitions | [String: Any]? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [TemplateValidationData](#TemplateValidationData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | globalValidation | [GlobalValidation](#GlobalValidation)? |  yes  |  |
 | templateValidation | [String: Any]? |  yes  |  |

---


 
 
 #### [TemplateDetails](#TemplateDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [String]? |  yes  |  |
 | isExpirable | Bool |  no  |  |
 | slug | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | departments | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | tag | String? |  yes  |  |
 | categories | [String]? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | isPhysical | Bool |  no  |  |

---


 
 
 #### [TemplatesValidationResponse](#TemplatesValidationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [TemplateValidationData](#TemplateValidationData)? |  yes  |  |
 | templateDetails | [TemplateDetails](#TemplateDetails)? |  yes  |  |

---


 
 
 #### [InventoryValidationResponse](#InventoryValidationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [HSNData](#HSNData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryOfOrigin | [String]? |  yes  |  |
 | hsnCode | [String]? |  yes  |  |

---


 
 
 #### [HSNCodesResponse](#HSNCodesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | data | [HSNData](#HSNData)? |  yes  |  |

---


 
 
 #### [UserInfo1](#UserInfo1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String? |  yes  | The unique ID of the user. |
 | email | String? |  yes  | The email address of the user. |
 | userId | String? |  yes  | The ID of the user. |
 | username | String? |  yes  | The username of the user. |

---


 
 
 #### [ProductTemplateExportResponse](#ProductTemplateExportResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | completedOn | String? |  yes  | Completion datetime of the job |
 | createdBy | [UserInfo1](#UserInfo1)? |  yes  | The user that created the job. |
 | taskId | String |  no  | The task id of the job. |
 | sellerId | Int |  no  | The seller id that needs to be exported. |
 | status | String? |  yes  | The status of the job. |
 | url | String? |  yes  | The filters that needs to be exported. |
 | notificationEmails | [String]? |  yes  | The notification emails for the job. |
 | modifiedOn | String? |  yes  | Modification date of the job |
 | filters | [String: Any]? |  yes  | The filters that needs to be exported. |
 | type | String? |  yes  | The type of file that needs to be exported. |

---


 
 
 #### [ProductDownloadsResponse](#ProductDownloadsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductTemplateExportResponse](#ProductTemplateExportResponse)]? |  yes  | The items of the job. |

---


 
 
 #### [ProductTemplateExportFilterRequest](#ProductTemplateExportFilterRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | [String]? |  yes  | The list of the brands that needs to be exported. |
 | fromDate | String? |  yes  | The modified on date from which the data needs to be exported. |
 | toDate | String? |  yes  | The modified on date till when the data needs to be exported. |
 | catalogueTypes | [String] |  no  | The list of the type of the catalog such as set, standard and composite. |
 | templates | [String] |  no  | The list of the templates that needs to be exported. |

---


 
 
 #### [ProductTemplateDownloadsExport](#ProductTemplateDownloadsExport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | This is the type of the file for the export. |
 | notificationEmails | [String]? |  yes  | The list of the emails to be notified after the completion of the job. |
 | filters | [ProductTemplateExportFilterRequest](#ProductTemplateExportFilterRequest)? |  yes  | This is the filters of the file for the export. |

---


 
 
 #### [ProductConfigurationDownloads](#ProductConfigurationDownloads)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[String: Any]]? |  yes  |  |
 | multivalue | Bool? |  yes  |  |

---


 
 
 #### [CategoryMappingValues](#CategoryMappingValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | catalogId | Int? |  yes  |  |
 | name | String |  no  |  |

---


 
 
 #### [CategoryMapping](#CategoryMapping)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [CategoryMappingValues](#CategoryMappingValues)? |  yes  |  |
 | ajio | [CategoryMappingValues](#CategoryMappingValues)? |  yes  |  |
 | google | [CategoryMappingValues](#CategoryMappingValues)? |  yes  |  |

---


 
 
 #### [Hierarchy](#Hierarchy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l1 | Int |  no  |  |
 | department | Int |  no  |  |
 | l2 | Int |  no  |  |

---


 
 
 #### [Media3](#Media3)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String |  no  |  |
 | landscape | String |  no  |  |
 | portrait | String |  no  |  |

---


 
 
 #### [Category](#Category)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int? |  yes  |  |
 | level | Int |  no  |  |
 | slug | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | tryouts | [String]? |  yes  |  |
 | name | String |  no  |  |
 | departments | [Int] |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | synonyms | [String]? |  yes  |  |
 | marketplaces | [CategoryMapping](#CategoryMapping)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | hierarchy | [[Hierarchy](#Hierarchy)]? |  yes  |  |
 | media | [Media3](#Media3)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | uid | Int? |  yes  |  |

---


 
 
 #### [CategoryResponse](#CategoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[Category](#Category)]? |  yes  |  |

---


 
 
 #### [CategoryRequestBody](#CategoryRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int? |  yes  |  |
 | level | Int |  no  |  |
 | slug | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | tryouts | [String]? |  yes  |  |
 | name | String |  no  |  |
 | departments | [Int] |  no  |  |
 | synonyms | [String]? |  yes  |  |
 | marketplaces | [CategoryMapping](#CategoryMapping)? |  yes  |  |
 | media | [Media3](#Media3)? |  yes  |  |
 | hierarchy | [[Hierarchy](#Hierarchy)]? |  yes  |  |

---


 
 
 #### [CategoryCreateResponse](#CategoryCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | uid | Int? |  yes  |  |

---


 
 
 #### [CategoryUpdateResponse](#CategoryUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [SingleCategoryResponse](#SingleCategoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [Category](#Category)? |  yes  |  |

---


 
 
 #### [VerifiedBy](#VerifiedBy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [ProductPublish](#ProductPublish)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSet | Bool? |  yes  |  |
 | productOnlineDate | String? |  yes  |  |

---


 
 
 #### [ReturnConfigResponse](#ReturnConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | time | Int? |  yes  |  |

---


 
 
 #### [Image](#Image)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | aspectRatio | String? |  yes  |  |
 | aspectRatioF | Double? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [NetQuantityResponse](#NetQuantityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unit | String? |  yes  |  |
 | value | Double? |  yes  |  |

---


 
 
 #### [Logo](#Logo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | aspectRatio | String? |  yes  |  |
 | aspectRatioF | Int? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | logo | [Logo](#Logo)? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [Trader](#Trader)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | address | [String]? |  yes  |  |
 | name | String |  no  |  |

---


 
 
 #### [ProductSchemaV2](#ProductSchemaV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  |  |
 | productGroupTag | [String]? |  yes  |  |
 | verifiedBy | [VerifiedBy](#VerifiedBy)? |  yes  |  |
 | currency | String? |  yes  |  |
 | productPublish | [ProductPublish](#ProductPublish)? |  yes  |  |
 | allSizes | [[String: Any]]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | variantGroup | [String: Any]? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | returnConfig | [ReturnConfigResponse](#ReturnConfigResponse)? |  yes  |  |
 | imageNature | String? |  yes  |  |
 | l3Mapping | [String]? |  yes  |  |
 | pending | String? |  yes  |  |
 | allIdentifiers | [String]? |  yes  |  |
 | customOrder | [String: Any]? |  yes  |  |
 | category | [String: Any]? |  yes  |  |
 | variantMedia | [String: Any]? |  yes  |  |
 | templateTag | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | isDependent | Bool? |  yes  |  |
 | taxIdentifier | [String: Any]? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | description | String? |  yes  |  |
 | isImageLessProduct | Bool? |  yes  |  |
 | highlights | [String]? |  yes  |  |
 | itemType | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | images | [[Image](#Image)]? |  yes  |  |
 | netQuantity | [NetQuantityResponse](#NetQuantityResponse)? |  yes  |  |
 | brand | [Brand](#Brand)? |  yes  |  |
 | moq | [String: Any]? |  yes  |  |
 | multiSize | Bool? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | primaryColor | String? |  yes  |  |
 | isExpirable | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | allCompanyIds | [Int]? |  yes  |  |
 | name | String? |  yes  |  |
 | departments | [Int]? |  yes  |  |
 | categorySlug | String? |  yes  |  |
 | sizeGuide | String? |  yes  |  |
 | id | String? |  yes  |  |
 | color | String? |  yes  |  |
 | noOfBoxes | Int? |  yes  |  |
 | trader | [[Trader](#Trader)]? |  yes  |  |
 | sizes | [[String: Any]]? |  yes  |  |
 | categoryUid | Int? |  yes  |  |
 | brandUid | Int? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | media | [[Media2](#Media2)]? |  yes  |  |
 | variants | [String: Any]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | isPhysical | Bool? |  yes  |  |
 | stage | String? |  yes  |  |

---


 
 
 #### [ProductListingResponseV2](#ProductListingResponseV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[ProductSchemaV2](#ProductSchemaV2)]? |  yes  |  |

---


 
 
 #### [ProductPublish1](#ProductPublish1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSet | Bool? |  yes  |  |
 | productOnlineDate | String? |  yes  |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool |  no  |  |
 | unit | String |  no  |  |
 | time | Int |  no  |  |

---


 
 
 #### [CustomOrder](#CustomOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manufacturingTime | Int? |  yes  |  |
 | manufacturingTimeUnit | String? |  yes  |  |
 | isCustomOrder | Bool? |  yes  |  |

---


 
 
 #### [TaxIdentifier](#TaxIdentifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reportingHsn | String? |  yes  |  |
 | hsnCodeId | String? |  yes  |  |
 | hsnCode | String? |  yes  |  |

---


 
 
 #### [TeaserTag](#TeaserTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [NetQuantity](#NetQuantity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unit | String? |  yes  | The unit of measurement used for the net quantity of the product. |
 | value | Double? |  yes  | The value of the net quantity of the product. |

---


 
 
 #### [ProductCreateUpdateSchemaV2](#ProductCreateUpdateSchemaV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  |  |
 | productGroupTag | [String]? |  yes  |  |
 | currency | String |  no  |  |
 | productPublish | [ProductPublish1](#ProductPublish1)? |  yes  |  |
 | requester | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | countryOfOrigin | String |  no  |  |
 | itemCode | String |  no  |  |
 | attributes | [String: Any]? |  yes  |  |
 | variantGroup | [String: Any]? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | returnConfig | [ReturnConfig](#ReturnConfig) |  no  |  |
 | changeRequestId | [String: Any]? |  yes  |  |
 | customOrder | [CustomOrder](#CustomOrder)? |  yes  |  |
 | variantMedia | [String: Any]? |  yes  |  |
 | templateTag | String |  no  |  |
 | slug | String |  no  |  |
 | taxIdentifier | [TaxIdentifier](#TaxIdentifier) |  no  |  |
 | isDependent | Bool? |  yes  |  |
 | teaserTag | [TeaserTag](#TeaserTag)? |  yes  |  |
 | bulkJobId | String? |  yes  |  |
 | description | String? |  yes  |  |
 | isImageLessProduct | Bool? |  yes  |  |
 | highlights | [String]? |  yes  |  |
 | companyId | Int |  no  |  |
 | uid | Int? |  yes  |  |
 | itemType | String |  no  |  |
 | action | String? |  yes  |  |
 | netQuantity | [NetQuantity](#NetQuantity)? |  yes  |  |
 | multiSize | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | categorySlug | String |  no  |  |
 | name | String |  no  |  |
 | departments | [Int] |  no  |  |
 | sizeGuide | String? |  yes  |  |
 | noOfBoxes | Int? |  yes  |  |
 | trader | [[Trader](#Trader)] |  no  |  |
 | sizes | [[String: Any]] |  no  |  |
 | brandUid | Int |  no  |  |
 | variants | [String: Any]? |  yes  |  |
 | media | [[Media2](#Media2)]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [ProductVariants](#ProductVariants)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCode | String? |  yes  |  |
 | name | String? |  yes  |  |
 | categoryUid | Int? |  yes  |  |
 | brandUid | Int? |  yes  |  |
 | media | [[Media2](#Media2)]? |  yes  |  |
 | uid | Int? |  yes  |  |

---


 
 
 #### [ProductVariantsResponse](#ProductVariantsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | variants | [[ProductVariants](#ProductVariants)]? |  yes  |  |

---


 
 
 #### [AttributeMasterSerializer](#AttributeMasterSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | variant | Bool? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | schema | [AttributeMaster](#AttributeMaster) |  no  |  |
 | createdOn | String? |  yes  |  |
 | details | [AttributeMasterDetails](#AttributeMasterDetails) |  no  |  |
 | enabledForEndConsumer | Bool? |  yes  |  |
 | rawKey | String? |  yes  |  |
 | suggestion | String? |  yes  |  |
 | slug | String |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | isNested | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | filters | [AttributeMasterFilter](#AttributeMasterFilter) |  no  |  |
 | example | String? |  yes  |  |
 | name | String? |  yes  |  |
 | departments | [String] |  no  |  |
 | unit | String? |  yes  |  |
 | synonyms | [String: Any]? |  yes  |  |
 | logo | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |

---


 
 
 #### [ProductAttributesResponse](#ProductAttributesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AttributeMasterSerializer](#AttributeMasterSerializer)] |  no  |  |

---


 
 
 #### [SingleProductResponse](#SingleProductResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [ProductSchemaV2](#ProductSchemaV2)? |  yes  |  |

---


 
 
 #### [ValidateIdentifier](#ValidateIdentifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gtinType | String |  no  |  |
 | primary | Bool? |  yes  |  |
 | gtinValue | String |  no  |  |

---


 
 
 #### [AllSizes](#AllSizes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemWeightUnitOfMeasure | String |  no  |  |
 | itemDimensionsUnitOfMeasure | String |  no  |  |
 | identifiers | [[ValidateIdentifier](#ValidateIdentifier)]? |  yes  |  |
 | size | String |  no  |  |
 | itemLength | Double |  no  |  |
 | itemHeight | Double |  no  |  |
 | itemWidth | Double |  no  |  |
 | itemWeight | Double |  no  |  |

---


 
 
 #### [GetAllSizes](#GetAllSizes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allSizes | [[AllSizes](#AllSizes)]? |  yes  |  |

---


 
 
 #### [ValidateProduct](#ValidateProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | valid | Bool? |  yes  |  |

---


 
 
 #### [ProductPublished](#ProductPublished)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSet | Bool? |  yes  |  |
 | productOnlineDate | Int? |  yes  |  |

---


 
 
 #### [Product](#Product)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  |  |
 | productGroupTag | [String]? |  yes  |  |
 | verifiedBy | [VerifiedBy](#VerifiedBy)? |  yes  |  |
 | currency | String? |  yes  |  |
 | productPublish | [ProductPublished](#ProductPublished)? |  yes  |  |
 | allSizes | [[String: Any]]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | variantGroup | [String: Any]? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | returnConfig | [ReturnConfigResponse](#ReturnConfigResponse)? |  yes  |  |
 | imageNature | String? |  yes  |  |
 | l3Mapping | [String]? |  yes  |  |
 | pending | String? |  yes  |  |
 | allIdentifiers | [String]? |  yes  |  |
 | customOrder | [String: Any]? |  yes  |  |
 | category | [String: Any]? |  yes  |  |
 | variantMedia | [String: Any]? |  yes  |  |
 | templateTag | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | isDependent | Bool? |  yes  |  |
 | taxIdentifier | [String: Any]? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | description | String? |  yes  |  |
 | isImageLessProduct | Bool? |  yes  |  |
 | highlights | [String]? |  yes  |  |
 | itemType | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | images | [[Image](#Image)]? |  yes  |  |
 | netQuantity | [NetQuantityResponse](#NetQuantityResponse)? |  yes  |  |
 | brand | [Brand](#Brand)? |  yes  |  |
 | moq | [String: Any]? |  yes  |  |
 | multiSize | Bool? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | primaryColor | String? |  yes  |  |
 | isExpirable | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | allCompanyIds | [Int]? |  yes  |  |
 | name | String? |  yes  |  |
 | departments | [Int]? |  yes  |  |
 | categorySlug | String? |  yes  |  |
 | sizeGuide | String? |  yes  |  |
 | id | String? |  yes  |  |
 | color | String? |  yes  |  |
 | noOfBoxes | Int? |  yes  |  |
 | trader | [[Trader](#Trader)]? |  yes  |  |
 | sizes | [[String: Any]]? |  yes  |  |
 | categoryUid | Int? |  yes  |  |
 | brandUid | Int? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | media | [[Media2](#Media2)]? |  yes  |  |
 | variants | [String: Any]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | isPhysical | Bool? |  yes  |  |
 | stage | String? |  yes  |  |

---


 
 
 #### [ProductListingResponse](#ProductListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[Product](#Product)]? |  yes  |  |

---


 
 
 #### [UserDetail1](#UserDetail1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | fullName | String? |  yes  |  |

---


 
 
 #### [ProductBulkRequest](#ProductBulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateTag | String? |  yes  |  |
 | failed | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | createdBy | [UserDetail1](#UserDetail1)? |  yes  |  |
 | template | [ProductTemplate](#ProductTemplate)? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | modifiedBy | [UserDetail1](#UserDetail1)? |  yes  |  |
 | failedRecords | [String]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | stage | String? |  yes  |  |
 | cancelledRecords | [String]? |  yes  |  |

---


 
 
 #### [ProductBulkRequestList](#ProductBulkRequestList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [ProductBulkRequest](#ProductBulkRequest)? |  yes  |  |

---


 
 
 #### [BulkJob](#BulkJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateTag | String? |  yes  |  |
 | failed | Int? |  yes  |  |
 | isActive | Bool? |  yes  | Whether the item is active or not. |
 | createdBy | [UserInfo1](#UserInfo1)? |  yes  | The user who created the item. |
 | customTemplateTag | String? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | cancelledRecords | [[String: Any]]? |  yes  |  |
 | failedRecords | [[String: Any]]? |  yes  |  |
 | modifiedOn | String? |  yes  | The date and time when the item was last modified. |
 | createdOn | String |  no  | The date and time when the item was created. |
 | filePath | String? |  yes  |  |
 | modifiedBy | [UserInfo1](#UserInfo1)? |  yes  | The user who last modified the item. |
 | total | Int? |  yes  |  |
 | trackingUrl | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | companyId | Int |  no  |  |

---


 
 
 #### [BulkResponse](#BulkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  | Whether the item is active or not. |
 | createdBy | [UserInfo1](#UserInfo1)? |  yes  | The user who created the item. |
 | batchId | String |  no  |  |
 | modifiedOn | String? |  yes  | The date and time when the item was last modified. |
 | createdOn | String |  no  | The date and time when the item was created. |
 | modifiedBy | [UserInfo1](#UserInfo1)? |  yes  | The user who last modified the item. |

---


 
 
 #### [BulkProductRequest](#BulkProductRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int |  no  |  |
 | templateTag | String |  no  |  |
 | data | [[String: Any]] |  no  |  |
 | batchId | String |  no  |  |

---


 
 
 #### [ProductTagsViewResponse](#ProductTagsViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [String]? |  yes  |  |

---


 
 
 #### [UserCommon](#UserCommon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [Items](#Items)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failed | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | createdBy | [UserCommon](#UserCommon)? |  yes  |  |
 | id | String? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | failedRecords | [String]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedBy | [UserCommon](#UserCommon)? |  yes  |  |
 | total | Int? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | trackingUrl | String? |  yes  |  |
 | retry | Int? |  yes  |  |
 | stage | String? |  yes  |  |
 | cancelledRecords | [String]? |  yes  |  |

---


 
 
 #### [BulkAssetResponse](#BulkAssetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[Items](#Items)]? |  yes  |  |

---


 
 
 #### [ProductBulkAssets](#ProductBulkAssets)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | user | [String: Any] |  no  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [ProductSizeDeleteDataResponse](#ProductSizeDeleteDataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int? |  yes  |  |
 | size | String? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [ProductSizeDeleteResponse](#ProductSizeDeleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [ProductSizeDeleteDataResponse](#ProductSizeDeleteDataResponse)? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [InventoryResponse](#InventoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int? |  yes  |  |
 | identifiers | [String: Any]? |  yes  |  |
 | size | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | inventoryUpdatedOn | String? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | priceTransfer | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | price | Double? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | store | [String: Any]? |  yes  |  |
 | sellableQuantity | Int? |  yes  |  |

---


 
 
 #### [InventoryResponsePaginated](#InventoryResponsePaginated)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[InventoryResponse](#InventoryResponse)]? |  yes  |  |

---


 
 
 #### [GTIN](#GTIN)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gtinType | String |  no  |  |
 | primary | Bool? |  yes  |  |
 | gtinValue | String |  no  |  |

---


 
 
 #### [SetSize](#SetSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String |  no  |  |
 | pieces | Int |  no  |  |

---


 
 
 #### [SizeDistribution](#SizeDistribution)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizes | [[SetSize](#SetSize)] |  no  |  |

---


 
 
 #### [InventorySet](#InventorySet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | sizeDistribution | [SizeDistribution](#SizeDistribution) |  no  |  |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [InvSize](#InvSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemWeightUnitOfMeasure | String? |  yes  |  |
 | itemDimensionsUnitOfMeasure | String? |  yes  |  |
 | expirationDate | String? |  yes  |  |
 | identifiers | [[GTIN](#GTIN)] |  no  |  |
 | size | String |  no  |  |
 | storeCode | String |  no  |  |
 | itemLength | Double? |  yes  |  |
 | currency | String |  no  |  |
 | itemHeight | Double? |  yes  |  |
 | itemWidth | Double? |  yes  |  |
 | set | [InventorySet](#InventorySet)? |  yes  |  |
 | priceTransfer | Double? |  yes  |  |
 | priceEffective | Double |  no  |  |
 | price | Double? |  yes  |  |
 | quantity | Int |  no  |  |
 | isSet | Bool? |  yes  |  |
 | itemWeight | Double? |  yes  |  |

---


 
 
 #### [ItemQuery](#ItemQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | brandUid | Int? |  yes  |  |

---


 
 
 #### [InventoryRequest](#InventoryRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int |  no  |  |
 | sizes | [[InvSize](#InvSize)] |  no  |  |
 | item | [ItemQuery](#ItemQuery) |  no  |  |

---


 
 
 #### [PriceMeta](#PriceMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | tpNotes | [String: Any]? |  yes  |  |
 | effective | Double |  no  |  |
 | currency | String |  no  |  |
 | transfer | Double |  no  |  |
 | marked | Double |  no  |  |

---


 
 
 #### [WeightResponse](#WeightResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipping | Double |  no  |  |
 | unit | String |  no  |  |
 | isDefault | Bool |  no  |  |

---


 
 
 #### [StoreMeta](#StoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |

---


 
 
 #### [CompanyMeta](#CompanyMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |

---


 
 
 #### [ReturnConfig1](#ReturnConfig1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | time | Int? |  yes  |  |

---


 
 
 #### [UserSerializer](#UserSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | contact | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [QuantityBase](#QuantityBase)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | count | Int? |  yes  |  |

---


 
 
 #### [Quantities](#Quantities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellable | [QuantityBase](#QuantityBase)? |  yes  |  |
 | notAvailable | [QuantityBase](#QuantityBase)? |  yes  |  |
 | damaged | [QuantityBase](#QuantityBase)? |  yes  |  |
 | orderCommitted | [QuantityBase](#QuantityBase)? |  yes  |  |

---


 
 
 #### [BrandMeta](#BrandMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | id | Int |  no  |  |

---


 
 
 #### [ManufacturerResponse](#ManufacturerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | isDefault | Bool |  no  |  |
 | address | String |  no  |  |

---


 
 
 #### [Trader1](#Trader1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | address | [String] |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [DimensionResponse](#DimensionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | height | Double |  no  |  |
 | length | Double |  no  |  |
 | unit | String |  no  |  |
 | width | Double |  no  |  |
 | isDefault | Bool |  no  |  |

---


 
 
 #### [InventorySellerResponse](#InventorySellerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  |  |
 | fyndArticleCode | String |  no  |  |
 | set | [InventorySet](#InventorySet)? |  yes  |  |
 | totalQuantity | Int |  no  |  |
 | price | [PriceMeta](#PriceMeta) |  no  |  |
 | weight | [WeightResponse](#WeightResponse) |  no  |  |
 | store | [StoreMeta](#StoreMeta) |  no  |  |
 | isSet | Bool? |  yes  |  |
 | countryOfOrigin | String |  no  |  |
 | company | [CompanyMeta](#CompanyMeta) |  no  |  |
 | returnConfig | [ReturnConfig1](#ReturnConfig1)? |  yes  |  |
 | traceId | String? |  yes  |  |
 | fyndMeta | [String: Any]? |  yes  |  |
 | size | String |  no  |  |
 | fragile | Bool |  no  |  |
 | taxIdentifier | [String: Any]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | identifier | [String: Any] |  no  |  |
 | uid | String |  no  |  |
 | fyndItemCode | String |  no  |  |
 | quantities | [Quantities](#Quantities)? |  yes  |  |
 | brand | [BrandMeta](#BrandMeta) |  no  |  |
 | itemId | Int |  no  |  |
 | expirationDate | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | trackInventory | Bool? |  yes  |  |
 | manufacturer | [ManufacturerResponse](#ManufacturerResponse) |  no  |  |
 | trader | [[Trader1](#Trader1)]? |  yes  |  |
 | rawMeta | [String: Any]? |  yes  |  |
 | addedOnStore | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | dimension | [DimensionResponse](#DimensionResponse) |  no  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | stage | String? |  yes  |  |

---


 
 
 #### [InventorySellerIdentifierResponsePaginated](#InventorySellerIdentifierResponsePaginated)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[InventorySellerResponse](#InventorySellerResponse)]? |  yes  |  |

---


 
 
 #### [PriceArticle](#PriceArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tpNotes | [String: Any]? |  yes  |  |
 | effective | Double? |  yes  |  |
 | currency | String? |  yes  |  |
 | transfer | Double? |  yes  |  |
 | marked | Double? |  yes  |  |

---


 
 
 #### [WeightResponse1](#WeightResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipping | Double? |  yes  |  |
 | unit | String? |  yes  |  |

---


 
 
 #### [ArticleStoreResponse](#ArticleStoreResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeCode | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | storeType | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [DateMeta](#DateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addedOnStore | String? |  yes  |  |
 | inventoryUpdatedOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |

---


 
 
 #### [CompanyMeta1](#CompanyMeta1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |

---


 
 
 #### [ReturnConfig2](#ReturnConfig2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | time | Int? |  yes  |  |

---


 
 
 #### [Quantity](#Quantity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |

---


 
 
 #### [QuantitiesArticle](#QuantitiesArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellable | [Quantity](#Quantity)? |  yes  |  |
 | notAvailable | [Quantity](#Quantity)? |  yes  |  |
 | damaged | [Quantity](#Quantity)? |  yes  |  |
 | orderCommitted | [Quantity](#Quantity)? |  yes  |  |

---


 
 
 #### [BrandMeta1](#BrandMeta1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [ManufacturerResponse1](#ManufacturerResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | address | String? |  yes  |  |

---


 
 
 #### [Trader2](#Trader2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | address | [String]? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [DimensionResponse1](#DimensionResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | length | Double? |  yes  |  |
 | unit | String? |  yes  |  |
 | height | Double? |  yes  |  |
 | width | Double? |  yes  |  |

---


 
 
 #### [GetInventories](#GetInventories)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  |  |
 | totalQuantity | Int? |  yes  |  |
 | price | [PriceArticle](#PriceArticle)? |  yes  |  |
 | weight | [WeightResponse1](#WeightResponse1)? |  yes  |  |
 | store | [ArticleStoreResponse](#ArticleStoreResponse)? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |
 | company | [CompanyMeta1](#CompanyMeta1)? |  yes  |  |
 | inventoryUpdatedOn | String? |  yes  |  |
 | returnConfig | [ReturnConfig2](#ReturnConfig2)? |  yes  |  |
 | traceId | String? |  yes  |  |
 | platforms | [String: Any]? |  yes  |  |
 | size | String? |  yes  |  |
 | taxIdentifier | [String: Any]? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | identifier | [String: Any]? |  yes  |  |
 | quantities | [QuantitiesArticle](#QuantitiesArticle)? |  yes  |  |
 | uid | String? |  yes  |  |
 | brand | [BrandMeta1](#BrandMeta1)? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | expirationDate | String? |  yes  |  |
 | id | String? |  yes  |  |
 | trackInventory | Bool? |  yes  |  |
 | manufacturer | [ManufacturerResponse1](#ManufacturerResponse1)? |  yes  |  |
 | trader | [[Trader2](#Trader2)]? |  yes  |  |
 | dimension | [DimensionResponse1](#DimensionResponse1)? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | stage | String? |  yes  |  |

---


 
 
 #### [GetInventoriesResponse](#GetInventoriesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetInventories](#GetInventories)]? |  yes  |  |

---


 
 
 #### [BulkInventoryGetItems](#BulkInventoryGetItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failed | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | failedRecords | [String]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | stage | String? |  yes  |  |
 | cancelledRecords | [String]? |  yes  |  |

---


 
 
 #### [BulkInventoryGet](#BulkInventoryGet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[BulkInventoryGetItems](#BulkInventoryGetItems)]? |  yes  |  |

---


 
 
 #### [InventoryJobPayload](#InventoryJobPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expirationDate | String? |  yes  |  |
 | storeCode | String |  no  |  |
 | itemDimensionsUnitOfMeasure | String? |  yes  |  |
 | itemWeightUnitOfMeasure | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | currency | String? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | totalQuantity | Int? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | price | Double? |  yes  |  |
 | traceId | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | priceMarked | Double? |  yes  |  |

---


 
 
 #### [InventoryBulkRequest](#InventoryBulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int |  no  |  |
 | sizes | [[InventoryJobPayload](#InventoryJobPayload)] |  no  |  |
 | batchId | String |  no  |  |
 | user | [String: Any]? |  yes  |  |

---


 
 
 #### [InventoryExportQuantityFilter](#InventoryExportQuantityFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int? |  yes  | The maximum quantity that needs to be exported. |
 | operators | String |  no  | Condition for the quantity that needs to be exported. |
 | min | Int? |  yes  | The minimum quantity that needs to be exported. |

---


 
 
 #### [InventoryExportAdvanceOption](#InventoryExportAdvanceOption)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | fromDate | String? |  yes  |  |
 | toDate | String? |  yes  |  |
 | quantity | [InventoryExportQuantityFilter](#InventoryExportQuantityFilter)? |  yes  |  |

---


 
 
 #### [InventoryExportJob](#InventoryExportJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | completedOn | String? |  yes  | Completion datetime of the job. |
 | taskId | String |  no  | The task id of the job. |
 | sellerId | Int |  no  | The seller id that needs to be exported. |
 | status | String? |  yes  | The status of the job. |
 | url | String? |  yes  | URL odf the exported file. |
 | notificationEmails | [String]? |  yes  | The notification emails for the job. |
 | filters | [InventoryExportAdvanceOption](#InventoryExportAdvanceOption)? |  yes  | The filters that needs to be exported. |
 | type | String |  no  | The type of file that needs to be exported. |

---


 
 
 #### [InventoryExportRequest](#InventoryExportRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | store | [Int]? |  yes  |  |
 | brand | [Int]? |  yes  |  |

---


 
 
 #### [InventoryExportResponse](#InventoryExportResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String? |  yes  | The user that created the job. |
 | taskId | String |  no  | The task id of the job. |
 | sellerId | Int |  no  | The seller id that needs to be exported. |
 | status | String? |  yes  | The status of the job. |
 | notificationEmails | [String]? |  yes  | The notification emails for the job. |
 | modifiedOn | String? |  yes  | Modification date of the job |
 | createdOn | String? |  yes  | Creation datetime of the job |
 | filters | [String: Any]? |  yes  | The filters that needs to be exported. |
 | type | String? |  yes  | The type of file that needs to be exported. |

---


 
 
 #### [InventoryJobFilters](#InventoryJobFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stores | [String]? |  yes  | The list of all the store selected. |
 | brands | [String]? |  yes  | The list of all the brands selected. |
 | fromDate | String? |  yes  | The modified on date from which the data needs to be exported. |
 | toDate | String? |  yes  | The modified on date till when the data needs to be exported. |
 | quantity | [InventoryExportQuantityFilter](#InventoryExportQuantityFilter)? |  yes  | The quantity range that needs to be exported. |

---


 
 
 #### [InventoryJobDetailResponse](#InventoryJobDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | completedOn | String? |  yes  | This is the timestamp of the completion for this job. |
 | createdBy | [UserDetail](#UserDetail)? |  yes  | This is the user detail of the user who cancelled the job. |
 | taskId | String |  no  | This is the task id of the jobs that is used for search. |
 | id | String |  no  | This is the ID of the job. |
 | sellerId | Int |  no  | This ID of the company. |
 | status | String? |  yes  | This tells you the current status of the export job. |
 | cancelledBy | [UserDetail](#UserDetail)? |  yes  | This is the user detail of the user who cancelled the job. |
 | url | String |  no  | This is the url to download the export. |
 | notificationEmails | [String]? |  yes  | User email to get notification post completion of the job. |
 | modifiedOn | String? |  yes  | This is the timestamp of the modification for this job. |
 | createdOn | String? |  yes  | This is the timestamp of the creation for this job. |
 | filters | [InventoryJobFilters](#InventoryJobFilters) |  no  | This is the filter criteria applied for the export job. |
 | type | String? |  yes  | This is the file type of the export. |
 | cancelledOn | String? |  yes  | This is the timestamp of the cacellation for this job. |

---


 
 
 #### [InventoryExportJobListResponse](#InventoryExportJobListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [InventoryJobDetailResponse](#InventoryJobDetailResponse) |  no  | This is the list/history of all the jobs. |

---


 
 
 #### [InventoryExportFilter](#InventoryExportFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandIds | [Int]? |  yes  | The list of the brand ids that needs to be exported. |
 | storeIds | [Int] |  no  | The list of the store ids that needs to be exported. |
 | fromDate | String? |  yes  | The modified on date from which the data needs to be exported. |
 | toDate | String? |  yes  | The modified on date till when the data needs to be exported. |
 | quantity | [InventoryExportQuantityFilter](#InventoryExportQuantityFilter)? |  yes  | The quantity range that needs to be exported. |

---


 
 
 #### [InventoryCreateRequest](#InventoryCreateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | The type of file that needs to be exported. |
 | notificationEmails | [String]? |  yes  | The list of the emails to be notified after the completion of the job. |
 | data | [String]? |  yes  | The list of attributes that you want to extract in the export job. |
 | filters | [InventoryExportFilter](#InventoryExportFilter) |  no  | This filters that are applied for the export of the inventory. |

---


 
 
 #### [FilerList](#FilerList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [InventoryConfig](#InventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multivalues | Bool? |  yes  |  |
 | data | [[FilerList](#FilerList)]? |  yes  |  |

---


 
 
 #### [InventoryPayload](#InventoryPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expirationDate | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | totalQuantity | Int? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | traceId | String? |  yes  |  |
 | storeId | Int |  no  |  |
 | priceMarked | Double? |  yes  |  |

---


 
 
 #### [InventoryRequestSchemaV2](#InventoryRequestSchemaV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | payload | [[InventoryPayload](#InventoryPayload)]? |  yes  |  |

---


 
 
 #### [InventoryFailedReason](#InventoryFailedReason)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | errors | String? |  yes  |  |

---


 
 
 #### [InventoryResponseItem](#InventoryResponseItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reason | [InventoryFailedReason](#InventoryFailedReason)? |  yes  |  |
 | data | [InventoryPayload](#InventoryPayload)? |  yes  |  |

---


 
 
 #### [InventoryUpdateResponse](#InventoryUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | items | [[InventoryResponseItem](#InventoryResponseItem)]? |  yes  |  |

---


 
 
 #### [HsnUpsert](#HsnUpsert)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | threshold1 | Double |  no  |  |
 | taxOnMrp | Bool |  no  |  |
 | tax2 | Double? |  yes  |  |
 | taxOnEsp | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | threshold2 | Double? |  yes  |  |
 | uid | Int? |  yes  |  |
 | tax1 | Double |  no  |  |
 | companyId | Int |  no  |  |
 | hs2Code | String |  no  |  |
 | hsnCode | String |  no  |  |

---


 
 
 #### [HsnCodesObject](#HsnCodesObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | threshold1 | Double? |  yes  |  |
 | taxOnMrp | Bool? |  yes  |  |
 | tax2 | Double? |  yes  |  |
 | taxOnEsp | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | threshold2 | Double? |  yes  |  |
 | tax1 | Double? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | hs2Code | String? |  yes  |  |
 | hsnCode | String? |  yes  |  |

---


 
 
 #### [HsnCode](#HsnCode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [HsnCodesObject](#HsnCodesObject)? |  yes  |  |

---


 
 
 #### [BulkHsnUpsert](#BulkHsnUpsert)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[HsnUpsert](#HsnUpsert)] |  no  |  |

---


 
 
 #### [BulkHsnResponse](#BulkHsnResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [PageResponse](#PageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasNext | Bool? |  yes  |  |
 | size | Int? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | current | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |

---


 
 
 #### [TaxSlab](#TaxSlab)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rate | Double |  no  |  |
 | threshold | Double |  no  |  |
 | effectiveDate | String |  no  |  |
 | cess | Double? |  yes  |  |

---


 
 
 #### [HSNDataInsertV2](#HSNDataInsertV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | [String: Any]? |  yes  |  |
 | reportingHsn | String |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | hsnCodeId | String? |  yes  |  |
 | description | String |  no  |  |
 | hsnCode | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | taxes | [[TaxSlab](#TaxSlab)] |  no  |  |
 | createdOn | String? |  yes  |  |
 | type | String |  no  |  |
 | countryCode | String |  no  |  |

---


 
 
 #### [HsnCodesListingResponseSchemaV2](#HsnCodesListingResponseSchemaV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [PageResponse](#PageResponse)? |  yes  |  |
 | items | [[HSNDataInsertV2](#HSNDataInsertV2)]? |  yes  |  |

---


 
 
 #### [BrandItem](#BrandItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | departments | [String]? |  yes  |  |
 | discount | String? |  yes  |  |
 | logo | [Media1](#Media1)? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |

---


 
 
 #### [BrandListingResponse](#BrandListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[BrandItem](#BrandItem)]? |  yes  |  |

---


 
 
 #### [Department](#Department)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | priorityOrder | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | logo | [Media1](#Media1)? |  yes  |  |
 | uid | Int? |  yes  |  |

---


 
 
 #### [DepartmentResponse](#DepartmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Department](#Department)]? |  yes  |  |

---


 
 
 #### [DepartmentIdentifier](#DepartmentIdentifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | slug | String? |  yes  |  |

---


 
 
 #### [ThirdLevelChild](#ThirdLevelChild)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | childs | [[String: Any]]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |

---


 
 
 #### [SecondLevelChild](#SecondLevelChild)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | childs | [[ThirdLevelChild](#ThirdLevelChild)]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |

---


 
 
 #### [Child](#Child)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | childs | [[SecondLevelChild](#SecondLevelChild)]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |

---


 
 
 #### [CategoryItems](#CategoryItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | childs | [[Child](#Child)]? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |

---


 
 
 #### [DepartmentCategoryTree](#DepartmentCategoryTree)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | department | String? |  yes  |  |
 | items | [[CategoryItems](#CategoryItems)]? |  yes  |  |

---


 
 
 #### [CategoryListingResponse](#CategoryListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | departments | [[DepartmentIdentifier](#DepartmentIdentifier)]? |  yes  |  |
 | data | [[DepartmentCategoryTree](#DepartmentCategoryTree)]? |  yes  |  |

---


 
 
 #### [ApplicationProductListingResponse](#ApplicationProductListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductListingDetail](#ProductListingDetail)]? |  yes  |  |
 | filters | [[ProductFilters](#ProductFilters)]? |  yes  |  |
 | page | [Page](#Page) |  no  |  |
 | operators | [String: Any]? |  yes  |  |
 | sortOn | [[ProductSortOn](#ProductSortOn)]? |  yes  |  |

---


 
 
 #### [ProductDetail](#ProductDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasVariant | Bool? |  yes  | Indicates whether the product has variants or not. |
 | productOnlineDate | String? |  yes  | The date when the product was made available online. |
 | groupedAttributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)]? |  yes  | The grouped attributes of the product. |
 | similars | [String]? |  yes  | List of similar products. |
 | type | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  | Additional attributes of the product. |
 | itemCode | String? |  yes  | This is the unique identifier of the Item within a brand. |
 | rating | Double? |  yes  | The rating of the product. |
 | shortDescription | String? |  yes  | The short description of the product. |
 | imageNature | String? |  yes  | The nature of the product image. |
 | promoMeta | [String: Any]? |  yes  | Additional promotional metadata. |
 | slug | String |  no  | The unique slug of the product. |
 | tryouts | [String]? |  yes  | List of tryouts available for the product. |
 | teaserTag | [String: Any]? |  yes  | The teaser tag of the product. |
 | description | String? |  yes  | The description of the product. |
 | medias | [[Media2](#Media2)]? |  yes  |  |
 | itemType | String? |  yes  | The type of item. |
 | highlights | [String]? |  yes  | List of product highlights. |
 | uid | Int? |  yes  | The unique identifier of the product. |
 | brand | [ProductBrand](#ProductBrand)? |  yes  | The brand of the product. |
 | name | String? |  yes  | The name of the product. |
 | color | String? |  yes  | The color of the product. |
 | ratingCount | Int? |  yes  | The count of ratings for the product. |

---


 
 
 #### [InventoryPage](#InventoryPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasNext | Bool? |  yes  |  |
 | nextId | String? |  yes  |  |
 | itemTotal | Int |  no  |  |
 | type | String |  no  |  |
 | hasPrevious | Bool? |  yes  |  |

---


 
 
 #### [InventoryStockResponse](#InventoryStockResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [InventoryPage](#InventoryPage) |  no  |  |
 | items | [[String: Any]]? |  yes  |  |

---


 
 
 #### [ArticleQuery](#ArticleQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int |  no  |  |
 | size | String |  no  |  |
 | ignoredStores | [Int]? |  yes  |  |

---


 
 
 #### [ArticleAssignment](#ArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | level | String? |  yes  |  |
 | strategy | String? |  yes  |  |

---


 
 
 #### [AssignStoreArticle](#AssignStoreArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | groupId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | query | [ArticleQuery](#ArticleQuery)? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | articleAssignment | [ArticleAssignment](#ArticleAssignment)? |  yes  |  |

---


 
 
 #### [AssignStore](#AssignStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |
 | storeIds | [Int]? |  yes  |  |
 | channelIdentifier | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | channelType | String? |  yes  |  |
 | pincode | String |  no  |  |
 | articles | [[AssignStoreArticle](#AssignStoreArticle)] |  no  |  |

---


 
 
 #### [ArticleAssignment1](#ArticleAssignment1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | level | String? |  yes  |  |
 | strategy | String? |  yes  |  |

---


 
 
 #### [StoreAssign](#StoreAssign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int |  no  |  |
 | groupId | String? |  yes  |  |
 | size | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | quantity | Int |  no  |  |
 | strategyWiseListing | [[String: Any]]? |  yes  |  |
 | status | Bool |  no  |  |
 | index | Int? |  yes  |  |
 | priceEffective | Int? |  yes  |  |
 | storePincode | Int? |  yes  |  |
 | sCity | String? |  yes  |  |
 | articleAssignment | [ArticleAssignment1](#ArticleAssignment1) |  no  |  |
 | uid | String? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | priceMarked | Int? |  yes  |  |
 | id | String? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [StoreAssignError](#StoreAssignError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | message | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [StoreAssignResponse](#StoreAssignResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | items | [[StoreAssign](#StoreAssign)]? |  yes  |  |
 | error | [StoreAssignError](#StoreAssignError)? |  yes  |  |

---


 
 
 #### [UserSerializer1](#UserSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | contact | String? |  yes  |  |

---


 
 
 #### [GetAddressSerializer](#GetAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address2 | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | country | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | state | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [UserSerializer2](#UserSerializer2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | contact | String? |  yes  |  |

---


 
 
 #### [GetCompanySerializer](#GetCompanySerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rejectReason | String? |  yes  |  |
 | verifiedBy | [UserSerializer2](#UserSerializer2)? |  yes  |  |
 | createdBy | [UserSerializer2](#UserSerializer2)? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | name | String? |  yes  |  |
 | companyType | String? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedBy | [UserSerializer2](#UserSerializer2)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | businessType | String? |  yes  |  |
 | stage | String? |  yes  |  |

---


 
 
 #### [InvoiceCredSerializer](#InvoiceCredSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eInvoice | [InvoiceCredSerializer](#InvoiceCredSerializer)? |  yes  |  |
 | eWaybill | [InvoiceCredSerializer](#InvoiceCredSerializer)? |  yes  |  |

---


 
 
 #### [SellerPhoneNumber](#SellerPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | String |  no  |  |
 | countryCode | Int |  no  |  |

---


 
 
 #### [LocationManagerSerializer](#LocationManagerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobileNo | [SellerPhoneNumber](#SellerPhoneNumber) |  no  |  |
 | email | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | onSameStore | Bool? |  yes  |  |
 | storeUid | Int? |  yes  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | legalName | String? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | value | String |  no  |  |
 | url | String? |  yes  |  |
 | type | String |  no  |  |

---


 
 
 #### [LocationTimingSerializer](#LocationTimingSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minute | Int? |  yes  |  |
 | hour | Int? |  yes  |  |

---


 
 
 #### [LocationDayWiseSerializer](#LocationDayWiseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | closing | [LocationTimingSerializer](#LocationTimingSerializer)? |  yes  |  |
 | open | Bool |  no  |  |
 | opening | [LocationTimingSerializer](#LocationTimingSerializer)? |  yes  |  |
 | weekday | String |  no  |  |

---


 
 
 #### [LocationIntegrationType](#LocationIntegrationType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | String? |  yes  |  |
 | inventory | String? |  yes  |  |

---


 
 
 #### [GetLocationSerializer](#GetLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | address | [GetAddressSerializer](#GetAddressSerializer) |  no  |  |
 | verifiedOn | String? |  yes  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer)? |  yes  |  |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)? |  yes  |  |
 | code | String |  no  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer)? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)? |  yes  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | phoneNumber | String |  no  |  |
 | warnings | [String: Any]? |  yes  |  |
 | createdBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | displayName | String |  no  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | storeType | String? |  yes  |  |
 | integrationType | [LocationIntegrationType](#LocationIntegrationType)? |  yes  |  |
 | name | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | modifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | stage | String? |  yes  |  |

---


 
 
 #### [LocationListSerializer](#LocationListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetLocationSerializer](#GetLocationSerializer)]? |  yes  |  |

---


 
 
 #### [ApplicationBrandJson](#ApplicationBrandJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [ApplicationCategoryJson](#ApplicationCategoryJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [ApplicationDepartment](#ApplicationDepartment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | uid | Int |  no  |  |

---


 
 
 #### [ApplicationDepartmentListingResponse](#ApplicationDepartmentListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[ApplicationDepartment](#ApplicationDepartment)]? |  yes  |  |

---


 
 
 #### [ApplicationDepartmentJson](#ApplicationDepartmentJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [ApplicationStoreJson](#ApplicationStoreJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customJson | [String: Any] |  no  |  |

---




### Enums





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
 | externalLink | external | Symbolic link for External Link: /external/ |
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

---





