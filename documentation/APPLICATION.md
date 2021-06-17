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
    * [applyRewardPoints](#applyrewardpoints)
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
    * [getAllPages](#getallpages)
    * [getPage](#getpage)
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
    * [getRupifiBannerDetails](#getrupifibannerdetails)
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
    * [applyRewardPoints](#applyrewardpoints)
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
catalog.getProductSellersBySlug(slug: slug, size: size, pincode: pincode, strategy: strategy, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |    
| size | String? | A string indicating the size of the product, e.g. S, M, XL. You can get slug value from the endpoint /service/application/catalog/v1.0/products/sizes |    
| pincode | String? | The 6-digit PIN Code of the area near which the selling locations should be searched, e.g. 400059 |    
| strategy | String? | Sort stores on the basis of strategy. eg, fast-delivery, low-price, optimal. |    
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
Fetch all items added to the cart

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


Use this API to get details of all the items added to a cart.

*Success Response:*



Success. Returns a Cart object. Check the example shown below or refer `CartResponse` for more details.


Schema: `CartResponse`






---


#### getCartLastModified
Fetch last-modified timestamp

```swift
cart.getCartLastModified(uid: uid) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |  


Use this API to fetch Last-Modified timestamp in header metadata.

*Success Response:*



Success. Receives last modifed timestamp in the header.






---


#### addItems
Add items to cart

```swift
cart.addItems(i: i, b: b, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| i | Bool? |  |    
| b | Bool? |  |  


Use this API to add items to the cart.

*Success Response:*



Success. Returns a cart object as shown below. Refer `AddCartResponse` for more details.


Schema: `AddCartResponse`






---


#### updateCart
Update items in the cart

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


Use this API to update items added to the cart with the help of a request object containing attributes like item_quantity and item_size. These attributes will be fetched from the following APIs</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>

*Success Response:*



Success. Updates and returns a cart object as shown below. Refer `UpdateCartResponse` for more details.


Schema: `UpdateCartResponse`






---


#### getItemCount
Count items in the cart

```swift
cart.getItemCount(uid: uid) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? | The unique identifier of the cart. |  


Use this API to get the total number of items present in cart.

*Success Response:*



Success. Returns the total count of items in a user's cart.


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


Use this API to get a list of available coupons along with their details.

*Success Response:*



Success. Returns a coupon object which has a list of all the eligible coupons. Refer `GetCouponResponse` for more details.


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


Use this API to apply coupons on items in the cart.

*Success Response:*



Success. Returns coupons applied to the cart along with item details and price breakup. Refer `CartResponse` for more details.


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
| uid | Int? | The unique identifier of the cart |  


Remove Coupon applied on the cart by passing uid in request body.

*Success Response:*



Success. Returns coupons removed from the cart along with item details and price breakup. Refer `CartResponse` for more details.


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
| itemId | Int? | The Item ID of the product |    
| articleId | String? | Article Mongo ID |    
| uid | Int? | UID of the product |    
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  


Use this API to get a list of applicable offers along with current, next and best offer for given product. Either one of uid, item_id, slug should be present.

*Success Response:*



Success. Returns a data object containing the seller details and available offers (if exists) on bulk products. Refer `BulkPriceResponse` for more details.


Schema: `BulkPriceResponse`





Unhandled API error


Schema: `[String: Any]`






---


#### applyRewardPoints
Apply reward points at cart

```swift
cart.applyRewardPoints(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |    
| i | Bool? |  |    
| b | Bool? |  |  


Use this API to redeem a fixed no. of reward points by applying it to the cart.

*Success Response:*



Success. Returns a Cart object. Check the example shown below or refer `CartResponse` for more details.


Schema: `CartResponse`






---


#### getAddresses
Fetch address

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


Use this API to get all the addresses associated with an account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Success Response:*



Success. Returns an Address object containing a list of address saved in the account. Refer `GetAddressesResponse` for more details.


Schema: `GetAddressesResponse`






---


#### addAddress
Add address to an account

```swift
cart.addAddress(body: body) { (response, error) in
    // Use response
}
```



Use this API to add an address to an account.

*Success Response:*



Success. Returns the address ID, a flag whether the address is set as default, and a success message. Refer `SaveAddressResponse` for more details.


Schema: `SaveAddressResponse`






---


#### getAddressById
Fetch a single address by its ID

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


Use this API to get an addresses using its ID. If successful, returns a Address resource in the response body specified in `Address`. Attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Success Response:*



Success. Returns an Address object containing a list of address saved in the account. Refer `Address` for more details.


Schema: `Address`






---


#### updateAddress
Update address added to an account

```swift
cart.updateAddress(id: id, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | Int? | ID allotted to the selected address |  


Use this API to update an existing address in the account. Request object should contain attributes mentioned in  <font color="blue">Address </font> can be updated. These attributes are:</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>

*Success Response:*



Success. Returns the address ID and a message indicating a successful address updation.


Schema: `UpdateAddressResponse`






---


#### removeAddress
Remove address associated with an account

```swift
cart.removeAddress(id: id) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | Int? | ID allotted to the selected address |  


Use this API to delete an address by its ID. This will returns an object that will indicate whether the address was deleted successfully or not.

*Success Response:*



Returns a Status object indicating the success or failure of address deletion.


Schema: `DeleteAddressResponse`






---


#### selectAddress
Select an address from available addresses

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


<p>Select Address from all addresses associated with the account in order to ship the cart items to that address, otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, this API returns a Cart object. Below address attributes are required. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>

*Success Response:*



Success. Returns a Cart object as shown below. Refer `CartResponse` for more details.  .


Schema: `CartResponse`





Address or PIN code error


Schema: `[String: Any]`






---


#### selectPaymentMode
Update cart payment

```swift
cart.selectPaymentMode(uid: uid, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | String? |  |  


Use this API to update cart payment.

*Success Response:*



Success. Returns a Cart object as shown below. Refer `CartResponse` for more details.


Schema: `CartResponse`






---


#### validateCouponForPayment
Verify the coupon eligibility against the payment mode

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


Use this API to validate a coupon against the payment mode such as NetBanking, Wallet, UPI etc.

*Success Response:*



Success. Returns a success message and the coupon validity. Refer `PaymentCouponValidate` for more details.


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
| p | Bool? | This is a boolean value. Select `true` for getting a payment option in response. |    
| uid | Int? | The unique identifier of the cart |    
| addressId | Int? | ID allotted to the selected address |    
| areaCode | String? | The PIN Code of the destination address, e.g. 400059 |  


Use this API to get shipment details, expected delivery date, items and price breakup of the shipment.

*Success Response:*



Success. Returns delivery promise along with shipment details and price breakup. Refer `CartShipmentsResponse` for more details.


Schema: `CartShipmentsResponse`





Unhandled API error


Schema: `[String: Any]`






---


#### checkoutCart
Checkout all items in the cart

```swift
cart.checkoutCart(body: body) { (response, error) in
    // Use response
}
```



Use this API to checkout all items in the cart for payment and order generation. For COD, order will be directly generated, whereas for other checkout modes, user will be redirected to a payment gateway.

*Success Response:*



Success. Returns the status of cart checkout. Refer `CartCheckoutResponse` for more details.


Schema: `CartCheckoutResponse`






---


#### updateCartMeta
Update the cart meta

```swift
cart.updateCartMeta(uid: uid, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? | The unique identifier of the cart |  


Use this API to update cart meta like checkout_mode and gstin.

*Success Response:*



Returns a message indicating the success of cart meta updation as shown below.


Schema: `CartMetaResponse`





Missing required Field


Schema: `CartMetaMissingResponse`






---


#### getCartShareLink
Generate token for sharing the cart

```swift
cart.getCartShareLink(body: body) { (response, error) in
    // Use response
}
```



Use this API to generate a shared cart snapshot and return a shortlink token. The link can be shared with other users for getting the same items in their cart.

*Success Response:*



Returns a URL to share and a token as shown below.


Schema: `GetShareCartLinkResponse`






---


#### getCartSharedItems
Get details of a shared cart

```swift
cart.getCartSharedItems(token: token) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| token | String? | Token of the shared short link |  


Use this API to get the shared cart details as per the token generated using the share-cart API.

*Success Response:*



Success. Returns a Cart object as per the valid token. Refer `SharedCartResponse` for more details.


Schema: `SharedCartResponse`





No cart found for the token sent


Schema: `SharedCartResponse`






---


#### updateCartWithSharedItems
Merge or replace existing cart

```swift
cart.updateCartWithSharedItems(token: token, action: action) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| token | String? | Token of the shared short link |    
| action | String? | Operation to perform on the existing cart merge or replace. |  


Use this API to merge the shared cart with existing cart, or replace the existing cart with the shared cart. The `action` parameter is used to indicate the operation Merge or Replace.

*Success Response:*



Success. Returns a merged or replaced cart as per the valid token. Refer `SharedCartResponse` for more details.


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
lead.createHistory(id: id, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | String? | Ticket ID for which history is created |  


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


#### getAllPages
Get all pages of a theme

```swift
theme.getAllPages(themeId: themeId) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| themeId | String? | ID of the theme to be retrieved |  


Use this API to retrieve all the available pages of a theme by its ID.

*Success Response:*



Success. Returns an array all the pages of the theme. Refer `AllAvailablePageSchema` for more details.


Schema: `AllAvailablePageSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegInternalServerError`






---


#### getPage
Get page of a theme

```swift
theme.getPage(themeId: themeId, pageValue: pageValue) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| themeId | String? | ID of the theme to be retrieved |    
| pageValue | String? | Value of the page to be retrieved |  


Use this API to retrieve a page of a theme.

*Success Response:*



Success. Returns an object of the pages.  Refer `AvailablePageSchema` for more details.


Schema: `AvailablePageSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegInternalServerError`






---


#### getAppliedTheme
Get the theme currently applied to an application

```swift
theme.getAppliedTheme() { (response, error) in
    // Use response
}
```



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



Announcements are useful to highlight a message or information on top of a webpage. Use this API to retrieve live announcements. Get announcements on individual pages or for all pages.

*Success Response:*



Success. Returns a JSON object with the details of the announcement shown on an individual page. `$all` is a special slug to indicate that an announcement is being shown on all the pages. Check the example shown below or refer `AnnouncementsResponseSchema` for more details.


Schema: `AnnouncementsResponseSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getBlog
Get a blog

```swift
content.getBlog(slug: slug, rootId: rootId) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of a blog. You can get slug value from the endpoint /service/application/content/v1.0/blogs/. |    
| rootId | String? | ID given to the HTML element |  


Use this API to get the details of a blog using its slug. Details include the title, reading time, publish status, feature image, tags, author, etc.

*Success Response:*



Success. Returns a JSON object with blog details. Check the example shown below or refer `BlogSchema` for more details.


Schema: `BlogSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getBlogs
Get a list of blogs

```swift
content.getBlogs(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1.  |    
| pageSize | Int? | The number of items to retrieve in each page. |  


Use this API to get all the blogs.

*Success Response:*



Success. Check the example shown below or refer `BlogGetResponse` for more details.


Schema: `BlogGetResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getFaqs
Get a list of FAQs

```swift
content.getFaqs() { (response, error) in
    // Use response
}
```



Use this API to get a list of frequently asked questions. Users will benefit from it when facing any issue with the website.

*Success Response:*



Success. Returns a JSON object with question and answers. Check the example shown below or refer `FaqResponseSchema` for more details.


Schema: `FaqResponseSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getFaqCategories
Get a list of FAQ categories

```swift
content.getFaqCategories() { (response, error) in
    // Use response
}
```



FAQs can be divided into categories. Use this API to get a list of FAQ categories.

*Success Response:*



Success. Returns a JSON object with categories of FAQ. Check the example shown below or refer `GetFaqCategoriesSchema` for more details.


Schema: `GetFaqCategoriesSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getFaqBySlug
Get an FAQ

```swift
content.getFaqBySlug(slug: slug) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of an FAQ. You can get slug value from the endpoint /service/application/content/v1.0/faq. |  


Use this API to get a particular FAQ by its slug.

*Success Response:*



Success. Returns a question and answer by its slug. Check the example shown below or refer `FaqSchema` for more details.


Schema: `FaqSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getFaqCategoryBySlug
Get the FAQ category

```swift
content.getFaqCategoryBySlug(slug: slug) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of an FAQ category. You can get slug value from the endpoint /service/application/content/v1.0/faq/categories. |  


FAQs can be divided into categories. Use this API to get the category to which an FAQ belongs.

*Success Response:*



Success. Returns a FAQ category with its slug. Check the example shown below or refer `GetFaqCategoryBySlugSchema` for more details.


Schema: `GetFaqCategoryBySlugSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getFaqsByCategorySlug
Get FAQs using the slug of FAQ category

```swift
content.getFaqsByCategorySlug(slug: slug) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of an FAQ category. You can get slug value from the endpoint /service/application/content/v1.0/faq/categories. |  


FAQs can be divided into categories. Use this API to get all the FAQs belonging to a category by using the category slug.

*Success Response:*



Success. Returns a categorized list of question and answers using its slug. Check the example shown below or refer `GetFaqSchema` for more details.


Schema: `GetFaqSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getLandingPage
Get the landing page

```swift
content.getLandingPage() { (response, error) in
    // Use response
}
```



Landing page is the first page that a prospect lands upon while visiting a website. Use this API to fetch the details of a landing page.

*Success Response:*



Success. Returns the landing page details. Check the example shown below or refer `LandingPageSchema` for more details.


Schema: `LandingPageSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getLegalInformation
Get legal information

```swift
content.getLegalInformation() { (response, error) in
    // Use response
}
```



Use this API to get the legal information of an application, which includes Privacy Policy, Terms and Conditions, Shipping Policy and FAQs regarding the usage of the application.

*Success Response:*



Success. Returns the T&C, Shipping Policy, Privacy Policy and Return Policy. Check the example shown below or refer `ApplicationLegal` for more details.


Schema: `ApplicationLegal`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getNavigations
Get the navigation

```swift
content.getNavigations(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1.  |    
| pageSize | Int? | The number of items to retrieve in each page. |  


Use this API to fetch the navigations details which includes the items of the navigation pane. It also shows the links and sub-navigations.

*Success Response:*



Success. Returns a JSON object with navigation details. Check the example shown below or refer `NavigationGetResponse` for more details.


Schema: `NavigationGetResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getPage
Get a page

```swift
content.getPage(slug: slug, rootId: rootId) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of a page. You can get slug value from the endpoint /service/application/content/v1.0/pages/. |    
| rootId | String? | ID given to the HTML element |  


Use this API to get the details of a page using its slug. Details include the title, seo, publish status, feature image, tags, meta, etc.

*Success Response:*



Success. Returns a JSON object with page details. Check the example shown below or refer `CustomPageSchema` for more details.


Schema: `CustomPageSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getPages
Get all pages

```swift
content.getPages(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1.  |    
| pageSize | Int? | The number of items to retrieve in each page. |  


Use this API to get a list of pages.

*Success Response:*



Success. Returns a list of pages along with their details. Check the example shown below or refer `PageGetResponse` for more details.


Schema: `PageGetResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getSEOConfiguration
Get the SEO of an application

```swift
content.getSEOConfiguration() { (response, error) in
    // Use response
}
```



Use this API to get the SEO details of an application, which includes a robot.txt, meta-tags and sitemap.

*Success Response:*



Success. Returns a JSON object SEO details such as robots.txt, meta-tags, and sitemap. Check the example shown below or refer `SeoComponent` for more details.


Schema: `SeoComponent`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getSlideshows
Get the slideshows

```swift
content.getSlideshows(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1.  |    
| pageSize | Int? | The number of items to retrieve in each page. |  


Use this API to get a list of slideshows along with their details.

*Success Response:*



Success. Check the example shown below or refer `SlideshowGetResponse` for more details.


Schema: `SlideshowGetResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getSlideshow
Get a slideshow

```swift
content.getSlideshow(slug: slug) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of a slideshow. You can get slug value from the endpoint /service/application/content/v1.0/slideshow/. |  


A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to fetch a slideshow using its `slug`.

*Success Response:*



Success. Returns the details of how a slideshow is configured. Check the example shown below or refer `SlideshowSchema` for more details.


Schema: `SlideshowSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getSupportInformation
Get the support information

```swift
content.getSupportInformation() { (response, error) in
    // Use response
}
```



Use this API to get contact details for customer support including emails and phone numbers.

*Success Response:*



Success. Returns all support information including email and phone number. Check the example shown below or refer `Support` for more details.


Schema: `Support`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getTags
Get the tags associated with an application

```swift
content.getTags() { (response, error) in
    // Use response
}
```



Use this API to get all the CSS and JS injected in the application in the form of tags.

*Success Response:*



Success. Returns a JSON object containing all the tags injected in the application. Check the example shown below or refer `TagsSchema` for more details.


Schema: `TagsSchema`





API Error. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


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



Use this API to retrieve the consent provided by the user for receiving communication messages over Email/SMS/WhatsApp.

*Success Response:*



Success. Returns all available communication opt-ins along with the consent details. Check the example shown below or refer `CommunicationConsent` for more details.


Schema: `CommunicationConsent`






---


#### upsertCommunicationConsent
Upsert communication consent

```swift
communication.upsertCommunicationConsent(body: body) { (response, error) in
    // Use response
}
```



Use this API to update and insert the consent provided by the user for receiving communication messages over Email/SMS/WhatsApp.

*Success Response:*



Success. Updates the channels for which user has consented. Check the example shown below or refer `CommunicationConsentRes` for more details.


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



Use this API to update and insert the push token of the user.

*Success Response:*



Success. Check the example shown below or refer `PushtokenRes` for more details.


Schema: `PushtokenRes`





Bad request


Schema: `BadRequest`






---



---


## Share


#### getApplicationQRCode
Create QR Code of an app

```swift
share.getApplicationQRCode() { (response, error) in
    // Use response
}
```



Use this API to create a QR code of an app for sharing it with users who want to use the app.

*Success Response:*



Success. Check the example shown below or refer `QRCodeResp` for more details.


Schema: `QRCodeResp`






---


#### getProductQRCodeBySlug
Create QR Code of a product

```swift
share.getProductQRCodeBySlug(slug: slug) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint. |  


Use this API to create a QR code of a product for sharing it with users who want to view/purchase the product.

*Success Response:*



Success. Check the example shown below or refer `QRCodeResp` for more details.


Schema: `QRCodeResp`





Error


Schema: `ErrorRes`






---


#### getCollectionQRCodeBySlug
Create QR Code of a collection

```swift
share.getCollectionQRCodeBySlug(slug: slug) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| slug | String? | A short, human-readable, URL-friendly identifier of a collection. You can get slug value from the endpoint. |  


Use this API to create a QR code of a collection of products for sharing it with users who want to view/purchase the collection.

*Success Response:*



Success. Check the example shown below or refer `QRCodeResp` for more details.


Schema: `QRCodeResp`





Error


Schema: `ErrorRes`






---


#### getUrlQRCode
Create QR Code of a URL

```swift
share.getUrlQRCode(url: url) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| url | String? | A link or a web address |  


Use this API to create a QR code of a URL for sharing it with users who want to visit the link.

*Success Response:*



Success. Check the example shown below or refer `QRCodeResp` for more details.


Schema: `QRCodeResp`





Error


Schema: `ErrorRes`






---


#### createShortLink
Create a short link

```swift
share.createShortLink(body: body) { (response, error) in
    // Use response
}
```



Use this API to create a short link that is easy to write/share/read as compared to long URLs.

*Success Response:*



Success. Check the example shown below or refer `ShortLinkRes` for more details.


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
| hash | String? | A string value used for converting long URL to short URL and vice-versa. |  


Use this API to get a short link by using a hash value.

*Success Response:*



Success. Check the example shown below or refer `ShortLinkRes` for more details.


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
| hash | String? | A string value used for converting long URL to short URL and vice-versa. |  


Use this API to retrieve the original link from a short-link by using a hash value.

*Success Response:*



Success. Check the example shown below or refer `ShortLinkRes` for more details.


Schema: `ShortLinkRes`





Error


Schema: `ErrorRes`






---



---


## FileStorage


#### startUpload
Initiates an upload and returns a storage link that is valid for 30 minutes. You can use the storage link to make subsequent upload request with file buffer or blob.

```swift
filestorage.startUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| namespace | String? | Name of the bucket created for storing objects. |  


Use this API to perform the first step of uploading (i.e. **Start**) an arbitrarily sized buffer or blob.

The three major steps are:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns a storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` API with the file (Buffer or Blob) in the request body.

### Complete
After successfully upload, call the `completeUpload` API to finish the upload process.
This operation will return the URL of the uploaded file.


*Success Response:*



Success. Next, call the `completeUpload` API and pass the response payload of this API to finish the upload process.


Schema: `StartResponse`





Failed


Schema: `FailedResponse`






---


#### completeUpload
Completes the upload process. After successfully uploading a file, call this API to finish the upload process.

```swift
filestorage.completeUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| namespace | String? | Name of the bucket created for storing objects. |  


Use this API to perform the third step of uploading (i.e. **Complete**) an arbitrarily sized buffer or blob.

The three major steps are:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `startUpload`.
It returns a storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `startUpload` API with the file (Buffer or Blob) in the request body.

### Complete
After successfully upload, call the `completeUpload` API to finish the upload process.
This operation will return the URL of the uploaded file.


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



Use this API to get the current application details which includes configurations that indicate the status of the website, domain, ID, tokens, images, etc.

*Success Response:*



Success. Check the example shown below or refer `Application` for more details.


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



Use this API to get the current application details which includes channel name, description, banner, logo, favicon, domain details, etc. This API also retrieves the seller and owner information such as address, email address, and phone number.

*Success Response:*



Success. Check the example shown below or refer `ApplicationAboutResponse` for more details.


Schema: `ApplicationAboutResponse`






---


#### getBasicDetails
Get basic application details

```swift
configuration.getBasicDetails() { (response, error) in
    // Use response
}
```



Use this API to retrieve only the basic details of the application which includes channel name, description, banner, logo, favicon, domain details, etc.

*Success Response:*



Success. Check the example shown below or refer `ApplicationDetail` for more details.


Schema: `ApplicationDetail`






---


#### getIntegrationTokens
Get integration tokens

```swift
configuration.getIntegrationTokens() { (response, error) in
    // Use response
}
```



Use this API to retrieve the tokens used while integrating Firebase, MoEngage, Segment, GTM, Freshchat, Safetynet, Google Map and Facebook. **Note** - Token values are encrypted with AES encryption using a secret key. Kindly reach out to the developers for obtaining the secret key.

*Success Response:*



Success. Check the example shown below or refer `AppTokenResponse` for more details.


Schema: `AppTokenResponse`






---


#### getOrderingStores
Get deployment stores

```swift
configuration.getOrderingStores(pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1. |    
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10. |    
| q | String? | Store code or name of the ordering store. |  


Use this API to retrieve the details of all the deployment stores (the selling locations where the application will be utilized for placing orders).

*Success Response:*



Success. Check the example shown below or refer `OrderingStores` for more details.


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



Use this API to retrieve the configuration of features such as product detail, landing page, options in the login/registration screen, communication opt-in, cart options and many more.

*Success Response:*



Success. Check the example shown below or refer `AppFeatureResponse` for more details.


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



Use this API to retrieve information about the social links, address and contact information of the company/seller/brand operating the application.

*Success Response:*



Success. Check the example shown below or refer `ApplicationAboutResponse` for more details.


Schema: `ApplicationInformation`






---


#### getCurrencies
Get currencies enabled in the application

```swift
configuration.getCurrencies() { (response, error) in
    // Use response
}
```



Use this API to get a list of currencies allowed in the current application. Moreover, get the name, code, symbol, and the decimal digits of the currencies.

*Success Response:*



Success. Check the example shown below or refer `CurrenciesResponse` for more details.


Schema: `CurrenciesResponse`






---


#### getCurrencyById
Get currency by its ID

```swift
configuration.getCurrencyById(id: id) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | String? | Object ID assigned to the currency |  


Use this API to retrieve a currency using its ID.

*Success Response:*



Success. Check the example shown below or refer `Currency` for more details.


Schema: `Currency`






---


#### getLanguages
Get list of languages

```swift
configuration.getLanguages() { (response, error) in
    // Use response
}
```



Use this API to get a list of languages supported in the application.

*Success Response:*



Success. Check the example shown below or refer `LanguageResponse` for more details.


Schema: `LanguageResponse`






---


#### getOrderingStoreCookie
Get an Ordering Store signed cookie on selection of ordering store.

```swift
configuration.getOrderingStoreCookie(body: body) { (response, error) in
    // Use response
}
```



Use this API to get an Ordering Store signed cookie upon selecting an ordering store. This will be used by the cart service to verify a coupon against the selected ordering store in cart.

*Success Response:*



Success


Schema: `SuccessMessageResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `NotFound`






---


#### removeOrderingStoreCookie
Unset the Ordering Store signed cookie.

```swift
configuration.removeOrderingStoreCookie() { (response, error) in
    // Use response
}
```



Use this API to unset the Ordering Store cookie upon changing the sales channel, by its domain URL, in the Universal Fynd Store app.

*Success Response:*



Success


Schema: `SuccessMessageResponse`






---


#### getAppStaffs
Get a list of staff.

```swift
configuration.getAppStaffs(orderIncent: orderIncent, orderingStore: orderingStore, user: user) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| orderIncent | Bool? | This is a boolean value. Select `true` to retrieve the staff members eligible for getting incentives on orders. |    
| orderingStore | Int? | ID of the ordering store. Helps in retrieving staff members working at a particular ordering store. |    
| user | String? | Mongo ID of the staff. Helps in retrieving the details of a particular staff member. |  


Use this API to get a list of staff including the names, employee code, incentive status, assigned ordering stores, and title of each staff added to the application.

*Success Response:*



Success. Check the example shown below or refer `AppStaffResponse` for more details.


Schema: `AppStaffResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


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
| xApiToken | String? | Used for basic authentication. |    
| refresh | Bool? | This is a boolean value. Select `true` to remove temporary cache files on payment gateway and replace with the latest one. |  


Use this API to retrieve the payment gateway key, secrets, merchant, SDK/API details to complete a payment at front-end.

*Success Response:*



Success. Returns the keys of all payment gateways. Check the example shown below or refer `AggregatorsConfigDetailResponse` for more details.


Schema: `AggregatorsConfigDetailResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### attachCardToCustomer
Attach a saved card to customer.

```swift
payment.attachCardToCustomer(body: body) { (response, error) in
    // Use response
}
```



Use this API to attach a customer's saved card at the payment gateway, such as Stripe, Juspay.

*Success Response:*



Success. Check the example shown below or refer `AttachCardsResponse` for more details.


Schema: `AttachCardsResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `[String: Any]`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `[String: Any]`






---


#### getActiveCardAggregator
Fetch active payment gateway for card payments

```swift
payment.getActiveCardAggregator(refresh: refresh) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| refresh | Bool? |  |  


Use this API to retrieve an active payment aggregator along with the Customer ID. This is applicable for cards payments only.

*Success Response:*



Success. Returns an active payment gateway. Check the example shown below or refer `ActiveCardPaymentGatewayResponse` for more details.


Schema: `ActiveCardPaymentGatewayResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### getActiveUserCards
Fetch the list of cards saved by the user

```swift
payment.getActiveUserCards(forceRefresh: forceRefresh) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| forceRefresh | Bool? |  |  


Use this API to retrieve a list of cards stored by user from an active payment gateway.

*Success Response:*



Success. Returns a list of cards saved by the user. Check the example shown below or refer `ListCardsResponse` for more details.


Schema: `ListCardsResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### deleteUserCard
Delete a card

```swift
payment.deleteUserCard(body: body) { (response, error) in
    // Use response
}
```



Use this API to delete a card added by a user on the payment gateway and clear the cache.

*Success Response:*



Success. Returns a success message if card is deleted.


Schema: `DeleteCardsResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### verifyCustomerForPayment
Validate customer for payment

```swift
payment.verifyCustomerForPayment(body: body) { (response, error) in
    // Use response
}
```



Use this API to check if the customer is eligible to use credit-line facilities such as Simpl Pay Later and Rupifi.

*Success Response:*



Success. Check the example shown below or refer `ValidateCustomerResponse` for more details.


Schema: `ValidateCustomerResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### verifyAndChargePayment
Verify and charge payment

```swift
payment.verifyAndChargePayment(body: body) { (response, error) in
    // Use response
}
```



Use this API to verify and check the status of a payment transaction (server-to-server) made through aggregators like Simpl and Mswipe.

*Success Response:*



Success. Check the example shown below or refer `ChargeCustomerResponse` for more details.


Schema: `ChargeCustomerResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### initialisePayment
Initialize a payment (server-to-server) for UPI and BharatQR

```swift
payment.initialisePayment(body: body) { (response, error) in
    // Use response
}
```



PUse this API to inititate payment using UPI, BharatQR, wherein the UPI requests are send to the app and QR code is displayed on the screen.

*Success Response:*



Success. Check the example shown below or refer `PaymentInitializationResponse` for more details.


Schema: `PaymentInitializationResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### checkAndUpdatePaymentStatus
Performs continuous polling to check status of payment on the server

```swift
payment.checkAndUpdatePaymentStatus(body: body) { (response, error) in
    // Use response
}
```



Use this API to perform continuous polling at intervals to check the status of payment until timeout.

*Success Response:*



Success. Returns the status of payment. Check the example shown below or refer `PaymentStatusUpdateResponse` for more details.


Schema: `PaymentStatusUpdateResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### getPaymentModeRoutes
Get applicable payment options

```swift
payment.getPaymentModeRoutes(amount: amount, cartId: cartId, pincode: pincode, checkoutMode: checkoutMode, refresh: refresh, assignCardId: assignCardId, userDetails: userDetails) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| amount | Int? | Payable amount. |    
| cartId | String? | Identifier of the cart. |    
| pincode | String? | The PIN Code of the destination address, e.g. 400059 |    
| checkoutMode | String? | Option to checkout for self or for others. |    
| refresh | Bool? | This is a boolean value. Select `true` to remove temporary cache files on payment gateway and replace with the latest one. |    
| assignCardId | String? | Token of user's debit or credit card. |    
| userDetails | String? | URIencoded JSON containing details of an anonymous user. |  


Use this API to get all valid payment options for doing a payment.

*Success Response:*



Success. Returns all available options for payment. Check the example shown below or refer `PaymentModeRouteResponse` for more details.


Schema: `PaymentModeRouteResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### getPosPaymentModeRoutes
Get applicable payment options for Point-of-Sale (POS)

```swift
payment.getPosPaymentModeRoutes(amount: amount, cartId: cartId, pincode: pincode, checkoutMode: checkoutMode, refresh: refresh, assignCardId: assignCardId, orderType: orderType, userDetails: userDetails) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| amount | Int? | Payable amount. |    
| cartId | String? | Identifier of the cart. |    
| pincode | String? | The PIN Code of the destination address, e.g. 400059 |    
| checkoutMode | String? | Option to checkout for self or for others. |    
| refresh | Bool? | This is a boolean value. Select `true` to remove temporary cache files on payment gateway and replace with the latest one. |    
| assignCardId | String? | Token of user's debit or credit card. |    
| orderType | String? | The order type of shipment * HomeDelivery - If the customer wants the order home-delivered * PickAtStore - If the customer wants the handover of an order at the store itself. |    
| userDetails | String? | URIencoded JSON containing details of an anonymous user. |  


Use this API to get all valid payment options for doing a payment in POS.

*Success Response:*



Success. Returns all available options for payment. Check the example shown below or refer `PaymentModeRouteResponse` for more details.


Schema: `PaymentModeRouteResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### getRupifiBannerDetails
Get CreditLine Offer

```swift
payment.getRupifiBannerDetails() { (response, error) in
    // Use response
}
```



Get CreditLine Offer if user is tentatively approved by rupifi

*Success Response:*



Success. Return CreditLine Offer detail. Check the example shown below or refer `RupifiBannerResponseSchema` for more details.


Schema: `RupifiBannerResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### getActiveRefundTransferModes
Lists the mode of refund

```swift
payment.getActiveRefundTransferModes() { (response, error) in
    // Use response
}
```



Use this API to retrieve eligible refund modes (such as Netbanking) and add the beneficiary details.

*Success Response:*



Success. Shows the available refund mode to choose, e.g. Netbanking. Check the example shown below or refer `TransferModeResponse` for more details.


Schema: `TransferModeResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### enableOrDisableRefundTransferMode
Enable/Disable a mode for transferring a refund

```swift
payment.enableOrDisableRefundTransferMode(body: body) { (response, error) in
    // Use response
}
```



Activate or Deactivate Transfer Mode to collect Beneficiary Details for Refund

*Success Response:*



Success. Shows whether the refund mode was successfully enabled or disabled.


Schema: `UpdateRefundTransferModeResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### getUserBeneficiariesDetail
Lists the beneficiary of a refund

```swift
payment.getUserBeneficiariesDetail(orderId: orderId) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| orderId | String? | A unique number used for identifying and tracking your orders. |  


Use this API to get the details of all active beneficiary added by a user for refund.

*Success Response:*



Success. Returns the details of the beneficiary getting a refund. Check the example shown below or refer `OrderBeneficiaryResponse` for more details.


Schema: `OrderBeneficiaryResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `NotFoundResourceError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### verifyIfscCode
Verify IFSC Code

```swift
payment.verifyIfscCode(ifscCode: ifscCode) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| ifscCode | String? | A 11-digit alphanumeric code that uniquely identifies a bank branch. |  


Use this API to check whether the 11-digit IFSC code is valid and to fetch the bank details for refund.

*Success Response:*



Success. Shows whether the IFSC code is valid, and returns the bank details. Check the example shown below or refer `IfscCodeResponse` for more details.


Schema: `IfscCodeResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `NotFoundResourceError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ErrorCodeDescription`






---


#### getOrderBeneficiariesDetail
Lists the beneficiary of a refund

```swift
payment.getOrderBeneficiariesDetail(orderId: orderId) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| orderId | String? | A unique number used for identifying and tracking your orders. |  


Use this API to get the details of all active beneficiary added by a user for refund.

*Success Response:*



Success. Returns the details of the beneficiary getting a refund. Check the example shown below or refer `OrderBeneficiaryResponse` for more details.


Schema: `OrderBeneficiaryResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `NotFoundResourceError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### verifyOtpAndAddBeneficiaryForBank
Verify the beneficiary details using OTP

```swift
payment.verifyOtpAndAddBeneficiaryForBank(body: body) { (response, error) in
    // Use response
}
```



Use this API to perform an OTP validation before saving the beneficiary details added for a refund.

*Success Response:*



Success. Check the example shown below or refer `AddBeneficiaryViaOtpVerificationRequest` for more details.


Schema: `AddBeneficiaryViaOtpVerificationResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `WrongOtpError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### addBeneficiaryDetails
Save bank details for cancelled/returned order

```swift
payment.addBeneficiaryDetails(body: body) { (response, error) in
    // Use response
}
```



Use this API to save the bank details for a returned or cancelled order to refund the amount.

*Success Response:*



Success. Shows whether the beneficiary details were saved to a returned/cancelled order or not.


Schema: `RefundAccountResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `NotFoundResourceError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### verifyOtpAndAddBeneficiaryForWallet
Send OTP on adding a wallet beneficiary

```swift
payment.verifyOtpAndAddBeneficiaryForWallet(body: body) { (response, error) in
    // Use response
}
```



Use this API to send an OTP while adding a wallet beneficiary by mobile no. verification.

*Success Response:*



Success. Sends the OTP to the given mobile number. Check the example shown below or refer `WalletOtpResponse` for more details.


Schema: `WalletOtpResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `NotFoundResourceError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---


#### updateDefaultBeneficiary
Set a default beneficiary for a refund

```swift
payment.updateDefaultBeneficiary(body: body) { (response, error) in
    // Use response
}
```



Use this API to set a default beneficiary for getting a refund.

*Success Response:*



Success. Check the example shown below or refer `SetDefaultBeneficiaryResponse` for more details.


Schema: `SetDefaultBeneficiaryResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `SetDefaultBeneficiaryResponse`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `HttpErrorCodeAndResponse`






---



---


## Order


#### getOrders
Get all orders

```swift
order.getOrders(pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, orderStatus: orderStatus) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1. |    
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10. |    
| fromDate | String? | The date from which the orders should be retrieved. |    
| toDate | String? | The date till which the orders should be retrieved. |    
| orderStatus | Int? | A filter to retrieve orders by their current status such as _placed_, _delivered_, etc. |  


Use this API to retrieve all the orders.

*Success Response:*



Success. Returns all the orders. Check the example shown below or refer `OrderList` for more details.


Schema: `OrderList`





API Error. See the error object in the response body to know the exact reason.. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### getOrderById
Get details of an order

```swift
order.getOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| orderId | String? | A unique number used for identifying and tracking your orders. |  


Use this API to retrieve order details such as tracking details, shipment, store information using Fynd Order ID.

*Success Response:*



Success. Check the example shown below or refer `OrderById` for more details.


Schema: `OrderById`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### getShipmentById
Get details of a shipment

```swift
order.getShipmentById(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| shipmentId | String? | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  


Use this API to retrieve shipment details such as price breakup, tracking details, store information, etc. using Shipment ID.

*Success Response:*



Success. Check the example shown below or refer `ShipmentById` for more details.


Schema: `ShipmentById`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### getShipmentReasons
Get reasons behind full or partial cancellation of a shipment

```swift
order.getShipmentReasons(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| shipmentId | String? | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  


Use this API to retrieve the issues that led to the cancellation of bags within a shipment.

*Success Response:*



Success. Check the example shown below or refer `ShipmentReasons` for more details.


Schema: `ShipmentReasons`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### updateShipmentStatus
Update the shipment status

```swift
order.updateShipmentStatus(shipmentId: shipmentId, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| shipmentId | String? | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  


Use this API to update the status of a shipment using its shipment ID.

*Success Response:*



Success. Check the example shown below or refer `ShipmentStatusUpdateBody` for more details.


Schema: `ShipmentStatusUpdate`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### trackShipment
Track shipment

```swift
order.trackShipment(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| shipmentId | String? | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  


Use this API to track a shipment using its shipment ID.

*Success Response:*



Success. Check the example shown below or refer `ShipmentTrack` for more details.


Schema: `ShipmentTrack`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### getPosOrderById
Get POS Order

```swift
order.getPosOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| orderId | String? | A unique number used for identifying and tracking your orders. |  


Use this API to retrieve a POS order and all its details such as tracking details, shipment, store information using Fynd Order ID.

*Success Response:*



Success. Check the example shown below or refer `PosOrderById` for more details.


Schema: `PosOrderById`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


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
feedback.getMedias(entityType: entityType, entityId: entityId, id: id, type: type, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| entityType | String? | Type of entity, e.g. question or product. |    
| entityId | String? | ID of the eligible entity as specified in the entity type(question ID/product ID). |    
| id | String? | ID of the media. |    
| type | String? | Media type. |    
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



Success. Check the example shown below or refer `ReviewMetricGetResponse` for more details.


Schema: `ReviewMetricGetResponse`





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
feedback.getReviews(entityType: entityType, entityId: entityId, id: id, userId: userId, media: media, rating: rating, attributeRating: attributeRating, facets: facets, sort: sort, active: active, approve: approve, pageId: pageId, pageSize: pageSize) { (response, error) in
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
| active | Bool? | Get the active reviews. |    
| approve | Bool? | Get the approved reviews. |    
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



Success. Check the example shown below or refer `TemplateGetResponse` for more details.


Schema: `TemplateGetResponse`





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
feedback.getQuestionAndAnswers(entityType: entityType, entityId: entityId, id: id, userId: userId, showAnswer: showAnswer, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| entityType | String? | Type of entity, e.g. product, l3, etc. |    
| entityId | String? | ID of the eligible entity as specified in the entity type. |    
| id | String? | QNA ID |    
| userId | String? | User ID |    
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
Fetch all items added to the cart

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


Use this API to get details of all the items added to a cart.

*Success Response:*



Success. Returns a Cart object. Check the example shown below or refer `CartResponse` for more details.


Schema: `CartResponse`






---


#### getCartLastModified
Fetch last-modified timestamp

```swift
poscart.getCartLastModified(uid: uid) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |  


Use this API to fetch Last-Modified timestamp in header metadata.

*Success Response:*



Success. Receives last modifed timestamp in the header.






---


#### addItems
Add items to cart

```swift
poscart.addItems(i: i, b: b, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| i | Bool? |  |    
| b | Bool? |  |  


Use this API to add items to the cart.

*Success Response:*



Success. Returns a cart object as shown below. Refer `AddCartResponse` for more details.


Schema: `AddCartResponse`






---


#### updateCart
Update items in the cart

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


Use this API to update items added to the cart with the help of a request object containing attributes like item_quantity and item_size. These attributes will be fetched from the following APIs</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>

*Success Response:*



Success. Updates and returns a cart object as shown below. Refer `UpdateCartResponse` for more details.


Schema: `UpdateCartResponse`






---


#### getItemCount
Count items in the cart

```swift
poscart.getItemCount(uid: uid) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? | The unique identifier of the cart. |  


Use this API to get the total number of items present in cart.

*Success Response:*



Success. Returns the total count of items in a user's cart.


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


Use this API to get a list of available coupons along with their details.

*Success Response:*



Success. Returns a coupon object which has a list of all the eligible coupons. Refer `GetCouponResponse` for more details.


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


Use this API to apply coupons on items in the cart.

*Success Response:*



Success. Returns coupons applied to the cart along with item details and price breakup. Refer `CartResponse` for more details.


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
| uid | Int? | The unique identifier of the cart |  


Remove Coupon applied on the cart by passing uid in request body.

*Success Response:*



Success. Returns coupons removed from the cart along with item details and price breakup. Refer `CartResponse` for more details.


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
| itemId | Int? | The Item ID of the product |    
| articleId | String? | Article Mongo ID |    
| uid | Int? | UID of the product |    
| slug | String? | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  


Use this API to get a list of applicable offers along with current, next and best offer for given product. Either one of uid, item_id, slug should be present.

*Success Response:*



Success. Returns a data object containing the seller details and available offers (if exists) on bulk products. Refer `BulkPriceResponse` for more details.


Schema: `BulkPriceResponse`





Unhandled API error


Schema: `[String: Any]`






---


#### applyRewardPoints
Apply reward points at cart

```swift
poscart.applyRewardPoints(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |    
| i | Bool? |  |    
| b | Bool? |  |  


Use this API to redeem a fixed no. of reward points by applying it to the cart.

*Success Response:*



Success. Returns a Cart object. Check the example shown below or refer `CartResponse` for more details.


Schema: `CartResponse`






---


#### getAddresses
Fetch address

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


Use this API to get all the addresses associated with an account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Success Response:*



Success. Returns an Address object containing a list of address saved in the account. Refer `GetAddressesResponse` for more details.


Schema: `GetAddressesResponse`






---


#### addAddress
Add address to an account

```swift
poscart.addAddress(body: body) { (response, error) in
    // Use response
}
```



Use this API to add an address to an account.

*Success Response:*



Success. Returns the address ID, a flag whether the address is set as default, and a success message. Refer `SaveAddressResponse` for more details.


Schema: `SaveAddressResponse`






---


#### getAddressById
Fetch a single address by its ID

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


Use this API to get an addresses using its ID. If successful, returns a Address resource in the response body specified in `Address`. Attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Success Response:*



Success. Returns an Address object containing a list of address saved in the account. Refer `Address` for more details.


Schema: `Address`






---


#### updateAddress
Update address added to an account

```swift
poscart.updateAddress(id: id, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | Int? | ID allotted to the selected address |  


Use this API to update an existing address in the account. Request object should contain attributes mentioned in  <font color="blue">Address </font> can be updated. These attributes are:</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>

*Success Response:*



Success. Returns the address ID and a message indicating a successful address updation.


Schema: `UpdateAddressResponse`






---


#### removeAddress
Remove address associated with an account

```swift
poscart.removeAddress(id: id) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| id | Int? | ID allotted to the selected address |  


Use this API to delete an address by its ID. This will returns an object that will indicate whether the address was deleted successfully or not.

*Success Response:*



Returns a Status object indicating the success or failure of address deletion.


Schema: `DeleteAddressResponse`






---


#### selectAddress
Select an address from available addresses

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


<p>Select Address from all addresses associated with the account in order to ship the cart items to that address, otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, this API returns a Cart object. Below address attributes are required. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>

*Success Response:*



Success. Returns a Cart object as shown below. Refer `CartResponse` for more details.  .


Schema: `CartResponse`





Address or PIN code error


Schema: `[String: Any]`






---


#### selectPaymentMode
Update cart payment

```swift
poscart.selectPaymentMode(uid: uid, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | String? |  |  


Use this API to update cart payment.

*Success Response:*



Success. Returns a Cart object as shown below. Refer `CartResponse` for more details.


Schema: `CartResponse`






---


#### validateCouponForPayment
Verify the coupon eligibility against the payment mode

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


Use this API to validate a coupon against the payment mode such as NetBanking, Wallet, UPI etc.

*Success Response:*



Success. Returns a success message and the coupon validity. Refer `PaymentCouponValidate` for more details.


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
| p | Bool? | This is a boolean value. Select `true` for getting a payment option in response. |    
| uid | Int? | The unique identifier of the cart |    
| addressId | Int? | ID allotted to the selected address |    
| areaCode | String? | The PIN Code of the destination address, e.g. 400059 |    
| orderType | String? | The order type of shipment HomeDelivery - If the customer wants the order home-delivered PickAtStore - If the customer wants the handover of an order at the store itself. |  


Use this API to get shipment details, expected delivery date, items and price breakup of the shipment.

*Success Response:*



Success. Returns delivery promise along with shipment details and price breakup. Refer `CartShipmentsResponse` for more details.


Schema: `CartShipmentsResponse`





Unhandled API error


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
| i | Bool? | This is a boolean value. Select `true` to retrieve all the items added in the cart. |    
| p | Bool? | This is a boolean value. Select `true` for getting a payment option in response. |    
| uid | Int? | The unique identifier of the cart |    
| addressId | Int? | ID allotted to an address |    
| orderType | String? | The order type of shipment HomeDelivery - If the customer wants the order home-delivered PickAtStore - If the customer wants the handover of an order at the store itself. |  


Use this API to update the delivery type and quantity as per customer's preference for either store pick-up or home-delivery.

*Success Response:*



Success. Returns delivery promise along with shipment details and price breakup. Refer `CartShipmentsResponse` for more details.


Schema: `CartShipmentsResponse`





Unhandled API error


Schema: `[String: Any]`






---


#### checkoutCart
Checkout all items in the cart

```swift
poscart.checkoutCart(uid: uid, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? |  |  


Use this API to checkout all items in the cart for payment and order generation. For COD, order will be generated directly, whereas for other checkout modes, user will be redirected to a payment gateway.

*Success Response:*



Success. Returns the status of cart checkout. Refer `CartCheckoutResponse` for more details.


Schema: `CartCheckoutResponse`






---


#### updateCartMeta
Update the cart meta

```swift
poscart.updateCartMeta(uid: uid, body: body) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| uid | Int? | The unique identifier of the cart |  


Use this API to update cart meta like checkout_mode and gstin.

*Success Response:*



Returns a message indicating the success of cart meta updation as shown below.


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


Use this API to get the delivery modes (home-delivery/store-pickup) along with a list of pickup stores available for a given cart at a given PIN Code. User can then view the address of a pickup store with the help of store-address API.

*Success Response:*



Success. Returns the available delivery mode available for a given PIN Code, along with the UID of all the eligible pickup stores.


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


Use this API to get the store details by entering the unique identifier of the pickup stores shown in the response of available-delivery-mode API.

*Success Response:*



Success. Returns available store information with its address as shown below.


Schema: `StoreDetailsResponse`






---


#### getCartShareLink
Generate token for sharing the cart

```swift
poscart.getCartShareLink(body: body) { (response, error) in
    // Use response
}
```



Use this API to generate a shared cart snapshot and return a shortlink token. The link can be shared with other users for getting the same items in their cart.

*Success Response:*



Returns a URL to share and a token as shown below.


Schema: `GetShareCartLinkResponse`






---


#### getCartSharedItems
Get details of a shared cart

```swift
poscart.getCartSharedItems(token: token) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| token | String? | Token of the shared short link |  


Use this API to get the shared cart details as per the token generated using the share-cart API.

*Success Response:*



Success. Returns a Cart object as per the valid token. Refer `SharedCartResponse` for more details.


Schema: `SharedCartResponse`





No cart found for the token sent


Schema: `SharedCartResponse`






---


#### updateCartWithSharedItems
Merge or replace existing cart

```swift
poscart.updateCartWithSharedItems(token: token, action: action) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| token | String? | Token of the shared short link |    
| action | String? | Operation to perform on the existing cart merge or replace. |  


Use this API to merge the shared cart with existing cart, or replace the existing cart with the shared cart. The `action` parameter is used to indicate the operation Merge or Replace.

*Success Response:*



Success. Returns a merged or replaced cart as per the valid token. Refer `SharedCartResponse` for more details.


Schema: `SharedCartResponse`






---



---


## Logistic


#### getTatProduct
Get TAT of a product

```swift
logistic.getTatProduct(body: body) { (response, error) in
    // Use response
}
```



Use this API to know the delivery turnaround time (TAT) by entering the product details along with the PIN Code of the location.

*Success Response:*



Success. Check the example shown below or refer `GetTatProductResponse` for more details.


Schema: `GetTatProductResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### getPincodeCity
Get city from PIN Code

```swift
logistic.getPincodeCity(pincode: pincode) { (response, error) in
    // Use response
}
```


| Argument  |  Type  | Description |
| --------- | ----  | --- |  
| pincode | String? | The PIN Code of the area, e.g. 400059 |  


Use this API to retrieve a city by its PIN Code.

*Success Response:*



Success. Returns a JSON object containing the city name, state and country identified by its PIN Code. Check the example shown below or refer `GetPincodeCityResponse` for more details.


Schema: `GetPincodeCityResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---



---


---
---
