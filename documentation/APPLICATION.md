# FDK Application Front API Documentaion


* [Catalog](#Catalog) - Catalog API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features.  
* [Cart](#Cart) - Cart APIs 
* [Lead](#Lead) - Handles communication between Staff and Users 
* [Theme](#Theme) - Responsible for themes 
* [User](#User) - Authentication Service 
* [Content](#Content) - Content System 
* [Communication](#Communication) - Manages email, sms, push notifications sent to users 
* [Share](#Share) - Short link and QR Code 
* [FileStorage](#FileStorage) - File Storage 
* [Configuration](#Configuration) - Application configuration apis 
* [Payment](#Payment) - Collect payment through many payment gateway i.e Stripe, Razorpay, Juspay etc.into Fynd or Self account 
* [Order](#Order) - Handles Platform websites OMS 
* [Rewards](#Rewards) - Earn and redeem reward points 
* [Feedback](#Feedback) - User Reviews and Rating System 
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
    * [unfollowById](#unfollowbyid)
    * [followById](#followbyid)
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
    

* [Theme](#Theme)
  * Methods
    * [getAppliedTheme](#getappliedtheme)
    * [getThemeForPreview](#getthemeforpreview)
    

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
    

* [Content](#Content)
  * Methods
    * [getAnnouncements](#getannouncements)
    * [getBlog](#getblog)
    * [getBlogs](#getblogs)
    * [getFaqs](#getfaqs)
    * [getFaqCategories](#getfaqcategories)
    * [getFaqBySlug](#getfaqbyslug)
    * [getFaqCategoryBySlug](#getfaqcategorybyslug)
    * [getFaqsByCategorySlug](#getfaqsbycategoryslug)
    * [getLandingPage](#getlandingpage)
    * [getLegalInformation](#getlegalinformation)
    * [getNavigations](#getnavigations)
    * [getPage](#getpage)
    * [getPages](#getpages)
    * [getSEOConfiguration](#getseoconfiguration)
    * [getSlideshows](#getslideshows)
    * [getSlideshow](#getslideshow)
    * [getSupportInformation](#getsupportinformation)
    * [getTags](#gettags)
    

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
    

* [FileStorage](#FileStorage)
  * Methods
    * [startUpload](#startupload)
    * [completeUpload](#completeupload)
    

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
    

* [Rewards](#Rewards)
  * Methods
    * [getPointsOnProduct](#getpointsonproduct)
    * [getOfferByName](#getofferbyname)
    * [getOrderDiscount](#getorderdiscount)
    * [getUserPoints](#getuserpoints)
    * [getUserPointsHistory](#getuserpointshistory)
    * [getUserReferralDetails](#getuserreferraldetails)
    * [redeemReferralCode](#redeemreferralcode)
    

* [Feedback](#Feedback)
  * Methods
    * [createAbuseReport](#createabusereport)
    * [updateAbuseReport](#updateabusereport)
    * [getAbuseReports](#getabusereports)
    * [getAttributes](#getattributes)
    * [createAttribute](#createattribute)
    * [getAttribute](#getattribute)
    * [updateAttribute](#updateattribute)
    * [createComment](#createcomment)
    * [updateComment](#updatecomment)
    * [getComments](#getcomments)
    * [checkEligibility](#checkeligibility)
    * [deleteMedia](#deletemedia)
    * [createMedia](#createmedia)
    * [updateMedia](#updatemedia)
    * [getMedias](#getmedias)
    * [getReviewSummaries](#getreviewsummaries)
    * [createReview](#createreview)
    * [updateReview](#updatereview)
    * [getReviews](#getreviews)
    * [getTemplates](#gettemplates)
    * [createQuestion](#createquestion)
    * [updateQuestion](#updatequestion)
    * [getQuestionAndAnswers](#getquestionandanswers)
    * [getVotes](#getvotes)
    * [createVote](#createvote)
    * [updateVote](#updatevote)
    

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
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  

Use this API to retrieve a product by its slug value.

*Success Response:*



Success. Returns a Product object. Check the example shown below or refer `ProductDetail` for more details.


Schema: `ProductDetail`





Bad request. See the error object in the response body to know the exact reason.


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
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |    
| storeId | Int? | The ID of the store that is selling the product, e.g. 1,2,3. |  

A product can have multiple sizes. Use this API to fetch all the available sizes of a product.

*Success Response:*



Success. Returns a ProductSize object. Check the example shown below or refer `ProductSizes` for more details.


Schema: `ProductSizes`





Bad request. See the error object in the response body to know the exact reason.


Schema: `ErrorResponse`






---


#### getProductPriceBySlug
Get the price of a product size at a PIN Code

```swift
catalog.getProductPriceBySlug(slug: slug, size: size, pincode: pincode, storeId: storeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |    
| size | String? | A string indicating the size of the product, e.g. S, M, XL. You can get slug value from the endpoint /service/application/catalog/v1.0/products/sizes |    
| pincode | String? | The PIN Code of the area near which the selling locations should be searched, e.g. 400059 |    
| storeId | String? | The ID of the store that is selling the product, e.g. 1,2,3. |  

Prices may vary for different sizes of a product. Use this API to retrieve the price of a product size at all the selling locations near to a PIN Code.

*Success Response:*



Success. Returns a ProductSizePrice object. Check the example shown below or refer `ProductSizePriceResponse` for more details.


Schema: `ProductSizePriceResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `ErrorResponse`






---


#### getProductSellersBySlug
Get the sellers of a product size at a PIN Code

```swift
catalog.getProductSellersBySlug(slug: slug, size: size, pincode: pincode, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |    
| size | String? | A string indicating the size of the product, e.g. S, M, XL. You can get slug value from the endpoint /service/application/catalog/v1.0/products/sizes |    
| pincode | String? | The 6-digit PIN Code of the area near which the selling locations should be searched, e.g. 400059 |    
| pageNo | Int? | The page number to navigate through the given set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

A product of a particular size may be sold by multiple sellers. Use this API to fetch the sellers having the stock of a particular size at a given PIN Code.

*Success Response:*



Success. Returns a ProductSizeSeller object. Check the example shown below or refer `ProductSizeSellersResponse` for more details.


Schema: `ProductSizeSellersResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| slug | [String]? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/. |  

Use this API to compare the features of products belonging to the same category. Note that at least one slug is mandatory in the request query.

*Success Response:*



Success. Returns an array of objects containing the attributes for comparision. Check the example shown below or refer `ProductsComparisonResponse` for more details.


Schema: `ProductsComparisonResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  

Use this API to compare a given product automatically with similar products. Only one slug is needed.

*Success Response:*



Success. Returns an array of objects containing the attributes for comparision. Check the example shown below or refer `ProductCompareResponse` for more details.


Schema: `ProductCompareResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  

Use this API to compare a given product automatically with products that are frequently compared with it. Only one slug is needed.

*Success Response:*



Success. Returns an array of objects containing the attributes for comparision. Check the example shown below or refer `ProductFrequentlyComparedSimilarResponse` for more details.


Schema: `ProductFrequentlyComparedSimilarResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |    
| similarType | String? | Similarity criteria such as basic, visual, price, seller, category and spec. Visual - Products having similar patterns, Price - Products in similar price range, Seller - Products sold by the same seller, Category - Products belonging to the same category, e.g. sports shoes, Spec - Products having similar specifications, e.g. phones with same memory. |  

Use this API to retrieve products similar to the one specified by its slug. You can search not only similar looking products, but also those that are sold by same seller, or those that belong to the same category, price, specifications, etc.

*Success Response:*



Success. Returns a group of similar products based on type. Check the example shown below or refer `SimilarProductByTypeResponse` for more details.


Schema: `SimilarProductByTypeResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  

A product can have a different type of variants such as colour, shade, memory. Use this API to fetch all the available variants of a product using its slug.

*Success Response:*



Success. Returns all variants of a product. Check the example shown below or refer `ProductVariantsResponse` for more details. For `display_type:image`, `color` key will be present otherwise `value` key will be shown.


Schema: `ProductVariantsResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| itemId | String? | The Item ID of the product (Max. 50 allowed) |    
| alu | String? | ALU of the product (limited upto 50 ALU identifier in a single request) |    
| skuCode | String? | Stock-keeping Unit of the product (limited upto 50 SKU Code in a single request) |    
| ean | String? | European Article Number of the product (limited upto 50 EAN identifier in a single request) |    
| upc | String? | Universal Product Code of the product (limited upto 50 UPC identifier in a single request) |  

Retrieve the available stock of the products. Use this API to retrieve stock of multiple products (up to 50) at a time.

*Success Response:*



Success. Returns the status of the product stock.Check the example shown below or refer `ProductStockStatusResponse` for more details.


Schema: `ProductStockStatusResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| timestamp | String? | Timestamp in UTC format (2020-07-23T10:27:50Z) |    
| pageSize | Int? | The number of items to retrieve in each page. |    
| pageId | String? | Page ID to retrieve next set of results. |  

Retrieve the available stock of the products. Use this API to get the stock status of products whose inventory is updated at the specified time

*Success Response:*



Success. Returns the status of the product stock.Check the example shown below or refer `ProductStockPolling` for more details.


Schema: `ProductStockPolling`





Bad request. See the error object in the response body to know the exact reason.


Schema: `ErrorResponse`






---


#### getProducts
Get all the products

```swift
catalog.getProducts(q: q, f: f, filters: filters, sortOn: sortOn, pageId: pageId, pageSize: pageSize, pageNo: pageNo, pageType: pageType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| q | String? | The search query for entering partial or full name of product, brand, category, or collection. |    
| f | String? | The search filter parameters. Filter parameters will be passed in f parameter as shown in the example below. Double Pipe (||) denotes the OR condition, whereas Triple-colon (:::) indicates a new filter paramater applied as an AND condition. |    
| filters | Bool? | This is a boolean value, True for fetching all filter parameters and False for disabling the filter parameters. |    
| sortOn | String? | The order in which the list of products should be sorted, e.g. popularity, price, latest and discount, in either ascending or descending order. See the supported values below. |    
| pageId | String? | Page ID to retrieve next set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |    
| pageNo | Int? | The page number to navigate through the given set of results. |    
| pageType | String? | Available pagination types are cursor or number. |  

Use this API to list all the products. You may choose a sort order or make arbitrary search queries by entering the product name, brand, category or collection.

*Success Response:*



Success. Returns a paginated list of products..Check the example shown below or refer `ProductListingResponse` for more details.


Schema: `ProductListingResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `ErrorResponse`






---


#### getBrands
Get all the brands

```swift
catalog.getBrands(department: department, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| department | String? | The name of the department. Use this parameter to filter products by a particular department. See the list of available departments below. Also, you can get available departments from the endpoint /service/application/catalog/v1.0/departments/ |    
| pageNo | Int? | The page number to navigate through the given set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

A brand is the name under which a product is sold. Use this API to list all the brands. You can also filter the brands by department.

*Success Response:*



Success. Returns a paginated list of brands. Check the example shown below or refer `BrandListingResponse` for more details.


Schema: `BrandListingResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| slug | String? | A short, human-readable, URL-friendly identifier of a brand. You can get slug value from the endpoint /service/application/catalog/v1.0/brands/. |  

Fetch metadata of a brand such as name, information, logo, banner, etc.

*Success Response:*



Success. Returns a metadata object. Check the example shown below or refer `BrandDetailResponse` for more details.


Schema: `BrandDetailResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| department | String? | The name of the department. Use this parameter to filter products by a particular department. See the list of available departments below. Also, you can get available departments from the endpoint /service/application/catalog/v1.0/departments/ |  

Use this API to list all the categories. You can also filter the categories by department.

*Success Response:*



Success. Returns a list of categories. Check the example shown below or refer `CategoryListingResponse` for more details.


Schema: `CategoryListingResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| slug | String? | A short, human-readable, URL-friendly identifier of a brand. You can get slug value from the endpoint /service/application/catalog/v1.0/brands/. |  

Fetch metadata of a category such as name, information, logo, banner, etc.

*Success Response:*



Success. Returns metadata of a category. Check the example shown below or refer `CategoryMetaResponse` for more details.


Schema: `CategoryMetaResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| sortOn | String? | The order in which the list of products should be sorted, e.g. popularity, price, latest and discount, in either ascending or descending order. |    
| pageId | String? | Page ID to retrieve next set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

List all the products associated with a brand, collection or category in a random order.

*Success Response:*



Success. Returns a paginated list of products. Check the example shown below or refer `HomeListingResponse` for more details.


Schema: `HomeListingResponse`





Bad request. See the error object in the response body to know the exact reason.


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





Bad request. See the error object in the response body to know the exact reason.


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
| q | String? | The search query for entering partial or full name of a product, brand or category. For example, if the given search query `q` is _ski_, the relevant search suggestions could be _skirt_, _ski shoes_, __skin cream_ etc. |  

Retrieves a list of suggestions for a given search query. Each suggestion is a valid search term that's generated on the basis of query. This is particularly useful to enhance the user experience while using the search tool.

*Success Response:*



Success. Returns a list autocomplete suggestions for the search query `q`. Check the example shown below or refer `AutoCompleteResponse` for more details.


Schema: `AutoCompleteResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| pageNo | Int? | The page number to navigate through the given set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Collections are a great way to organize your products and can improve the ability for customers to find items quickly and efficiently.

*Success Response:*



Success. Returns a list of collections. Check the example shown below or refer `GetCollectionListingResponse` for more details.


Schema: `GetCollectionListingResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| slug | String? | A short, human-readable, URL-friendly identifier of a collection. You can get slug value from the endpoint /service/application/catalog/v1.0/collections/. |    
| f | String? | The search filter parameters. Filter parameters will be passed in f parameter as shown in the example below. Double Pipe (||) denotes the OR condition, whereas Triple-colon (:::) indicates a new filter paramater applied as an AND condition. |    
| filters | Bool? | This is a boolean value, True for fetching all filter parameters and False for disabling the filter parameters. |    
| sortOn | String? | The order in which the list of products should be sorted, e.g. popularity, price, latest and discount, in either ascending or descending order. See the supported values below. |    
| pageId | String? | Page ID to retrieve next set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Get items in a collection specified by its `slug`.

*Success Response:*



Success. Returns a list items in a given collection. Check the example shown below or refer `ProductListingResponse` for more details.


Schema: `ProductListingResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| slug | String? | A short, human-readable, URL-friendly identifier of a collection. You can get slug value from the endpoint /service/application/catalog/v1.0/collections/. |  

Get the details of a collection by its `slug`.

*Success Response:*



Success. Returns a Collection object. Check the example shown below or refer `CollectionDetailResponse` for more details.


Schema: `CollectionDetailResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| collectionType | String? | Type of collection followed, i.e. products, brands, or collections. |    
| pageId | String? | Page ID to retrieve next set of results. |    
| pageSize | Int? | Page ID to retrieve next set of results. |  

Users can follow a product they like. This API retrieves the products the user have followed.

*Success Response:*



Success. Returns a Followed resource object. Check the example shown below or refer `GetFollowListingResponse` for more details.


Schema: `GetFollowListingResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `ErrorResponse`






---


#### unfollowById
Unfollow an entity (product/brand/collection)

```swift
catalog.unfollowById(collectionType: collectionType, collectionId: collectionId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| collectionType | String? | Type of collection followed, i.e. products, brands, or collections. |    
| collectionId | String? | The ID of the collection type. |  

You can undo a followed product, brand or collection by its ID. This action is referred as _unfollow_.

*Success Response:*



Success. Returns a response object. Check the example shown below or refer `FollowPostResponse` for more details.


Schema: `FollowPostResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `ErrorResponse`






---


#### followById
Follow an entity (product/brand/collection)

```swift
catalog.followById(collectionType: collectionType, collectionId: collectionId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| collectionType | String? | Type of collection followed, i.e. products, brands, or collections. |    
| collectionId | String? | The ID of the collection type. |  

Follow a particular entity such as product, brand, collection specified by its ID.

*Success Response:*



Success. Returns a response object. Check the example shown below or refer `FollowPostResponse` for more details.


Schema: `FollowPostResponse`





Bad request. See the error object in the response body to know the exact reason.


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
| collectionType | String? | Type of collection, i.e. products, brands, or collections. |    
| collectionId | String? | The ID of the collection type. |  

Get the total count of followers for a given collection type and collection ID.

*Success Response:*



Success. Returns the number of followers for a given collection type. Check the example shown below or refer `FollowerCountResponse` for more details.


Schema: `FollowerCountResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `ErrorResponse`






---


#### getFollowIds
Get the IDs of followed products, brands and collections.

```swift
catalog.getFollowIds(collectionType: collectionType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| collectionType | String? | Type of collection, i.e. products, brands, collections. |  

You can get the IDs of all the followed Products, Brands and Collections. Pass collection_type as query parameter to fetch specific Ids

*Success Response:*



Success. Returns the IDs of all the Products, Brands and Collections which were followed. Check the example shown below or refer `FollowIdsResponse` for more details.


Schema: `FollowIdsResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `ErrorResponse`






---


#### getStores
Get store meta information.

```swift
catalog.getStores(pageNo: pageNo, pageSize: pageSize, q: q, range: range, latitude: latitude, longitude: longitude) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | The page number to navigate through the given set of results. |    
| pageSize | Int? | Number of items to retrieve in each page. |    
| q | String? | Search a store by its name or store_code. |    
| range | Int? | Use this to retrieve stores within a particular range in meters, e.g. 10000, to indicate a 10km range |    
| latitude | Double? | Latitude of the location from where one wants to retreive the nearest stores, e.g. 72.8691788 |    
| longitude | Double? | Longitude of the location from where one wants to retreive the nearest stores, e.g. 19.1174114 |  

Use this API to get a list of stores in a specific application.

*Success Response:*



Success. Returns a list of selling locations. Check the example shown below or refer `StoreListingResponse` for more details.


Schema: `StoreListingResponse`





Bad request. See the error object in the response body to know the exact reason.


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


## Theme


#### getAppliedTheme
Get the theme currently applied to an application

```swift
theme.getAppliedTheme() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

An application has multiple themes, but only one theme can be applied at a time. Use this API to retrieve the theme currently applied to the application.

*Success Response:*



Success. Returns a JSON object of the theme. Check the example shown below or    refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegInternalServerError`






---


#### getThemeForPreview
Get a theme for a preview

```swift
theme.getThemeForPreview(themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| themeId | String? | ID of the theme to be retrieved |  

A theme can be previewed before applying it. Use this API to retrieve the preview of a theme by its ID.

*Success Response:*



Success. Returns a JSON object of the theme. Check the example shown below or refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegInternalServerError`






---



---


## User


#### loginWithFacebook
Login or Register using Facebook

```swift
user.loginWithFacebook(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to login or register using Facebook credentials.

*Success Response:*



Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.


Schema: `AuthSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### loginWithGoogle
Login or Register using Google

```swift
user.loginWithGoogle(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to login or register using Google Account credentials.

*Success Response:*



Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.


Schema: `AuthSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### loginWithGoogleAndroid
Login or Register using Google on Android

```swift
user.loginWithGoogleAndroid(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to login or register in Android app using Google Account credentials.

*Success Response:*



Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.


Schema: `AuthSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### loginWithGoogleIOS
Login or Register using Google on iOS

```swift
user.loginWithGoogleIOS(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to login or register in iOS app using Google Account credentials.

*Success Response:*



Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.


Schema: `AuthSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### loginWithOTP
Login or Register with OTP

```swift
user.loginWithOTP(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | ID of the application |  

Use this API to login or register with a One-time Password (OTP) sent via Email or SMS.

*Success Response:*



Success. Check the example shown below or refer `SendOtpResponse` for more details.


Schema: `SendOtpResponse`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### loginWithEmailAndPassword
Login or Register with password

```swift
user.loginWithEmailAndPassword(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to login or register using an email address and password.

*Success Response:*



Success. Check the example shown below or refer `LoginSuccess` for more details.


Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |  

Use this API to reset a password using the link sent on email.

*Success Response:*



Success. Check the example shown below or refer `ResetPasswordSuccess` for more details.


Schema: `ResetPasswordSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### forgotPassword
Forgot Password

```swift
user.forgotPassword(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to reset a password using the code sent on email or SMS.

*Success Response:*



Success. Check the example shown below or refer `LoginSuccess` for more details.


Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### sendResetToken
Reset Password using token

```swift
user.sendResetToken(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to send code to reset password.

*Success Response:*



Success. Check the example shown below or refer `ResetPasswordSuccess` for more details.


Schema: `ResetPasswordSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### loginWithToken
Login or Register with token

```swift
user.loginWithToken(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to login or register using a token for authentication.

*Success Response:*



Success. Check the example shown below or refer `LoginSuccess` for more details.


Schema: `LoginSuccess`








Schema: `[String: Any]`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### registerWithForm
Registration using a form

```swift
user.registerWithForm(platform: platform, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| platform | String? | ID of the application |  

Use this API to perform user registration by sending form data in the request body.

*Success Response:*



Success. Check the example shown below or refer `RegisterFormSuccess` for more details.


Schema: `RegisterFormSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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

Use this API to send a verification code to verify an email.

*Success Response:*



Success. Check the example shown below or refer `VerifyEmailSuccess` for more details.


Schema: `VerifyEmailSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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

Use this API to send a verification code to verify a mobile number.

*Success Response:*



Success. Check the example shown below or refer `VerifyEmailSuccess` for more details.


Schema: `VerifyEmailSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### hasPassword
Check password

```swift
user.hasPassword() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to check if user has created a password for login.

*Success Response:*



Success. Returns a boolean value. Check the example shown below or refer `HasPasswordSuccess` for more details.


Schema: `HasPasswordSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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

Use this API to update the password.

*Success Response:*



Success. Returns a success message. Refer `VerifyEmailSuccess` for more details.


Schema: `VerifyEmailSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### logout
Logs out currently logged in user

```swift
user.logout() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to check to logout a user from the app.

*Success Response:*



Success. Returns a success message as shown below. Refer `LogoutSuccess` for more details.


Schema: `LogoutSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |  

Use this API to send an OTP to a mobile number.

*Success Response:*



Success. Returns a JSON object as shown below. Refer `OtpSuccess` for more details.


Schema: `OtpSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |  

Use this API to verify the OTP received on a mobile number.

*Success Response:*



Success. Returns a JSON object as shown below. Refer `VerifyOtpSuccess` for more details.


Schema: `VerifyOtpSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |  

Use this API to send an OTP to an email ID.

*Success Response:*



Success. Returns a JSON object as shown below. Refer `EmailOtpSuccess` for more details.


Schema: `EmailOtpSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |  

Use this API to verify the OTP received on an email ID.

*Success Response:*



Success. Returns a JSON object as shown below. Refer `VerifyOtpSuccess` for more details.


Schema: `VerifyOtpSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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

Use this API  to get the details of a logged in user.

*Success Response:*



Success. Returns a JSON object with user details. Refer `UserObjectSchema` for more details.


Schema: `UserObjectSchema`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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

Use this API to retrieve all active sessions of a user.

*Success Response:*



Success. Returns a JSON object containing an array of sessions. Refer `SessionListSuccess` for more details.


Schema: `SessionListSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---


#### getPlatformConfig
Get platform configurations

```swift
user.getPlatformConfig(name: name) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| name | String? | Name of the application, e.g. Fynd |  

Use this API to get all the platform configurations such as mobile image, desktop image, social logins, and all other text.

*Success Response:*



Success. Returns a JSON object containing the all the platform configurations. Refer `PlatformSchema` for more details.


Schema: `PlatformSchema`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |  

Use this API to update details in the user profile. Details can be first name, last name, gender, email, phone number, or profile picture.

*Success Response:*



Success. Check the example shown below or refer `LoginSuccess` for more details.


Schema: `ProfileEditSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |  

Use this API to add a new mobile number to a profile.

*Success Response:*



Success. Check the example shown below or refer `VerifyMobileOTPSuccess` for more details.


Schema: `VerifyMobileOTPSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |    
| active | Bool? | This is a boolean value to check if mobile number is active 1.True - Number is active 2. False - Number is inactive |    
| primary | Bool? | This is a boolean value to check if mobile number is primary number (main number) 1. True - Number is primary 2. False - Number is not primary |    
| verified | Bool? | This is a boolean value to check if mobile number is verified 1. True - Number is verified 2.False - Number is not verified yet |    
| countryCode | String? | Country code of the phone number, e.g. 91 |    
| phone | String? | Phone number |  

Use this API to delete a mobile number from a profile.

*Success Response:*



Success. Check the example shown below or refer `LoginSuccess` for more details.


Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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

Use this API to set a mobile number as primary. Primary number is a verified number used for all future communications.

*Success Response:*



Success. Check the example shown below or refer `LoginSuccess` for more details.


Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |  

Use this API to send a verification link to a mobile number

*Success Response:*



Success. Check the example shown below or refer `SendMobileVerifyLinkSuccess` for more details.


Schema: `SendMobileVerifyLinkSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |  

Use this API to add a new email address to a profile

*Success Response:*



Success. Returns a JSON object with user details. Refer `VerifyEmailOTPSuccess` for more details.


Schema: `VerifyEmailOTPSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |    
| active | Bool? | This is a boolean value to check if email ID is active 1. True - Email ID is active 2.False - Email ID is inactive |    
| primary | Bool? | This is a boolean value to check if email ID is primary (main email ID) 1. True - Email ID is primary 2.False - Email ID is not primary |    
| verified | Bool? | This is a boolean value to check if email ID is verified 1. True - Email ID is verified 2.False - Email ID is not verified yet |    
| email | String? | The email ID to delete |  

Use this API to delete an email address from a profile

*Success Response:*



Success. Returns a JSON object with user details. Refer `LoginSuccess` for more details.


Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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

Use this API to set an email address as primary. Primary email ID is a email address used for all future communications.

*Success Response:*



Success. Returns a JSON object with user details. Refer `LoginSuccess` for more details.


Schema: `LoginSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






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
| platform | String? | ID of the application |  

Use this API to send verification link to an email address.

*Success Response:*



Request body must contain an email ID. Refer `EditEmailRequestSchema` for more details.


Schema: `SendEmailVerifyLinkSuccess`








Schema: `AuthenticationApiError`








Schema: `AuthenticationInternalServerError`






---



---


## Content


#### getAnnouncements
Get live announcements

```swift
content.getAnnouncements() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get live announcements for each or all pages with page slug of page and end date schedule.

*Success Response:*



Announcement api response. announcements object contains page slug name as propery with list of announcements enabled for that page. `$all` is special page slug to indicate show announcemnt on all pages.


Schema: `AnnouncementsResponseSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getBlog
Get Blog by slug

```swift
content.getBlog(slug: slug, rootId: rootId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The `slug` of a blog. Use this parameter to retrieve a particular blog |    
| rootId | String? |  |  

Use this API to fetch a blog using `slug`

*Success Response:*



A JSON object with blog details


Schema: `CustomBlogSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getBlogs
Get blogs

```swift
content.getBlogs(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | Each response will contain **page_no** param, which should be sent back to make pagination work. |    
| pageSize | Int? | Number of items to retrieve in each page. |  

Use this to get blogs.

*Success Response:*



Success


Schema: `BlogGetResponse`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getFaqs
Get frequently asked questions

```swift
content.getFaqs() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get frequently asked questions list. These will be helpful for users to using website.

*Success Response:*



Success


Schema: `FaqResponseSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getFaqCategories
Get FAQ categories list

```swift
content.getFaqCategories() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get list of FAQ categories

*Success Response:*



Get FAQ Categories


Schema: `GetFaqCategoriesSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getFaqBySlug
Get frequently asked question

```swift
content.getFaqBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | Slug of FAQ |  

Get frequently asked questions list. These will be helpful for users to using website.

*Success Response:*



Success


Schema: `FaqSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getFaqCategoryBySlug
Get FAQ category by slug

```swift
content.getFaqCategoryBySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | Slug of FAQ Category |  

Get FAQ category by slug

*Success Response:*



Get FAQ Categories


Schema: `GetFaqCategoryBySlugSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getFaqsByCategorySlug
Get FAQs of a Faq Category slug

```swift
content.getFaqsByCategorySlug(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | Faq category slug |  

Get FAQs of a Faq Category `slug`

*Success Response:*



Get FAQs by slug of FAQ Category


Schema: `GetFaqSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getLandingPage
Get landing page

```swift
content.getLandingPage() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to fetch a landing page

*Success Response:*



A JSON object with landing details


Schema: `LandingPageSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getLegalInformation
Get legal information

```swift
content.getLegalInformation() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get legal information of application, which includes policy, Terms and Conditions, and FAQ information of application.

*Success Response:*



Success


Schema: `ApplicationLegal`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getNavigations
Get navigation

```swift
content.getNavigations(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | Each response will contain **page_no** param, which should be sent back to make pagination work. |    
| pageSize | Int? | Number of items to retrieve in each page. |  

Use this API to fetch navigations

*Success Response:*



A JSON object with navigation details


Schema: `NavigationGetResponse`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getPage
Get Page by slug

```swift
content.getPage(slug: slug, rootId: rootId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The `slug` of a page. Use this parameter to retrieve a particular page |    
| rootId | String? |  |  

Use this API to fetch a custom page using `slug`

*Success Response:*



A JSON object with page details


Schema: `CustomPageSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getPages
Get pages

```swift
content.getPages(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | Each response will contain **page_no** param, which should be sent back to make pagination work. |    
| pageSize | Int? | Number of items to retrieve in each page. |  

Use this to get pages.

*Success Response:*



Success


Schema: `PageGetResponse`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getSEOConfiguration
Get seo of application

```swift
content.getSEOConfiguration() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get seo of application

*Success Response:*



Success


Schema: `SeoComponent`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getSlideshows
Get slideshows

```swift
content.getSlideshows(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | Each response will contain **page_no** param, which should be sent back to make pagination work. |    
| pageSize | Int? | Number of items to retrieve in each page. |  

Use this to get slideshows.

*Success Response:*



Success


Schema: `SlideshowGetResponse`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getSlideshow
Get slideshow by slug

```swift
content.getSlideshow(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | The `slug` of a slideshow. Use this parameter to retrieve a particular slideshow |  

Use this API to fetch a slideshow using `slug`

*Success Response:*



A JSON object with slideshow details


Schema: `SlideshowSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getSupportInformation
Get support information

```swift
content.getSupportInformation() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Get contact details for customer support. Including emails and phone numbers

*Success Response:*



Success


Schema: `Support`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






---


#### getTags
Get Tags for application

```swift
content.getTags() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |



*Success Response:*



A JSON object of tags


Schema: `TagsSchema`





Failed


Schema: `APIError`





Failed


Schema: `APIError`






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


## Rewards


#### getPointsOnProduct
Get the eligibility of reward points on a product

```swift
rewards.getPointsOnProduct(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to evaluate the amount of reward points that could be earned on any catalogue product.

*Success Response:*



Success. Check example below or refer `CatalogueOrderRequest` for more details.


Schema: `CatalogueOrderResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `Error`






---


#### getOfferByName
Get offer by name

```swift
rewards.getOfferByName(name: name) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| name | String? | The name given to the offer. |  

Use this API to get the offer details and configuration by entering the name of the offer.

*Success Response:*



Success. Check example below or refer `Offer` for more details.


Schema: `Offer`





Bad request. See the error object in the response body to know the exact reason.


Schema: `Error`






---


#### getOrderDiscount
Calculates the discount on order-amount

```swift
rewards.getOrderDiscount(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to calculate the discount on order-amount based on all the amount range configured in order_discount.

*Success Response:*



Success. Check example below or refer `OrderDiscountResponse` for more details.


Schema: `OrderDiscountResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `Error`






---


#### getUserPoints
Get reward points available with a user

```swift
rewards.getUserPoints() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to retrieve total available points of a user for current application

*Success Response:*



Success. Check example below or refer `PointsResponse` for more details.


Schema: `PointsResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `Error`






---


#### getUserPointsHistory
Get all transactions of reward points

```swift
rewards.getUserPointsHistory(pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageId | String? | PageID is the ID of the requested page. For first request it should be kept empty. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Use this API to get a list of points transactions. The list of points history is paginated.

*Success Response:*



Success. Check example below or refer `PointsHistoryResponse` for more details.


Schema: `PointsHistoryResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `Error`






---


#### getUserReferralDetails
Get referral details of a user

```swift
rewards.getUserReferralDetails() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to retrieve the referral details a user has configured in the application.

*Success Response:*



Success. Check example below or refer `ReferralDetailsResponse` for more details.


Schema: `ReferralDetailsResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `Error`






---


#### redeemReferralCode
Redeems a referral code and credits reward points to users

```swift
rewards.redeemReferralCode(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to enter a referral code following which, the configured points would be credited to a user's reward points account.

*Success Response:*



Success. Check example below or refer `RedeemReferralCodeResponse` for more details.


Schema: `RedeemReferralCodeResponse`





Bad request. See the error object in the response body to know the exact reason.


Schema: `Error`






---



---


## Feedback


#### createAbuseReport
Post a new abuse request

```swift
feedback.createAbuseReport(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to report a specific entity (question/review/comment) for abuse.

*Success Response:*



Success. Returns an abuse ID.


Schema: `InsertResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### updateAbuseReport
Update abuse details

```swift
feedback.updateAbuseReport(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to update the abuse details, i.e. status and description.

*Success Response:*



Success.


Schema: `UpdateResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### getAbuseReports
Get a list of abuse data

```swift
feedback.getAbuseReports(entityId: entityId, entityType: entityType, id: id, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| entityId | String? | ID of the eligible entity as specified in the entity type (question ID/review ID/comment ID). |    
| entityType | String? | Type of entity, e.g. question, review or comment. |    
| id | String? | abuse id |    
| pageId | String? | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Use this API to retrieve a list of abuse data from entity type and entity ID.

*Success Response:*



Success. Check the example shown below or refer `ReportAbuseGetResponse` for more details.


Schema: `ReportAbuseGetResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### getAttributes
Get a list of attribute data

```swift
feedback.getAttributes(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1.  |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Use this API to retrieve a list of all attribute data, e.g. quality, material, product fitting, packaging, etc.

*Success Response:*



Success. Check the example shown below or refer `AttributeResponse` for more details.


Schema: `AttributeResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### createAttribute
Add a new attribute request

```swift
feedback.createAttribute(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to add a new attribute (e.g. product quality/material/value for money) with its name, slug and description.

*Success Response:*



Success. Returns an attribute ID.


Schema: `InsertResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### getAttribute
Get data of a single attribute

```swift
feedback.getAttribute(slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of an attribute. You can get slug value from the endpoint 'service/application/feedback/v1.0/attributes'. |  

Use this API to retrieve a single attribute data from a given slug.

*Success Response:*



Success. Check the example shown below or refer `Attribute` for more details.


Schema: `Attribute`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### updateAttribute
Update details of an attribute 

```swift
feedback.updateAttribute(slug: slug, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of an attribute. You can get slug value from the endpoint 'service/application/feedback/v1.0/attributes'. |  

Use this API update the attribute's name and description.

*Success Response:*



Success.


Schema: `UpdateResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### createComment
Post a new comment

```swift
feedback.createComment(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to add a new comment for a specific entity.

*Success Response:*



Success. Returns a comment ID.


Schema: `InsertResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### updateComment
Update the status of a comment

```swift
feedback.updateComment(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to update the comment status (active or approve) along with new comment if any.

*Success Response:*



Success.


Schema: `UpdateResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### getComments
Get a list of comments

```swift
feedback.getComments(entityType: entityType, id: id, entityId: entityId, userId: userId, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| entityType | String? | Type of entity, e.g. question, review or comment. |    
| id | String? | Comment ID |    
| entityId | String? | ID of the eligible entity as specified in the entity type (question ID/review ID/comment ID). |    
| userId | String? | User ID - a flag/filter to get comments for a user. |    
| pageId | String? | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Use this API to retrieve a list of comments for a specific entity type, e.g. products.

*Success Response:*



Success. Check the example shown below or refer `CommentGetResponse` for more details.


Schema: `CommentGetResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### checkEligibility
Checks eligibility to rate and review, and shows the cloud media configuration

```swift
feedback.checkEligibility(entityType: entityType, entityId: entityId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| entityType | String? | Type of entity, e.g. question, rate, review, answer, or comment. |    
| entityId | String? | ID of the eligible entity as specified in the entity type. |  

Use this API to check whether an entity is eligible to be rated and reviewed. Moreover, it shows the cloud media configuration too.

*Success Response:*



Success. Returns a Product object. Check the example shown below or refer `CheckEligibilityResponse` for more details.


Schema: `CheckEligibilityResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### deleteMedia
Delete Media

```swift
feedback.deleteMedia() { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to delete media for an entity ID.

*Success Response:*



Success.


Schema: `UpdateResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### createMedia
Add Media

```swift
feedback.createMedia(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to add media to an entity, e.g. review.

*Success Response:*



Success. Returns media IDs.


Schema: `InsertResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### updateMedia
Update Media

```swift
feedback.updateMedia(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to update media (archive/approve) for an entity.

*Success Response:*



Success.


Schema: `UpdateResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### getMedias
Get Media

```swift
feedback.getMedias(entityType: entityType, entityId: entityId, id: id, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| entityType | String? | Type of entity, e.g. question or product. |    
| entityId | String? | ID of the eligible entity as specified in the entity type(question ID/product ID). |    
| id | String? | ID of the media. |    
| pageId | String? | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Use this API to retrieve all media from an entity.

*Success Response:*



Success. Check the example shown below or refer `MediaGetResponse` for more details.


Schema: `MediaGetResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### getReviewSummaries
Get a review summary

```swift
feedback.getReviewSummaries(entityType: entityType, entityId: entityId, id: id, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| entityType | String? | Type of entity, e.g. product, delivery, seller, order placed, order delivered, application, or template. |    
| entityId | String? | ID of the eligible entity as specified in the entity type. |    
| id | String? | Review summary identifier. |    
| pageId | String? | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Review summary gives ratings and attribute metrics of a review per entity. Use this API to retrieve the following response data: review count, rating average. 'review metrics'/'attribute rating metrics' which contains name, type, average and count.

*Success Response:*



Success. Check the example shown below or refer `RatingGetResponse` for more details.


Schema: `RatingGetResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### createReview
Add customer reviews

```swift
feedback.createReview(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to add customer reviews for a specific entity along with the following data: attributes rating, entity rating, title, description, media resources and template ID.

*Success Response:*



Success. Returns a review ID.


Schema: `UpdateResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### updateReview
Update customer reviews

```swift
feedback.updateReview(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to update customer reviews for a specific entity along with following data: attributes rating, entity rating, title, description, media resources and template ID.

*Success Response:*



Success.


Schema: `UpdateResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### getReviews
Get list of customer reviews

```swift
feedback.getReviews(entityType: entityType, entityId: entityId, id: id, userId: userId, media: media, rating: rating, attributeRating: attributeRating, facets: facets, sort: sort, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| entityType | String? | Type of entity, e.g. product, delivery, seller, l3, order placed, order delivered, application, or template. |    
| entityId | String? | ID of the eligible entity as specified in the entity type. |    
| id | String? | ID of the review. |    
| userId | String? | ID of the user. |    
| media | String? | media type, e.g. image | video | video_file | video_link |    
| rating | [Double]? | rating filter, e.g. 1-5 |    
| attributeRating | [String]? | Filter for attribute rating. |    
| facets | Bool? | This is a boolean value for enabling metadata (facets). Selecting *true* will enable facets. |    
| sort | String? | Sort by: default | top | recent |    
| pageId | String? | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Use this API to retrieve a list of customer reviews based on entity and filters provided.

*Success Response:*



Success. Check the example shown below or refer `ReviewGetResponse` for more details.


Schema: `ReviewGetResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### getTemplates
Get the feedback templates for a product or l3

```swift
feedback.getTemplates(templateId: templateId, entityId: entityId, entityType: entityType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| templateId | String? | ID of the feedback template. |    
| entityId | String? | ID of the eligible entity as specified in the entity type. |    
| entityType | String? | Type of entity, e.g. product, delivery, seller, l3, order placed, order delivered, or application. |  

Use this API to retrieve the details of the following feedback template. order, delivered, application, seller, order, placed, product

*Success Response:*



Success. Check the example shown below or refer `CursorGetResponse` for more details.


Schema: `CursorGetResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### createQuestion
Create a new question

```swift
feedback.createQuestion(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to create a new question with following data- tags, text, type, choices for MCQ type questions, maximum length of answer.

*Success Response:*



Success. Returns a qna ID.


Schema: `InsertResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### updateQuestion
Update a question

```swift
feedback.updateQuestion(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to update the status of a question, its tags and its choices.

*Success Response:*



Success.


Schema: `UpdateResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### getQuestionAndAnswers
Get a list of QnA

```swift
feedback.getQuestionAndAnswers(entityType: entityType, entityId: entityId, id: id, showAnswer: showAnswer, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| entityType | String? | Type of entity, e.g. product, l3, etc. |    
| entityId | String? | ID of the eligible entity as specified in the entity type. |    
| id | String? | QNA ID |    
| showAnswer | Bool? | This is a boolean value. Select *true* to display answers given. |    
| pageId | String? | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Use this API to retrieve a list of questions and answers for a given entity.

*Success Response:*



Success. Check the example shown below or refer `QNAGetResponse` for more details.


Schema: `QNAGetResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### getVotes
Get a list of votes

```swift
feedback.getVotes(id: id, refType: refType, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | String? | vote ID |    
| refType | String? | Entity type, e.g. review | comment. |    
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1. |    
| pageSize | Int? | The number of items to retrieve in each page. |  

Use this API to retrieve a list of votes of a current logged in user. Votes can be filtered using `ref_type`, i.e. review | comment.

*Success Response:*



Success. Check the example shown below or refer `VoteResponse` for more details.


Schema: `VoteResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### createVote
Create a new vote

```swift
feedback.createVote(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to create a new vote, where the action could be an upvote or a downvote. This is useful when you want to give a vote (say upvote) to a review (ref_type) of a product (entity_type).

*Success Response:*



Success. Returns a vote ID.


Schema: `InsertResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






---


#### updateVote
Update a vote

```swift
feedback.updateVote(body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |

Use this API to update a vote with a new action, i.e. either an upvote or a downvote.

*Success Response:*



Success.


Schema: `UpdateResponse`





Bad request. See the error object in the response body for specific reason.


Schema: `FeedbackError`






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
