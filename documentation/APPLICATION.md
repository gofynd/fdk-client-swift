

# FDK Application Front API Documentaion


* [Catalog](#Catalog) - Catalog API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features.  
* [Cart](#Cart) - Cart APIs 
* [Common](#Common) - Application configuration apis 
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
    

* [Common](#Common)
  * Methods
    * [getLocations](#getlocations)
    

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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  



Use this API to retrieve a product by its slug value.

*Returned Response:*




[ProductDetail](#ProductDetail)

Success. Returns a Product object. Check the example shown below or refer `ProductDetail` for more details.






---


#### getProductSizesBySlug
Get the sizes of a product



```swift
catalog.getProductSizesBySlug(slug: slug, storeId: storeId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |    
| storeId | Int? | no | The ID of the store that is selling the product, e.g. 1,2,3. |  



A product can have multiple sizes. Use this API to fetch all the available sizes of a product.

*Returned Response:*




[ProductSizes](#ProductSizes)

Success. Returns a ProductSize object. Check the example shown below or refer `ProductSizes` for more details.






---


#### getProductPriceBySlug
Get the price of a product size at a PIN Code



```swift
catalog.getProductPriceBySlug(slug: slug, size: size, pincode: pincode, storeId: storeId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |    
| size | String? | no | A string indicating the size of the product, e.g. S, M, XL. You can get slug value from the endpoint /service/application/catalog/v1.0/products/sizes |    
| pincode | String? | no | The PIN Code of the area near which the selling locations should be searched, e.g. 400059 |    
| storeId | Int? | no | The ID of the store that is selling the product, e.g. 1,2,3. |  



Prices may vary for different sizes of a product. Use this API to retrieve the price of a product size at all the selling locations near to a PIN Code.

*Returned Response:*




[ProductSizePriceResponse](#ProductSizePriceResponse)

Success. Returns a ProductSizePrice object. Check the example shown below or refer `ProductSizePriceResponse` for more details.






---


#### getProductSellersBySlug
Get the sellers of a product size at a PIN Code



```swift
catalog.getProductSellersBySlug(slug: slug, size: size, pincode: pincode, strategy: strategy, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |    
| size | String? | no | A string indicating the size of the product, e.g. S, M, XL. You can get slug value from the endpoint /service/application/catalog/v1.0/products/sizes |    
| pincode | String? | no | The 6-digit PIN Code of the area near which the selling locations should be searched, e.g. 400059 |    
| strategy | String? | no | Sort stores on the basis of strategy. eg, fast-delivery, low-price, optimal. |    
| pageNo | Int? | no | The page number to navigate through the given set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



A product of a particular size may be sold by multiple sellers. Use this API to fetch the sellers having the stock of a particular size at a given PIN Code.

*Returned Response:*




[ProductSizeSellersResponse](#ProductSizeSellersResponse)

Success. Returns a ProductSizeSeller object. Check the example shown below or refer `ProductSizeSellersResponse` for more details.






---


#### getProductComparisonBySlugs
Compare products



```swift
catalog.getProductComparisonBySlugs(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | [String]? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/. |  



Use this API to compare the features of products belonging to the same category. Note that at least one slug is mandatory in the request query.

*Returned Response:*




[ProductsComparisonResponse](#ProductsComparisonResponse)

Success. Returns an array of objects containing the attributes for comparision. Check the example shown below or refer `ProductsComparisonResponse` for more details.






---


#### getSimilarComparisonProductBySlug
Get comparison between similar products



```swift
catalog.getSimilarComparisonProductBySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  



Use this API to compare a given product automatically with similar products. Only one slug is needed.

*Returned Response:*




[ProductCompareResponse](#ProductCompareResponse)

Success. Returns an array of objects containing the attributes for comparision. Check the example shown below or refer `ProductCompareResponse` for more details.






---


#### getComparedFrequentlyProductBySlug
Get comparison between frequently compared products with the given product



```swift
catalog.getComparedFrequentlyProductBySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  



Use this API to compare a given product automatically with products that are frequently compared with it. Only one slug is needed.

*Returned Response:*




[ProductFrequentlyComparedSimilarResponse](#ProductFrequentlyComparedSimilarResponse)

Success. Returns an array of objects containing the attributes for comparision. Check the example shown below or refer `ProductFrequentlyComparedSimilarResponse` for more details.






---


#### getProductSimilarByIdentifier
Get similar products



```swift
catalog.getProductSimilarByIdentifier(slug: slug, similarType: similarType) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |    
| similarType | String? | no | Similarity criteria such as basic, visual, price, seller, category and spec. Visual - Products having similar patterns, Price - Products in similar price range, Seller - Products sold by the same seller, Category - Products belonging to the same category, e.g. sports shoes, Spec - Products having similar specifications, e.g. phones with same memory. |  



Use this API to retrieve products similar to the one specified by its slug. You can search not only similar looking products, but also those that are sold by same seller, or those that belong to the same category, price, specifications, etc.

*Returned Response:*




[SimilarProductByTypeResponse](#SimilarProductByTypeResponse)

Success. Returns a group of similar products based on type. Check the example shown below or refer `SimilarProductByTypeResponse` for more details.






---


#### getProductVariantsBySlug
Get variant of a particular product



```swift
catalog.getProductVariantsBySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  



A product can have a different type of variants such as colour, shade, memory. Use this API to fetch all the available variants of a product using its slug.

*Returned Response:*




[ProductVariantsResponse](#ProductVariantsResponse)

Success. Returns all variants of a product. Check the example shown below or refer `ProductVariantsResponse` for more details. For `display_type:image`, `color` key will be present otherwise `value` key will be shown.






---


#### getProductStockByIds
Get the stock of a product



```swift
catalog.getProductStockByIds(itemId: itemId, alu: alu, skuCode: skuCode, ean: ean, upc: upc) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| itemId | String? | no | The Item ID of the product (Max. 50 allowed) |    
| alu | String? | no | ALU of the product (limited upto 50 ALU identifier in a single request) |    
| skuCode | String? | no | Stock-keeping Unit of the product (limited upto 50 SKU Code in a single request) |    
| ean | String? | no | European Article Number of the product (limited upto 50 EAN identifier in a single request) |    
| upc | String? | no | Universal Product Code of the product (limited upto 50 UPC identifier in a single request) |  



Retrieve the available stock of the products. Use this API to retrieve stock of multiple products (up to 50) at a time.

*Returned Response:*




[ProductStockStatusResponse](#ProductStockStatusResponse)

Success. Returns the status of the product stock.Check the example shown below or refer `ProductStockStatusResponse` for more details.






---


#### getProductStockForTimeByIds
Get the stock of a product



```swift
catalog.getProductStockForTimeByIds(timestamp: timestamp, pageSize: pageSize, pageId: pageId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| timestamp | String? | no | Timestamp in UTC format (2020-07-23T10:27:50Z) |    
| pageSize | Int? | no | The number of items to retrieve in each page. |    
| pageId | String? | no | Page ID to retrieve next set of results. |  



Retrieve the available stock of the products. Use this API to get the stock status of products whose inventory is updated at the specified time

*Returned Response:*




[ProductStockPolling](#ProductStockPolling)

Success. Returns the status of the product stock.Check the example shown below or refer `ProductStockPolling` for more details.






---


#### getProducts
Get all the products



```swift
catalog.getProducts(q: q, f: f, filters: filters, sortOn: sortOn, pageId: pageId, pageSize: pageSize, pageNo: pageNo, pageType: pageType) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| q | String? | no | The search query for entering partial or full name of product, brand, category, or collection. |    
| f | String? | no | The search filter parameters. Filter parameters will be passed in f parameter as shown in the example below. Double Pipe (||) denotes the OR condition, whereas Triple-colon (:::) indicates a new filter paramater applied as an AND condition. |    
| filters | Bool? | no | This is a boolean value, True for fetching all filter parameters and False for disabling the filter parameters. |    
| sortOn | String? | no | The order in which the list of products should be sorted, e.g. popularity, price, latest and discount, in either ascending or descending order. See the supported values below. |    
| pageId | String? | no | Page ID to retrieve next set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |    
| pageNo | Int? | no | The page number to navigate through the given set of results. |    
| pageType | String? | no | Available pagination types are cursor or number. |  



Use this API to list all the products. You may choose a sort order or make arbitrary search queries by entering the product name, brand, category or collection.

*Returned Response:*




[ProductListingResponse](#ProductListingResponse)

Success. Returns a paginated list of products..Check the example shown below or refer `ProductListingResponse` for more details.






---


#### getBrands
Get all the brands



```swift
catalog.getBrands(department: department, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| department | String? | no | The name of the department. Use this parameter to filter products by a particular department. See the list of available departments below. Also, you can get available departments from the endpoint /service/application/catalog/v1.0/departments/ |    
| pageNo | Int? | no | The page number to navigate through the given set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



A brand is the name under which a product is sold. Use this API to list all the brands. You can also filter the brands by department.

*Returned Response:*




[BrandListingResponse](#BrandListingResponse)

Success. Returns a paginated list of brands. Check the example shown below or refer `BrandListingResponse` for more details.






---


#### getBrandDetailBySlug
Get metadata of a brand



```swift
catalog.getBrandDetailBySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a brand. You can get slug value from the endpoint /service/application/catalog/v1.0/brands/. |  



Fetch metadata of a brand such as name, information, logo, banner, etc.

*Returned Response:*




[BrandDetailResponse](#BrandDetailResponse)

Success. Returns a metadata object. Check the example shown below or refer `BrandDetailResponse` for more details.






---


#### getCategories
List all the categories



```swift
catalog.getCategories(department: department) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| department | String? | no | The name of the department. Use this parameter to filter products by a particular department. See the list of available departments below. Also, you can get available departments from the endpoint /service/application/catalog/v1.0/departments/ |  



Use this API to list all the categories. You can also filter the categories by department.

*Returned Response:*




[CategoryListingResponse](#CategoryListingResponse)

Success. Returns a list of categories. Check the example shown below or refer `CategoryListingResponse` for more details.






---


#### getCategoryDetailBySlug
Get metadata of a category



```swift
catalog.getCategoryDetailBySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a brand. You can get slug value from the endpoint /service/application/catalog/v1.0/brands/. |  



Fetch metadata of a category such as name, information, logo, banner, etc.

*Returned Response:*




[CategoryMetaResponse](#CategoryMetaResponse)

Success. Returns metadata of a category. Check the example shown below or refer `CategoryMetaResponse` for more details.






---


#### getHomeProducts
List the products



```swift
catalog.getHomeProducts(sortOn: sortOn, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| sortOn | String? | no | The order in which the list of products should be sorted, e.g. popularity, price, latest and discount, in either ascending or descending order. |    
| pageId | String? | no | Page ID to retrieve next set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



List all the products associated with a brand, collection or category in a random order.

*Returned Response:*




[HomeListingResponse](#HomeListingResponse)

Success. Returns a paginated list of products. Check the example shown below or refer `HomeListingResponse` for more details.






---


#### getDepartments
List all the departments



```swift
catalog.getDepartments() { (response, error) in
    // Use response
}
```




Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the departments. If successful, returns the list of departments specified in `DepartmentResponse`

*Returned Response:*




[DepartmentResponse](#DepartmentResponse)

List of Departments. See example below or refer `DepartmentResponse` for details.






---


#### getSearchResults
Get relevant suggestions for a search query



```swift
catalog.getSearchResults(q: q) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| q | String? | no | The search query for entering partial or full name of a product, brand or category. For example, if the given search query `q` is _ski_, the relevant search suggestions could be _skirt_, _ski shoes_, __skin cream_ etc. |  



Retrieves a list of suggestions for a given search query. Each suggestion is a valid search term that's generated on the basis of query. This is particularly useful to enhance the user experience while using the search tool.

*Returned Response:*




[AutoCompleteResponse](#AutoCompleteResponse)

Success. Returns a list autocomplete suggestions for the search query `q`. Check the example shown below or refer `AutoCompleteResponse` for more details.






---


#### getCollections
List all the collections



```swift
catalog.getCollections(pageNo: pageNo, pageSize: pageSize, tag: tag) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pageNo | Int? | no | The page number to navigate through the given set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |    
| tag | [String]? | no | List of tags  to filter collections |  



Collections are a great way to organize your products and can improve the ability for customers to find items quickly and efficiently.

*Returned Response:*




[GetCollectionListingResponse](#GetCollectionListingResponse)

Success. Returns a list of collections. Check the example shown below or refer `GetCollectionListingResponse` for more details.






---


#### getCollectionItemsBySlug
Get the items in a collection



```swift
catalog.getCollectionItemsBySlug(slug: slug, f: f, filters: filters, sortOn: sortOn, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a collection. You can get slug value from the endpoint /service/application/catalog/v1.0/collections/. |    
| f | String? | no | The search filter parameters. Filter parameters will be passed in f parameter as shown in the example below. Double Pipe (||) denotes the OR condition, whereas Triple-colon (:::) indicates a new filter paramater applied as an AND condition. |    
| filters | Bool? | no | This is a boolean value, True for fetching all filter parameters and False for disabling the filter parameters. |    
| sortOn | String? | no | The order in which the list of products should be sorted, e.g. popularity, price, latest and discount, in either ascending or descending order. See the supported values below. |    
| pageId | String? | no | Page ID to retrieve next set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Get items in a collection specified by its `slug`.

*Returned Response:*




[ProductListingResponse](#ProductListingResponse)

Success. Returns a list items in a given collection. Check the example shown below or refer `ProductListingResponse` for more details.






---


#### getCollectionDetailBySlug
Get a particular collection



```swift
catalog.getCollectionDetailBySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a collection. You can get slug value from the endpoint /service/application/catalog/v1.0/collections/. |  



Get the details of a collection by its `slug`.

*Returned Response:*




[CollectionDetailResponse](#CollectionDetailResponse)

Success. Returns a Collection object. Check the example shown below or refer `CollectionDetailResponse` for more details.






---


#### getFollowedListing
Get a list of followed Products, Brands, Collections



```swift
catalog.getFollowedListing(collectionType: collectionType, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| collectionType | String? | no | Type of collection followed, i.e. products, brands, or collections. |    
| pageId | String? | no | Page ID to retrieve next set of results. |    
| pageSize | Int? | no | Page ID to retrieve next set of results. |  



Users can follow a product they like. This API retrieves the products the user have followed.

*Returned Response:*




[GetFollowListingResponse](#GetFollowListingResponse)

Success. Returns a Followed resource object. Check the example shown below or refer `GetFollowListingResponse` for more details.






---


#### unfollowById
Unfollow an entity (product/brand/collection)



```swift
catalog.unfollowById(collectionType: collectionType, collectionId: collectionId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| collectionType | String? | no | Type of collection followed, i.e. products, brands, or collections. |    
| collectionId | String? | no | The ID of the collection type. |  



You can undo a followed product, brand or collection by its ID. This action is referred as _unfollow_.

*Returned Response:*




[FollowPostResponse](#FollowPostResponse)

Success. Returns a response object. Check the example shown below or refer `FollowPostResponse` for more details.






---


#### followById
Follow an entity (product/brand/collection)



```swift
catalog.followById(collectionType: collectionType, collectionId: collectionId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| collectionType | String? | no | Type of collection followed, i.e. products, brands, or collections. |    
| collectionId | String? | no | The ID of the collection type. |  



Follow a particular entity such as product, brand, collection specified by its ID.

*Returned Response:*




[FollowPostResponse](#FollowPostResponse)

Success. Returns a response object. Check the example shown below or refer `FollowPostResponse` for more details.






---


#### getFollowerCountById
Get Follow Count



```swift
catalog.getFollowerCountById(collectionType: collectionType, collectionId: collectionId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| collectionType | String? | no | Type of collection, i.e. products, brands, or collections. |    
| collectionId | String? | no | The ID of the collection type. |  



Get the total count of followers for a given collection type and collection ID.

*Returned Response:*




[FollowerCountResponse](#FollowerCountResponse)

Success. Returns the number of followers for a given collection type. Check the example shown below or refer `FollowerCountResponse` for more details.






---


#### getFollowIds
Get the IDs of followed products, brands and collections.



```swift
catalog.getFollowIds(collectionType: collectionType) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| collectionType | String? | no | Type of collection, i.e. products, brands, collections. |  



You can get the IDs of all the followed Products, Brands and Collections. Pass collection_type as query parameter to fetch specific Ids

*Returned Response:*




[FollowIdsResponse](#FollowIdsResponse)

Success. Returns the IDs of all the Products, Brands and Collections which were followed. Check the example shown below or refer `FollowIdsResponse` for more details.






---


#### getStores
Get store meta information.



```swift
catalog.getStores(pageNo: pageNo, pageSize: pageSize, q: q, range: range, latitude: latitude, longitude: longitude) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pageNo | Int? | no | The page number to navigate through the given set of results. |    
| pageSize | Int? | no | Number of items to retrieve in each page. |    
| q | String? | no | Search a store by its name or store_code. |    
| range | Int? | no | Use this to retrieve stores within a particular range in meters, e.g. 10000, to indicate a 10km range |    
| latitude | Double? | no | Latitude of the location from where one wants to retreive the nearest stores, e.g. 72.8691788 |    
| longitude | Double? | no | Longitude of the location from where one wants to retreive the nearest stores, e.g. 19.1174114 |  



Use this API to get a list of stores in a specific application.

*Returned Response:*




[StoreListingResponse](#StoreListingResponse)

Success. Returns a list of selling locations. Check the example shown below or refer `StoreListingResponse` for more details.






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |    
| i | Bool? | no |  |    
| b | Bool? | no |  |    
| assignCardId | Int? | no |  |  



Use this API to get details of all the items added to a cart.

*Returned Response:*




[CartResponse](#CartResponse)

Success. Returns a Cart object. Check the example shown below or refer `CartResponse` for more details.






---


#### getCartLastModified
Fetch last-modified timestamp



```swift
cart.getCartLastModified(uid: uid) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |  



Use this API to fetch Last-Modified timestamp in header metadata.

*Returned Response:*








---


#### addItems
Add items to cart



```swift
cart.addItems(i: i, b: b, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| i | Bool? | no |  |    
| b | Bool? | no |  |  
| body | [AddCartRequest](#AddCartRequest) | yes | Request body |


Use this API to add items to the cart.

*Returned Response:*




[AddCartResponse](#AddCartResponse)

Success. Returns a cart object as shown below. Refer `AddCartResponse` for more details.






---


#### updateCart
Update items in the cart



```swift
cart.updateCart(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |    
| i | Bool? | no |  |    
| b | Bool? | no |  |  
| body | [UpdateCartRequest](#UpdateCartRequest) | yes | Request body |


Use this API to update items added to the cart with the help of a request object containing attributes like item_quantity and item_size. These attributes will be fetched from the following APIs</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>

*Returned Response:*




[UpdateCartResponse](#UpdateCartResponse)

Success. Updates and returns a cart object as shown below. Refer `UpdateCartResponse` for more details.






---


#### getItemCount
Count items in the cart



```swift
cart.getItemCount(uid: uid) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no | The unique identifier of the cart. |  



Use this API to get the total number of items present in cart.

*Returned Response:*




[CartItemCountResponse](#CartItemCountResponse)

Success. Returns the total count of items in a user's cart.






---


#### getCoupons
Fetch Coupon



```swift
cart.getCoupons(uid: uid) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |  



Use this API to get a list of available coupons along with their details.

*Returned Response:*




[GetCouponResponse](#GetCouponResponse)

Success. Returns a coupon object which has a list of all the eligible coupons. Refer `GetCouponResponse` for more details.






---


#### applyCoupon
Apply Coupon



```swift
cart.applyCoupon(i: i, b: b, p: p, uid: uid, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| i | Bool? | no |  |    
| b | Bool? | no |  |    
| p | Bool? | no |  |    
| uid | Int? | no |  |  
| body | [ApplyCouponRequest](#ApplyCouponRequest) | yes | Request body |


Use this API to apply coupons on items in the cart.

*Returned Response:*




---


#### removeCoupon
Remove Coupon Applied



```swift
cart.removeCoupon(uid: uid) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no | The unique identifier of the cart |  



Remove Coupon applied on the cart by passing uid in request body.

*Returned Response:*




[CartResponse](#CartResponse)

Success. Returns coupons removed from the cart along with item details and price breakup. Refer `CartResponse` for more details.






---


#### getBulkDiscountOffers
Get discount offers based on quantity



```swift
cart.getBulkDiscountOffers(itemId: itemId, articleId: articleId, uid: uid, slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| itemId | Int? | no | The Item ID of the product |    
| articleId | String? | no | Article Mongo ID |    
| uid | Int? | no | UID of the product |    
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  



Use this API to get a list of applicable offers along with current, next and best offer for given product. Either one of uid, item_id, slug should be present.

*Returned Response:*




[BulkPriceResponse](#BulkPriceResponse)

Success. Returns a data object containing the seller details and available offers (if exists) on bulk products. Refer `BulkPriceResponse` for more details.






---


#### applyRewardPoints
Apply reward points at cart



```swift
cart.applyRewardPoints(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |    
| i | Bool? | no |  |    
| b | Bool? | no |  |  
| body | [RewardPointRequest](#RewardPointRequest) | yes | Request body |


Use this API to redeem a fixed no. of reward points by applying it to the cart.

*Returned Response:*




[CartResponse](#CartResponse)

Success. Returns a Cart object. Check the example shown below or refer `CartResponse` for more details.






---


#### getAddresses
Fetch address



```swift
cart.getAddresses(uid: uid, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |    
| mobileNo | String? | no |  |    
| checkoutMode | String? | no |  |    
| tags | String? | no |  |    
| isDefault | Bool? | no |  |  



Use this API to get all the addresses associated with an account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Returned Response:*




[GetAddressesResponse](#GetAddressesResponse)

Success. Returns an Address object containing a list of address saved in the account. Refer `GetAddressesResponse` for more details.






---


#### addAddress
Add address to an account



```swift
cart.addAddress(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [Address](#Address) | yes | Request body |


Use this API to add an address to an account.

*Returned Response:*




[SaveAddressResponse](#SaveAddressResponse)

Success. Returns the address ID, a flag whether the address is set as default, and a success message. Refer `SaveAddressResponse` for more details.






---


#### getAddressById
Fetch a single address by its ID



```swift
cart.getAddressById(id: id, uid: uid, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| id | Int? | no |  |    
| uid | Int? | no |  |    
| mobileNo | String? | no |  |    
| checkoutMode | String? | no |  |    
| tags | String? | no |  |    
| isDefault | Bool? | no |  |  



Use this API to get an addresses using its ID. If successful, returns a Address resource in the response body specified in `Address`. Attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Returned Response:*




[Address](#Address)

Success. Returns an Address object containing a list of address saved in the account. Refer `Address` for more details.






---


#### updateAddress
Update address added to an account



```swift
cart.updateAddress(id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| id | Int? | no | ID allotted to the selected address |  
| body | [Address](#Address) | yes | Request body |


Use this API to update an existing address in the account. Request object should contain attributes mentioned in  <font color="blue">Address </font> can be updated. These attributes are:</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>

*Returned Response:*




---


#### removeAddress
Remove address associated with an account



```swift
cart.removeAddress(id: id) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| id | Int? | no | ID allotted to the selected address |  



Use this API to delete an address by its ID. This will returns an object that will indicate whether the address was deleted successfully or not.

*Returned Response:*




---


#### selectAddress
Select an address from available addresses



```swift
cart.selectAddress(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |    
| i | Bool? | no |  |    
| b | Bool? | no |  |  
| body | [SelectCartAddressRequest](#SelectCartAddressRequest) | yes | Request body |


<p>Select Address from all addresses associated with the account in order to ship the cart items to that address, otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, this API returns a Cart object. Below address attributes are required. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>

*Returned Response:*




---


#### selectPaymentMode
Update cart payment



```swift
cart.selectPaymentMode(uid: uid, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | String? | no |  |  
| body | [UpdateCartPaymentRequest](#UpdateCartPaymentRequest) | yes | Request body |


Use this API to update cart payment.

*Returned Response:*




[CartResponse](#CartResponse)

Success. Returns a Cart object as shown below. Refer `CartResponse` for more details.






---


#### validateCouponForPayment
Verify the coupon eligibility against the payment mode



```swift
cart.validateCouponForPayment(uid: uid, addressId: addressId, paymentMode: paymentMode, paymentIdentifier: paymentIdentifier, aggregatorName: aggregatorName, merchantCode: merchantCode) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | String? | no |  |    
| addressId | String? | no |  |    
| paymentMode | String? | no |  |    
| paymentIdentifier | String? | no |  |    
| aggregatorName | String? | no |  |    
| merchantCode | String? | no |  |  



Use this API to validate a coupon against the payment mode such as NetBanking, Wallet, UPI etc.

*Returned Response:*




[PaymentCouponValidate](#PaymentCouponValidate)

Success. Returns a success message and the coupon validity. Refer `PaymentCouponValidate` for more details.






---


#### getShipments
Get delivery date and options before checkout



```swift
cart.getShipments(p: p, uid: uid, addressId: addressId, areaCode: areaCode) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| p | Bool? | no | This is a boolean value. Select `true` for getting a payment option in response. |    
| uid | Int? | no | The unique identifier of the cart |    
| addressId | Int? | no | ID allotted to the selected address |    
| areaCode | String? | no | The PIN Code of the destination address, e.g. 400059 |  



Use this API to get shipment details, expected delivery date, items and price breakup of the shipment.

*Returned Response:*




[CartShipmentsResponse](#CartShipmentsResponse)

Success. Returns delivery promise along with shipment details and price breakup. Refer `CartShipmentsResponse` for more details.






---


#### checkoutCart
Checkout all items in the cart



```swift
cart.checkoutCart(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [CartCheckoutRequest](#CartCheckoutRequest) | yes | Request body |


Use this API to checkout all items in the cart for payment and order generation. For COD, order will be directly generated, whereas for other checkout modes, user will be redirected to a payment gateway.

*Returned Response:*




[CartCheckoutResponse](#CartCheckoutResponse)

Success. Returns the status of cart checkout. Refer `CartCheckoutResponse` for more details.






---


#### updateCartMeta
Update the cart meta



```swift
cart.updateCartMeta(uid: uid, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no | The unique identifier of the cart |  
| body | [CartMetaRequest](#CartMetaRequest) | yes | Request body |


Use this API to update cart meta like checkout_mode and gstin.

*Returned Response:*




[CartMetaResponse](#CartMetaResponse)

Returns a message indicating the success of cart meta updation as shown below.






---


#### getCartShareLink
Generate token for sharing the cart



```swift
cart.getCartShareLink(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [GetShareCartLinkRequest](#GetShareCartLinkRequest) | yes | Request body |


Use this API to generate a shared cart snapshot and return a shortlink token. The link can be shared with other users for getting the same items in their cart.

*Returned Response:*




[GetShareCartLinkResponse](#GetShareCartLinkResponse)

Returns a URL to share and a token as shown below.






---


#### getCartSharedItems
Get details of a shared cart



```swift
cart.getCartSharedItems(token: token) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| token | String? | no | Token of the shared short link |  



Use this API to get the shared cart details as per the token generated using the share-cart API.

*Returned Response:*




[SharedCartResponse](#SharedCartResponse)

Success. Returns a Cart object as per the valid token. Refer `SharedCartResponse` for more details.






---


#### updateCartWithSharedItems
Merge or replace existing cart



```swift
cart.updateCartWithSharedItems(token: token, action: action) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| token | String? | no | Token of the shared short link |    
| action | String? | no | Operation to perform on the existing cart merge or replace. |  



Use this API to merge the shared cart with existing cart, or replace the existing cart with the shared cart. The `action` parameter is used to indicate the operation Merge or Replace.

*Returned Response:*




[SharedCartResponse](#SharedCartResponse)

Success. Returns a merged or replaced cart as per the valid token. Refer `SharedCartResponse` for more details.






---



---


## Common


#### getLocations
Get countries, states, cities



```swift
common.getLocations(locationType: locationType, id: id) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| locationType | String? | no | Provide location type to query on |    
| id | String? | no | Field is optional when location_type is country. If querying for state, provide id of country. If querying for city, provide id of state. |  





*Returned Response:*




[Locations](#Locations)

Success






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| id | String? | no | ID of ticket to be retrieved |  



Get Ticket with the specific id, this is used to view the ticket details

*Returned Response:*




[Ticket](#Ticket)

Success






---


#### createHistory
Create history for specific Ticket



```swift
lead.createHistory(id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| id | String? | no | Ticket ID for which history is created |  
| body | [TicketHistoryPayload](#TicketHistoryPayload) | yes | Request body |


Create history for specific Ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Returned Response:*




[TicketHistory](#TicketHistory)

Success






---


#### createTicket
Create Ticket



```swift
lead.createTicket(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [AddTicketPayload](#AddTicketPayload) | yes | Request body |


This is used to Create Ticket.

*Returned Response:*




[Ticket](#Ticket)

Success






---


#### getCustomForm
Get specific Custom Form using it's slug



```swift
lead.getCustomForm(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | Slug of form whose response is getting submitted |  



Get specific Custom Form using it's slug, this is used to view the form.

*Returned Response:*




[CustomForm](#CustomForm)

Success






---


#### submitCustomForm
Submit Response for a specific Custom Form using it's slug



```swift
lead.submitCustomForm(slug: slug, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | Slug of form whose response is getting submitted |  
| body | [CustomFormSubmissionPayload](#CustomFormSubmissionPayload) | yes | Request body |


Submit Response for a specific Custom Form using it's slug, this response is then used to create a ticket on behalf of the user.

*Returned Response:*




[SubmitCustomFormResponse](#SubmitCustomFormResponse)

Success






---


#### getParticipantsInsideVideoRoom
Get participants of a specific Video Room using it's unique name



```swift
lead.getParticipantsInsideVideoRoom(uniqueName: uniqueName) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uniqueName | String? | no | Unique name of Video Room |  



Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.

*Returned Response:*




[GetParticipantsInsideVideoRoomResponse](#GetParticipantsInsideVideoRoomResponse)

Success






---


#### getTokenForVideoRoom
Get Token to join a specific Video Room using it's unqiue name



```swift
lead.getTokenForVideoRoom(uniqueName: uniqueName) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uniqueName | String? | no | Unique name of Video Room |  



Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.

*Returned Response:*




[GetTokenForVideoRoomResponse](#GetTokenForVideoRoomResponse)

Success






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| themeId | String? | no | ID of the theme to be retrieved |  



Use this API to retrieve all the available pages of a theme by its ID.

*Returned Response:*




[AllAvailablePageSchema](#AllAvailablePageSchema)

Success. Returns an array all the pages of the theme. Refer `AllAvailablePageSchema` for more details.






---


#### getPage
Get page of a theme



```swift
theme.getPage(themeId: themeId, pageValue: pageValue) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| themeId | String? | no | ID of the theme to be retrieved |    
| pageValue | String? | no | Value of the page to be retrieved |  



Use this API to retrieve a page of a theme.

*Returned Response:*




[AvailablePageSchema](#AvailablePageSchema)

Success. Returns an object of the pages.  Refer `AvailablePageSchema` for more details.






---


#### getAppliedTheme
Get the theme currently applied to an application



```swift
theme.getAppliedTheme() { (response, error) in
    // Use response
}
```




An application has multiple themes, but only one theme can be applied at a time. Use this API to retrieve the theme currently applied to the application.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Returns a JSON object of the theme. Check the example shown below or    refer `ThemesSchema` for more details.






---


#### getThemeForPreview
Get a theme for a preview



```swift
theme.getThemeForPreview(themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| themeId | String? | no | ID of the theme to be retrieved |  



A theme can be previewed before applying it. Use this API to retrieve the preview of a theme by its ID.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Returns a JSON object of the theme. Check the example shown below or refer `ThemesSchema` for more details.






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [OAuthRequestSchema](#OAuthRequestSchema) | yes | Request body |


Use this API to login or register using Facebook credentials.

*Returned Response:*




[AuthSuccess](#AuthSuccess)

Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.






---


#### loginWithGoogle
Login or Register using Google



```swift
user.loginWithGoogle(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [OAuthRequestSchema](#OAuthRequestSchema) | yes | Request body |


Use this API to login or register using Google Account credentials.

*Returned Response:*




[AuthSuccess](#AuthSuccess)

Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.






---


#### loginWithGoogleAndroid
Login or Register using Google on Android



```swift
user.loginWithGoogleAndroid(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [OAuthRequestSchema](#OAuthRequestSchema) | yes | Request body |


Use this API to login or register in Android app using Google Account credentials.

*Returned Response:*




[AuthSuccess](#AuthSuccess)

Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.






---


#### loginWithGoogleIOS
Login or Register using Google on iOS



```swift
user.loginWithGoogleIOS(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [OAuthRequestSchema](#OAuthRequestSchema) | yes | Request body |


Use this API to login or register in iOS app using Google Account credentials.

*Returned Response:*




[AuthSuccess](#AuthSuccess)

Success. Returns a JSON object with the user details. Check the example shown below or refer `AuthSuccess` for more details.






---


#### loginWithOTP
Login or Register with OTP



```swift
user.loginWithOTP(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [SendOtpRequestSchema](#SendOtpRequestSchema) | yes | Request body |


Use this API to login or register with a One-time Password (OTP) sent via Email or SMS.

*Returned Response:*




[SendOtpResponse](#SendOtpResponse)

Success. Check the example shown below or refer `SendOtpResponse` for more details.






---


#### loginWithEmailAndPassword
Login or Register with password



```swift
user.loginWithEmailAndPassword(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [PasswordLoginRequestSchema](#PasswordLoginRequestSchema) | yes | Request body |


Use this API to login or register using an email address and password.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.






---


#### sendResetPasswordEmail
Reset Password



```swift
user.sendResetPasswordEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [SendResetPasswordEmailRequestSchema](#SendResetPasswordEmailRequestSchema) | yes | Request body |


Use this API to reset a password using the link sent on email.

*Returned Response:*




[ResetPasswordSuccess](#ResetPasswordSuccess)

Success. Check the example shown below or refer `ResetPasswordSuccess` for more details.






---


#### forgotPassword
Forgot Password



```swift
user.forgotPassword(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [ForgotPasswordRequestSchema](#ForgotPasswordRequestSchema) | yes | Request body |


Use this API to reset a password using the code sent on email or SMS.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.






---


#### sendResetToken
Reset Password using token



```swift
user.sendResetToken(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [CodeRequestBodySchema](#CodeRequestBodySchema) | yes | Request body |


Use this API to send code to reset password.

*Returned Response:*




[ResetPasswordSuccess](#ResetPasswordSuccess)

Success. Check the example shown below or refer `ResetPasswordSuccess` for more details.






---


#### loginWithToken
Login or Register with token



```swift
user.loginWithToken(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [TokenRequestBodySchema](#TokenRequestBodySchema) | yes | Request body |


Use this API to login or register using a token for authentication.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.






---


#### registerWithForm
Registration using a form



```swift
user.registerWithForm(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [FormRegisterRequestSchema](#FormRegisterRequestSchema) | yes | Request body |


Use this API to perform user registration by sending form data in the request body.

*Returned Response:*




[RegisterFormSuccess](#RegisterFormSuccess)

Success. Check the example shown below or refer `RegisterFormSuccess` for more details.






---


#### verifyEmail
Verify email



```swift
user.verifyEmail(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [CodeRequestBodySchema](#CodeRequestBodySchema) | yes | Request body |


Use this API to send a verification code to verify an email.

*Returned Response:*




[VerifyEmailSuccess](#VerifyEmailSuccess)

Success. Check the example shown below or refer `VerifyEmailSuccess` for more details.






---


#### verifyMobile
Verify mobile



```swift
user.verifyMobile(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [CodeRequestBodySchema](#CodeRequestBodySchema) | yes | Request body |


Use this API to send a verification code to verify a mobile number.

*Returned Response:*




[VerifyEmailSuccess](#VerifyEmailSuccess)

Success. Check the example shown below or refer `VerifyEmailSuccess` for more details.






---


#### hasPassword
Check password



```swift
user.hasPassword() { (response, error) in
    // Use response
}
```




Use this API to check if user has created a password for login.

*Returned Response:*




[HasPasswordSuccess](#HasPasswordSuccess)

Success. Returns a boolean value. Check the example shown below or refer `HasPasswordSuccess` for more details.






---


#### updatePassword
Update user password



```swift
user.updatePassword(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [UpdatePasswordRequestSchema](#UpdatePasswordRequestSchema) | yes | Request body |


Use this API to update the password.

*Returned Response:*




[VerifyEmailSuccess](#VerifyEmailSuccess)

Success. Returns a success message. Refer `VerifyEmailSuccess` for more details.






---


#### logout
Logs out currently logged in user



```swift
user.logout() { (response, error) in
    // Use response
}
```




Use this API to check to logout a user from the app.

*Returned Response:*




[LogoutSuccess](#LogoutSuccess)

Success. Returns a success message as shown below. Refer `LogoutSuccess` for more details.






---


#### sendOTPOnMobile
Send OTP on mobile



```swift
user.sendOTPOnMobile(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [SendMobileOtpRequestSchema](#SendMobileOtpRequestSchema) | yes | Request body |


Use this API to send an OTP to a mobile number.

*Returned Response:*




[OtpSuccess](#OtpSuccess)

Success. Returns a JSON object as shown below. Refer `OtpSuccess` for more details.






---


#### verifyMobileOTP
Verify OTP on mobile



```swift
user.verifyMobileOTP(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [VerifyOtpRequestSchema](#VerifyOtpRequestSchema) | yes | Request body |


Use this API to verify the OTP received on a mobile number.

*Returned Response:*




[VerifyOtpSuccess](#VerifyOtpSuccess)

Success. Returns a JSON object as shown below. Refer `VerifyOtpSuccess` for more details.






---


#### sendOTPOnEmail
Send OTP on email



```swift
user.sendOTPOnEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [SendEmailOtpRequestSchema](#SendEmailOtpRequestSchema) | yes | Request body |


Use this API to send an OTP to an email ID.

*Returned Response:*




[EmailOtpSuccess](#EmailOtpSuccess)

Success. Returns a JSON object as shown below. Refer `EmailOtpSuccess` for more details.






---


#### verifyEmailOTP
Verify OTP on email



```swift
user.verifyEmailOTP(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [VerifyEmailOtpRequestSchema](#VerifyEmailOtpRequestSchema) | yes | Request body |


Use this API to verify the OTP received on an email ID.

*Returned Response:*




[VerifyOtpSuccess](#VerifyOtpSuccess)

Success. Returns a JSON object as shown below. Refer `VerifyOtpSuccess` for more details.






---


#### getLoggedInUser
Get logged in user



```swift
user.getLoggedInUser() { (response, error) in
    // Use response
}
```




Use this API  to get the details of a logged in user.

*Returned Response:*




[UserObjectSchema](#UserObjectSchema)

Success. Returns a JSON object with user details. Refer `UserObjectSchema` for more details.






---


#### getListOfActiveSessions
Get list of sessions



```swift
user.getListOfActiveSessions() { (response, error) in
    // Use response
}
```




Use this API to retrieve all active sessions of a user.

*Returned Response:*




[SessionListSuccess](#SessionListSuccess)

Success. Returns a JSON object containing an array of sessions. Refer `SessionListSuccess` for more details.






---


#### getPlatformConfig
Get platform configurations



```swift
user.getPlatformConfig(name: name) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| name | String? | no | Name of the application, e.g. Fynd |  



Use this API to get all the platform configurations such as mobile image, desktop image, social logins, and all other text.

*Returned Response:*




[PlatformSchema](#PlatformSchema)

Success. Returns a JSON object containing the all the platform configurations. Refer `PlatformSchema` for more details.






---


#### updateProfile
Edit Profile Details



```swift
user.updateProfile(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [EditProfileRequestSchema](#EditProfileRequestSchema) | yes | Request body |


Use this API to update details in the user profile. Details can be first name, last name, gender, email, phone number, or profile picture.

*Returned Response:*




[ProfileEditSuccess](#ProfileEditSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.






---


#### addMobileNumber
Add mobile number to profile



```swift
user.addMobileNumber(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [EditMobileRequestSchema](#EditMobileRequestSchema) | yes | Request body |


Use this API to add a new mobile number to a profile.

*Returned Response:*




[VerifyMobileOTPSuccess](#VerifyMobileOTPSuccess)

Success. Check the example shown below or refer `VerifyMobileOTPSuccess` for more details.






---


#### deleteMobileNumber
Delete mobile number from profile



```swift
user.deleteMobileNumber(platform: platform, active: active, primary: primary, verified: verified, countryCode: countryCode, phone: phone) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |    
| active | Bool? | no | This is a boolean value to check if mobile number is active 1.True - Number is active 2. False - Number is inactive |    
| primary | Bool? | no | This is a boolean value to check if mobile number is primary number (main number) 1. True - Number is primary 2. False - Number is not primary |    
| verified | Bool? | no | This is a boolean value to check if mobile number is verified 1. True - Number is verified 2.False - Number is not verified yet |    
| countryCode | String? | no | Country code of the phone number, e.g. 91 |    
| phone | String? | no | Phone number |  



Use this API to delete a mobile number from a profile.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.






---


#### setMobileNumberAsPrimary
Set mobile as primary



```swift
user.setMobileNumberAsPrimary(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [SendVerificationLinkMobileRequestSchema](#SendVerificationLinkMobileRequestSchema) | yes | Request body |


Use this API to set a mobile number as primary. Primary number is a verified number used for all future communications.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Check the example shown below or refer `LoginSuccess` for more details.






---


#### sendVerificationLinkToMobile
Send verification link to mobile



```swift
user.sendVerificationLinkToMobile(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [SendVerificationLinkMobileRequestSchema](#SendVerificationLinkMobileRequestSchema) | yes | Request body |


Use this API to send a verification link to a mobile number

*Returned Response:*




[SendMobileVerifyLinkSuccess](#SendMobileVerifyLinkSuccess)

Success. Check the example shown below or refer `SendMobileVerifyLinkSuccess` for more details.






---


#### addEmail
Add email to profile



```swift
user.addEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [EditEmailRequestSchema](#EditEmailRequestSchema) | yes | Request body |


Use this API to add a new email address to a profile

*Returned Response:*




[VerifyEmailOTPSuccess](#VerifyEmailOTPSuccess)

Success. Returns a JSON object with user details. Refer `VerifyEmailOTPSuccess` for more details.






---


#### deleteEmail
Delete email from profile



```swift
user.deleteEmail(platform: platform, active: active, primary: primary, verified: verified, email: email) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |    
| active | Bool? | no | This is a boolean value to check if email ID is active 1. True - Email ID is active 2.False - Email ID is inactive |    
| primary | Bool? | no | This is a boolean value to check if email ID is primary (main email ID) 1. True - Email ID is primary 2.False - Email ID is not primary |    
| verified | Bool? | no | This is a boolean value to check if email ID is verified 1. True - Email ID is verified 2.False - Email ID is not verified yet |    
| email | String? | no | The email ID to delete |  



Use this API to delete an email address from a profile

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Returns a JSON object with user details. Refer `LoginSuccess` for more details.






---


#### setEmailAsPrimary
Set email as primary



```swift
user.setEmailAsPrimary(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [EditEmailRequestSchema](#EditEmailRequestSchema) | yes | Request body |


Use this API to set an email address as primary. Primary email ID is a email address used for all future communications.

*Returned Response:*




[LoginSuccess](#LoginSuccess)

Success. Returns a JSON object with user details. Refer `LoginSuccess` for more details.






---


#### sendVerificationLinkToEmail
Send verification link to email



```swift
user.sendVerificationLinkToEmail(platform: platform, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| platform | String? | no | ID of the application |  
| body | [EditEmailRequestSchema](#EditEmailRequestSchema) | yes | Request body |


Use this API to send verification link to an email address.

*Returned Response:*




[SendEmailVerifyLinkSuccess](#SendEmailVerifyLinkSuccess)

Request body must contain an email ID. Refer `EditEmailRequestSchema` for more details.






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

*Returned Response:*




[AnnouncementsResponseSchema](#AnnouncementsResponseSchema)

Success. Returns a JSON object with the details of the announcement shown on an individual page. `$all` is a special slug to indicate that an announcement is being shown on all the pages. Check the example shown below or refer `AnnouncementsResponseSchema` for more details.






---


#### getBlog
Get a blog



```swift
content.getBlog(slug: slug, rootId: rootId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a blog. You can get slug value from the endpoint /service/application/content/v1.0/blogs/. |    
| rootId | String? | no | ID given to the HTML element |  



Use this API to get the details of a blog using its slug. Details include the title, reading time, publish status, feature image, tags, author, etc.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success. Returns a JSON object with blog details. Check the example shown below or refer `BlogSchema` for more details.






---


#### getBlogs
Get a list of blogs



```swift
content.getBlogs(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to get all the blogs.

*Returned Response:*




[BlogGetResponse](#BlogGetResponse)

Success. Check the example shown below or refer `BlogGetResponse` for more details.






---


#### getFaqs
Get a list of FAQs



```swift
content.getFaqs() { (response, error) in
    // Use response
}
```




Use this API to get a list of frequently asked questions. Users will benefit from it when facing any issue with the website.

*Returned Response:*




[FaqResponseSchema](#FaqResponseSchema)

Success. Returns a JSON object with question and answers. Check the example shown below or refer `FaqResponseSchema` for more details.






---


#### getFaqCategories
Get a list of FAQ categories



```swift
content.getFaqCategories() { (response, error) in
    // Use response
}
```




FAQs can be divided into categories. Use this API to get a list of FAQ categories.

*Returned Response:*




[GetFaqCategoriesSchema](#GetFaqCategoriesSchema)

Success. Returns a JSON object with categories of FAQ. Check the example shown below or refer `GetFaqCategoriesSchema` for more details.






---


#### getFaqBySlug
Get an FAQ



```swift
content.getFaqBySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of an FAQ. You can get slug value from the endpoint /service/application/content/v1.0/faq. |  



Use this API to get a particular FAQ by its slug.

*Returned Response:*




[FaqSchema](#FaqSchema)

Success. Returns a question and answer by its slug. Check the example shown below or refer `FaqSchema` for more details.






---


#### getFaqCategoryBySlug
Get the FAQ category



```swift
content.getFaqCategoryBySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of an FAQ category. You can get slug value from the endpoint /service/application/content/v1.0/faq/categories. |  



FAQs can be divided into categories. Use this API to get the category to which an FAQ belongs.

*Returned Response:*




[GetFaqCategoryBySlugSchema](#GetFaqCategoryBySlugSchema)

Success. Returns a FAQ category with its slug. Check the example shown below or refer `GetFaqCategoryBySlugSchema` for more details.






---


#### getFaqsByCategorySlug
Get FAQs using the slug of FAQ category



```swift
content.getFaqsByCategorySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of an FAQ category. You can get slug value from the endpoint /service/application/content/v1.0/faq/categories. |  



FAQs can be divided into categories. Use this API to get all the FAQs belonging to a category by using the category slug.

*Returned Response:*




[GetFaqSchema](#GetFaqSchema)

Success. Returns a categorized list of question and answers using its slug. Check the example shown below or refer `GetFaqSchema` for more details.






---


#### getLandingPage
Get the landing page



```swift
content.getLandingPage() { (response, error) in
    // Use response
}
```




Landing page is the first page that a prospect lands upon while visiting a website. Use this API to fetch the details of a landing page.

*Returned Response:*




[LandingPageSchema](#LandingPageSchema)

Success. Returns the landing page details. Check the example shown below or refer `LandingPageSchema` for more details.






---


#### getLegalInformation
Get legal information



```swift
content.getLegalInformation() { (response, error) in
    // Use response
}
```




Use this API to get the legal information of an application, which includes Privacy Policy, Terms and Conditions, Shipping Policy and FAQs regarding the usage of the application.

*Returned Response:*




[ApplicationLegal](#ApplicationLegal)

Success. Returns the T&C, Shipping Policy, Privacy Policy and Return Policy. Check the example shown below or refer `ApplicationLegal` for more details.






---


#### getNavigations
Get the navigation



```swift
content.getNavigations(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to fetch the navigations details which includes the items of the navigation pane. It also shows the links and sub-navigations.

*Returned Response:*




[NavigationGetResponse](#NavigationGetResponse)

Success. Returns a JSON object with navigation details. Check the example shown below or refer `NavigationGetResponse` for more details.






---


#### getPage
Get a page



```swift
content.getPage(slug: slug, rootId: rootId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a page. You can get slug value from the endpoint /service/application/content/v1.0/pages/. |    
| rootId | String? | no | ID given to the HTML element |  



Use this API to get the details of a page using its slug. Details include the title, seo, publish status, feature image, tags, meta, etc.

*Returned Response:*




[CustomPageSchema](#CustomPageSchema)

Success. Returns a JSON object with page details. Check the example shown below or refer `CustomPageSchema` for more details.






---


#### getPages
Get all pages



```swift
content.getPages(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to get a list of pages.

*Returned Response:*




[PageGetResponse](#PageGetResponse)

Success. Returns a list of pages along with their details. Check the example shown below or refer `PageGetResponse` for more details.






---


#### getSEOConfiguration
Get the SEO of an application



```swift
content.getSEOConfiguration() { (response, error) in
    // Use response
}
```




Use this API to get the SEO details of an application, which includes a robot.txt, meta-tags and sitemap.

*Returned Response:*




[SeoComponent](#SeoComponent)

Success. Returns a JSON object SEO details such as robots.txt, meta-tags, and sitemap. Check the example shown below or refer `SeoComponent` for more details.






---


#### getSlideshows
Get the slideshows



```swift
content.getSlideshows(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to get a list of slideshows along with their details.

*Returned Response:*




[SlideshowGetResponse](#SlideshowGetResponse)

Success. Check the example shown below or refer `SlideshowGetResponse` for more details.






---


#### getSlideshow
Get a slideshow



```swift
content.getSlideshow(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a slideshow. You can get slug value from the endpoint /service/application/content/v1.0/slideshow/. |  



A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to fetch a slideshow using its `slug`.

*Returned Response:*




[SlideshowSchema](#SlideshowSchema)

Success. Returns the details of how a slideshow is configured. Check the example shown below or refer `SlideshowSchema` for more details.






---


#### getSupportInformation
Get the support information



```swift
content.getSupportInformation() { (response, error) in
    // Use response
}
```




Use this API to get contact details for customer support including emails and phone numbers.

*Returned Response:*




[Support](#Support)

Success. Returns all support information including email and phone number. Check the example shown below or refer `Support` for more details.






---


#### getTags
Get the tags associated with an application



```swift
content.getTags() { (response, error) in
    // Use response
}
```




Use this API to get all the CSS and JS injected in the application in the form of tags.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success. Returns a JSON object containing all the tags injected in the application. Check the example shown below or refer `TagsSchema` for more details.






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

*Returned Response:*




[CommunicationConsent](#CommunicationConsent)

Success. Returns all available communication opt-ins along with the consent details. Check the example shown below or refer `CommunicationConsent` for more details.






---


#### upsertCommunicationConsent
Upsert communication consent



```swift
communication.upsertCommunicationConsent(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [CommunicationConsentReq](#CommunicationConsentReq) | yes | Request body |


Use this API to update and insert the consent provided by the user for receiving communication messages over Email/SMS/WhatsApp.

*Returned Response:*




[CommunicationConsentRes](#CommunicationConsentRes)

Success. Updates the channels for which user has consented. Check the example shown below or refer `CommunicationConsentRes` for more details.






---


#### upsertAppPushtoken
Upsert push token of a user



```swift
communication.upsertAppPushtoken(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [PushtokenReq](#PushtokenReq) | yes | Request body |


Use this API to update and insert the push token of the user.

*Returned Response:*




[PushtokenRes](#PushtokenRes)

Success. Check the example shown below or refer `PushtokenRes` for more details.






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

*Returned Response:*




[QRCodeResp](#QRCodeResp)

Success. Check the example shown below or refer `QRCodeResp` for more details.






---


#### getProductQRCodeBySlug
Create QR Code of a product



```swift
share.getProductQRCodeBySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint. |  



Use this API to create a QR code of a product for sharing it with users who want to view/purchase the product.

*Returned Response:*




[QRCodeResp](#QRCodeResp)

Success. Check the example shown below or refer `QRCodeResp` for more details.






---


#### getCollectionQRCodeBySlug
Create QR Code of a collection



```swift
share.getCollectionQRCodeBySlug(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of a collection. You can get slug value from the endpoint. |  



Use this API to create a QR code of a collection of products for sharing it with users who want to view/purchase the collection.

*Returned Response:*




[QRCodeResp](#QRCodeResp)

Success. Check the example shown below or refer `QRCodeResp` for more details.






---


#### getUrlQRCode
Create QR Code of a URL



```swift
share.getUrlQRCode(url: url) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| url | String? | no | A link or a web address |  



Use this API to create a QR code of a URL for sharing it with users who want to visit the link.

*Returned Response:*




[QRCodeResp](#QRCodeResp)

Success. Check the example shown below or refer `QRCodeResp` for more details.






---


#### createShortLink
Create a short link



```swift
share.createShortLink(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [ShortLinkReq](#ShortLinkReq) | yes | Request body |


Use this API to create a short link that is easy to write/share/read as compared to long URLs.

*Returned Response:*




[ShortLinkRes](#ShortLinkRes)

Success. Check the example shown below or refer `ShortLinkRes` for more details.






---


#### getShortLinkByHash
Get short link by hash



```swift
share.getShortLinkByHash(hash: hash) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| hash | String? | no | A string value used for converting long URL to short URL and vice-versa. |  



Use this API to get a short link by using a hash value.

*Returned Response:*




[ShortLinkRes](#ShortLinkRes)

Success. Check the example shown below or refer `ShortLinkRes` for more details.






---


#### getOriginalShortLinkByHash
Get original link by hash



```swift
share.getOriginalShortLinkByHash(hash: hash) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| hash | String? | no | A string value used for converting long URL to short URL and vice-versa. |  



Use this API to retrieve the original link from a short-link by using a hash value.

*Returned Response:*




[ShortLinkRes](#ShortLinkRes)

Success. Check the example shown below or refer `ShortLinkRes` for more details.






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| namespace | String? | no | Name of the bucket created for storing objects. |  
| body | [StartRequest](#StartRequest) | yes | Request body |


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


*Returned Response:*




[StartResponse](#StartResponse)

Success. Next, call the `completeUpload` API and pass the response payload of this API to finish the upload process.






---


#### completeUpload
Completes the upload process. After successfully uploading a file, call this API to finish the upload process.



```swift
filestorage.completeUpload(namespace: namespace, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| namespace | String? | no | Name of the bucket created for storing objects. |  
| body | [StartResponse](#StartResponse) | yes | Request body |


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


*Returned Response:*




[CompleteResponse](#CompleteResponse)

Success






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

*Returned Response:*




[Application](#Application)

Success. Check the example shown below or refer `Application` for more details.






---


#### getOwnerInfo
Get application, owner and seller information



```swift
configuration.getOwnerInfo() { (response, error) in
    // Use response
}
```




Use this API to get the current application details which includes channel name, description, banner, logo, favicon, domain details, etc. This API also retrieves the seller and owner information such as address, email address, and phone number.

*Returned Response:*




[ApplicationAboutResponse](#ApplicationAboutResponse)

Success. Check the example shown below or refer `ApplicationAboutResponse` for more details.






---


#### getBasicDetails
Get basic application details



```swift
configuration.getBasicDetails() { (response, error) in
    // Use response
}
```




Use this API to retrieve only the basic details of the application which includes channel name, description, banner, logo, favicon, domain details, etc.

*Returned Response:*




[ApplicationDetail](#ApplicationDetail)

Success. Check the example shown below or refer `ApplicationDetail` for more details.






---


#### getIntegrationTokens
Get integration tokens



```swift
configuration.getIntegrationTokens() { (response, error) in
    // Use response
}
```




Use this API to retrieve the tokens used while integrating Firebase, MoEngage, Segment, GTM, Freshchat, Safetynet, Google Map and Facebook. **Note** - Token values are encrypted with AES encryption using a secret key. Kindly reach out to the developers for obtaining the secret key.

*Returned Response:*




[AppTokenResponse](#AppTokenResponse)

Success. Check the example shown below or refer `AppTokenResponse` for more details.






---


#### getOrderingStores
Get deployment stores



```swift
configuration.getOrderingStores(pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |    
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |    
| q | String? | no | Store code or name of the ordering store. |  



Use this API to retrieve the details of all the deployment stores (the selling locations where the application will be utilized for placing orders).

*Returned Response:*




[OrderingStores](#OrderingStores)

Success. Check the example shown below or refer `OrderingStores` for more details.






---


#### getFeatures
Get features of application



```swift
configuration.getFeatures() { (response, error) in
    // Use response
}
```




Use this API to retrieve the configuration of features such as product detail, landing page, options in the login/registration screen, communication opt-in, cart options and many more.

*Returned Response:*




[AppFeatureResponse](#AppFeatureResponse)

Success. Check the example shown below or refer `AppFeatureResponse` for more details.






---


#### getContactInfo
Get application information



```swift
configuration.getContactInfo() { (response, error) in
    // Use response
}
```




Use this API to retrieve information about the social links, address and contact information of the company/seller/brand operating the application.

*Returned Response:*




[ApplicationInformation](#ApplicationInformation)

Success. Check the example shown below or refer `ApplicationAboutResponse` for more details.






---


#### getCurrencies
Get currencies enabled in the application



```swift
configuration.getCurrencies() { (response, error) in
    // Use response
}
```




Use this API to get a list of currencies allowed in the current application. Moreover, get the name, code, symbol, and the decimal digits of the currencies.

*Returned Response:*




[CurrenciesResponse](#CurrenciesResponse)

Success. Check the example shown below or refer `CurrenciesResponse` for more details.






---


#### getCurrencyById
Get currency by its ID



```swift
configuration.getCurrencyById(id: id) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| id | String? | no | Object ID assigned to the currency |  



Use this API to retrieve a currency using its ID.

*Returned Response:*




[Currency](#Currency)

Success. Check the example shown below or refer `Currency` for more details.






---


#### getLanguages
Get list of languages



```swift
configuration.getLanguages() { (response, error) in
    // Use response
}
```




Use this API to get a list of languages supported in the application.

*Returned Response:*




[LanguageResponse](#LanguageResponse)

Success. Check the example shown below or refer `LanguageResponse` for more details.






---


#### getOrderingStoreCookie
Get an Ordering Store signed cookie on selection of ordering store.



```swift
configuration.getOrderingStoreCookie(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [OrderingStoreSelectRequest](#OrderingStoreSelectRequest) | yes | Request body |


Use this API to get an Ordering Store signed cookie upon selecting an ordering store. This will be used by the cart service to verify a coupon against the selected ordering store in cart.

*Returned Response:*




[SuccessMessageResponse](#SuccessMessageResponse)

Success






---


#### removeOrderingStoreCookie
Unset the Ordering Store signed cookie.



```swift
configuration.removeOrderingStoreCookie() { (response, error) in
    // Use response
}
```




Use this API to unset the Ordering Store cookie upon changing the sales channel, by its domain URL, in the Universal Fynd Store app.

*Returned Response:*




[SuccessMessageResponse](#SuccessMessageResponse)

Success






---


#### getAppStaffs
Get a list of staff.



```swift
configuration.getAppStaffs(orderIncent: orderIncent, orderingStore: orderingStore, user: user) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| orderIncent | Bool? | no | This is a boolean value. Select `true` to retrieve the staff members eligible for getting incentives on orders. |    
| orderingStore | Int? | no | ID of the ordering store. Helps in retrieving staff members working at a particular ordering store. |    
| user | String? | no | Mongo ID of the staff. Helps in retrieving the details of a particular staff member. |  



Use this API to get a list of staff including the names, employee code, incentive status, assigned ordering stores, and title of each staff added to the application.

*Returned Response:*




[AppStaffResponse](#AppStaffResponse)

Success. Check the example shown below or refer `AppStaffResponse` for more details.






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| xApiToken | String? | no | Used for basic authentication. |    
| refresh | Bool? | no | This is a boolean value. Select `true` to remove temporary cache files on payment gateway and replace with the latest one. |  



Use this API to retrieve the payment gateway key, secrets, merchant, SDK/API details to complete a payment at front-end.

*Returned Response:*




[AggregatorsConfigDetailResponse](#AggregatorsConfigDetailResponse)

Success. Returns the keys of all payment gateways. Check the example shown below or refer `AggregatorsConfigDetailResponse` for more details.






---


#### attachCardToCustomer
Attach a saved card to customer.



```swift
payment.attachCardToCustomer(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [AttachCardRequest](#AttachCardRequest) | yes | Request body |


Use this API to attach a customer's saved card at the payment gateway, such as Stripe, Juspay.

*Returned Response:*




[AttachCardsResponse](#AttachCardsResponse)

Success. Check the example shown below or refer `AttachCardsResponse` for more details.






---


#### getActiveCardAggregator
Fetch active payment gateway for card payments



```swift
payment.getActiveCardAggregator(refresh: refresh) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| refresh | Bool? | no |  |  



Use this API to retrieve an active payment aggregator along with the Customer ID. This is applicable for cards payments only.

*Returned Response:*




[ActiveCardPaymentGatewayResponse](#ActiveCardPaymentGatewayResponse)

Success. Returns an active payment gateway. Check the example shown below or refer `ActiveCardPaymentGatewayResponse` for more details.






---


#### getActiveUserCards
Fetch the list of cards saved by the user



```swift
payment.getActiveUserCards(forceRefresh: forceRefresh) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| forceRefresh | Bool? | no |  |  



Use this API to retrieve a list of cards stored by user from an active payment gateway.

*Returned Response:*




[ListCardsResponse](#ListCardsResponse)

Success. Returns a list of cards saved by the user. Check the example shown below or refer `ListCardsResponse` for more details.






---


#### deleteUserCard
Delete a card



```swift
payment.deleteUserCard(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [DeletehCardRequest](#DeletehCardRequest) | yes | Request body |


Use this API to delete a card added by a user on the payment gateway and clear the cache.

*Returned Response:*




[DeleteCardsResponse](#DeleteCardsResponse)

Success. Returns a success message if card is deleted.






---


#### verifyCustomerForPayment
Validate customer for payment



```swift
payment.verifyCustomerForPayment(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [ValidateCustomerRequest](#ValidateCustomerRequest) | yes | Request body |


Use this API to check if the customer is eligible to use credit-line facilities such as Simpl Pay Later and Rupifi.

*Returned Response:*




[ValidateCustomerResponse](#ValidateCustomerResponse)

Success. Check the example shown below or refer `ValidateCustomerResponse` for more details.






---


#### verifyAndChargePayment
Verify and charge payment



```swift
payment.verifyAndChargePayment(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [ChargeCustomerRequest](#ChargeCustomerRequest) | yes | Request body |


Use this API to verify and check the status of a payment transaction (server-to-server) made through aggregators like Simpl and Mswipe.

*Returned Response:*




[ChargeCustomerResponse](#ChargeCustomerResponse)

Success. Check the example shown below or refer `ChargeCustomerResponse` for more details.






---


#### initialisePayment
Initialize a payment (server-to-server) for UPI and BharatQR



```swift
payment.initialisePayment(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [PaymentInitializationRequest](#PaymentInitializationRequest) | yes | Request body |


PUse this API to inititate payment using UPI, BharatQR, wherein the UPI requests are send to the app and QR code is displayed on the screen.

*Returned Response:*




[PaymentInitializationResponse](#PaymentInitializationResponse)

Success. Check the example shown below or refer `PaymentInitializationResponse` for more details.






---


#### checkAndUpdatePaymentStatus
Performs continuous polling to check status of payment on the server



```swift
payment.checkAndUpdatePaymentStatus(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [PaymentStatusUpdateRequest](#PaymentStatusUpdateRequest) | yes | Request body |


Use this API to perform continuous polling at intervals to check the status of payment until timeout.

*Returned Response:*




[PaymentStatusUpdateResponse](#PaymentStatusUpdateResponse)

Success. Returns the status of payment. Check the example shown below or refer `PaymentStatusUpdateResponse` for more details.






---


#### getPaymentModeRoutes
Get applicable payment options



```swift
payment.getPaymentModeRoutes(amount: amount, cartId: cartId, pincode: pincode, checkoutMode: checkoutMode, refresh: refresh, assignCardId: assignCardId, userDetails: userDetails) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| amount | Int? | no | Payable amount. |    
| cartId | String? | no | Identifier of the cart. |    
| pincode | String? | no | The PIN Code of the destination address, e.g. 400059 |    
| checkoutMode | String? | no | Option to checkout for self or for others. |    
| refresh | Bool? | no | This is a boolean value. Select `true` to remove temporary cache files on payment gateway and replace with the latest one. |    
| assignCardId | String? | no | Token of user's debit or credit card. |    
| userDetails | String? | no | URIencoded JSON containing details of an anonymous user. |  



Use this API to get all valid payment options for doing a payment.

*Returned Response:*




[PaymentModeRouteResponse](#PaymentModeRouteResponse)

Success. Returns all available options for payment. Check the example shown below or refer `PaymentModeRouteResponse` for more details.






---


#### getPosPaymentModeRoutes
Get applicable payment options for Point-of-Sale (POS)



```swift
payment.getPosPaymentModeRoutes(amount: amount, cartId: cartId, pincode: pincode, checkoutMode: checkoutMode, refresh: refresh, assignCardId: assignCardId, orderType: orderType, userDetails: userDetails) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| amount | Int? | no | Payable amount. |    
| cartId | String? | no | Identifier of the cart. |    
| pincode | String? | no | The PIN Code of the destination address, e.g. 400059 |    
| checkoutMode | String? | no | Option to checkout for self or for others. |    
| refresh | Bool? | no | This is a boolean value. Select `true` to remove temporary cache files on payment gateway and replace with the latest one. |    
| assignCardId | String? | no | Token of user's debit or credit card. |    
| orderType | String? | no | The order type of shipment * HomeDelivery - If the customer wants the order home-delivered * PickAtStore - If the customer wants the handover of an order at the store itself. |    
| userDetails | String? | no | URIencoded JSON containing details of an anonymous user. |  



Use this API to get all valid payment options for doing a payment in POS.

*Returned Response:*




[PaymentModeRouteResponse](#PaymentModeRouteResponse)

Success. Returns all available options for payment. Check the example shown below or refer `PaymentModeRouteResponse` for more details.






---


#### getRupifiBannerDetails
Get CreditLine Offer



```swift
payment.getRupifiBannerDetails() { (response, error) in
    // Use response
}
```




Get CreditLine Offer if user is tentatively approved by rupifi

*Returned Response:*




[RupifiBannerResponse](#RupifiBannerResponse)

Success. Return CreditLine Offer detail. Check the example shown below or refer `RupifiBannerResponseSchema` for more details.






---


#### getActiveRefundTransferModes
Lists the mode of refund



```swift
payment.getActiveRefundTransferModes() { (response, error) in
    // Use response
}
```




Use this API to retrieve eligible refund modes (such as Netbanking) and add the beneficiary details.

*Returned Response:*




[TransferModeResponse](#TransferModeResponse)

Success. Shows the available refund mode to choose, e.g. Netbanking. Check the example shown below or refer `TransferModeResponse` for more details.






---


#### enableOrDisableRefundTransferMode
Enable/Disable a mode for transferring a refund



```swift
payment.enableOrDisableRefundTransferMode(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [UpdateRefundTransferModeRequest](#UpdateRefundTransferModeRequest) | yes | Request body |


Activate or Deactivate Transfer Mode to collect Beneficiary Details for Refund

*Returned Response:*




[UpdateRefundTransferModeResponse](#UpdateRefundTransferModeResponse)

Success. Shows whether the refund mode was successfully enabled or disabled.






---


#### getUserBeneficiariesDetail
Lists the beneficiary of a refund



```swift
payment.getUserBeneficiariesDetail(orderId: orderId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| orderId | String? | no | A unique number used for identifying and tracking your orders. |  



Use this API to get the details of all active beneficiary added by a user for refund.

*Returned Response:*




[OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

Success. Returns the details of the beneficiary getting a refund. Check the example shown below or refer `OrderBeneficiaryResponse` for more details.






---


#### verifyIfscCode
Verify IFSC Code



```swift
payment.verifyIfscCode(ifscCode: ifscCode) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| ifscCode | String? | no | A 11-digit alphanumeric code that uniquely identifies a bank branch. |  



Use this API to check whether the 11-digit IFSC code is valid and to fetch the bank details for refund.

*Returned Response:*




[IfscCodeResponse](#IfscCodeResponse)

Success. Shows whether the IFSC code is valid, and returns the bank details. Check the example shown below or refer `IfscCodeResponse` for more details.






---


#### getOrderBeneficiariesDetail
Lists the beneficiary of a refund



```swift
payment.getOrderBeneficiariesDetail(orderId: orderId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| orderId | String? | no | A unique number used for identifying and tracking your orders. |  



Use this API to get the details of all active beneficiary added by a user for refund.

*Returned Response:*




[OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

Success. Returns the details of the beneficiary getting a refund. Check the example shown below or refer `OrderBeneficiaryResponse` for more details.






---


#### verifyOtpAndAddBeneficiaryForBank
Verify the beneficiary details using OTP



```swift
payment.verifyOtpAndAddBeneficiaryForBank(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [AddBeneficiaryViaOtpVerificationRequest](#AddBeneficiaryViaOtpVerificationRequest) | yes | Request body |


Use this API to perform an OTP validation before saving the beneficiary details added for a refund.

*Returned Response:*




[AddBeneficiaryViaOtpVerificationResponse](#AddBeneficiaryViaOtpVerificationResponse)

Success. Check the example shown below or refer `AddBeneficiaryViaOtpVerificationRequest` for more details.






---


#### addBeneficiaryDetails
Save bank details for cancelled/returned order



```swift
payment.addBeneficiaryDetails(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [AddBeneficiaryDetailsRequest](#AddBeneficiaryDetailsRequest) | yes | Request body |


Use this API to save the bank details for a returned or cancelled order to refund the amount.

*Returned Response:*




[RefundAccountResponse](#RefundAccountResponse)

Success. Shows whether the beneficiary details were saved to a returned/cancelled order or not.






---


#### verifyOtpAndAddBeneficiaryForWallet
Send OTP on adding a wallet beneficiary



```swift
payment.verifyOtpAndAddBeneficiaryForWallet(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [WalletOtpRequest](#WalletOtpRequest) | yes | Request body |


Use this API to send an OTP while adding a wallet beneficiary by mobile no. verification.

*Returned Response:*




[WalletOtpResponse](#WalletOtpResponse)

Success. Sends the OTP to the given mobile number. Check the example shown below or refer `WalletOtpResponse` for more details.






---


#### updateDefaultBeneficiary
Set a default beneficiary for a refund



```swift
payment.updateDefaultBeneficiary(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [SetDefaultBeneficiaryRequest](#SetDefaultBeneficiaryRequest) | yes | Request body |


Use this API to set a default beneficiary for getting a refund.

*Returned Response:*




[SetDefaultBeneficiaryResponse](#SetDefaultBeneficiaryResponse)

Success. Check the example shown below or refer `SetDefaultBeneficiaryResponse` for more details.






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |    
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |    
| fromDate | String? | no | The date from which the orders should be retrieved. |    
| toDate | String? | no | The date till which the orders should be retrieved. |    
| orderStatus | Int? | no | A filter to retrieve orders by their current status such as _placed_, _delivered_, etc. |  



Use this API to retrieve all the orders.

*Returned Response:*




[OrderList](#OrderList)

Success. Returns all the orders. Check the example shown below or refer `OrderList` for more details.






---


#### getOrderById
Get details of an order



```swift
order.getOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| orderId | String? | no | A unique number used for identifying and tracking your orders. |  



Use this API to retrieve order details such as tracking details, shipment, store information using Fynd Order ID.

*Returned Response:*




[OrderById](#OrderById)

Success. Check the example shown below or refer `OrderById` for more details.






---


#### getShipmentById
Get details of a shipment



```swift
order.getShipmentById(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| shipmentId | String? | no | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to retrieve shipment details such as price breakup, tracking details, store information, etc. using Shipment ID.

*Returned Response:*




[ShipmentById](#ShipmentById)

Success. Check the example shown below or refer `ShipmentById` for more details.






---


#### getShipmentReasons
Get reasons behind full or partial cancellation of a shipment



```swift
order.getShipmentReasons(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| shipmentId | String? | no | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to retrieve the issues that led to the cancellation of bags within a shipment.

*Returned Response:*




[ShipmentReasons](#ShipmentReasons)

Success. Check the example shown below or refer `ShipmentReasons` for more details.






---


#### updateShipmentStatus
Update the shipment status



```swift
order.updateShipmentStatus(shipmentId: shipmentId, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| shipmentId | String? | no | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  
| body | [ShipmentStatusUpdateBody](#ShipmentStatusUpdateBody) | yes | Request body |


Use this API to update the status of a shipment using its shipment ID.

*Returned Response:*




[ShipmentStatusUpdate](#ShipmentStatusUpdate)

Success. Check the example shown below or refer `ShipmentStatusUpdateBody` for more details.






---


#### trackShipment
Track shipment



```swift
order.trackShipment(shipmentId: shipmentId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| shipmentId | String? | no | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Use this API to track a shipment using its shipment ID.

*Returned Response:*




[ShipmentTrack](#ShipmentTrack)

Success. Check the example shown below or refer `ShipmentTrack` for more details.






---


#### getPosOrderById
Get POS Order



```swift
order.getPosOrderById(orderId: orderId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| orderId | String? | no | A unique number used for identifying and tracking your orders. |  



Use this API to retrieve a POS order and all its details such as tracking details, shipment, store information using Fynd Order ID.

*Returned Response:*




[PosOrderById](#PosOrderById)

Success. Check the example shown below or refer `PosOrderById` for more details.






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [CatalogueOrderRequest](#CatalogueOrderRequest) | yes | Request body |


Use this API to evaluate the amount of reward points that could be earned on any catalogue product.

*Returned Response:*




[CatalogueOrderResponse](#CatalogueOrderResponse)

Success. Check example below or refer `CatalogueOrderRequest` for more details.






---


#### getOfferByName
Get offer by name



```swift
rewards.getOfferByName(name: name) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| name | String? | no | The name given to the offer. |  



Use this API to get the offer details and configuration by entering the name of the offer.

*Returned Response:*




[Offer](#Offer)

Success. Check example below or refer `Offer` for more details.






---


#### getOrderDiscount
Calculates the discount on order-amount



```swift
rewards.getOrderDiscount(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [OrderDiscountRequest](#OrderDiscountRequest) | yes | Request body |


Use this API to calculate the discount on order-amount based on all the amount range configured in order_discount.

*Returned Response:*




[OrderDiscountResponse](#OrderDiscountResponse)

Success. Check example below or refer `OrderDiscountResponse` for more details.






---


#### getUserPoints
Get reward points available with a user



```swift
rewards.getUserPoints() { (response, error) in
    // Use response
}
```




Use this API to retrieve total available points of a user for current application

*Returned Response:*




[PointsResponse](#PointsResponse)

Success. Check example below or refer `PointsResponse` for more details.






---


#### getUserPointsHistory
Get all transactions of reward points



```swift
rewards.getUserPointsHistory(pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pageId | String? | no | PageID is the ID of the requested page. For first request it should be kept empty. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to get a list of points transactions. The list of points history is paginated.

*Returned Response:*




[PointsHistoryResponse](#PointsHistoryResponse)

Success. Check example below or refer `PointsHistoryResponse` for more details.






---


#### getUserReferralDetails
Get referral details of a user



```swift
rewards.getUserReferralDetails() { (response, error) in
    // Use response
}
```




Use this API to retrieve the referral details a user has configured in the application.

*Returned Response:*




[ReferralDetailsResponse](#ReferralDetailsResponse)

Success. Check example below or refer `ReferralDetailsResponse` for more details.






---


#### redeemReferralCode
Redeems a referral code and credits reward points to users



```swift
rewards.redeemReferralCode(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [RedeemReferralCodeRequest](#RedeemReferralCodeRequest) | yes | Request body |


Use this API to enter a referral code following which, the configured points would be credited to a user's reward points account.

*Returned Response:*




[RedeemReferralCodeResponse](#RedeemReferralCodeResponse)

Success. Check example below or refer `RedeemReferralCodeResponse` for more details.






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [ReportAbuseRequest](#ReportAbuseRequest) | yes | Request body |


Use this API to report a specific entity (question/review/comment) for abuse.

*Returned Response:*




[InsertResponse](#InsertResponse)

Success. Returns an abuse ID.






---


#### updateAbuseReport
Update abuse details



```swift
feedback.updateAbuseReport(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [UpdateAbuseStatusRequest](#UpdateAbuseStatusRequest) | yes | Request body |


Use this API to update the abuse details, i.e. status and description.

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success.






---


#### getAbuseReports
Get a list of abuse data



```swift
feedback.getAbuseReports(entityId: entityId, entityType: entityType, id: id, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| entityId | String? | no | ID of the eligible entity as specified in the entity type (question ID/review ID/comment ID). |    
| entityType | String? | no | Type of entity, e.g. question, review or comment. |    
| id | String? | no | abuse id |    
| pageId | String? | no | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to retrieve a list of abuse data from entity type and entity ID.

*Returned Response:*




[ReportAbuseGetResponse](#ReportAbuseGetResponse)

Success. Check the example shown below or refer `ReportAbuseGetResponse` for more details.






---


#### getAttributes
Get a list of attribute data



```swift
feedback.getAttributes(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to retrieve a list of all attribute data, e.g. quality, material, product fitting, packaging, etc.

*Returned Response:*




[AttributeResponse](#AttributeResponse)

Success. Check the example shown below or refer `AttributeResponse` for more details.






---


#### createAttribute
Add a new attribute request



```swift
feedback.createAttribute(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [SaveAttributeRequest](#SaveAttributeRequest) | yes | Request body |


Use this API to add a new attribute (e.g. product quality/material/value for money) with its name, slug and description.

*Returned Response:*




[InsertResponse](#InsertResponse)

Success. Returns an attribute ID.






---


#### getAttribute
Get data of a single attribute



```swift
feedback.getAttribute(slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of an attribute. You can get slug value from the endpoint 'service/application/feedback/v1.0/attributes'. |  



Use this API to retrieve a single attribute data from a given slug.

*Returned Response:*




[Attribute](#Attribute)

Success. Check the example shown below or refer `Attribute` for more details.






---


#### updateAttribute
Update details of an attribute 



```swift
feedback.updateAttribute(slug: slug, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| slug | String? | no | A short, human-readable, URL-friendly identifier of an attribute. You can get slug value from the endpoint 'service/application/feedback/v1.0/attributes'. |  
| body | [UpdateAttributeRequest](#UpdateAttributeRequest) | yes | Request body |


Use this API update the attribute's name and description.

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success.






---


#### createComment
Post a new comment



```swift
feedback.createComment(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [CommentRequest](#CommentRequest) | yes | Request body |


Use this API to add a new comment for a specific entity.

*Returned Response:*




[InsertResponse](#InsertResponse)

Success. Returns a comment ID.






---


#### updateComment
Update the status of a comment



```swift
feedback.updateComment(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [UpdateCommentRequest](#UpdateCommentRequest) | yes | Request body |


Use this API to update the comment status (active or approve) along with new comment if any.

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success.






---


#### getComments
Get a list of comments



```swift
feedback.getComments(entityType: entityType, id: id, entityId: entityId, userId: userId, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| entityType | String? | no | Type of entity, e.g. question, review or comment. |    
| id | String? | no | Comment ID |    
| entityId | String? | no | ID of the eligible entity as specified in the entity type (question ID/review ID/comment ID). |    
| userId | String? | no | User ID - a flag/filter to get comments for a user. |    
| pageId | String? | no | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to retrieve a list of comments for a specific entity type, e.g. products.

*Returned Response:*




[CommentGetResponse](#CommentGetResponse)

Success. Check the example shown below or refer `CommentGetResponse` for more details.






---


#### checkEligibility
Checks eligibility to rate and review, and shows the cloud media configuration



```swift
feedback.checkEligibility(entityType: entityType, entityId: entityId) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| entityType | String? | no | Type of entity, e.g. question, rate, review, answer, or comment. |    
| entityId | String? | no | ID of the eligible entity as specified in the entity type. |  



Use this API to check whether an entity is eligible to be rated and reviewed. Moreover, it shows the cloud media configuration too.

*Returned Response:*




[CheckEligibilityResponse](#CheckEligibilityResponse)

Success. Returns a Product object. Check the example shown below or refer `CheckEligibilityResponse` for more details.






---


#### deleteMedia
Delete Media



```swift
feedback.deleteMedia(ids: ids) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| ids | [String]? | no | List of media ID |  



Use this API to delete media for an entity ID.

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success.






---


#### createMedia
Add Media



```swift
feedback.createMedia(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [AddMediaListRequest](#AddMediaListRequest) | yes | Request body |


Use this API to add media to an entity, e.g. review.

*Returned Response:*




[InsertResponse](#InsertResponse)

Success. Returns media IDs.






---


#### updateMedia
Update Media



```swift
feedback.updateMedia(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [UpdateMediaListRequest](#UpdateMediaListRequest) | yes | Request body |


Use this API to update media (archive/approve) for an entity.

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success.






---


#### getMedias
Get Media



```swift
feedback.getMedias(entityType: entityType, entityId: entityId, id: id, type: type, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| entityType | String? | no | Type of entity, e.g. question or product. |    
| entityId | String? | no | ID of the eligible entity as specified in the entity type(question ID/product ID). |    
| id | String? | no | ID of the media. |    
| type | String? | no | Media type. |    
| pageId | String? | no | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to retrieve all media from an entity.

*Returned Response:*




[MediaGetResponse](#MediaGetResponse)

Success. Check the example shown below or refer `MediaGetResponse` for more details.






---


#### getReviewSummaries
Get a review summary



```swift
feedback.getReviewSummaries(entityType: entityType, entityId: entityId, id: id, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| entityType | String? | no | Type of entity, e.g. product, delivery, seller, order placed, order delivered, application, or template. |    
| entityId | String? | no | ID of the eligible entity as specified in the entity type. |    
| id | String? | no | Review summary identifier. |    
| pageId | String? | no | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Review summary gives ratings and attribute metrics of a review per entity. Use this API to retrieve the following response data: review count, rating average. 'review metrics'/'attribute rating metrics' which contains name, type, average and count.

*Returned Response:*




[ReviewMetricGetResponse](#ReviewMetricGetResponse)

Success. Check the example shown below or refer `ReviewMetricGetResponse` for more details.






---


#### createReview
Add customer reviews



```swift
feedback.createReview(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [UpdateReviewRequest](#UpdateReviewRequest) | yes | Request body |


Use this API to add customer reviews for a specific entity along with the following data: attributes rating, entity rating, title, description, media resources and template ID.

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success. Returns a review ID.






---


#### updateReview
Update customer reviews



```swift
feedback.updateReview(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [UpdateReviewRequest](#UpdateReviewRequest) | yes | Request body |


Use this API to update customer reviews for a specific entity along with following data: attributes rating, entity rating, title, description, media resources and template ID.

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success.






---


#### getReviews
Get list of customer reviews



```swift
feedback.getReviews(entityType: entityType, entityId: entityId, id: id, userId: userId, media: media, rating: rating, attributeRating: attributeRating, facets: facets, sort: sort, active: active, approve: approve, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| entityType | String? | no | Type of entity, e.g. product, delivery, seller, l3, order placed, order delivered, application, or template. |    
| entityId | String? | no | ID of the eligible entity as specified in the entity type. |    
| id | String? | no | ID of the review. |    
| userId | String? | no | ID of the user. |    
| media | String? | no | media type, e.g. image | video | video_file | video_link |    
| rating | [Double]? | no | rating filter, e.g. 1-5 |    
| attributeRating | [String]? | no | Filter for attribute rating. |    
| facets | Bool? | no | This is a boolean value for enabling metadata (facets). Selecting *true* will enable facets. |    
| sort | String? | no | Sort by: default | top | recent |    
| active | Bool? | no | Get the active reviews. |    
| approve | Bool? | no | Get the approved reviews. |    
| pageId | String? | no | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to retrieve a list of customer reviews based on entity and filters provided.

*Returned Response:*




[ReviewGetResponse](#ReviewGetResponse)

Success. Check the example shown below or refer `ReviewGetResponse` for more details.






---


#### getTemplates
Get the feedback templates for a product or l3



```swift
feedback.getTemplates(templateId: templateId, entityId: entityId, entityType: entityType) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| templateId | String? | no | ID of the feedback template. |    
| entityId | String? | no | ID of the eligible entity as specified in the entity type. |    
| entityType | String? | no | Type of entity, e.g. product, delivery, seller, l3, order placed, order delivered, or application. |  



Use this API to retrieve the details of the following feedback template. order, delivered, application, seller, order, placed, product

*Returned Response:*




[TemplateGetResponse](#TemplateGetResponse)

Success. Check the example shown below or refer `TemplateGetResponse` for more details.






---


#### createQuestion
Create a new question



```swift
feedback.createQuestion(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [CreateQNARequest](#CreateQNARequest) | yes | Request body |


Use this API to create a new question with following data- tags, text, type, choices for MCQ type questions, maximum length of answer.

*Returned Response:*




[InsertResponse](#InsertResponse)

Success. Returns a qna ID.






---


#### updateQuestion
Update a question



```swift
feedback.updateQuestion(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [UpdateQNARequest](#UpdateQNARequest) | yes | Request body |


Use this API to update the status of a question, its tags and its choices.

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success.






---


#### getQuestionAndAnswers
Get a list of QnA



```swift
feedback.getQuestionAndAnswers(entityType: entityType, entityId: entityId, id: id, userId: userId, showAnswer: showAnswer, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| entityType | String? | no | Type of entity, e.g. product, l3, etc. |    
| entityId | String? | no | ID of the eligible entity as specified in the entity type. |    
| id | String? | no | QNA ID |    
| userId | String? | no | User ID |    
| showAnswer | Bool? | no | This is a boolean value. Select *true* to display answers given. |    
| pageId | String? | no | Pagination page ID to retrieve next set of results. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to retrieve a list of questions and answers for a given entity.

*Returned Response:*




[QNAGetResponse](#QNAGetResponse)

Success. Check the example shown below or refer `QNAGetResponse` for more details.






---


#### getVotes
Get a list of votes



```swift
feedback.getVotes(id: id, refType: refType, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| id | String? | no | vote ID |    
| refType | String? | no | Entity type, e.g. review | comment. |    
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |    
| pageSize | Int? | no | The number of items to retrieve in each page. |  



Use this API to retrieve a list of votes of a current logged in user. Votes can be filtered using `ref_type`, i.e. review | comment.

*Returned Response:*




[VoteResponse](#VoteResponse)

Success. Check the example shown below or refer `VoteResponse` for more details.






---


#### createVote
Create a new vote



```swift
feedback.createVote(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [VoteRequest](#VoteRequest) | yes | Request body |


Use this API to create a new vote, where the action could be an upvote or a downvote. This is useful when you want to give a vote (say upvote) to a review (ref_type) of a product (entity_type).

*Returned Response:*




[InsertResponse](#InsertResponse)

Success. Returns a vote ID.






---


#### updateVote
Update a vote



```swift
feedback.updateVote(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [UpdateVoteRequest](#UpdateVoteRequest) | yes | Request body |


Use this API to update a vote with a new action, i.e. either an upvote or a downvote.

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success.






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |    
| i | Bool? | no |  |    
| b | Bool? | no |  |    
| assignCardId | Int? | no |  |  



Use this API to get details of all the items added to a cart.

*Returned Response:*




[CartResponse](#CartResponse)

Success. Returns a Cart object. Check the example shown below or refer `CartResponse` for more details.






---


#### getCartLastModified
Fetch last-modified timestamp



```swift
poscart.getCartLastModified(uid: uid) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |  



Use this API to fetch Last-Modified timestamp in header metadata.

*Returned Response:*








---


#### addItems
Add items to cart



```swift
poscart.addItems(i: i, b: b, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| i | Bool? | no |  |    
| b | Bool? | no |  |  
| body | [AddCartRequest](#AddCartRequest) | yes | Request body |


Use this API to add items to the cart.

*Returned Response:*




[AddCartResponse](#AddCartResponse)

Success. Returns a cart object as shown below. Refer `AddCartResponse` for more details.






---


#### updateCart
Update items in the cart



```swift
poscart.updateCart(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |    
| i | Bool? | no |  |    
| b | Bool? | no |  |  
| body | [UpdateCartRequest](#UpdateCartRequest) | yes | Request body |


Use this API to update items added to the cart with the help of a request object containing attributes like item_quantity and item_size. These attributes will be fetched from the following APIs</p> <ul> <li><font color="monochrome">operation</font> Operation for current api call. <b>update_item</b> for update items. <b>remove_item</b> for removing items.</li> <li> <font color="monochrome">item_id</font>  "/platform/content/v1/products/"</li> <li> <font color="monochrome">item_size</font>   "/platform/content/v1/products/{slug}/sizes/"</li> <li> <font color="monochrome">quantity</font>  item quantity (must be greater than or equal to 1)</li> <li> <font color="monochrome">article_id</font>   "/content​/v1​/products​/{identifier}​/sizes​/price​/"</li> <li> <font color="monochrome">item_index</font>  item position in the cart (must be greater than or equal to 0)</li> </ul>

*Returned Response:*




[UpdateCartResponse](#UpdateCartResponse)

Success. Updates and returns a cart object as shown below. Refer `UpdateCartResponse` for more details.






---


#### getItemCount
Count items in the cart



```swift
poscart.getItemCount(uid: uid) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no | The unique identifier of the cart. |  



Use this API to get the total number of items present in cart.

*Returned Response:*




[CartItemCountResponse](#CartItemCountResponse)

Success. Returns the total count of items in a user's cart.






---


#### getCoupons
Fetch Coupon



```swift
poscart.getCoupons(uid: uid) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |  



Use this API to get a list of available coupons along with their details.

*Returned Response:*




[GetCouponResponse](#GetCouponResponse)

Success. Returns a coupon object which has a list of all the eligible coupons. Refer `GetCouponResponse` for more details.






---


#### applyCoupon
Apply Coupon



```swift
poscart.applyCoupon(i: i, b: b, p: p, uid: uid, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| i | Bool? | no |  |    
| b | Bool? | no |  |    
| p | Bool? | no |  |    
| uid | Int? | no |  |  
| body | [ApplyCouponRequest](#ApplyCouponRequest) | yes | Request body |


Use this API to apply coupons on items in the cart.

*Returned Response:*




---


#### removeCoupon
Remove Coupon Applied



```swift
poscart.removeCoupon(uid: uid) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no | The unique identifier of the cart |  



Remove Coupon applied on the cart by passing uid in request body.

*Returned Response:*




[CartResponse](#CartResponse)

Success. Returns coupons removed from the cart along with item details and price breakup. Refer `CartResponse` for more details.






---


#### getBulkDiscountOffers
Get discount offers based on quantity



```swift
poscart.getBulkDiscountOffers(itemId: itemId, articleId: articleId, uid: uid, slug: slug) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| itemId | Int? | no | The Item ID of the product |    
| articleId | String? | no | Article Mongo ID |    
| uid | Int? | no | UID of the product |    
| slug | String? | no | A short, human-readable, URL-friendly identifier of a product. You can get slug value from the endpoint /service/application/catalog/v1.0/products/ |  



Use this API to get a list of applicable offers along with current, next and best offer for given product. Either one of uid, item_id, slug should be present.

*Returned Response:*




[BulkPriceResponse](#BulkPriceResponse)

Success. Returns a data object containing the seller details and available offers (if exists) on bulk products. Refer `BulkPriceResponse` for more details.






---


#### applyRewardPoints
Apply reward points at cart



```swift
poscart.applyRewardPoints(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |    
| i | Bool? | no |  |    
| b | Bool? | no |  |  
| body | [RewardPointRequest](#RewardPointRequest) | yes | Request body |


Use this API to redeem a fixed no. of reward points by applying it to the cart.

*Returned Response:*




[CartResponse](#CartResponse)

Success. Returns a Cart object. Check the example shown below or refer `CartResponse` for more details.






---


#### getAddresses
Fetch address



```swift
poscart.getAddresses(uid: uid, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |    
| mobileNo | String? | no |  |    
| checkoutMode | String? | no |  |    
| tags | String? | no |  |    
| isDefault | Bool? | no |  |  



Use this API to get all the addresses associated with an account. If successful, returns a Address resource in the response body specified in GetAddressesResponse.attibutes listed below are optional <ul> <li> <font color="monochrome">uid</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Returned Response:*




[GetAddressesResponse](#GetAddressesResponse)

Success. Returns an Address object containing a list of address saved in the account. Refer `GetAddressesResponse` for more details.






---


#### addAddress
Add address to an account



```swift
poscart.addAddress(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [Address](#Address) | yes | Request body |


Use this API to add an address to an account.

*Returned Response:*




[SaveAddressResponse](#SaveAddressResponse)

Success. Returns the address ID, a flag whether the address is set as default, and a success message. Refer `SaveAddressResponse` for more details.






---


#### getAddressById
Fetch a single address by its ID



```swift
poscart.getAddressById(id: id, uid: uid, mobileNo: mobileNo, checkoutMode: checkoutMode, tags: tags, isDefault: isDefault) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| id | Int? | no |  |    
| uid | Int? | no |  |    
| mobileNo | String? | no |  |    
| checkoutMode | String? | no |  |    
| tags | String? | no |  |    
| isDefault | Bool? | no |  |  



Use this API to get an addresses using its ID. If successful, returns a Address resource in the response body specified in `Address`. Attibutes listed below are optional <ul> <li> <font color="monochrome">mobile_no</font></li> <li> <font color="monochrome">checkout_mode</font></li> <li> <font color="monochrome">tags</font></li> <li> <font color="monochrome">default</font></li> </ul>

*Returned Response:*




[Address](#Address)

Success. Returns an Address object containing a list of address saved in the account. Refer `Address` for more details.






---


#### updateAddress
Update address added to an account



```swift
poscart.updateAddress(id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| id | Int? | no | ID allotted to the selected address |  
| body | [Address](#Address) | yes | Request body |


Use this API to update an existing address in the account. Request object should contain attributes mentioned in  <font color="blue">Address </font> can be updated. These attributes are:</p> <ul> <li> <font color="monochrome">is_default_address</font></li> <li> <font color="monochrome">landmark</font></li> <li> <font color="monochrome">area</font></li> <li> <font color="monochrome">pincode</font></li> <li> <font color="monochrome">email</font></li> <li> <font color="monochrome">address_type</font></li> <li> <font color="monochrome">name</font></li> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">address</font></li> </ul>

*Returned Response:*




---


#### removeAddress
Remove address associated with an account



```swift
poscart.removeAddress(id: id) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| id | Int? | no | ID allotted to the selected address |  



Use this API to delete an address by its ID. This will returns an object that will indicate whether the address was deleted successfully or not.

*Returned Response:*




---


#### selectAddress
Select an address from available addresses



```swift
poscart.selectAddress(uid: uid, i: i, b: b, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |    
| i | Bool? | no |  |    
| b | Bool? | no |  |  
| body | [SelectCartAddressRequest](#SelectCartAddressRequest) | yes | Request body |


<p>Select Address from all addresses associated with the account in order to ship the cart items to that address, otherwise default address will be selected implicitly. See `SelectCartAddressRequest` in schema of request body for the list of attributes needed to select Address from account. On successful request, this API returns a Cart object. Below address attributes are required. <ul> <li> <font color="monochrome">address_id</font></li> <li> <font color="monochrome">billing_address_id</font></li> <li> <font color="monochrome">uid</font></li> </ul>

*Returned Response:*




---


#### selectPaymentMode
Update cart payment



```swift
poscart.selectPaymentMode(uid: uid, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | String? | no |  |  
| body | [UpdateCartPaymentRequest](#UpdateCartPaymentRequest) | yes | Request body |


Use this API to update cart payment.

*Returned Response:*




[CartResponse](#CartResponse)

Success. Returns a Cart object as shown below. Refer `CartResponse` for more details.






---


#### validateCouponForPayment
Verify the coupon eligibility against the payment mode



```swift
poscart.validateCouponForPayment(uid: uid, addressId: addressId, paymentMode: paymentMode, paymentIdentifier: paymentIdentifier, aggregatorName: aggregatorName, merchantCode: merchantCode) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | String? | no |  |    
| addressId | String? | no |  |    
| paymentMode | String? | no |  |    
| paymentIdentifier | String? | no |  |    
| aggregatorName | String? | no |  |    
| merchantCode | String? | no |  |  



Use this API to validate a coupon against the payment mode such as NetBanking, Wallet, UPI etc.

*Returned Response:*




[PaymentCouponValidate](#PaymentCouponValidate)

Success. Returns a success message and the coupon validity. Refer `PaymentCouponValidate` for more details.






---


#### getShipments
Get delivery date and options before checkout



```swift
poscart.getShipments(pickAtStoreUid: pickAtStoreUid, orderingStoreId: orderingStoreId, p: p, uid: uid, addressId: addressId, areaCode: areaCode, orderType: orderType) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pickAtStoreUid | Int? | no |  |    
| orderingStoreId | Int? | no |  |    
| p | Bool? | no | This is a boolean value. Select `true` for getting a payment option in response. |    
| uid | Int? | no | The unique identifier of the cart |    
| addressId | Int? | no | ID allotted to the selected address |    
| areaCode | String? | no | The PIN Code of the destination address, e.g. 400059 |    
| orderType | String? | no | The order type of shipment HomeDelivery - If the customer wants the order home-delivered PickAtStore - If the customer wants the handover of an order at the store itself. |  



Use this API to get shipment details, expected delivery date, items and price breakup of the shipment.

*Returned Response:*




[CartShipmentsResponse](#CartShipmentsResponse)

Success. Returns delivery promise along with shipment details and price breakup. Refer `CartShipmentsResponse` for more details.






---


#### updateShipments
Update shipment delivery type and quantity before checkout



```swift
poscart.updateShipments(i: i, p: p, uid: uid, addressId: addressId, orderType: orderType, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| i | Bool? | no | This is a boolean value. Select `true` to retrieve all the items added in the cart. |    
| p | Bool? | no | This is a boolean value. Select `true` for getting a payment option in response. |    
| uid | Int? | no | The unique identifier of the cart |    
| addressId | Int? | no | ID allotted to an address |    
| orderType | String? | no | The order type of shipment HomeDelivery - If the customer wants the order home-delivered PickAtStore - If the customer wants the handover of an order at the store itself. |  
| body | [UpdateCartShipmentRequest](#UpdateCartShipmentRequest) | yes | Request body |


Use this API to update the delivery type and quantity as per customer's preference for either store pick-up or home-delivery.

*Returned Response:*




[CartShipmentsResponse](#CartShipmentsResponse)

Success. Returns delivery promise along with shipment details and price breakup. Refer `CartShipmentsResponse` for more details.






---


#### checkoutCart
Checkout all items in the cart



```swift
poscart.checkoutCart(uid: uid, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no |  |  
| body | [CartPosCheckoutRequest](#CartPosCheckoutRequest) | yes | Request body |


Use this API to checkout all items in the cart for payment and order generation. For COD, order will be generated directly, whereas for other checkout modes, user will be redirected to a payment gateway.

*Returned Response:*




[CartCheckoutResponse](#CartCheckoutResponse)

Success. Returns the status of cart checkout. Refer `CartCheckoutResponse` for more details.






---


#### updateCartMeta
Update the cart meta



```swift
poscart.updateCartMeta(uid: uid, body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| uid | Int? | no | The unique identifier of the cart |  
| body | [CartMetaRequest](#CartMetaRequest) | yes | Request body |


Use this API to update cart meta like checkout_mode and gstin.

*Returned Response:*




[CartMetaResponse](#CartMetaResponse)

Returns a message indicating the success of cart meta updation as shown below.






---


#### getAvailableDeliveryModes
Get available delivery modes for cart



```swift
poscart.getAvailableDeliveryModes(areaCode: areaCode, uid: uid) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| areaCode | String? | no |  |    
| uid | Int? | no |  |  



Use this API to get the delivery modes (home-delivery/store-pickup) along with a list of pickup stores available for a given cart at a given PIN Code. User can then view the address of a pickup store with the help of store-address API.

*Returned Response:*




[CartDeliveryModesResponse](#CartDeliveryModesResponse)

Success. Returns the available delivery mode available for a given PIN Code, along with the UID of all the eligible pickup stores.






---


#### getStoreAddressByUid
Get list of stores for give uids



```swift
poscart.getStoreAddressByUid(storeUid: storeUid) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| storeUid | Int? | no |  |  



Use this API to get the store details by entering the unique identifier of the pickup stores shown in the response of available-delivery-mode API.

*Returned Response:*




[StoreDetailsResponse](#StoreDetailsResponse)

Success. Returns available store information with its address as shown below.






---


#### getCartShareLink
Generate token for sharing the cart



```swift
poscart.getCartShareLink(body: body) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [GetShareCartLinkRequest](#GetShareCartLinkRequest) | yes | Request body |


Use this API to generate a shared cart snapshot and return a shortlink token. The link can be shared with other users for getting the same items in their cart.

*Returned Response:*




[GetShareCartLinkResponse](#GetShareCartLinkResponse)

Returns a URL to share and a token as shown below.






---


#### getCartSharedItems
Get details of a shared cart



```swift
poscart.getCartSharedItems(token: token) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| token | String? | no | Token of the shared short link |  



Use this API to get the shared cart details as per the token generated using the share-cart API.

*Returned Response:*




[SharedCartResponse](#SharedCartResponse)

Success. Returns a Cart object as per the valid token. Refer `SharedCartResponse` for more details.






---


#### updateCartWithSharedItems
Merge or replace existing cart



```swift
poscart.updateCartWithSharedItems(token: token, action: action) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| token | String? | no | Token of the shared short link |    
| action | String? | no | Operation to perform on the existing cart merge or replace. |  



Use this API to merge the shared cart with existing cart, or replace the existing cart with the shared cart. The `action` parameter is used to indicate the operation Merge or Replace.

*Returned Response:*




[SharedCartResponse](#SharedCartResponse)

Success. Returns a merged or replaced cart as per the valid token. Refer `SharedCartResponse` for more details.






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



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |
| body | [GetTatProductReqBody](#GetTatProductReqBody) | yes | Request body |


Use this API to know the delivery turnaround time (TAT) by entering the product details along with the PIN Code of the location.

*Returned Response:*




[GetTatProductResponse](#GetTatProductResponse)

Success. Check the example shown below or refer `GetTatProductResponse` for more details.






---


#### getPincodeCity
Get city from PIN Code



```swift
logistic.getPincodeCity(pincode: pincode) { (response, error) in
    // Use response
}
```



| Argument  |  Type  | Required | Description |
| --------- | -----  | -------- | ----------- |  
| pincode | String? | no | The PIN Code of the area, e.g. 400059 |  



Use this API to retrieve a city by its PIN Code.

*Returned Response:*




[GetPincodeCityResponse](#GetPincodeCityResponse)

Success. Returns a JSON object containing the city name, state and country identified by its PIN Code. Check the example shown below or refer `GetPincodeCityResponse` for more details.






---



---


---

### Schemas


 
 
 #### [ProductListingActionPage](#ProductListingActionPage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | params | [String: Any] |  |
 | type | String |  |
 | query | [String: Any] |  |

---


 
 
 #### [ProductListingAction](#ProductListingAction)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page | ProductListingActionPage |  |
 | type | String |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | source | String |  |

---


 
 
 #### [Media](#Media)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | url | String |  |
 | meta | Meta |  |

---


 
 
 #### [ProductBrand](#ProductBrand)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | action | ProductListingAction |  |
 | logo | Media |  |
 | name | String |  |

---


 
 
 #### [Price](#Price)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | min | Double |  |
 | currency_code | String |  |
 | max | Double |  |
 | currency_symbol | String |  |

---


 
 
 #### [ProductListingPrice](#ProductListingPrice)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | marked | Price |  |
 | effective | Price |  |

---


 
 
 #### [ProductDetailAttribute](#ProductDetailAttribute)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | String |  |
 | type | String |  |
 | key | String |  |

---


 
 
 #### [ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | details | [ProductDetailAttribute] |  |
 | title | String |  |

---


 
 
 #### [ProductDetail](#ProductDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | rating | Double |  |
 | categories | [ProductBrand] |  |
 | short_description | String |  |
 | teaser_tag | String |  |
 | image_nature | String |  |
 | color | String |  |
 | brand | ProductBrand |  |
 | uid | Int |  |
 | item_code | String |  |
 | medias | [Media] |  |
 | name | String |  |
 | highlights | [String] |  |
 | type | String |  |
 | has_variant | Bool |  |
 | rating_count | Int |  |
 | item_type | String |  |
 | similars | [String] |  |
 | description | String |  |
 | attributes | [String: Any] |  |
 | tryouts | [String] |  |
 | price | ProductListingPrice |  |
 | action | ProductListingAction |  |
 | grouped_attributes | [ProductDetailGroupedAttribute] |  |
 | discount | String |  |
 | product_online_date | String |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | error | String |  |

---


 
 
 #### [SizeChartValues](#SizeChartValues)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | col_4 | String |  |
 | col_3 | String |  |
 | col_6 | String |  |
 | col_2 | String |  |
 | col_1 | String |  |
 | col_5 | String |  |

---


 
 
 #### [ColumnHeader](#ColumnHeader)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | String |  |
 | convertable | Bool |  |

---


 
 
 #### [ColumnHeaders](#ColumnHeaders)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | col_4 | ColumnHeader |  |
 | col_3 | ColumnHeader |  |
 | col_6 | ColumnHeader |  |
 | col_2 | ColumnHeader |  |
 | col_1 | ColumnHeader |  |
 | col_5 | ColumnHeader |  |

---


 
 
 #### [SizeChart](#SizeChart)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | unit | String |  |
 | sizes | [SizeChartValues] |  |
 | image | String |  |
 | size_tip | String |  |
 | headers | ColumnHeaders |  |
 | description | String |  |
 | title | String |  |

---


 
 
 #### [ProductSize](#ProductSize)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | String |  |
 | is_available | Bool |  |
 | quantity | Int |  |
 | display | String |  |

---


 
 
 #### [ProductSizeStores](#ProductSizeStores)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | count | Int |  |

---


 
 
 #### [ProductSizes](#ProductSizes)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | size_chart | SizeChart |  |
 | price | ProductListingPrice |  |
 | sizes | [ProductSize] |  |
 | stores | ProductSizeStores |  |
 | discount | String |  |
 | sellable | Bool |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | time | Int |  |
 | returnable | Bool |  |
 | unit | String |  |

---


 
 
 #### [ProductStockPrice](#ProductStockPrice)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | marked | Double |  |
 | effective | Double |  |
 | currency | String |  |

---


 
 
 #### [StrategyWiseListing](#StrategyWiseListing)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | tat | Int |  |
 | quantity | Int |  |
 | distance | Int |  |
 | pincode | Int |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | count | Int |  |
 | name | String |  |

---


 
 
 #### [Seller](#Seller)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | count | Int |  |
 | name | String |  |

---


 
 
 #### [ArticleAssignment](#ArticleAssignment)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | level | String |  |
 | strategy | String |  |

---


 
 
 #### [ProductSetDistributionSize](#ProductSetDistributionSize)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | pieces | Int |  |
 | size | String |  |

---


 
 
 #### [ProductSetDistribution](#ProductSetDistribution)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | sizes | [ProductSetDistributionSize] |  |

---


 
 
 #### [ProductSet](#ProductSet)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | size_distribution | ProductSetDistribution |  |
 | quantity | Int |  |

---


 
 
 #### [Details](#Details)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | String |  |
 | type | String |  |
 | key | String |  |

---


 
 
 #### [MarketPlaceSttributes](#MarketPlaceSttributes)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | details | [Details] |  |
 | title | String |  |

---


 
 
 #### [ProductSizePriceResponse](#ProductSizePriceResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | pincode | Int |  |
 | article_id | String |  |
 | return_config | ReturnConfig |  |
 | price | ProductStockPrice |  |
 | strategy_wise_listing | [StrategyWiseListing] |  |
 | store | Store |  |
 | seller_count | Int |  |
 | seller | Seller |  |
 | special_badge | String |  |
 | discount | String |  |
 | quantity | Int |  |
 | item_type | String |  |
 | long_lat | [Double] |  |
 | article_assignment | ArticleAssignment |  |
 | set | ProductSet |  |
 | marketplace_attributes | [MarketPlaceSttributes] |  |
 | price_per_price | ProductStockPrice |  |

---


 
 
 #### [ProductSizeSellerFilter](#ProductSizeSellerFilter)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | String |  |
 | is_selected | Bool |  |
 | name | String |  |

---


 
 
 #### [ProductSizeSellersResponse](#ProductSizeSellersResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page | Page |  |
 | items | [ProductSizePriceResponse] |  |
 | sort_on | [ProductSizeSellerFilter] |  |

---


 
 
 #### [AttributeDetail](#AttributeDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | String |  |
 | logo | String |  |
 | description | String |  |
 | display | String |  |

---


 
 
 #### [AttributeMetadata](#AttributeMetadata)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | details | [AttributeDetail] |  |
 | title | String |  |

---


 
 
 #### [ProductsComparisonResponse](#ProductsComparisonResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ProductDetail] |  |
 | attributes_metadata | [AttributeMetadata] |  |

---


 
 
 #### [ProductCompareResponse](#ProductCompareResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ProductDetail] |  |
 | subtitle | String |  |
 | title | String |  |
 | attributes_metadata | [AttributeMetadata] |  |

---


 
 
 #### [ProductFrequentlyComparedSimilarResponse](#ProductFrequentlyComparedSimilarResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | similars | ProductCompareResponse |  |

---


 
 
 #### [ProductSimilarItem](#ProductSimilarItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ProductDetail] |  |
 | subtitle | String |  |
 | title | String |  |

---


 
 
 #### [SimilarProductByTypeResponse](#SimilarProductByTypeResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | similars | ProductSimilarItem |  |

---


 
 
 #### [ProductVariantItemResponse](#ProductVariantItemResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | slug | String |  |
 | medias | [Media] |  |
 | color_name | String |  |
 | name | String |  |
 | action | ProductListingAction |  |
 | value | String |  |
 | is_available | Bool |  |
 | color | String |  |

---


 
 
 #### [ProductVariantResponse](#ProductVariantResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ProductVariantItemResponse] |  |
 | key | String |  |
 | display_type | String |  |
 | header | String |  |

---


 
 
 #### [ProductVariantsResponse](#ProductVariantsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | variants | [ProductVariantResponse] |  |

---


 
 
 #### [CompanyDetail](#CompanyDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | Int |  |
 | name | String |  |

---


 
 
 #### [StoreDetail](#StoreDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | code | String |  |
 | id | Int |  |
 | city | String |  |
 | name | String |  |

---


 
 
 #### [ProductStockStatusItem](#ProductStockStatusItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | String |  |
 | item_id | Int |  |
 | company | CompanyDetail |  |
 | price | ProductStockPrice |  |
 | store | StoreDetail |  |
 | seller | Seller |  |
 | quantity | Int |  |
 | identifier | [String: Any] |  |
 | size | String |  |

---


 
 
 #### [ProductStockStatusResponse](#ProductStockStatusResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ProductStockStatusItem] |  |

---


 
 
 #### [ProductStockPolling](#ProductStockPolling)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ProductStockStatusItem] |  |
 | page | Page |  |

---


 
 
 #### [ProductSortOn](#ProductSortOn)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | String |  |
 | is_selected | Bool |  |
 | name | String |  |

---


 
 
 #### [ProductListingDetail](#ProductListingDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | rating | Double |  |
 | categories | [ProductBrand] |  |
 | short_description | String |  |
 | teaser_tag | String |  |
 | image_nature | String |  |
 | color | String |  |
 | brand | ProductBrand |  |
 | uid | Int |  |
 | item_code | String |  |
 | medias | [Media] |  |
 | name | String |  |
 | highlights | [String] |  |
 | type | String |  |
 | has_variant | Bool |  |
 | rating_count | Int |  |
 | item_type | String |  |
 | similars | [String] |  |
 | sellable | Bool |  |
 | description | String |  |
 | attributes | [String: Any] |  |
 | tryouts | [String] |  |
 | price | ProductListingPrice |  |
 | action | ProductListingAction |  |
 | grouped_attributes | [ProductDetailGroupedAttribute] |  |
 | discount | String |  |
 | product_online_date | String |  |

---


 
 
 #### [ProductFiltersKey](#ProductFiltersKey)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | kind | String |  |
 | logo | String |  |
 | display | String |  |

---


 
 
 #### [ProductFiltersValue](#ProductFiltersValue)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | currency_code | String |  |
 | is_selected | Bool |  |
 | display_format | String |  |
 | selected_min | Int |  |
 | count | Int |  |
 | min | Int |  |
 | query_format | String |  |
 | selected_max | Int |  |
 | currency_symbol | String |  |
 | value | String |  |
 | max | Int |  |
 | display | String |  |

---


 
 
 #### [ProductFilters](#ProductFilters)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | ProductFiltersKey |  |
 | values | [ProductFiltersValue] |  |

---


 
 
 #### [ProductListingResponse](#ProductListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page | Page |  |
 | sort_on | [ProductSortOn] |  |
 | items | [ProductListingDetail] |  |
 | filters | [ProductFilters] |  |

---


 
 
 #### [ImageUrls](#ImageUrls)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | landscape | Media |  |
 | portrait | Media |  |

---


 
 
 #### [BrandItem](#BrandItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | slug | String |  |
 | action | ProductListingAction |  |
 | name | String |  |
 | departments | [String] |  |
 | discount | String |  |
 | logo | Media |  |
 | banners | ImageUrls |  |

---


 
 
 #### [BrandListingResponse](#BrandListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [BrandItem] |  |
 | page | Page |  |

---


 
 
 #### [BrandDetailResponse](#BrandDetailResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | banners | ImageUrls |  |
 | logo | Media |  |
 | name | String |  |

---


 
 
 #### [DepartmentIdentifier](#DepartmentIdentifier)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | slug | String |  |

---


 
 
 #### [ThirdLevelChild](#ThirdLevelChild)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | slug | String |  |
 | name | String |  |
 | action | ProductListingAction |  |
 | childs | [[String: Any]] |  |
 | _custom_json | [String: Any] |  |
 | banners | ImageUrls |  |

---


 
 
 #### [SecondLevelChild](#SecondLevelChild)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | slug | String |  |
 | name | String |  |
 | action | ProductListingAction |  |
 | childs | [ThirdLevelChild] |  |
 | _custom_json | [String: Any] |  |
 | banners | ImageUrls |  |

---


 
 
 #### [Child](#Child)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | slug | String |  |
 | name | String |  |
 | action | ProductListingAction |  |
 | childs | [SecondLevelChild] |  |
 | _custom_json | [String: Any] |  |
 | banners | ImageUrls |  |

---


 
 
 #### [CategoryItems](#CategoryItems)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | slug | String |  |
 | action | ProductListingAction |  |
 | name | String |  |
 | childs | [Child] |  |
 | banners | ImageUrls |  |

---


 
 
 #### [DepartmentCategoryTree](#DepartmentCategoryTree)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [CategoryItems] |  |
 | department | String |  |

---


 
 
 #### [CategoryListingResponse](#CategoryListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | departments | [DepartmentIdentifier] |  |
 | data | [DepartmentCategoryTree] |  |

---


 
 
 #### [CategoryMetaResponse](#CategoryMetaResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | banners | ImageUrls |  |
 | logo | Media |  |
 | name | String |  |

---


 
 
 #### [HomeListingResponse](#HomeListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ProductListingDetail] |  |
 | message | String |  |
 | page | Page |  |

---


 
 
 #### [Department](#Department)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | slug | String |  |
 | name | String |  |
 | priority_order | Int |  |
 | logo | Media |  |

---


 
 
 #### [DepartmentResponse](#DepartmentResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [Department] |  |

---


 
 
 #### [AutocompleteItem](#AutocompleteItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | logo | Media |  |
 | display | String |  |
 | action | ProductListingAction |  |

---


 
 
 #### [AutoCompleteResponse](#AutoCompleteResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [AutocompleteItem] |  |

---


 
 
 #### [GetCollectionDetailNest](#GetCollectionDetailNest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | is_active | Bool |  |
 | logo | Media |  |
 | uid | String |  |
 | name | String |  |
 | type | String |  |
 | allow_sort | Bool |  |
 | tag | [String] |  |
 | visible_facets_keys | [String] |  |
 | banners | ImageUrls |  |
 | query | [String: Any] |  |
 | description | String |  |
 | _schedule | [String: Any] |  |
 | badge | [String: Any] |  |
 | app_id | String |  |
 | action | ProductListingAction |  |
 | allow_facets | Bool |  |
 | cron | [String: Any] |  |
 | meta | [String: Any] |  |

---


 
 
 #### [CollectionListingFilterType](#CollectionListingFilterType)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_selected | Bool |  |
 | display | String |  |
 | name | String |  |

---


 
 
 #### [CollectionListingFilterTag](#CollectionListingFilterTag)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_selected | Bool |  |
 | display | String |  |
 | name | String |  |

---


 
 
 #### [CollectionListingFilter](#CollectionListingFilter)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | [CollectionListingFilterType] |  |
 | tags | [CollectionListingFilterTag] |  |

---


 
 
 #### [GetCollectionListingResponse](#GetCollectionListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [GetCollectionDetailNest] |  |
 | page | Page |  |
 | filters | CollectionListingFilter |  |

---


 
 
 #### [CollectionDetailResponse](#CollectionDetailResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | visible_facets_keys | [String] |  |
 | slug | String |  |
 | query | [String: Any] |  |
 | name | String |  |
 | badge | [String: Any] |  |
 | type | String |  |
 | allow_sort | Bool |  |
 | is_active | Bool |  |
 | description | String |  |
 | logo | Media |  |
 | tag | [String] |  |
 | allow_facets | Bool |  |
 | _schedule | [String: Any] |  |
 | app_id | String |  |
 | banners | ImageUrls |  |
 | meta | [String: Any] |  |
 | cron | [String: Any] |  |

---


 
 
 #### [GetFollowListingResponse](#GetFollowListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page | Page |  |
 | items | [ProductListingDetail] |  |

---


 
 
 #### [FollowPostResponse](#FollowPostResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |
 | id | String |  |

---


 
 
 #### [FollowerCountResponse](#FollowerCountResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | count | Int |  |

---


 
 
 #### [FollowIdsData](#FollowIdsData)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | brands | [Int] |  |
 | collections | [Int] |  |
 | products | [Int] |  |

---


 
 
 #### [FollowIdsResponse](#FollowIdsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | data | FollowIdsData |  |

---


 
 
 #### [LatLong](#LatLong)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | coordinates | [Double] |  |
 | type | String |  |

---


 
 
 #### [Store1](#Store1)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | store_code | String |  |
 | lat_long | LatLong |  |
 | address | String |  |
 | name | String |  |
 | country | String |  |
 | store_email | String |  |
 | state | String |  |
 | city | String |  |
 | pincode | Int |  |

---


 
 
 #### [StoreListingResponse](#StoreListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [Store1] |  |
 | page | Page |  |

---



---



 
 
 #### [PaymentSelectionLock](#PaymentSelectionLock)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | enabled | Bool |  |
 | payment_identifier | String |  |
 | default_options | String |  |

---


 
 
 #### [ActionQuery](#ActionQuery)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | product_slug | [String] | Contains list of product slug |

---


 
 
 #### [ProductAction](#ProductAction)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | url | String |  |
 | query | ActionQuery |  |

---


 
 
 #### [Image](#Image)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | aspect_ratio | String |  |
 | secure_url | String |  |
 | url | String |  |

---


 
 
 #### [CategoryInfo](#CategoryInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int | Product Category Id |
 | name | String |  |

---


 
 
 #### [BaseInfo](#BaseInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int |  |
 | name | String |  |

---


 
 
 #### [Product](#Product)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | action | ProductAction |  |
 | type | String |  |
 | images | [Image] |  |
 | categories | [CategoryInfo] |  |
 | name | String |  |
 | uid | Int |  |
 | brand | BaseInfo |  |
 | slug | String | Unique product url name generated via product name and other meta data |

---


 
 
 #### [ProductPrice](#ProductPrice)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | currency_symbol | String |  |
 | selling | Double |  |
 | currency_code | String |  |
 | effective | Double |  |
 | add_on | Double |  |
 | marked | Double |  |

---


 
 
 #### [ProductPriceInfo](#ProductPriceInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | converted | ProductPrice |  |
 | base | ProductPrice |  |

---


 
 
 #### [BasePrice](#BasePrice)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | currency_symbol | String |  |
 | currency_code | String |  |
 | effective | Double |  |
 | marked | Double |  |

---


 
 
 #### [ArticlePriceInfo](#ArticlePriceInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | converted | BasePrice |  |
 | base | BasePrice |  |

---


 
 
 #### [ProductArticle](#ProductArticle)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | price | ArticlePriceInfo |  |
 | type | String |  |
 | size | String |  |
 | store | BaseInfo |  |
 | seller | BaseInfo |  |
 | extra_meta | [String: Any] |  |
 | uid | String |  |
 | quantity | Int |  |

---


 
 
 #### [ProductAvailability](#ProductAvailability)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | sizes | [String] |  |
 | out_of_stock | Bool |  |
 | is_valid | Bool |  |
 | deliverable | Bool |  |
 | other_store_quantity | Int |  |

---


 
 
 #### [PromoMeta](#PromoMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [CartProductIdentifer](#CartProductIdentifer)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | identifier | String | Article idenfier generated by cart |

---


 
 
 #### [CartProductInfo](#CartProductInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | discount | String |  |
 | product | Product |  |
 | coupon_message | String |  |
 | price | ProductPriceInfo |  |
 | price_per_unit | ProductPriceInfo |  |
 | key | String |  |
 | article | ProductArticle |  |
 | message | String |  |
 | is_set | Bool |  |
 | availability | ProductAvailability |  |
 | promo_meta | PromoMeta |  |
 | bulk_offer | [String: Any] |  |
 | identifiers | CartProductIdentifer |  |
 | quantity | Int |  |

---


 
 
 #### [CartCurrency](#CartCurrency)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | symbol | String |  |
 | code | String | Currency code defined by ISO 4217:2015 |

---


 
 
 #### [PromiseFormatted](#PromiseFormatted)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | min | String |  |
 | max | String |  |

---


 
 
 #### [PromiseTimestamp](#PromiseTimestamp)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | min | Double |  |
 | max | Double |  |

---


 
 
 #### [ShipmentPromise](#ShipmentPromise)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | formatted | PromiseFormatted |  |
 | timestamp | PromiseTimestamp |  |

---


 
 
 #### [DisplayBreakup](#DisplayBreakup)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | currency_symbol | String |  |
 | value | Double |  |
 | key | String |  |
 | display | String |  |
 | message | [String] |  |
 | currency_code | String |  |

---


 
 
 #### [RawBreakup](#RawBreakup)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | discount | Double |  |
 | delivery_charge | Double |  |
 | convenience_fee | Double |  |
 | fynd_cash | Double |  |
 | cod_charge | Double |  |
 | mrp_total | String |  |
 | gst_charges | Double |  |
 | vog | Double |  |
 | you_saved | Double |  |
 | subtotal | Double |  |
 | total | Double |  |
 | coupon | Double |  |

---


 
 
 #### [LoyaltyPoints](#LoyaltyPoints)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | applicable | Double |  |
 | description | String |  |
 | is_applied | Bool |  |
 | total | Double |  |

---


 
 
 #### [CouponBreakup](#CouponBreakup)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | Double |  |
 | type | String |  |
 | code | String |  |
 | message | String |  |
 | uid | String |  |
 | is_applied | Bool |  |

---


 
 
 #### [CartBreakup](#CartBreakup)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display | [DisplayBreakup] |  |
 | raw | RawBreakup |  |
 | loyalty_points | LoyaltyPoints |  |
 | coupon | CouponBreakup |  |

---


 
 
 #### [CartResponse](#CartResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | comment | String |  |
 | checkout_mode | String |  |
 | uid | String |  |
 | payment_selection_lock | PaymentSelectionLock |  |
 | last_modified | String |  |
 | coupon_text | String |  |
 | items | [CartProductInfo] |  |
 | cart_id | Int |  |
 | delivery_charge_info | String |  |
 | message | String |  |
 | restrict_checkout | Bool |  |
 | is_valid | Bool |  |
 | currency | CartCurrency |  |
 | delivery_promise | ShipmentPromise |  |
 | breakup_values | CartBreakup |  |
 | gstin | String |  |

---


 
 
 #### [AddProductCart](#AddProductCart)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | article_assignment | [String: Any] |  |
 | store_id | Int |  |
 | item_size | String |  |
 | seller_id | Int |  |
 | item_id | Int |  |
 | display | String |  |
 | extra_meta | [String: Any] |  |
 | pos | Bool |  |
 | article_id | String |  |
 | quantity | Int |  |

---


 
 
 #### [AddCartRequest](#AddCartRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [AddProductCart] |  |

---


 
 
 #### [AddCartResponse](#AddCartResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | cart | CartResponse |  |
 | partial | Bool | When adding multiple items check if all added. True if only few are added. |
 | success | Bool | True if all items are added successfully. False if partially added or not added. |
 | message | String |  |

---


 
 
 #### [UpdateProductCart](#UpdateProductCart)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | item_size | String |  |
 | item_index | Int |  |
 | item_id | Int |  |
 | identifiers | CartProductIdentifer |  |
 | extra_meta | [String: Any] |  |
 | article_id | String |  |
 | quantity | Int |  |

---


 
 
 #### [UpdateCartRequest](#UpdateCartRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | operation | String |  |
 | items | [UpdateProductCart] |  |

---


 
 
 #### [UpdateCartResponse](#UpdateCartResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | cart | CartResponse |  |
 | success | Bool | True if all items are added successfully. False if partially added or not added. |
 | message | String |  |

---


 
 
 #### [CartItemCountResponse](#CartItemCountResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | user_cart_items_count | Int | Item count present in cart |

---


 
 
 #### [Coupon](#Coupon)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | coupon_value | Double |  |
 | expires_on | String |  |
 | title | String |  |
 | coupon_code | String |  |
 | max_discount_value | Double |  |
 | minimum_cart_value | Double |  |
 | sub_title | String |  |
 | message | String |  |
 | is_applicable | Bool |  |
 | is_applied | Bool |  |

---


 
 
 #### [PageCoupon](#PageCoupon)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | total_item_count | Int |  |
 | current | Int |  |
 | has_next | Bool |  |
 | has_previous | Bool |  |
 | total | Int |  |

---


 
 
 #### [GetCouponResponse](#GetCouponResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | available_coupon_list | [Coupon] |  |
 | page | PageCoupon |  |

---


 
 
 #### [ApplyCouponRequest](#ApplyCouponRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | coupon_code | String | Coupon code to be applied |

---


 
 
 #### [OfferPrice](#OfferPrice)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | currency_symbol | String | Currency symbol for currency |
 | bulk_effective | Double | Discounted per unit price for current offer object |
 | currency_code | String | Currency code for all amounts |
 | effective | Int | Current per unit price of product after existing deductions |
 | marked | Int | Original price of product |

---


 
 
 #### [OfferItem](#OfferItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | price | OfferPrice |  |
 | type | String | Offer type |
 | margin | Int | Percentage value of discount |
 | best | Bool | Is true for best offer from all offers present for all sellers |
 | quantity | Int | Quantity on which offer is applicable |
 | total | Double | Total price of offer quantity with discount |
 | auto_applied | Bool |  |

---


 
 
 #### [OfferSeller](#OfferSeller)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int | Seller id |
 | name | String |  |

---


 
 
 #### [BulkPriceOffer](#BulkPriceOffer)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | offers | [OfferItem] |  |
 | seller | OfferSeller |  |

---


 
 
 #### [BulkPriceResponse](#BulkPriceResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | data | [BulkPriceOffer] | Consist of offers from multiple seller |

---


 
 
 #### [RewardPointRequest](#RewardPointRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | points | Bool |  |

---


 
 
 #### [GeoLocation](#GeoLocation)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | latitude | Double |  |
 | longitude | Double |  |

---


 
 
 #### [Address](#Address)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | address_type | String |  |
 | area_code | String |  |
 | address | String |  |
 | state | String |  |
 | google_map_point | [String: Any] |  |
 | tags | [String] |  |
 | geo_location | GeoLocation |  |
 | email | String |  |
 | landmark | String |  |
 | meta | [String: Any] |  |
 | phone | String |  |
 | checkout_mode | String |  |
 | country | String |  |
 | area_code_slug | String |  |
 | is_active | Bool |  |
 | uid | Int |  |
 | country_code | String |  |
 | area | String |  |
 | user_id | String |  |
 | city | String |  |
 | name | String |  |
 | is_default_address | Bool |  |

---


 
 
 #### [GetAddressesResponse](#GetAddressesResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | address | [Address] |  |

---


 
 
 #### [SaveAddressResponse](#SaveAddressResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_default_address | Bool |  |
 | success | String |  |
 | address_id | Int |  |

---


 
 
 #### [UpdateAddressResponse](#UpdateAddressResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_default_address | Bool |  |
 | success | Bool |  |
 | is_updated | Bool |  |
 | address_id | Int |  |

---


 
 
 #### [DeleteAddressResponse](#DeleteAddressResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_deleted | Bool |  |
 | address_id | Int |  |

---


 
 
 #### [SelectCartAddressRequest](#SelectCartAddressRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | String |  |
 | billing_address_id | Int |  |
 | address_id | String |  |

---


 
 
 #### [UpdateCartPaymentRequest](#UpdateCartPaymentRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | payment_mode | String |  |
 | payment_identifier | String |  |
 | merchant_code | String |  |
 | uid | Int |  |
 | aggregator_name | String |  |
 | address_id | Int |  |

---


 
 
 #### [CouponValidity](#CouponValidity)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | discount | Double |  |
 | title | String |  |
 | display_message_en | String |  |
 | code | String |  |
 | valid | Bool |  |

---


 
 
 #### [PaymentCouponValidate](#PaymentCouponValidate)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |
 | success | Bool |  |
 | coupon_validity | CouponValidity |  |

---


 
 
 #### [ShipmentResponse](#ShipmentResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | shipment_type | String |  |
 | fulfillment_type | String |  |
 | items | [CartProductInfo] |  |
 | fulfillment_id | Int |  |
 | order_type | String |  |
 | promise | ShipmentPromise |  |
 | box_type | String |  |
 | shipments | Int |  |
 | dp_options | [String: Any] |  |
 | dp_id | Int |  |

---


 
 
 #### [CartShipmentsResponse](#CartShipmentsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | comment | String |  |
 | checkout_mode | String |  |
 | uid | String |  |
 | payment_selection_lock | PaymentSelectionLock |  |
 | last_modified | String |  |
 | coupon_text | String |  |
 | cart_id | Int |  |
 | delivery_charge_info | String |  |
 | message | String |  |
 | restrict_checkout | Bool |  |
 | is_valid | Bool |  |
 | currency | CartCurrency |  |
 | delivery_promise | ShipmentPromise |  |
 | error | Bool |  |
 | breakup_values | CartBreakup |  |
 | shipments | [ShipmentResponse] |  |
 | gstin | String |  |

---


 
 
 #### [CartCheckoutRequest](#CartCheckoutRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | payment_params | [String: Any] |  |
 | payment_mode | String |  |
 | ordering_store | Int |  |
 | billing_address_id | Int |  |
 | delivery_address | [String: Any] |  |
 | fyndstore_emp_id | String |  |
 | payment_auto_confirm | Bool |  |
 | staff | [String: Any] |  |
 | billing_address | [String: Any] |  |
 | payment_identifier | String |  |
 | merchant_code | String |  |
 | meta | [String: Any] |  |
 | callback_url | String |  |
 | extra_meta | [String: Any] |  |
 | aggregator | String |  |
 | address_id | Int |  |

---


 
 
 #### [CheckCart](#CheckCart)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | payment_selection_lock | PaymentSelectionLock |  |
 | order_id | String |  |
 | currency | CartCurrency |  |
 | store_code | String |  |
 | delivery_charges | Int |  |
 | gstin | String |  |
 | cod_message | String |  |
 | cod_charges | Int |  |
 | items | [CartProductInfo] |  |
 | delivery_promise | ShipmentPromise |  |
 | checkout_mode | String |  |
 | delivery_charge_info | String |  |
 | restrict_checkout | Bool |  |
 | is_valid | Bool |  |
 | uid | String |  |
 | delivery_charge_order_value | Int |  |
 | comment | String |  |
 | user_type | String |  |
 | last_modified | String |  |
 | coupon_text | String |  |
 | store_emps | [[String: Any]] |  |
 | cart_id | Int |  |
 | error_message | String |  |
 | message | String |  |
 | breakup_values | CartBreakup |  |
 | success | Bool |  |
 | cod_available | Bool |  |

---


 
 
 #### [CartCheckoutResponse](#CartCheckoutResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | data | [String: Any] |  |
 | order_id | String |  |
 | cart | CheckCart |  |
 | message | String |  |
 | callback_url | String |  |
 | app_intercept_url | String |  |
 | success | Bool |  |

---


 
 
 #### [CartMetaRequest](#CartMetaRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | comment | String |  |
 | checkout_mode | String |  |
 | gstin | String |  |
 | pick_up_customer_details | [String: Any] | Customer contact details for customer pickup at store |

---


 
 
 #### [CartMetaResponse](#CartMetaResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [CartMetaMissingResponse](#CartMetaMissingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | errors | [String] |  |

---


 
 
 #### [GetShareCartLinkRequest](#GetShareCartLinkRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int | Cart uid for generating sharing |
 | meta | [String: Any] | Staff, Ordering store or any other data. This data will be used to generate link as well as sent as shared details. |

---


 
 
 #### [GetShareCartLinkResponse](#GetShareCartLinkResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | token | String | Short url unique id |
 | share_url | String | Short shareable final url |

---


 
 
 #### [SharedCartDetails](#SharedCartDetails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | token | String | Short link id |
 | created_on | String |  |
 | meta | [String: Any] | Meta data sent while generating share cart link |
 | source | [String: Any] | Share link device and other source information |
 | user | [String: Any] | User details of who generated share link |

---


 
 
 #### [SharedCart](#SharedCart)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | comment | String |  |
 | checkout_mode | String |  |
 | uid | String |  |
 | payment_selection_lock | PaymentSelectionLock |  |
 | shared_cart_details | SharedCartDetails |  |
 | last_modified | String |  |
 | coupon_text | String |  |
 | items | [CartProductInfo] |  |
 | cart_id | Int |  |
 | delivery_charge_info | String |  |
 | message | String |  |
 | restrict_checkout | Bool |  |
 | is_valid | Bool |  |
 | currency | CartCurrency |  |
 | delivery_promise | ShipmentPromise |  |
 | breakup_values | CartBreakup |  |
 | gstin | String |  |

---


 
 
 #### [SharedCartResponse](#SharedCartResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | error | String |  |
 | cart | SharedCart |  |

---



---



 
 
 #### [LocationDefaultLanguage](#LocationDefaultLanguage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | code | String |  |

---


 
 
 #### [LocationDefaultCurrency](#LocationDefaultCurrency)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | symbol | String |  |
 | code | String |  |

---


 
 
 #### [LocationCountry](#LocationCountry)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | capital | String |  |
 | currency | String |  |
 | iso2 | String |  |
 | iso3 | String |  |
 | name | String |  |
 | parent | String |  |
 | phone_code | String |  |
 | type | String |  |
 | uid | Int |  |
 | __v | Int |  |
 | _id | String |  |
 | default_currency | LocationDefaultCurrency |  |
 | default_language | LocationDefaultLanguage |  |

---


 
 
 #### [Locations](#Locations)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [LocationCountry] |  |

---



---



 
 
 #### [TicketList](#TicketList)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [Ticket] | List of tickets |
 | filters | Filter | All the filters available for tickets |
 | page | Page | Describes the pagination state |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | item_total | Int |  |
 | next_id | String |  |
 | has_previous | Bool |  |
 | has_next | Bool |  |
 | current | Int |  |
 | type | String |  |
 | size | Int |  |

---


 
 
 #### [TicketHistoryList](#TicketHistoryList)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [TicketHistory] | List of ticket history |
 | page | Page | Describes the pagination state |

---


 
 
 #### [CustomFormList](#CustomFormList)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [CustomForm] | List of forms |
 | page | Page | Describes the pagination state |

---


 
 
 #### [CreateCustomFormPayload](#CreateCustomFormPayload)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String | Slug for the form |
 | title | String | Title for the form |
 | inputs | [[String: Any]] | List of all the form components |
 | description | String | Description of the form |
 | header_image | String | Header image that is to be shown for the form |
 | priority | [String: Any] | Describes the priority of the tickets created by the form |
 | should_notify | Bool | Indicates if staff should be notified when a response is received |
 | success_message | String | Success message that will be shown on submission |
 | poll_for_assignment | PollForAssignment | Describes how polling will be done for the tickets createds |

---


 
 
 #### [EditCustomFormPayload](#EditCustomFormPayload)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String | Title for the form |
 | inputs | [[String: Any]] | List of all the form components |
 | description | String | Description of the form |
 | priority | [String: Any] | Describes the priority of the tickets created by the form |
 | header_image | String | Header image that is to be shown for the form |
 | should_notify | Bool | Indicates if staff should be notified when a response is received |
 | login_required | Bool | Denotes if login is required to make a form response submission |
 | success_message | String | Success message that will be shown on submission |
 | poll_for_assignment | PollForAssignment | Describes how polling will be done for the tickets createds |

---


 
 
 #### [EditTicketPayload](#EditTicketPayload)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | content | TicketContent | Ticket conetent details |
 | category | String | Category assigned to the ticket |
 | sub_category | String | Sub-category assigned to the ticket |
 | source | String | Denotes if the ticket was created at company or application level |
 | status | String | Denotes in what state is the ticket |
 | priority | [String: Any] | Denotes the priority of ticket |
 | assigned_to | AgentChangePayload | Details of support staff to whom ticket is assigned |
 | tags | [String] | Tags relevant to ticket |

---


 
 
 #### [AgentChangePayload](#AgentChangePayload)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | agent_id | String | Agent's unique ID |

---


 
 
 #### [CreateVideoRoomResponse](#CreateVideoRoomResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | unique_name | String | Video Room's unique name |

---


 
 
 #### [CloseVideoRoomResponse](#CloseVideoRoomResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | success | Bool | Denotes if operation was successfully |

---


 
 
 #### [CreateVideoRoomPayload](#CreateVideoRoomPayload)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | unique_name | String | Ticket id |
 | notify | [NotifyUser] | List of people to be notified |

---


 
 
 #### [NotifyUser](#NotifyUser)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | country_code | String | Country code |
 | phone_number | String | Phone number |

---


 
 
 #### [Filter](#Filter)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | priorities | [Priority] | List of possible priorities for tickets |
 | categories | [TicketCategory] | List of possible categories for tickets |
 | statuses | [Status] | List of possible statuses for tickets |
 | assignees | [[String: Any]] | List of support staff availble for tickets assignment |

---


 
 
 #### [TicketHistoryPayload](#TicketHistoryPayload)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | [String: Any] | Details of history event |
 | type | [String: Any] | Type of history event |

---


 
 
 #### [CustomFormSubmissionPayload](#CustomFormSubmissionPayload)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | response | [KeyValue] | Form response |
 | attachments | [TicketAsset] | List of all attachments related to the form |

---


 
 
 #### [KeyValue](#KeyValue)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | String | Parameter for evaluating |
 | value | [String: Any] | Response for the parameter |

---


 
 
 #### [GetTokenForVideoRoomResponse](#GetTokenForVideoRoomResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | access_token | String | Access token to be used for video room |

---


 
 
 #### [GetParticipantsInsideVideoRoomResponse](#GetParticipantsInsideVideoRoomResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | participants | [Participant] | List of participants of the video room |

---


 
 
 #### [Participant](#Participant)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | user | UserSchema | Details of participant |
 | identity | String | Unique identifier of participant |
 | status | String | Status of participant |

---


 
 
 #### [PhoneNumber](#PhoneNumber)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool | Denotes if the phone number is active |
 | primary | Bool | Denotes it's the primary phone number for the account |
 | verified | Bool | Denotes it's a verified phone number |
 | phone | String | Phone number |
 | country_code | Int | Country code |

---


 
 
 #### [Email](#Email)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | primary | Bool | Denotes it's the primary email for the account |
 | verified | Bool | Denotes it's a verified email |
 | email | String | Email Address |
 | active | Bool | Denotes if the email is active |

---


 
 
 #### [Debug](#Debug)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | source | String | Source of user |
 | platform | String | Platform of user |

---


 
 
 #### [SubmitCustomFormResponse](#SubmitCustomFormResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | ticket | Ticket | Ticket created on form submission |

---


 
 
 #### [TicketContext](#TicketContext)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application_id | String | Application ID related to the ticket |
 | company_id | String | Company ID related to the ticket |

---


 
 
 #### [CreatedOn](#CreatedOn)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | user_agent | String | Useragent details |

---


 
 
 #### [TicketAsset](#TicketAsset)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display | String | Display text for asset |
 | value | String | To be used for details |
 | type | [String: Any] | Type of asset |

---


 
 
 #### [TicketContent](#TicketContent)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String | Title for ticket |
 | description | String | Long description of issue |
 | attachments | [TicketAsset] | List of all attachments related to the ticket |

---


 
 
 #### [AddTicketPayload](#AddTicketPayload)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | created_by | [String: Any] | Creator of the ticket |
 | status | String | Status of the ticket |
 | priority | [String: Any] | Priority of the ticket |
 | category | String | Category of the ticket |
 | content | TicketContent | Content for the ticket |

---


 
 
 #### [Priority](#Priority)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | PriorityEnum | Key for priority |
 | display | String | Display text for priority |
 | color | String | Color for priority |

---


 
 
 #### [Status](#Status)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | String | Key for status |
 | display | String | Display text for status |
 | color | String | Color for status |

---


 
 
 #### [TicketCategory](#TicketCategory)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | String | Key for category |
 | display | String | Display text for category |
 | form | CustomForm | Form related to the category |
 | sub_categories | [TicketSubCategory] | Sub-category related to the category |
 | feedback_form | TicketFeedbackForm | Feedback form of category used to submit ticket feedback |

---


 
 
 #### [TicketSubCategory](#TicketSubCategory)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | String | Key for sub-category |
 | display | String | Display text for sub-category |

---


 
 
 #### [TicketFeedbackForm](#TicketFeedbackForm)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String | Feedback form title that will be shown to the user |
 | display | [[String: Any]] | List of all the form fields |

---


 
 
 #### [TicketFeedbackList](#TicketFeedbackList)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [TicketFeedback] | List of all ticket feedback for the ticket |

---


 
 
 #### [TicketFeedbackPayload](#TicketFeedbackPayload)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | form_response | [String: Any] | Key-value pairs of all the form fields and their response |

---


 
 
 #### [SubmitButton](#SubmitButton)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String | Title for submit button |
 | title_color | String | Title color submit button |
 | background_color | String | Color for submit button |

---


 
 
 #### [PollForAssignment](#PollForAssignment)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | duration | Double | Duration for polling of staff |
 | message | String | Message for polling |
 | success_message | String | Message for successful polling |
 | failure_message | String | Message if polling failed |

---


 
 
 #### [CustomForm](#CustomForm)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application_id | String | Application ID for form |
 | slug | String | Slug for the form, which is to be used for accessing the form |
 | header_image | String | Form header image that will be shown to the user |
 | title | String | Form title that will be shown to the user |
 | description | String | Form description that will be shown to the user |
 | priority | Priority | Sets priority of tickets created by form response |
 | login_required | Bool | Denotes if login is required to make a form response submission |
 | should_notify | Bool | Denotes if new response submission for the form should be notified to the assignees |
 | success_message | String | Message that is to be shown on succesfull form response submission |
 | submit_button | SubmitButton | Details for submit button |
 | inputs | [[String: Any]] | List of all the form fields |
 | created_on | CreatedOn | Gives details of when the form was created |
 | created_by | [String: Any] | Gives details of user who created the form |
 | poll_for_assignment | PollForAssignment | Details of how polling should be done for support |
 | _id | String | Unique identifier for the form |

---


 
 
 #### [FeedbackResponseItem](#FeedbackResponseItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display | String | Question/Title of the form field |
 | key | String | Key of the form field |
 | value | String | User response value for the form field |

---


 
 
 #### [TicketFeedback](#TicketFeedback)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String | Unique identifier for the feedback |
 | ticket_id | String | Readable ticket number |
 | company_id | String | Company id for which ticket was raised |
 | response | [FeedbackResponseItem] |  |
 | category | String | Category of the ticket |
 | user | [String: Any] | User who submitted the feedback |
 | updated_at | String | Time when the feedback was last updated |
 | created_at | String | Time when the feedback was created |

---


 
 
 #### [TicketHistory](#TicketHistory)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String | Type of the history event |
 | value | [String: Any] | Data of the history event |
 | ticket_id | String | Readable ticket number |
 | created_on | CreatedOn | Time of creation of the history event |
 | created_by | [String: Any] | User who created the history event |
 | _id | String | Unique identifier of the history event |
 | updated_at | String | Time of last update of the history event |
 | created_at | String | Time of creation of the history event |

---


 
 
 #### [Ticket](#Ticket)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | context | TicketContext | Details of company and application realated to the ticket |
 | created_on | CreatedOn | Details of company and application realated to the ticket |
 | response_id | String | Details of company and application realated to the ticket |
 | content | TicketContent | Ticket conetent details |
 | ticket_id | String | Readable ticket number |
 | category | TicketCategory | Category assigned to the ticket |
 | sub_category | TicketSubCategory | Sub-category assigned to the ticket |
 | source | [String: Any] | Denotes if the ticket was created at company or application level |
 | status | Status | Denotes in what state is the ticket |
 | priority | Priority | Denotes the priority of ticket |
 | created_by | [String: Any] | User details of ticket creator |
 | assigned_to | [String: Any] | Details of support staff to whom ticket is assigned |
 | tags | [String] | Tags relevant to ticket |
 | _custom_json | [String: Any] | custom json relevant to the ticket |
 | is_feedback_pending | Bool | Denotes if feedback submission is pending for the ticket |
 | _id | String | Unique identifier for the ticket |
 | updated_at | String | Time when the ticket was last updated |
 | created_at | String | Time when the ticket was created |

---



---



 
 
 #### [AvailablePageSchema](#AvailablePageSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | String |  |
 | text | String |  |
 | path | String |  |
 | type | String |  |
 | sections | [AvailablePageSchemaSections] |  |
 | sections_meta | [AvailablePageSectionMetaAttributes] |  |
 | theme | String |  |
 | seo | AvailablePageSeo |  |
 | props | [[String: Any]] |  |
 | _id | String |  |

---


 
 
 #### [AvailablePageSectionMetaAttributes](#AvailablePageSectionMetaAttributes)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | attributes | [String: Any] |  |

---


 
 
 #### [AvailablePageSeo](#AvailablePageSeo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | description | String |  |
 | _id | String |  |

---


 
 
 #### [AvailablePageSchemaSections](#AvailablePageSchemaSections)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | label | String |  |
 | props | [String: Any] |  |
 | blocks | [[String: Any]] |  |
 | preset | [String: Any] |  |
 | predicate | AvailablePagePredicate |  |

---


 
 
 #### [AvailablePageScreenPredicate](#AvailablePageScreenPredicate)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | mobile | Bool |  |
 | desktop | Bool |  |
 | tablet | Bool |  |

---


 
 
 #### [AvailablePageUserPredicate](#AvailablePageUserPredicate)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | authenticated | Bool |  |
 | anonymous | Bool |  |

---


 
 
 #### [AvailablePageRoutePredicate](#AvailablePageRoutePredicate)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | selected | String |  |
 | exact_url | String |  |
 | query | [String: Any] |  |

---


 
 
 #### [AvailablePagePredicate](#AvailablePagePredicate)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | screen | AvailablePageScreenPredicate |  |
 | user | AvailablePageUserPredicate |  |
 | route | AvailablePageRoutePredicate |  |

---


 
 
 #### [AllAvailablePageSchema](#AllAvailablePageSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | pages | [AvailablePageSchema] |  |

---


 
 
 #### [PaginationSchema](#PaginationSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | size | Int |  |
 | item_total | Int |  |
 | has_next | Bool |  |
 | type | String |  |
 | current | Int |  |

---


 
 
 #### [ThemesListingResponseSchema](#ThemesListingResponseSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ThemesSchema] |  |
 | page | PaginationSchema |  |

---


 
 
 #### [AddThemeRequestSchema](#AddThemeRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | theme_id | String |  |

---


 
 
 #### [UpgradableThemeSchema](#UpgradableThemeSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | parent_theme | String |  |
 | applied_theme | String |  |
 | upgrade | Bool |  |

---


 
 
 #### [FontsSchema](#FontsSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | FontsSchemaItems |  |
 | kind | String |  |

---


 
 
 #### [BlitzkriegApiErrorSchema](#BlitzkriegApiErrorSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [BlitzkriegNotFoundSchema](#BlitzkriegNotFoundSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [BlitzkriegInternalServerErrorSchema](#BlitzkriegInternalServerErrorSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [FontsSchemaItems](#FontsSchemaItems)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | family | String |  |
 | variants | [String] |  |
 | subsets | [String] |  |
 | version | String |  |
 | last_modified | String |  |
 | files | FontsSchemaItemsFiles |  |
 | category | String |  |
 | kind | String |  |

---


 
 
 #### [FontsSchemaItemsFiles](#FontsSchemaItemsFiles)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | regular | String |  |
 | italic | String |  |
 | bold | String |  |

---


 
 
 #### [ThemesSchema](#ThemesSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application | String |  |
 | applied | Bool |  |
 | customized | Bool |  |
 | published | Bool |  |
 | archived | Bool |  |
 | created_at | String |  |
 | updated_at | String |  |
 | version | String |  |
 | parent_theme_version | String |  |
 | parent_theme | String |  |
 | information | Information |  |
 | tags | [String] |  |
 | src | Src |  |
 | assets | AssetsSchema |  |
 | available_sections | [availableSectionSchema] |  |
 | constants | [String: Any] |  |
 | styles | [String: Any] |  |
 | config | Config |  |
 | settings | [String: Any] |  |
 | font | Font |  |
 | _id | String |  |
 | __v | Int |  |
 | colors | Colors |  |

---


 
 
 #### [availableSectionSchema](#availableSectionSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | blocks | [Blocks] |  |
 | name | String |  |
 | label | String |  |
 | props | [BlocksProps] |  |

---


 
 
 #### [Information](#Information)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | images | Images |  |
 | features | [String] |  |
 | name | String |  |
 | description | String |  |

---


 
 
 #### [Images](#Images)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | desktop | [String] |  |
 | android | [String] |  |
 | ios | [String] |  |
 | thumbnail | [String] |  |

---


 
 
 #### [Src](#Src)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | link | String |  |

---


 
 
 #### [AssetsSchema](#AssetsSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | umd_js | UmdJs |  |
 | common_js | CommonJs |  |
 | css | Css |  |

---


 
 
 #### [UmdJs](#UmdJs)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | link | String |  |

---


 
 
 #### [CommonJs](#CommonJs)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | link | String |  |

---


 
 
 #### [Css](#Css)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | link | String |  |

---


 
 
 #### [Seo](#Seo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | description | String |  |

---


 
 
 #### [Sections](#Sections)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | attributes | String |  |

---


 
 
 #### [Config](#Config)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | preset | Preset |  |
 | global_schema | GlobalSchema |  |
 | current | String |  |
 | list | [ListSchemaItem] |  |

---


 
 
 #### [Preset](#Preset)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | pages | [AvailablePageSchema] |  |

---


 
 
 #### [GlobalSchema](#GlobalSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | props | [GlobalSchemaProps] |  |

---


 
 
 #### [ListSchemaItem](#ListSchemaItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | global | [String: Any] |  |
 | page | [ConfigPage] |  |
 | name | String |  |

---


 
 
 #### [Colors](#Colors)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | bg_color | String |  |
 | primary_color | String |  |
 | secondary_color | String |  |
 | accent_color | String |  |
 | link_color | String |  |
 | button_secondary_color | String |  |

---


 
 
 #### [Custom](#Custom)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | props | [String: Any] |  |

---


 
 
 #### [ConfigPage](#ConfigPage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | settings | [String: Any] |  |
 | page | String |  |

---


 
 
 #### [Font](#Font)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | family | String |  |
 | variants | Variants |  |

---


 
 
 #### [Variants](#Variants)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | medium | Medium |  |
 | semi_bold | SemiBold |  |
 | bold | Bold |  |
 | light | Light |  |
 | regular | Regular |  |

---


 
 
 #### [Medium](#Medium)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | file | String |  |

---


 
 
 #### [SemiBold](#SemiBold)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | file | String |  |

---


 
 
 #### [Bold](#Bold)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | file | String |  |

---


 
 
 #### [Light](#Light)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | file | String |  |

---


 
 
 #### [Regular](#Regular)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | file | String |  |

---


 
 
 #### [Blocks](#Blocks)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | name | String |  |
 | props | [BlocksProps] |  |

---


 
 
 #### [GlobalSchemaProps](#GlobalSchemaProps)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |
 | label | String |  |
 | type | String |  |
 | category | String |  |

---


 
 
 #### [BlocksProps](#BlocksProps)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |
 | label | String |  |
 | type | String |  |

---



---



 
 
 #### [EditEmailRequestSchema](#EditEmailRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | String |  |

---


 
 
 #### [SendVerificationLinkMobileRequestSchema](#SendVerificationLinkMobileRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | verified | Bool |  |
 | active | Bool |  |
 | country_code | String |  |
 | phone | String |  |
 | primary | Bool |  |

---


 
 
 #### [EditMobileRequestSchema](#EditMobileRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | country_code | String |  |
 | phone | String |  |

---


 
 
 #### [EditProfileRequestSchema](#EditProfileRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | first_name | String |  |
 | last_name | String |  |
 | mobile | EditProfileMobileSchema |  |
 | country_code | String |  |
 | email | String |  |
 | gender | String |  |
 | dob | String |  |
 | profile_pic_url | String |  |
 | android_hash | String |  |
 | sender | String |  |
 | register_token | String |  |

---


 
 
 #### [EditProfileMobileSchema](#EditProfileMobileSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | phone | String |  |
 | country_code | String |  |

---


 
 
 #### [SendEmailOtpRequestSchema](#SendEmailOtpRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | String |  |
 | action | String |  |
 | token | String |  |
 | register_token | String |  |

---


 
 
 #### [VerifyEmailOtpRequestSchema](#VerifyEmailOtpRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | String |  |
 | action | String |  |
 | register_token | String |  |
 | otp | String |  |

---


 
 
 #### [VerifyOtpRequestSchema](#VerifyOtpRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | request_id | String |  |
 | register_token | String |  |
 | otp | String |  |

---


 
 
 #### [SendMobileOtpRequestSchema](#SendMobileOtpRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | mobile | String |  |
 | country_code | String |  |
 | action | String |  |
 | token | String |  |
 | android_hash | String |  |
 | force | String |  |
 | captcha_code | String |  |

---


 
 
 #### [UpdatePasswordRequestSchema](#UpdatePasswordRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | old_password | String |  |
 | new_password | String |  |

---


 
 
 #### [FormRegisterRequestSchema](#FormRegisterRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | first_name | String |  |
 | last_name | String |  |
 | gender | String |  |
 | email | String |  |
 | password | String |  |
 | phone | FormRegisterRequestSchemaPhone |  |
 | register_token | String |  |

---


 
 
 #### [TokenRequestBodySchema](#TokenRequestBodySchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | token | String |  |

---


 
 
 #### [ForgotPasswordRequestSchema](#ForgotPasswordRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | code | String |  |
 | password | String |  |

---


 
 
 #### [CodeRequestBodySchema](#CodeRequestBodySchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | code | String |  |

---


 
 
 #### [SendResetPasswordEmailRequestSchema](#SendResetPasswordEmailRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | String |  |
 | captcha_code | String |  |

---


 
 
 #### [PasswordLoginRequestSchema](#PasswordLoginRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | captcha_code | String |  |
 | password | String |  |
 | username | String |  |

---


 
 
 #### [SendOtpRequestSchema](#SendOtpRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | country_code | String |  |
 | captcha_code | String |  |
 | mobile | String |  |

---


 
 
 #### [OAuthRequestSchema](#OAuthRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_signed_in | Bool |  |
 | oauth2 | OAuthRequestSchemaOauth2 |  |
 | profile | OAuthRequestSchemaProfile |  |

---


 
 
 #### [UserObjectSchema](#UserObjectSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | user | UserSchema |  |

---


 
 
 #### [AuthSuccess](#AuthSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | register_token | String |  |
 | user_exists | Bool |  |
 | user | UserSchema |  |

---


 
 
 #### [SendOtpResponse](#SendOtpResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | resend_timer | Int |  |
 | resend_token | String |  |
 | success | Bool |  |
 | request_id | String |  |
 | message | String |  |
 | mobile | String |  |
 | country_code | String |  |
 | email | String |  |
 | resend_email_token | String |  |
 | register_token | String |  |
 | verify_email_otp | Bool |  |
 | verify_mobile_otp | Bool |  |
 | user_exists | Bool |  |

---


 
 
 #### [ProfileEditSuccess](#ProfileEditSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | user | UserSchema |  |
 | register_token | String |  |
 | user_exists | Bool |  |
 | verify_email_link | Bool |  |
 | verify_email_otp | Bool |  |
 | verify_mobile_otp | Bool |  |
 | email | String |  |

---


 
 
 #### [LoginSuccess](#LoginSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | user | UserSchema |  |
 | request_id | String |  |
 | register_token | String |  |

---


 
 
 #### [VerifyOtpSuccess](#VerifyOtpSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | user | UserSchema |  |
 | user_exists | Bool |  |
 | register_token | String |  |

---


 
 
 #### [ResetPasswordSuccess](#ResetPasswordSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | status | String |  |

---


 
 
 #### [RegisterFormSuccess](#RegisterFormSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | String |  |
 | resend_timer | Int |  |
 | resend_token | String |  |
 | resend_email_token | String |  |
 | register_token | String |  |
 | success | Bool |  |
 | request_id | String |  |
 | message | String |  |
 | mobile | String |  |
 | country_code | String |  |
 | verify_email_otp | Bool |  |
 | verify_mobile_otp | Bool |  |
 | user_exists | Bool |  |

---


 
 
 #### [VerifyEmailSuccess](#VerifyEmailSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [HasPasswordSuccess](#HasPasswordSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | result | Bool |  |

---


 
 
 #### [LogoutSuccess](#LogoutSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | logout | Bool |  |

---


 
 
 #### [OtpSuccess](#OtpSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | resend_timer | Int |  |
 | resend_token | String |  |
 | register_token | String |  |
 | success | Bool |  |
 | request_id | String |  |
 | message | String |  |
 | mobile | String |  |
 | country_code | String |  |

---


 
 
 #### [EmailOtpSuccess](#EmailOtpSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | success | Bool |  |

---


 
 
 #### [SessionListSuccess](#SessionListSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | sessions | [String] |  |

---


 
 
 #### [VerifyMobileOTPSuccess](#VerifyMobileOTPSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | user | UserSchema |  |
 | verify_mobile_link | Bool |  |

---


 
 
 #### [VerifyEmailOTPSuccess](#VerifyEmailOTPSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | user | UserSchema |  |
 | verify_email_link | Bool |  |

---


 
 
 #### [SendMobileVerifyLinkSuccess](#SendMobileVerifyLinkSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | verify_mobile_link | Bool |  |

---


 
 
 #### [SendEmailVerifyLinkSuccess](#SendEmailVerifyLinkSuccess)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | verify_email_link | Bool |  |

---


 
 
 #### [UserSearchResponseSchema](#UserSearchResponseSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | users | [UserSchema] |  |

---


 
 
 #### [CustomerListResponseSchema](#CustomerListResponseSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [UserSchema] |  |
 | page | PaginationSchema |  |

---


 
 
 #### [UnauthorizedSchema](#UnauthorizedSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [UnauthenticatedSchema](#UnauthenticatedSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | authenticated | Bool |  |

---


 
 
 #### [NotFoundSchema](#NotFoundSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [AuthenticationInternalServerErrorSchema](#AuthenticationInternalServerErrorSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [AuthenticationApiErrorSchema](#AuthenticationApiErrorSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [ProfileEditSuccessSchema](#ProfileEditSuccessSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | String |  |
 | verify_email_otp | Bool |  |
 | verify_email_link | Bool |  |
 | verify_mobile_otp | Bool |  |
 | user | String |  |
 | register_token | String |  |
 | user_exists | Bool |  |

---


 
 
 #### [FormRegisterRequestSchemaPhone](#FormRegisterRequestSchemaPhone)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | country_code | String |  |
 | mobile | String |  |

---


 
 
 #### [OAuthRequestSchemaOauth2](#OAuthRequestSchemaOauth2)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | access_token | String |  |
 | expiry | Int |  |
 | refresh_token | String |  |

---


 
 
 #### [OAuthRequestSchemaProfile](#OAuthRequestSchemaProfile)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | last_name | String |  |
 | image | String |  |
 | id | String |  |
 | email | String |  |
 | full_name | String |  |
 | first_name | String |  |

---


 
 
 #### [AuthSuccessUser](#AuthSuccessUser)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | first_name | String |  |
 | last_name | String |  |
 | debug | AuthSuccessUserDebug |  |
 | active | Bool |  |
 | emails | AuthSuccessUserEmails |  |

---


 
 
 #### [AuthSuccessUserDebug](#AuthSuccessUserDebug)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | platform | String |  |

---


 
 
 #### [AuthSuccessUserEmails](#AuthSuccessUserEmails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | String |  |
 | verified | Bool |  |
 | primary | Bool |  |
 | active | Bool |  |

---


 
 
 #### [CreateUserRequestSchema](#CreateUserRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | phone_number | String |  |
 | email | String |  |
 | first_name | String |  |
 | last_name | String |  |
 | gender | String |  |
 | username | String |  |
 | meta | [String: Any] |  |

---


 
 
 #### [CreateUserResponseSchema](#CreateUserResponseSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | user | UserSchema |  |

---


 
 
 #### [CreateUserSessionRequestSchema](#CreateUserSessionRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | domain | String |  |
 | max_age | Double |  |
 | user_id | String |  |

---


 
 
 #### [CreateUserSessionResponseSchema](#CreateUserSessionResponseSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | domain | String |  |
 | max_age | Double |  |
 | secure | Bool |  |
 | http_only | Bool |  |
 | cookie | [String: Any] |  |

---


 
 
 #### [PlatformSchema](#PlatformSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display | String |  |
 | look_and_feel | LookAndFeel |  |
 | updated_at | String |  |
 | active | Bool |  |
 | forgot_password | Bool |  |
 | login | Login |  |
 | skip_captcha | Bool |  |
 | name | String |  |
 | meta | MetaSchema |  |
 | _id | String |  |
 | social | Social |  |
 | required_fields | RequiredFields |  |
 | register_required_fields | RegisterRequiredFields |  |
 | skip_login | Bool |  |
 | flash_card | FlashCard |  |
 | subtext | String |  |
 | social_tokens | SocialTokens |  |
 | created_at | String |  |
 | register | Bool |  |
 | mobile_image | String |  |
 | desktop_image | String |  |

---


 
 
 #### [LookAndFeel](#LookAndFeel)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | card_position | String |  |
 | background_color | String |  |

---


 
 
 #### [Login](#Login)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | password | Bool |  |
 | otp | Bool |  |

---


 
 
 #### [MetaSchema](#MetaSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | fynd_default | Bool |  |

---


 
 
 #### [Social](#Social)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | account_kit | Bool |  |
 | facebook | Bool |  |
 | google | Bool |  |

---


 
 
 #### [RequiredFields](#RequiredFields)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | PlatformEmail |  |
 | mobile | PlatformMobile |  |

---


 
 
 #### [PlatformEmail](#PlatformEmail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_required | Bool |  |
 | level | String |  |

---


 
 
 #### [PlatformMobile](#PlatformMobile)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_required | Bool |  |
 | level | String |  |

---


 
 
 #### [RegisterRequiredFields](#RegisterRequiredFields)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | RegisterRequiredFieldsEmail |  |
 | mobile | RegisterRequiredFieldsMobile |  |

---


 
 
 #### [RegisterRequiredFieldsEmail](#RegisterRequiredFieldsEmail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_required | Bool |  |
 | level | String |  |

---


 
 
 #### [RegisterRequiredFieldsMobile](#RegisterRequiredFieldsMobile)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_required | Bool |  |
 | level | String |  |

---


 
 
 #### [FlashCard](#FlashCard)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | text | String |  |
 | text_color | String |  |
 | background_color | String |  |

---


 
 
 #### [SocialTokens](#SocialTokens)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | facebook | Facebook |  |
 | account_kit | Accountkit |  |
 | google | Google |  |

---


 
 
 #### [Facebook](#Facebook)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | app_id | String |  |

---


 
 
 #### [Accountkit](#Accountkit)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | app_id | String |  |

---


 
 
 #### [Google](#Google)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | app_id | String |  |

---


 
 
 #### [UpdateUserRequestSchema](#UpdateUserRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | first_name | String |  |
 | last_name | String |  |
 | gender | String |  |
 | meta | [String: Any] |  |

---


 
 
 #### [UserSchema](#UserSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | first_name | String |  |
 | meta | [String: Any] |  |
 | last_name | String |  |
 | phone_numbers | [PhoneNumber] |  |
 | emails | [Email] |  |
 | gender | String |  |
 | dob | String |  |
 | active | Bool |  |
 | profile_pic_url | String |  |
 | username | String |  |
 | account_type | String |  |
 | uid | String |  |
 | debug | Debug |  |
 | has_old_password_hash | Bool |  |
 | _id | String |  |
 | created_at | String |  |
 | updated_at | String |  |

---



---



 
 
 #### [ApplicationLegal](#ApplicationLegal)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application | String |  |
 | tnc | String |  |
 | policy | String |  |
 | shipping | String |  |
 | faq | [ApplicationLegalFAQ] |  |
 | _id | String |  |
 | updated_at | String |  |
 | created_at | String |  |

---


 
 
 #### [ApplicationLegalFAQ](#ApplicationLegalFAQ)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | question | String |  |
 | answer | String |  |

---


 
 
 #### [SeoComponent](#SeoComponent)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | seo | SeoSchema |  |

---


 
 
 #### [SeoSchema](#SeoSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | app | String |  |
 | _id | String |  |
 | robots_txt | String |  |
 | sitemap_enabled | Bool |  |
 | custom_meta_tags | [CustomMetaTag] |  |
 | details | Detail |  |
 | created_at | String |  |
 | updated_at | String |  |

---


 
 
 #### [CustomMetaTag](#CustomMetaTag)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | content | String |  |
 | _id | String |  |

---


 
 
 #### [Detail](#Detail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | description | String |  |

---


 
 
 #### [AnnouncementPageSchema](#AnnouncementPageSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page_slug | String |  |
 | type | String |  |

---


 
 
 #### [EditorMeta](#EditorMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | foreground_color | String |  |
 | background_color | String |  |
 | content_type | String |  |
 | content | String |  |

---


 
 
 #### [AnnouncementAuthorSchema](#AnnouncementAuthorSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | created_by | String |  |
 | modified_by | String |  |

---


 
 
 #### [AdminAnnouncementSchema](#AdminAnnouncementSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | platforms | [String] |  |
 | title | String |  |
 | announcement | String |  |
 | pages | [AnnouncementPageSchema] |  |
 | editor_meta | EditorMeta |  |
 | author | AnnouncementAuthorSchema |  |
 | created_at | String |  |
 | app | String |  |
 | modified_at | String |  |
 | _schedule | ScheduleSchema |  |

---


 
 
 #### [ScheduleSchema](#ScheduleSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | cron | String |  |
 | start | String |  |
 | end | String |  |
 | duration | Double |  |
 | next_schedule | [NextSchedule] |  |

---


 
 
 #### [NextSchedule](#NextSchedule)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | start | String |  |
 | end | String |  |

---


 
 
 #### [AnnouncementSchema](#AnnouncementSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | announcement | String |  |
 | schedule | ScheduleStartSchema |  |

---


 
 
 #### [ScheduleStartSchema](#ScheduleStartSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | start | String |  |
 | end | String |  |

---


 
 
 #### [BlogGetResponse](#BlogGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [BlogSchema] |  |
 | page | Page |  |

---


 
 
 #### [ResourceContent](#ResourceContent)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | value | String |  |

---


 
 
 #### [Asset](#Asset)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | aspect_ratio | String |  |
 | id | String |  |
 | secure_url | String |  |

---


 
 
 #### [Author](#Author)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | designation | String |  |
 | id | String |  |
 | name | String |  |

---


 
 
 #### [BlogSchema](#BlogSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | _custom_json | [String: Any] |  |
 | application | String |  |
 | archived | Bool |  |
 | author | Author |  |
 | content | [ResourceContent] |  |
 | feature_image | Asset |  |
 | published | Bool |  |
 | reading_time | String |  |
 | slug | String |  |
 | tags | [String] |  |
 | seo | SEO |  |
 | _schedule | CronSchedule |  |
 | title | String |  |
 | date_meta | DateMeta |  |

---


 
 
 #### [SEO](#SEO)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String |  |
 | image | SEOImage |  |
 | title | String |  |

---


 
 
 #### [SEOImage](#SEOImage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | url | String |  |

---


 
 
 #### [DateMeta](#DateMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | created_on | String |  |
 | modified_on | String |  |

---


 
 
 #### [BlogRequest](#BlogRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application | String |  |
 | _custom_json | [String: Any] |  |
 | author | Author |  |
 | content | [ResourceContent] |  |
 | feature_image | Asset |  |
 | published | Bool |  |
 | reading_time | String |  |
 | slug | String |  |
 | tags | [String] |  |
 | title | String |  |
 | seo | SEO |  |
 | _schedule | CronSchedule |  |

---


 
 
 #### [GetAnnouncementListSchema](#GetAnnouncementListSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [AdminAnnouncementSchema] |  |
 | page | Page |  |

---


 
 
 #### [CreateAnnouncementSchema](#CreateAnnouncementSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |
 | data | AdminAnnouncementSchema |  |

---


 
 
 #### [Navigation](#Navigation)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | slug | String |  |
 | orientation | String |  |
 | created_by | CreatedBySchema |  |
 | date_meta | DateMeta |  |
 | _id | String |  |
 | position | String |  |
 | application | String |  |
 | platform | String |  |
 | navigation | NavigationReference |  |

---


 
 
 #### [LocaleLanguage](#LocaleLanguage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | hi | Language |  |
 | ar | Language |  |
 | en_us | Language |  |

---


 
 
 #### [Language](#Language)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display | String |  |

---


 
 
 #### [Action](#Action)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page | ActionPage |  |
 | popup | ActionPage |  |
 | type | String |  |

---


 
 
 #### [ActionPage](#ActionPage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | params | [String: [String]] |  |
 | query | [String: [String]] |  |
 | url | String |  |
 | type | String |  |

---


 
 
 #### [NavigationReference](#NavigationReference)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | acl | [String] |  |
 | tags | [String] |  |
 | _locale_language | LocaleLanguage |  |
 | image | String |  |
 | type | String |  |
 | action | Action |  |
 | active | Bool |  |
 | display | String |  |
 | sort_order | Int |  |
 | sub_navigation | [NavigationReference] |  |

---


 
 
 #### [LandingPage](#LandingPage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | data | LandingPageSchema |  |
 | success | Bool |  |

---


 
 
 #### [ConfigurationSchema](#ConfigurationSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | sleep_time | Int |  |
 | start_on_launch | Bool |  |
 | duration | Int |  |
 | slide_direction | String |  |

---


 
 
 #### [SlideshowMedia](#SlideshowMedia)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | url | String |  |
 | bg_color | String |  |
 | duration | Int |  |
 | auto_decide_duration | Bool |  |
 | action | Action |  |

---


 
 
 #### [Slideshow](#Slideshow)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | data | SlideshowSchema |  |
 | success | Bool |  |

---


 
 
 #### [AnnouncementsResponseSchema](#AnnouncementsResponseSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | announcements | [String: [AnnouncementSchema]] |  |
 | refresh_rate | Int | number of seconds after which api should hit again to fetch new announcements |
 | refresh_pages | [String] | list of page slugs on which announcement should be fetched as soon as they are loaded |

---


 
 
 #### [FaqResponseSchema](#FaqResponseSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | faqs | [FaqSchema] |  |

---


 
 
 #### [UpdateHandpickedSchema](#UpdateHandpickedSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | tag | HandpickedTagSchema |  |

---


 
 
 #### [HandpickedTagSchema](#HandpickedTagSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | position | String |  |
 | attributes | [String: Any] |  |
 | name | String |  |
 | url | String |  |
 | type | String |  |
 | sub_type | String |  |
 | content | String |  |

---


 
 
 #### [RemoveHandpickedSchema](#RemoveHandpickedSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | tags | [String] |  |

---


 
 
 #### [CreateTagSchema](#CreateTagSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | sub_type | String |  |
 | _id | String |  |
 | type | String |  |
 | url | String |  |
 | position | String |  |
 | attributes | [String: Any] |  |
 | content | String |  |

---


 
 
 #### [CreateTagRequestSchema](#CreateTagRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | tags | [CreateTagSchema] |  |

---


 
 
 #### [APIError](#APIError)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |
 | status | Double |  |
 | code | String |  |
 | exception | String |  |
 | info | String |  |
 | request_id | String |  |
 | stack_trace | String |  |
 | meta | [String: Any] |  |

---


 
 
 #### [CategorySchema](#CategorySchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | index | Int |  |
 | title | String |  |
 | description | String |  |
 | children | [String] |  |
 | _id | String |  |
 | slug | String |  |
 | application | String |  |
 | icon_url | String |  |
 | _custom_json | [String: Any] |  |

---


 
 
 #### [ChildrenSchema](#ChildrenSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | question | String |  |
 | answer | String |  |
 | slug | String |  |
 | application | String |  |
 | _id | String |  |

---


 
 
 #### [CategoryRequestSchema](#CategoryRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | title | String |  |

---


 
 
 #### [FAQCategorySchema](#FAQCategorySchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | index | Int |  |
 | title | String |  |
 | description | String |  |
 | children | [ChildrenSchema] |  |
 | _id | String |  |
 | slug | String |  |
 | application | String |  |
 | icon_url | String |  |
 | _custom_json | [String: Any] |  |

---


 
 
 #### [FaqSchema](#FaqSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | application | String |  |
 | _id | String |  |
 | question | String |  |
 | answer | String |  |

---


 
 
 #### [FAQ](#FAQ)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | question | String |  |
 | answer | String |  |

---


 
 
 #### [CreateFaqResponseSchema](#CreateFaqResponseSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | faq | FaqSchema |  |

---


 
 
 #### [CreateFaqSchema](#CreateFaqSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | faq | FAQ |  |

---


 
 
 #### [GetFaqSchema](#GetFaqSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | faqs | [FaqSchema] |  |

---


 
 
 #### [UpdateFaqCategoryRequestSchema](#UpdateFaqCategoryRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | category | CategorySchema |  |

---


 
 
 #### [CreateFaqCategoryRequestSchema](#CreateFaqCategoryRequestSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | category | CategoryRequestSchema |  |

---


 
 
 #### [CreateFaqCategorySchema](#CreateFaqCategorySchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | category | CategorySchema |  |

---


 
 
 #### [GetFaqCategoriesSchema](#GetFaqCategoriesSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | categories | [CategorySchema] |  |

---


 
 
 #### [GetFaqCategoryBySlugSchema](#GetFaqCategoryBySlugSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | category | FAQCategorySchema |  |

---


 
 
 #### [LandingPageGetResponse](#LandingPageGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [LandingPageSchema] |  |
 | page | Page |  |

---


 
 
 #### [LandingPageSchema](#LandingPageSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | action | Action |  |
 | platform | [String] |  |
 | created_by | CreatedBySchema |  |
 | date_meta | DateMeta |  |
 | _id | String |  |
 | application | String |  |
 | archived | Bool |  |
 | _custom_json | [String: Any] |  |

---


 
 
 #### [DefaultNavigationResponse](#DefaultNavigationResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [NavigationSchema] |  |

---


 
 
 #### [NavigationGetResponse](#NavigationGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [NavigationSchema] |  |
 | page | Page |  |

---


 
 
 #### [Orientation](#Orientation)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | portrait | [String] |  |
 | landscape | [String] |  |

---


 
 
 #### [NavigationSchema](#NavigationSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | application | String |  |
 | archived | Bool |  |
 | name | String |  |
 | slug | String |  |
 | platform | [String] |  |
 | created_by | CreatedBySchema |  |
 | date_meta | DateMeta |  |
 | orientation | Orientation |  |
 | version | Double |  |
 | navigation | [NavigationReference] |  |

---


 
 
 #### [NavigationRequest](#NavigationRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | slug | String |  |
 | platform | [String] |  |
 | orientation | Orientation |  |
 | navigation | [NavigationReference] |  |

---


 
 
 #### [CustomPageSchema](#CustomPageSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | platform | String |  |
 | title | String |  |
 | slug | String |  |
 | type | String |  |
 | orientation | String |  |
 | application | String |  |
 | description | String |  |
 | published | Bool |  |
 | tags | [String] |  |
 | content | [[String: Any]] |  |
 | created_by | CreatedBySchema |  |
 | date_meta | DateMeta |  |
 | _schedule | ScheduleSchema |  |

---


 
 
 #### [ContentSchema](#ContentSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | value | [String: Any] |  |

---


 
 
 #### [CustomPage](#CustomPage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | data | CustomPageSchema |  |

---


 
 
 #### [FeatureImage](#FeatureImage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | secure_url | String |  |

---


 
 
 #### [PageGetResponse](#PageGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [PageSchema] |  |
 | page | Page |  |

---


 
 
 #### [PageSpec](#PageSpec)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | specifications | [PageSpecItem] |  |

---


 
 
 #### [PageSpecParam](#PageSpecParam)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | String |  |
 | required | Bool |  |

---


 
 
 #### [PageSpecItem](#PageSpecItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page_type | String |  |
 | display_name | String |  |
 | params | [PageSpecParam] |  |
 | query | [PageSpecParam] |  |

---


 
 
 #### [PageSchema](#PageSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | application | String |  |
 | component_ids | [String] | Components can be used to store multiple components |
 | content | [PageContent] |  |
 | created_by | CreatedBySchema |  |
 | date_meta | DateMeta |  |
 | description | String |  |
 | feature_image | Asset |  |
 | page_meta | [PageMeta] |  |
 | _schedule | ScheduleSchema |  |
 | _custom_json | [String: Any] |  |
 | orientation | String |  |
 | platform | String |  |
 | published | Bool |  |
 | slug | String |  |
 | tags | [String] |  |
 | title | String |  |
 | type | String |  |
 | seo | SEO |  |
 | visibility | [String: Any] |  |

---


 
 
 #### [CreatedBySchema](#CreatedBySchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |

---


 
 
 #### [PageContent](#PageContent)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | value | [String: Any] |  |

---


 
 
 #### [PageMeta](#PageMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | String |  |
 | value | [String: Any] |  |

---


 
 
 #### [PageRequest](#PageRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _schedule | CronSchedule |  |
 | application | String |  |
 | author | Author |  |
 | _custom_json | [String: Any] |  |
 | orientation | String |  |
 | content | [[String: Any]] |  |
 | feature_image | Asset |  |
 | published | Bool |  |
 | reading_time | String |  |
 | slug | String |  |
 | tags | [String] |  |
 | seo | SEO |  |
 | title | String |  |

---


 
 
 #### [CronSchedule](#CronSchedule)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | cron | String |  |
 | start | String |  |
 | end | String |  |
 | duration | Double |  |

---


 
 
 #### [PagePublishRequest](#PagePublishRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | publish | Bool |  |

---


 
 
 #### [PageMetaSchema](#PageMetaSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | system_pages | [NavigationSchema] |  |
 | custom_pages | [PageSchema] |  |
 | application_id | String |  |

---


 
 
 #### [SlideshowGetResponse](#SlideshowGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [SlideshowSchema] |  |
 | page | Page |  |

---


 
 
 #### [SlideshowSchema](#SlideshowSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | slug | String |  |
 | date_meta | DateMeta |  |
 | application | String |  |
 | platform | String |  |
 | configuration | ConfigurationSchema |  |
 | media | [SlideshowMedia] |  |
 | active | Bool |  |
 | archived | Bool |  |
 | _custom_json | [String: Any] |  |

---


 
 
 #### [SlideshowRequest](#SlideshowRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | platform | String |  |
 | configuration | ConfigurationSchema |  |
 | media | SlideshowMedia |  |
 | active | Bool |  |

---


 
 
 #### [Support](#Support)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | created | Bool |  |
 | _id | String |  |
 | config_type | String |  |
 | application | String |  |
 | created_at | String |  |
 | updated_at | String |  |
 | contact | ContactSchema |  |

---


 
 
 #### [PhoneProperties](#PhoneProperties)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | String |  |
 | code | String |  |
 | number | String |  |

---


 
 
 #### [PhoneSchema](#PhoneSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool |  |
 | phone | [PhoneProperties] |  |

---


 
 
 #### [EmailProperties](#EmailProperties)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | String |  |
 | value | String |  |

---


 
 
 #### [EmailSchema](#EmailSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool |  |
 | email | [EmailProperties] |  |

---


 
 
 #### [ContactSchema](#ContactSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | phone | PhoneSchema |  |
 | email | EmailSchema |  |

---


 
 
 #### [TagsSchema](#TagsSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application | String |  |
 | _id | String |  |
 | tags | [TagSchema] |  |

---


 
 
 #### [TagSchema](#TagSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | url | String |  |
 | type | String |  |
 | sub_type | String |  |
 | _id | String |  |
 | position | String |  |
 | attributes | [String: Any] |  |
 | content | String |  |

---



---



 
 
 #### [CommunicationConsentReq](#CommunicationConsentReq)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | response | String |  |
 | action | String |  |
 | channel | String |  |

---


 
 
 #### [CommunicationConsentRes](#CommunicationConsentRes)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | app_id | String |  |
 | user_id | String |  |
 | channels | CommunicationConsentChannels |  |

---


 
 
 #### [CommunicationConsentChannelsEmail](#CommunicationConsentChannelsEmail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | response | String |  |
 | display_name | String |  |

---


 
 
 #### [CommunicationConsentChannelsSms](#CommunicationConsentChannelsSms)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | response | String |  |
 | display_name | String |  |

---


 
 
 #### [CommunicationConsentChannelsWhatsapp](#CommunicationConsentChannelsWhatsapp)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | response | String |  |
 | display_name | String |  |
 | country_code | String |  |
 | phone_number | String |  |

---


 
 
 #### [CommunicationConsentChannels](#CommunicationConsentChannels)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | CommunicationConsentChannelsEmail |  |
 | sms | CommunicationConsentChannelsSms |  |
 | whatsapp | CommunicationConsentChannelsWhatsapp |  |

---


 
 
 #### [CommunicationConsent](#CommunicationConsent)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | app_id | String |  |
 | user_id | String |  |
 | channels | CommunicationConsentChannels |  |

---


 
 
 #### [PushtokenReq](#PushtokenReq)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | action | String |  |
 | bundle_identifier | String |  |
 | push_token | String |  |
 | unique_device_id | String |  |
 | type | String |  |

---


 
 
 #### [PushtokenRes](#PushtokenRes)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | bundle_identifier | String |  |
 | push_token | String |  |
 | unique_device_id | String |  |
 | type | String |  |
 | platform | String |  |
 | application_id | String |  |
 | user_id | String |  |
 | created_at | String |  |
 | updated_at | String |  |
 | expired_at | String |  |

---



---



 
 
 #### [QRCodeResp](#QRCodeResp)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | link | String |  |
 | svg | String |  |

---


 
 
 #### [RedirectDevice](#RedirectDevice)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | link | String |  |
 | type | String |  |

---


 
 
 #### [WebRedirect](#WebRedirect)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | link | String |  |
 | type | String |  |

---


 
 
 #### [Redirects](#Redirects)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | ios | RedirectDevice |  |
 | android | RedirectDevice |  |
 | web | WebRedirect |  |
 | force_web | Bool |  |

---


 
 
 #### [CampaignShortLink](#CampaignShortLink)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | source | String |  |
 | medium | String |  |

---


 
 
 #### [Attribution](#Attribution)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | campaign_cookie_expiry | String |  |

---


 
 
 #### [SocialMediaTags](#SocialMediaTags)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | description | String |  |
 | image | String |  |

---


 
 
 #### [ShortLinkReq](#ShortLinkReq)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String | Give a name to the link. |
 | url | String | The web address to shorten. |
 | hash | String |  |
 | active | Bool |  |
 | expire_at | String |  |
 | enable_tracking | Bool |  |
 | personalized | Bool | To create personalized short links. |
 | campaign | CampaignShortLink |  |
 | redirects | Redirects |  |
 | attribution | Attribution |  |
 | social_media_tags | SocialMediaTags |  |
 | count | Int |  |

---


 
 
 #### [UrlInfo](#UrlInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | original | String |  |
 | short | String |  |
 | hash | String |  |

---


 
 
 #### [ShortLinkRes](#ShortLinkRes)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | url | UrlInfo |  |
 | created_by | String |  |
 | app_redirect | Bool |  |
 | fallback | String |  |
 | active | Bool |  |
 | _id | String |  |
 | enable_tracking | Bool |  |
 | expire_at | String |  |
 | application | String |  |
 | user_id | String |  |
 | created_at | String |  |
 | meta | [String: Any] |  |
 | updated_at | String |  |
 | personalized | Bool | To create personalized short links |
 | campaign | CampaignShortLink |  |
 | redirects | Redirects |  |
 | attribution | Attribution |  |
 | social_media_tags | SocialMediaTags |  |
 | count | Int |  |

---


 
 
 #### [ShortLinkList](#ShortLinkList)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ShortLinkRes] |  |
 | page | Page |  |

---


 
 
 #### [ErrorRes](#ErrorRes)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---



---



 
 
 #### [FailedResponse](#FailedResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [CDN](#CDN)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | url | String |  |

---


 
 
 #### [Upload](#Upload)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | expiry | Int |  |
 | url | String |  |

---


 
 
 #### [StartResponse](#StartResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | file_name | String |  |
 | file_path | String |  |
 | content_type | String |  |
 | method | String |  |
 | namespace | String |  |
 | operation | String |  |
 | size | Int |  |
 | upload | Upload |  |
 | cdn | CDN |  |
 | tags | [String] |  |

---


 
 
 #### [StartRequest](#StartRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | file_name | String |  |
 | content_type | String |  |
 | size | Int |  |
 | tags | [String] |  |
 | params | [String: Any] |  |

---


 
 
 #### [CompleteResponse](#CompleteResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | file_name | String |  |
 | file_path | String |  |
 | content_type | String |  |
 | method | String |  |
 | namespace | String |  |
 | operation | String |  |
 | size | Int |  |
 | upload | Upload |  |
 | cdn | CDN |  |
 | success | String |  |
 | tags | [String] |  |
 | created_on | String |  |
 | modified_on | String |  |

---


 
 
 #### [Opts](#Opts)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | attempts | Int |  |
 | timestamp | Int |  |
 | delay | Int |  |

---


 
 
 #### [CopyFileTask](#CopyFileTask)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |
 | name | String |  |
 | data | BulkRequest |  |
 | opts | Opts |  |
 | progress | Int |  |
 | delay | Int |  |
 | timestamp | Int |  |
 | attempts_made | Int |  |
 | stacktrace | [String] |  |
 | finished_on | Int |  |
 | processed_on | Int |  |

---


 
 
 #### [BulkResponse](#BulkResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | tracking_url | String |  |
 | task | CopyFileTask |  |

---


 
 
 #### [ReqConfiguration](#ReqConfiguration)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | concurrency | Int |  |

---


 
 
 #### [Destination](#Destination)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | namespace | String |  |
 | rewrite | String |  |
 | basepath | String |  |

---


 
 
 #### [BulkRequest](#BulkRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | urls | [String] |  |
 | destination | Destination |  |
 | configuration | ReqConfiguration |  |

---


 
 
 #### [Urls](#Urls)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | url | String |  |
 | signed_url | String |  |
 | expiry | Int |  |

---


 
 
 #### [SignUrlResponse](#SignUrlResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | urls | [Urls] |  |

---


 
 
 #### [SignUrlRequest](#SignUrlRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | expiry | Int |  |
 | urls | [String] |  |

---


 
 
 #### [DbRecord](#DbRecord)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | success | Bool |  |
 | tags | [String] |  |
 | _id | String |  |
 | file_name | String |  |
 | operation | String |  |
 | namespace | String |  |
 | content_type | String |  |
 | file_path | String |  |
 | upload | Upload |  |
 | cdn | CDN |  |
 | created_on | String |  |
 | modified_on | String |  |

---


 
 
 #### [BrowseResponse](#BrowseResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [DbRecord] |  |
 | page | Page |  |

---



---



 
 
 #### [ApplicationAboutResponse](#ApplicationAboutResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application_info | ApplicationInfo |  |
 | company_info | CompanyInfo |  |
 | owner_info | OwnerInfo |  |

---


 
 
 #### [ApplicationInfo](#ApplicationInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | domain | Domain |  |
 | website | ApplicationWebsite |  |
 | cors | ApplicationCors |  |
 | description | String |  |
 | name | String |  |
 | meta | ApplicationMeta |  |
 | token | String |  |
 | secret | String |  |
 | created_at | String |  |
 | banner | SecureUrl |  |
 | logo | SecureUrl |  |
 | is_active | Bool |  |

---


 
 
 #### [CompanyInfo](#CompanyInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | uid | Int |  |
 | created_on | String |  |
 | is_active | Bool |  |
 | name | String |  |
 | addresses | [CompanyAboutAddress] |  |
 | notification_emails | [String] |  |

---


 
 
 #### [OwnerInfo](#OwnerInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | emails | [UserEmail] |  |
 | phone_numbers | [UserPhoneNumber] |  |
 | first_name | String |  |
 | last_name | String |  |
 | profile_pic | String |  |

---


 
 
 #### [AppVersionRequest](#AppVersionRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application | ApplicationVersionRequest |  |
 | device | Device |  |
 | locale | String |  |
 | timezone | String |  |

---


 
 
 #### [ApplicationVersionRequest](#ApplicationVersionRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |
 | name | String |  |
 | namespace | String |  |
 | token | String |  |
 | version | String |  |

---


 
 
 #### [Device](#Device)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | build | Int |  |
 | model | String |  |
 | os | OS |  |

---


 
 
 #### [OS](#OS)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | version | String |  |

---


 
 
 #### [SupportedLanguage](#SupportedLanguage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | code | String |  |

---


 
 
 #### [LanguageResponse](#LanguageResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [SupportedLanguage] |  |

---


 
 
 #### [AppStaffResponse](#AppStaffResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | staff_users | [AppStaff] |  |

---


 
 
 #### [UpdateDialog](#UpdateDialog)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | interval | Int |  |

---


 
 
 #### [OrderingStoreSelectRequest](#OrderingStoreSelectRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | ordering_store | OrderingStoreSelect |  |

---


 
 
 #### [OrderingStoreSelect](#OrderingStoreSelect)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | uid | Int | store uid |

---


 
 
 #### [AppStaff](#AppStaff)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | order_incent | Bool |  |
 | stores | [Int] |  |
 | application | String |  |
 | title | String |  |
 | user | String |  |
 | employee_code | String |  |
 | first_name | String |  |
 | last_name | String |  |
 | profile_pic_url | String |  |

---


 
 
 #### [AppTokenResponse](#AppTokenResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | tokens | Tokens |  |
 | _id | String |  |
 | application | String |  |
 | created_at | String |  |
 | updated_at | String |  |
 | __v | Int |  |

---


 
 
 #### [Tokens](#Tokens)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | firebase | Firebase |  |
 | moengage | Moengage |  |
 | segment | Segment |  |
 | gtm | Gtm |  |
 | freshchat | Freshchat |  |
 | safetynet | Safetynet |  |
 | fynd_rewards | FyndRewards |  |
 | google_map | GoogleMap |  |

---


 
 
 #### [Firebase](#Firebase)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | credentials | Credentials |  |
 | enabled | Bool |  |

---


 
 
 #### [Credentials](#Credentials)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | ios | Ios |  |
 | android | Android |  |
 | project_id | String |  |
 | gcm_sender_id | String |  |
 | application_id | String |  |
 | api_key | String |  |

---


 
 
 #### [Ios](#Ios)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application_id | String |  |
 | api_key | String |  |

---


 
 
 #### [Android](#Android)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application_id | String |  |
 | api_key | String |  |

---


 
 
 #### [Moengage](#Moengage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | credentials | MoengageCredentials |  |
 | enabled | Bool |  |

---


 
 
 #### [MoengageCredentials](#MoengageCredentials)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | app_id | String |  |

---


 
 
 #### [Segment](#Segment)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | credentials | SegmentCredentials |  |
 | enabled | Bool |  |

---


 
 
 #### [SegmentCredentials](#SegmentCredentials)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | write_key | String |  |

---


 
 
 #### [Gtm](#Gtm)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | credentials | GtmCredentials |  |
 | enabled | Bool |  |

---


 
 
 #### [GtmCredentials](#GtmCredentials)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | api_key | String |  |

---


 
 
 #### [Freshchat](#Freshchat)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | credentials | FreshchatCredentials |  |
 | enabled | Bool |  |

---


 
 
 #### [FreshchatCredentials](#FreshchatCredentials)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | app_id | String |  |
 | app_key | String |  |
 | web_token | String |  |

---


 
 
 #### [Safetynet](#Safetynet)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | credentials | SafetynetCredentials |  |
 | enabled | Bool |  |

---


 
 
 #### [SafetynetCredentials](#SafetynetCredentials)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | api_key | String |  |

---


 
 
 #### [FyndRewards](#FyndRewards)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | credentials | FyndRewardsCredentials |  |

---


 
 
 #### [FyndRewardsCredentials](#FyndRewardsCredentials)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | public_key | String |  |

---


 
 
 #### [GoogleMap](#GoogleMap)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | credentials | GoogleMapCredentials |  |

---


 
 
 #### [GoogleMapCredentials](#GoogleMapCredentials)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | api_key | String |  |

---


 
 
 #### [ProductDetailFeature](#ProductDetailFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | similar | [String] |  |
 | seller_selection | Bool |  |
 | update_product_meta | Bool |  |
 | request_product | Bool |  |

---


 
 
 #### [LaunchPage](#LaunchPage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page_type | String |  |
 | params | [String: Any] |  |
 | query | [String: Any] |  |

---


 
 
 #### [LandingPageFeature](#LandingPageFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | launch_page | LaunchPage |  |
 | continue_as_guest | Bool |  |
 | login_btn_text | String |  |
 | show_domain_textbox | Bool |  |
 | show_register_btn | Bool |  |

---


 
 
 #### [RegistrationPageFeature](#RegistrationPageFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | ask_store_address | Bool |  |

---


 
 
 #### [AppFeature](#AppFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | product_detail | ProductDetailFeature |  |
 | landing_page | LandingPageFeature |  |
 | registration_page | RegistrationPageFeature |  |
 | home_page | HomePageFeature |  |
 | common | CommonFeature |  |
 | cart | CartFeature |  |
 | qr | QrFeature |  |
 | pcr | PcrFeature |  |
 | order | OrderFeature |  |
 | _id | String |  |
 | app | String |  |
 | created_at | String |  |
 | updated_at | String |  |
 | __v | Int |  |

---


 
 
 #### [HomePageFeature](#HomePageFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | order_processing | Bool |  |

---


 
 
 #### [CommonFeature](#CommonFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | communication_optin_dialog | CommunicationOptinDialogFeature |  |
 | deployment_store_selection | DeploymentStoreSelectionFeature |  |
 | listing_price | ListingPriceFeature |  |
 | listing_page | ListingPageFeature |  |
 | currency | CurrencyFeature |  |
 | revenue_engine | RevenueEngineFeature |  |
 | feedback | FeedbackFeature |  |
 | compare_products | CompareProductsFeature |  |

---


 
 
 #### [CommunicationOptinDialogFeature](#CommunicationOptinDialogFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | visibility | Bool |  |

---


 
 
 #### [DeploymentStoreSelectionFeature](#DeploymentStoreSelectionFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | enabled | Bool |  |
 | type | String |  |

---


 
 
 #### [ListingPriceFeature](#ListingPriceFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | String |  |
 | sort | String |  |

---


 
 
 #### [ListingPageFeature](#ListingPageFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | sort_on | String |  |

---


 
 
 #### [CurrencyFeature](#CurrencyFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | [String] |  |
 | type | String |  |
 | default_currency | String |  |

---


 
 
 #### [RevenueEngineFeature](#RevenueEngineFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | enabled | Bool |  |

---


 
 
 #### [FeedbackFeature](#FeedbackFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | enabled | Bool |  |

---


 
 
 #### [CompareProductsFeature](#CompareProductsFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | enabled | Bool |  |

---


 
 
 #### [CartFeature](#CartFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | gst_input | Bool |  |
 | staff_selection | Bool |  |
 | placing_for_customer | Bool |  |
 | google_map | Bool |  |

---


 
 
 #### [QrFeature](#QrFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application | Bool |  |
 | products | Bool |  |
 | collections | Bool |  |

---


 
 
 #### [PcrFeature](#PcrFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | staff_selection | Bool |  |

---


 
 
 #### [OrderFeature](#OrderFeature)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | buy_again | Bool |  |

---


 
 
 #### [AppFeatureRequest](#AppFeatureRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | feature | AppFeature |  |

---


 
 
 #### [AppFeatureResponse](#AppFeatureResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | feature | AppFeature |  |

---


 
 
 #### [Currency](#Currency)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | is_active | Bool |  |
 | name | String |  |
 | code | String |  |
 | created_at | String |  |
 | updated_at | String |  |
 | decimal_digits | Int |  |
 | symbol | String |  |

---


 
 
 #### [Domain](#Domain)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | verified | Bool |  |
 | is_primary | Bool |  |
 | is_default | Bool |  |
 | is_shortlink | Bool |  |
 | _id | String |  |
 | name | String |  |

---


 
 
 #### [ApplicationWebsite](#ApplicationWebsite)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | enabled | Bool |  |
 | basepath | String |  |

---


 
 
 #### [ApplicationCors](#ApplicationCors)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | domains | [String] |  |

---


 
 
 #### [ApplicationAuth](#ApplicationAuth)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | enabled | Bool |  |

---


 
 
 #### [ApplicationRedirections](#ApplicationRedirections)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | from | String |  |
 | redirect_to | String |  |
 | type | String |  |

---


 
 
 #### [ApplicationMeta](#ApplicationMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | value | String |  |

---


 
 
 #### [SecureUrl](#SecureUrl)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | secure_url | String |  |

---


 
 
 #### [Application](#Application)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | website | ApplicationWebsite |  |
 | cors | ApplicationCors |  |
 | auth | ApplicationAuth |  |
 | description | String |  |
 | channel_type | String |  |
 | cache_ttl | Int |  |
 | is_internal | Bool |  |
 | is_active | Bool |  |
 | _id | String |  |
 | name | String |  |
 | owner | String |  |
 | company_id | Int |  |
 | token | String |  |
 | redirections | [ApplicationRedirections] |  |
 | meta | [ApplicationMeta] |  |
 | created_at | String |  |
 | updated_at | String |  |
 | __v | Int |  |
 | banner | SecureUrl |  |
 | logo | SecureUrl |  |
 | favicon | SecureUrl |  |
 | domains | [Domain] |  |
 | app_type | String |  |
 | mobile_logo | SecureUrl |  |
 | domain | Domain |  |

---


 
 
 #### [NotFound](#NotFound)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [UnhandledError](#UnhandledError)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [InvalidPayloadRequest](#InvalidPayloadRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [SuccessMessageResponse](#SuccessMessageResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---


 
 
 #### [InventoryBrandRule](#InventoryBrandRule)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | criteria | String | Whether enable all or explicitly few brands as inventory |
 | brands | [Int] | Brand uids in case of explicit criteria |

---


 
 
 #### [StoreCriteriaRule](#StoreCriteriaRule)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | companies | [Int] | list of company uids |
 | brands | [Int] | list of brand uids |

---


 
 
 #### [InventoryStoreRule](#InventoryStoreRule)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | criteria | String | Whether enable all or explicitly few stores or use filter of brands and company as inventory stores |
 | rules | [StoreCriteriaRule] | List of rules with company and brands uids. Used when critera is `filter` |
 | stores | [Int] | List of store uids. Used when critera is `explicit` |

---


 
 
 #### [InventoryPaymentConfig](#InventoryPaymentConfig)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | mode_of_payment | String |  |
 | source | String |  |

---


 
 
 #### [StorePriorityRule](#StorePriorityRule)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | enabled | Bool |  |
 | storetype_order | [String] |  |

---


 
 
 #### [ArticleAssignmentRule](#ArticleAssignmentRule)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | store_priority | StorePriorityRule |  |

---


 
 
 #### [InventoryArticleAssignment](#InventoryArticleAssignment)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | post_order_reassignment | Bool |  |
 | enforced_stores | [Int] |  |
 | rules | ArticleAssignmentRule |  |

---


 
 
 #### [CompanyAboutAddress](#CompanyAboutAddress)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | pincode | Int |  |
 | address1 | String |  |
 | address2 | String |  |
 | city | String |  |
 | state | String |  |
 | country | String |  |
 | address_type | String |  |

---


 
 
 #### [UserEmail](#UserEmail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool |  |
 | primary | Bool |  |
 | verified | Bool |  |
 | email | String |  |

---


 
 
 #### [UserPhoneNumber](#UserPhoneNumber)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool |  |
 | primary | Bool |  |
 | verified | Bool |  |
 | country_code | Int |  |
 | phone | String |  |

---


 
 
 #### [ApplicationInformation](#ApplicationInformation)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | address | InformationAddress |  |
 | support | InformationSupport |  |
 | social_links | SocialLinks |  |
 | links | Links |  |
 | copyright_text | String |  |
 | _id | String |  |
 | business_highlights | BusinessHighlights |  |
 | application | String |  |
 | created_at | String |  |
 | updated_at | String |  |
 | __v | Int |  |

---


 
 
 #### [InformationAddress](#InformationAddress)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | loc | String |  |
 | address_line | [String] |  |
 | phone | InformationPhone |  |
 | city | String |  |
 | country | String |  |
 | pincode | Int |  |

---


 
 
 #### [InformationPhone](#InformationPhone)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | code | String |  |
 | number | String |  |

---


 
 
 #### [InformationSupport](#InformationSupport)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | phone | [String] |  |
 | email | [String] |  |
 | timing | String |  |

---


 
 
 #### [SocialLinks](#SocialLinks)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | facebook | FacebookLink |  |
 | instagram | InstagramLink |  |
 | twitter | TwitterLink |  |
 | pinterest | PinterestLink |  |
 | google_plus | GooglePlusLink |  |
 | youtube | YoutubeLink |  |
 | linked_in | LinkedInLink |  |
 | vimeo | VimeoLink |  |
 | blog_link | BlogLink |  |

---


 
 
 #### [FacebookLink](#FacebookLink)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | icon | String |  |
 | link | String |  |

---


 
 
 #### [InstagramLink](#InstagramLink)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | icon | String |  |
 | link | String |  |

---


 
 
 #### [TwitterLink](#TwitterLink)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | icon | String |  |
 | link | String |  |

---


 
 
 #### [PinterestLink](#PinterestLink)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | icon | String |  |
 | link | String |  |

---


 
 
 #### [GooglePlusLink](#GooglePlusLink)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | icon | String |  |
 | link | String |  |

---


 
 
 #### [YoutubeLink](#YoutubeLink)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | icon | String |  |
 | link | String |  |

---


 
 
 #### [LinkedInLink](#LinkedInLink)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | icon | String |  |
 | link | String |  |

---


 
 
 #### [VimeoLink](#VimeoLink)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | icon | String |  |
 | link | String |  |

---


 
 
 #### [BlogLink](#BlogLink)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | icon | String |  |
 | link | String |  |

---


 
 
 #### [Links](#Links)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | link | String |  |

---


 
 
 #### [BusinessHighlights](#BusinessHighlights)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | title | String |  |
 | icon | String |  |
 | sub_title | String |  |

---


 
 
 #### [ApplicationDetail](#ApplicationDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | description | String |  |
 | logo | SecureUrl |  |
 | mobile_logo | SecureUrl |  |
 | favicon | SecureUrl |  |
 | banner | SecureUrl |  |
 | domain | Domain |  |
 | domains | [Domain] |  |
 | _id | String |  |

---


 
 
 #### [CurrenciesResponse](#CurrenciesResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [Currency] |  |

---


 
 
 #### [StoreLatLong](#StoreLatLong)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | coordinates | [Double] |  |

---


 
 
 #### [OptedStoreAddress](#OptedStoreAddress)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | state | String |  |
 | address1 | String |  |
 | lat_long | StoreLatLong |  |
 | address2 | String |  |
 | pincode | Int |  |
 | country | String |  |
 | city | String |  |

---


 
 
 #### [OrderingStore](#OrderingStore)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | address | OptedStoreAddress |  |
 | _id | String |  |
 | uid | Int |  |
 | name | String |  |
 | display_name | String |  |
 | store_type | String |  |
 | store_code | String |  |
 | pincode | Int |  |
 | code | String |  |

---


 
 
 #### [OrderingStores](#OrderingStores)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page | Page |  |
 | items | [OrderingStore] |  |
 | deployed_stores | [Int] |  |
 | all_stores | Bool |  |
 | enabled | Bool |  |
 | type | String |  |
 | _id | String |  |
 | app | String |  |
 | __v | Int |  |

---



---



 
 
 #### [AggregatorConfigDetail](#AggregatorConfigDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | api | String | Payment gateway api endpoint |
 | merchant_key | String | Unique merchant key |
 | merchant_id | String | Unique merchant id |
 | key | String | Payment gateway api key |
 | verify_api | String | Payment gateway verify payment api endpoint |
 | config_type | String | Fynd or self payment gateway |
 | sdk | Bool | SDK |
 | secret | String | Masked payment gateway api secret |
 | user_id | String | Registered User id |
 | pin | String | Masked pin |

---


 
 
 #### [AggregatorsConfigDetailResponse](#AggregatorsConfigDetailResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | rupifi | AggregatorConfigDetail |  |
 | ccavenue | AggregatorConfigDetail |  |
 | stripe | AggregatorConfigDetail |  |
 | payumoney | AggregatorConfigDetail |  |
 | mswipe | AggregatorConfigDetail |  |
 | simpl | AggregatorConfigDetail |  |
 | razorpay | AggregatorConfigDetail |  |
 | juspay | AggregatorConfigDetail |  |
 | success | Bool |  |
 | env | String | Environment i.e Live or Test |

---


 
 
 #### [ErrorCodeAndDescription](#ErrorCodeAndDescription)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String | Error human understandable description. |
 | code | String | Error descrption code. |

---


 
 
 #### [HttpErrorCodeAndResponse](#HttpErrorCodeAndResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | success | Bool | Response is successful or not |
 | error | ErrorCodeAndDescription |  |

---


 
 
 #### [AttachCardRequest](#AttachCardRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | card_id | String | Card token of payment gateway. |
 | refresh | Bool | Refresh cache flag. |
 | name_on_card | String |  |
 | nickname | String |  |

---


 
 
 #### [AttachCardsResponse](#AttachCardsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String | Human readable message. |
 | success | Bool | Response is successful or not. |
 | data | [String: Any] | List of cards of customer. |

---


 
 
 #### [CardPaymentGateway](#CardPaymentGateway)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | aggregator | String | Payment gateway name. |
 | api | String | Payment gateway CARD api endpoint |
 | customer_id | String | Payment gateway customer id. |

---


 
 
 #### [ActiveCardPaymentGatewayResponse](#ActiveCardPaymentGatewayResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String | Human readable message. |
 | success | Bool | Response is successful or not. |
 | cards | CardPaymentGateway | Card's payment gateway with customer id. |

---


 
 
 #### [Card](#Card)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | card_isin | String | card_isin |
 | card_id | String | card_id |
 | card_reference | String | card_reference |
 | card_type | String | card_type |
 | card_name | String | card_name |
 | nickname | String | nickname |
 | card_token | String | card_token |
 | exp_year | Int | exp_year |
 | card_brand_image | String | card_brand_image |
 | expired | Bool | expired |
 | card_fingerprint | String | card_fingerprint |
 | card_brand | String | card_brand |
 | exp_month | Int | exp_month |
 | card_number | String | card_number |
 | aggregator_name | String | aggregator_name |
 | card_issuer | String | card_issuer |

---


 
 
 #### [ListCardsResponse](#ListCardsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String | Human readable message. |
 | success | Bool | Response is successful or not. |
 | data | [Card] | List of cards of customer. |

---


 
 
 #### [DeletehCardRequest](#DeletehCardRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | card_id | String | Card token of payment gateway. |

---


 
 
 #### [DeleteCardsResponse](#DeleteCardsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String | Human readable message. |
 | success | Bool | Response is successful or not. |

---


 
 
 #### [ValidateCustomerRequest](#ValidateCustomerRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | payload | String | Hashed payload string. |
 | aggregator | String | Payment gateway name in camel case i.e Simpl, Rupifi |
 | transaction_amount_in_paise | Int | Payable amount in paise |
 | merchant_params | [String: Any] | Extra meta fields. |
 | phone_number | String | User mobile number without country code. |

---


 
 
 #### [ValidateCustomerResponse](#ValidateCustomerResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String | Error or success message. |
 | success | Bool | Response is successful or not |
 | data | [String: Any] | Payment gateway response data |

---


 
 
 #### [ChargeCustomerRequest](#ChargeCustomerRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | aggregator | String | Payment gateway name i.e Simpl, Mswipe |
 | transaction_token | String | Transaction token of payment gateway. |
 | verified | Bool | Already Verified flag from payment gateway i.e Mswipe |
 | order_id | String | Unique order id. |
 | amount | Int | Chargable amount of order. |

---


 
 
 #### [ChargeCustomerResponse](#ChargeCustomerResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | cart_id | String | Cart id of customer |
 | aggregator | String | Payment gateway name i.e Simpl, Mswipe |
 | delivery_address_id | String | Delivery adddress id of customer |
 | order_id | String | Unique order id. |
 | status | String | Status of charged payment. |
 | message | String | Human readable message. |
 | success | Bool | Response is successful or not. |

---


 
 
 #### [PaymentInitializationRequest](#PaymentInitializationRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | razorpay_payment_id | String | Payment gateway payment id |
 | aggregator | String | Payment gateway name |
 | method | String | Payment method |
 | polling_url | String | Polling url to check payment status |
 | aggregator_order_id | String | Payment gateway order id |
 | customer_id | String | Payment gateway customer id. |
 | timeout | Int | Payment polling timeout if not recieved response |
 | virtual_id | String | Bharat QR code virtual id |
 | merchant_order_id | String | Unique fynd order id |

---


 
 
 #### [PaymentInitializationResponse](#PaymentInitializationResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | razorpay_payment_id | String | Payment  id. |
 | aggregator | String | Payment gateway name |
 | method | String | Payment method |
 | vpa | String | Customer vpa address |
 | polling_url | String | Polling url. |
 | aggregator_order_id | String | Payment order id |
 | customer_id | String | Payment gateway customer id. |
 | bqr_image | String | Bharath qr image url. |
 | currency | String | Currency code. |
 | status | String | Status of payment. |
 | amount | Int | Payable amount. |
 | success | Bool | Response is successful or not. |
 | virtual_id | String | Payment virtual address. |
 | merchant_order_id | String | order id |
 | timeout | Int | timeout. |

---


 
 
 #### [PaymentStatusUpdateRequest](#PaymentStatusUpdateRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | aggregator | String | Payment gateway name |
 | method | String | Payment method |
 | email | String | Customer valid email |
 | vpa | String | Customer vpa address |
 | customer_id | String | Payment gateway customer id. |
 | order_id | String | Payment gateway order id |
 | currency | String | Currency code. |
 | status | String | Status of payment. |
 | amount | Int | Payable amount. |
 | contact | String | Customer valid mobile number |
 | merchant_order_id | String | Unique fynd order id |

---


 
 
 #### [PaymentStatusUpdateResponse](#PaymentStatusUpdateResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | retry | Bool | Response is successful or not. |
 | aggregator_name | String | Payment gateway name |
 | status | String | Payment status |

---


 
 
 #### [PaymentModeLogo](#PaymentModeLogo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | large | String | large |
 | small | String | smalll |

---


 
 
 #### [PaymentModeList](#PaymentModeList)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | intent_flow | String | intent_flow |
 | nickname | String | nickname |
 | card_token | String | card_token |
 | fynd_vpa | String | fynd_vpa |
 | name | String | name |
 | aggregator_name | String | aggregator_name |
 | display_priority | Int | Dispaly Priority |
 | card_id | String | card_id |
 | exp_year | Int | exp_year |
 | intent_app_error_list | [String] | intent_app_error_list |
 | card_number | String | card_number |
 | card_reference | String | card_reference |
 | retry_count | Int | retry_count |
 | card_name | String | card_name |
 | merchant_code | String | merchant code |
 | card_fingerprint | String | card_fingerprint |
 | code | String | code |
 | card_issuer | String | card_issuer |
 | card_isin | String | card_isin |
 | card_type | String | card_type |
 | card_brand_image | String | card_brand_image |
 | expired | Bool | expired |
 | display_name | String | display name |
 | card_brand | String | card_brand |
 | timeout | Int | timeout |
 | exp_month | Int | exp_month |
 | logo_url | PaymentModeLogo | Logo |

---


 
 
 #### [RootPaymentMode](#RootPaymentMode)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | list | [PaymentModeList] | Payment mode |
 | display_priority | Int | Dispaly Priority |
 | display_name | String | Payment mode display name |
 | add_card_enabled | Bool | Annonymous card flag |
 | name | String | Payment mode name |
 | aggregator_name | String | Dispaly Priority |
 | anonymous_enable | Bool | Annonymous card flag |

---


 
 
 #### [AggregatorRoute](#AggregatorRoute)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | api_link | String | api_link |
 | data | [String: Any] | Data |
 | payment_flow | String | payment_flow |

---


 
 
 #### [PaymentFlow](#PaymentFlow)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | rupifi | AggregatorRoute | Rupifi |
 | upi_razorpay | AggregatorRoute | UPI_Razorpay |
 | msipe | AggregatorRoute | mswipe |
 | bqr_razorpay | AggregatorRoute | BQR_Razorpay |
 | payubiz | AggregatorRoute | Payubiz |
 | ccavenue | AggregatorRoute | Ccavenue |
 | stripe | AggregatorRoute | Stripe |
 | simpl | AggregatorRoute | simpl |
 | razorpay | AggregatorRoute | Razorpay |
 | juspay | AggregatorRoute | Juspay |
 | fynd | AggregatorRoute | Fynd |

---


 
 
 #### [PaymentOptionAndFlow](#PaymentOptionAndFlow)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | payment_option | [RootPaymentMode] | Payment options |
 | payment_flows | PaymentFlow | payment_flows |

---


 
 
 #### [PaymentModeRouteResponse](#PaymentModeRouteResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | success | Bool | Response is successful or not |
 | payment_options | PaymentOptionAndFlow | payment_options |

---


 
 
 #### [RupifiBannerData](#RupifiBannerData)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | kyc_url | String | Rupifi KYC banner url. |
 | status | String | Rupifi KYC status |

---


 
 
 #### [RupifiBannerResponse](#RupifiBannerResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | success | Bool | Successful or not. |
 | data | RupifiBannerData | Rupifi KYC banner details. |

---


 
 
 #### [TransferItemsDetails](#TransferItemsDetails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | logo_small | String | Beneficiary small Logo |
 | id | String |   |
 | display_name | Bool | Beneficiary Display Name |
 | name | String |  Beneficiary Name |
 | logo_large | String | Beneficiary large Logo |

---


 
 
 #### [TransferModeDetails](#TransferModeDetails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display_name | String | Beneficiary Mode Name |
 | items | [TransferItemsDetails] | Beneficiary Mode Items |

---


 
 
 #### [TransferModeResponse](#TransferModeResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | data | [TransferModeDetails] | Response Object |

---


 
 
 #### [UpdateRefundTransferModeRequest](#UpdateRefundTransferModeRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | transfer_mode | String | Transfer Mode of the Beneficiary to be added |
 | enable | Bool | True for enabling the Transfer Mode |

---


 
 
 #### [UpdateRefundTransferModeResponse](#UpdateRefundTransferModeResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | success | Bool | Response is successful or not |

---


 
 
 #### [OrderBeneficiaryDetails](#OrderBeneficiaryDetails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | Int |   |
 | address | String | Address of User |
 | title | String | Title Of Account |
 | email | String | EMail of User |
 | ifsc_code | String | Ifsc Code Of Account |
 | mobile | Bool | MObile no of User |
 | transfer_mode | String | Transfer Mode Of Account |
 | account_no | String | Account Number |
 | beneficiary_id | String | Benenficiary Id |
 | branch_name | Bool | Branch Name Of Account |
 | account_holder | String | Account Holder Name |
 | subtitle | String | SHort Title Of Account |
 | is_active | Bool | Boolean Flag whether Beneficiary set or not |
 | comment | Bool | Remarks |
 | display_name | String | Display Name Of Account |
 | bank_name | String | Bank Name Of Account |
 | created_on | String | Creation Date of Beneficiary |
 | delights_user_name | String | User Id Who filled the Beneficiary  |
 | modified_on | String | MOdification Date of Beneficiary |

---


 
 
 #### [OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | beneficiaries | [OrderBeneficiaryDetails] | All Beneficiaries Of An Order |
 | show_beneficiary_details | Bool | Show beneficiary details or not. |

---


 
 
 #### [NotFoundResourceError](#NotFoundResourceError)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String | Not Found |
 | success | Bool | Response is successful or not |
 | code | String | Bad Request Data |

---


 
 
 #### [IfscCodeResponse](#IfscCodeResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | branch_name | String | Branch Name Of Account |
 | success | Bool | Response is successful or not |
 | bank_name | String | Bank Name Of Account |

---


 
 
 #### [ErrorCodeDescription](#ErrorCodeDescription)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String | Error human understandable description. |
 | success | Bool | Response is successful or not |
 | code | String | Error descrption code. |

---


 
 
 #### [AddBeneficiaryViaOtpVerificationRequest](#AddBeneficiaryViaOtpVerificationRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | hash_key | String | Hash key of the beneficiary Id |
 | otp | String | Otp sent to the given Mobile No |
 | request_id | String | Request Id sent in  |

---


 
 
 #### [AddBeneficiaryViaOtpVerificationResponse](#AddBeneficiaryViaOtpVerificationResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | hash_key | String | Hash key of the beneficiary Id |
 | otp | String | Otp sent to the given Mobile No |
 | request_id | String | Request Id of the otp  |

---


 
 
 #### [WrongOtpError](#WrongOtpError)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String | Wrong OTP Code |
 | success | String | Response is successful or not |

---


 
 
 #### [BeneficiaryModeDetails](#BeneficiaryModeDetails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | address | String | Address of the User |
 | branch_name | String | Branch Name of the Account |
 | wallet | String |  |
 | comment | String | Remarks added by The user |
 | vpa | String |  |
 | account_holder | String | Name of the Account Holder |
 | bank_name | String | Bank Name of the Account |
 | email | String | Email of the Account Holder |
 | ifsc_code | String | Ifsc Code of the Account |
 | mobile | String | Moblie Number of the User |
 | account_no | String | Account NUmber of the Account Holder |

---


 
 
 #### [AddBeneficiaryDetailsRequest](#AddBeneficiaryDetailsRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | delights | Bool | True if  beneficiary to be added by delights or False if by User |
 | request_id | String |  |
 | shipment_id | String | Shipment Id of the respective Merchant Order Id |
 | transfer_mode | String | Transfer Mode of the Beneficiary to be added |
 | details | BeneficiaryModeDetails | Beneficiary bank details |
 | order_id | String | Merchant Order Id |
 | otp | String |  |

---


 
 
 #### [RefundAccountResponse](#RefundAccountResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String | Response message |
 | success | Bool | Success or failure flag. |
 | data | [String: Any] | Refund account data. |

---


 
 
 #### [WalletOtpRequest](#WalletOtpRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | mobile | String | Wallet Moblie Number of the User |
 | country_code | String | Country Code of the Mobile Number |

---


 
 
 #### [WalletOtpResponse](#WalletOtpResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_verified_flag | String | Boolean Flag whether OTP Validation is already done or not |
 | success | Bool | Response is successful or not |
 | request_id | String | request id  |

---


 
 
 #### [SetDefaultBeneficiaryRequest](#SetDefaultBeneficiaryRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | beneficiary_id | String | Beneficiary Hash Id of the beneficiary added |
 | order_id | String | Merchant Order Id |

---


 
 
 #### [SetDefaultBeneficiaryResponse](#SetDefaultBeneficiaryResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_beneficiary_set | Bool | Boolean Flag whether Beneficiary set or not |
 | success | Bool | Response is successful or not |

---



---



 
 
 #### [OrderById](#OrderById)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | order | OrderSchema |  |

---


 
 
 #### [OrderList](#OrderList)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [OrderSchema] |  |
 | page | OrderPage |  |
 | filters | OrderFilters |  |

---


 
 
 #### [OrderPage](#OrderPage)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | item_total | Int |  |
 | type | String |  |
 | size | Int |  |
 | current | Int |  |
 | has_next | Bool |  |

---


 
 
 #### [OrderFilters](#OrderFilters)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | statuses | [OrderStatuses] |  |
 | months | [OrderMonths] |  |

---


 
 
 #### [OrderStatuses](#OrderStatuses)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display | String |  |
 | value | Int |  |
 | is_selected | Bool |  |

---


 
 
 #### [OrderMonths](#OrderMonths)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | from_date | String |  |
 | id | String |  |
 | is_selected | Bool |  |
 | name | String |  |
 | to_date | String |  |
 | value | Int |  |

---


 
 
 #### [ShipmentById](#ShipmentById)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | shipment | Shipments |  |

---


 
 
 #### [ShipmentReasons](#ShipmentReasons)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | reasons | [Reasons] |  |

---


 
 
 #### [ShipmentStatusUpdateBody](#ShipmentStatusUpdateBody)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | statuses | [StatusesBody] |  |
 | force_transition | Bool |  |

---


 
 
 #### [StatusesBody](#StatusesBody)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | status | String |  |
 | shipments | [String: Any] |  |

---


 
 
 #### [ShipmentStatusUpdate](#ShipmentStatusUpdate)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | [[String: Any]] |  |
 | status | Bool |  |

---


 
 
 #### [ShipmentTrack](#ShipmentTrack)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | results | [Track] |  |

---


 
 
 #### [OrderSchema](#OrderSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | order_id | String |  |
 | breakup_values | [BreakupValues] |  |
 | order_created_time | String |  |
 | shipments | [Shipments] |  |
 | total_shipments_in_order | Int |  |
 | user_info | UserInfo |  |
 | bags_for_reorder | [BagsForReorder] |  |

---


 
 
 #### [BagsForReorder](#BagsForReorder)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | item_id | Int |  |
 | item_size | String |  |
 | store_id | Int |  |
 | seller_id | Int |  |
 | quantity | Int |  |
 | article_assignment | BagsForReorderArticleAssignment |  |

---


 
 
 #### [BagsForReorderArticleAssignment](#BagsForReorderArticleAssignment)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | level | String |  |
 | strategy | String |  |

---


 
 
 #### [PosOrderById](#PosOrderById)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | order | OrderSchema |  |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | item | Item |  |
 | prices | Prices |  |
 | current_status | CurrentStatus |  |
 | id | Int |  |
 | financial_breakup | [FinancialBreakup] |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | brand | ItemBrand |  |
 | name | String |  |
 | size | String |  |
 | slug_key | String |  |
 | image | [String] |  |
 | code | String |  |
 | id | Double |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | amount_paid_roundoff | Double |  |
 | fynd_credits | Double |  |
 | cod_charges | Double |  |
 | cashback | Double |  |
 | added_to_fynd_cash | Bool |  |
 | price_marked | Double |  |
 | transfer_price | Double |  |
 | coupon_value | Double |  |
 | price_effective | Double |  |
 | refund_credit | Double |  |
 | amount_paid | Double |  |
 | refund_amount | Double |  |
 | cashback_applied | Double |  |
 | gst_tax_percentage | Double |  |
 | value_of_good | Double |  |
 | brand_calculated_amount | Double |  |
 | promotion_effective_discount | Double |  |
 | discount | Double |  |
 | coupon_effective_discount | Double |  |
 | delivery_charge | Double |  |

---


 
 
 #### [CurrentStatus](#CurrentStatus)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | updated_at | String |  |
 | status | String |  |
 | name | String |  |
 | journey_type | String |  |

---


 
 
 #### [FinancialBreakup](#FinancialBreakup)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | brand_calculated_amount | Double |  |
 | coupon_value | Double |  |
 | amount_paid_roundoff | Double |  |
 | gst_fee | String |  |
 | refund_credit | Double |  |
 | cashback | Double |  |
 | refund_amount | Double |  |
 | value_of_good | Double |  |
 | promotion_effective_discount | Double |  |
 | size | String |  |
 | total_units | Int |  |
 | discount | Double |  |
 | amount_paid | Double |  |
 | fynd_credits | Double |  |
 | added_to_fynd_cash | Bool |  |
 | delivery_charge | Double |  |
 | hsn_code | String |  |
 | coupon_effective_discount | Double |  |
 | transfer_price | Double |  |
 | identifiers | Identifiers |  |
 | gst_tag | String |  |
 | price_marked | Double |  |
 | price_effective | Double |  |
 | cod_charges | Double |  |
 | item_name | String |  |
 | cashback_applied | Double |  |
 | gst_tax_percentage | Double |  |

---


 
 
 #### [Identifiers](#Identifiers)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | ean | String |  |
 | sku_code | String |  |

---


 
 
 #### [ItemBrand](#ItemBrand)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | logo | String |  |

---


 
 
 #### [BreakupValues](#BreakupValues)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display | String |  |
 | value | Double |  |
 | name | String |  |

---


 
 
 #### [DeliveryAddress](#DeliveryAddress)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | pincode | String |  |
 | landmark | String |  |
 | contact_person | String |  |
 | phone | String |  |
 | state | String |  |
 | version | String |  |
 | address1 | String |  |
 | created_at | String |  |
 | address_type | String |  |
 | address_category | String |  |
 | area | String |  |
 | city | String |  |
 | latitude | Double |  |
 | longitude | Double |  |
 | email | String |  |
 | country | String |  |
 | address2 | String |  |
 | updated_at | String |  |
 | name | String |  |
 | address | String |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | code | String |  |
 | id | Int |  |
 | name | String |  |
 | company_id | Int |  |

---


 
 
 #### [Invoice](#Invoice)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | updated_date | String |  |
 | invoice_url | String |  |
 | label_url | String |  |

---


 
 
 #### [Promise](#Promise)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | timestamp | Timestamp |  |

---


 
 
 #### [Timestamp](#Timestamp)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | min | String |  |
 | max | String |  |

---


 
 
 #### [Reasons](#Reasons)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | reason_text | String |  |
 | show_text_area | Bool |  |
 | feedback_type | String |  |
 | flow | String |  |
 | reason_id | Int |  |
 | priority | Int |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | hex_code | String |  |

---


 
 
 #### [ShipmentUserInfo](#ShipmentUserInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | gender | String |  |
 | mobile | String |  |
 | first_name | String |  |
 | last_name | String |  |

---


 
 
 #### [Shipments](#Shipments)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | order_id | String |  |
 | breakup_values | [BreakupValues] |  |
 | track_url | String |  |
 | traking_no | String |  |
 | tracking_details | [TrackingDetails] |  |
 | beneficiary_details | Bool |  |
 | can_return | Bool |  |
 | prices | Prices |  |
 | need_help_url | String |  |
 | shipment_id | String |  |
 | total_bags | Int |  |
 | delivery_address | DeliveryAddress |  |
 | invoice | Invoice |  |
 | comment | String |  |
 | order_type | String |  |
 | promise | Promise |  |
 | fulfilling_store | FulfillingStore |  |
 | bags | [Bags] |  |
 | can_cancel | Bool |  |
 | payment | ShipmentPayment |  |
 | shipment_created_at | String |  |
 | shipment_status | ShipmentStatus |  |
 | user_info | ShipmentUserInfo |  |
 | size_info | [String: Any] |  |
 | total_details | ShipmentTotalDetails |  |

---


 
 
 #### [ShipmentTotalDetails](#ShipmentTotalDetails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | total_price | Double |  |
 | sizes | Int |  |
 | pieces | Int |  |

---


 
 
 #### [ShipmentPayment](#ShipmentPayment)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | logo | String |  |
 | mode | String |  |
 | status | String |  |

---


 
 
 #### [Track](#Track)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | awb | String |  |
 | updated_at | String |  |
 | last_location_recieved_at | String |  |
 | reason | String |  |
 | shipment_type | String |  |
 | status | String |  |
 | updated_time | String |  |
 | account_name | String |  |

---


 
 
 #### [TrackingDetails](#TrackingDetails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_current | Bool |  |
 | status | String |  |
 | time | String |  |
 | is_passed | Bool |  |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | gender | String |  |
 | mobile | String |  |
 | name | String |  |
 | email | String |  |

---


 
 
 #### [ApefaceApiError](#ApefaceApiError)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |

---



---



 
 
 #### [ActionPageParams](#ActionPageParams)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | [String] |  |

---


 
 
 #### [CatalogueOrderRequest](#CatalogueOrderRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | articles | [RewardsArticle] |  |

---


 
 
 #### [CatalogueOrderResponse](#CatalogueOrderResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | articles | [RewardsArticle] |  |

---


 
 
 #### [DiscountProperties](#DiscountProperties)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | absolute | Double |  |
 | currency | String |  |
 | display_absolute | String |  |
 | display_percent | String |  |
 | percent | Double |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | code | Int |  |
 | exception | String |  |
 | info | String |  |
 | message | String |  |

---


 
 
 #### [Offer](#Offer)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _schedule | Schedule |  |
 | active | Bool |  |
 | application_id | String |  |
 | banner_image | Asset |  |
 | created_at | String |  |
 | name | String |  |
 | rule | [String: Any] |  |
 | share | ShareMessages |  |
 | sub_text | String |  |
 | text | String |  |
 | type | String |  |
 | updated_at | String |  |
 | updated_by | String |  |
 | url | String |  |

---


 
 
 #### [OrderDiscountRequest](#OrderDiscountRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | currency | String |  |
 | order_amount | Double |  |

---


 
 
 #### [OrderDiscountResponse](#OrderDiscountResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | applied_rule_bucket | OrderDiscountRuleBucket |  |
 | base_discount | DiscountProperties |  |
 | discount | DiscountProperties |  |
 | order_amount | Double |  |
 | points | Double |  |

---


 
 
 #### [OrderDiscountRuleBucket](#OrderDiscountRuleBucket)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | high | Double |  |
 | low | Double |  |
 | max | Double |  |
 | value | Double |  |
 | value_type | String |  |

---


 
 
 #### [PointsHistory](#PointsHistory)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | _id | String |  |
 | application_id | String |  |
 | claimed | Bool |  |
 | created_at | String |  |
 | expires_on | String |  |
 | meta | String |  |
 | points | Double |  |
 | remaining_points | Double |  |
 | text_1 | String |  |
 | text_2 | String |  |
 | text_3 | String |  |
 | txn_name | String |  |
 | updated_at | String |  |
 | user_id | String |  |

---


 
 
 #### [PointsHistoryResponse](#PointsHistoryResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | history | [PointsHistory] | History is the list of points transaction. |
 | page | Page |  |

---


 
 
 #### [PointsResponse](#PointsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | points | Double | Points is the total available |

---


 
 
 #### [RedeemReferralCodeRequest](#RedeemReferralCodeRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | device_id | String |  |
 | referral_code | String |  |

---


 
 
 #### [RedeemReferralCodeResponse](#RedeemReferralCodeResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |
 | points | Double |  |
 | redeemed | Bool |  |
 | referrer_id | String |  |
 | referrer_info | String |  |

---


 
 
 #### [ReferralDetailsResponse](#ReferralDetailsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | referral | Offer |  |
 | referrer_info | String |  |
 | share | ShareMessages |  |
 | user | ReferralDetailsUser |  |

---


 
 
 #### [ReferralDetailsUser](#ReferralDetailsUser)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | blocked | Bool |  |
 | points | Double |  |
 | redeemed | Bool |  |
 | referral_code | String |  |

---


 
 
 #### [RewardsArticle](#RewardsArticle)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |
 | points | Double |  |
 | price | Double |  |

---


 
 
 #### [Schedule](#Schedule)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | cron | String |  |
 | duration | Int |  |
 | end | String |  |
 | start | String |  |

---


 
 
 #### [ShareMessages](#ShareMessages)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | email | String |  |
 | facebook | String |  |
 | fallback | String |  |
 | message | String |  |
 | messenger | String |  |
 | sms | String |  |
 | text | String |  |
 | twitter | String |  |
 | whatsapp | String |  |

---



---



 
 
 #### [AbuseReport](#AbuseReport)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | abused | Bool |  |
 | date_meta | DateMeta |  |
 | description | String |  |
 | entity | Entity |  |
 | id | String |  |
 | name | String |  |
 | state | FeedbackState |  |
 | tags | [TagMeta] |  |

---


 
 
 #### [Access](#Access)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | answer | Bool |  |
 | ask_question | Bool |  |
 | comment | Bool |  |
 | rnr | Bool |  |

---


 
 
 #### [AddMediaListRequest](#AddMediaListRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | entity_id | String |  |
 | entity_type | String |  |
 | media_list | [AddMediaRequest] |  |
 | ref_id | String |  |
 | ref_type | String |  |

---


 
 
 #### [AddMediaRequest](#AddMediaRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | cloud_id | String |  |
 | cloud_name | String |  |
 | cloud_provider | String |  |
 | entity_id | String |  |
 | entity_type | String |  |
 | media_url | String |  |
 | ref_id | String |  |
 | ref_type | String |  |
 | tags | [String] |  |
 | thumbnail_url | String |  |
 | type | String |  |

---


 
 
 #### [ApplicationSchema](#ApplicationSchema)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |

---


 
 
 #### [Attribute](#Attribute)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | date_meta | DateMeta |  |
 | description | String |  |
 | id | String |  |
 | name | String |  |
 | slug | String |  |
 | tags | [TagMeta] |  |

---


 
 
 #### [AttributeObject](#AttributeObject)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String |  |
 | name | String |  |
 | slug | String |  |
 | title | String |  |
 | type | String |  |
 | value | Double |  |

---


 
 
 #### [AttributeResponse](#AttributeResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [Attribute] |  |
 | page | Page |  |

---


 
 
 #### [AutoDetectors](#AutoDetectors)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | text_detector | [TextDetector] |  |

---


 
 
 #### [CheckEligibilityResponse](#CheckEligibilityResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | access | Access |  |

---


 
 
 #### [Cloud](#Cloud)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |
 | name | String |  |
 | provider | String |  |

---


 
 
 #### [Comment](#Comment)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | comment | [String] |  |
 | date_meta | DateMeta |  |
 | entity | Entity |  |
 | id | String |  |
 | name | String |  |
 | state | FeedbackState |  |
 | tags | [TagMeta] |  |
 | vote_count | VoteCount |  |

---


 
 
 #### [CommentGetResponse](#CommentGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [Comment] |  |
 | page | Page |  |

---


 
 
 #### [CommentRequest](#CommentRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | comment | [String] |  |
 | entity_id | String |  |
 | entity_type | String |  |

---


 
 
 #### [CreateQNARequest](#CreateQNARequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | choices | [String] |  |
 | entity_id | String |  |
 | entity_type | String |  |
 | max_len | Int |  |
 | sort_priority | Int |  |
 | tags | [String] |  |
 | text | String |  |
 | type | String |  |

---


 
 
 #### [CreatedBy](#CreatedBy)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |
 | name | String |  |
 | tags | [TagMeta] |  |

---


 
 
 #### [CursorGetResponse](#CursorGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [[String: Any]] |  |
 | page | Page |  |

---


 
 
 #### [CustomerReview](#CustomerReview)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | auto_detectors | AutoDetectors |  |
 | created_on | String |  |
 | device_meta | DeviceMeta |  |
 | entity | ProductEntity |  |
 | id | String |  |
 | location_meta | LocationMeta |  |
 | modified_on | String |  |
 | name | String |  |
 | rating | ReviewRating |  |
 | review | Review |  |
 | slug | String |  |
 | state | State |  |
 | tags | [TagMeta] |  |
 | template | Template |  |
 | vote_count | VoteCount |  |

---


 
 
 #### [DeviceMeta](#DeviceMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | app_version | String |  |
 | platform | String |  |

---


 
 
 #### [Entity](#Entity)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |
 | type | String | entity type could be review/comment/ |

---


 
 
 #### [EntityMeta](#EntityMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | order_id | String |  |
 | type | String | product, delivery,seller |

---


 
 
 #### [FeedbackError](#FeedbackError)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | code | String |  |
 | exception | String |  |
 | info | String |  |
 | message | String |  |
 | meta | [String: Any] |  |
 | request_id | String |  |
 | stack_trace | String |  |
 | status | Int |  |

---


 
 
 #### [FeedbackMedia](#FeedbackMedia)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | application | ApplicationSchema |  |
 | cloud | Cloud |  |
 | created_by | CreatedBy |  |
 | date_meta | DateMeta |  |
 | description | String |  |
 | entity | Entity |  |
 | id | String |  |
 | name | String |  |
 | reference | Entity |  |
 | state | MediaState |  |
 | tags | [TagMeta] |  |
 | type | String |  |
 | url | Url |  |

---


 
 
 #### [FeedbackState](#FeedbackState)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool |  |
 | archive | Bool |  |
 | media | String |  |
 | qna | Bool |  |
 | rating | Bool |  |
 | review | Bool |  |

---


 
 
 #### [GeoLoc](#GeoLoc)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | latitude | String |  |
 | longitude | String |  |

---


 
 
 #### [InsertResponse](#InsertResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | ids | String |  |

---


 
 
 #### [Location](#Location)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | country_code | String |  |
 | flag_url | String |  |
 | geo_loc | GeoLoc |  |
 | name | String |  |
 | pincode | String |  |

---


 
 
 #### [LocationMeta](#LocationMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | demand | Location |  |
 | supply | Location |  |

---


 
 
 #### [MediaGetResponse](#MediaGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [FeedbackMedia] |  |
 | page | Page |  |

---


 
 
 #### [MediaMeta](#MediaMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | cloud | Cloud |  |
 | comment | [String] |  |
 | description | String |  |
 | id | String |  |
 | type | String |  |
 | url | Url |  |

---


 
 
 #### [MediaState](#MediaState)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | approve | Bool |  |
 | archive | Bool |  |

---


 
 
 #### [NumberGetResponse](#NumberGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [[String: Any]] |  |
 | page | PageNumber |  |

---


 
 
 #### [PageNumber](#PageNumber)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | current | Int |  |
 | has_next | Bool |  |
 | item_total | Int |  |
 | size | Int |  |
 | type | String |  |

---


 
 
 #### [ProductEntity](#ProductEntity)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String | For products, ID will be product ID, delivery, ID will be order id, seller ID will be company ID |
 | meta | EntityMeta |  |
 | type | String | product, delivery, seller, app, order |

---


 
 
 #### [QNA](#QNA)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | comments | [Comment] |  |
 | date_meta | DateMeta |  |
 | entity | Entity |  |
 | id | String |  |
 | name | String |  |
 | question | Question |  |
 | state | QNAState |  |
 | tag | [String] |  |
 | tags | [TagMeta] |  |

---


 
 
 #### [QNAGetResponse](#QNAGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [QNA] |  |
 | page | Page |  |

---


 
 
 #### [QNAState](#QNAState)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool |  |
 | approve | Bool |  |
 | modify | Bool |  |
 | priority | Int |  |
 | reply | Bool |  |
 | vote | Bool |  |

---


 
 
 #### [Question](#Question)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | choices | [String] |  |
 | max_len | Int |  |
 | text | String |  |
 | type | String | type could be single_choice/text/multi_choice |

---


 
 
 #### [Rating](#Rating)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | attributes | [Attribute] |  |
 | attributes_slugs | [String] |  |
 | ui | UI |  |

---


 
 
 #### [RatingGetResponse](#RatingGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [Rating] |  |
 | page | Page |  |

---


 
 
 #### [RatingMetric](#RatingMetric)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | avg | Double |  |
 | count | Int | Valuetype could be average, count |
 | name | String | Attribute name like Camera, Battery and rating name like a number 5,4,3 |
 | slug | String |  |
 | type | String | type could be attribute_rating and rating |

---


 
 
 #### [ReportAbuseGetResponse](#ReportAbuseGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [AbuseReport] |  |
 | page | Page |  |

---


 
 
 #### [ReportAbuseRequest](#ReportAbuseRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String |  |
 | entity_id | String |  |
 | entity_type | String |  |

---


 
 
 #### [Review](#Review)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | answer_ids | [String] |  |
 | comments | [String] |  |
 | description | String |  |
 | media_meta | [MediaMeta] |  |
 | title | String |  |

---


 
 
 #### [ReviewFacet](#ReviewFacet)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display | String |  |
 | name | String |  |
 | selected | Bool |  |
 | slug | String |  |
 | type | String | rating, attribute rating |

---


 
 
 #### [ReviewGetResponse](#ReviewGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | facets | [ReviewFacet] |  |
 | items | [CustomerReview] |  |
 | page | Page |  |
 | sort | [SortMethod] |  |

---


 
 
 #### [ReviewMediaMeta](#ReviewMediaMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | max_count | Double |  |
 | size | Double |  |
 | type | String |  |

---


 
 
 #### [ReviewMetric](#ReviewMetric)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | attribute_metric | [RatingMetric] |  |
 | created_on | String |  |
 | entity | Entity | entity could be product, seller, delivery |
 | id | String |  |
 | modified_on | String |  |
 | rating_avg | Double |  |
 | rating_count | Int | total rating count |
 | rating_metric | [RatingMetric] |  |
 | review_count | Int | total review count |

---


 
 
 #### [ReviewMetricGetResponse](#ReviewMetricGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ReviewMetric] |  |
 | page | Page |  |

---


 
 
 #### [ReviewRating](#ReviewRating)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | attributes | [AttributeObject] |  |
 | value | Double |  |

---


 
 
 #### [SaveAttributeRequest](#SaveAttributeRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String |  |
 | name | String |  |
 | slug | String |  |

---


 
 
 #### [SortMethod](#SortMethod)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | selected | Bool |  |
 | type | String |  |

---


 
 
 #### [State](#State)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool |  |
 | approve | Bool |  |
 | auto_decided | Bool |  |
 | status | Int |  |

---


 
 
 #### [TagMeta](#TagMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | media | [MediaMeta] |  |
 | name | String |  |
 | type | String |  |

---


 
 
 #### [Template](#Template)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | date_meta | DateMeta |  |
 | entity | Entity |  |
 | id | String |  |
 | name | String |  |
 | rating | Rating |  |
 | review | TemplateReview |  |
 | state | FeedbackState |  |

---


 
 
 #### [TemplateGetResponse](#TemplateGetResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [Template] |  |
 | page | Page |  |

---


 
 
 #### [TemplateReview](#TemplateReview)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String |  |
 | header | String |  |
 | image_meta | ReviewMediaMeta |  |
 | title | String |  |
 | video_meta | ReviewMediaMeta |  |
 | vote_allowed | Bool |  |

---


 
 
 #### [TextDetector](#TextDetector)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | confidence | Double |  |
 | text | String |  |
 | text_class | String |  |
 | text_type | String |  |

---


 
 
 #### [UI](#UI)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | feedback_question | [String] |  |
 | icon | UIIcon |  |
 | text | [String] |  |
 | type | String | star | images | gifs | smileys |

---


 
 
 #### [UIIcon](#UIIcon)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | String |  |
 | inactive | String |  |
 | selected | [String] |  |

---


 
 
 #### [UpdateAbuseStatusRequest](#UpdateAbuseStatusRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | abusive | Bool |  |
 | active | Bool |  |
 | approve | Bool |  |
 | description | String |  |
 | entity_id | String |  |
 | entity_type | String |  |
 | id | String |  |

---


 
 
 #### [UpdateAttributeRequest](#UpdateAttributeRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String |  |
 | name | String |  |
 | slug | String |  |

---


 
 
 #### [UpdateCommentRequest](#UpdateCommentRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool |  |
 | approve | Bool |  |
 | comment | [String] |  |
 | id | String |  |

---


 
 
 #### [UpdateMediaListRequest](#UpdateMediaListRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | approve | Bool |  |
 | archive | Bool |  |
 | entity_type | String |  |
 | ids | [String] |  |

---


 
 
 #### [UpdateQNARequest](#UpdateQNARequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool |  |
 | approve | Bool |  |
 | choices | [String] |  |
 | id | String |  |
 | tags | [String] |  |

---


 
 
 #### [UpdateResponse](#UpdateResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |  |

---


 
 
 #### [UpdateReviewRequest](#UpdateReviewRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | active | Bool |  |
 | application | String |  |
 | approve | Bool |  |
 | archive | Bool |  |
 | attributes_rating | [AttributeObject] |  |
 | description | String |  |
 | device_meta | DeviceMeta |  |
 | entity_id | String |  |
 | entity_type | String |  |
 | media_resource | [MediaMeta] |  |
 | rating | Double |  |
 | review_id | String |  |
 | template_id | String |  |
 | title | String |  |

---


 
 
 #### [UpdateVoteRequest](#UpdateVoteRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | action | String |  |
 | active | Bool |  |
 | id | String |  |
 | ref_id | String |  |
 | ref_type | String |  |

---


 
 
 #### [Url](#Url)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | main | String |  |
 | thumbnail | String |  |

---


 
 
 #### [Vote](#Vote)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | action | String | upvote and downvote |
 | date_meta | DateMeta |  |
 | entity | Entity |  |
 | id | String |  |
 | name | String |  |
 | reference | Entity | review | comment |
 | state | FeedbackState |  |
 | tags | [TagMeta] |  |

---


 
 
 #### [VoteCount](#VoteCount)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | downvote | Int |  |
 | upvote | Int |  |

---


 
 
 #### [VoteRequest](#VoteRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | action | String |  |
 | entity_id | String |  |
 | entity_type | String |  |
 | ref_id | String |  |
 | ref_type | String | review | comment |

---


 
 
 #### [VoteResponse](#VoteResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [Vote] |  |
 | page | Page |  |

---



---



 
 
 #### [UpdateCartShipmentItem](#UpdateCartShipmentItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | quantity | Int | Quantity of product in shipment |
 | article_uid | String | Article mongo id |
 | shipment_type | String | Shipment delivery type |

---


 
 
 #### [UpdateCartShipmentRequest](#UpdateCartShipmentRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | shipments | [UpdateCartShipmentItem] |  |

---


 
 
 #### [Files](#Files)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | key | String |  |
 | values | [String] |  |

---


 
 
 #### [CartPosCheckoutRequest](#CartPosCheckoutRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | staff | [String: Any] |  |
 | payment_mode | String |  |
 | pos | Bool |  |
 | ordering_store | Int |  |
 | billing_address_id | Int |  |
 | delivery_address | [String: Any] |  |
 | merchant_code | String |  |
 | callback_url | String |  |
 | payment_auto_confirm | Bool |  |
 | payment_params | [String: Any] |  |
 | billing_address | [String: Any] |  |
 | pick_at_store_uid | Int |  |
 | meta | [String: Any] |  |
 | address_id | Int |  |
 | aggregator | String |  |
 | files | [Files] | List of file url |
 | extra_meta | [String: Any] |  |
 | order_type | String |  |
 | fyndstore_emp_id | String |  |
 | payment_identifier | String |  |

---


 
 
 #### [CartDeliveryModesResponse](#CartDeliveryModesResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | available_modes | [String] | Available delivery modes |
 | pickup_stores | [Int] | Store pick up available store uids |

---


 
 
 #### [PickupStoreDetail](#PickupStoreDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | address | String |  |
 | pincode | Int |  |
 | area_code_slug | String |  |
 | name | String |  |
 | city | String |  |
 | store_code | String |  |
 | address_type | String |  |
 | email | String |  |
 | area_code | String |  |
 | landmark | String |  |
 | state | String |  |
 | uid | Int |  |
 | area | String |  |
 | phone | String |  |
 | country | String |  |

---


 
 
 #### [StoreDetailsResponse](#StoreDetailsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [PickupStoreDetail] |  |

---



---



 
 
 #### [GetPincodeCityResponse](#GetPincodeCityResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | request_uuid | String |  |
 | stormbreaker_uuid | String |  |
 | success | Bool |  |
 | data | [LogisticPincodeData] |  |

---


 
 
 #### [LogisticPincodeData](#LogisticPincodeData)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | meta | LogisticMeta |  |
 | parents | [LogisticParents] |  |
 | sub_type | String |  |
 | name | String |  |
 | error | LogisticError |  |
 | uid | String |  |
 | display_name | String |  |

---


 
 
 #### [LogisticMeta](#LogisticMeta)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | zone | String |  |
 | deliverables | [[String: Any]] |  |

---


 
 
 #### [LogisticParents](#LogisticParents)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | sub_type | String |  |
 | name | String |  |
 | display_name | String |  |
 | uid | String |  |

---


 
 
 #### [LogisticError](#LogisticError)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | String |  |
 | value | String |  |
 | message | String |  |

---


 
 
 #### [GetTatProductReqBody](#GetTatProductReqBody)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | location_details | [LocationDetailsReq] |  |
 | to_pincode | String |  |
 | action | String |  |

---


 
 
 #### [LocationDetailsReq](#LocationDetailsReq)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | from_pincode | String |  |
 | articles | [TatReqProductArticles] |  |
 | fulfillment_id | Int |  |

---


 
 
 #### [TatReqProductArticles](#TatReqProductArticles)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | category | LogisticRequestCategory |  |

---


 
 
 #### [LogisticRequestCategory](#LogisticRequestCategory)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | Int |  |
 | level | String |  |

---


 
 
 #### [GetTatProductResponse](#GetTatProductResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | location_details | [LocationDetails] |  |
 | request_uuid | String |  |
 | error | [String: Any] |  |
 | to_city | String |  |
 | source | String |  |
 | to_pincode | String |  |
 | action | String |  |
 | stormbreaker_uuid | String |  |
 | success | Bool |  |
 | identifier | String |  |
 | journey | String |  |

---


 
 
 #### [LocationDetails](#LocationDetails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | from_pincode | String |  |
 | articles | [TatProductArticles] |  |
 | fulfillment_id | Int |  |

---


 
 
 #### [TatProductArticles](#TatProductArticles)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | error | [String: Any] |  |
 | category | LogisticResponseCategory |  |
 | promise | LogisticPromise |  |

---


 
 
 #### [LogisticResponseCategory](#LogisticResponseCategory)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | Int |  |
 | level | String |  |

---


 
 
 #### [LogisticPromise](#LogisticPromise)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | timestamp | LogisticTimestamp |  |
 | formatted | Formatted |  |

---


 
 
 #### [LogisticTimestamp](#LogisticTimestamp)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | min | Int |  |
 | max | Int |  |

---


 
 
 #### [Formatted](#Formatted)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | min | String |  |
 | max | String |  |

---



---



