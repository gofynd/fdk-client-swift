# FDK Application Front API Documentaion


* [Catalog](#Catalog) - Catalog API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features.  
* [Cart](#Cart) - Cart APIs 
* [Lead](#Lead) - Handles communication between Staff and Users 
* [User](#User) - Authentication Service 
* [Communication](#Communication) - Manages email, sms, push notifications sent to users 
* [Share](#Share) - Short link and QR Code 
* [Configuration](#Configuration) - Application configuration apis 
* [Payment](#Payment) - Collect payment through many payment gateway i.e Stripe, Razorpay, Juspay etc.into Fynd or Self account 
* [PosCart](#PosCart) - Cart APIs 
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
    

* [Cart](#Cart)
  * Methods
    * [getCart](#getcart)
    * [getCartLastModified](#getcartlastmodified)
    * [addItems](#additems)
    * [updateCart](#updatecart)
    * [getItemCount](#getitemcount)
    * [getCoupons](#getcoupons)
    * [applyCoupon](#applycoupon)
    * [removeCoupon](#removecoupon)
    * [getBulkDiscountOffers](#getbulkdiscountoffers)
    * [getAddresses](#getaddresses)
    * [addAddress](#addaddress)
    * [getAddressById](#getaddressbyid)
    * [updateAddress](#updateaddress)
    * [removeAddress](#removeaddress)
    * [selectAddress](#selectaddress)
    * [selectPaymentMode](#selectpaymentmode)
    * [validateCouponForPayment](#validatecouponforpayment)
    * [getShipments](#getshipments)
    * [checkoutCart](#checkoutcart)
    * [updateCartMeta](#updatecartmeta)
    * [getCartShareLink](#getcartsharelink)
    * [getCartSharedItems](#getcartshareditems)
    * [updateCartWithSharedItems](#updatecartwithshareditems)
    

* [Lead](#Lead)
  * Methods
    * [getTicket](#getticket)
    * [createHistory](#createhistory)
    * [createTicket](#createticket)
    * [getCustomForm](#getcustomform)
    * [submitCustomForm](#submitcustomform)
    * [getParticipantsInsideVideoRoom](#getparticipantsinsidevideoroom)
    * [getTokenForVideoRoom](#gettokenforvideoroom)
    

* [User](#User)
  * Methods
    * [loginWithFacebook](#loginwithfacebook)
    * [loginWithGoogle](#loginwithgoogle)
    * [loginWithGoogleAndroid](#loginwithgoogleandroid)
    * [loginWithGoogleIOS](#loginwithgoogleios)
    * [loginWithOTP](#loginwithotp)
    * [loginWithEmailAndPassword](#loginwithemailandpassword)
    * [sendResetPasswordEmail](#sendresetpasswordemail)
    * [forgotPassword](#forgotpassword)
    * [sendResetToken](#sendresettoken)
    * [loginWithToken](#loginwithtoken)
    * [registerWithForm](#registerwithform)
    * [verifyEmail](#verifyemail)
    * [verifyMobile](#verifymobile)
    * [hasPassword](#haspassword)
    * [updatePassword](#updatepassword)
    * [logout](#logout)
    * [sendOTPOnMobile](#sendotponmobile)
    * [verifyMobileOTP](#verifymobileotp)
    * [sendOTPOnEmail](#sendotponemail)
    * [verifyEmailOTP](#verifyemailotp)
    * [getLoggedInUser](#getloggedinuser)
    * [getListOfActiveSessions](#getlistofactivesessions)
    * [getPlatformConfig](#getplatformconfig)
    * [updateProfile](#updateprofile)
    * [addMobileNumber](#addmobilenumber)
    * [deleteMobileNumber](#deletemobilenumber)
    * [setMobileNumberAsPrimary](#setmobilenumberasprimary)
    * [sendVerificationLinkToMobile](#sendverificationlinktomobile)
    * [addEmail](#addemail)
    * [deleteEmail](#deleteemail)
    * [setEmailAsPrimary](#setemailasprimary)
    * [sendVerificationLinkToEmail](#sendverificationlinktoemail)
    

* [Communication](#Communication)
  * Methods
    * [getCommunicationConsent](#getcommunicationconsent)
    * [upsertCommunicationConsent](#upsertcommunicationconsent)
    * [upsertAppPushtoken](#upsertapppushtoken)
    

* [Share](#Share)
  * Methods
    * [getApplicationQRCode](#getapplicationqrcode)
    * [getProductQRCodeBySlug](#getproductqrcodebyslug)
    * [getCollectionQRCodeBySlug](#getcollectionqrcodebyslug)
    * [getUrlQRCode](#geturlqrcode)
    * [createShortLink](#createshortlink)
    * [getShortLinkByHash](#getshortlinkbyhash)
    * [getOriginalShortLinkByHash](#getoriginalshortlinkbyhash)
    

* [Configuration](#Configuration)
  * Methods
    * [getApplication](#getapplication)
    * [getOwnerInfo](#getownerinfo)
    * [getBasicDetails](#getbasicdetails)
    * [getIntegrationTokens](#getintegrationtokens)
    * [getOrderingStores](#getorderingstores)
    * [getFeatures](#getfeatures)
    * [getContactInfo](#getcontactinfo)
    * [getCurrencies](#getcurrencies)
    * [getCurrencyById](#getcurrencybyid)
    * [getLanguages](#getlanguages)
    * [getOrderingStoreCookie](#getorderingstorecookie)
    * [removeOrderingStoreCookie](#removeorderingstorecookie)
    * [getAppStaffs](#getappstaffs)
    

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
    * [getUserBeneficiariesDetail](#getuserbeneficiariesdetail)
    * [verifyIfscCode](#verifyifsccode)
    * [getOrderBeneficiariesDetail](#getorderbeneficiariesdetail)
    * [verifyOtpAndAddBeneficiaryForBank](#verifyotpandaddbeneficiaryforbank)
    * [addBeneficiaryDetails](#addbeneficiarydetails)
    * [verifyOtpAndAddBeneficiaryForWallet](#verifyotpandaddbeneficiaryforwallet)
    * [updateDefaultBeneficiary](#updatedefaultbeneficiary)
    

* [PosCart](#PosCart)
  * Methods
    * [getCart](#getcart)
    * [getCartLastModified](#getcartlastmodified)
    * [addItems](#additems)
    * [updateCart](#updatecart)
    * [getItemCount](#getitemcount)
    * [getCoupons](#getcoupons)
    * [applyCoupon](#applycoupon)
    * [removeCoupon](#removecoupon)
    * [getBulkDiscountOffers](#getbulkdiscountoffers)
    * [getAddresses](#getaddresses)
    * [addAddress](#addaddress)
    * [getAddressById](#getaddressbyid)
    * [updateAddress](#updateaddress)
    * [removeAddress](#removeaddress)
    * [selectAddress](#selectaddress)
    * [selectPaymentMode](#selectpaymentmode)
    * [validateCouponForPayment](#validatecouponforpayment)
    * [getShipments](#getshipments)
    * [updateShipments](#updateshipments)
    * [checkoutCart](#checkoutcart)
    * [updateCartMeta](#updatecartmeta)
    * [getAvailableDeliveryModes](#getavailabledeliverymodes)
    * [getStoreAddressByUid](#getstoreaddressbyuid)
    * [getCartShareLink](#getcartsharelink)
    * [getCartSharedItems](#getcartshareditems)
    * [updateCartWithSharedItems](#updatecartwithshareditems)
    

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


## Cart


#### getCart
Fetch all Items Added to  Cart

```swift
cart.getCart(uid: uid, i: i, b: b, assignCardId: assignCardId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |    
| i | Bool? |  |    
| b | Bool? |  |    
| assignCardId | Int? |  |  

Get all the details of a items added to cart  by uid. If successful, returns a Cart resource in the response body specified in CartResponse

*Success Response:*



The Cart object. See example below or refer CartResponse for details


Schema: `CartResponse`






---


#### getCartLastModified
Fetch Last-Modified timestamp

```swift
cart.getCartLastModified(uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |  

Fetch Last-Modified timestamp in header metadata

*Success Response:*



Fetch Last-Modified Timestamp Response






---


#### addItems
Add Items to Cart

```swift
cart.addItems(i: i, b: b, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| i | Bool? |  |    
| b | Bool? |  |  

<p>Add Items to cart. See `AddCartRequest` in schema of request body for the list of attributes needed to add items to a cart. On successful request, returns cart response containing details of items, coupons available etc.these attributes will be fetched from the folowing api's</p>

*Success Response:*



Response of the cart object including all item details included in .the cart,coupons etc.


Schema: `AddCartResponse`






---


#### updateCart
Update Items already added to Cart

```swift
cart.updateCart(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |    
| i | Bool? |  |    
| b | Bool? |  |  

Request object containing attributes like item_quantity and item_size which can be updated .these attributes will be fetched from the folowing api's</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>

*Success Response:*



Response of the cart object including all item with their updated details included in .the cart,coupons etc..


Schema: `UpdateCartResponse`






---


#### getItemCount
Cart item count

```swift
cart.getItemCount(uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? | Cart id |  

Get total count of item present in cart

*Success Response:*



OK


Schema: `CartItemCountResponse`






---


#### getCoupons
Fetch Coupon

```swift
cart.getCoupons(uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |  

Get all the details of a coupons applicable to cart  by uid. If successful, returns a Coupon resource in the response body specified in GetCouponResponse

*Success Response:*



Returns The Couppon object which has list of all available_coupon applicale for the cart. See example below or refer GetCouponResponse for details


Schema: `GetCouponResponse`






---


#### applyCoupon
Apply Coupon

```swift
cart.applyCoupon(i: i, b: b, p: p, uid: uid, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| i | Bool? |  |    
| b | Bool? |  |    
| p | Bool? |  |    
| uid | Int? |  |  

<p>Apply Coupons on Items added to cart. On successful request, returns cart response containing details of items ,coupons applied etc.these attributes will be consumed by  api</p> <ul> <li> <font color="monochrome">coupon_code</font></li>
</ul>

*Success Response:*



Response of the Coupon object including all item details included in .the cart,coupons applied etc.


Schema: `CartResponse`






---


#### removeCoupon
Remove Coupon Applied

```swift
cart.removeCoupon(uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? | Cart id |  

Remove Coupon applied on the cart by passing uid in request body.

*Success Response:*



Response of the Coupon object including all item details included in .the cart,coupons removed etc.


Schema: `CartResponse`






---


#### getBulkDiscountOffers
Get discount offers based on quantity

```swift
cart.getBulkDiscountOffers(itemId: itemId, articleId: articleId, uid: uid, slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| itemId | Int? | Item id |    
| articleId | String? | Article mongo id |    
| uid | Int? | Item id |    
| slug | String? | Item unique url from product page |  

List applicable offers along with current, next and best offer for given product. Either one of **uid**, **item_id**, **slug** should be present*

*Success Response:*



Offers found or not found with valid input


Schema: `BulkPriceResponse`





Unhandled api error


Schema: `[String: Any]`






---


#### getAddresses
Fetch Address

```swift
cart.getAddresses(uid: uid, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |    
| mobileNo | String? |  |    
| checkoutMode | String? |  |    
| tags | String? |  |    
| isDefault | Bool? |  |  

Get all the addresses associated with the account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Success Response:*



Returns The Address object which has list of all address saved for the account. See example below or refer GetAddressesResponse for details


Schema: `GetAddressesResponse`






---


#### addAddress
Add Address to the account

```swift
cart.addAddress(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

<p>Add Address to account. See `Address` in schema of request body for the list of attributes needed to add Address to account. On successful request, returns response containing address_id ,is_default_address and success message.

*Success Response:*



Return Address Id on successfull completion of the request.


Schema: `SaveAddressResponse`






---


#### getAddressById
Fetch Single Address

```swift
cart.getAddressById(id: id, uid: uid, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | Int? |  |    
| uid | Int? |  |    
| mobileNo | String? |  |    
| checkoutMode | String? |  |    
| tags | String? |  |    
| isDefault | Bool? |  |  

Get a addresses with the given id. If successful, returns a Address resource in the response body specified in `Address`.attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Success Response:*



Returns The Address object which has list of all address saved for the account. See example below or refer Address for details


Schema: `Address`






---


#### updateAddress
Update Address alreay added to account

```swift
cart.updateAddress(id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | Int? | Address id |  

Request object containing attributes mentioned in  <font color="blue">Address </font> can be updated .these attributes are :</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>

*Success Response:*



Response of the Address object containing address_id and sucess message.


Schema: `UpdateAddressResponse`






---


#### removeAddress
Remove Address Associated to the account

```swift
cart.removeAddress(id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | Int? | Address id |  

Delete a Address by it's address_id. Returns an object that tells whether the address was deleted successfully

*Success Response:*



Status object. Tells whether the operation was successful. See example below or refer DeleteAddressResponse


Schema: `DeleteAddressResponse`






---


#### selectAddress
Select Address from All Addresses

```swift
cart.selectAddress(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |    
| i | Bool? |  |    
| b | Bool? |  |  

<p>Select Address from all addresses associated with the account in order to ship the cart items to .that address,otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, returns Cart object response.below are the address attributes which needs to be sent. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>

*Success Response:*



Response of the Address object containing Cart Object and success message.  .


Schema: `CartResponse`





Address or Pincode Error


Schema: `[String: Any]`






---


#### selectPaymentMode
Update Cart Payment

```swift
cart.selectPaymentMode(uid: uid, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | String? |  |  

Update Cart Payment for Your Account

*Success Response:*



Cart response with payment options


Schema: `CartResponse`






---


#### validateCouponForPayment
Get Cart Payment for valid coupon

```swift
cart.validateCouponForPayment(uid: uid, addressId: addressId, paymentMode: paymentMode, paymentIdentifier: paymentIdentifier, aggregatorName: aggregatorName, merchantCode: merchantCode) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | String? |  |    
| addressId | String? |  |    
| paymentMode | String? |  |    
| paymentIdentifier | String? |  |    
| aggregatorName | String? |  |    
| merchantCode | String? |  |  

Validate coupon for selected payment mode

*Success Response:*



Cart Affiliates.


Schema: `PaymentCouponValidate`






---


#### getShipments
Get delivery date and options before checkout

```swift
cart.getShipments(p: p, uid: uid, addressId: addressId, areaCode: areaCode) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| p | Bool? | Get payment options or not |    
| uid | Int? | Cart id |    
| addressId | Int? | Address id |    
| areaCode | String? | Destination pincode. |  

Shipment break up item wise with delivery date. Actual                      delivery will be during given dates only. Items will be                      delivered in group of shipments created.

*Success Response:*



OK


Schema: `CartShipmentsResponse`





Unhandled api error


Schema: `[String: Any]`






---


#### checkoutCart
Checkout Cart

```swift
cart.checkoutCart(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Checkout all items in cart to payment and order generation.                         For COD only order will be generated while for other checkout mode                         user will be redirected to payment gateway

*Success Response:*



OK


Schema: `CartCheckoutResponse`






---


#### updateCartMeta
Update Cart Meta

```swift
cart.updateCartMeta(uid: uid, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? | Cart id received in get cart. |  

Update cart meta like checkout_mode, gstin.

*Success Response:*



Cart meta updated successfully


Schema: `CartMetaResponse`





Missing required Field


Schema: `CartMetaMissingResponse`






---


#### getCartShareLink
Generate Cart sharing link token

```swift
cart.getCartShareLink(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Generates shared cart snapshot and returns shortlink token

*Success Response:*



Token Generated successfully


Schema: `GetShareCartLinkResponse`






---


#### getCartSharedItems
Get shared cart snapshot and cart response

```swift
cart.getCartSharedItems(token: token) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| token | String? | Shared short link token. |  

Returns shared cart response for sent token with `shared_cart_details`                    containing shared cart details in response.

*Success Response:*



Cart for valid token


Schema: `SharedCartResponse`





No cart found for sent token


Schema: `SharedCartResponse`






---


#### updateCartWithSharedItems
Merge or Replace existing cart

```swift
cart.updateCartWithSharedItems(token: token, action: action) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| token | String? | Shared short link token. |    
| action | String? | Operation to perform on existing cart, whether to merge or replace. |  

Merge or Replace cart based on `action` parameter with shared cart of `token`

*Success Response:*



Success of Merge or Replace of cart with `shared_cart_details`                    containing shared cart details in response


Schema: `SharedCartResponse`






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


## User


#### loginWithFacebook
Login/Register with Facebook

```swift
user.loginWithFacebook(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to login or register with Facebook

*Success Response:*



A JSON object with user details


Schema: `AuthSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### loginWithGoogle
Login/Register with Google

```swift
user.loginWithGoogle(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to login or register with Google

*Success Response:*



A JSON object with user details


Schema: `AuthSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### loginWithGoogleAndroid
Login/Register with Google for android

```swift
user.loginWithGoogleAndroid(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to login or register with Google for android

*Success Response:*



A JSON object with user details


Schema: `AuthSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### loginWithGoogleIOS
Login/Register with Google for ios

```swift
user.loginWithGoogleIOS(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to login or register with google for ios

*Success Response:*



A JSON object with user details


Schema: `AuthSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### loginWithOTP
Login/Register with OTP

```swift
user.loginWithOTP(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to login or register with OTP

*Success Response:*






Schema: `SendOtpResponse`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### loginWithEmailAndPassword
Login/Register with password

```swift
user.loginWithEmailAndPassword(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to login or register with email & password

*Success Response:*






Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### sendResetPasswordEmail
Reset Password

```swift
user.sendResetPasswordEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to reset account password

*Success Response:*






Schema: `ResetPasswordSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### forgotPassword


```swift
user.forgotPassword(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |



*Success Response:*






Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### sendResetToken


```swift
user.sendResetToken(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Send code incase of reset password

*Success Response:*






Schema: `ResetPasswordSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### loginWithToken
Login/Register with token

```swift
user.loginWithToken(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Login/Register with token

*Success Response:*






Schema: `LoginSuccess`








Schema: `[String: Any]`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### registerWithForm
Registration Form

```swift
user.registerWithForm(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Register using form

*Success Response:*






Schema: `RegisterFormSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### verifyEmail
Verify email

```swift
user.verifyEmail(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to verify email

*Success Response:*






Schema: `VerifyEmailSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### verifyMobile
Verify mobile

```swift
user.verifyMobile(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Verify mobile

*Success Response:*






Schema: `VerifyEmailSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### hasPassword
Check if user has password

```swift
user.hasPassword() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Checks if user is using password or not

*Success Response:*






Schema: `HasPasswordSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### updatePassword
Update user password

```swift
user.updatePassword(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to update user password

*Success Response:*






Schema: `VerifyEmailSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### logout
Logout user

```swift
user.logout() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to log out user

*Success Response:*






Schema: `LogoutSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### sendOTPOnMobile
Send OTP on mobile

```swift
user.sendOTPOnMobile(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to send otp to mobile

*Success Response:*






Schema: `OtpSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### verifyMobileOTP
Verify OTP on mobile

```swift
user.verifyMobileOTP(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to verify otp sent to mobile

*Success Response:*






Schema: `VerifyOtpSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### sendOTPOnEmail
Send OTP on email

```swift
user.sendOTPOnEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to send otp to email

*Success Response:*






Schema: `EmailOtpSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### verifyEmailOTP
Verify OTP on email

```swift
user.verifyEmailOTP(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to verify otp sent to email

*Success Response:*






Schema: `VerifyOtpSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### getLoggedInUser
Get logged in user

```swift
user.getLoggedInUser() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to get logged in user details

*Success Response:*






Schema: `UserSchema`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### getListOfActiveSessions
Get list of sessions

```swift
user.getListOfActiveSessions() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Lists all active sessions

*Success Response:*






Schema: `SessionListSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### getPlatformConfig
Get platform config

```swift
user.getPlatformConfig(name: name) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| name | String? | Name |  

Used to get platform config

*Success Response:*



Platform Config


Schema: `PlatformSchema`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### updateProfile
Edit Profile Details

```swift
user.updateProfile(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to update profile

*Success Response:*






Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### addMobileNumber
Add mobile number to profile

```swift
user.addMobileNumber(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to add new mobile number to profile

*Success Response:*



A JSON object with user details


Schema: `VerifyMobileOTPSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### deleteMobileNumber
Delete mobile number from profile

```swift
user.deleteMobileNumber(platform: platform, active: active, primary: primary, verified: verified, countryCode: countryCode, phone: phone) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |    
| active | Bool? | Active mobile number |    
| primary | Bool? | Primary number |    
| verified | Bool? | Verified Number |    
| countryCode | String? | Country code of phone number |    
| phone | String? | Phone number |  

Used to delete mobile number from profile

*Success Response:*



A JSON object with user details


Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### setMobileNumberAsPrimary
Set mobile as primary

```swift
user.setMobileNumberAsPrimary(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to set a mobile number as primary

*Success Response:*



A JSON object with user details


Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### sendVerificationLinkToMobile
Send verification link to mobile

```swift
user.sendVerificationLinkToMobile(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to send verification link to a mobile number

*Success Response:*






Schema: `SendMobileVerifyLinkSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### addEmail
Add email to profile

```swift
user.addEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to add new email to profile

*Success Response:*



A JSON object with user details


Schema: `VerifyEmailOTPSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### deleteEmail
Delete email from profile

```swift
user.deleteEmail(platform: platform, active: active, primary: primary, verified: verified, email: email) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |    
| active | Bool? | Whether email id is active |    
| primary | Bool? | Whether email id is primary email |    
| verified | Bool? | Whether email id is verified |    
| email | String? | Email ID to be deleted |  

Used to delete email from profile

*Success Response:*



A JSON object with user details


Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### setEmailAsPrimary
Set email as primary

```swift
user.setEmailAsPrimary(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Used to set an email as primart

*Success Response:*



A JSON object with user details


Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### sendVerificationLinkToEmail
Send verification link to email

```swift
user.sendVerificationLinkToEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | Platform |  

Used to sent verification to an email

*Success Response:*






Schema: `SendEmailVerifyLinkSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---



---


## Communication


#### getCommunicationConsent
Get communication consent

```swift
communication.getCommunicationConsent() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get communication consent

*Success Response:*



Success


Schema: `CommunicationConsent`






---


#### upsertCommunicationConsent
Upsert communication consent

```swift
communication.upsertCommunicationConsent(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Upsert communication consent

*Success Response:*



Success


Schema: `CommunicationConsentRes`





Bad request


Schema: `BadRequest`






---


#### upsertAppPushtoken
Upsert push token of a user

```swift
communication.upsertAppPushtoken(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Upsert push token of a user

*Success Response:*



Success


Schema: `PushtokenRes`





Bad request


Schema: `BadRequest`






---



---


## Share


#### getApplicationQRCode
Create application QR Code

```swift
share.getApplicationQRCode() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Create application QR Code

*Success Response:*



Success


Schema: `QRCodeResp`






---


#### getProductQRCodeBySlug
Create product QR Code

```swift
share.getProductQRCodeBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier of a product |  

Create product QR Code

*Success Response:*



Success


Schema: `QRCodeResp`





Error


Schema: `ErrorRes`






---


#### getCollectionQRCodeBySlug
Create collection QR Code

```swift
share.getCollectionQRCodeBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The unique identifier of a collection |  

Create collection QR Code

*Success Response:*



Success


Schema: `QRCodeResp`





Error


Schema: `ErrorRes`






---


#### getUrlQRCode
Create url QR Code

```swift
share.getUrlQRCode(url: url) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| url | String? | Url |  

Create url QR Code

*Success Response:*



Success


Schema: `QRCodeResp`





Error


Schema: `ErrorRes`






---


#### createShortLink
Create short link

```swift
share.createShortLink(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Create short link

*Success Response:*



Success


Schema: `ShortLinkRes`





Error


Schema: `ErrorRes`






---


#### getShortLinkByHash
Get short link by hash

```swift
share.getShortLinkByHash(hash: hash) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| hash | String? | Hash of short link |  

Get short link by hash

*Success Response:*



Success


Schema: `ShortLinkRes`





Error


Schema: `ErrorRes`






---


#### getOriginalShortLinkByHash
Get original link by hash

```swift
share.getOriginalShortLinkByHash(hash: hash) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| hash | String? | Hash of short link |  

Get original link by hash

*Success Response:*



Success


Schema: `ShortLinkRes`





Error


Schema: `ErrorRes`






---



---


## Configuration


#### getApplication
Get current application details

```swift
configuration.getApplication() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get current application details.

*Success Response:*



Success


Schema: `Application`





Not found


Schema: `NotFound`






---


#### getOwnerInfo
Get application, owner and seller information

```swift
configuration.getOwnerInfo() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get application information with owner and seller basic details

*Success Response:*



Success


Schema: `ApplicationAboutResponse`






---


#### getBasicDetails
Get basic application details

```swift
configuration.getBasicDetails() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get basic application details like name

*Success Response:*



Success


Schema: `ApplicationDetail`






---


#### getIntegrationTokens
Get integration tokens

```swift
configuration.getIntegrationTokens() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get tokens for multiple integrations like Facebook, Googlemaps, Segment, Firebase, etc. Note: token values are encrypted with AES encryption using secret key. Kindly reach to developers for secret key.

*Success Response:*



Success


Schema: `TokenResponse`






---


#### getOrderingStores
Get deployment meta stores

```swift
configuration.getOrderingStores(pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | Current page no |    
| pageSize | Int? | Current request items count |    
| q | String? | Search ordering store by name or store code |  

Get deployment meta stores.

*Success Response:*



Success


Schema: `OrderingStores`





Not found


Schema: `NotFound`






---


#### getFeatures
Get features of application

```swift
configuration.getFeatures() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get features of application

*Success Response:*



Success


Schema: `AppFeatureResponse`





Not found


Schema: `NotFound`






---


#### getContactInfo
Get application information

```swift
configuration.getContactInfo() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get Application Current Information. This includes information about social links, address and contact information of company/seller/brand of the application.

*Success Response:*



Success


Schema: `ApplicationInformation`






---


#### getCurrencies
Get application enabled currencies

```swift
configuration.getCurrencies() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get currency list for allowed currencies under current application

*Success Response:*



Currencies Success response


Schema: `CurrenciesResponse`






---


#### getCurrencyById
Get currency by id

```swift
configuration.getCurrencyById(id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | String? | Currency object id |  

Get currency object with symbol and name information by id.

*Success Response:*



Success response


Schema: `Currency`






---


#### getLanguages
Get list of languages

```swift
configuration.getLanguages() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get list of supported languages under application.

*Success Response:*



Success response


Schema: `LanguageResponse`






---


#### getOrderingStoreCookie
Get ordering store signed cookie on selection of ordering store. This will be used by cart service to verify coupon against selected ordering store in cart.

```swift
configuration.getOrderingStoreCookie(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get ordering store signed cookie on selection of ordering store.

*Success Response:*



Success


Schema: `SuccessMessageResponse`





Success


Schema: `NotFound`






---


#### removeOrderingStoreCookie
Unset ordering store signed cookie on change of sales channel selection via domain in universal fynd store app.

```swift
configuration.removeOrderingStoreCookie() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Unset ordering store cookie.

*Success Response:*



Success


Schema: `SuccessMessageResponse`






---


#### getAppStaffs
Get Staff List.

```swift
configuration.getAppStaffs(orderIncent: orderIncent, orderingStore: orderingStore, user: user) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| orderIncent | Bool? | This is to check which staff members are applicable for order incentives. |    
| orderingStore | Int? | This is to filter staff members from only selected ordering store. |    
| user | String? | Get single staff member details using staff user mongo id |  

Get a staff list based on the user's session token passed in the header.

*Success Response:*



Success


Schema: `AppStaffResponse`





Request failed with internal server error.


Schema: `UnhandledError`






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


## PosCart


#### getCart
Fetch all Items Added to  Cart

```swift
poscart.getCart(uid: uid, i: i, b: b, assignCardId: assignCardId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |    
| i | Bool? |  |    
| b | Bool? |  |    
| assignCardId | Int? |  |  

Get all the details of a items added to cart  by uid. If successful, returns a Cart resource in the response body specified in CartResponse

*Success Response:*



The Cart object. See example below or refer CartResponse for details


Schema: `CartResponse`






---


#### getCartLastModified
Fetch Last-Modified timestamp

```swift
poscart.getCartLastModified(uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |  

Fetch Last-Modified timestamp in header metadata

*Success Response:*



Fetch Last-Modified Timestamp Response






---


#### addItems
Add Items to Cart

```swift
poscart.addItems(i: i, b: b, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| i | Bool? |  |    
| b | Bool? |  |  

<p>Add Items to cart. See `AddCartRequest` in schema of request body for the list of attributes needed to add items to a cart. On successful request, returns cart response containing details of items, coupons available etc.these attributes will be fetched from the folowing api's</p>

*Success Response:*



Response of the cart object including all item details included in .the cart,coupons etc.


Schema: `AddCartResponse`






---


#### updateCart
Update Items already added to Cart

```swift
poscart.updateCart(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |    
| i | Bool? |  |    
| b | Bool? |  |  

Request object containing attributes like item_quantity and item_size which can be updated .these attributes will be fetched from the folowing api's</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>

*Success Response:*



Response of the cart object including all item with their updated details included in .the cart,coupons etc..


Schema: `UpdateCartResponse`






---


#### getItemCount
Cart item count

```swift
poscart.getItemCount(uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? | Cart id |  

Get total count of item present in cart

*Success Response:*



OK


Schema: `CartItemCountResponse`






---


#### getCoupons
Fetch Coupon

```swift
poscart.getCoupons(uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |  

Get all the details of a coupons applicable to cart  by uid. If successful, returns a Coupon resource in the response body specified in GetCouponResponse

*Success Response:*



Returns The Couppon object which has list of all available_coupon applicale for the cart. See example below or refer GetCouponResponse for details


Schema: `GetCouponResponse`






---


#### applyCoupon
Apply Coupon

```swift
poscart.applyCoupon(i: i, b: b, p: p, uid: uid, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| i | Bool? |  |    
| b | Bool? |  |    
| p | Bool? |  |    
| uid | Int? |  |  

<p>Apply Coupons on Items added to cart. On successful request, returns cart response containing details of items ,coupons applied etc.these attributes will be consumed by  api</p> <ul> <li> <font color="monochrome">coupon_code</font></li>
</ul>

*Success Response:*



Response of the Coupon object including all item details included in .the cart,coupons applied etc.


Schema: `CartResponse`






---


#### removeCoupon
Remove Coupon Applied

```swift
poscart.removeCoupon(uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? | Cart id |  

Remove Coupon applied on the cart by passing uid in request body.

*Success Response:*



Response of the Coupon object including all item details included in .the cart,coupons removed etc.


Schema: `CartResponse`






---


#### getBulkDiscountOffers
Get discount offers based on quantity

```swift
poscart.getBulkDiscountOffers(itemId: itemId, articleId: articleId, uid: uid, slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| itemId | Int? | Item id |    
| articleId | String? | Article mongo id |    
| uid | Int? | Item id |    
| slug | String? | Item unique url from product page |  

List applicable offers along with current, next and best offer for given product. Either one of **uid**, **item_id**, **slug** should be present*

*Success Response:*



Offers found or not found with valid input


Schema: `BulkPriceResponse`





Unhandled api error


Schema: `[String: Any]`






---


#### getAddresses
Fetch Address

```swift
poscart.getAddresses(uid: uid, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |    
| mobileNo | String? |  |    
| checkoutMode | String? |  |    
| tags | String? |  |    
| isDefault | Bool? |  |  

Get all the addresses associated with the account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Success Response:*



Returns The Address object which has list of all address saved for the account. See example below or refer GetAddressesResponse for details


Schema: `GetAddressesResponse`






---


#### addAddress
Add Address to the account

```swift
poscart.addAddress(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

<p>Add Address to account. See `Address` in schema of request body for the list of attributes needed to add Address to account. On successful request, returns response containing address_id ,is_default_address and success message.

*Success Response:*



Return Address Id on successfull completion of the request.


Schema: `SaveAddressResponse`






---


#### getAddressById
Fetch Single Address

```swift
poscart.getAddressById(id: id, uid: uid, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | Int? |  |    
| uid | Int? |  |    
| mobileNo | String? |  |    
| checkoutMode | String? |  |    
| tags | String? |  |    
| isDefault | Bool? |  |  

Get a addresses with the given id. If successful, returns a Address resource in the response body specified in `Address`.attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Success Response:*



Returns The Address object which has list of all address saved for the account. See example below or refer Address for details


Schema: `Address`






---


#### updateAddress
Update Address alreay added to account

```swift
poscart.updateAddress(id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | Int? | Address id |  

Request object containing attributes mentioned in  <font color="blue">Address </font> can be updated .these attributes are :</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>

*Success Response:*



Response of the Address object containing address_id and sucess message.


Schema: `UpdateAddressResponse`






---


#### removeAddress
Remove Address Associated to the account

```swift
poscart.removeAddress(id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | Int? | Address id |  

Delete a Address by it's address_id. Returns an object that tells whether the address was deleted successfully

*Success Response:*



Status object. Tells whether the operation was successful. See example below or refer DeleteAddressResponse


Schema: `DeleteAddressResponse`






---


#### selectAddress
Select Address from All Addresses

```swift
poscart.selectAddress(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |    
| i | Bool? |  |    
| b | Bool? |  |  

<p>Select Address from all addresses associated with the account in order to ship the cart items to .that address,otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, returns Cart object response.below are the address attributes which needs to be sent. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>

*Success Response:*



Response of the Address object containing Cart Object and success message.  .


Schema: `CartResponse`





Address or Pincode Error


Schema: `[String: Any]`






---


#### selectPaymentMode
Update Cart Payment

```swift
poscart.selectPaymentMode(uid: uid, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | String? |  |  

Update Cart Payment for Your Account

*Success Response:*



Cart response with payment options


Schema: `CartResponse`






---


#### validateCouponForPayment
Get Cart Payment for valid coupon

```swift
poscart.validateCouponForPayment(uid: uid, addressId: addressId, paymentMode: paymentMode, paymentIdentifier: paymentIdentifier, aggregatorName: aggregatorName, merchantCode: merchantCode) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | String? |  |    
| addressId | String? |  |    
| paymentMode | String? |  |    
| paymentIdentifier | String? |  |    
| aggregatorName | String? |  |    
| merchantCode | String? |  |  

Validate coupon for selected payment mode

*Success Response:*



Cart Affiliates.


Schema: `PaymentCouponValidate`






---


#### getShipments
Get delivery date and options before checkout

```swift
poscart.getShipments(pickAtStoreUid: pickAtStoreUid, orderingStoreId: orderingStoreId, p: p, uid: uid, addressId: addressId, areaCode: areaCode, orderType: orderType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pickAtStoreUid | Int? |  |    
| orderingStoreId | Int? |  |    
| p | Bool? | Get payment options or not |    
| uid | Int? | Cart id |    
| addressId | Int? | Address id |    
| areaCode | String? | Destination pincode. |    
| orderType | String? | Order type of shipment |  

Shipment break up item wise with delivery date. Actual                      delivery will be during given dates only. Items will be                      delivered in group of shipments created.

*Success Response:*



OK


Schema: `CartShipmentsResponse`





Unhandled api error


Schema: `[String: Any]`






---


#### updateShipments
Update shipment delivery type and quantity before checkout

```swift
poscart.updateShipments(i: i, p: p, uid: uid, addressId: addressId, orderType: orderType, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| i | Bool? | Get items or not |    
| p | Bool? | Get payment options or not |    
| uid | Int? | Cart id |    
| addressId | Int? | Address id |    
| orderType | String? | Order is hand over or home delivery |  

Shipment break up item wise with delivery date. Actual                      delivery will be during given dates only. Items will be                      delivered in group of shipments created. Update the shipment                      type and quantity as per customer preference for store pick up or home delivery

*Success Response:*



OK


Schema: `CartShipmentsResponse`





Unhandled api error


Schema: `[String: Any]`






---


#### checkoutCart
Checkout Cart

```swift
poscart.checkoutCart(uid: uid, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |  

Checkout all items in cart to payment and order generation.                        For COD only order will be generated while for other checkout mode                        user will be redirected to payment gateway

*Success Response:*



OK


Schema: `CartCheckoutResponse`






---


#### updateCartMeta
Update Cart Meta

```swift
poscart.updateCartMeta(uid: uid, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? | Cart id received in get cart. |  

Update cart meta like checkout_mode, gstin.

*Success Response:*



Cart meta updated successfully


Schema: `CartMetaResponse`





Missing required Field


Schema: `CartMetaMissingResponse`






---


#### getAvailableDeliveryModes
Get available delivery modes for cart

```swift
poscart.getAvailableDeliveryModes(areaCode: areaCode, uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| areaCode | String? |  |    
| uid | Int? |  |  

Get available delivery modes for cart and pick up store uid list. From given pick stores list user can pick up delivery. Use this uid to show store address

*Success Response:*



Returns Available delivery modes for cart and pick up available store uid for current cart items


Schema: `CartDeliveryModesResponse`






---


#### getStoreAddressByUid
Get list of stores for give uids

```swift
poscart.getStoreAddressByUid(storeUid: storeUid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| storeUid | Int? |  |  

Get list of stores by providing pick up available store uids.

*Success Response:*



Returns available store information with its address


Schema: `StoreDetailsResponse`






---


#### getCartShareLink
Generate Cart sharing link token

```swift
poscart.getCartShareLink(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Generates shared cart snapshot and returns shortlink token

*Success Response:*



Token Generated successfully


Schema: `GetShareCartLinkResponse`






---


#### getCartSharedItems
Get shared cart snapshot and cart response

```swift
poscart.getCartSharedItems(token: token) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| token | String? | Shared short link token. |  

Returns shared cart response for sent token with `shared_cart_details`                    containing shared cart details in response.

*Success Response:*



Cart for valid token


Schema: `SharedCartResponse`





No cart found for sent token


Schema: `SharedCartResponse`






---


#### updateCartWithSharedItems
Merge or Replace existing cart

```swift
poscart.updateCartWithSharedItems(token: token, action: action) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| token | String? | Shared short link token. |    
| action | String? | Operation to perform on existing cart, whether to merge or replace. |  

Merge or Replace cart based on `action` parameter with shared cart of `token`

*Success Response:*



Success of Merge or Replace of cart with `shared_cart_details`                    containing shared cart details in response


Schema: `SharedCartResponse`






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
