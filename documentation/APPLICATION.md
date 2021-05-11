# FDK Application Front API Documentaion


* [Catalog](#Catalog) - Catalog API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features.  
* [Lead](#Lead) - Handles communication between Staff and Users 
* [FileStorage](#FileStorage) - File Storage 
* [Payment](#Payment) - Collect payment through many payment gateway i.e Stripe, Razorpay, Juspay etc.into Fynd or Self account 
* [Order](#Order) - Handles Platform websites OMS 
* [Logistic](#Logistic) - Handles Platform websites OMS 

----
----

### Classes and Methods


* [Catalog](#Catalog)
  * Methods
    * [getProductDetailBySlug](#getproductdetailbyslug)
    * [getProductSizesBySlug](#getproductsizesbyslug)
    * [getProductPriceBySlug](#getproductpricebyslug)
    * [getProductSellersBySlug](#getproductsellersbyslug)
    * [getProductComparisonBySlugs](#getproductcomparisonbyslugs)
    * [getSimilarComparisonProductBySlug](#getsimilarcomparisonproductbyslug)
    * [getComparedFrequentlyProductBySlug](#getcomparedfrequentlyproductbyslug)
    * [getProductSimilarByIdentifier](#getproductsimilarbyidentifier)
    * [getProductVariantsBySlug](#getproductvariantsbyslug)
    * [getProductStockByIds](#getproductstockbyids)
    * [getProductStockForTimeByIds](#getproductstockfortimebyids)
    * [getProducts](#getproducts)
    * [getBrands](#getbrands)
    * [getBrandDetailBySlug](#getbranddetailbyslug)
    * [getCategories](#getcategories)
    * [getCategoryDetailBySlug](#getcategorydetailbyslug)
    * [getHomeProducts](#gethomeproducts)
    * [getDepartments](#getdepartments)
    * [getSearchResults](#getsearchresults)
    * [getCollections](#getcollections)
    * [getCollectionItemsBySlug](#getcollectionitemsbyslug)
    * [getCollectionDetailBySlug](#getcollectiondetailbyslug)
    * [getFollowedListing](#getfollowedlisting)
    * [followById](#followbyid)
    * [unfollowById](#unfollowbyid)
    * [getFollowerCountById](#getfollowercountbyid)
    * [getFollowIds](#getfollowids)
    * [getStores](#getstores)
    

* [Lead](#Lead)
  * Methods
    * [getTicket](#getticket)
    * [createHistory](#createhistory)
    * [createTicket](#createticket)
    * [getCustomForm](#getcustomform)
    * [submitCustomForm](#submitcustomform)
    * [getParticipantsInsideVideoRoom](#getparticipantsinsidevideoroom)
    * [getTokenForVideoRoom](#gettokenforvideoroom)
    

* [FileStorage](#FileStorage)
  * Methods
    * [startUpload](#startupload)
    * [completeUpload](#completeupload)
    

* [Payment](#Payment)
  * Methods
    * [getAggregatorsConfig](#getaggregatorsconfig)
    * [attachCardToCustomer](#attachcardtocustomer)
    * [getActiveCardAggregator](#getactivecardaggregator)
    * [getActiveUserCards](#getactiveusercards)
    * [deleteUserCard](#deleteusercard)
    * [verifyCustomerForPayment](#verifycustomerforpayment)
    * [verifyAndChargePayment](#verifyandchargepayment)
    * [initialisePayment](#initialisepayment)
    * [checkAndUpdatePaymentStatus](#checkandupdatepaymentstatus)
    * [getPaymentModeRoutes](#getpaymentmoderoutes)
    * [getPosPaymentModeRoutes](#getpospaymentmoderoutes)
    * [getActiveRefundTransferModes](#getactiverefundtransfermodes)
    * [enableOrDisableRefundTransferMode](#enableordisablerefundtransfermode)
    * [getUserBeneficiariesDetail](#getuserbeneficiariesdetail)
    * [verifyIfscCode](#verifyifsccode)
    * [getOrderBeneficiariesDetail](#getorderbeneficiariesdetail)
    * [verifyOtpAndAddBeneficiaryForBank](#verifyotpandaddbeneficiaryforbank)
    * [addBeneficiaryDetails](#addbeneficiarydetails)
    * [verifyOtpAndAddBeneficiaryForWallet](#verifyotpandaddbeneficiaryforwallet)
    * [updateDefaultBeneficiary](#updatedefaultbeneficiary)
    

* [Order](#Order)
  * Methods
    * [getOrders](#getorders)
    * [getOrderById](#getorderbyid)
    * [getShipmentById](#getshipmentbyid)
    * [getShipmentReasons](#getshipmentreasons)
    * [updateShipmentStatus](#updateshipmentstatus)
    * [trackShipment](#trackshipment)
    * [getPosOrderById](#getposorderbyid)
    

* [Logistic](#Logistic)
  * Methods
    * [getTatProduct](#gettatproduct)
    * [getPincodeCity](#getpincodecity)
    


---
---



## Catalog


#### getProductDetailBySlug
Get a product

```swift
catalog.getProductDetailBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier of a product. i.e; `slug` of a product. You can retrieve these from the APIs that list products like **v1.0/products/** |  

Products are the core resource of an application. Products can be associated by categories, collections, brands and more. This API retrieves the product specified by the given **slug**. If successful, returns a Product resource in the response body specified in `ProductDetail`

*Success Response:*



The Product object. See example below or refer `ProductDetail` for details.


Schema: `ProductDetail`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductSizesBySlug
Get the sizes of a product

```swift
catalog.getProductSizesBySlug(slug: slug, storeId: storeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier of a product. i.e; `slug` of a product. You can retrieve these from the APIs that list products like **v1.0/products/** |    
| storeId | String? | The store id of the product whose sizes need to be retrieved |  

A product can exist in multiple sizes. Use this API to fetch all the available sizes of a product. If successful, returns a ProductSize object in the response body as specified in `ProductSizes`

*Success Response:*



The ProductSize object. See example below or refer `ProductSizes` for details.


Schema: `ProductSizes`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductPriceBySlug
Get price a product size

```swift
catalog.getProductPriceBySlug(slug: slug, size: size, pincode: pincode, storeId: storeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier of a product. i.e; `slug` of a product. You can retrieve these from the APIs that list products like **v1.0/products/** |    
| size | String? | The size of the product for which the price needs to be retrieved. You can get the available sizes of a product from **v1.0/products/{slug}/sizes/** |    
| pincode | String? | The pincode of the product for which the price needs to be retrieved. |    
| storeId | String? | The store of the product whose size level price need to be retrieved |  

Any available product can exist in multiple sizes. Sometimes prices may vary among different sizes of the same product. Use this API to retrieve the price of the product of a particular size with the location details it is available in.

*Success Response:*



The ProductSizePrice object. See example below or refer `ProductSizePriceResponse` for details


Schema: `ProductSizePriceResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductSellersBySlug
List sellers of a product

```swift
catalog.getProductSellersBySlug(slug: slug, size: size, pincode: pincode, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier of a product. i.e; `slug` of a product. You can retrieve these from the APIs that list products like **v1.0/products/** |    
| size | String? | The size of the product for which the price needs to be retrieved. You can get the available sizes of a product from **v1.0.0/products/sizes** |    
| pincode | String? | The pincode of the product for which the price needs to be retrieved. |    
| pageNo | Int? | The page number to navigate through the given set of results. |    
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

A product of a particular size can be sold by multiple sellers. Use this API to fetch the sellers who are selling this product and have the stock of a particular size

*Success Response:*



The ProductSizeSeller object. See example below or refer `ProductSizeSellersResponse` for details


Schema: `ProductSizeSellersResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductComparisonBySlugs
Compare products

```swift
catalog.getProductComparisonBySlugs(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | [String]? | The unique identifier `slug` of a products. You can retrieve this from the APIs that list products like **v1.0/products/** |  

Compare between the features of the given set of products Use this API to compare how one product ranks against other products. Note that at least one slug is mandatory in request query.

*Success Response:*



The comparison between the products. See example below or refer `ProductsComparisonResponse` for details


Schema: `ProductsComparisonResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getSimilarComparisonProductBySlug
Get comparison between similar products

```swift
catalog.getSimilarComparisonProductBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier `slug` of a product. You can retrieve this from the APIs that list products like **v1.0/products/** |  

Compare between the features of the given set of products Use this API to compare how one product ranks against other products

*Success Response:*



The comparison between products similar to given product. See example below or refer `ProductCompareResponse` for details


Schema: `ProductCompareResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getComparedFrequentlyProductBySlug
Get comparison between frequently compared products with the given product

```swift
catalog.getComparedFrequentlyProductBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier `slug` of a product. You can retrieve this from the APIs that list products like **v1.0/products/** |  

Compare between the features of the give product with frequently compared products Use this API to compare how one product ranks against other products

*Success Response:*



The comparison between products similar to given product. See example below or refer `ProductFrequentlyComparedSimilarResponse` for details


Schema: `ProductFrequentlyComparedSimilarResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductSimilarByIdentifier
Get similar products

```swift
catalog.getProductSimilarByIdentifier(slug: slug, similarType: similarType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier of a product. i.e; `slug` of a product. You can retrieve these from the APIs that list products like **v1.0/products/** |    
| similarType | String? | The tag_identifier is used to fetch the particular type of similar product such as basic, visual, price, seller, category and spec. |  

Get products similar to the one specified by the `identifier`. If successful, it returns a group of similar products based on type as described in `SimilarProductByTypeResponse`

*Success Response:*



Similar Products based on type passed in the request path. Refer `SimilarProductByTypeResponse` for response structure


Schema: `SimilarProductByTypeResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductVariantsBySlug
Get variant of a particular product

```swift
catalog.getProductVariantsBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier of a product. i.e; `slug` of a product. You can retrieve these from the APIs that list products like **v1.0/products/** |  

A product can have a different type of variants varies from color to shade etc. Use this API to fetch all the available variants of a product. If successful, returns a Products for different variants type in the response body as specified in `ProductVariantResponse`

*Success Response:*



See example below or refer `ProductVariantsResponse` for details. For `display_type:image`, `color` key will be present otherwise `value` key will be preset.


Schema: `ProductVariantsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductStockByIds
Get the stock of a product

```swift
catalog.getProductStockByIds(itemId: itemId, alu: alu, skuCode: skuCode, ean: ean, upc: upc) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| itemId | String? | Product id to get product stock (Max. 50 allowed) |    
| alu | String? | Product identifier alu to get product stock (Max. 50 allowed) |    
| skuCode | String? | Product identifier sku_code to get product stock (Max. 50 allowed) |    
| ean | String? | Product identifier ean to get product stock (Max. 50 allowed) |    
| upc | String? | Product identifier upc to get product stock (Max. 50 allowed) |  

Retrieve the available stock of the products. You can use this API to retrieve stock of multiple products at a time. Only 50 product IDs can be given in a single API request

*Success Response:*



The ProductStockStatus object. See example below or refer `ProductStockStatusResponse` for details


Schema: `ProductStockStatusResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductStockForTimeByIds
Get the stock of a product

```swift
catalog.getProductStockForTimeByIds(timestamp: timestamp, pageSize: pageSize, pageId: pageId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| timestamp | String? | timestamp in UTC format (2020-07-23T10:27:50Z) |    
| pageSize | Int? | Limit of number of items for stock status default 12 |    
| pageId | String? | will give next page results |  

Retrieve the available stock of the products. You can use this api to get stock status of products whose inventory is updated in given time

*Success Response:*



The ProductStockStatus object. See example below or refer `ProductStockPolling` for details


Schema: `ProductStockPolling`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProducts
List the products

```swift
catalog.getProducts(q: q, f: f, filters: filters, sortOn: sortOn, pageId: pageId, pageSize: pageSize, pageNo: pageNo, pageType: pageType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| q | String? | The search query. This can be a partial or complete name of a either a product, brand or category |    
| f | String? | The search filter parameters. All the parameter filtered from filter parameters will be passed in **f** parameter in this format. **?f=brand:voi-jeans||and:::category:t-shirts||shirts** |    
| filters | Bool? | Pass `filters` parameter to fetch the filter details. This flag is used to fetch all filters |    
| sortOn | String? | The order to sort the list of products on. The supported sort parameters are popularity, price, redemption and discount in either ascending or descending order. See the supported values below. |    
| pageId | String? | Each response will contain **page_id** param, which should be sent back to make pagination work. |    
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |    
| pageNo | Int? | If page_type is number then pass it to fetch page items. Default is 1. |    
| pageType | String? | For pagination type should be cursor or number. Default is cursor. |  

List all the products associated with a brand, collection or category in a requested sort order. The API additionally supports arbitrary search queries that may refer the name of any product, brand, category or collection. If successful, returns a paginated list of products specified in `ProductListingResponse`

*Success Response:*



List of Products. See example below or refer `ProductListingResponse` for details


Schema: `ProductListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getBrands
List all the brands

```swift
catalog.getBrands(department: department, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| department | String? | The name of the department. Use this parameter to filter products by a particular department. See below the list of available departments. You can retrieve available departments from the **v1.0/departments/** API |    
| pageNo | Int? | The page number to navigate through the given set of results |    
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

A brand is the name under which a product is being sold. Use this API to list all the brands. You can pass optionally filter the brands by the department. If successful, returns a paginated list of brands specified in `BrandListingResponse`

*Success Response:*



List of Brands. See example below or refer `BrandListingResponse` for details


Schema: `BrandListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getBrandDetailBySlug
Get metadata of a brand

```swift
catalog.getBrandDetailBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier of a brand. i.e; `slug` of a brand. You can retrieve these from the APIs that list brands like **v1.0/brands/** |  

Fetch metadata of a brand. If successful, returns a metadata object specified in `BrandDetailResponse`

*Success Response:*



The Metadata object. See example below or refer `BrandDetailResponse` for details.


Schema: `BrandDetailResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCategories
List all the categories

```swift
catalog.getCategories(department: department) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| department | String? | The name of the department. Use this parameter to filter products by a particular department. See below the list of available departments. You can retrieve available departments from the **v1.0/departments/** API |  

List all the categories. You can optionally pass filter the brands by the department. If successful, returns a paginated list of brands specified in `CategoryListingResponse`

*Success Response:*



List of Categories. See example below or refer `CategoryListingResponse` for details.


Schema: `CategoryListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCategoryDetailBySlug
Get metadata of a category

```swift
catalog.getCategoryDetailBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier of a category. i.e; `slug` of a category. You can retrieve these from the APIs that list categories like **v1.0/categories/** |  

Fetch metadata of a category. If successful, returns a metadata object specified in `CategoryMetaResponse`

*Success Response:*



The Metadata object. See example below or refer `CategoryMetaResponse` for details.


Schema: `CategoryMetaResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getHomeProducts
List the products

```swift
catalog.getHomeProducts(sortOn: sortOn, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| sortOn | String? | Each response will contain **sort_on** param, which should be sent back to make pagination work. |    
| pageId | String? | Each response will contain **page_id** param, which should be sent back to make pagination work. |    
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

List all the products associated with a brand, collection or category in a random order. If successful, returns a paginated list of products specified in `HomeListingResponse`

*Success Response:*



List of Products. See example below or refer `HomeListingResponse` for details


Schema: `HomeListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getDepartments
List all the departments

```swift
catalog.getDepartments() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the departments. If successful, returns the list of departments specified in `DepartmentResponse`

*Success Response:*



List of Departments. See example below or refer `DepartmentResponse` for details.


Schema: `DepartmentResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getSearchResults
Get relevant suggestions for a search query

```swift
catalog.getSearchResults(q: q) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| q | String? | The search query. This can be a partial or complete name of a either a product, brand or category |  

Retrieves a list of suggestions for a given search query. Each suggestion is a valid search term that's generated on the basis of what is given in query. This is particularly useful to enhance the user experience in search. The given search query can be a partial name of any product, brand and category. For example, if the given search query `q` is _ski_ the relevant search suggestions returned might be a list containing _skirt_, _ski shoes_, __skin cream_ etc.

*Success Response:*



Lists of autocomplete suggestions for the search query `q`. See example response below or refer `AutoCompleteResponse` for details


Schema: `AutoCompleteResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCollections
List all the collections

```swift
catalog.getCollections(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | Each response will contain **page_no** param, which should be sent back to make pagination work. |    
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections`

*Success Response:*



List of collections. See example below or refer `GetCollectionListingResponse` for details


Schema: `GetCollectionListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCollectionItemsBySlug
Get the items in a collection

```swift
catalog.getCollectionItemsBySlug(slug: slug, f: f, filters: filters, sortOn: sortOn, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A `slug` is a human readable, URL friendly unique identifier of an object. Pass the `slug` of the collection for which you want to fetch the items |    
| f | String? | The search filter parameters. All the parameter filtered from filter parameters will be passed in **f** parameter in this format. **?f=brand:voi-jeans||and:::category:t-shirts||shirts** |    
| filters | Bool? | Pass `filters` parameter to fetch the filter details. This flag is used to fetch all filters |    
| sortOn | String? | The order to sort the list of products on. The supported sort parameters are popularity, price, redemption and discount in either ascending or descending order. See the supported values below. |    
| pageId | String? | Each response will contain **page_id** param, which should be sent back to make pagination work. |    
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

Get items in a collection specified by its `slug`.

*Success Response:*



The attached items of an collection. See example below or refer `ProductListingResponse` for details


Schema: `ProductListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCollectionDetailBySlug
Get a particular collection

```swift
catalog.getCollectionDetailBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A `slug` is a human readable, URL friendly unique identifier of an object. Pass the `slug` of the collection which you want to retrieve. |  

Get the details of a collection by its `slug`. If successful, returns a Collection resource in the response body specified in `CollectionDetailResponse`

*Success Response:*



The Collection object. See example below or refer `CollectionDetailResponse` for details


Schema: `CollectionDetailResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getFollowedListing
Get a list of followed Products, Brands, Collections

```swift
catalog.getFollowedListing(collectionType: collectionType, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| collectionType | String? | Type of collection followed. i. e. products, brands, collections |    
| pageId | String? | Each response will contain **page_id** param, which should be sent back to make pagination work. |    
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

A User can follow a Product they like. This API retrieves the products the user have followed. If successful, returns a Followed resource in the response body specified in `GetFollowResponseSchema`

*Success Response:*



The Followed resource object. See example below or refer `GetFollowListingResponse` for details.


Schema: `GetFollowListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### followById
Follow a particular Product

```swift
catalog.followById(collectionType: collectionType, collectionId: collectionId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| collectionType | String? | Type of collection followed. i. e. products, brands, collections |    
| collectionId | String? | the `id` of the collection type you want to follow |  

Follow a particular Product specified by its uid. Pass the uid of the product in request URL

*Success Response:*



The response object. See example below or refer `FollowPostResponse` for details


Schema: `FollowPostResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### unfollowById
UnFollow a Product

```swift
catalog.unfollowById(collectionType: collectionType, collectionId: collectionId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| collectionType | String? | Type of collection followed. i. e. products, brands, collections |    
| collectionId | String? | the `id` of the collection type you want to unfollow |  

You can undo a followed Product or Brand by its id, we refer this action as _unfollow_. Pass the uid of the product in request URL

*Success Response:*



The response object. See example below or refer `FollowPostResponse` for details


Schema: `FollowPostResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getFollowerCountById
Get Follow Count

```swift
catalog.getFollowerCountById(collectionType: collectionType, collectionId: collectionId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| collectionType | String? | the `type` of the collection products/brands/collections. |    
| collectionId | String? | the `id` of the product/brand/collection. |  

Get count of followers for given collection type and collection id.

*Success Response:*



The response object. See example below or refer `FollowerCountResponse` for details


Schema: `FollowerCountResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getFollowIds
Get the Ids of followed product, brand and collection.

```swift
catalog.getFollowIds(collectionType: collectionType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| collectionType | String? | Type of collection followed. i. e. products, brands, collections |  

You can get the ids of all the followed Product, Brand and Collections. Pass collection_type as query parameter to fetch specific Ids

*Success Response:*



The response object. See example below or refer `FollowIdsResponse` for details


Schema: `FollowIdsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getStores
List store meta information.

```swift
catalog.getStores(pageNo: pageNo, pageSize: pageSize, q: q, range: range, latitude: latitude, longitude: longitude) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | Each response will contain **page_no** param, which should be sent back to make pagination work. |    
| pageSize | Int? | Number of items to retrieve in each page. |    
| q | String? | This can be used to search a particulr store by its name or store_code. |    
| range | Int? | This can be used to retrieve store within a particular range. For eg range=10000 (in meters) |    
| latitude | Double? | This should be the latitude of the location from which one needs to retreive the nearest stores. |    
| longitude | Double? | This should be the longitude of the location from which one needs to retreive the nearest stores. |  

Use this API to get list of stores for specific application. If successful, returns list of stores specified in `StoreListingResponse`

*Success Response:*



List of Stores. See example below or refer `StoreListingResponse` for details


Schema: `StoreListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---



---


## Lead


#### getTicket
Get Ticket with the specific id

```swift
lead.getTicket(id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | String? | ID of ticket to be retrieved |  

Get Ticket with the specific id, this is used to view the ticket details

*Success Response:*



Success


Schema: `Ticket`






---


#### createHistory
Create history for specific Ticket

```swift
lead.createHistory(ticketId: ticketId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| ticketId | String? | Ticket ID for which history is created |  

Create history for specific Ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Success Response:*



Success


Schema: `TicketHistory`






---


#### createTicket
Create Ticket

```swift
lead.createTicket(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

This is used to Create Ticket.

*Success Response:*



Success


Schema: `Ticket`






---


#### getCustomForm
Get specific Custom Form using it's slug

```swift
lead.getCustomForm(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | Slug of form whose response is getting submitted |  

Get specific Custom Form using it's slug, this is used to view the form.

*Success Response:*



Success


Schema: `CustomForm`






---


#### submitCustomForm
Submit Response for a specific Custom Form using it's slug

```swift
lead.submitCustomForm(slug: slug, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | Slug of form whose response is getting submitted |  

Submit Response for a specific Custom Form using it's slug, this response is then used to create a ticket on behalf of the user.

*Success Response:*



Success


Schema: `SubmitCustomFormResponse`






---


#### getParticipantsInsideVideoRoom
Get participants of a specific Video Room using it's unique name

```swift
lead.getParticipantsInsideVideoRoom(uniqueName: uniqueName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uniqueName | String? | Unique name of Video Room |  

Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.

*Success Response:*



Success


Schema: `GetParticipantsInsideVideoRoomResponse`






---


#### getTokenForVideoRoom
Get Token to join a specific Video Room using it's unqiue name

```swift
lead.getTokenForVideoRoom(uniqueName: uniqueName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uniqueName | String? | Unique name of Video Room |  

Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.

*Success Response:*



Success


Schema: `GetTokenForVideoRoomResponse`






---



---


## FileStorage


#### startUpload
This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.

```swift
filestorage.startUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| namespace | String? | bucket name |  

Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `completeUpload` api to complete the upload process.
This operation will return the url for the uploaded file.


*Success Response:*



Success


Schema: `StartResponse`





Failed


Schema: `FailedResponse`






---


#### completeUpload
This will complete the upload process. After successfully uploading file, you can call this operation to complete the upload process.

```swift
filestorage.completeUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| namespace | String? | bucket name |  

Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `completeUpload` api to complete the upload process.
This operation will return the url for the uploaded file.


*Success Response:*



Success


Schema: `CompleteResponse`





Failed


Schema: `FailedResponse`






---



---


## Payment


#### getAggregatorsConfig
Get payment gateway keys

```swift
payment.getAggregatorsConfig(xApiToken: xApiToken, refresh: refresh) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| xApiToken | String? | api token |    
| refresh | Bool? | refresh cache |  

Get payment gateway (key, secrets, merchant, sdk/api detail) to complete payment at front-end.

*Success Response:*



Keys of all payment gateway


Schema: `AggregatorsConfigDetailResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### attachCardToCustomer
Attach a saved card to customer.

```swift
payment.attachCardToCustomer(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Attach a saved card to customer at payment gateway i.e stripe and refresh card cache.

*Success Response:*



List of cards objects


Schema: `AttachCardsResponse`





Bad request error


Schema: `[String: Any]`





Internal Server Error


Schema: `[String: Any]`






---


#### getActiveCardAggregator
Fetch active payment gateway for card

```swift
payment.getActiveCardAggregator(refresh: refresh) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| refresh | Bool? |  |  

Fetch active payment gateway along with customer id for cards payments.

*Success Response:*



Object of payment gateway and customer id


Schema: `ActiveCardPaymentGatewayResponse`





Bad request error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### getActiveUserCards
Fetch the list of saved cards of user.

```swift
payment.getActiveUserCards(forceRefresh: forceRefresh) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| forceRefresh | Bool? |  |  

Fetch the list of saved cards of user from active payment gateway.

*Success Response:*



List of cards objects


Schema: `ListCardsResponse`





Bad request error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### deleteUserCard
Delete an user card.

```swift
payment.deleteUserCard(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Delete an added user card on payment gateway and remove from cache.

*Success Response:*



List of cards objects


Schema: `DeleteCardsResponse`





Bad request error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### verifyCustomerForPayment
Validate customer for payment.

```swift
payment.verifyCustomerForPayment(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Validate customer for payment i.e Simpl paylater, Rupifi loan.

*Success Response:*



List of cards objects


Schema: `ValidateCustomerResponse`





Bad request error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### verifyAndChargePayment
Verify and charge payment

```swift
payment.verifyAndChargePayment(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Verify and charge payment server to server for Simpl & Mswipe.

*Success Response:*



List of cards objects


Schema: `ChargeCustomerResponse`





Bad request error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### initialisePayment
Payment Initialisation server to server for UPI and BharatQR.

```swift
payment.initialisePayment(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Payment Initialisation for UPI & BharatQR code, UPI requests to app and QR code to be displayed on screen.

*Success Response:*



List of cards objects


Schema: `PaymentInitializationResponse`





Bad request error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### checkAndUpdatePaymentStatus
Continous polling to check status of payment on server.

```swift
payment.checkAndUpdatePaymentStatus(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Continous polling on interval to check status of payment untill timeout.

*Success Response:*



List of cards objects


Schema: `PaymentStatusUpdateResponse`





Bad request error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### getPaymentModeRoutes
Get All Valid Payment Options

```swift
payment.getPaymentModeRoutes(amount: amount, cartId: cartId, pincode: pincode, checkoutMode: checkoutMode, refresh: refresh, assignCardId: assignCardId, userDetails: userDetails) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| amount | Int? | Payment amount |    
| cartId | String? | Cart id |    
| pincode | String? | Pincode |    
| checkoutMode | String? | Checkout mode |    
| refresh | Bool? |  |    
| assignCardId | String? | selected card id |    
| userDetails | String? | URIencoded json annonymous user |  

Use this API to get Get All Valid Payment Options for making payment

*Success Response:*



Success


Schema: `PaymentModeRouteResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### getPosPaymentModeRoutes
Get All Valid Payment Options for POS

```swift
payment.getPosPaymentModeRoutes(amount: amount, cartId: cartId, pincode: pincode, checkoutMode: checkoutMode, refresh: refresh, assignCardId: assignCardId, orderType: orderType, userDetails: userDetails) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| amount | Int? | Payment amount |    
| cartId | String? | Cart id |    
| pincode | String? | Pincode |    
| checkoutMode | String? | Checkout mode |    
| refresh | Bool? |  |    
| assignCardId | String? | selected card id |    
| orderType | String? | Order type |    
| userDetails | String? | URIencoded json annonymous user |  

Use this API to get Get All Valid Payment Options for making payment

*Success Response:*



Success


Schema: `PaymentModeRouteResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### getActiveRefundTransferModes
List Refund Transfer Mode

```swift
payment.getActiveRefundTransferModes() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get all active transfer mode for adding beneficiary details

*Success Response:*



Refund Transfer Mode


Schema: `TransferModeResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### enableOrDisableRefundTransferMode
Enable/Disable Refund Transfer Mode

```swift
payment.enableOrDisableRefundTransferMode(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Activate or Deactivate Transfer Mode to collect Beneficiary Details for Refund

*Success Response:*



Update Refund Transfer Mode.


Schema: `UpdateRefundTransferModeResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### getUserBeneficiariesDetail
List User Beneficiary

```swift
payment.getUserBeneficiariesDetail(orderId: orderId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| orderId | String? |  |  

Get all active  beneficiary details added by the user for refund

*Success Response:*



List User Beneficiary


Schema: `OrderBeneficiaryResponse`





Bad Request Error


Schema: `NotFoundResourceError`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### verifyIfscCode
Ifsc Code Verification

```swift
payment.verifyIfscCode(ifscCode: ifscCode) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| ifscCode | String? |  |  

Get True/False for correct IFSC Code for adding bank details for refund

*Success Response:*



Bank details on correct Ifsc Code


Schema: `IfscCodeResponse`





Bad Request Error


Schema: `NotFoundResourceError`





Internal Server Error


Schema: `ErrorCodeDescription`






---


#### getOrderBeneficiariesDetail
List Order Beneficiary

```swift
payment.getOrderBeneficiariesDetail(orderId: orderId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| orderId | String? |  |  

Get all active  beneficiary details added by the user for refund

*Success Response:*



List Order Beneficiary


Schema: `OrderBeneficiaryResponse`





Bad Request Error


Schema: `NotFoundResourceError`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### verifyOtpAndAddBeneficiaryForBank
Save Beneficiary details on otp validation.

```swift
payment.verifyOtpAndAddBeneficiaryForBank(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Save Beneficiary details on otp validation.

*Success Response:*



Success


Schema: `AddBeneficiaryViaOtpVerificationResponse`





Bad Request Error


Schema: `WrongOtpError`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### addBeneficiaryDetails
Save bank details for cancelled/returned order

```swift
payment.addBeneficiaryDetails(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to save bank details for returned/cancelled order to refund amount in his account.

*Success Response:*



Success


Schema: `RefundAccountResponse`





Bad Request Error


Schema: `NotFoundResourceError`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### verifyOtpAndAddBeneficiaryForWallet
Send Otp on Adding wallet beneficiary

```swift
payment.verifyOtpAndAddBeneficiaryForWallet(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Send Otp on Adding wallet beneficiary for user mobile verification

*Success Response:*



WalletOtp


Schema: `WalletOtpResponse`





Bad Request Error


Schema: `NotFoundResourceError`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### updateDefaultBeneficiary
Mark Default Beneficiary For Refund

```swift
payment.updateDefaultBeneficiary(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Mark Default Beneficiary ot of all Beneficiary Details for Refund

*Success Response:*



Set Default Beneficiary Response.


Schema: `SetDefaultBeneficiaryResponse`





Bad Request Error


Schema: `SetDefaultBeneficiaryResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---



---


## Order


#### getOrders
Get Orders for application based on application Id

```swift
order.getOrders(pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, orderStatus: orderStatus) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | Current page number |    
| pageSize | Int? | Page limit |    
| fromDate | String? | From Date |    
| toDate | String? | To Date |    
| orderStatus | Int? | Order Status |  

Get Orders

*Success Response:*



Success


Schema: `OrderList`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### getOrderById
Get Order by order id for application based on application Id

```swift
order.getOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| orderId | String? | Order Id |  

Get Order By Fynd Order Id

*Success Response:*



Success


Schema: `OrderById`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### getShipmentById
Get Shipment by shipment id and order id for application based on application Id

```swift
order.getShipmentById(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| shipmentId | String? | Shipment Id |  

Get Shipment

*Success Response:*



Success


Schema: `ShipmentById`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### getShipmentReasons
Get Shipment reasons by shipment id and order id for application based on application Id

```swift
order.getShipmentReasons(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| shipmentId | String? | Shipment Id |  

Get Shipment Reasons

*Success Response:*



Success


Schema: `ShipmentReasons`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### updateShipmentStatus
Update Shipment status by shipment id and order id for application based on application Id

```swift
order.updateShipmentStatus(shipmentId: shipmentId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| shipmentId | String? | Shipment Id |  

Update Shipment Status

*Success Response:*



Success


Schema: `ShipmentStatusUpdate`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### trackShipment
Track Shipment by shipment id and order id for application based on application Id

```swift
order.trackShipment(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| shipmentId | String? | Shipment Id |  

Shipment Track

*Success Response:*



Success


Schema: `ShipmentTrack`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### getPosOrderById
Get POS Order by order id for application based on application Id

```swift
order.getPosOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| orderId | String? | Order Id |  

Get Order By Fynd Order Id

*Success Response:*



Success


Schema: `PosOrderById`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---



---


## Logistic


#### getTatProduct
Get Tat Product

```swift
logistic.getTatProduct(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get Tat Product

*Success Response:*



Success


Schema: `GetTatProductResponse`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### getPincodeCity
Get City from Pincode

```swift
logistic.getPincodeCity(pincode: pincode) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pincode | String? | Pincode |  

Get City from Pincode

*Success Response:*



Success


Schema: `GetPincodeCityResponse`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---



---


---
---
