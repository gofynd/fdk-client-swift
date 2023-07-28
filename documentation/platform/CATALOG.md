



##### [Back to Platform docs](./README.md)

## Catalog Methods
Catalog - Platform Front API's' API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features. 
* [deleteSearchKeywords](#deletesearchkeywords)
* [updateSearchKeywords](#updatesearchkeywords)
* [getSearchKeywords](#getsearchkeywords)
* [createCustomKeyword](#createcustomkeyword)
* [getAllSearchKeyword](#getallsearchkeyword)
* [deleteAutocompleteKeyword](#deleteautocompletekeyword)
* [updateAutocompleteKeyword](#updateautocompletekeyword)
* [getAutocompleteKeywordDetail](#getautocompletekeyworddetail)
* [createCustomAutocompleteRule](#createcustomautocompleterule)
* [getAutocompleteConfig](#getautocompleteconfig)
* [createProductBundle](#createproductbundle)
* [getProductBundle](#getproductbundle)
* [updateProductBundle](#updateproductbundle)
* [getProductBundleDetail](#getproductbundledetail)
* [createSizeGuide](#createsizeguide)
* [getSizeGuides](#getsizeguides)
* [updateSizeGuide](#updatesizeguide)
* [getSizeGuide](#getsizeguide)
* [updateAppProduct](#updateappproduct)
* [getAppProduct](#getappproduct)
* [getConfigurationMetadata](#getconfigurationmetadata)
* [createGroupConfiguration](#creategroupconfiguration)
* [getGroupConfigurations](#getgroupconfigurations)
* [deleteGroupConfiguration](#deletegroupconfiguration)
* [updateGroupConfiguration](#updategroupconfiguration)
* [createListingConfiguration](#createlistingconfiguration)
* [getListingConfigurations](#getlistingconfigurations)
* [deleteListingConfiguration](#deletelistingconfiguration)
* [updateListingConfiguration](#updatelistingconfiguration)
* [updateAllowSingle](#updateallowsingle)
* [updateDefaultSort](#updatedefaultsort)
* [getCatalogConfiguration](#getcatalogconfiguration)
* [createConfigurationProductListing](#createconfigurationproductlisting)
* [getConfigurations](#getconfigurations)
* [createConfigurationByType](#createconfigurationbytype)
* [getConfigurationByType](#getconfigurationbytype)
* [getQueryFilters](#getqueryfilters)
* [createCollection](#createcollection)
* [getAllCollections](#getallcollections)
* [getCollectionDetail](#getcollectiondetail)
* [deleteCollection](#deletecollection)
* [updateCollection](#updatecollection)
* [addCollectionItems](#addcollectionitems)
* [getCollectionItems](#getcollectionitems)
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
* [createDepartments](#createdepartments)
* [listDepartmentsData](#listdepartmentsdata)
* [updateDepartment](#updatedepartment)
* [getDepartmentData](#getdepartmentdata)
* [listProductTemplate](#listproducttemplate)
* [validateProductTemplate](#validateproducttemplate)
* [downloadProductTemplateViews](#downloadproducttemplateviews)
* [downloadInventoryTemplateView](#downloadinventorytemplateview)
* [validateProductTemplateSchema](#validateproducttemplateschema)
* [listHSNCodes](#listhsncodes)
* [listProductTemplateExportDetails](#listproducttemplateexportdetails)
* [createProductExportJob](#createproductexportjob)
* [getProductExportJobs](#getproductexportjobs)
* [listTemplateBrandTypeValues](#listtemplatebrandtypevalues)
* [createCategories](#createcategories)
* [listCategories](#listcategories)
* [updateCategory](#updatecategory)
* [getCategoryData](#getcategorydata)
* [createProduct](#createproduct)
* [getProducts](#getproducts)
* [getVariantsOfProducts](#getvariantsofproducts)
* [getProductAttributes](#getproductattributes)
* [deleteProduct](#deleteproduct)
* [editProduct](#editproduct)
* [getProduct](#getproduct)
* [allSizes](#allsizes)
* [getProductValidation](#getproductvalidation)
* [getProductSize](#getproductsize)
* [createBulkProductUploadJob](#createbulkproductuploadjob)
* [getProductBulkUploadHistory](#getproductbulkuploadhistory)
* [uploadBulkProducts](#uploadbulkproducts)
* [deleteProductBulkJob](#deleteproductbulkjob)
* [createProductsInBulk](#createproductsinbulk)
* [getProductTags](#getproducttags)
* [createProductAssetsInBulk](#createproductassetsinbulk)
* [getProductAssetsInBulk](#getproductassetsinbulk)
* [deleteSize](#deletesize)
* [addInventory](#addinventory)
* [getInventoryBySize](#getinventorybysize)
* [getInventoryBySizeIdentifier](#getinventorybysizeidentifier)
* [getInventories](#getinventories)
* [getDiscountedInventoryBySizeIdentifier](#getdiscountedinventorybysizeidentifier)
* [deleteInventory](#deleteinventory)
* [createBulkInventoryJob](#createbulkinventoryjob)
* [getInventoryBulkUploadHistory](#getinventorybulkuploadhistory)
* [deleteBulkInventoryJob](#deletebulkinventoryjob)
* [createBulkInventory](#createbulkinventory)
* [createInventoryExportJob](#createinventoryexportjob)
* [getInventoryExport](#getinventoryexport)
* [createInventoryExport](#createinventoryexport)
* [listInventoryExport](#listinventoryexport)
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


#### deleteSearchKeywords
Delete a Search Keywords




```swift
platformClient.application("<APPLICATION_ID>").catalog.deleteSearchKeywords(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  



Delete a keywords by it's id. Returns an object that tells whether the keywords was deleted successfully

*Returned Response:*




[DeleteResponse](#DeleteResponse)

Status object. Tells whether the operation was successful. See example below or refer `DeleteResponse`




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Words Deleted"
}
```
</details>









---


#### updateSearchKeywords
Update Search Keyword




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateSearchKeywords(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  
| body | CreateSearchKeyword | yes | Request body |


Update Search Keyword by its id. On successful request, returns the updated collection

*Returned Response:*




[GetSearchWordsData](#GetSearchWordsData)

The Collection object. See example below or refer `GetSearchWordsDataSchema` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getSearchKeywords
Get a Search Keywords Details




```swift
platformClient.application("<APPLICATION_ID>").catalog.getSearchKeywords(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. |  



Get the details of a words by its `id`. If successful, returns a Collection resource in the response body specified in `GetSearchWordsDetailResponseSchema`

*Returned Response:*




[GetSearchWordsDetailResponse](#GetSearchWordsDetailResponse)

The Collection object. See example below or refer `GetSearchWordsDetailResponseSchema` for details




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


#### createCustomKeyword
Add a Custom Search Keywords




```swift
platformClient.application("<APPLICATION_ID>").catalog.createCustomKeyword(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateSearchKeyword | yes | Request body |


Create a Custom Search Keywords. See `CreateSearchKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateSearchKeywordSchema`

*Returned Response:*




[GetSearchWordsData](#GetSearchWordsData)

Get keyword object with id that is added. See example below or refer `GetSearchWordsDataSchema` for details




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


#### getAllSearchKeyword
List all Search Custom Keyword Listing




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAllSearchKeyword() { (response, error) in
    // Use response
}
```






Custom Search Keyword allows you to map conditions with keywords to give you the ultimate results

*Returned Response:*




[GetSearchWordsResponse](#GetSearchWordsResponse)

List of custom search keywords. See example below or refer `GetSearchWordsResponseSchema` for details




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


#### deleteAutocompleteKeyword
Delete a Autocomplete Keywords




```swift
platformClient.application("<APPLICATION_ID>").catalog.deleteAutocompleteKeyword(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  



Delete a keywords by it's id. Returns an object that tells whether the keywords was deleted successfully

*Returned Response:*




[DeleteResponse](#DeleteResponse)

Status object. Tells whether the operation was successful. See example below or refer `DeleteResponse`




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Words Deleted"
}
```
</details>









---


#### updateAutocompleteKeyword
Create & Update Autocomplete Keyword




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateAutocompleteKeyword(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  
| body | CreateAutocompleteKeyword | yes | Request body |


Update a mapping by it's id. On successful request, returns the updated Keyword mapping

*Returned Response:*




[GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

The Mapping object. See example below or refer `GetAutocompleteWordsResponseSchema` for details.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getAutocompleteKeywordDetail
Get a Autocomplete Keywords Details




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAutocompleteKeywordDetail(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. |  



Get the details of a words by its `id`. If successful, returns a keywords resource in the response body specified in `GetAutocompleteWordsResponseSchema`

*Returned Response:*




[GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

The mapping object. See example below or refer `GetAutocompleteWordsResponseSchema` for details




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


#### createCustomAutocompleteRule
Add a Custom Autocomplete Keywords




```swift
platformClient.application("<APPLICATION_ID>").catalog.createCustomAutocompleteRule(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateAutocompleteKeyword | yes | Request body |


Create a Custom Autocomplete Keywords. See `CreateAutocompleteKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateAutocompleteKeywordSchema`

*Returned Response:*




[CreateAutocompleteWordsResponse](#CreateAutocompleteWordsResponse)

List of all the collections including the one you added. See example below or refer `CreateAutocompleteWordsResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getAutocompleteConfig
List all Autocomplete Keyword Listing




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAutocompleteConfig() { (response, error) in
    // Use response
}
```






Custom Autocomplete Keyword allows you to map conditions with keywords to give you the ultimate results

*Returned Response:*




[GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

List of custom autocomplete keywords. See example below or refer `GetAutocompleteWordsResponseSchema` for details




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


#### getQueryFilters
Get query filters to configure a collection




```swift
platformClient.application("<APPLICATION_ID>").catalog.getQueryFilters() { (response, error) in
    // Use response
}
```






Get query filters to configure a collection

*Returned Response:*




[GetCollectionQueryOptionResponse](#GetCollectionQueryOptionResponse)

The attached items of an collection. See example below or refer `GetCollectionQueryOptionResponse` for details




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
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Department.png"
      },
      "values": [
        {
          "display": "Men's Fashion",
          "count": 2113,
          "is_selected": false,
          "value": "men",
          "logo": {
            "type": "image",
            "url": "https://hdn-1.fynd.com/media/category_tab_icons/department/Men.png"
          }
        }
      ]
    },
    {
      "key": {
        "display": "Category",
        "name": "category",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Category.png"
      },
      "values": [
        {
          "display": "T-Shirts",
          "count": 968,
          "is_selected": false,
          "value": "192",
          "logo": "https://hdn-1.fynd.com/media/logo/category/original/15442_57fdc97abfd248aaaf8841f097a4ed67.jpg"
        }
      ]
    },
    {
      "key": {
        "display": "Size",
        "name": "sizes",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Sizes.png"
      },
      "values": [
        {
          "display": "S",
          "count": 1438,
          "is_selected": false,
          "value": "S"
        }
      ]
    },
    {
      "key": {
        "display": "Brand",
        "name": "brand",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Brand%20ID.png"
      },
      "values": [
        {
          "display": "Superdry",
          "count": 4263,
          "is_selected": false,
          "value": "235",
          "logo": "https://hdn-1.fynd.com/media/logo/brand/original/1008_238113b8e11448f792e9bf860aac30f2.jpg"
        }
      ]
    },
    {
      "key": {
        "display": "Rating",
        "name": "rating",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Rating.png"
      },
      "values": [
        {
          "count": 3,
          "display": "5 ★",
          "value": "[4 TO *}",
          "is_selected": false
        }
      ]
    },
    {
      "key": {
        "display": "Company",
        "name": "company_id_list",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Store%20ID%20List.png"
      },
      "values": [
        {
          "display": "RELIANCE BRANDS LIMITED",
          "count": 4262,
          "is_selected": false,
          "value": "46"
        }
      ]
    },
    {
      "key": {
        "display": "Store Ids",
        "name": "store_id_list",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Store%20ID%20List.png"
      },
      "values": [
        {
          "display": "PHOENIX, ,PALLADIUM,  LOWER PAREL - 5410",
          "count": 1385,
          "is_selected": false,
          "value": "2201"
        }
      ]
    },
    {
      "key": {
        "display": "Image",
        "name": "image_nature",
        "kind": "multivalued",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/image%20Nature.png"
      },
      "values": [
        {
          "display": "Good Quality",
          "count": 3111,
          "is_selected": false,
          "value": "standard"
        },
        {
          "display": "No Image",
          "count": 1152,
          "is_selected": false,
          "value": "default"
        }
      ]
    },
    {
      "key": {
        "display": "Set",
        "name": "is_set",
        "kind": "multivalued",
        "logo": ""
      },
      "values": [
        {
          "display": "No",
          "count": 4263,
          "is_selected": false,
          "value": false
        }
      ]
    },
    {
      "key": {
        "display": "Product Fit",
        "name": "product_fit",
        "kind": "multivalued",
        "logo": ""
      },
      "values": [
        {
          "display": "Regular",
          "count": 14,
          "is_selected": false,
          "value": "Regular"
        }
      ]
    },
    {
      "key": {
        "display": "Primary Material",
        "name": "primary_material",
        "kind": "multivalued",
        "logo": ""
      },
      "values": [
        {
          "display": "Cotton",
          "count": 1246,
          "is_selected": false,
          "value": "Cotton"
        }
      ]
    },
    {
      "key": {
        "display": "Gender",
        "name": "gender",
        "kind": "multivalued",
        "logo": ""
      },
      "values": [
        {
          "display": "Men",
          "count": 2125,
          "is_selected": false,
          "value": "Men"
        },
        {
          "display": "Women",
          "count": 1492,
          "is_selected": false,
          "value": "Women"
        }
      ]
    },
    {
      "key": {
        "display": "Primary Colour",
        "name": "primary_color",
        "kind": "multivalued",
        "logo": ""
      },
      "values": [
        {
          "display": "Multi",
          "count": 1403,
          "is_selected": false,
          "value": "Multi"
        }
      ]
    },
    {
      "key": {
        "display": "Size Depth",
        "name": "size_depth",
        "kind": "range",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Size%20Depth.png"
      },
      "values": [
        {
          "count": 4263,
          "min": 0,
          "max": 9,
          "is_selected": false,
          "selected_min": 0,
          "selected_max": 9,
          "query_format": "[{} TO {}]",
          "display_format": "{} - {}",
          "display": "0 - 9"
        }
      ]
    },
    {
      "key": {
        "display": "Price",
        "name": "min_price_effective",
        "kind": "range",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Min%20price%20effective.png"
      },
      "values": [
        {
          "count": 4263,
          "min": 398,
          "max": 24999,
          "is_selected": false,
          "selected_min": 398.8,
          "selected_max": 24998.77,
          "currency_code": "INR",
          "currency_symbol": "₹",
          "query_format": "[{},INR TO {},INR]"
        }
      ]
    },
    {
      "key": {
        "display": "Discount",
        "name": "platform_discount",
        "kind": "range",
        "logo": "https://hdn-1.fynd.com/global/menu-icons/Platform%20Discount.png"
      },
      "values": [
        {
          "count": 4263,
          "min": 0,
          "max": 50,
          "is_selected": false,
          "selected_min": 0,
          "selected_max": 50,
          "query_format": "[{} TO {}]",
          "display_format": "{} - {}",
          "display": "0 - 50"
        }
      ]
    }
  ],
  "sort_on": [
    {
      "display": "Latest Products",
      "name": "Latest Products",
      "logo": "https://hdn-1.fynd.com/global/menu-icons/Latest%20Products.png",
      "value": "latest",
      "is_selected": true
    },
    {
      "display": "Popularity",
      "name": "Popularity",
      "logo": "https://hdn-1.fynd.com/global/menu-icons/Popularity.png",
      "value": "popular",
      "is_selected": false
    },
    {
      "display": "Price Low to High",
      "name": "Price Low to High",
      "logo": "https://hdn-1.fynd.com/global/menu-icons/Price%20High%20to%20Low.png",
      "value": "price_asc",
      "is_selected": false
    },
    {
      "display": "Price High to Low",
      "name": "Price High to Low",
      "logo": "https://hdn-1.fynd.com/global/menu-icons/Price%20High%20to%20Low.png",
      "value": "price_dsc",
      "is_selected": false
    },
    {
      "display": "Discount Low to High",
      "name": "Discount Low to High",
      "logo": "https://hdn-1.fynd.com/global/menu-icons/Discount%20Low%20to%20High.png",
      "value": "discount_asc",
      "is_selected": false
    },
    {
      "display": "Discount High to Low",
      "name": "Discount High to Low",
      "logo": "https://hdn-1.fynd.com/global/menu-icons/Discount%20Low%20to%20High.png",
      "value": "discount_dsc",
      "is_selected": false
    },
    {
      "display": "Rating",
      "name": "Rating",
      "logo": "https://hdn-1.fynd.com/global/menu-icons/Rating.png",
      "value": "rating_dsc",
      "is_selected": false
    },
    {
      "display": "Size Depth (High to Low)",
      "name": "Size Depth (High to Low)",
      "logo": "https://hdn-1.fynd.com/global/menu-icons/Size%20Depth.png",
      "value": "depth_desc",
      "is_selected": false
    }
  ]
}
```
</details>









---


#### createCollection
Add a Collection




```swift
platformClient.application("<APPLICATION_ID>").catalog.createCollection(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | CreateCollection | yes | Request body |


Create a collection. See `CreateCollectionRequestSchema` for the list of attributes needed to create a collection and collections/query-options for the available options to create a collection. On successful request, returns a paginated list of collections specified in `CollectionCreateResponse`

*Returned Response:*




[CollectionCreateResponse](#CollectionCreateResponse)

List of all the collections including the one you added. See example below or refer `CollectionCreateResponse` for details




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


#### getAllCollections
List all the collections




```swift
platformClient.application("<APPLICATION_ID>").catalog.getAllCollections(q: q, scheduleStatus: scheduleStatus, type: type, tags: tags, isActive: isActive, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | Get collection list filtered by q string, |   
| scheduleStatus | String? | no | Get collection list filtered by scheduled status, |   
| type | String? | no | type of the collections |   
| tags | [String]? | no | Each response will contain next_id param, which should be sent back to make pagination work. |   
| isActive | Bool? | no | get collections filtered by active status. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections as specified in `CollectionListingSchema`

*Returned Response:*




[GetCollectionListingResponse](#GetCollectionListingResponse)

List of collections. See example below or refer `GetCollectionListingResponse` for details




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


#### getCollectionDetail
Get a particular collection




```swift
platformClient.application("<APPLICATION_ID>").catalog.getCollectionDetail(slug: slug) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| slug | String | yes | A `slug` is a human readable, URL friendly unique identifier of an object. Pass the `slug` of the collection which you want to retrieve. |  



Get the details of a collection by its `slug`. If successful, returns a Collection resource in the response body specified in `CollectionDetailResponse`

*Returned Response:*




[CollectionDetailResponse](#CollectionDetailResponse)

The Collection object. See example below or refer `CollectionDetailResponse` for details




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


#### deleteCollection
Delete a Collection




```swift
platformClient.application("<APPLICATION_ID>").catalog.deleteCollection(id: id) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier of a collection. |  



Delete a collection by it's id. Returns an object that tells whether the collection was deleted successfully

*Returned Response:*




[DeleteResponse](#DeleteResponse)

Status object. Tells whether the operation was successful. See example below or refer `DeleteResponse`




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Collection Deleted"
}
```
</details>









---


#### updateCollection
Update a collection




```swift
platformClient.application("<APPLICATION_ID>").catalog.updateCollection(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier of a collection. |  
| body | UpdateCollection | yes | Request body |


Update a collection by it's id. On successful request, returns the updated collection

*Returned Response:*




[UpdateCollection](#UpdateCollection)

The Collection object. See example below or refer `UpdateCollectionSchema` for details.




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


#### addCollectionItems
Add items to a collection




```swift
platformClient.application("<APPLICATION_ID>").catalog.addCollectionItems(id: id, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier of a collection. |  
| body | CollectionItemUpdate | yes | Request body |


Adds items to a collection specified by its `id`. See `CollectionItemRequest` for the list of attributes needed to add items to an collection.

*Returned Response:*




[UpdatedResponse](#UpdatedResponse)

Status object. Tells whether the operation was successful.




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "items updated"
}
```
</details>









---


#### getCollectionItems
Get the items for a collection




```swift
platformClient.application("<APPLICATION_ID>").catalog.getCollectionItems(id: id, sortOn: sortOn, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | String | yes | A `id` is a unique identifier of a collection. |   
| sortOn | String? | no | Each response will contain sort_on param, which should be sent back to make pagination work. |   
| pageId | String? | no | Each response will contain next_id param, which should be sent back to make pagination work. |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



Get items from a collection specified by its `id`.

*Returned Response:*




[GetCollectionItemsResponse](#GetCollectionItemsResponse)

The attached items of an collection. See example below or refer `GetCollectionItemsResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getCatalogInsights
Analytics data of catalog and inventory.




```swift
platformClient.application("<APPLICATION_ID>").catalog.getCatalogInsights(brand: brand) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| brand | String? | no | Brand slug |  



Catalog Insights api returns the count of catalog related data like products, brands, departments and categories that have been made live as per configuration of the app.

*Returned Response:*




[CatalogInsightResponse](#CatalogInsightResponse)

Response Data




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "item": {
    "count": 637707,
    "out_of_stock_count": 452806,
    "sellable_count": 184901
  }
}
```
</details>









---


#### getSellerInsights
Analytics data of catalog and inventory that are being cross-selled.




```swift
platformClient.catalog.getSellerInsights(sellerAppId: sellerAppId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| sellerAppId | String | yes | Id of the seller application which is serving the invetory/catalog of the company |  



Analytics data of catalog and inventory that are being cross-selled.

*Returned Response:*




[CrossSellingResponse](#CrossSellingResponse)

Response Data




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


#### createDepartments
Create the department.




```swift
platformClient.catalog.createDepartments(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | DepartmentCreateUpdate | yes | Request body |


Create departments using the API.

*Returned Response:*




[DepartmentCreateResponse](#DepartmentCreateResponse)

Success Response. See example below or refer `DepartmentCreateResponseSchema` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "message": "Success",
  "uid": 2
}
```
</details>









---


#### listDepartmentsData
List all Departments.




```swift
platformClient.catalog.listDepartmentsData(pageNo: pageNo, itemType: itemType, pageSize: pageSize, name: name, search: search, isActive: isActive) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| itemType | String? | no | A `item_type` is a type of product eg. set, standard, digital |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |   
| name | String? | no | Can search departments by passing name. |   
| search | String? | no | Can search departments by passing name of the department in search parameter. |   
| isActive | Bool? | no | Can query for departments based on whether they are active or inactive. |  



Allows you to list all departments, also can search using name and filter active and incative departments, and item type.

*Returned Response:*




[DepartmentsResponse](#DepartmentsResponse)

List of departments data. See example below or refer `DepartmentsResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {
    "current": 1,
    "size": 1,
    "has_previous": false,
    "has_next": false,
    "item_total": 12
  },
  "items": [
    {
      "uid": 5,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "created_on": "2020-07-01T05:33:39.325000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/BSQ9Gk_123522-best-starry-sky-wallpaper-1920x1200-ipad-pro.jpgc7d0c15c-c1ff-47eb-8423-6e2df51f2ddf/BSQ9Gk_123522-best-starry-sky-wallpaper-1920x1200-ipad-pro.jpg",
      "modified_by": {
        "username": "917753852478_51632",
        "user_id": "5677"
      },
      "modified_on": "2021-03-03T15:55:25.118000Z",
      "name": "Sample Dept",
      "platforms": {},
      "priority_order": 111,
      "slug": "sample-dept",
      "synonyms": [
        "test",
        "sampe"
      ],
      "tags": [],
      "id": "5efc2033623d390001782238"
    },
    {
      "uid": 2,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "app@fynd.com",
        "user_id": "0"
      },
      "created_on": "2020-05-19T06:53:37.629000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/addsale/media/logo/department/original/15974_381e2236c2a348cc851c29a5d05c66a9.png",
      "modified_by": {
        "user_id": "10",
        "username": "fahimsakri_gofynd_com_44938"
      },
      "modified_on": "2021-03-04T14:01:02.556000Z",
      "name": "Men's Fashion",
      "platforms": {
        "fynd": true,
        "fynd_store": true,
        "marketplace": true,
        "openapi": true,
        "uniket_store": true,
        "uniket_wholesale": true
      },
      "priority_order": 111,
      "slug": "men-s-fashion",
      "synonyms": [],
      "tags": [],
      "id": "5ec3827156a7200001c9aeea"
    },
    {
      "uid": 4,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "fahimsakri_gofynd_com_44938",
        "user_id": "10"
      },
      "created_on": "2020-06-29T10:59:33.620000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/ywPVrU_preview_a637ca6e4da6e38f03eb0d650ac5d6ba.jpgc73cc22f-b5ee-4fd4-a585-8ada35762d68/ywPVrU_preview_a637ca6e4da6e38f03eb0d650ac5d6ba.jpg",
      "modified_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "modified_on": "2020-08-06T18:08:02.675000Z",
      "name": "Groceries",
      "platforms": {},
      "priority_order": 10,
      "slug": "groceries",
      "synonyms": [],
      "tags": [],
      "id": "5ef9c9959b04f00001e40dba"
    },
    {
      "uid": 1,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "app@fynd.com",
        "user_id": "0"
      },
      "created_on": "2020-05-18T16:14:41.689000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/platform/pictures/free-logo/original/_G1Z2Fg1L-http:d3p8ifzkmzds37.cloudfront.netmedialogodepartmentoriginal15870_c287d3c2431a432bb0e49363ef6b82bc.png.png",
      "modified_by": {
        "user_id": "5677",
        "username": "917753852478_51632"
      },
      "modified_on": "2021-03-04T15:39:38.528000Z",
      "name": "Electronics",
      "platforms": {
        "fynd": true,
        "fynd_store": true,
        "marketplace": true,
        "openapi": true,
        "uniket_store": true,
        "uniket_wholesale": true
      },
      "priority_order": 100,
      "slug": "electronics",
      "synonyms": [],
      "tags": [],
      "id": "5ec2b471661a4100019fca0d"
    },
    {
      "uid": 3,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "created_on": "2020-05-27T12:04:19.111000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/landscape-banner/original/g2plam_logo_Jio.pngeeb392ca-3958-46a0-9f13-23c205b596f7/g2plam_logo_Jio.png",
      "modified_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "modified_on": "2020-08-06T18:07:46.060000Z",
      "name": "Industrial Supplies",
      "platforms": {},
      "priority_order": 111,
      "slug": "industrial-supplies",
      "synonyms": [],
      "tags": [],
      "id": "5ece5743cd1bae0001440427"
    },
    {
      "uid": 6,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "abhinavsrivastava_gofynd_com_05674",
        "user_id": "13"
      },
      "created_on": "2020-07-06T07:56:01.508000Z",
      "is_active": false,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/wTcfEi_crysis_-_1.jpg14580947-a659-486d-b2d3-d2ca025b1cac/wTcfEi_crysis_-_1.jpg",
      "modified_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "modified_on": "2020-08-06T18:08:12.576000Z",
      "name": "Clothing",
      "platforms": {},
      "priority_order": 1,
      "slug": "clothing",
      "synonyms": [],
      "tags": [],
      "id": "5f02d9116b0ae500018923dd"
    },
    {
      "uid": 8,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "created_on": "2020-08-05T09:04:33.604000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/RxTsd8_0DEFAULT-LOGO.jpg000ccfc1-2f79-4426-9ac3-de2468c2fcb9/RxTsd8_0DEFAULT-LOGO.jpg",
      "modified_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "modified_on": "2020-08-05T09:44:01.234000Z",
      "name": "Kids",
      "platforms": {},
      "priority_order": 3,
      "slug": "kids",
      "synonyms": [],
      "tags": [],
      "id": "5f2a762131c66700018cdc47"
    },
    {
      "uid": 9,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "created_on": "2020-08-05T09:44:46.632000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/tKkDB8_0DEFAULT-LOGO.jpg1c324d4d-f667-4af8-8d98-37205d34e3b5/tKkDB8_0DEFAULT-LOGO.jpg",
      "modified_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "modified_on": "2020-08-06T18:07:35.231000Z",
      "name": "Women's Fashion",
      "platforms": {},
      "priority_order": 2,
      "slug": "women-s-fashion",
      "synonyms": [],
      "tags": [],
      "id": "5f2a7f8e31c66700018cdc49"
    },
    {
      "uid": 10,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "created_on": "2020-08-05T09:45:12.075000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/oLoxiL_0DEFAULT-LOGO.jpgbd050200-700a-4a3e-9da6-e6b78fbee943/oLoxiL_0DEFAULT-LOGO.jpg",
      "modified_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "modified_on": "2020-08-05T09:48:01.660000Z",
      "name": "Beauty & Personal Care",
      "platforms": {},
      "priority_order": 4,
      "slug": "beauty-personal-care",
      "synonyms": [],
      "tags": [],
      "id": "5f2a7fa831c66700018cdc4a"
    },
    {
      "uid": 11,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "created_on": "2020-08-05T09:45:39.797000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/vQv4ot_0DEFAULT-LOGO.jpg701cb5af-2024-4abf-ae5d-b68bc1a3cd43/vQv4ot_0DEFAULT-LOGO.jpg",
      "modified_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "modified_on": "2020-08-06T11:38:57.599000Z",
      "name": "Home & Living",
      "platforms": {},
      "priority_order": 5,
      "slug": "home-living",
      "synonyms": [],
      "tags": [],
      "id": "5f2a7fc331c66700018cdc4b"
    },
    {
      "uid": 14,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "created_on": "2020-08-05T09:48:42.347000Z",
      "is_active": false,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/hTobjV_0DEFAULT-LOGO.jpga020159c-7fe7-4c1c-a11a-4be61a60da9f/hTobjV_0DEFAULT-LOGO.jpg",
      "modified_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "modified_on": "2020-08-05T09:48:42.347000Z",
      "name": "Baby Care & Kids Essentials",
      "platforms": {},
      "priority_order": 7,
      "slug": "baby-care-kids-essentials",
      "synonyms": [],
      "tags": [],
      "id": "5f2a807a31c66700018cdc4e"
    },
    {
      "_cls": "Department",
      "created_on": "2021-01-13T10:12:33.002000Z",
      "modified_on": "2021-01-13T13:50:55.415000Z",
      "created_by": {
        "username": "919821012599_75351",
        "user_id": "5721"
      },
      "modified_by": {
        "username": "919821012599_75351",
        "user_id": "5721"
      },
      "uid": 21,
      "name": "Skin care products",
      "slug": "skin-care-produts",
      "logo": "https://hdn-1.addsale.com/x0/department/pictures/square-logo/original/rNz8grLys-.png",
      "tags": [],
      "is_active": true,
      "priority_order": 10235,
      "platforms": {},
      "synonyms": [
        "skin",
        "care"
      ],
      "_custom_json": {},
      "id": "5ffec79192813f0001eb6560"
    }
  ]
}
```
</details>









---


#### updateDepartment
Update the department by their uid.




```swift
platformClient.catalog.updateDepartment(uid: uid, body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uid | String | yes | A `uid` is a unique identifier of a department. |  
| body | DepartmentCreateUpdate | yes | Request body |


Update the department by their uid using this API.

*Returned Response:*




[DepartmentModel](#DepartmentModel)

Success Response. See example below or refer `DepartmentCreateResponseSchema` for details




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


#### getDepartmentData
Get specific departments details by passing in unique id of the department.




```swift
platformClient.catalog.getDepartmentData(uid: uid) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| uid | String | yes | A `uid` is a unique identifier of a department. |  



Allows you to get department data, by uid.

*Returned Response:*




[DepartmentsResponse](#DepartmentsResponse)

Departments Data. See example below or refer `DepartmentsResponse` for details




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "page": {},
  "items": [
    {
      "uid": 5,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "created_on": "2020-07-01T05:33:39.325000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/BSQ9Gk_123522-best-starry-sky-wallpaper-1920x1200-ipad-pro.jpgc7d0c15c-c1ff-47eb-8423-6e2df51f2ddf/BSQ9Gk_123522-best-starry-sky-wallpaper-1920x1200-ipad-pro.jpg",
      "modified_by": {
        "username": "917753852478_51632",
        "user_id": "5677"
      },
      "modified_on": "2021-03-03T15:55:25.118000Z",
      "name": "Sample Dept",
      "platforms": {},
      "priority_order": 111,
      "slug": "sample-dept",
      "synonyms": [
        "test",
        "sampe"
      ],
      "tags": [],
      "id": "5efc2033623d390001782238"
    },
    {
      "uid": 2,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "app@fynd.com",
        "user_id": "0"
      },
      "created_on": "2020-05-19T06:53:37.629000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/addsale/media/logo/department/original/15974_381e2236c2a348cc851c29a5d05c66a9.png",
      "modified_by": {
        "user_id": "10",
        "username": "fahimsakri_gofynd_com_44938"
      },
      "modified_on": "2021-03-04T14:01:02.556000Z",
      "name": "Men's Fashion",
      "platforms": {
        "fynd": true,
        "fynd_store": true,
        "marketplace": true,
        "openapi": true,
        "uniket_store": true,
        "uniket_wholesale": true
      },
      "priority_order": 111,
      "slug": "men-s-fashion",
      "synonyms": [],
      "tags": [],
      "id": "5ec3827156a7200001c9aeea"
    },
    {
      "uid": 4,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "fahimsakri_gofynd_com_44938",
        "user_id": "10"
      },
      "created_on": "2020-06-29T10:59:33.620000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/ywPVrU_preview_a637ca6e4da6e38f03eb0d650ac5d6ba.jpgc73cc22f-b5ee-4fd4-a585-8ada35762d68/ywPVrU_preview_a637ca6e4da6e38f03eb0d650ac5d6ba.jpg",
      "modified_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "modified_on": "2020-08-06T18:08:02.675000Z",
      "name": "Groceries",
      "platforms": {},
      "priority_order": 10,
      "slug": "groceries",
      "synonyms": [],
      "tags": [],
      "id": "5ef9c9959b04f00001e40dba"
    },
    {
      "uid": 1,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "app@fynd.com",
        "user_id": "0"
      },
      "created_on": "2020-05-18T16:14:41.689000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/platform/pictures/free-logo/original/_G1Z2Fg1L-http:d3p8ifzkmzds37.cloudfront.netmedialogodepartmentoriginal15870_c287d3c2431a432bb0e49363ef6b82bc.png.png",
      "modified_by": {
        "user_id": "5677",
        "username": "917753852478_51632"
      },
      "modified_on": "2021-03-04T15:39:38.528000Z",
      "name": "Electronics",
      "platforms": {
        "fynd": true,
        "fynd_store": true,
        "marketplace": true,
        "openapi": true,
        "uniket_store": true,
        "uniket_wholesale": true
      },
      "priority_order": 100,
      "slug": "electronics",
      "synonyms": [],
      "tags": [],
      "id": "5ec2b471661a4100019fca0d"
    },
    {
      "uid": 3,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "created_on": "2020-05-27T12:04:19.111000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/landscape-banner/original/g2plam_logo_Jio.pngeeb392ca-3958-46a0-9f13-23c205b596f7/g2plam_logo_Jio.png",
      "modified_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "modified_on": "2020-08-06T18:07:46.060000Z",
      "name": "Industrial Supplies",
      "platforms": {},
      "priority_order": 111,
      "slug": "industrial-supplies",
      "synonyms": [],
      "tags": [],
      "id": "5ece5743cd1bae0001440427"
    },
    {
      "uid": 6,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "abhinavsrivastava_gofynd_com_05674",
        "user_id": "13"
      },
      "created_on": "2020-07-06T07:56:01.508000Z",
      "is_active": false,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/wTcfEi_crysis_-_1.jpg14580947-a659-486d-b2d3-d2ca025b1cac/wTcfEi_crysis_-_1.jpg",
      "modified_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "modified_on": "2020-08-06T18:08:12.576000Z",
      "name": "Clothing",
      "platforms": {},
      "priority_order": 1,
      "slug": "clothing",
      "synonyms": [],
      "tags": [],
      "id": "5f02d9116b0ae500018923dd"
    },
    {
      "uid": 8,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "created_on": "2020-08-05T09:04:33.604000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/RxTsd8_0DEFAULT-LOGO.jpg000ccfc1-2f79-4426-9ac3-de2468c2fcb9/RxTsd8_0DEFAULT-LOGO.jpg",
      "modified_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "modified_on": "2020-08-05T09:44:01.234000Z",
      "name": "Kids",
      "platforms": {},
      "priority_order": 3,
      "slug": "kids",
      "synonyms": [],
      "tags": [],
      "id": "5f2a762131c66700018cdc47"
    },
    {
      "uid": 9,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "created_on": "2020-08-05T09:44:46.632000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/tKkDB8_0DEFAULT-LOGO.jpg1c324d4d-f667-4af8-8d98-37205d34e3b5/tKkDB8_0DEFAULT-LOGO.jpg",
      "modified_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "modified_on": "2020-08-06T18:07:35.231000Z",
      "name": "Women's Fashion",
      "platforms": {},
      "priority_order": 2,
      "slug": "women-s-fashion",
      "synonyms": [],
      "tags": [],
      "id": "5f2a7f8e31c66700018cdc49"
    },
    {
      "uid": 10,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "created_on": "2020-08-05T09:45:12.075000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/oLoxiL_0DEFAULT-LOGO.jpgbd050200-700a-4a3e-9da6-e6b78fbee943/oLoxiL_0DEFAULT-LOGO.jpg",
      "modified_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "modified_on": "2020-08-05T09:48:01.660000Z",
      "name": "Beauty & Personal Care",
      "platforms": {},
      "priority_order": 4,
      "slug": "beauty-personal-care",
      "synonyms": [],
      "tags": [],
      "id": "5f2a7fa831c66700018cdc4a"
    },
    {
      "uid": 11,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "created_on": "2020-08-05T09:45:39.797000Z",
      "is_active": true,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/vQv4ot_0DEFAULT-LOGO.jpg701cb5af-2024-4abf-ae5d-b68bc1a3cd43/vQv4ot_0DEFAULT-LOGO.jpg",
      "modified_by": {
        "username": "918793638893_86554",
        "user_id": "3"
      },
      "modified_on": "2020-08-06T11:38:57.599000Z",
      "name": "Home & Living",
      "platforms": {},
      "priority_order": 5,
      "slug": "home-living",
      "synonyms": [],
      "tags": [],
      "id": "5f2a7fc331c66700018cdc4b"
    },
    {
      "uid": 14,
      "_cls": "Department",
      "_custom_json": {},
      "created_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "created_on": "2020-08-05T09:48:42.347000Z",
      "is_active": false,
      "logo": "https://hdn-1.addsale.com/x0/seller/pictures/logo/original/hTobjV_0DEFAULT-LOGO.jpga020159c-7fe7-4c1c-a11a-4be61a60da9f/hTobjV_0DEFAULT-LOGO.jpg",
      "modified_by": {
        "username": "asavarijadhav_gofynd_com_99880",
        "user_id": "5634"
      },
      "modified_on": "2020-08-05T09:48:42.347000Z",
      "name": "Baby Care & Kids Essentials",
      "platforms": {},
      "priority_order": 7,
      "slug": "baby-care-kids-essentials",
      "synonyms": [],
      "tags": [],
      "id": "5f2a807a31c66700018cdc4e"
    },
    {
      "_cls": "Department",
      "created_on": "2021-01-13T10:12:33.002000Z",
      "modified_on": "2021-01-13T13:50:55.415000Z",
      "created_by": {
        "username": "919821012599_75351",
        "user_id": "5721"
      },
      "modified_by": {
        "username": "919821012599_75351",
        "user_id": "5721"
      },
      "uid": 21,
      "name": "Skin care products",
      "slug": "skin-care-produts",
      "logo": "https://hdn-1.addsale.com/x0/department/pictures/square-logo/original/rNz8grLys-.png",
      "tags": [],
      "is_active": true,
      "priority_order": 10235,
      "platforms": {},
      "synonyms": [
        "skin",
        "care"
      ],
      "_custom_json": {},
      "id": "5ffec79192813f0001eb6560"
    }
  ]
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
platformClient.application("<APPLICATION_ID>").catalog.getAppProducts(brandIds: brandIds, categoryIds: categoryIds, departmentIds: departmentIds, tags: tags, itemIds: itemIds, pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| brandIds | [Int]? | no | Get multiple products filtered by Brand Ids |   
| categoryIds | [Int]? | no | Get multiple products filtered by Category Ids |   
| departmentIds | [Int]? | no | Get multiple products filtered by Department Ids |   
| tags | [String]? | no | Get multiple products filtered by tags |   
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

 
 
 #### [DeleteResponse](#DeleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |
 | code | String? |  yes  |  |
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [SearchKeywordResult](#SearchKeywordResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | query | [String: Any] |  no  |  |
 | sortOn | String |  no  |  |

---


 
 
 #### [CreateSearchKeyword](#CreateSearchKeyword)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | result | [SearchKeywordResult](#SearchKeywordResult) |  no  |  |
 | words | [String]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | appId | String? |  yes  |  |

---


 
 
 #### [GetSearchWordsData](#GetSearchWordsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | result | [String: Any]? |  yes  |  |
 | words | [String]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | appId | String? |  yes  |  |
 | uid | String? |  yes  |  |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | size | Int? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |

---


 
 
 #### [GetSearchWordsDetailResponse](#GetSearchWordsDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [GetSearchWordsData](#GetSearchWordsData)? |  yes  |  |

---


 
 
 #### [GetSearchWordsResponse](#GetSearchWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetSearchWordsData](#GetSearchWordsData)]? |  yes  |  |

---


 
 
 #### [AutocompletePageAction](#AutocompletePageAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | params | [String: Any]? |  yes  |  |
 | url | String? |  yes  |  |
 | query | [String: Any]? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [AutocompleteAction](#AutocompleteAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [AutocompletePageAction](#AutocompletePageAction)? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [AutoCompleteMedia](#AutoCompleteMedia)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [AutocompleteResult](#AutocompleteResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | [AutocompleteAction](#AutocompleteAction)? |  yes  |  |
 | display | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | logo | [AutoCompleteMedia](#AutoCompleteMedia)? |  yes  |  |

---


 
 
 #### [CreateAutocompleteKeyword](#CreateAutocompleteKeyword)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | words | [String]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | results | [[AutocompleteResult](#AutocompleteResult)]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | appId | String? |  yes  |  |

---


 
 
 #### [GetAutocompleteWordsData](#GetAutocompleteWordsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | words | [String]? |  yes  |  |
 | results | [[String: Any]]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | appId | String? |  yes  |  |
 | uid | String? |  yes  |  |

---


 
 
 #### [GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetAutocompleteWordsData](#GetAutocompleteWordsData)]? |  yes  |  |

---


 
 
 #### [CreateAutocompleteWordsResponse](#CreateAutocompleteWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |
 | results | [[String: Any]]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | words | [String]? |  yes  |  |

---


 
 
 #### [ProductBundleItem](#ProductBundleItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allowRemove | Bool? |  yes  |  |
 | productUid | Int |  no  |  |
 | autoSelect | Bool? |  yes  |  |
 | minQuantity | Int |  no  |  |
 | autoAddToCart | Bool? |  yes  |  |
 | maxQuantity | Int |  no  |  |

---


 
 
 #### [ProductBundleRequest](#ProductBundleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sameStoreAssignment | Bool? |  yes  |  |
 | choice | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | name | String |  no  |  |
 | companyId | Int? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)] |  no  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | pageVisibility | [String]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | slug | String |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [GetProductBundleCreateResponse](#GetProductBundleCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | sameStoreAssignment | Bool? |  yes  |  |
 | choice | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | name | String |  no  |  |
 | companyId | Int? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)] |  no  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | pageVisibility | [String]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | slug | String |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [GetProductBundleListingResponse](#GetProductBundleListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetProductBundleCreateResponse](#GetProductBundleCreateResponse)]? |  yes  |  |

---


 
 
 #### [ProductBundleUpdateRequest](#ProductBundleUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sameStoreAssignment | Bool? |  yes  |  |
 | choice | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | name | String |  no  |  |
 | companyId | Int? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)] |  no  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | pageVisibility | [String]? |  yes  |  |
 | slug | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [Size](#Size)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | quantity | Int? |  yes  |  |
 | display | String? |  yes  |  |
 | value | String? |  yes  |  |
 | isAvailable | Bool? |  yes  |  |

---


 
 
 #### [LimitedProductData](#LimitedProductData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | images | [String]? |  yes  |  |
 | identifier | [String: Any]? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | price | [String: Any]? |  yes  |  |
 | sizes | [String]? |  yes  |  |
 | slug | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | shortDescription | String? |  yes  |  |

---


 
 
 #### [Price](#Price)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxMarked | Double? |  yes  |  |
 | minMarked | Double? |  yes  |  |
 | maxEffective | Double? |  yes  |  |
 | minEffective | Double? |  yes  |  |
 | currency | String? |  yes  |  |

---


 
 
 #### [GetProducts](#GetProducts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxQuantity | Int? |  yes  |  |
 | allowRemove | Bool? |  yes  |  |
 | sizes | [[Size](#Size)]? |  yes  |  |
 | autoSelect | Bool? |  yes  |  |
 | productDetails | [LimitedProductData](#LimitedProductData)? |  yes  |  |
 | minQuantity | Int? |  yes  |  |
 | price | [Price](#Price)? |  yes  |  |
 | autoAddToCart | Bool? |  yes  |  |
 | productUid | Int? |  yes  |  |

---


 
 
 #### [GetProductBundleResponse](#GetProductBundleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sameStoreAssignment | Bool? |  yes  |  |
 | choice | String? |  yes  |  |
 | products | [[GetProducts](#GetProducts)]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | pageVisibility | [String]? |  yes  |  |
 | slug | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headers | [String: Any]? |  yes  |  |
 | values | [[String: Any]]? |  yes  |  |
 | unit | String? |  yes  |  |

---


 
 
 #### [Guide](#Guide)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [Meta](#Meta)? |  yes  |  |

---


 
 
 #### [ValidateSizeGuide](#ValidateSizeGuide)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | id | String? |  yes  |  |
 | image | String? |  yes  |  |
 | description | String? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | guide | [Guide](#Guide)? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | tag | String? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | name | String |  no  |  |

---


 
 
 #### [SuccessResponse](#SuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ListSizeGuide](#ListSizeGuide)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [String: Any]? |  yes  |  |
 | items | [[String: Any]]? |  yes  |  |

---


 
 
 #### [SizeGuideResponse](#SizeGuideResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | id | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | guide | [String: Any]? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | active | Bool? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | tag | String? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ApplicationItemMOQ](#ApplicationItemMOQ)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maximum | Int? |  yes  | The maximum quantity allowed for purchase. |
 | incrementUnit | Int? |  yes  | The minimum quantity increment in which the item can be purchased. |
 | minimum | Int? |  yes  | The minimum quantity required for purchase. |

---


 
 
 #### [ApplicationItemSEO](#ApplicationItemSEO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | [String: Any]? |  yes  | The SEO title of the item |
 | description | [String: Any]? |  yes  | The SEO description of the item |

---


 
 
 #### [MetaFields](#MetaFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | [String: Any] |  no  | The key of the metadata. Should be a non-empty string and length should not exceed 30 characters. |
 | value | [String: Any] |  no  | The value of the metadata. Should be a non-empty string and length should not exceed 100 characters. |

---


 
 
 #### [ApplicationItemMeta](#ApplicationItemMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isGift | Bool? |  yes  | Whether the item is a gift or not |
 | isCod | Bool? |  yes  | Whether the item is available for Cash on Delivery (COD) or not |
 | moq | [ApplicationItemMOQ](#ApplicationItemMOQ)? |  yes  | Minimum Order Quantity information for the item |
 | altText | [String: Any]? |  yes  | Alternative text for the item's images |
 | seo | [ApplicationItemSEO](#ApplicationItemSEO)? |  yes  | Search Engine Optimization information for the item |
 | customJson | [String: Any]? |  yes  | Custom JSON data for the item |
 | customMeta | [[MetaFields](#MetaFields)]? |  yes  | Custom meta fields for the item |

---


 
 
 #### [SuccessResponse1](#SuccessResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [MOQData](#MOQData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maximum | Int? |  yes  |  |
 | incrementUnit | Int? |  yes  |  |
 | minimum | Int? |  yes  |  |

---


 
 
 #### [SEOData](#SEOData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | [String: Any]? |  yes  |  |
 | description | [String: Any]? |  yes  |  |

---


 
 
 #### [OwnerAppItemResponse](#OwnerAppItemResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isGift | Bool? |  yes  |  |
 | isCod | Bool? |  yes  |  |
 | moq | [MOQData](#MOQData)? |  yes  |  |
 | altText | [String: Any]? |  yes  |  |
 | seo | [SEOData](#SEOData)? |  yes  |  |

---


 
 
 #### [GetConfigMetadataResponse](#GetConfigMetadataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | values | [[String: Any]]? |  yes  |  |
 | data | [[String: Any]] |  no  |  |
 | condition | [[String: Any]]? |  yes  |  |

---


 
 
 #### [AttributeDetailsGroup](#AttributeDetailsGroup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unit | String? |  yes  |  |
 | displayType | String |  no  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | slug | String? |  yes  |  |
 | key | String? |  yes  |  |
 | priority | Int |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [AppConfigurationDetail](#AppConfigurationDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateSlugs | [String]? |  yes  |  |
 | attributes | [[AttributeDetailsGroup](#AttributeDetailsGroup)]? |  yes  |  |
 | isDefault | Bool |  no  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | slug | String |  no  |  |
 | appId | String |  no  |  |
 | priority | Int |  no  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ConfigErrorResponse](#ConfigErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [PageResponseType](#PageResponseType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | next | Int |  no  |  |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | totalCount | Int |  no  |  |

---


 
 
 #### [GetConfigResponse](#GetConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [PageResponseType](#PageResponseType) |  no  |  |
 | data | [[String: Any]] |  no  |  |

---


 
 
 #### [ConfigSuccessResponse](#ConfigSuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [AppConfigurationsSort](#AppConfigurationsSort)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool |  no  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | appId | String |  no  |  |
 | key | String |  no  |  |
 | priority | Int |  no  |  |
 | name | String? |  yes  |  |
 | defaultKey | String |  no  |  |

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


 
 
 #### [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | compare | [String: Any]? |  yes  |  |
 | detail | [String: Any]? |  yes  |  |
 | variant | [String: Any]? |  yes  |  |
 | similar | [String: Any]? |  yes  |  |

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


 
 
 #### [GetCatalogConfigurationMetaData](#GetCatalogConfigurationMetaData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | product | [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)? |  yes  |  |
 | listing | [MetaDataListingResponse](#MetaDataListingResponse)? |  yes  |  |

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
 | size | [ProductSize](#ProductSize) |  no  |  |
 | displayType | String |  no  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | key | String |  no  |  |
 | priority | Int |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [ConfigurationProductVariant](#ConfigurationProductVariant)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [[ConfigurationProductVariantConfig](#ConfigurationProductVariantConfig)]? |  yes  |  |

---


 
 
 #### [ConfigurationProductConfig](#ConfigurationProductConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | size | [ProductSize](#ProductSize)? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | key | String |  no  |  |
 | priority | Int |  no  |  |

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
 | mapValues | [[String: Any]]? |  yes  |  |
 | map | [String: Any]? |  yes  |  |
 | condition | String? |  yes  |  |
 | value | String? |  yes  |  |
 | sort | String? |  yes  |  |
 | priority | [String]? |  yes  |  |
 | bucketPoints | [[ConfigurationBucketPoints](#ConfigurationBucketPoints)]? |  yes  |  |

---


 
 
 #### [ConfigurationListingFilterConfig](#ConfigurationListingFilterConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | displayName | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | valueConfig | [ConfigurationListingFilterValue](#ConfigurationListingFilterValue)? |  yes  |  |
 | isActive | Bool |  no  |  |
 | key | String |  no  |  |
 | priority | Int |  no  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ConfigurationListingFilter](#ConfigurationListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allowSingle | Bool |  no  |  |
 | attributeConfig | [[ConfigurationListingFilterConfig](#ConfigurationListingFilterConfig)]? |  yes  |  |

---


 
 
 #### [ConfigurationListingSortConfig](#ConfigurationListingSortConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | key | String |  no  |  |
 | priority | Int |  no  |  |
 | name | String? |  yes  |  |

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


 
 
 #### [AppConfiguration](#AppConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | product | [ConfigurationProduct](#ConfigurationProduct)? |  yes  |  |
 | listing | [ConfigurationListing](#ConfigurationListing)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | configId | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | configType | String |  no  |  |
 | appId | String |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |

---


 
 
 #### [AppCatalogConfiguration](#AppCatalogConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |
 | product | [ConfigurationProduct](#ConfigurationProduct)? |  yes  |  |
 | listing | [ConfigurationListing](#ConfigurationListing)? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | configId | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | configType | String |  no  |  |
 | appId | String |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |

---


 
 
 #### [GetAppCatalogConfiguration](#GetAppCatalogConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  |  |
 | data | [AppCatalogConfiguration](#AppCatalogConfiguration)? |  yes  |  |

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
 | id | String? |  yes  |  |
 | product | [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)? |  yes  |  |
 | listing | [GetCatalogConfigurationDetailsSchemaListing](#GetCatalogConfigurationDetailsSchemaListing)? |  yes  |  |
 | configId | String? |  yes  |  |
 | configType | String |  no  |  |
 | appId | String |  no  |  |

---


 
 
 #### [GetAppCatalogEntityConfiguration](#GetAppCatalogEntityConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  |  |
 | data | [EntityConfiguration](#EntityConfiguration)? |  yes  |  |

---


 
 
 #### [ProductFiltersValue](#ProductFiltersValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int? |  yes  |  |
 | isSelected | Bool |  no  |  |
 | currencyCode | String? |  yes  |  |
 | max | Int? |  yes  |  |
 | display | String |  no  |  |
 | currencySymbol | String? |  yes  |  |
 | queryFormat | String? |  yes  |  |
 | selectedMax | Int? |  yes  |  |
 | displayFormat | String? |  yes  |  |
 | value | [String: Any] |  no  |  |
 | count | Int? |  yes  |  |
 | selectedMin | Int? |  yes  |  |

---


 
 
 #### [ProductFiltersKey](#ProductFiltersKey)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | operators | [String]? |  yes  |  |
 | display | String |  no  |  |
 | logo | String? |  yes  |  |
 | kind | String? |  yes  |  |
 | name | String |  no  |  |

---


 
 
 #### [ProductFilters](#ProductFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | values | [[ProductFiltersValue](#ProductFiltersValue)] |  no  |  |
 | key | [ProductFiltersKey](#ProductFiltersKey) |  no  |  |

---


 
 
 #### [ProductSortOn](#ProductSortOn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | isSelected | Bool? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [GetCollectionQueryOptionResponse](#GetCollectionQueryOptionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | operators | [String: String] |  no  |  |
 | filters | [[ProductFilters](#ProductFilters)]? |  yes  |  |
 | sortOn | [[ProductSortOn](#ProductSortOn)]? |  yes  |  |

---


 
 
 #### [CollectionBadge](#CollectionBadge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | color | String? |  yes  |  |
 | text | String? |  yes  |  |

---


 
 
 #### [CollectionQuery](#CollectionQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | op | String |  no  | The operation to be performed on the attribute of the collection query |
 | value | [[String: Any]] |  no  | The value of the attribute of the collection query |
 | attribute | String |  no  | The attribute of the collection query |

---


 
 
 #### [CollectionImage](#CollectionImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | email | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [NextSchedule](#NextSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [CollectionSchedule](#CollectionSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | duration | Int? |  yes  |  |
 | end | String? |  yes  |  |
 | start | String? |  yes  |  |
 | cron | String? |  yes  |  |
 | nextSchedule | [[NextSchedule](#NextSchedule)]? |  yes  |  |

---


 
 
 #### [SeoDetail](#SeoDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [CollectionBanner](#CollectionBanner)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | [CollectionImage](#CollectionImage) |  no  |  |
 | portrait | [CollectionImage](#CollectionImage) |  no  |  |

---


 
 
 #### [CreateCollection](#CreateCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | badge | [CollectionBadge](#CollectionBadge)? |  yes  |  |
 | type | String |  no  |  |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | [CollectionImage](#CollectionImage) |  no  |  |
 | isVisible | Bool? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |
 | modifiedBy | [UserInfo](#UserInfo)? |  yes  |  |
 | name | String |  no  |  |
 | allowSort | Bool? |  yes  |  |
 | schedule | [CollectionSchedule](#CollectionSchedule)? |  yes  |  |
 | localeLanguage | [String: Any]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | seo | [SeoDetail](#SeoDetail)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | banners | [CollectionBanner](#CollectionBanner) |  no  |  |
 | sortOn | String? |  yes  |  |
 | priority | Int? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | published | Bool? |  yes  |  |
 | slug | String |  no  |  |
 | allowFacets | Bool? |  yes  |  |
 | appId | String |  no  |  |
 | createdBy | [UserInfo](#UserInfo)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [BannerImage](#BannerImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ImageUrls](#ImageUrls)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | [BannerImage](#BannerImage)? |  yes  |  |
 | portrait | [BannerImage](#BannerImage)? |  yes  |  |

---


 
 
 #### [CollectionCreateResponse](#CollectionCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | badge | [String: Any]? |  yes  |  |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  |  |
 | type | String? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | [BannerImage](#BannerImage)? |  yes  |  |
 | tag | [String]? |  yes  |  |
 | cron | [String: Any]? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | allowSort | Bool? |  yes  |  |
 | schedule | [String: Any]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | sortOn | String? |  yes  |  |
 | priority | Int? |  yes  |  |
 | slug | String? |  yes  |  |
 | allowFacets | Bool? |  yes  |  |
 | appId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [CollectionListingFilterTag](#CollectionListingFilterTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSelected | Bool? |  yes  |  |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [CollectionListingFilterType](#CollectionListingFilterType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSelected | Bool? |  yes  |  |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [CollectionListingFilter](#CollectionListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [[CollectionListingFilterTag](#CollectionListingFilterTag)]? |  yes  |  |
 | type | [[CollectionListingFilterType](#CollectionListingFilterType)]? |  yes  |  |

---


 
 
 #### [Media](#Media)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ActionPage](#ActionPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | query | [String: Any]? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Action](#Action)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [ActionPage](#ActionPage)? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [GetCollectionDetailNest](#GetCollectionDetailNest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | badge | [String: Any]? |  yes  |  |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  |  |
 | type | String? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | [Media](#Media)? |  yes  |  |
 | tag | [String]? |  yes  |  |
 | uid | String? |  yes  |  |
 | cron | [String: Any]? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | allowSort | Bool? |  yes  |  |
 | schedule | [String: Any]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | priority | Int? |  yes  |  |
 | slug | String? |  yes  |  |
 | allowFacets | Bool? |  yes  |  |
 | appId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [GetCollectionListingResponse](#GetCollectionListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | filters | [CollectionListingFilter](#CollectionListingFilter)? |  yes  |  |
 | items | [[GetCollectionDetailNest](#GetCollectionDetailNest)]? |  yes  |  |

---


 
 
 #### [CollectionDetailResponse](#CollectionDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | badge | [String: Any]? |  yes  |  |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  |  |
 | type | String? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | [Media](#Media)? |  yes  |  |
 | tag | [String]? |  yes  |  |
 | uid | String? |  yes  |  |
 | cron | [String: Any]? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | allowSort | Bool? |  yes  |  |
 | schedule | [String: Any]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | priority | Int? |  yes  |  |
 | slug | String? |  yes  |  |
 | allowFacets | Bool? |  yes  |  |
 | appId | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [UpdateCollection](#UpdateCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | badge | [CollectionBadge](#CollectionBadge)? |  yes  |  |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  |  |
 | type | String? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | [CollectionImage](#CollectionImage)? |  yes  |  |
 | isVisible | Bool? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |
 | modifiedBy | [UserInfo](#UserInfo)? |  yes  |  |
 | name | String? |  yes  |  |
 | allowSort | Bool? |  yes  |  |
 | schedule | [CollectionSchedule](#CollectionSchedule)? |  yes  |  |
 | localeLanguage | [String: Any]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | seo | [SeoDetail](#SeoDetail)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | banners | [CollectionBanner](#CollectionBanner)? |  yes  |  |
 | sortOn | String? |  yes  |  |
 | priority | Int? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | published | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | allowFacets | Bool? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [CollectionItem](#CollectionItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String |  no  |  |
 | itemId | Int |  no  |  |
 | priority | Int? |  yes  |  |

---


 
 
 #### [CollectionItemUpdate](#CollectionItemUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allowSort | Bool? |  yes  |  |
 | query | [[CollectionQuery](#CollectionQuery)]? |  yes  |  |
 | type | String? |  yes  |  |
 | items | [[CollectionItem](#CollectionItem)]? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |
 | allowFacets | Bool? |  yes  |  |

---


 
 
 #### [UpdatedResponse](#UpdatedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | itemsNotUpdated | [Int]? |  yes  |  |

---


 
 
 #### [Price1](#Price1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyCode | String? |  yes  |  |
 | max | Double? |  yes  |  |
 | currencySymbol | String? |  yes  |  |
 | min | Double? |  yes  |  |

---


 
 
 #### [ProductListingPrice](#ProductListingPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | [Price1](#Price1)? |  yes  |  |
 | effective | [Price1](#Price1)? |  yes  |  |

---


 
 
 #### [ProductBrand](#ProductBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | [Action](#Action)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | logo | [Media](#Media)? |  yes  |  |

---


 
 
 #### [ProductDetailAttribute](#ProductDetailAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | key | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | details | [[ProductDetailAttribute](#ProductDetailAttribute)]? |  yes  |  |

---


 
 
 #### [ProductListingDetail](#ProductListingDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | description | String? |  yes  |  |
 | hasVariant | Bool? |  yes  |  |
 | color | String? |  yes  |  |
 | similars | [String]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | discount | String? |  yes  |  |
 | price | [ProductListingPrice](#ProductListingPrice)? |  yes  |  |
 | promoMeta | [String: Any]? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | itemType | String? |  yes  |  |
 | medias | [[Media](#Media)]? |  yes  |  |
 | rating | Double? |  yes  |  |
 | brand | [ProductBrand](#ProductBrand)? |  yes  |  |
 | name | String? |  yes  |  |
 | groupedAttributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)]? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | sellable | Bool? |  yes  |  |
 | tryouts | [String]? |  yes  |  |
 | ratingCount | Int? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | productOnlineDate | String? |  yes  |  |
 | imageNature | String? |  yes  |  |
 | highlights | [String]? |  yes  |  |
 | slug | String |  no  |  |

---


 
 
 #### [GetCollectionItemsResponse](#GetCollectionItemsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | filters | [[ProductFilters](#ProductFilters)]? |  yes  |  |
 | sortOn | [[ProductSortOn](#ProductSortOn)]? |  yes  |  |
 | items | [[ProductListingDetail](#ProductListingDetail)]? |  yes  |  |

---


 
 
 #### [CatalogInsightBrand](#CatalogInsightBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleFreshness | Int? |  yes  |  |
 | totalSizes | Int? |  yes  |  |
 | totalArticles | Int? |  yes  |  |
 | availableArticles | Int? |  yes  |  |
 | availableSizes | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [CatalogInsightItem](#CatalogInsightItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellableCount | Int? |  yes  |  |
 | outOfStockCount | Int? |  yes  |  |
 | count | Int? |  yes  |  |

---


 
 
 #### [CatalogInsightResponse](#CatalogInsightResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandDistribution | [CatalogInsightBrand](#CatalogInsightBrand)? |  yes  |  |
 | item | [CatalogInsightItem](#CatalogInsightItem)? |  yes  |  |

---


 
 
 #### [CrossSellingData](#CrossSellingData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | products | Int? |  yes  |  |
 | articles | Int? |  yes  |  |

---


 
 
 #### [CrossSellingResponse](#CrossSellingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandDistribution | [CatalogInsightBrand](#CatalogInsightBrand)? |  yes  |  |
 | data | [CrossSellingData](#CrossSellingData)? |  yes  |  |

---


 
 
 #### [OptInPostRequest](#OptInPostRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | brandIds | [Int]? |  yes  |  |
 | optLevel | String |  no  |  |
 | storeIds | [Int]? |  yes  |  |
 | platform | String? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [CompanyOptIn](#CompanyOptIn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | Int |  no  |  |
 | companyId | Int |  no  |  |
 | brandIds | [Int] |  no  |  |
 | optLevel | String |  no  |  |
 | storeIds | [Int] |  no  |  |
 | createdOn | Int |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | platform | String |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |
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
 | uid | Int? |  yes  |  |
 | businessType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | companyType | String? |  yes  |  |

---


 
 
 #### [CompanyBrandDetail](#CompanyBrandDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalArticle | Int? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | brandName | String? |  yes  |  |

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
 | store | Int? |  yes  |  |
 | brand | Int? |  yes  |  |
 | company | String? |  yes  |  |

---


 
 
 #### [StoreDetail](#StoreDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manager | [String: Any]? |  yes  |  |
 | storeType | String? |  yes  |  |
 | additionalContacts | [[String: Any]]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | documents | [[String: Any]]? |  yes  |  |
 | timing | [String: Any]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | address | [String: Any]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [OptinStoreDetails](#OptinStoreDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[StoreDetail](#StoreDetail)]? |  yes  |  |

---


 
 
 #### [AttributeMasterFilter](#AttributeMasterFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | indexing | Bool |  no  |  |
 | priority | Int? |  yes  |  |
 | dependsOn | [String]? |  yes  |  |

---


 
 
 #### [AttributeMasterDetails](#AttributeMasterDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayType | String |  no  |  |

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
 | type | String |  no  |  |
 | range | [AttributeSchemaRange](#AttributeSchemaRange)? |  yes  |  |
 | allowedValues | [String]? |  yes  |  |
 | multi | Bool? |  yes  |  |
 | mandatory | Bool? |  yes  |  |
 | format | String? |  yes  |  |

---


 
 
 #### [AttributeMasterMandatoryDetails](#AttributeMasterMandatoryDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l3Keys | [String]? |  yes  |  |

---


 
 
 #### [AttributeMasterMeta](#AttributeMasterMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mandatoryDetails | [AttributeMasterMandatoryDetails](#AttributeMasterMandatoryDetails) |  no  |  |
 | enriched | Bool? |  yes  |  |

---


 
 
 #### [GenderDetail](#GenderDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [AttributeMasterFilter](#AttributeMasterFilter)? |  yes  |  |
 | id | String? |  yes  |  |
 | description | String? |  yes  |  |
 | isNested | Bool? |  yes  |  |
 | logo | String? |  yes  |  |
 | details | [AttributeMasterDetails](#AttributeMasterDetails)? |  yes  |  |
 | slug | String? |  yes  |  |
 | enabledForEndConsumer | Bool? |  yes  |  |
 | departments | [String]? |  yes  |  |
 | schema | [AttributeMaster](#AttributeMaster)? |  yes  |  |
 | meta | [AttributeMasterMeta](#AttributeMasterMeta)? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [CategoriesResponse](#CategoriesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateSlug | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

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
 | code | String? |  yes  |  |
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | errors | [String: Any]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [DepartmentCreateUpdate](#DepartmentCreateUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | synonyms | [String]? |  yes  |  |
 | cls | String? |  yes  |  |
 | logo | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | priorityOrder | Int |  no  |  |
 | tags | [String]? |  yes  |  |
 | slug | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | platforms | [String: Any]? |  yes  |  |
 | name | String |  no  |  |

---


 
 
 #### [DepartmentCreateResponse](#DepartmentCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | uid | Int |  no  |  |

---


 
 
 #### [DepartmentCreateErrorResponse](#DepartmentCreateErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String? |  yes  |  |

---


 
 
 #### [UserSerializer](#UserSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | contact | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | username | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [GetDepartment](#GetDepartment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | synonyms | [String]? |  yes  |  |
 | pageNo | Int? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | pageSize | Int? |  yes  |  |
 | itemType | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | priorityOrder | Int? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | slug | String? |  yes  |  |
 | search | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [DepartmentsResponse](#DepartmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetDepartment](#GetDepartment)]? |  yes  |  |

---


 
 
 #### [DepartmentErrorResponse](#DepartmentErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | errors | [String: Any]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [UserDetail](#UserDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | superUser | Bool? |  yes  | A flag indicating whether the user is a super user. |
 | username | String |  no  | The username of the user. |
 | contact | String? |  yes  | The contact details of the user. |
 | userId | String |  no  | The user ID of the user. |

---


 
 
 #### [DepartmentModel](#DepartmentModel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | synonyms | [[String: Any]]? |  yes  | A list of synonyms for the department name |
 | modifiedOn | String |  no  | Timestamp of the last modification of the document |
 | verifiedBy | [UserDetail](#UserDetail)? |  yes  | User details of the verifier of the document, if applicable |
 | cls | [String: Any]? |  yes  |  |
 | logo | [String: Any] |  no  | The URL of the department's logo |
 | isActive | Bool? |  yes  | Whether the department is currently active |
 | modifiedBy | [UserDetail](#UserDetail)? |  yes  | User details of the last modifier of the document |
 | createdOn | String |  no  | Timestamp of the creation of the document |
 | priorityOrder | Int |  no  | The priority order of the department |
 | slug | [String: Any] |  no  | The unique slug identifier for the department |
 | customJson | [String: Any]? |  yes  |  |
 | uid | Int |  no  | The unique ID for the department |
 | id | [String: Any]? |  yes  |  |
 | createdBy | [UserDetail](#UserDetail)? |  yes  | User details of the creator of the document |
 | name | [String: Any] |  no  | The name of the department |
 | verifiedOn | String? |  yes  | Timestamp of when the document was verified, if applicable |

---


 
 
 #### [ProductTemplate](#ProductTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categories | [String]? |  yes  |  |
 | attributes | [String]? |  yes  |  |
 | description | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | isPhysical | Bool |  no  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | slug | String |  no  |  |
 | departments | [String]? |  yes  |  |
 | tag | String? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | isExpirable | Bool |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [TemplatesResponse](#TemplatesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [ProductTemplate](#ProductTemplate)? |  yes  |  |

---


 
 
 #### [TemplateDetails](#TemplateDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categories | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | attributes | [String]? |  yes  |  |
 | description | String? |  yes  |  |
 | isPhysical | Bool |  no  |  |
 | logo | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | slug | String |  no  |  |
 | departments | [String]? |  yes  |  |
 | tag | String? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | isExpirable | Bool |  no  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [Properties](#Properties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | [String: Any]? |  yes  |  |
 | noOfBoxes | [String: Any]? |  yes  |  |
 | currency | [String: Any]? |  yes  |  |
 | countryOfOrigin | [String: Any]? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | productGroupTag | [String: Any]? |  yes  |  |
 | itemType | [String: Any]? |  yes  |  |
 | customOrder | [String: Any]? |  yes  |  |
 | brandUid | [String: Any]? |  yes  |  |
 | sizeGuide | [String: Any]? |  yes  |  |
 | name | [String: Any]? |  yes  |  |
 | shortDescription | [String: Any]? |  yes  |  |
 | returnConfig | [String: Any]? |  yes  |  |
 | media | [String: Any]? |  yes  |  |
 | itemCode | [String: Any]? |  yes  |  |
 | isActive | [String: Any]? |  yes  |  |
 | categorySlug | [String: Any]? |  yes  |  |
 | hsnCode | [String: Any]? |  yes  |  |
 | command | [String: Any]? |  yes  |  |
 | productPublish | [String: Any]? |  yes  |  |
 | trader | [String: Any]? |  yes  |  |
 | variants | [String: Any]? |  yes  |  |
 | isDependent | [String: Any]? |  yes  |  |
 | highlights | [String: Any]? |  yes  |  |
 | sizes | [String: Any]? |  yes  |  |
 | tags | [String: Any]? |  yes  |  |
 | slug | [String: Any]? |  yes  |  |
 | multiSize | [String: Any]? |  yes  |  |
 | traderType | [String: Any]? |  yes  |  |

---


 
 
 #### [GlobalValidation](#GlobalValidation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | properties | [Properties](#Properties)? |  yes  |  |
 | type | String? |  yes  |  |
 | description | String? |  yes  |  |
 | required | [String]? |  yes  |  |
 | definitions | [String: Any]? |  yes  |  |

---


 
 
 #### [TemplateValidationData](#TemplateValidationData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | globalValidation | [GlobalValidation](#GlobalValidation)? |  yes  |  |
 | templateValidation | [String: Any]? |  yes  |  |

---


 
 
 #### [TemplatesValidationResponse](#TemplatesValidationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateDetails | [TemplateDetails](#TemplateDetails)? |  yes  |  |
 | data | [TemplateValidationData](#TemplateValidationData)? |  yes  |  |

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
 | username | String? |  yes  | The username of the user. |
 | uid | String? |  yes  | The unique ID of the user. |
 | email | String? |  yes  | The email address of the user. |
 | userId | String? |  yes  | The ID of the user. |

---


 
 
 #### [ProductTemplateExportResponse](#ProductTemplateExportResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerId | Int |  no  | The seller id that needs to be exported. |
 | filters | [String: Any]? |  yes  | The filters that needs to be exported. |
 | type | String? |  yes  | The type of file that needs to be exported. |
 | taskId | String |  no  | The task id of the job. |
 | modifiedOn | String? |  yes  | Modification date of the job |
 | status | String? |  yes  | The status of the job. |
 | url | String? |  yes  | The filters that needs to be exported. |
 | completedOn | String? |  yes  | Completion datetime of the job |
 | notificationEmails | [String]? |  yes  | The notification emails for the job. |
 | createdBy | [UserInfo1](#UserInfo1)? |  yes  | The user that created the job. |

---


 
 
 #### [ProductDownloadsResponse](#ProductDownloadsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductTemplateExportResponse](#ProductTemplateExportResponse)]? |  yes  | The items of the job. |

---


 
 
 #### [ProductTemplateExportFilterRequest](#ProductTemplateExportFilterRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromDate | String? |  yes  | The modified on date from which the data needs to be exported. |
 | toDate | String? |  yes  | The modified on date till when the data needs to be exported. |
 | brands | [String]? |  yes  | The list of the brands that needs to be exported. |
 | templates | [String] |  no  | The list of the templates that needs to be exported. |
 | catalogueTypes | [String] |  no  | The list of the type of the catalog such as set, standard and composite. |

---


 
 
 #### [ProductTemplateDownloadsExport](#ProductTemplateDownloadsExport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notificationEmails | [String]? |  yes  | The list of the emails to be notified after the completion of the job. |
 | filters | [ProductTemplateExportFilterRequest](#ProductTemplateExportFilterRequest)? |  yes  | This is the filters of the file for the export. |
 | type | String? |  yes  | This is the type of the file for the export. |

---


 
 
 #### [ProductConfigurationDownloads](#ProductConfigurationDownloads)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multivalue | Bool? |  yes  |  |
 | data | [[String: Any]]? |  yes  |  |

---


 
 
 #### [CategoryMappingValues](#CategoryMappingValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | catalogId | Int? |  yes  | It is the category id mapping of the respective platform with Fynd Platform. |
 | name | String |  no  | It is the name of the Category in the respective platform. |

---


 
 
 #### [CategoryMapping](#CategoryMapping)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ajio | [CategoryMappingValues](#CategoryMappingValues)? |  yes  | It is the category id mapping for ajio platform. |
 | facebook | [CategoryMappingValues](#CategoryMappingValues)? |  yes  | It is the category id mapping for facebook platform. |
 | google | [CategoryMappingValues](#CategoryMappingValues)? |  yes  | It is the category id mapping for google platform. |

---


 
 
 #### [Media1](#Media1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | String |  no  | It is the landscape cdn url for the category. |
 | portrait | String |  no  | It is the portrait cdn url for the category. |
 | logo | String |  no  | It is the logo cdn url for the category. |

---


 
 
 #### [Hierarchy](#Hierarchy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l1 | Int |  no  | It is the unique id of the L1 category mapped to the L3 category. |
 | department | Int |  no  | It is the unique identifier of the department the category is mapped to. |
 | l2 | Int |  no  | It is the unique id of the L2 category mapped to the L3 category. |

---


 
 
 #### [CategoryRequestBody](#CategoryRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaces | [CategoryMapping](#CategoryMapping)? |  yes  | It is the mapping of the category in different marketplaces. |
 | synonyms | [String]? |  yes  | It is the list of synonyms. |
 | media | [Media1](#Media1)? |  yes  | It is the details of the media such as banner and logo.. |
 | level | Int |  no  | It is the level of category |
 | tryouts | [String]? |  yes  | It is the list of tryouts. |
 | isActive | Bool |  no  | It is the flag indicating if the category is active. |
 | departments | [Int] |  no  | It is the list of unique department the category belongs to. |
 | slug | String? |  yes  | It is the slug of the category. |
 | hierarchy | [[Hierarchy](#Hierarchy)]? |  yes  | It is the list of category hierarchies for each department of an L3 category. |
 | priority | Int? |  yes  | It is the priority of the category. |
 | name | String |  no  | It is the name of the category |

---


 
 
 #### [CategoryCreateResponse](#CategoryCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | It is the message of the response from the category. |
 | uid | Int? |  yes  | It is the unique identifier of the category. |

---


 
 
 #### [Category](#Category)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaces | [CategoryMapping](#CategoryMapping)? |  yes  | It is the mapping of the category in different marketplaces. |
 | synonyms | [String]? |  yes  | It is the list of synonyms. |
 | createdBy | [String: Any]? |  yes  | It is the details of the user who created the category. |
 | id | String? |  yes  | It is the unique identifier of the category. |
 | media | [Media1](#Media1)? |  yes  | It is the details of the media such as banner and logo.. |
 | level | Int |  no  | It is the level of category |
 | modifiedOn | String? |  yes  | It is the date and time when the category was last modified. |
 | tryouts | [String]? |  yes  | It is the list of tryouts. |
 | isActive | Bool |  no  | It is the flag indicating if the category is active. |
 | modifiedBy | [String: Any]? |  yes  | It is the details of the user who last modified the category. |
 | createdOn | String? |  yes  | It is Date and time when the category was created. |
 | departments | [Int] |  no  | It is the list of unique department the category belongs to. |
 | slug | String? |  yes  | It is the slug of the category. |
 | hierarchy | [[Hierarchy](#Hierarchy)]? |  yes  | It is the list of category hierarchies for each department of an L3 category. |
 | uid | Int? |  yes  | It is the unique identifier of the category. |
 | priority | Int? |  yes  | It is the priority of the category. |
 | name | String |  no  | It is the name of the category |

---


 
 
 #### [CategoryResponse](#CategoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[Category](#Category)]? |  yes  |  |

---


 
 
 #### [CategoryUpdateResponse](#CategoryUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | It is the message of the response from the category. |
 | success | Bool? |  yes  | It is the flag indication the success response. |

---


 
 
 #### [SingleCategoryResponse](#SingleCategoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [Category](#Category)? |  yes  |  |

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
 | url | String? |  yes  |  |
 | tag | String? |  yes  |  |

---


 
 
 #### [CustomOrder](#CustomOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manufacturingTimeUnit | String? |  yes  |  |
 | isCustomOrder | Bool? |  yes  |  |
 | manufacturingTime | Int? |  yes  |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool |  no  |  |
 | unit | String |  no  |  |
 | time | Int |  no  |  |

---


 
 
 #### [ProductPublish](#ProductPublish)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productOnlineDate | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |

---


 
 
 #### [Trader](#Trader)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [String]? |  yes  |  |
 | name | String |  no  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [NetQuantity](#NetQuantity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Double? |  yes  | The value of the net quantity of the product. |
 | unit | String? |  yes  | The unit of measurement used for the net quantity of the product. |

---


 
 
 #### [ProductCreateUpdateSchemaV2](#ProductCreateUpdateSchemaV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | variantGroup | [String: Any]? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | description | String? |  yes  |  |
 | companyId | Int |  no  |  |
 | taxIdentifier | [TaxIdentifier](#TaxIdentifier) |  no  |  |
 | uid | Int? |  yes  |  |
 | variantMedia | [String: Any]? |  yes  |  |
 | noOfBoxes | Int? |  yes  |  |
 | currency | String |  no  |  |
 | countryOfOrigin | String |  no  |  |
 | teaserTag | [TeaserTag](#TeaserTag)? |  yes  |  |
 | templateTag | String |  no  |  |
 | productGroupTag | [String]? |  yes  |  |
 | itemType | String |  no  |  |
 | customOrder | [CustomOrder](#CustomOrder)? |  yes  |  |
 | brandUid | Int |  no  |  |
 | sizeGuide | String? |  yes  |  |
 | name | String |  no  |  |
 | shortDescription | String? |  yes  |  |
 | action | String? |  yes  |  |
 | changeRequestId | [String: Any]? |  yes  |  |
 | returnConfig | [ReturnConfig](#ReturnConfig) |  no  |  |
 | media | [[Media](#Media)]? |  yes  |  |
 | bulkJobId | String? |  yes  |  |
 | itemCode | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | isImageLessProduct | Bool? |  yes  |  |
 | categorySlug | String |  no  |  |
 | departments | [Int] |  no  |  |
 | productPublish | [ProductPublish](#ProductPublish)? |  yes  |  |
 | trader | [[Trader](#Trader)] |  no  |  |
 | variants | [String: Any]? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | isDependent | Bool? |  yes  |  |
 | highlights | [String]? |  yes  |  |
 | sizes | [[String: Any]] |  no  |  |
 | tags | [String]? |  yes  |  |
 | slug | String |  no  |  |
 | multiSize | Bool? |  yes  |  |
 | requester | String? |  yes  |  |
 | netQuantity | [NetQuantity](#NetQuantity)? |  yes  |  |

---


 
 
 #### [Image](#Image)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |
 | url | String? |  yes  |  |
 | aspectRatioF | Double? |  yes  |  |

---


 
 
 #### [VerifiedBy](#VerifiedBy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [Logo](#Logo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |
 | url | String? |  yes  |  |
 | aspectRatioF | Int? |  yes  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | logo | [Logo](#Logo)? |  yes  |  |

---


 
 
 #### [ReturnConfigResponse](#ReturnConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | time | Int? |  yes  |  |

---


 
 
 #### [ProductPublish1](#ProductPublish1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productOnlineDate | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |

---


 
 
 #### [NetQuantityResponse](#NetQuantityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unit | String? |  yes  |  |
 | value | Double? |  yes  |  |

---


 
 
 #### [ProductSchemaV2](#ProductSchemaV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | variantGroup | [String: Any]? |  yes  |  |
 | l3Mapping | [String]? |  yes  |  |
 | description | String? |  yes  |  |
 | allSizes | [[String: Any]]? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | allCompanyIds | [Int]? |  yes  |  |
 | pending | String? |  yes  |  |
 | moq | [String: Any]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | taxIdentifier | [String: Any]? |  yes  |  |
 | color | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | variantMedia | [String: Any]? |  yes  |  |
 | noOfBoxes | Int? |  yes  |  |
 | currency | String? |  yes  |  |
 | category | [String: Any]? |  yes  |  |
 | images | [[Image](#Image)]? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | templateTag | String? |  yes  |  |
 | productGroupTag | [String]? |  yes  |  |
 | isPhysical | Bool? |  yes  |  |
 | itemType | String? |  yes  |  |
 | verifiedBy | [VerifiedBy](#VerifiedBy)? |  yes  |  |
 | customOrder | [String: Any]? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | brand | [Brand](#Brand)? |  yes  |  |
 | brandUid | Int? |  yes  |  |
 | sizeGuide | String? |  yes  |  |
 | name | String? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | allIdentifiers | [String]? |  yes  |  |
 | categoryUid | Int? |  yes  |  |
 | id | String? |  yes  |  |
 | media | [[Media](#Media)]? |  yes  |  |
 | returnConfig | [ReturnConfigResponse](#ReturnConfigResponse)? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | stage | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | departments | [Int]? |  yes  |  |
 | categorySlug | String? |  yes  |  |
 | isImageLessProduct | Bool? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | isExpirable | Bool? |  yes  |  |
 | productPublish | [ProductPublish1](#ProductPublish1)? |  yes  |  |
 | trader | [[Trader](#Trader)]? |  yes  |  |
 | variants | [String: Any]? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | imageNature | String? |  yes  |  |
 | isDependent | Bool? |  yes  |  |
 | highlights | [String]? |  yes  |  |
 | primaryColor | String? |  yes  |  |
 | sizes | [[String: Any]]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | slug | String? |  yes  |  |
 | multiSize | Bool? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | netQuantity | [NetQuantityResponse](#NetQuantityResponse)? |  yes  |  |

---


 
 
 #### [ProductListingResponseV2](#ProductListingResponseV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[ProductSchemaV2](#ProductSchemaV2)]? |  yes  |  |

---


 
 
 #### [ProductVariants](#ProductVariants)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categoryUid | Int? |  yes  |  |
 | media | [[Media](#Media)]? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | brandUid | Int? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

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
 | description | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | details | [AttributeMasterDetails](#AttributeMasterDetails) |  no  |  |
 | isNested | Bool? |  yes  |  |
 | filters | [AttributeMasterFilter](#AttributeMasterFilter) |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |
 | suggestion | String? |  yes  |  |
 | departments | [String] |  no  |  |
 | synonyms | [String: Any]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | unit | String? |  yes  |  |
 | rawKey | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | slug | String |  no  |  |
 | enabledForEndConsumer | Bool? |  yes  |  |
 | example | String? |  yes  |  |
 | schema | [AttributeMaster](#AttributeMaster) |  no  |  |
 | createdBy | [String: Any]? |  yes  |  |

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
 | primary | Bool? |  yes  |  |
 | gtinType | String |  no  |  |
 | gtinValue | String |  no  |  |

---


 
 
 #### [AllSizes](#AllSizes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemWidth | Double |  no  |  |
 | size | [String: Any] |  no  |  |
 | itemWeight | Double |  no  |  |
 | identifiers | [[ValidateIdentifier](#ValidateIdentifier)]? |  yes  |  |
 | itemWeightUnitOfMeasure | [String: Any] |  no  |  |
 | itemLength | Double |  no  |  |
 | itemHeight | Double |  no  |  |
 | itemDimensionsUnitOfMeasure | String |  no  |  |

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
 | productOnlineDate | Int? |  yes  |  |
 | isSet | Bool? |  yes  |  |

---


 
 
 #### [Product](#Product)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | variantGroup | [String: Any]? |  yes  |  |
 | l3Mapping | [String]? |  yes  |  |
 | description | String? |  yes  |  |
 | allSizes | [[String: Any]]? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | allCompanyIds | [Int]? |  yes  |  |
 | pending | String? |  yes  |  |
 | moq | [String: Any]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | taxIdentifier | [String: Any]? |  yes  |  |
 | color | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | variantMedia | [String: Any]? |  yes  |  |
 | noOfBoxes | Int? |  yes  |  |
 | currency | String? |  yes  |  |
 | category | [String: Any]? |  yes  |  |
 | images | [[Image](#Image)]? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | templateTag | String? |  yes  |  |
 | productGroupTag | [String]? |  yes  |  |
 | isPhysical | Bool? |  yes  |  |
 | itemType | String? |  yes  |  |
 | verifiedBy | [VerifiedBy](#VerifiedBy)? |  yes  |  |
 | customOrder | [String: Any]? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | brand | [Brand](#Brand)? |  yes  |  |
 | brandUid | Int? |  yes  |  |
 | sizeGuide | String? |  yes  |  |
 | name | String? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | allIdentifiers | [String]? |  yes  |  |
 | categoryUid | Int? |  yes  |  |
 | id | String? |  yes  |  |
 | media | [[Media](#Media)]? |  yes  |  |
 | returnConfig | [ReturnConfigResponse](#ReturnConfigResponse)? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | stage | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | departments | [Int]? |  yes  |  |
 | categorySlug | String? |  yes  |  |
 | isImageLessProduct | Bool? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | isExpirable | Bool? |  yes  |  |
 | productPublish | [ProductPublished](#ProductPublished)? |  yes  |  |
 | trader | [[Trader](#Trader)]? |  yes  |  |
 | variants | [String: Any]? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | imageNature | String? |  yes  |  |
 | isDependent | Bool? |  yes  |  |
 | highlights | [String]? |  yes  |  |
 | primaryColor | String? |  yes  |  |
 | sizes | [[String: Any]]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | slug | String? |  yes  |  |
 | multiSize | Bool? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | netQuantity | [NetQuantityResponse](#NetQuantityResponse)? |  yes  |  |

---


 
 
 #### [ProductListingResponse](#ProductListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[Product](#Product)]? |  yes  |  |

---


 
 
 #### [BulkJob](#BulkJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customTemplateTag | String? |  yes  |  |
 | modifiedOn | String? |  yes  | The date and time when the item was last modified. |
 | companyId | Int |  no  |  |
 | templateTag | String? |  yes  |  |
 | isActive | Bool? |  yes  | Whether the item is active or not. |
 | total | Int? |  yes  |  |
 | modifiedBy | [UserInfo1](#UserInfo1)? |  yes  | The user who last modified the item. |
 | createdOn | String |  no  | The date and time when the item was created. |
 | stage | String? |  yes  |  |
 | cancelledRecords | [[String: Any]]? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | filePath | String? |  yes  |  |
 | failed | Int? |  yes  |  |
 | trackingUrl | String? |  yes  |  |
 | createdBy | [UserInfo1](#UserInfo1)? |  yes  | The user who created the item. |
 | failedRecords | [[String: Any]]? |  yes  |  |

---


 
 
 #### [BulkResponse](#BulkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | String? |  yes  | The date and time when the item was last modified. |
 | isActive | Bool? |  yes  | Whether the item is active or not. |
 | modifiedBy | [UserInfo1](#UserInfo1)? |  yes  | The user who last modified the item. |
 | createdOn | String |  no  | The date and time when the item was created. |
 | batchId | String |  no  |  |
 | createdBy | [UserInfo1](#UserInfo1)? |  yes  | The user who created the item. |

---


 
 
 #### [UserDetail1](#UserDetail1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | fullName | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [ProductBulkRequest](#ProductBulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | templateTag | String? |  yes  |  |
 | template | [ProductTemplate](#ProductTemplate)? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | stage | String? |  yes  |  |
 | total | Int? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | cancelledRecords | [String]? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | modifiedBy | [UserDetail1](#UserDetail1)? |  yes  |  |
 | failed | Int? |  yes  |  |
 | createdBy | [UserDetail1](#UserDetail1)? |  yes  |  |
 | failedRecords | [String]? |  yes  |  |

---


 
 
 #### [ProductBulkRequestList](#ProductBulkRequestList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [ProductBulkRequest](#ProductBulkRequest)? |  yes  |  |

---


 
 
 #### [BulkProductRequest](#BulkProductRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | batchId | String |  no  |  |
 | companyId | Int |  no  |  |
 | templateTag | String |  no  |  |
 | data | [[String: Any]] |  no  |  |

---


 
 
 #### [ProductTagsViewResponse](#ProductTagsViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [String]? |  yes  |  |

---


 
 
 #### [ProductBulkAssets](#ProductBulkAssets)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [String: Any] |  no  |  |
 | companyId | Int? |  yes  |  |
 | url | String |  no  |  |
 | batchId | String? |  yes  |  |

---


 
 
 #### [UserCommon](#UserCommon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [Items](#Items)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | retry | Int? |  yes  |  |
 | id | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | filePath | String? |  yes  |  |
 | modifiedBy | [UserCommon](#UserCommon)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | cancelledRecords | [String]? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | failed | Int? |  yes  |  |
 | trackingUrl | String? |  yes  |  |
 | createdBy | [UserCommon](#UserCommon)? |  yes  |  |
 | failedRecords | [String]? |  yes  |  |

---


 
 
 #### [BulkAssetResponse](#BulkAssetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[Items](#Items)]? |  yes  |  |

---


 
 
 #### [ProductSizeDeleteDataResponse](#ProductSizeDeleteDataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | size | String? |  yes  |  |

---


 
 
 #### [ProductSizeDeleteResponse](#ProductSizeDeleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [ProductSizeDeleteDataResponse](#ProductSizeDeleteDataResponse)? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [GTIN](#GTIN)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primary | Bool? |  yes  |  |
 | gtinType | String |  no  |  |
 | gtinValue | [String: Any] |  no  |  |

---


 
 
 #### [SetSize](#SetSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pieces | Int |  no  |  |
 | size | String |  no  |  |

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
 | quantity | Int? |  yes  |  |
 | sizeDistribution | [SizeDistribution](#SizeDistribution) |  no  |  |

---


 
 
 #### [InvSize](#InvSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemWidth | Double? |  yes  | The width of the item. |
 | size | [String: Any] |  no  |  |
 | isSet | Bool? |  yes  |  |
 | itemWeight | Double? |  yes  | The weight of the item. |
 | priceTransfer | Double? |  yes  |  |
 | itemWeightUnitOfMeasure | String? |  yes  | The unit of measure for the item weight. |
 | identifiers | [[GTIN](#GTIN)] |  no  |  |
 | expirationDate | String? |  yes  |  |
 | itemLength | Double? |  yes  | The length of the item. |
 | storeCode | String |  no  |  |
 | itemHeight | Double? |  yes  | The height of the item. |
 | quantity | Int |  no  |  |
 | itemDimensionsUnitOfMeasure | String? |  yes  | The unit of measure for the item dimensions. |
 | price | Double? |  yes  |  |
 | priceEffective | Double |  no  |  |
 | set | [InventorySet](#InventorySet)? |  yes  |  |
 | currency | String |  no  | The currency used for the item price. |

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
 | sizes | [[InvSize](#InvSize)] |  no  |  |
 | item | [ItemQuery](#ItemQuery) |  no  |  |
 | companyId | Int |  no  |  |

---


 
 
 #### [InventoryResponse](#InventoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventoryUpdatedOn | String? |  yes  |  |
 | sellableQuantity | Int? |  yes  |  |
 | size | String? |  yes  |  |
 | store | [String: Any]? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | priceTransfer | Double? |  yes  |  |
 | identifiers | [String: Any]? |  yes  |  |
 | uid | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | price | Double? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | currency | String? |  yes  |  |

---


 
 
 #### [InventoryResponsePaginated](#InventoryResponsePaginated)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[InventoryResponse](#InventoryResponse)]? |  yes  |  |

---


 
 
 #### [CompanyMeta](#CompanyMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |

---


 
 
 #### [StoreMeta](#StoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |

---


 
 
 #### [PriceMeta](#PriceMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | Double |  no  | The marked price. |
 | effective | Double |  no  | The effective price. |
 | tpNotes | [String: Any]? |  yes  | Additional notes for the transfer price. |
 | transfer | Double |  no  | The transfer price. |
 | updatedAt | String? |  yes  | The date and time of the last update. |
 | currency | String |  no  | The currency used for the prices. |

---


 
 
 #### [WeightResponse](#WeightResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipping | Double |  no  | The shipping weight. |
 | unit | String |  no  | The unit of weight. |
 | isDefault | Bool |  no  | Indicates if it is the default weight. |

---


 
 
 #### [BrandMeta](#BrandMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [ManufacturerResponse](#ManufacturerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  | The name of the manufacturer. |
 | isDefault | Bool |  no  | Indicates if it is the default manufacturer. |
 | address | String |  no  | The address of the manufacturer. |

---


 
 
 #### [ReturnConfig1](#ReturnConfig1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool? |  yes  | Indicates if the item is returnable. |
 | unit | String? |  yes  | The unit of return time. |
 | time | Int? |  yes  | The return time in days or hours. |

---


 
 
 #### [DimensionResponse](#DimensionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | width | Double |  no  | The width dimension. |
 | height | Double |  no  | The height dimension. |
 | unit | String |  no  | The unit of dimension. |
 | isDefault | Bool |  no  | Indicates if it is the default dimension. |
 | length | Double |  no  | The length dimension. |

---


 
 
 #### [Trader1](#Trader1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | type | String |  no  |  |
 | address | [String] |  no  |  |

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
 | orderCommitted | [QuantityBase](#QuantityBase)? |  yes  |  |
 | damaged | [QuantityBase](#QuantityBase)? |  yes  |  |

---


 
 
 #### [InventorySellerResponse](#InventorySellerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | traceId | String? |  yes  | The trace ID of the article. |
 | itemId | Int |  no  | The ID of the item. |
 | company | [CompanyMeta](#CompanyMeta) |  no  | The metadata of the company. |
 | taxIdentifier | [String: Any]? |  yes  | The tax identifier of the article. |
 | store | [StoreMeta](#StoreMeta) |  no  | The metadata of the store. |
 | price | [PriceMeta](#PriceMeta) |  no  | The price metadata of the article. |
 | fyndArticleCode | String |  no  | The Fynd article code. |
 | uid | String |  no  | The unique identifier of the article. |
 | expirationDate | String? |  yes  | The expiration date of the article. |
 | weight | [WeightResponse](#WeightResponse) |  no  | The weight of the article. |
 | countryOfOrigin | String |  no  | The country of origin of the article. |
 | trackInventory | Bool? |  yes  | Indicates if the inventory is tracked for the article. |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  | The user who modified the article. |
 | brand | [BrandMeta](#BrandMeta) |  no  | The metadata of the brand. |
 | rawMeta | [String: Any]? |  yes  | The raw metadata of the article. |
 | manufacturer | [ManufacturerResponse](#ManufacturerResponse) |  no  | The manufacturer of the article. |
 | returnConfig | [ReturnConfig1](#ReturnConfig1)? |  yes  | The return configuration of the article. |
 | size | String |  no  | The size of the article. |
 | isActive | Bool? |  yes  | Indicates if the article is active. |
 | stage | String? |  yes  | The stage of the article. |
 | customJson | [String: Any]? |  yes  | Custom JSON data for the article. |
 | fragile | Bool |  no  | Indicates if the article is fragile. |
 | dimension | [DimensionResponse](#DimensionResponse) |  no  | The dimensions of the article. |
 | addedOnStore | String? |  yes  | The date and time when the article was added to the store. |
 | identifier | [String: Any] |  no  | The identifier of the article. |
 | fyndMeta | [String: Any]? |  yes  | The Fynd metadata of the article. |
 | trader | [[Trader1](#Trader1)]? |  yes  | The traders associated with the article. |
 | isSet | Bool? |  yes  |  |
 | quantities | [Quantities](#Quantities)? |  yes  |  |
 | tags | [String]? |  yes  | The tags associated with the article. |
 | totalQuantity | Int |  no  | The total quantity of the article. |
 | set | [InventorySet](#InventorySet)? |  yes  |  |
 | meta | [String: Any]? |  yes  | Additional metadata for the article. |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  | The user who created the article. |
 | fyndItemCode | String |  no  | The Fynd item code. |
 | sellerIdentifier | String |  no  | The seller identifier of the article. |

---


 
 
 #### [InventorySellerIdentifierResponsePaginated](#InventorySellerIdentifierResponsePaginated)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[InventorySellerResponse](#InventorySellerResponse)]? |  yes  |  |

---


 
 
 #### [DateMeta](#DateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | String? |  yes  |  |
 | addedOnStore | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | inventoryUpdatedOn | String? |  yes  |  |

---


 
 
 #### [CompanyMeta1](#CompanyMeta1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |

---


 
 
 #### [PriceArticle](#PriceArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | Double? |  yes  |  |
 | effective | Double? |  yes  |  |
 | tpNotes | [String: Any]? |  yes  |  |
 | transfer | Double? |  yes  |  |
 | currency | String? |  yes  |  |

---


 
 
 #### [ArticleStoreResponse](#ArticleStoreResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeCode | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | storeType | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [WeightResponse1](#WeightResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipping | Double? |  yes  |  |
 | unit | String? |  yes  |  |

---


 
 
 #### [BrandMeta1](#BrandMeta1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ManufacturerResponse1](#ManufacturerResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | address | String? |  yes  |  |

---


 
 
 #### [ReturnConfig2](#ReturnConfig2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | time | Int? |  yes  |  |

---


 
 
 #### [DimensionResponse1](#DimensionResponse1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | height | Double? |  yes  |  |
 | length | Double? |  yes  |  |
 | width | Double? |  yes  |  |
 | unit | String? |  yes  |  |

---


 
 
 #### [Trader2](#Trader2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |
 | address | [String]? |  yes  |  |

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
 | orderCommitted | [Quantity](#Quantity)? |  yes  |  |
 | damaged | [Quantity](#Quantity)? |  yes  |  |

---


 
 
 #### [GetInventories](#GetInventories)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | traceId | String? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | company | [CompanyMeta1](#CompanyMeta1)? |  yes  |  |
 | taxIdentifier | [String: Any]? |  yes  |  |
 | price | [PriceArticle](#PriceArticle)? |  yes  |  |
 | store | [ArticleStoreResponse](#ArticleStoreResponse)? |  yes  |  |
 | uid | String? |  yes  |  |
 | expirationDate | String? |  yes  |  |
 | weight | [WeightResponse1](#WeightResponse1)? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |
 | trackInventory | Bool? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | brand | [BrandMeta1](#BrandMeta1)? |  yes  |  |
 | manufacturer | [ManufacturerResponse1](#ManufacturerResponse1)? |  yes  |  |
 | id | String? |  yes  |  |
 | returnConfig | [ReturnConfig2](#ReturnConfig2)? |  yes  |  |
 | size | String? |  yes  |  |
 | platforms | [String: Any]? |  yes  |  |
 | stage | String? |  yes  |  |
 | dimension | [DimensionResponse1](#DimensionResponse1)? |  yes  |  |
 | trader | [[Trader2](#Trader2)]? |  yes  |  |
 | inventoryUpdatedOn | String? |  yes  |  |
 | identifier | [String: Any]? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | quantities | [QuantitiesArticle](#QuantitiesArticle)? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | totalQuantity | Int? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |

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
 | id | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | filePath | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | cancelledRecords | [String]? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | failed | Int? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | failedRecords | [String]? |  yes  |  |

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
 | traceId | String? |  yes  | The trace ID of the inventory job payload. |
 | itemDimensionsUnitOfMeasure | String? |  yes  | The unit of measure for the item dimensions. |
 | price | Double? |  yes  | The price of the item. |
 | itemWeightUnitOfMeasure | String? |  yes  | The unit of measure for the item weight. |
 | storeCode | String |  no  | The code of the store. |
 | tags | [String]? |  yes  | The tags associated with the item. |
 | priceMarked | Double? |  yes  | The marked price of the item. |
 | totalQuantity | Int? |  yes  | The total quantity of the item. |
 | quantity | Int? |  yes  | The quantity of the item. |
 | expirationDate | String? |  yes  | The expiration date of the item. |
 | sellerIdentifier | String |  no  | The identifier of the seller. |
 | priceEffective | Double? |  yes  | The effective price of the item. |
 | currency | String? |  yes  | The currency used for the item price. |

---


 
 
 #### [InventoryBulkRequest](#InventoryBulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizes | [[InventoryJobPayload](#InventoryJobPayload)] |  no  |  |
 | companyId | Int |  no  |  |
 | user | [String: Any]? |  yes  |  |
 | batchId | String |  no  |  |

---


 
 
 #### [InventoryExportRequest](#InventoryExportRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [Int]? |  yes  |  |
 | type | String? |  yes  |  |
 | brand | [Int]? |  yes  |  |

---


 
 
 #### [InventoryExportResponse](#InventoryExportResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerId | Int |  no  | The seller id that needs to be exported. |
 | filters | [String: Any]? |  yes  | The filters that needs to be exported. |
 | type | String? |  yes  | The type of file that needs to be exported. |
 | taskId | String |  no  | The task id of the job. |
 | modifiedOn | String? |  yes  | Modification date of the job |
 | status | String? |  yes  | The status of the job. |
 | createdOn | String? |  yes  | Creation datetime of the job |
 | notificationEmails | [String]? |  yes  | The notification emails for the job. |
 | createdBy | String? |  yes  | The user that created the job. |

---


 
 
 #### [InventoryExportQuantityFilter](#InventoryExportQuantityFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int? |  yes  | The maximum quantity that needs to be exported. |
 | min | Int? |  yes  | The minimum quantity that needs to be exported. |
 | operators | String |  no  | Condition for the quantity that needs to be exported. |

---


 
 
 #### [InventoryExportAdvanceOption](#InventoryExportAdvanceOption)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromDate | String? |  yes  |  |
 | toDate | String? |  yes  |  |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | quantity | [InventoryExportQuantityFilter](#InventoryExportQuantityFilter)? |  yes  |  |

---


 
 
 #### [InventoryExportJob](#InventoryExportJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerId | Int |  no  | The seller id that needs to be exported. |
 | filters | [InventoryExportAdvanceOption](#InventoryExportAdvanceOption)? |  yes  | The filters that needs to be exported. |
 | type | String |  no  | The type of file that needs to be exported. |
 | taskId | String |  no  | The task id of the job. |
 | status | String? |  yes  | The status of the job. |
 | url | String? |  yes  | URL odf the exported file. |
 | completedOn | String? |  yes  | Completion datetime of the job. |
 | notificationEmails | [String]? |  yes  | The notification emails for the job. |

---


 
 
 #### [InventoryExportFilter](#InventoryExportFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromDate | String? |  yes  | The modified on date from which the data needs to be exported. |
 | toDate | String? |  yes  | The modified on date till when the data needs to be exported. |
 | brandIds | [Int]? |  yes  | The list of the brand ids that needs to be exported. |
 | storeIds | [Int] |  no  | The list of the store ids that needs to be exported. |
 | quantity | [InventoryExportQuantityFilter](#InventoryExportQuantityFilter)? |  yes  | The quantity range that needs to be exported. |

---


 
 
 #### [InventoryCreateRequest](#InventoryCreateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notificationEmails | [String]? |  yes  | The list of the emails to be notified after the completion of the job. |
 | filters | [InventoryExportFilter](#InventoryExportFilter) |  no  | This filters that are applied for the export of the inventory. |
 | type | String? |  yes  | The type of file that needs to be exported. |
 | data | [String]? |  yes  | The list of attributes that you want to extract in the export job. |

---


 
 
 #### [InventoryJobFilters](#InventoryJobFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromDate | String? |  yes  | The modified on date from which the data needs to be exported. |
 | stores | [String]? |  yes  | The list of all the store selected. |
 | toDate | String? |  yes  | The modified on date till when the data needs to be exported. |
 | brands | [String]? |  yes  | The list of all the brands selected. |
 | quantity | [InventoryExportQuantityFilter](#InventoryExportQuantityFilter)? |  yes  | The quantity range that needs to be exported. |

---


 
 
 #### [InventoryJobDetailResponse](#InventoryJobDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerId | Int |  no  | This ID of the company. |
 | filters | [InventoryJobFilters](#InventoryJobFilters) |  no  | This is the filter criteria applied for the export job. |
 | type | String? |  yes  | This is the file type of the export. |
 | taskId | String |  no  | This is the task id of the jobs that is used for search. |
 | id | String |  no  | This is the ID of the job. |
 | modifiedOn | String? |  yes  | This is the timestamp of the modification for this job. |
 | cancelledOn | String? |  yes  | This is the timestamp of the cacellation for this job. |
 | status | [String: Any]? |  yes  | This tells you the current status of the export job. |
 | cancelledBy | [UserDetail](#UserDetail)? |  yes  | This is the user detail of the user who cancelled the job. |
 | url | String |  no  | This is the url to download the export. |
 | completedOn | String? |  yes  | This is the timestamp of the completion for this job. |
 | createdOn | String? |  yes  | This is the timestamp of the creation for this job. |
 | notificationEmails | [String]? |  yes  | User email to get notification post completion of the job. |
 | createdBy | [UserDetail](#UserDetail)? |  yes  | This is the user detail of the user who cancelled the job. |

---


 
 
 #### [InventoryExportJobListResponse](#InventoryExportJobListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [InventoryJobDetailResponse](#InventoryJobDetailResponse) |  no  | This is the list/history of all the jobs. |

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
 | data | [[FilerList](#FilerList)]? |  yes  |  |
 | multivalues | Bool? |  yes  |  |

---


 
 
 #### [InventoryPayload](#InventoryPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | traceId | String? |  yes  | The trace ID of the inventory payload. |
 | storeId | Int |  no  | The ID of the store. |
 | tags | [String]? |  yes  | The tags associated with the inventory item. |
 | priceMarked | Double? |  yes  | The marked price of the inventory item. |
 | totalQuantity | Int? |  yes  | The total quantity of the inventory item. |
 | expirationDate | String? |  yes  | The expiration date of the inventory item. |
 | sellerIdentifier | String |  no  | The identifier of the seller. |
 | priceEffective | Double? |  yes  | The effective price of the inventory item. |

---


 
 
 #### [InventoryRequestSchemaV2](#InventoryRequestSchemaV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int |  no  | The ID of the company. |
 | meta | [String: Any]? |  yes  | Additional metadata for the inventory request. |
 | payload | [[InventoryPayload](#InventoryPayload)]? |  yes  | The list of inventory payloads. |

---


 
 
 #### [InventoryFailedReason](#InventoryFailedReason)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | It is the message of the activity performed. |
 | errors | String? |  yes  | It is the error message of the inventory error response. |

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
 | message | String |  no  | It is the success message of the inventory update. |
 | items | [[InventoryResponseItem](#InventoryResponseItem)]? |  yes  |  |

---


 
 
 #### [HsnUpsert](#HsnUpsert)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | threshold2 | Double? |  yes  | The threshold for the second tax rate. |
 | companyId | Int |  no  | The ID of the company. |
 | hs2Code | String |  no  | The HS2 code. |
 | taxOnEsp | Bool? |  yes  | Flag indicating whether tax is applicable on ESP. |
 | tax2 | Double? |  yes  | The second tax rate. |
 | uid | Int? |  yes  | The unique identifier. |
 | isActive | Bool? |  yes  | Flag indicating whether the entry is active. |
 | tax1 | Double |  no  | The first tax rate. |
 | taxOnMrp | Bool |  no  | Flag indicating whether tax is applicable on MRP. |
 | hsnCode | String |  no  | The HSN code. |
 | threshold1 | Double |  no  | The threshold for the first tax rate. |

---


 
 
 #### [HsnCodesObject](#HsnCodesObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | threshold2 | Double? |  yes  | The threshold for the second tax rate. |
 | id | String? |  yes  | The identifier of the HSN code. |
 | modifiedOn | String? |  yes  | The date and time when the HSN code was last modified. |
 | companyId | Int? |  yes  | The ID of the company. |
 | hs2Code | String? |  yes  | The HS2 code. |
 | taxOnEsp | Bool? |  yes  | Flag indicating whether tax is applicable on ESP. |
 | tax2 | Double? |  yes  | The second tax rate. |
 | tax1 | Double? |  yes  | The first tax rate. |
 | taxOnMrp | Bool? |  yes  | Flag indicating whether tax is applicable on MRP. |
 | hsnCode | String? |  yes  | The HSN code. |
 | threshold1 | Double? |  yes  | The threshold for the first tax rate. |

---


 
 
 #### [HsnCode](#HsnCode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [HsnCodesObject](#HsnCodesObject)? |  yes  | The HSN code data. |

---


 
 
 #### [BulkHsnUpsert](#BulkHsnUpsert)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[HsnUpsert](#HsnUpsert)] |  no  |  |

---


 
 
 #### [BulkHsnResponse](#BulkHsnResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Flag indicating the success status of the bulk HSN operation. |

---


 
 
 #### [PageResponse](#PageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int? |  yes  | It is the size of each page. |
 | itemTotal | Int? |  yes  | It is the total number of item present for the filter. |
 | current | String? |  yes  | It is the current page of the page response schema. |
 | hasPrevious | Bool? |  yes  | It is the bool indicates if there is a  previous page. |
 | hasNext | Bool? |  yes  | It is the bool indicates if there is a  next page. |

---


 
 
 #### [TaxSlab](#TaxSlab)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | threshold | Double |  no  |  |
 | cess | Double? |  yes  |  |
 | effectiveDate | String |  no  |  |
 | rate | Double |  no  |  |

---


 
 
 #### [HSNDataInsertV2](#HSNDataInsertV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String |  no  | Country code. |
 | taxes | [[TaxSlab](#TaxSlab)] |  no  | List of tax slabs. |
 | hsnCodeId | String? |  yes  | Unique identifier of the HSN code. |
 | type | String |  no  | Type of HSN data (goods or services). |
 | description | String |  no  | Description of the HSN data. |
 | modifiedOn | String? |  yes  | Date and time when the HSN data was last modified. |
 | reportingHsn | String |  no  | HSN code. |
 | modifiedBy | [String: Any]? |  yes  | Details of the user who last modified the HSN data. |
 | createdOn | String? |  yes  | Date and time when the HSN data was created. |
 | hsnCode | String |  no  | HSN code. |
 | createdBy | [String: Any]? |  yes  | Details of the user who created the HSN data. |

---


 
 
 #### [HsnCodesListingResponseSchemaV2](#HsnCodesListingResponseSchemaV2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [PageResponse](#PageResponse)? |  yes  |  |
 | items | [[HSNDataInsertV2](#HSNDataInsertV2)]? |  yes  |  |

---


 
 
 #### [Media2](#Media2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [BrandItem](#BrandItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | [Action](#Action)? |  yes  |  |
 | logo | [Media2](#Media2)? |  yes  |  |
 | departments | [String]? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | slug | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | discount | String? |  yes  |  |
 | name | String? |  yes  |  |

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
 | logo | [Media2](#Media2)? |  yes  |  |
 | priorityOrder | Int? |  yes  |  |
 | slug | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

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
 | action | [Action](#Action)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | slug | String? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | childs | [[String: Any]]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [SecondLevelChild](#SecondLevelChild)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | [Action](#Action)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | slug | String? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | childs | [[ThirdLevelChild](#ThirdLevelChild)]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [Child](#Child)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | [Action](#Action)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | slug | String? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | childs | [[SecondLevelChild](#SecondLevelChild)]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [CategoryItems](#CategoryItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | [Action](#Action)? |  yes  |  |
 | slug | String? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | childs | [[Child](#Child)]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

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
 | filters | [[ProductFilters](#ProductFilters)]? |  yes  |  |
 | operators | [String: Any]? |  yes  |  |
 | page | [Page](#Page) |  no  |  |
 | items | [[ProductListingDetail](#ProductListingDetail)]? |  yes  |  |
 | sortOn | [[ProductSortOn](#ProductSortOn)]? |  yes  |  |

---


 
 
 #### [ProductDetail](#ProductDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | description | String? |  yes  |  |
 | hasVariant | Bool? |  yes  |  |
 | color | String? |  yes  |  |
 | similars | [String]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | promoMeta | [String: Any]? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | itemType | String? |  yes  |  |
 | medias | [[Media](#Media)]? |  yes  |  |
 | rating | Double? |  yes  |  |
 | brand | [ProductBrand](#ProductBrand)? |  yes  |  |
 | name | String? |  yes  |  |
 | groupedAttributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)]? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | tryouts | [String]? |  yes  |  |
 | ratingCount | Int? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | productOnlineDate | String? |  yes  |  |
 | imageNature | String? |  yes  |  |
 | highlights | [String]? |  yes  |  |
 | slug | String |  no  |  |

---


 
 
 #### [InventoryPage](#InventoryPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | itemTotal | Int |  no  |  |
 | nextId | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |

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
 | ignoredStores | [Int]? |  yes  |  |
 | size | String |  no  |  |

---


 
 
 #### [ArticleAssignment](#ArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | strategy | String? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [AssignStoreArticle](#AssignStoreArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | query | [ArticleQuery](#ArticleQuery)? |  yes  |  |
 | groupId | String? |  yes  |  |
 | articleAssignment | [ArticleAssignment](#ArticleAssignment)? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [AssignStore](#AssignStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | channelIdentifier | String? |  yes  |  |
 | channelType | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | articles | [[AssignStoreArticle](#AssignStoreArticle)] |  no  |  |
 | appId | String |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [ArticleAssignment1](#ArticleAssignment1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | strategy | String? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [StoreAssignResponse](#StoreAssignResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | index | Int? |  yes  |  |
 | strategyWiseListing | [[String: Any]]? |  yes  |  |
 | size | String |  no  |  |
 | itemId | Int |  no  |  |
 | companyId | Int? |  yes  |  |
 | status | Bool |  no  |  |
 | storeId | Int? |  yes  |  |
 | storePincode | Int? |  yes  |  |
 | groupId | String? |  yes  |  |
 | articleAssignment | [ArticleAssignment1](#ArticleAssignment1) |  no  |  |
 | priceMarked | Int? |  yes  |  |
 | quantity | Int |  no  |  |
 | uid | String? |  yes  |  |
 | id | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | priceEffective | Int? |  yes  |  |
 | sCity | String? |  yes  |  |

---


 
 
 #### [UserSerializer1](#UserSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | contact | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [GetAddressSerializer](#GetAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | city | String? |  yes  |  |
 | state | String? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | landmark | String? |  yes  |  |
 | country | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | pincode | Int? |  yes  |  |

---


 
 
 #### [GetCompanySerializer](#GetCompanySerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | businessType | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | verifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | stage | String? |  yes  |  |
 | modifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | companyType | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | createdBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | name | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |

---


 
 
 #### [SellerPhoneNumber](#SellerPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | Int |  no  |  |
 | number | String |  no  |  |

---


 
 
 #### [LocationManagerSerializer](#LocationManagerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | mobileNo | [SellerPhoneNumber](#SellerPhoneNumber) |  no  |  |

---


 
 
 #### [UserSerializer2](#UserSerializer2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | contact | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [LocationIntegrationType](#LocationIntegrationType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | String? |  yes  |  |
 | inventory | String? |  yes  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | verified | Bool? |  yes  |  |
 | url | String? |  yes  |  |
 | value | String |  no  |  |
 | legalName | String? |  yes  |  |

---


 
 
 #### [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | onSameStore | Bool? |  yes  |  |
 | storeUid | Int? |  yes  |  |

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


 
 
 #### [LocationTimingSerializer](#LocationTimingSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hour | Int? |  yes  |  |
 | minute | Int? |  yes  |  |

---


 
 
 #### [LocationDayWiseSerializer](#LocationDayWiseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opening | [LocationTimingSerializer](#LocationTimingSerializer)? |  yes  |  |
 | weekday | String |  no  |  |
 | closing | [LocationTimingSerializer](#LocationTimingSerializer)? |  yes  |  |
 | open | Bool |  no  |  |

---


 
 
 #### [GetLocationSerializer](#GetLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeType | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer)? |  yes  |  |
 | verifiedBy | [UserSerializer2](#UserSerializer2)? |  yes  |  |
 | integrationType | [LocationIntegrationType](#LocationIntegrationType)? |  yes  |  |
 | modifiedBy | [UserSerializer2](#UserSerializer2)? |  yes  |  |
 | phoneNumber | String |  no  |  |
 | name | String |  no  |  |
 | verifiedOn | String? |  yes  |  |
 | displayName | String |  no  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)? |  yes  |  |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)? |  yes  |  |
 | stage | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | code | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)]? |  yes  |  |
 | address | [GetAddressSerializer](#GetAddressSerializer) |  no  |  |
 | createdBy | [UserSerializer2](#UserSerializer2)? |  yes  |  |

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
 | logo | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | appId | String |  no  |  |
 | uid | Int |  no  |  |
 | name | String? |  yes  |  |

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
 | orderStatus | order-status | Symbolic link for Order status: /cart/order-status |

---





