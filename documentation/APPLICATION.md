

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

### Classes and Methods


* ## [Catalog](#Catalog)
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
    

* ## [Cart](#Cart)
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
    

* ## [Common](#Common)
  * Methods
    * [getLocations](#getlocations)
    

* ## [Lead](#Lead)
  * Methods
    * [getTicket](#getticket)
    * [createHistory](#createhistory)
    * [createTicket](#createticket)
    * [getCustomForm](#getcustomform)
    * [submitCustomForm](#submitcustomform)
    * [getParticipantsInsideVideoRoom](#getparticipantsinsidevideoroom)
    * [getTokenForVideoRoom](#gettokenforvideoroom)
    

* ## [Theme](#Theme)
  * Methods
    * [getAllPages](#getallpages)
    * [getPage](#getpage)
    * [getAppliedTheme](#getappliedtheme)
    * [getThemeForPreview](#getthemeforpreview)
    

* ## [User](#User)
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
    

* ## [Content](#Content)
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
    

* ## [Communication](#Communication)
  * Methods
    * [getCommunicationConsent](#getcommunicationconsent)
    * [upsertCommunicationConsent](#upsertcommunicationconsent)
    * [upsertAppPushtoken](#upsertapppushtoken)
    

* ## [Share](#Share)
  * Methods
    * [getApplicationQRCode](#getapplicationqrcode)
    * [getProductQRCodeBySlug](#getproductqrcodebyslug)
    * [getCollectionQRCodeBySlug](#getcollectionqrcodebyslug)
    * [getUrlQRCode](#geturlqrcode)
    * [createShortLink](#createshortlink)
    * [getShortLinkByHash](#getshortlinkbyhash)
    * [getOriginalShortLinkByHash](#getoriginalshortlinkbyhash)
    

* ## [FileStorage](#FileStorage)
  * Methods
    * [startUpload](#startupload)
    * [completeUpload](#completeupload)
    

* ## [Configuration](#Configuration)
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
    

* ## [Payment](#Payment)
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
    

* ## [Order](#Order)
  * Methods
    * [getOrders](#getorders)
    * [getOrderById](#getorderbyid)
    * [getShipmentById](#getshipmentbyid)
    * [getShipmentReasons](#getshipmentreasons)
    * [updateShipmentStatus](#updateshipmentstatus)
    * [trackShipment](#trackshipment)
    * [getPosOrderById](#getposorderbyid)
    

* ## [Rewards](#Rewards)
  * Methods
    * [getPointsOnProduct](#getpointsonproduct)
    * [getOfferByName](#getofferbyname)
    * [getOrderDiscount](#getorderdiscount)
    * [getUserPoints](#getuserpoints)
    * [getUserPointsHistory](#getuserpointshistory)
    * [getUserReferralDetails](#getuserreferraldetails)
    * [redeemReferralCode](#redeemreferralcode)
    

* ## [Feedback](#Feedback)
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
    

* ## [PosCart](#PosCart)
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
    

* ## [Logistic](#Logistic)
  * Methods
    * [getTatProduct](#gettatproduct)
    * [getPincodeCity](#getpincodecity)
    


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
| body | [AddCartRequest](#AddCartRequest) |  no  | Request body |


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
| body | [UpdateCartRequest](#UpdateCartRequest) |  no  | Request body |


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
| body | [ApplyCouponRequest](#ApplyCouponRequest) |  no  | Request body |


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
| body | [RewardPointRequest](#RewardPointRequest) |  no  | Request body |


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
| body | [Address](#Address) |  no  | Request body |


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
| body | [Address](#Address) |  no  | Request body |


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
| body | [SelectCartAddressRequest](#SelectCartAddressRequest) |  no  | Request body |


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
| body | [UpdateCartPaymentRequest](#UpdateCartPaymentRequest) |  no  | Request body |


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
| body | [CartCheckoutRequest](#CartCheckoutRequest) |  no  | Request body |


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
| body | [CartMetaRequest](#CartMetaRequest) |  no  | Request body |


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
| body | [GetShareCartLinkRequest](#GetShareCartLinkRequest) |  no  | Request body |


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
| body | [TicketHistoryPayload](#TicketHistoryPayload) |  no  | Request body |


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
| body | [AddTicketPayload](#AddTicketPayload) |  no  | Request body |


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
| body | [CustomFormSubmissionPayload](#CustomFormSubmissionPayload) |  no  | Request body |


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
| body | [OAuthRequestSchema](#OAuthRequestSchema) |  no  | Request body |


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
| body | [OAuthRequestSchema](#OAuthRequestSchema) |  no  | Request body |


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
| body | [OAuthRequestSchema](#OAuthRequestSchema) |  no  | Request body |


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
| body | [OAuthRequestSchema](#OAuthRequestSchema) |  no  | Request body |


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
| body | [SendOtpRequestSchema](#SendOtpRequestSchema) |  no  | Request body |


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
| body | [PasswordLoginRequestSchema](#PasswordLoginRequestSchema) |  no  | Request body |


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
| body | [SendResetPasswordEmailRequestSchema](#SendResetPasswordEmailRequestSchema) |  no  | Request body |


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
| body | [ForgotPasswordRequestSchema](#ForgotPasswordRequestSchema) |  no  | Request body |


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
| body | [CodeRequestBodySchema](#CodeRequestBodySchema) |  no  | Request body |


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
| body | [TokenRequestBodySchema](#TokenRequestBodySchema) |  no  | Request body |


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
| body | [FormRegisterRequestSchema](#FormRegisterRequestSchema) |  no  | Request body |


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
| body | [CodeRequestBodySchema](#CodeRequestBodySchema) |  no  | Request body |


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
| body | [CodeRequestBodySchema](#CodeRequestBodySchema) |  no  | Request body |


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
| body | [UpdatePasswordRequestSchema](#UpdatePasswordRequestSchema) |  no  | Request body |


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
| body | [SendMobileOtpRequestSchema](#SendMobileOtpRequestSchema) |  no  | Request body |


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
| body | [VerifyOtpRequestSchema](#VerifyOtpRequestSchema) |  no  | Request body |


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
| body | [SendEmailOtpRequestSchema](#SendEmailOtpRequestSchema) |  no  | Request body |


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
| body | [VerifyEmailOtpRequestSchema](#VerifyEmailOtpRequestSchema) |  no  | Request body |


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
| body | [EditProfileRequestSchema](#EditProfileRequestSchema) |  no  | Request body |


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
| body | [EditMobileRequestSchema](#EditMobileRequestSchema) |  no  | Request body |


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
| body | [SendVerificationLinkMobileRequestSchema](#SendVerificationLinkMobileRequestSchema) |  no  | Request body |


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
| body | [SendVerificationLinkMobileRequestSchema](#SendVerificationLinkMobileRequestSchema) |  no  | Request body |


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
| body | [EditEmailRequestSchema](#EditEmailRequestSchema) |  no  | Request body |


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
| body | [EditEmailRequestSchema](#EditEmailRequestSchema) |  no  | Request body |


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
| body | [EditEmailRequestSchema](#EditEmailRequestSchema) |  no  | Request body |


Use this API to send verification link to an email address.

*Returned Response:*




[SendEmailVerifyLinkSuccess](#SendEmailVerifyLinkSuccess)

Request body must contain an email ID. Refer `EditEmailRequestSchema` for more details.






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
| body | [CommunicationConsentReq](#CommunicationConsentReq) |  yes  | Request body |


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
| body | [PushtokenReq](#PushtokenReq) |  yes  | Request body |


Use this API to update and insert the push token of the user.

*Returned Response:*




[PushtokenRes](#PushtokenRes)

Success. Check the example shown below or refer `PushtokenRes` for more details.






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
| body | [ShortLinkReq](#ShortLinkReq) |  no  | Request body |


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
| body | [StartRequest](#StartRequest) |  no  | Request body |


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
| body | [StartResponse](#StartResponse) |  no  | Request body |


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
| body | [OrderingStoreSelectRequest](#OrderingStoreSelectRequest) |  no  | Request body |


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
| body | [AttachCardRequest](#AttachCardRequest) |  no  | Request body |


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
| body | [DeletehCardRequest](#DeletehCardRequest) |  no  | Request body |


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
| body | [ValidateCustomerRequest](#ValidateCustomerRequest) |  no  | Request body |


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
| body | [ChargeCustomerRequest](#ChargeCustomerRequest) |  no  | Request body |


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
| body | [PaymentInitializationRequest](#PaymentInitializationRequest) |  no  | Request body |


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
| body | [PaymentStatusUpdateRequest](#PaymentStatusUpdateRequest) |  no  | Request body |


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
| body | [UpdateRefundTransferModeRequest](#UpdateRefundTransferModeRequest) |  no  | Request body |


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
| body | [AddBeneficiaryViaOtpVerificationRequest](#AddBeneficiaryViaOtpVerificationRequest) |  no  | Request body |


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
| body | [AddBeneficiaryDetailsRequest](#AddBeneficiaryDetailsRequest) |  no  | Request body |


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
| body | [WalletOtpRequest](#WalletOtpRequest) |  no  | Request body |


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
| body | [SetDefaultBeneficiaryRequest](#SetDefaultBeneficiaryRequest) |  no  | Request body |


Use this API to set a default beneficiary for getting a refund.

*Returned Response:*




[SetDefaultBeneficiaryResponse](#SetDefaultBeneficiaryResponse)

Success. Check the example shown below or refer `SetDefaultBeneficiaryResponse` for more details.






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
| body | [ShipmentStatusUpdateBody](#ShipmentStatusUpdateBody) |  yes  | Request body |


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
| body | [CatalogueOrderRequest](#CatalogueOrderRequest) |  yes  | Request body |


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
| body | [OrderDiscountRequest](#OrderDiscountRequest) |  yes  | Request body |


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
| body | [RedeemReferralCodeRequest](#RedeemReferralCodeRequest) |  yes  | Request body |


Use this API to enter a referral code following which, the configured points would be credited to a user's reward points account.

*Returned Response:*




[RedeemReferralCodeResponse](#RedeemReferralCodeResponse)

Success. Check example below or refer `RedeemReferralCodeResponse` for more details.






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
| body | [ReportAbuseRequest](#ReportAbuseRequest) |  yes  | Request body |


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
| body | [UpdateAbuseStatusRequest](#UpdateAbuseStatusRequest) |  yes  | Request body |


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
| body | [SaveAttributeRequest](#SaveAttributeRequest) |  yes  | Request body |


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
| body | [UpdateAttributeRequest](#UpdateAttributeRequest) |  yes  | Request body |


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
| body | [CommentRequest](#CommentRequest) |  yes  | Request body |


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
| body | [UpdateCommentRequest](#UpdateCommentRequest) |  yes  | Request body |


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
| body | [AddMediaListRequest](#AddMediaListRequest) |  yes  | Request body |


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
| body | [UpdateMediaListRequest](#UpdateMediaListRequest) |  yes  | Request body |


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
| body | [UpdateReviewRequest](#UpdateReviewRequest) |  yes  | Request body |


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
| body | [UpdateReviewRequest](#UpdateReviewRequest) |  yes  | Request body |


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
| body | [CreateQNARequest](#CreateQNARequest) |  yes  | Request body |


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
| body | [UpdateQNARequest](#UpdateQNARequest) |  yes  | Request body |


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
| body | [VoteRequest](#VoteRequest) |  yes  | Request body |


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
| body | [UpdateVoteRequest](#UpdateVoteRequest) |  yes  | Request body |


Use this API to update a vote with a new action, i.e. either an upvote or a downvote.

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success.






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
| body | [AddCartRequest](#AddCartRequest) |  no  | Request body |


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
| body | [UpdateCartRequest](#UpdateCartRequest) |  no  | Request body |


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
| body | [ApplyCouponRequest](#ApplyCouponRequest) |  no  | Request body |


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
| body | [RewardPointRequest](#RewardPointRequest) |  no  | Request body |


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
| body | [Address](#Address) |  no  | Request body |


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
| body | [Address](#Address) |  no  | Request body |


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
| body | [SelectCartAddressRequest](#SelectCartAddressRequest) |  no  | Request body |


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
| body | [UpdateCartPaymentRequest](#UpdateCartPaymentRequest) |  no  | Request body |


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
| body | [UpdateCartShipmentRequest](#UpdateCartShipmentRequest) |  no  | Request body |


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
| body | [CartPosCheckoutRequest](#CartPosCheckoutRequest) |  no  | Request body |


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
| body | [CartMetaRequest](#CartMetaRequest) |  no  | Request body |


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
| body | [GetShareCartLinkRequest](#GetShareCartLinkRequest) |  no  | Request body |


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
| body | [GetTatProductReqBody](#GetTatProductReqBody) |  yes  | Request body |


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




### Schemas


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String |  no  |  |

---


 
 
 #### [Media](#Media)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [Meta](#Meta) |  no  |  |
 | type | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [ProductDetailAttribute](#ProductDetailAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | key | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | details | [[ProductDetailAttribute](#ProductDetailAttribute)] |  no  |  |

---


 
 
 #### [ProductListingActionPage](#ProductListingActionPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | query | [String: Any] |  no  |  |
 | params | [String: Any] |  no  |  |

---


 
 
 #### [ProductListingAction](#ProductListingAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | page | [ProductListingActionPage](#ProductListingActionPage) |  no  |  |

---


 
 
 #### [ProductBrand](#ProductBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | logo | [Media](#Media) |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |

---


 
 
 #### [Price](#Price)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencySymbol | String |  no  |  |
 | max | Double |  no  |  |
 | currencyCode | String |  no  |  |
 | min | Double |  no  |  |

---


 
 
 #### [ProductListingPrice](#ProductListingPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | [Price](#Price) |  no  |  |
 | effective | [Price](#Price) |  no  |  |

---


 
 
 #### [ProductDetail](#ProductDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | uid | Int |  no  |  |
 | itemCode | String |  no  |  |
 | imageNature | String |  no  |  |
 | type | String |  no  |  |
 | medias | [[Media](#Media)] |  no  |  |
 | shortDescription | String |  no  |  |
 | discount | String |  no  |  |
 | productOnlineDate | String |  no  |  |
 | similars | [String] |  no  |  |
 | name | String |  no  |  |
 | groupedAttributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)] |  no  |  |
 | highlights | [String] |  no  |  |
 | brand | [ProductBrand](#ProductBrand) |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | itemType | String |  no  |  |
 | rating | Double |  no  |  |
 | tryouts | [String] |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | teaserTag | String |  no  |  |
 | color | String |  no  |  |
 | price | [ProductListingPrice](#ProductListingPrice) |  no  |  |
 | hasVariant | Bool |  no  |  |
 | ratingCount | Int |  no  |  |
 | categories | [[ProductBrand](#ProductBrand)] |  no  |  |
 | description | String |  no  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String |  no  |  |

---


 
 
 #### [ColumnHeader](#ColumnHeader)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | convertable | Bool |  no  |  |

---


 
 
 #### [ColumnHeaders](#ColumnHeaders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | col4 | [ColumnHeader](#ColumnHeader) |  no  |  |
 | col5 | [ColumnHeader](#ColumnHeader) |  no  |  |
 | col6 | [ColumnHeader](#ColumnHeader) |  no  |  |
 | col2 | [ColumnHeader](#ColumnHeader) |  no  |  |
 | col1 | [ColumnHeader](#ColumnHeader) |  no  |  |
 | col3 | [ColumnHeader](#ColumnHeader) |  no  |  |

---


 
 
 #### [SizeChartValues](#SizeChartValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | col4 | String |  no  |  |
 | col5 | String |  no  |  |
 | col6 | String |  no  |  |
 | col2 | String |  no  |  |
 | col1 | String |  no  |  |
 | col3 | String |  no  |  |

---


 
 
 #### [SizeChart](#SizeChart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizeTip | String |  no  |  |
 | unit | String |  no  |  |
 | headers | [ColumnHeaders](#ColumnHeaders) |  no  |  |
 | image | String |  no  |  |
 | title | String |  no  |  |
 | sizes | [[SizeChartValues](#SizeChartValues)] |  no  |  |
 | description | String |  no  |  |

---


 
 
 #### [ProductSize](#ProductSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | isAvailable | Bool |  no  |  |
 | value | String |  no  |  |
 | quantity | Int |  no  |  |

---


 
 
 #### [ProductSizeStores](#ProductSizeStores)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |

---


 
 
 #### [ProductSizes](#ProductSizes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellable | Bool |  no  |  |
 | price | [ProductListingPrice](#ProductListingPrice) |  no  |  |
 | sizeChart | [SizeChart](#SizeChart) |  no  |  |
 | discount | String |  no  |  |
 | sizes | [[ProductSize](#ProductSize)] |  no  |  |
 | stores | [ProductSizeStores](#ProductSizeStores) |  no  |  |

---


 
 
 #### [ProductStockPrice](#ProductStockPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currency | String |  no  |  |
 | marked | Double |  no  |  |
 | effective | Double |  no  |  |

---


 
 
 #### [Seller](#Seller)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | count | Int |  no  |  |

---


 
 
 #### [ProductSetDistributionSize](#ProductSetDistributionSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pieces | Int |  no  |  |
 | size | String |  no  |  |

---


 
 
 #### [ProductSetDistribution](#ProductSetDistribution)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizes | [[ProductSetDistributionSize](#ProductSetDistributionSize)] |  no  |  |

---


 
 
 #### [ProductSet](#ProductSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | quantity | Int |  no  |  |
 | sizeDistribution | [ProductSetDistribution](#ProductSetDistribution) |  no  |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | count | Int |  no  |  |

---


 
 
 #### [StrategyWiseListing](#StrategyWiseListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int |  no  |  |
 | distance | Int |  no  |  |
 | quantity | Int |  no  |  |
 | tat | Int |  no  |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | time | Int |  no  |  |
 | returnable | Bool |  no  |  |
 | unit | String |  no  |  |

---


 
 
 #### [Details](#Details)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | key | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [MarketPlaceSttributes](#MarketPlaceSttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | details | [[Details](#Details)] |  no  |  |

---


 
 
 #### [ArticleAssignment](#ArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | level | String |  no  |  |
 | strategy | String |  no  |  |

---


 
 
 #### [ProductSizePriceResponse](#ProductSizePriceResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pricePerPrice | [ProductStockPrice](#ProductStockPrice) |  no  |  |
 | longLat | [Double] |  no  |  |
 | price | [ProductStockPrice](#ProductStockPrice) |  no  |  |
 | seller | [Seller](#Seller) |  no  |  |
 | itemType | String |  no  |  |
 | discount | String |  no  |  |
 | set | [ProductSet](#ProductSet) |  no  |  |
 | store | [Store](#Store) |  no  |  |
 | specialBadge | String |  no  |  |
 | strategyWiseListing | [[StrategyWiseListing](#StrategyWiseListing)] |  no  |  |
 | returnConfig | [ReturnConfig](#ReturnConfig) |  no  |  |
 | marketplaceAttributes | [[MarketPlaceSttributes](#MarketPlaceSttributes)] |  no  |  |
 | articleId | String |  no  |  |
 | quantity | Int |  no  |  |
 | pincode | Int |  no  |  |
 | sellerCount | Int |  no  |  |
 | articleAssignment | [ArticleAssignment](#ArticleAssignment) |  no  |  |

---


 
 
 #### [ProductSizeSellerFilter](#ProductSizeSellerFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | name | String |  no  |  |
 | isSelected | Bool |  no  |  |

---


 
 
 #### [ProductSizeSellersResponse](#ProductSizeSellersResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductSizePriceResponse](#ProductSizePriceResponse)] |  no  |  |
 | page | [Page](#Page)? |  yes  |  |
 | sortOn | [[ProductSizeSellerFilter](#ProductSizeSellerFilter)] |  no  |  |

---


 
 
 #### [AttributeDetail](#AttributeDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | key | String |  no  |  |
 | description | String |  no  |  |
 | logo | String |  no  |  |

---


 
 
 #### [AttributeMetadata](#AttributeMetadata)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | details | [[AttributeDetail](#AttributeDetail)] |  no  |  |

---


 
 
 #### [ProductsComparisonResponse](#ProductsComparisonResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductDetail](#ProductDetail)] |  no  |  |
 | attributesMetadata | [[AttributeMetadata](#AttributeMetadata)] |  no  |  |

---


 
 
 #### [ProductCompareResponse](#ProductCompareResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subtitle | String |  no  |  |
 | items | [[ProductDetail](#ProductDetail)] |  no  |  |
 | title | String |  no  |  |
 | attributesMetadata | [[AttributeMetadata](#AttributeMetadata)] |  no  |  |

---


 
 
 #### [ProductFrequentlyComparedSimilarResponse](#ProductFrequentlyComparedSimilarResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | similars | [ProductCompareResponse](#ProductCompareResponse) |  no  |  |

---


 
 
 #### [ProductSimilarItem](#ProductSimilarItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subtitle | String |  no  |  |
 | items | [[ProductDetail](#ProductDetail)] |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [SimilarProductByTypeResponse](#SimilarProductByTypeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | similars | [ProductSimilarItem](#ProductSimilarItem) |  no  |  |

---


 
 
 #### [ProductVariantItemResponse](#ProductVariantItemResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isAvailable | Bool |  no  |  |
 | medias | [[Media](#Media)] |  no  |  |
 | slug | String |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | value | String |  no  |  |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | colorName | String |  no  |  |
 | color | String |  no  |  |

---


 
 
 #### [ProductVariantResponse](#ProductVariantResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductVariantItemResponse](#ProductVariantItemResponse)] |  no  |  |
 | key | String |  no  |  |
 | displayType | String |  no  |  |
 | header | String |  no  |  |

---


 
 
 #### [ProductVariantsResponse](#ProductVariantsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | variants | [[ProductVariantResponse](#ProductVariantResponse)] |  no  |  |

---


 
 
 #### [CompanyDetail](#CompanyDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | id | Int |  no  |  |

---


 
 
 #### [StoreDetail](#StoreDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | code | String |  no  |  |
 | city | String |  no  |  |
 | id | Int |  no  |  |

---


 
 
 #### [ProductStockStatusItem](#ProductStockStatusItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int |  no  |  |
 | price | [ProductStockPrice](#ProductStockPrice) |  no  |  |
 | company | [CompanyDetail](#CompanyDetail) |  no  |  |
 | seller | [Seller](#Seller) |  no  |  |
 | size | String |  no  |  |
 | store | [StoreDetail](#StoreDetail) |  no  |  |
 | uid | String |  no  |  |
 | quantity | Int |  no  |  |
 | identifier | [String: Any] |  no  |  |

---


 
 
 #### [ProductStockStatusResponse](#ProductStockStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductStockStatusItem](#ProductStockStatusItem)] |  no  |  |

---


 
 
 #### [ProductStockPolling](#ProductStockPolling)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductStockStatusItem](#ProductStockStatusItem)] |  no  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [ProductFiltersValue](#ProductFiltersValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSelected | Bool? |  yes  |  |
 | currencyCode | String |  no  |  |
 | value | String |  no  |  |
 | count | Int |  no  |  |
 | selectedMin | Int |  no  |  |
 | currencySymbol | String |  no  |  |
 | min | Int |  no  |  |
 | display | String? |  yes  |  |
 | max | Int |  no  |  |
 | queryFormat | String |  no  |  |
 | selectedMax | Int |  no  |  |
 | displayFormat | String |  no  |  |

---


 
 
 #### [ProductFiltersKey](#ProductFiltersKey)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |
 | kind | String |  no  |  |
 | logo | String |  no  |  |

---


 
 
 #### [ProductFilters](#ProductFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | values | [[ProductFiltersValue](#ProductFiltersValue)]? |  yes  |  |
 | key | [ProductFiltersKey](#ProductFiltersKey)? |  yes  |  |

---


 
 
 #### [ProductListingDetail](#ProductListingDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | uid | Int |  no  |  |
 | itemCode | String |  no  |  |
 | imageNature | String |  no  |  |
 | type | String |  no  |  |
 | medias | [[Media](#Media)] |  no  |  |
 | shortDescription | String |  no  |  |
 | discount | String |  no  |  |
 | productOnlineDate | String |  no  |  |
 | similars | [String] |  no  |  |
 | name | String |  no  |  |
 | groupedAttributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)] |  no  |  |
 | highlights | [String] |  no  |  |
 | brand | [ProductBrand](#ProductBrand) |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | itemType | String |  no  |  |
 | rating | Double |  no  |  |
 | tryouts | [String] |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | teaserTag | String |  no  |  |
 | color | String |  no  |  |
 | sellable | Bool |  no  |  |
 | price | [ProductListingPrice](#ProductListingPrice) |  no  |  |
 | hasVariant | Bool |  no  |  |
 | ratingCount | Int |  no  |  |
 | categories | [[ProductBrand](#ProductBrand)] |  no  |  |
 | description | String |  no  |  |

---


 
 
 #### [ProductSortOn](#ProductSortOn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | name | String |  no  |  |
 | isSelected | Bool |  no  |  |

---


 
 
 #### [ProductListingResponse](#ProductListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[ProductFilters](#ProductFilters)] |  no  |  |
 | items | [[ProductListingDetail](#ProductListingDetail)] |  no  |  |
 | page | [Page](#Page)? |  yes  |  |
 | sortOn | [[ProductSortOn](#ProductSortOn)] |  no  |  |

---


 
 
 #### [ImageUrls](#ImageUrls)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | portrait | [Media](#Media) |  no  |  |
 | landscape | [Media](#Media) |  no  |  |

---


 
 
 #### [BrandItem](#BrandItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | discount | String |  no  |  |
 | logo | [Media](#Media) |  no  |  |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | departments | [String] |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |

---


 
 
 #### [BrandListingResponse](#BrandListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BrandItem](#BrandItem)] |  no  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [BrandDetailResponse](#BrandDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | logo | [Media](#Media) |  no  |  |

---


 
 
 #### [DepartmentIdentifier](#DepartmentIdentifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | slug | String |  no  |  |

---


 
 
 #### [ThirdLevelChild](#ThirdLevelChild)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | uid | Int |  no  |  |
 | childs | [[String: Any]] |  no  |  |
 | name | String |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |

---


 
 
 #### [SecondLevelChild](#SecondLevelChild)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | uid | Int |  no  |  |
 | childs | [[ThirdLevelChild](#ThirdLevelChild)] |  no  |  |
 | name | String |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |

---


 
 
 #### [Child](#Child)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | uid | Int |  no  |  |
 | childs | [[SecondLevelChild](#SecondLevelChild)] |  no  |  |
 | name | String |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |

---


 
 
 #### [CategoryItems](#CategoryItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | uid | Int |  no  |  |
 | childs | [[Child](#Child)] |  no  |  |
 | name | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |

---


 
 
 #### [DepartmentCategoryTree](#DepartmentCategoryTree)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | department | String |  no  |  |
 | items | [[CategoryItems](#CategoryItems)] |  no  |  |

---


 
 
 #### [CategoryListingResponse](#CategoryListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | departments | [[DepartmentIdentifier](#DepartmentIdentifier)] |  no  |  |
 | data | [[DepartmentCategoryTree](#DepartmentCategoryTree)] |  no  |  |

---


 
 
 #### [CategoryMetaResponse](#CategoryMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | logo | [Media](#Media) |  no  |  |

---


 
 
 #### [HomeListingResponse](#HomeListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductListingDetail](#ProductListingDetail)] |  no  |  |
 | message | String |  no  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [Department](#Department)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priorityOrder | Int |  no  |  |
 | slug | String |  no  |  |
 | logo | [Media](#Media) |  no  |  |
 | uid | Int |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [DepartmentResponse](#DepartmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Department](#Department)] |  no  |  |

---


 
 
 #### [AutocompleteItem](#AutocompleteItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | type | String |  no  |  |
 | logo | [Media](#Media) |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |

---


 
 
 #### [AutoCompleteResponse](#AutoCompleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AutocompleteItem](#AutocompleteItem)] |  no  |  |

---


 
 
 #### [GetCollectionDetailNest](#GetCollectionDetailNest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |
 | slug | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | query | [String: Any] |  no  |  |
 | logo | [Media](#Media) |  no  |  |
 | uid | String |  no  |  |
 | visibleFacetsKeys | [String] |  no  |  |
 | cron | [String: Any] |  no  |  |
 | schedule | [String: Any] |  no  |  |
 | badge | [String: Any] |  no  |  |
 | type | String |  no  |  |
 | name | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | allowSort | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | allowFacets | Bool |  no  |  |
 | tag | [String] |  no  |  |
 | description | String |  no  |  |

---


 
 
 #### [CollectionListingFilterType](#CollectionListingFilterType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | name | String |  no  |  |
 | isSelected | Bool |  no  |  |

---


 
 
 #### [CollectionListingFilterTag](#CollectionListingFilterTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | name | String |  no  |  |
 | isSelected | Bool |  no  |  |

---


 
 
 #### [CollectionListingFilter](#CollectionListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | [[CollectionListingFilterType](#CollectionListingFilterType)] |  no  |  |
 | tags | [[CollectionListingFilterTag](#CollectionListingFilterTag)] |  no  |  |

---


 
 
 #### [GetCollectionListingResponse](#GetCollectionListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GetCollectionDetailNest](#GetCollectionDetailNest)] |  no  |  |
 | page | [Page](#Page)? |  yes  |  |
 | filters | [CollectionListingFilter](#CollectionListingFilter) |  no  |  |

---


 
 
 #### [CollectionDetailResponse](#CollectionDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |
 | type | String |  no  |  |
 | slug | String |  no  |  |
 | isActive | Bool |  no  |  |
 | meta | [String: Any] |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | query | [String: Any] |  no  |  |
 | logo | [Media](#Media) |  no  |  |
 | visibleFacetsKeys | [String] |  no  |  |
 | name | String |  no  |  |
 | allowFacets | Bool |  no  |  |
 | allowSort | Bool |  no  |  |
 | cron | [String: Any] |  no  |  |
 | tag | [String] |  no  |  |
 | schedule | [String: Any] |  no  |  |
 | description | String |  no  |  |
 | badge | [String: Any] |  no  |  |

---


 
 
 #### [GetFollowListingResponse](#GetFollowListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductListingDetail](#ProductListingDetail)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [FollowPostResponse](#FollowPostResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [FollowerCountResponse](#FollowerCountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |

---


 
 
 #### [FollowIdsData](#FollowIdsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | products | [Int] |  no  |  |
 | collections | [Int] |  no  |  |
 | brands | [Int] |  no  |  |

---


 
 
 #### [FollowIdsResponse](#FollowIdsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [FollowIdsData](#FollowIdsData) |  no  |  |

---


 
 
 #### [LatLong](#LatLong)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | coordinates | [Double] |  no  |  |

---


 
 
 #### [Store1](#Store1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeEmail | String |  no  |  |
 | state | String |  no  |  |
 | latLong | [LatLong](#LatLong) |  no  |  |
 | country | String |  no  |  |
 | storeCode | String |  no  |  |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | pincode | Int |  no  |  |
 | city | String |  no  |  |
 | address | String |  no  |  |

---


 
 
 #### [StoreListingResponse](#StoreListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Store1](#Store1)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---




 
 
 #### [CartCurrency](#CartCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  | Currency code defined by ISO 4217:2015 |
 | symbol | String |  no  |  |

---


 
 
 #### [PromiseFormatted](#PromiseFormatted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | String |  no  |  |
 | min | String |  no  |  |

---


 
 
 #### [PromiseTimestamp](#PromiseTimestamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Double |  no  |  |
 | min | Double |  no  |  |

---


 
 
 #### [ShipmentPromise](#ShipmentPromise)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | formatted | [PromiseFormatted](#PromiseFormatted) |  no  |  |
 | timestamp | [PromiseTimestamp](#PromiseTimestamp) |  no  |  |

---


 
 
 #### [ProductPrice](#ProductPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyCode | String |  no  |  |
 | selling | Double |  no  |  |
 | effective | Double |  no  |  |
 | currencySymbol | String |  no  |  |
 | addOn | Double |  no  |  |
 | marked | Double |  no  |  |

---


 
 
 #### [ProductPriceInfo](#ProductPriceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | converted | [ProductPrice](#ProductPrice) |  no  |  |
 | base | [ProductPrice](#ProductPrice) |  no  |  |

---


 
 
 #### [ProductAvailability](#ProductAvailability)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizes | [String] |  no  |  |
 | otherStoreQuantity | Int |  no  |  |
 | outOfStock | Bool |  no  |  |
 | isValid | Bool |  no  |  |
 | deliverable | Bool |  no  |  |

---


 
 
 #### [PromoMeta](#PromoMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [CartProductIdentifer](#CartProductIdentifer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String |  no  | Article idenfier generated by cart |

---


 
 
 #### [BaseInfo](#BaseInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [Image](#Image)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | aspectRatio | String |  no  |  |
 | secureUrl | String |  no  |  |

---


 
 
 #### [ActionQuery](#ActionQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productSlug | [String] |  no  | Contains list of product slug |

---


 
 
 #### [ProductAction](#ProductAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | type | String |  no  |  |
 | query | [ActionQuery](#ActionQuery) |  no  |  |

---


 
 
 #### [CategoryInfo](#CategoryInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  | Product Category Id |
 | name | String |  no  |  |

---


 
 
 #### [Product](#Product)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [BaseInfo](#BaseInfo) |  no  |  |
 | images | [[Image](#Image)] |  no  |  |
 | action | [ProductAction](#ProductAction) |  no  |  |
 | slug | String |  no  | Unique product url name generated via product name and other meta data |
 | name | String |  no  |  |
 | uid | Int |  no  |  |
 | type | String |  no  |  |
 | categories | [[CategoryInfo](#CategoryInfo)] |  no  |  |

---


 
 
 #### [BasePrice](#BasePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyCode | String |  no  |  |
 | effective | Double |  no  |  |
 | marked | Double |  no  |  |
 | currencySymbol | String |  no  |  |

---


 
 
 #### [ArticlePriceInfo](#ArticlePriceInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | converted | [BasePrice](#BasePrice) |  no  |  |
 | base | [BasePrice](#BasePrice) |  no  |  |

---


 
 
 #### [ProductArticle](#ProductArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String |  no  |  |
 | price | [ArticlePriceInfo](#ArticlePriceInfo) |  no  |  |
 | extraMeta | [String: Any] |  no  |  |
 | seller | [BaseInfo](#BaseInfo) |  no  |  |
 | uid | String |  no  |  |
 | quantity | Int |  no  |  |
 | type | String |  no  |  |
 | store | [BaseInfo](#BaseInfo) |  no  |  |

---


 
 
 #### [CartProductInfo](#CartProductInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponMessage | String |  no  |  |
 | price | [ProductPriceInfo](#ProductPriceInfo) |  no  |  |
 | discount | String |  no  |  |
 | availability | [ProductAvailability](#ProductAvailability) |  no  |  |
 | isSet | Bool |  no  |  |
 | promoMeta | [PromoMeta](#PromoMeta) |  no  |  |
 | message | String |  no  |  |
 | key | String |  no  |  |
 | identifiers | [CartProductIdentifer](#CartProductIdentifer)? |  yes  |  |
 | pricePerUnit | [ProductPriceInfo](#ProductPriceInfo) |  no  |  |
 | product | [Product](#Product) |  no  |  |
 | article | [ProductArticle](#ProductArticle) |  no  |  |
 | quantity | Int |  no  |  |
 | bulkOffer | [String: Any] |  no  |  |

---


 
 
 #### [PaymentSelectionLock](#PaymentSelectionLock)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | defaultOptions | String |  no  |  |
 | enabled | Bool |  no  |  |
 | paymentIdentifier | String |  no  |  |

---


 
 
 #### [DisplayBreakup](#DisplayBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | currencyCode | String |  no  |  |
 | currencySymbol | String |  no  |  |
 | value | Double |  no  |  |
 | message | [String] |  no  |  |
 | key | String |  no  |  |

---


 
 
 #### [LoyaltyPoints](#LoyaltyPoints)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | isApplied | Bool |  no  |  |
 | total | Double |  no  |  |
 | applicable | Double |  no  |  |

---


 
 
 #### [CouponBreakup](#CouponBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | value | Double |  no  |  |
 | message | String |  no  |  |
 | uid | String |  no  |  |
 | type | String |  no  |  |
 | isApplied | Bool |  no  |  |

---


 
 
 #### [RawBreakup](#RawBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | convenienceFee | Double |  no  |  |
 | vog | Double |  no  |  |
 | discount | Double |  no  |  |
 | youSaved | Double |  no  |  |
 | fyndCash | Double |  no  |  |
 | mrpTotal | String |  no  |  |
 | coupon | Double |  no  |  |
 | total | Double |  no  |  |
 | codCharge | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | gstCharges | Double |  no  |  |
 | subtotal | Double |  no  |  |

---


 
 
 #### [CartBreakup](#CartBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | [[DisplayBreakup](#DisplayBreakup)] |  no  |  |
 | loyaltyPoints | [LoyaltyPoints](#LoyaltyPoints) |  no  |  |
 | coupon | [CouponBreakup](#CouponBreakup) |  no  |  |
 | raw | [RawBreakup](#RawBreakup) |  no  |  |

---


 
 
 #### [CartResponse](#CartResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponText | String |  no  |  |
 | gstin | String |  no  |  |
 | currency | [CartCurrency](#CartCurrency) |  no  |  |
 | deliveryChargeInfo | String |  no  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise) |  no  |  |
 | lastModified | String |  no  |  |
 | comment | String |  no  |  |
 | restrictCheckout | Bool |  no  |  |
 | items | [[CartProductInfo](#CartProductInfo)] |  no  |  |
 | message | String |  no  |  |
 | checkoutMode | String |  no  |  |
 | isValid | Bool |  no  |  |
 | uid | String |  no  |  |
 | cartId | Int |  no  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock) |  no  |  |
 | breakupValues | [CartBreakup](#CartBreakup) |  no  |  |

---


 
 
 #### [AddProductCart](#AddProductCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pos | Bool |  no  |  |
 | display | String |  no  |  |
 | articleAssignment | [String: Any] |  no  |  |
 | itemId | Int |  no  |  |
 | extraMeta | [String: Any] |  no  |  |
 | articleId | String |  no  |  |
 | storeId | Int |  no  |  |
 | itemSize | String |  no  |  |
 | sellerId | Int |  no  |  |
 | quantity | Int |  no  |  |

---


 
 
 #### [AddCartRequest](#AddCartRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AddProductCart](#AddProductCart)] |  no  |  |

---


 
 
 #### [AddCartResponse](#AddCartResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | True if all items are added successfully. False if partially added or not added. |
 | message | String |  no  |  |
 | partial | Bool |  no  | When adding multiple items check if all added. True if only few are added. |
 | cart | [CartResponse](#CartResponse) |  no  |  |

---


 
 
 #### [UpdateProductCart](#UpdateProductCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int |  no  |  |
 | extraMeta | [String: Any] |  no  |  |
 | itemIndex | Int |  no  |  |
 | articleId | String |  no  |  |
 | identifiers | [CartProductIdentifer](#CartProductIdentifer)? |  yes  |  |
 | itemSize | String |  no  |  |
 | quantity | Int |  no  |  |

---


 
 
 #### [UpdateCartRequest](#UpdateCartRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | operation | String? |  yes  |  |
 | items | [[UpdateProductCart](#UpdateProductCart)] |  no  |  |

---


 
 
 #### [UpdateCartResponse](#UpdateCartResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | True if all items are added successfully. False if partially added or not added. |
 | message | String |  no  |  |
 | cart | [CartResponse](#CartResponse) |  no  |  |

---


 
 
 #### [CartItemCountResponse](#CartItemCountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userCartItemsCount | Int |  no  | Item count present in cart |

---


 
 
 #### [Coupon](#Coupon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponCode | String |  no  |  |
 | title | String |  no  |  |
 | isApplicable | Bool |  no  |  |
 | minimumCartValue | Double |  no  |  |
 | subTitle | String |  no  |  |
 | message | String |  no  |  |
 | couponValue | Double |  no  |  |
 | expiresOn | String |  no  |  |
 | isApplied | Bool |  no  |  |
 | maxDiscountValue | Double |  no  |  |

---


 
 
 #### [PageCoupon](#PageCoupon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hasNext | Bool |  no  |  |
 | current | Int |  no  |  |
 | totalItemCount | Int |  no  |  |
 | total | Int |  no  |  |
 | hasPrevious | Bool |  no  |  |

---


 
 
 #### [GetCouponResponse](#GetCouponResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | availableCouponList | [[Coupon](#Coupon)] |  no  |  |
 | page | [PageCoupon](#PageCoupon) |  no  |  |

---


 
 
 #### [ApplyCouponRequest](#ApplyCouponRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponCode | String? |  yes  | Coupon code to be applied |

---


 
 
 #### [OfferSeller](#OfferSeller)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  | Seller id |
 | name | String |  no  |  |

---


 
 
 #### [OfferPrice](#OfferPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyCode | String |  no  | Currency code for all amounts |
 | effective | Int |  no  | Current per unit price of product after existing deductions |
 | currencySymbol | String |  no  | Currency symbol for currency |
 | bulkEffective | Double |  no  | Discounted per unit price for current offer object |
 | marked | Int |  no  | Original price of product |

---


 
 
 #### [OfferItem](#OfferItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | margin | Int |  no  | Percentage value of discount |
 | price | [OfferPrice](#OfferPrice) |  no  |  |
 | total | Double |  no  | Total price of offer quantity with discount |
 | best | Bool |  no  | Is true for best offer from all offers present for all sellers |
 | type | String |  no  | Offer type |
 | autoApplied | Bool |  no  |  |
 | quantity | Int |  no  | Quantity on which offer is applicable |

---


 
 
 #### [BulkPriceOffer](#BulkPriceOffer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | seller | [OfferSeller](#OfferSeller) |  no  |  |
 | offers | [[OfferItem](#OfferItem)] |  no  |  |

---


 
 
 #### [BulkPriceResponse](#BulkPriceResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[BulkPriceOffer](#BulkPriceOffer)] |  no  | Consist of offers from multiple seller |

---


 
 
 #### [RewardPointRequest](#RewardPointRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | points | Bool? |  yes  |  |

---


 
 
 #### [GeoLocation](#GeoLocation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | latitude | Double |  no  |  |
 | longitude | Double |  no  |  |

---


 
 
 #### [Address](#Address)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String |  no  |  |
 | checkoutMode | String |  no  |  |
 | isActive | Bool |  no  |  |
 | city | String |  no  |  |
 | googleMapPoint | [String: Any] |  no  |  |
 | uid | Int |  no  |  |
 | email | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | geoLocation | [GeoLocation](#GeoLocation) |  no  |  |
 | areaCode | String |  no  |  |
 | name | String |  no  |  |
 | addressType | String |  no  |  |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | userId | String |  no  |  |
 | isDefaultAddress | Bool |  no  |  |
 | landmark | String |  no  |  |
 | address | String |  no  |  |
 | tags | [String] |  no  |  |
 | phone | String |  no  |  |
 | area | String |  no  |  |
 | areaCodeSlug | String |  no  |  |

---


 
 
 #### [GetAddressesResponse](#GetAddressesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [[Address](#Address)] |  no  |  |

---


 
 
 #### [SaveAddressResponse](#SaveAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | String |  no  |  |
 | isDefaultAddress | Bool |  no  |  |
 | addressId | Int |  no  |  |

---


 
 
 #### [UpdateAddressResponse](#UpdateAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | isDefaultAddress | Bool |  no  |  |
 | addressId | Int |  no  |  |
 | isUpdated | Bool |  no  |  |

---


 
 
 #### [DeleteAddressResponse](#DeleteAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDeleted | Bool |  no  |  |
 | addressId | Int |  no  |  |

---


 
 
 #### [SelectCartAddressRequest](#SelectCartAddressRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String |  no  |  |
 | billingAddressId | Int |  no  |  |
 | addressId | String |  no  |  |

---


 
 
 #### [UpdateCartPaymentRequest](#UpdateCartPaymentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentIdentifier | String |  no  |  |
 | paymentMode | String |  no  |  |
 | addressId | Int |  no  |  |
 | merchantCode | String |  no  |  |
 | aggregatorName | String |  no  |  |
 | uid | Int |  no  |  |

---


 
 
 #### [CouponValidity](#CouponValidity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | discount | Double |  no  |  |
 | valid | Bool |  no  |  |
 | code | String |  no  |  |
 | displayMessageEn | String |  no  |  |

---


 
 
 #### [PaymentCouponValidate](#PaymentCouponValidate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String |  no  |  |
 | couponValidity | [CouponValidity](#CouponValidity) |  no  |  |

---


 
 
 #### [ShipmentResponse](#ShipmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dpId | Int |  no  |  |
 | promise | [ShipmentPromise](#ShipmentPromise) |  no  |  |
 | orderType | String |  no  |  |
 | shipmentType | String |  no  |  |
 | shipments | Int |  no  |  |
 | boxType | String |  no  |  |
 | items | [[CartProductInfo](#CartProductInfo)] |  no  |  |
 | dpOptions | [String: Any] |  no  |  |
 | fulfillmentId | Int |  no  |  |
 | fulfillmentType | String |  no  |  |

---


 
 
 #### [CartShipmentsResponse](#CartShipmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponText | String |  no  |  |
 | gstin | String |  no  |  |
 | currency | [CartCurrency](#CartCurrency) |  no  |  |
 | deliveryChargeInfo | String |  no  |  |
 | shipments | [[ShipmentResponse](#ShipmentResponse)] |  no  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise) |  no  |  |
 | lastModified | String |  no  |  |
 | comment | String |  no  |  |
 | restrictCheckout | Bool |  no  |  |
 | message | String |  no  |  |
 | checkoutMode | String |  no  |  |
 | error | Bool |  no  |  |
 | isValid | Bool |  no  |  |
 | uid | String |  no  |  |
 | cartId | Int |  no  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock) |  no  |  |
 | breakupValues | [CartBreakup](#CartBreakup) |  no  |  |

---


 
 
 #### [CartCheckoutRequest](#CartCheckoutRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | billingAddressId | Int |  no  |  |
 | paymentMode | String? |  yes  |  |
 | addressId | Int |  no  |  |
 | paymentIdentifier | String |  no  |  |
 | fyndstoreEmpId | String |  no  |  |
 | callbackUrl | String |  no  |  |
 | paymentParams | [String: Any] |  no  |  |
 | aggregator | String |  no  |  |
 | billingAddress | [String: Any] |  no  |  |
 | merchantCode | String |  no  |  |
 | paymentAutoConfirm | Bool |  no  |  |
 | staff | [String: Any] |  no  |  |
 | extraMeta | [String: Any] |  no  |  |
 | deliveryAddress | [String: Any] |  no  |  |
 | orderingStore | Int |  no  |  |
 | meta | [String: Any] |  no  |  |

---


 
 
 #### [CheckCart](#CheckCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lastModified | String |  no  |  |
 | items | [[CartProductInfo](#CartProductInfo)] |  no  |  |
 | checkoutMode | String |  no  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise) |  no  |  |
 | currency | [CartCurrency](#CartCurrency) |  no  |  |
 | deliveryChargeInfo | String |  no  |  |
 | userType | String |  no  |  |
 | uid | String |  no  |  |
 | success | Bool |  no  |  |
 | cartId | Int |  no  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock) |  no  |  |
 | breakupValues | [CartBreakup](#CartBreakup) |  no  |  |
 | deliveryChargeOrderValue | Int |  no  |  |
 | couponText | String |  no  |  |
 | gstin | String |  no  |  |
 | comment | String |  no  |  |
 | storeEmps | [[String: Any]] |  no  |  |
 | codCharges | Int |  no  |  |
 | codMessage | String |  no  |  |
 | restrictCheckout | Bool |  no  |  |
 | errorMessage | String |  no  |  |
 | message | String |  no  |  |
 | deliveryCharges | Int |  no  |  |
 | isValid | Bool |  no  |  |
 | orderId | String |  no  |  |
 | codAvailable | Bool |  no  |  |
 | storeCode | String |  no  |  |

---


 
 
 #### [CartCheckoutResponse](#CartCheckoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | callbackUrl | String |  no  |  |
 | cart | [CheckCart](#CheckCart) |  no  |  |
 | data | [String: Any] |  no  |  |
 | message | String |  no  |  |
 | appInterceptUrl | String |  no  |  |
 | orderId | String |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [CartMetaRequest](#CartMetaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstin | String |  no  |  |
 | checkoutMode | String |  no  |  |
 | comment | String |  no  |  |
 | pickUpCustomerDetails | [String: Any] |  no  | Customer contact details for customer pickup at store |

---


 
 
 #### [CartMetaResponse](#CartMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [CartMetaMissingResponse](#CartMetaMissingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | errors | [String] |  no  |  |

---


 
 
 #### [GetShareCartLinkRequest](#GetShareCartLinkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  | Cart uid for generating sharing |
 | meta | [String: Any] |  no  | Staff, Ordering store or any other data. This data will be used to generate link as well as sent as shared details. |

---


 
 
 #### [GetShareCartLinkResponse](#GetShareCartLinkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shareUrl | String |  no  | Short shareable final url |
 | token | String |  no  | Short url unique id |

---


 
 
 #### [SharedCartDetails](#SharedCartDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | token | String |  no  | Short link id |
 | source | [String: Any] |  no  | Share link device and other source information |
 | createdOn | String |  no  |  |
 | user | [String: Any] |  no  | User details of who generated share link |
 | meta | [String: Any] |  no  | Meta data sent while generating share cart link |

---


 
 
 #### [SharedCart](#SharedCart)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponText | String |  no  |  |
 | gstin | String |  no  |  |
 | currency | [CartCurrency](#CartCurrency) |  no  |  |
 | deliveryChargeInfo | String |  no  |  |
 | deliveryPromise | [ShipmentPromise](#ShipmentPromise) |  no  |  |
 | lastModified | String |  no  |  |
 | comment | String |  no  |  |
 | restrictCheckout | Bool |  no  |  |
 | items | [[CartProductInfo](#CartProductInfo)] |  no  |  |
 | sharedCartDetails | [SharedCartDetails](#SharedCartDetails) |  no  |  |
 | message | String |  no  |  |
 | checkoutMode | String |  no  |  |
 | isValid | Bool |  no  |  |
 | uid | String |  no  |  |
 | cartId | Int |  no  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock) |  no  |  |
 | breakupValues | [CartBreakup](#CartBreakup) |  no  |  |

---


 
 
 #### [SharedCartResponse](#SharedCartResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | String |  no  |  |
 | cart | [SharedCart](#SharedCart) |  no  |  |

---




 
 
 #### [LocationDefaultLanguage](#LocationDefaultLanguage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [LocationDefaultCurrency](#LocationDefaultCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | symbol | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [LocationCountry](#LocationCountry)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | capital | String |  no  |  |
 | currency | String |  no  |  |
 | iso2 | String |  no  |  |
 | iso3 | String |  no  |  |
 | name | String |  no  |  |
 | parent | String |  no  |  |
 | phoneCode | String |  no  |  |
 | type | String |  no  |  |
 | uid | Int |  no  |  |
 | v | Int |  no  |  |
 | id | String |  no  |  |
 | defaultCurrency | [LocationDefaultCurrency](#LocationDefaultCurrency) |  no  |  |
 | defaultLanguage | [LocationDefaultLanguage](#LocationDefaultLanguage) |  no  |  |

---


 
 
 #### [Locations](#Locations)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[LocationCountry](#LocationCountry)] |  no  |  |

---




 
 
 #### [TicketList](#TicketList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Ticket](#Ticket)] |  no  | List of tickets |
 | filters | [Filter](#Filter) |  no  | All the filters available for tickets |
 | page | [Page](#Page) |  no  | Describes the pagination state |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int |  no  |  |
 | nextId | String |  no  |  |
 | hasPrevious | Bool |  no  |  |
 | hasNext | Bool |  no  |  |
 | current | Int |  no  |  |
 | type | String? |  yes  |  |
 | size | Int |  no  |  |

---


 
 
 #### [TicketHistoryList](#TicketHistoryList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[TicketHistory](#TicketHistory)] |  no  | List of ticket history |
 | page | [Page](#Page) |  no  | Describes the pagination state |

---


 
 
 #### [CustomFormList](#CustomFormList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CustomForm](#CustomForm)] |  no  | List of forms |
 | page | [Page](#Page) |  no  | Describes the pagination state |

---


 
 
 #### [CreateCustomFormPayload](#CreateCustomFormPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  | Slug for the form |
 | title | String? |  yes  | Title for the form |
 | inputs | [[String: Any]]? |  yes  | List of all the form components |
 | description | String |  no  | Description of the form |
 | headerImage | String |  no  | Header image that is to be shown for the form |
 | priority | [String: Any]? |  yes  | Describes the priority of the tickets created by the form |
 | shouldNotify | Bool |  no  | Indicates if staff should be notified when a response is received |
 | successMessage | String |  no  | Success message that will be shown on submission |
 | pollForAssignment | [PollForAssignment](#PollForAssignment) |  no  | Describes how polling will be done for the tickets createds |

---


 
 
 #### [EditCustomFormPayload](#EditCustomFormPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Title for the form |
 | inputs | [[String: Any]]? |  yes  | List of all the form components |
 | description | String |  no  | Description of the form |
 | priority | [String: Any]? |  yes  | Describes the priority of the tickets created by the form |
 | headerImage | String |  no  | Header image that is to be shown for the form |
 | shouldNotify | Bool |  no  | Indicates if staff should be notified when a response is received |
 | loginRequired | Bool |  no  | Denotes if login is required to make a form response submission |
 | successMessage | String |  no  | Success message that will be shown on submission |
 | pollForAssignment | [PollForAssignment](#PollForAssignment) |  no  | Describes how polling will be done for the tickets createds |

---


 
 
 #### [EditTicketPayload](#EditTicketPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | content | [TicketContent](#TicketContent) |  no  | Ticket conetent details |
 | category | String |  no  | Category assigned to the ticket |
 | subCategory | String |  no  | Sub-category assigned to the ticket |
 | source | String |  no  | Denotes if the ticket was created at company or application level |
 | status | String |  no  | Denotes in what state is the ticket |
 | priority | [String: Any] |  no  | Denotes the priority of ticket |
 | assignedTo | [AgentChangePayload](#AgentChangePayload) |  no  | Details of support staff to whom ticket is assigned |
 | tags | [String] |  no  | Tags relevant to ticket |

---


 
 
 #### [AgentChangePayload](#AgentChangePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | agentId | String? |  yes  | Agent's unique ID |

---


 
 
 #### [CreateVideoRoomResponse](#CreateVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueName | String? |  yes  | Video Room's unique name |

---


 
 
 #### [CloseVideoRoomResponse](#CloseVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Denotes if operation was successfully |

---


 
 
 #### [CreateVideoRoomPayload](#CreateVideoRoomPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueName | String? |  yes  | Ticket id |
 | notify | [[NotifyUser](#NotifyUser)] |  no  | List of people to be notified |

---


 
 
 #### [NotifyUser](#NotifyUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  | Country code |
 | phoneNumber | String? |  yes  | Phone number |

---


 
 
 #### [Filter](#Filter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priorities | [[Priority](#Priority)]? |  yes  | List of possible priorities for tickets |
 | categories | [[TicketCategory](#TicketCategory)] |  no  | List of possible categories for tickets |
 | statuses | [[Status](#Status)]? |  yes  | List of possible statuses for tickets |
 | assignees | [[String: Any]]? |  yes  | List of support staff availble for tickets assignment |

---


 
 
 #### [TicketHistoryPayload](#TicketHistoryPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | [String: Any]? |  yes  | Details of history event |
 | type | [String: Any]? |  yes  | Type of history event |

---


 
 
 #### [CustomFormSubmissionPayload](#CustomFormSubmissionPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | [[KeyValue](#KeyValue)]? |  yes  | Form response |
 | attachments | [[TicketAsset](#TicketAsset)] |  no  | List of all attachments related to the form |

---


 
 
 #### [KeyValue](#KeyValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  | Parameter for evaluating |
 | value | [String: Any]? |  yes  | Response for the parameter |

---


 
 
 #### [GetTokenForVideoRoomResponse](#GetTokenForVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accessToken | String? |  yes  | Access token to be used for video room |

---


 
 
 #### [GetParticipantsInsideVideoRoomResponse](#GetParticipantsInsideVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | participants | [[Participant](#Participant)]? |  yes  | List of participants of the video room |

---


 
 
 #### [Participant](#Participant)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  | Details of participant |
 | identity | String |  no  | Unique identifier of participant |
 | status | String |  no  | Status of participant |

---


 
 
 #### [PhoneNumber](#PhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  | Denotes if the phone number is active |
 | primary | Bool |  no  | Denotes it's the primary phone number for the account |
 | verified | Bool |  no  | Denotes it's a verified phone number |
 | phone | String |  no  | Phone number |
 | countryCode | Int |  no  | Country code |

---


 
 
 #### [Email](#Email)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primary | Bool |  no  | Denotes it's the primary email for the account |
 | verified | Bool |  no  | Denotes it's a verified email |
 | email | String |  no  | Email Address |
 | active | Bool |  no  | Denotes if the email is active |

---


 
 
 #### [Debug](#Debug)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String |  no  | Source of user |
 | platform | String |  no  | Platform of user |

---


 
 
 #### [SubmitCustomFormResponse](#SubmitCustomFormResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ticket | [Ticket](#Ticket)? |  yes  | Ticket created on form submission |

---


 
 
 #### [TicketContext](#TicketContext)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String |  no  | Application ID related to the ticket |
 | companyId | String? |  yes  | Company ID related to the ticket |

---


 
 
 #### [CreatedOn](#CreatedOn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userAgent | String? |  yes  | Useragent details |

---


 
 
 #### [TicketAsset](#TicketAsset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  | Display text for asset |
 | value | String? |  yes  | To be used for details |
 | type | [String: Any]? |  yes  | Type of asset |

---


 
 
 #### [TicketContent](#TicketContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Title for ticket |
 | description | String |  no  | Long description of issue |
 | attachments | [[TicketAsset](#TicketAsset)] |  no  | List of all attachments related to the ticket |

---


 
 
 #### [AddTicketPayload](#AddTicketPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | [String: Any] |  no  | Creator of the ticket |
 | status | String |  no  | Status of the ticket |
 | priority | [String: Any] |  no  | Priority of the ticket |
 | category | String? |  yes  | Category of the ticket |
 | content | [TicketContent](#TicketContent)? |  yes  | Content for the ticket |

---


 
 
 #### [Priority](#Priority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | [PriorityEnum](#PriorityEnum)? |  yes  | Key for priority |
 | display | String? |  yes  | Display text for priority |
 | color | String? |  yes  | Color for priority |

---


 
 
 #### [Status](#Status)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  | Key for status |
 | display | String? |  yes  | Display text for status |
 | color | String? |  yes  | Color for status |

---


 
 
 #### [TicketCategory](#TicketCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  | Key for category |
 | display | String? |  yes  | Display text for category |
 | form | [CustomForm](#CustomForm) |  no  | Form related to the category |
 | subCategories | [[TicketSubCategory](#TicketSubCategory)] |  no  | Sub-category related to the category |
 | feedbackForm | [TicketFeedbackForm](#TicketFeedbackForm) |  no  | Feedback form of category used to submit ticket feedback |

---


 
 
 #### [TicketSubCategory](#TicketSubCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  | Key for sub-category |
 | display | String? |  yes  | Display text for sub-category |

---


 
 
 #### [TicketFeedbackForm](#TicketFeedbackForm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Feedback form title that will be shown to the user |
 | display | [[String: Any]] |  no  | List of all the form fields |

---


 
 
 #### [TicketFeedbackList](#TicketFeedbackList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[TicketFeedback](#TicketFeedback)] |  no  | List of all ticket feedback for the ticket |

---


 
 
 #### [TicketFeedbackPayload](#TicketFeedbackPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | formResponse | [String: Any] |  no  | Key-value pairs of all the form fields and their response |

---


 
 
 #### [SubmitButton](#SubmitButton)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Title for submit button |
 | titleColor | String? |  yes  | Title color submit button |
 | backgroundColor | String? |  yes  | Color for submit button |

---


 
 
 #### [PollForAssignment](#PollForAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | duration | Double? |  yes  | Duration for polling of staff |
 | message | String? |  yes  | Message for polling |
 | successMessage | String? |  yes  | Message for successful polling |
 | failureMessage | String? |  yes  | Message if polling failed |

---


 
 
 #### [CustomForm](#CustomForm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  | Application ID for form |
 | slug | String? |  yes  | Slug for the form, which is to be used for accessing the form |
 | headerImage | String |  no  | Form header image that will be shown to the user |
 | title | String? |  yes  | Form title that will be shown to the user |
 | description | String |  no  | Form description that will be shown to the user |
 | priority | [Priority](#Priority)? |  yes  | Sets priority of tickets created by form response |
 | loginRequired | Bool? |  yes  | Denotes if login is required to make a form response submission |
 | shouldNotify | Bool? |  yes  | Denotes if new response submission for the form should be notified to the assignees |
 | successMessage | String |  no  | Message that is to be shown on succesfull form response submission |
 | submitButton | [SubmitButton](#SubmitButton) |  no  | Details for submit button |
 | inputs | [[String: Any]]? |  yes  | List of all the form fields |
 | createdOn | [CreatedOn](#CreatedOn) |  no  | Gives details of when the form was created |
 | createdBy | [String: Any] |  no  | Gives details of user who created the form |
 | pollForAssignment | [PollForAssignment](#PollForAssignment) |  no  | Details of how polling should be done for support |
 | id | String? |  yes  | Unique identifier for the form |

---


 
 
 #### [FeedbackResponseItem](#FeedbackResponseItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  | Question/Title of the form field |
 | key | String? |  yes  | Key of the form field |
 | value | String? |  yes  | User response value for the form field |

---


 
 
 #### [TicketFeedback](#TicketFeedback)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  | Unique identifier for the feedback |
 | ticketId | String? |  yes  | Readable ticket number |
 | companyId | String? |  yes  | Company id for which ticket was raised |
 | response | [[FeedbackResponseItem](#FeedbackResponseItem)]? |  yes  |  |
 | category | String |  no  | Category of the ticket |
 | user | [String: Any] |  no  | User who submitted the feedback |
 | updatedAt | String |  no  | Time when the feedback was last updated |
 | createdAt | String |  no  | Time when the feedback was created |

---


 
 
 #### [TicketHistory](#TicketHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | Type of the history event |
 | value | [String: Any]? |  yes  | Data of the history event |
 | ticketId | String? |  yes  | Readable ticket number |
 | createdOn | [CreatedOn](#CreatedOn) |  no  | Time of creation of the history event |
 | createdBy | [String: Any] |  no  | User who created the history event |
 | id | String? |  yes  | Unique identifier of the history event |
 | updatedAt | String |  no  | Time of last update of the history event |
 | createdAt | String |  no  | Time of creation of the history event |

---


 
 
 #### [Ticket](#Ticket)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | context | [TicketContext](#TicketContext) |  no  | Details of company and application realated to the ticket |
 | createdOn | [CreatedOn](#CreatedOn) |  no  | Details of company and application realated to the ticket |
 | responseId | String |  no  | Details of company and application realated to the ticket |
 | content | [TicketContent](#TicketContent) |  no  | Ticket conetent details |
 | ticketId | String? |  yes  | Readable ticket number |
 | category | [TicketCategory](#TicketCategory)? |  yes  | Category assigned to the ticket |
 | subCategory | [TicketSubCategory](#TicketSubCategory) |  no  | Sub-category assigned to the ticket |
 | source | [String: Any]? |  yes  | Denotes if the ticket was created at company or application level |
 | status | [Status](#Status)? |  yes  | Denotes in what state is the ticket |
 | priority | [Priority](#Priority)? |  yes  | Denotes the priority of ticket |
 | createdBy | [String: Any] |  no  | User details of ticket creator |
 | assignedTo | [String: Any] |  no  | Details of support staff to whom ticket is assigned |
 | tags | [String] |  no  | Tags relevant to ticket |
 | customJson | [String: Any] |  no  | custom json relevant to the ticket |
 | isFeedbackPending | Bool |  no  | Denotes if feedback submission is pending for the ticket |
 | id | String? |  yes  | Unique identifier for the ticket |
 | updatedAt | String |  no  | Time when the ticket was last updated |
 | createdAt | String |  no  | Time when the ticket was created |

---




 
 
 #### [AvailablePageSchema](#AvailablePageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | text | String |  no  |  |
 | path | String |  no  |  |
 | type | String |  no  |  |
 | sections | [[AvailablePageSchemaSections](#AvailablePageSchemaSections)] |  no  |  |
 | sectionsMeta | [[AvailablePageSectionMetaAttributes](#AvailablePageSectionMetaAttributes)] |  no  |  |
 | theme | String |  no  |  |
 | seo | [AvailablePageSeo](#AvailablePageSeo) |  no  |  |
 | props | [[String: Any]] |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [AvailablePageSectionMetaAttributes](#AvailablePageSectionMetaAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [String: Any] |  no  |  |

---


 
 
 #### [AvailablePageSeo](#AvailablePageSeo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | description | String |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [AvailablePageSchemaSections](#AvailablePageSchemaSections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | label | String |  no  |  |
 | props | [String: Any] |  no  |  |
 | blocks | [[String: Any]] |  no  |  |
 | preset | [String: Any] |  no  |  |
 | predicate | [AvailablePagePredicate](#AvailablePagePredicate) |  no  |  |

---


 
 
 #### [AvailablePageScreenPredicate](#AvailablePageScreenPredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | Bool |  no  |  |
 | desktop | Bool |  no  |  |
 | tablet | Bool |  no  |  |

---


 
 
 #### [AvailablePageUserPredicate](#AvailablePageUserPredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | authenticated | Bool |  no  |  |
 | anonymous | Bool |  no  |  |

---


 
 
 #### [AvailablePageRoutePredicate](#AvailablePageRoutePredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | selected | String |  no  |  |
 | exactUrl | String |  no  |  |
 | query | [String: Any] |  no  |  |

---


 
 
 #### [AvailablePagePredicate](#AvailablePagePredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | screen | [AvailablePageScreenPredicate](#AvailablePageScreenPredicate) |  no  |  |
 | user | [AvailablePageUserPredicate](#AvailablePageUserPredicate) |  no  |  |
 | route | [AvailablePageRoutePredicate](#AvailablePageRoutePredicate) |  no  |  |

---


 
 
 #### [AllAvailablePageSchema](#AllAvailablePageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pages | [[AvailablePageSchema](#AvailablePageSchema)] |  no  |  |

---


 
 
 #### [PaginationSchema](#PaginationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int |  no  |  |
 | itemTotal | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | type | String |  no  |  |
 | current | Int |  no  |  |

---


 
 
 #### [ThemesListingResponseSchema](#ThemesListingResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ThemesSchema](#ThemesSchema)] |  no  |  |
 | page | [PaginationSchema](#PaginationSchema) |  no  |  |

---


 
 
 #### [AddThemeRequestSchema](#AddThemeRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | themeId | String |  no  |  |

---


 
 
 #### [UpgradableThemeSchema](#UpgradableThemeSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | parentTheme | String |  no  |  |
 | appliedTheme | String |  no  |  |
 | upgrade | Bool |  no  |  |

---


 
 
 #### [FontsSchema](#FontsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [FontsSchemaItems](#FontsSchemaItems) |  no  |  |
 | kind | String |  no  |  |

---


 
 
 #### [BlitzkriegApiErrorSchema](#BlitzkriegApiErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [BlitzkriegNotFoundSchema](#BlitzkriegNotFoundSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [BlitzkriegInternalServerErrorSchema](#BlitzkriegInternalServerErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [FontsSchemaItems](#FontsSchemaItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | family | String |  no  |  |
 | variants | [String] |  no  |  |
 | subsets | [String] |  no  |  |
 | version | String |  no  |  |
 | lastModified | String |  no  |  |
 | files | [FontsSchemaItemsFiles](#FontsSchemaItemsFiles) |  no  |  |
 | category | String |  no  |  |
 | kind | String |  no  |  |

---


 
 
 #### [FontsSchemaItemsFiles](#FontsSchemaItemsFiles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | regular | String |  no  |  |
 | italic | String |  no  |  |
 | bold | String |  no  |  |

---


 
 
 #### [ThemesSchema](#ThemesSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String |  no  |  |
 | applied | Bool |  no  |  |
 | customized | Bool |  no  |  |
 | published | Bool |  no  |  |
 | archived | Bool |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | version | String |  no  |  |
 | parentThemeVersion | String |  no  |  |
 | parentTheme | String |  no  |  |
 | information | [Information](#Information) |  no  |  |
 | tags | [String] |  no  |  |
 | src | [Src](#Src) |  no  |  |
 | assets | [AssetsSchema](#AssetsSchema) |  no  |  |
 | availableSections | [[availableSectionSchema](#availableSectionSchema)] |  no  |  |
 | constants | [String: Any] |  no  |  |
 | styles | [String: Any] |  no  |  |
 | config | [Config](#Config) |  no  |  |
 | settings | [String: Any] |  no  |  |
 | font | [Font](#Font) |  no  |  |
 | id | String |  no  |  |
 | v | Int |  no  |  |
 | colors | [Colors](#Colors) |  no  |  |

---


 
 
 #### [availableSectionSchema](#availableSectionSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | blocks | [[Blocks](#Blocks)] |  no  |  |
 | name | String |  no  |  |
 | label | String |  no  |  |
 | props | [[BlocksProps](#BlocksProps)] |  no  |  |

---


 
 
 #### [Information](#Information)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | images | [Images](#Images) |  no  |  |
 | features | [String] |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |

---


 
 
 #### [Images](#Images)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | [String] |  no  |  |
 | android | [String] |  no  |  |
 | ios | [String] |  no  |  |
 | thumbnail | [String] |  no  |  |

---


 
 
 #### [Src](#Src)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String |  no  |  |

---


 
 
 #### [AssetsSchema](#AssetsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | umdJs | [UmdJs](#UmdJs) |  no  |  |
 | commonJs | [CommonJs](#CommonJs) |  no  |  |
 | css | [Css](#Css) |  no  |  |

---


 
 
 #### [UmdJs](#UmdJs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String |  no  |  |

---


 
 
 #### [CommonJs](#CommonJs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String |  no  |  |

---


 
 
 #### [Css](#Css)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String |  no  |  |

---


 
 
 #### [Seo](#Seo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | description | String |  no  |  |

---


 
 
 #### [Sections](#Sections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | String |  no  |  |

---


 
 
 #### [Config](#Config)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | preset | [Preset](#Preset) |  no  |  |
 | globalSchema | [GlobalSchema](#GlobalSchema) |  no  |  |
 | current | String |  no  |  |
 | list | [[ListSchemaItem](#ListSchemaItem)] |  no  |  |

---


 
 
 #### [Preset](#Preset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pages | [[AvailablePageSchema](#AvailablePageSchema)] |  no  |  |

---


 
 
 #### [GlobalSchema](#GlobalSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [[GlobalSchemaProps](#GlobalSchemaProps)] |  no  |  |

---


 
 
 #### [ListSchemaItem](#ListSchemaItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | global | [String: Any] |  no  |  |
 | page | [[ConfigPage](#ConfigPage)] |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [Colors](#Colors)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bgColor | String |  no  |  |
 | primaryColor | String |  no  |  |
 | secondaryColor | String |  no  |  |
 | accentColor | String |  no  |  |
 | linkColor | String |  no  |  |
 | buttonSecondaryColor | String |  no  |  |

---


 
 
 #### [Custom](#Custom)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [String: Any] |  no  |  |

---


 
 
 #### [ConfigPage](#ConfigPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | settings | [String: Any] |  no  |  |
 | page | String |  no  |  |

---


 
 
 #### [Font](#Font)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | family | String |  no  |  |
 | variants | [Variants](#Variants) |  no  |  |

---


 
 
 #### [Variants](#Variants)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | medium | [Medium](#Medium) |  no  |  |
 | semiBold | [SemiBold](#SemiBold) |  no  |  |
 | bold | [Bold](#Bold) |  no  |  |
 | light | [Light](#Light) |  no  |  |
 | regular | [Regular](#Regular) |  no  |  |

---


 
 
 #### [Medium](#Medium)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | file | String |  no  |  |

---


 
 
 #### [SemiBold](#SemiBold)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | file | String |  no  |  |

---


 
 
 #### [Bold](#Bold)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | file | String |  no  |  |

---


 
 
 #### [Light](#Light)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | file | String |  no  |  |

---


 
 
 #### [Regular](#Regular)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | file | String |  no  |  |

---


 
 
 #### [Blocks](#Blocks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | name | String |  no  |  |
 | props | [[BlocksProps](#BlocksProps)] |  no  |  |

---


 
 
 #### [GlobalSchemaProps](#GlobalSchemaProps)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | label | String |  no  |  |
 | type | String |  no  |  |
 | category | String |  no  |  |

---


 
 
 #### [BlocksProps](#BlocksProps)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | label | String |  no  |  |
 | type | String |  no  |  |

---




 
 
 #### [EditEmailRequestSchema](#EditEmailRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |

---


 
 
 #### [SendVerificationLinkMobileRequestSchema](#SendVerificationLinkMobileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool |  no  |  |
 | active | Bool |  no  |  |
 | countryCode | String |  no  |  |
 | phone | String |  no  |  |
 | primary | Bool |  no  |  |

---


 
 
 #### [EditMobileRequestSchema](#EditMobileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String |  no  |  |
 | phone | String |  no  |  |

---


 
 
 #### [EditProfileRequestSchema](#EditProfileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | lastName | String |  no  |  |
 | mobile | [EditProfileMobileSchema](#EditProfileMobileSchema) |  no  |  |
 | countryCode | String |  no  |  |
 | email | String |  no  |  |
 | gender | String |  no  |  |
 | dob | String |  no  |  |
 | profilePicUrl | String |  no  |  |
 | androidHash | String |  no  |  |
 | sender | String |  no  |  |
 | registerToken | String |  no  |  |

---


 
 
 #### [EditProfileMobileSchema](#EditProfileMobileSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String |  no  |  |
 | countryCode | String |  no  |  |

---


 
 
 #### [SendEmailOtpRequestSchema](#SendEmailOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | action | String |  no  |  |
 | token | String |  no  |  |
 | registerToken | String |  no  |  |

---


 
 
 #### [VerifyEmailOtpRequestSchema](#VerifyEmailOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | action | String |  no  |  |
 | registerToken | String |  no  |  |
 | otp | String |  no  |  |

---


 
 
 #### [VerifyOtpRequestSchema](#VerifyOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String |  no  |  |
 | registerToken | String |  no  |  |
 | otp | String |  no  |  |

---


 
 
 #### [SendMobileOtpRequestSchema](#SendMobileOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String |  no  |  |
 | countryCode | String |  no  |  |
 | action | String |  no  |  |
 | token | String |  no  |  |
 | androidHash | String |  no  |  |
 | force | String |  no  |  |
 | captchaCode | String |  no  |  |

---


 
 
 #### [UpdatePasswordRequestSchema](#UpdatePasswordRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | oldPassword | String |  no  |  |
 | newPassword | String |  no  |  |

---


 
 
 #### [FormRegisterRequestSchema](#FormRegisterRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | lastName | String |  no  |  |
 | gender | String |  no  |  |
 | email | String |  no  |  |
 | password | String |  no  |  |
 | phone | [FormRegisterRequestSchemaPhone](#FormRegisterRequestSchemaPhone) |  no  |  |
 | registerToken | String |  no  |  |

---


 
 
 #### [TokenRequestBodySchema](#TokenRequestBodySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | token | String |  no  |  |

---


 
 
 #### [ForgotPasswordRequestSchema](#ForgotPasswordRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | password | String |  no  |  |

---


 
 
 #### [CodeRequestBodySchema](#CodeRequestBodySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |

---


 
 
 #### [SendResetPasswordEmailRequestSchema](#SendResetPasswordEmailRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | captchaCode | String |  no  |  |

---


 
 
 #### [PasswordLoginRequestSchema](#PasswordLoginRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | captchaCode | String |  no  |  |
 | password | String |  no  |  |
 | username | String |  no  |  |

---


 
 
 #### [SendOtpRequestSchema](#SendOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String |  no  |  |
 | captchaCode | String |  no  |  |
 | mobile | String |  no  |  |

---


 
 
 #### [OAuthRequestSchema](#OAuthRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSignedIn | Bool |  no  |  |
 | oauth2 | [OAuthRequestSchemaOauth2](#OAuthRequestSchemaOauth2) |  no  |  |
 | profile | [OAuthRequestSchemaProfile](#OAuthRequestSchemaProfile) |  no  |  |

---


 
 
 #### [UserObjectSchema](#UserObjectSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |

---


 
 
 #### [AuthSuccess](#AuthSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | registerToken | String |  no  |  |
 | userExists | Bool |  no  |  |
 | user | [UserSchema](#UserSchema) |  no  |  |

---


 
 
 #### [SendOtpResponse](#SendOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | resendTimer | Int |  no  |  |
 | resendToken | String |  no  |  |
 | success | Bool |  no  |  |
 | requestId | String |  no  |  |
 | message | String |  no  |  |
 | mobile | String |  no  |  |
 | countryCode | String |  no  |  |
 | email | String |  no  |  |
 | resendEmailToken | String |  no  |  |
 | registerToken | String |  no  |  |
 | verifyEmailOtp | Bool |  no  |  |
 | verifyMobileOtp | Bool |  no  |  |
 | userExists | Bool |  no  |  |

---


 
 
 #### [ProfileEditSuccess](#ProfileEditSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |
 | registerToken | String |  no  |  |
 | userExists | Bool |  no  |  |
 | verifyEmailLink | Bool |  no  |  |
 | verifyEmailOtp | Bool |  no  |  |
 | verifyMobileOtp | Bool |  no  |  |
 | email | String |  no  |  |

---


 
 
 #### [LoginSuccess](#LoginSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |
 | requestId | String |  no  |  |
 | registerToken | String |  no  |  |

---


 
 
 #### [VerifyOtpSuccess](#VerifyOtpSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |
 | userExists | Bool |  no  |  |
 | registerToken | String |  no  |  |

---


 
 
 #### [ResetPasswordSuccess](#ResetPasswordSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |

---


 
 
 #### [RegisterFormSuccess](#RegisterFormSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | resendTimer | Int |  no  |  |
 | resendToken | String |  no  |  |
 | resendEmailToken | String |  no  |  |
 | registerToken | String |  no  |  |
 | success | Bool |  no  |  |
 | requestId | String |  no  |  |
 | message | String |  no  |  |
 | mobile | String |  no  |  |
 | countryCode | String |  no  |  |
 | verifyEmailOtp | Bool |  no  |  |
 | verifyMobileOtp | Bool |  no  |  |
 | userExists | Bool |  no  |  |

---


 
 
 #### [VerifyEmailSuccess](#VerifyEmailSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [HasPasswordSuccess](#HasPasswordSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | result | Bool |  no  |  |

---


 
 
 #### [LogoutSuccess](#LogoutSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logout | Bool |  no  |  |

---


 
 
 #### [OtpSuccess](#OtpSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | resendTimer | Int |  no  |  |
 | resendToken | String |  no  |  |
 | registerToken | String |  no  |  |
 | success | Bool |  no  |  |
 | requestId | String |  no  |  |
 | message | String |  no  |  |
 | mobile | String |  no  |  |
 | countryCode | String |  no  |  |

---


 
 
 #### [EmailOtpSuccess](#EmailOtpSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |

---


 
 
 #### [SessionListSuccess](#SessionListSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sessions | [String] |  no  |  |

---


 
 
 #### [VerifyMobileOTPSuccess](#VerifyMobileOTPSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |
 | verifyMobileLink | Bool |  no  |  |

---


 
 
 #### [VerifyEmailOTPSuccess](#VerifyEmailOTPSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |
 | verifyEmailLink | Bool |  no  |  |

---


 
 
 #### [SendMobileVerifyLinkSuccess](#SendMobileVerifyLinkSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verifyMobileLink | Bool |  no  |  |

---


 
 
 #### [SendEmailVerifyLinkSuccess](#SendEmailVerifyLinkSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verifyEmailLink | Bool |  no  |  |

---


 
 
 #### [UserSearchResponseSchema](#UserSearchResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | users | [[UserSchema](#UserSchema)] |  no  |  |

---


 
 
 #### [CustomerListResponseSchema](#CustomerListResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[UserSchema](#UserSchema)] |  no  |  |
 | page | [PaginationSchema](#PaginationSchema) |  no  |  |

---


 
 
 #### [UnauthorizedSchema](#UnauthorizedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [UnauthenticatedSchema](#UnauthenticatedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | authenticated | Bool |  no  |  |

---


 
 
 #### [NotFoundSchema](#NotFoundSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [AuthenticationInternalServerErrorSchema](#AuthenticationInternalServerErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [AuthenticationApiErrorSchema](#AuthenticationApiErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [ProfileEditSuccessSchema](#ProfileEditSuccessSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | verifyEmailOtp | Bool |  no  |  |
 | verifyEmailLink | Bool |  no  |  |
 | verifyMobileOtp | Bool |  no  |  |
 | user | String |  no  |  |
 | registerToken | String |  no  |  |
 | userExists | Bool |  no  |  |

---


 
 
 #### [FormRegisterRequestSchemaPhone](#FormRegisterRequestSchemaPhone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String |  no  |  |
 | mobile | String |  no  |  |

---


 
 
 #### [OAuthRequestSchemaOauth2](#OAuthRequestSchemaOauth2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accessToken | String |  no  |  |
 | expiry | Int |  no  |  |
 | refreshToken | String |  no  |  |

---


 
 
 #### [OAuthRequestSchemaProfile](#OAuthRequestSchemaProfile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lastName | String |  no  |  |
 | image | String |  no  |  |
 | id | String |  no  |  |
 | email | String |  no  |  |
 | fullName | String |  no  |  |
 | firstName | String |  no  |  |

---


 
 
 #### [AuthSuccessUser](#AuthSuccessUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | lastName | String |  no  |  |
 | debug | [AuthSuccessUserDebug](#AuthSuccessUserDebug) |  no  |  |
 | active | Bool |  no  |  |
 | emails | [AuthSuccessUserEmails](#AuthSuccessUserEmails) |  no  |  |

---


 
 
 #### [AuthSuccessUserDebug](#AuthSuccessUserDebug)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | platform | String |  no  |  |

---


 
 
 #### [AuthSuccessUserEmails](#AuthSuccessUserEmails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | verified | Bool |  no  |  |
 | primary | Bool |  no  |  |
 | active | Bool |  no  |  |

---


 
 
 #### [CreateUserRequestSchema](#CreateUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String? |  yes  |  |
 | email | String |  no  |  |
 | firstName | String |  no  |  |
 | lastName | String |  no  |  |
 | gender | String |  no  |  |
 | username | String? |  yes  |  |
 | meta | [String: Any] |  no  |  |

---


 
 
 #### [CreateUserResponseSchema](#CreateUserResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |

---


 
 
 #### [CreateUserSessionRequestSchema](#CreateUserSessionRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | String |  no  |  |
 | maxAge | Double |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [CreateUserSessionResponseSchema](#CreateUserSessionResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | String |  no  |  |
 | maxAge | Double |  no  |  |
 | secure | Bool |  no  |  |
 | httpOnly | Bool |  no  |  |
 | cookie | [String: Any] |  no  |  |

---


 
 
 #### [PlatformSchema](#PlatformSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | lookAndFeel | [LookAndFeel](#LookAndFeel) |  no  |  |
 | updatedAt | String |  no  |  |
 | active | Bool |  no  |  |
 | forgotPassword | Bool |  no  |  |
 | login | [Login](#Login) |  no  |  |
 | skipCaptcha | Bool |  no  |  |
 | name | String |  no  |  |
 | meta | [MetaSchema](#MetaSchema) |  no  |  |
 | id | String |  no  |  |
 | social | [Social](#Social) |  no  |  |
 | requiredFields | [RequiredFields](#RequiredFields) |  no  |  |
 | registerRequiredFields | [RegisterRequiredFields](#RegisterRequiredFields) |  no  |  |
 | skipLogin | Bool |  no  |  |
 | flashCard | [FlashCard](#FlashCard) |  no  |  |
 | subtext | String |  no  |  |
 | socialTokens | [SocialTokens](#SocialTokens) |  no  |  |
 | createdAt | String |  no  |  |
 | register | Bool |  no  |  |
 | mobileImage | String |  no  |  |
 | desktopImage | String |  no  |  |

---


 
 
 #### [LookAndFeel](#LookAndFeel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardPosition | String |  no  |  |
 | backgroundColor | String |  no  |  |

---


 
 
 #### [Login](#Login)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | password | Bool |  no  |  |
 | otp | Bool |  no  |  |

---


 
 
 #### [MetaSchema](#MetaSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndDefault | Bool |  no  |  |

---


 
 
 #### [Social](#Social)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accountKit | Bool |  no  |  |
 | facebook | Bool |  no  |  |
 | google | Bool |  no  |  |

---


 
 
 #### [RequiredFields](#RequiredFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [PlatformEmail](#PlatformEmail) |  no  |  |
 | mobile | [PlatformMobile](#PlatformMobile) |  no  |  |

---


 
 
 #### [PlatformEmail](#PlatformEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool |  no  |  |
 | level | String |  no  |  |

---


 
 
 #### [PlatformMobile](#PlatformMobile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool |  no  |  |
 | level | String |  no  |  |

---


 
 
 #### [RegisterRequiredFields](#RegisterRequiredFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [RegisterRequiredFieldsEmail](#RegisterRequiredFieldsEmail) |  no  |  |
 | mobile | [RegisterRequiredFieldsMobile](#RegisterRequiredFieldsMobile) |  no  |  |

---


 
 
 #### [RegisterRequiredFieldsEmail](#RegisterRequiredFieldsEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool |  no  |  |
 | level | String |  no  |  |

---


 
 
 #### [RegisterRequiredFieldsMobile](#RegisterRequiredFieldsMobile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool |  no  |  |
 | level | String |  no  |  |

---


 
 
 #### [FlashCard](#FlashCard)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | textColor | String |  no  |  |
 | backgroundColor | String |  no  |  |

---


 
 
 #### [SocialTokens](#SocialTokens)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [Facebook](#Facebook) |  no  |  |
 | accountKit | [Accountkit](#Accountkit) |  no  |  |
 | google | [Google](#Google) |  no  |  |

---


 
 
 #### [Facebook](#Facebook)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |

---


 
 
 #### [Accountkit](#Accountkit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |

---


 
 
 #### [Google](#Google)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |

---


 
 
 #### [UpdateUserRequestSchema](#UpdateUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | lastName | String |  no  |  |
 | gender | String |  no  |  |
 | meta | [String: Any] |  no  |  |

---


 
 
 #### [UserSchema](#UserSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | lastName | String |  no  |  |
 | phoneNumbers | [[PhoneNumber](#PhoneNumber)] |  no  |  |
 | emails | [[Email](#Email)] |  no  |  |
 | gender | String |  no  |  |
 | dob | String |  no  |  |
 | active | Bool |  no  |  |
 | profilePicUrl | String |  no  |  |
 | username | String |  no  |  |
 | accountType | String |  no  |  |
 | uid | String |  no  |  |
 | debug | [Debug](#Debug) |  no  |  |
 | hasOldPasswordHash | Bool |  no  |  |
 | id | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |

---




 
 
 #### [ApplicationLegal](#ApplicationLegal)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String |  no  |  |
 | tnc | String |  no  |  |
 | policy | String |  no  |  |
 | shipping | String |  no  |  |
 | faq | [[ApplicationLegalFAQ](#ApplicationLegalFAQ)] |  no  |  |
 | id | String |  no  |  |
 | updatedAt | String |  no  |  |
 | createdAt | String |  no  |  |

---


 
 
 #### [ApplicationLegalFAQ](#ApplicationLegalFAQ)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | question | String |  no  |  |
 | answer | String |  no  |  |

---


 
 
 #### [SeoComponent](#SeoComponent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | seo | [SeoSchema](#SeoSchema) |  no  |  |

---


 
 
 #### [SeoSchema](#SeoSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | String |  no  |  |
 | id | String |  no  |  |
 | robotsTxt | String |  no  |  |
 | sitemapEnabled | Bool |  no  |  |
 | customMetaTags | [[CustomMetaTag](#CustomMetaTag)] |  no  |  |
 | details | [Detail](#Detail) |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |

---


 
 
 #### [CustomMetaTag](#CustomMetaTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | content | String |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [Detail](#Detail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | description | String |  no  |  |

---


 
 
 #### [AnnouncementPageSchema](#AnnouncementPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageSlug | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [EditorMeta](#EditorMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | foregroundColor | String |  no  |  |
 | backgroundColor | String |  no  |  |
 | contentType | String |  no  |  |
 | content | String |  no  |  |

---


 
 
 #### [AnnouncementAuthorSchema](#AnnouncementAuthorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String |  no  |  |
 | modifiedBy | String |  no  |  |

---


 
 
 #### [AdminAnnouncementSchema](#AdminAnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | platforms | [String] |  no  |  |
 | title | String |  no  |  |
 | announcement | String |  no  |  |
 | pages | [[AnnouncementPageSchema](#AnnouncementPageSchema)] |  no  |  |
 | editorMeta | [EditorMeta](#EditorMeta) |  no  |  |
 | author | [AnnouncementAuthorSchema](#AnnouncementAuthorSchema) |  no  |  |
 | createdAt | String |  no  |  |
 | app | String |  no  |  |
 | modifiedAt | String |  no  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema) |  no  |  |

---


 
 
 #### [ScheduleSchema](#ScheduleSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String |  no  |  |
 | start | String |  no  |  |
 | end | String |  no  |  |
 | duration | Double |  no  |  |
 | nextSchedule | [[NextSchedule](#NextSchedule)] |  no  |  |

---


 
 
 #### [NextSchedule](#NextSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String |  no  |  |
 | end | String |  no  |  |

---


 
 
 #### [AnnouncementSchema](#AnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | announcement | String |  no  |  |
 | schedule | [ScheduleStartSchema](#ScheduleStartSchema) |  no  |  |

---


 
 
 #### [ScheduleStartSchema](#ScheduleStartSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String |  no  |  |
 | end | String |  no  |  |

---


 
 
 #### [BlogGetResponse](#BlogGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BlogSchema](#BlogSchema)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ResourceContent](#ResourceContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [Asset](#Asset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String |  no  |  |
 | id | String |  no  |  |
 | secureUrl | String |  no  |  |

---


 
 
 #### [Author](#Author)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | designation | String |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [BlogSchema](#BlogSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | application | String |  no  |  |
 | archived | Bool |  no  |  |
 | author | [Author](#Author) |  no  |  |
 | content | [[ResourceContent](#ResourceContent)] |  no  |  |
 | featureImage | [Asset](#Asset) |  no  |  |
 | published | Bool |  no  |  |
 | readingTime | String |  no  |  |
 | slug | String |  no  |  |
 | tags | [String] |  no  |  |
 | seo | [SEO](#SEO) |  no  |  |
 | schedule | [CronSchedule](#CronSchedule) |  no  |  |
 | title | String |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |

---


 
 
 #### [SEO](#SEO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | image | [SEOImage](#SEOImage) |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [SEOImage](#SEOImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |

---


 
 
 #### [DateMeta](#DateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

---


 
 
 #### [BlogRequest](#BlogRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | author | [Author](#Author) |  no  |  |
 | content | [[ResourceContent](#ResourceContent)] |  no  |  |
 | featureImage | [Asset](#Asset) |  no  |  |
 | published | Bool |  no  |  |
 | readingTime | String |  no  |  |
 | slug | String |  no  |  |
 | tags | [String] |  no  |  |
 | title | String |  no  |  |
 | seo | [SEO](#SEO) |  no  |  |
 | schedule | [CronSchedule](#CronSchedule) |  no  |  |

---


 
 
 #### [GetAnnouncementListSchema](#GetAnnouncementListSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AdminAnnouncementSchema](#AdminAnnouncementSchema)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [CreateAnnouncementSchema](#CreateAnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | data | [AdminAnnouncementSchema](#AdminAnnouncementSchema) |  no  |  |

---


 
 
 #### [Navigation](#Navigation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | orientation | String |  no  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema) |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | id | String |  no  |  |
 | position | String |  no  |  |
 | application | String |  no  |  |
 | platform | String |  no  |  |
 | navigation | [NavigationReference](#NavigationReference) |  no  |  |

---


 
 
 #### [LocaleLanguage](#LocaleLanguage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hi | [Language](#Language) |  no  |  |
 | ar | [Language](#Language) |  no  |  |
 | enUs | [Language](#Language) |  no  |  |

---


 
 
 #### [Language](#Language)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |

---


 
 
 #### [Action](#Action)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [ActionPage](#ActionPage) |  no  |  |
 | popup | [ActionPage](#ActionPage) |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ActionPage](#ActionPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | params | [String: [String]] |  no  |  |
 | query | [String: [String]] |  no  |  |
 | url | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [NavigationReference](#NavigationReference)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | acl | [String] |  no  |  |
 | tags | [String] |  no  |  |
 | localeLanguage | [LocaleLanguage](#LocaleLanguage) |  no  |  |
 | image | String |  no  |  |
 | type | String |  no  |  |
 | action | [Action](#Action) |  no  |  |
 | active | Bool |  no  |  |
 | display | String |  no  |  |
 | sortOrder | Int |  no  |  |
 | subNavigation | [[NavigationReference](#NavigationReference)] |  no  |  |

---


 
 
 #### [LandingPage](#LandingPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [LandingPageSchema](#LandingPageSchema) |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [ConfigurationSchema](#ConfigurationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sleepTime | Int |  no  |  |
 | startOnLaunch | Bool |  no  |  |
 | duration | Int |  no  |  |
 | slideDirection | String |  no  |  |

---


 
 
 #### [SlideshowMedia](#SlideshowMedia)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | url | String |  no  |  |
 | bgColor | String |  no  |  |
 | duration | Int |  no  |  |
 | autoDecideDuration | Bool |  no  |  |
 | action | [Action](#Action) |  no  |  |

---


 
 
 #### [Slideshow](#Slideshow)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [SlideshowSchema](#SlideshowSchema) |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [AnnouncementsResponseSchema](#AnnouncementsResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | announcements | [String: [[AnnouncementSchema](#AnnouncementSchema)]] |  no  |  |
 | refreshRate | Int |  no  | number of seconds after which api should hit again to fetch new announcements |
 | refreshPages | [String] |  no  | list of page slugs on which announcement should be fetched as soon as they are loaded |

---


 
 
 #### [FaqResponseSchema](#FaqResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faqs | [[FaqSchema](#FaqSchema)] |  no  |  |

---


 
 
 #### [UpdateHandpickedSchema](#UpdateHandpickedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | [HandpickedTagSchema](#HandpickedTagSchema) |  no  |  |

---


 
 
 #### [HandpickedTagSchema](#HandpickedTagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | position | String |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | name | String |  no  |  |
 | url | String |  no  |  |
 | type | String |  no  |  |
 | subType | String |  no  |  |
 | content | String |  no  |  |

---


 
 
 #### [RemoveHandpickedSchema](#RemoveHandpickedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String] |  no  |  |

---


 
 
 #### [CreateTagSchema](#CreateTagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | subType | String |  no  |  |
 | id | String |  no  |  |
 | type | String |  no  |  |
 | url | String |  no  |  |
 | position | String |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | content | String |  no  |  |

---


 
 
 #### [CreateTagRequestSchema](#CreateTagRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [[CreateTagSchema](#CreateTagSchema)] |  no  |  |

---


 
 
 #### [APIError](#APIError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | status | Double |  no  |  |
 | code | String |  no  |  |
 | exception | String |  no  |  |
 | info | String |  no  |  |
 | requestId | String |  no  |  |
 | stackTrace | String |  no  |  |
 | meta | [String: Any] |  no  |  |

---


 
 
 #### [CategorySchema](#CategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | index | Int |  no  |  |
 | title | String |  no  |  |
 | description | String |  no  |  |
 | children | [String] |  no  |  |
 | id | String |  no  |  |
 | slug | String |  no  |  |
 | application | String |  no  |  |
 | iconUrl | String |  no  |  |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [ChildrenSchema](#ChildrenSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | question | String |  no  |  |
 | answer | String |  no  |  |
 | slug | String |  no  |  |
 | application | String |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [CategoryRequestSchema](#CategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [FAQCategorySchema](#FAQCategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | index | Int |  no  |  |
 | title | String |  no  |  |
 | description | String |  no  |  |
 | children | [[ChildrenSchema](#ChildrenSchema)] |  no  |  |
 | id | String |  no  |  |
 | slug | String |  no  |  |
 | application | String |  no  |  |
 | iconUrl | String |  no  |  |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [FaqSchema](#FaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | application | String |  no  |  |
 | id | String |  no  |  |
 | question | String |  no  |  |
 | answer | String |  no  |  |

---


 
 
 #### [FAQ](#FAQ)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | question | String |  no  |  |
 | answer | String |  no  |  |

---


 
 
 #### [CreateFaqResponseSchema](#CreateFaqResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faq | [FaqSchema](#FaqSchema) |  no  |  |

---


 
 
 #### [CreateFaqSchema](#CreateFaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faq | [FAQ](#FAQ) |  no  |  |

---


 
 
 #### [GetFaqSchema](#GetFaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faqs | [[FaqSchema](#FaqSchema)] |  no  |  |

---


 
 
 #### [UpdateFaqCategoryRequestSchema](#UpdateFaqCategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategorySchema](#CategorySchema) |  no  |  |

---


 
 
 #### [CreateFaqCategoryRequestSchema](#CreateFaqCategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategoryRequestSchema](#CategoryRequestSchema) |  no  |  |

---


 
 
 #### [CreateFaqCategorySchema](#CreateFaqCategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategorySchema](#CategorySchema) |  no  |  |

---


 
 
 #### [GetFaqCategoriesSchema](#GetFaqCategoriesSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categories | [[CategorySchema](#CategorySchema)] |  no  |  |

---


 
 
 #### [GetFaqCategoryBySlugSchema](#GetFaqCategoryBySlugSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [FAQCategorySchema](#FAQCategorySchema) |  no  |  |

---


 
 
 #### [LandingPageGetResponse](#LandingPageGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[LandingPageSchema](#LandingPageSchema)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [LandingPageSchema](#LandingPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | action | [Action](#Action) |  no  |  |
 | platform | [String] |  no  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema) |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | id | String |  no  |  |
 | application | String |  no  |  |
 | archived | Bool |  no  |  |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [DefaultNavigationResponse](#DefaultNavigationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[NavigationSchema](#NavigationSchema)] |  no  |  |

---


 
 
 #### [NavigationGetResponse](#NavigationGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[NavigationSchema](#NavigationSchema)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [Orientation](#Orientation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | portrait | [String] |  no  |  |
 | landscape | [String] |  no  |  |

---


 
 
 #### [NavigationSchema](#NavigationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | application | String |  no  |  |
 | archived | Bool |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | platform | [String] |  no  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema) |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | orientation | [Orientation](#Orientation) |  no  |  |
 | version | Double |  no  |  |
 | navigation | [[NavigationReference](#NavigationReference)] |  no  |  |

---


 
 
 #### [NavigationRequest](#NavigationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | platform | [String] |  no  |  |
 | orientation | [Orientation](#Orientation) |  no  |  |
 | navigation | [[NavigationReference](#NavigationReference)] |  no  |  |

---


 
 
 #### [CustomPageSchema](#CustomPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | platform | String |  no  |  |
 | title | String |  no  |  |
 | slug | String |  no  |  |
 | type | String |  no  |  |
 | orientation | String |  no  |  |
 | application | String |  no  |  |
 | description | String |  no  |  |
 | published | Bool |  no  |  |
 | tags | [String] |  no  |  |
 | content | [[String: Any]] |  no  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema) |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema) |  no  |  |

---


 
 
 #### [ContentSchema](#ContentSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | value | [String: Any] |  no  |  |

---


 
 
 #### [CustomPage](#CustomPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CustomPageSchema](#CustomPageSchema) |  no  |  |

---


 
 
 #### [FeatureImage](#FeatureImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String |  no  |  |

---


 
 
 #### [PageGetResponse](#PageGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PageSchema](#PageSchema)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [PageSpec](#PageSpec)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | specifications | [[PageSpecItem](#PageSpecItem)] |  no  |  |

---


 
 
 #### [PageSpecParam](#PageSpecParam)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | required | Bool |  no  |  |

---


 
 
 #### [PageSpecItem](#PageSpecItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageType | String |  no  |  |
 | displayName | String |  no  |  |
 | params | [[PageSpecParam](#PageSpecParam)] |  no  |  |
 | query | [[PageSpecParam](#PageSpecParam)] |  no  |  |

---


 
 
 #### [PageSchema](#PageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | application | String |  no  |  |
 | componentIds | [String] |  no  | Components can be used to store multiple components |
 | content | [[PageContent](#PageContent)] |  no  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema) |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | description | String |  no  |  |
 | featureImage | [Asset](#Asset) |  no  |  |
 | pageMeta | [[PageMeta](#PageMeta)] |  no  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema) |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | orientation | String |  no  |  |
 | platform | String |  no  |  |
 | published | Bool |  no  |  |
 | slug | String |  no  |  |
 | tags | [String] |  no  |  |
 | title | String |  no  |  |
 | type | String |  no  |  |
 | seo | [SEO](#SEO) |  no  |  |
 | visibility | [String: Any] |  no  |  |

---


 
 
 #### [CreatedBySchema](#CreatedBySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |

---


 
 
 #### [PageContent](#PageContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | value | [String: Any] |  no  |  |

---


 
 
 #### [PageMeta](#PageMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | value | [String: Any] |  no  |  |

---


 
 
 #### [PageRequest](#PageRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | schedule | [CronSchedule](#CronSchedule) |  no  |  |
 | application | String |  no  |  |
 | author | [Author](#Author) |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | orientation | String |  no  |  |
 | content | [[String: Any]] |  no  |  |
 | featureImage | [Asset](#Asset) |  no  |  |
 | published | Bool |  no  |  |
 | readingTime | String |  no  |  |
 | slug | String |  no  |  |
 | tags | [String] |  no  |  |
 | seo | [SEO](#SEO) |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [CronSchedule](#CronSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String |  no  |  |
 | start | String |  no  |  |
 | end | String |  no  |  |
 | duration | Double |  no  |  |

---


 
 
 #### [PagePublishRequest](#PagePublishRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | publish | Bool |  no  |  |

---


 
 
 #### [PageMetaSchema](#PageMetaSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | systemPages | [[NavigationSchema](#NavigationSchema)] |  no  |  |
 | customPages | [[PageSchema](#PageSchema)] |  no  |  |
 | applicationId | String |  no  |  |

---


 
 
 #### [SlideshowGetResponse](#SlideshowGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SlideshowSchema](#SlideshowSchema)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [SlideshowSchema](#SlideshowSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | slug | String |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | application | String |  no  |  |
 | platform | String |  no  |  |
 | configuration | [ConfigurationSchema](#ConfigurationSchema) |  no  |  |
 | media | [[SlideshowMedia](#SlideshowMedia)] |  no  |  |
 | active | Bool |  no  |  |
 | archived | Bool |  no  |  |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [SlideshowRequest](#SlideshowRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | platform | String |  no  |  |
 | configuration | [ConfigurationSchema](#ConfigurationSchema) |  no  |  |
 | media | [SlideshowMedia](#SlideshowMedia) |  no  |  |
 | active | Bool |  no  |  |

---


 
 
 #### [Support](#Support)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | created | Bool |  no  |  |
 | id | String |  no  |  |
 | configType | String |  no  |  |
 | application | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | contact | [ContactSchema](#ContactSchema) |  no  |  |

---


 
 
 #### [PhoneProperties](#PhoneProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | code | String |  no  |  |
 | number | String |  no  |  |

---


 
 
 #### [PhoneSchema](#PhoneSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | phone | [[PhoneProperties](#PhoneProperties)] |  no  |  |

---


 
 
 #### [EmailProperties](#EmailProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [EmailSchema](#EmailSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | email | [[EmailProperties](#EmailProperties)] |  no  |  |

---


 
 
 #### [ContactSchema](#ContactSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [PhoneSchema](#PhoneSchema) |  no  |  |
 | email | [EmailSchema](#EmailSchema) |  no  |  |

---


 
 
 #### [TagsSchema](#TagsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String |  no  |  |
 | id | String |  no  |  |
 | tags | [[TagSchema](#TagSchema)] |  no  |  |

---


 
 
 #### [TagSchema](#TagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | url | String |  no  |  |
 | type | String |  no  |  |
 | subType | String |  no  |  |
 | id | String |  no  |  |
 | position | String |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | content | String |  no  |  |

---




 
 
 #### [CommunicationConsentReq](#CommunicationConsentReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | String |  no  |  |
 | action | String |  no  |  |
 | channel | String |  no  |  |

---


 
 
 #### [CommunicationConsentRes](#CommunicationConsentRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |
 | userId | String |  no  |  |
 | channels | [CommunicationConsentChannels](#CommunicationConsentChannels) |  no  |  |

---


 
 
 #### [CommunicationConsentChannelsEmail](#CommunicationConsentChannelsEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | String |  no  |  |
 | displayName | String |  no  |  |

---


 
 
 #### [CommunicationConsentChannelsSms](#CommunicationConsentChannelsSms)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | String |  no  |  |
 | displayName | String |  no  |  |

---


 
 
 #### [CommunicationConsentChannelsWhatsapp](#CommunicationConsentChannelsWhatsapp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | String |  no  |  |
 | displayName | String |  no  |  |
 | countryCode | String |  no  |  |
 | phoneNumber | String |  no  |  |

---


 
 
 #### [CommunicationConsentChannels](#CommunicationConsentChannels)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [CommunicationConsentChannelsEmail](#CommunicationConsentChannelsEmail) |  no  |  |
 | sms | [CommunicationConsentChannelsSms](#CommunicationConsentChannelsSms) |  no  |  |
 | whatsapp | [CommunicationConsentChannelsWhatsapp](#CommunicationConsentChannelsWhatsapp) |  no  |  |

---


 
 
 #### [CommunicationConsent](#CommunicationConsent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |
 | userId | String |  no  |  |
 | channels | [CommunicationConsentChannels](#CommunicationConsentChannels) |  no  |  |

---


 
 
 #### [PushtokenReq](#PushtokenReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String |  no  |  |
 | bundleIdentifier | String |  no  |  |
 | pushToken | String |  no  |  |
 | uniqueDeviceId | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [PushtokenRes](#PushtokenRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | bundleIdentifier | String |  no  |  |
 | pushToken | String |  no  |  |
 | uniqueDeviceId | String |  no  |  |
 | type | String |  no  |  |
 | platform | String |  no  |  |
 | applicationId | String |  no  |  |
 | userId | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | expiredAt | String |  no  |  |

---




 
 
 #### [QRCodeResp](#QRCodeResp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String |  no  |  |
 | svg | String |  no  |  |

---


 
 
 #### [RedirectDevice](#RedirectDevice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [WebRedirect](#WebRedirect)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [Redirects](#Redirects)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ios | [RedirectDevice](#RedirectDevice) |  no  |  |
 | android | [RedirectDevice](#RedirectDevice) |  no  |  |
 | web | [WebRedirect](#WebRedirect) |  no  |  |
 | forceWeb | Bool |  no  |  |

---


 
 
 #### [CampaignShortLink](#CampaignShortLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String |  no  |  |
 | medium | String |  no  |  |

---


 
 
 #### [Attribution](#Attribution)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | campaignCookieExpiry | String |  no  |  |

---


 
 
 #### [SocialMediaTags](#SocialMediaTags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | description | String |  no  |  |
 | image | String |  no  |  |

---


 
 
 #### [ShortLinkReq](#ShortLinkReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Give a name to the link. |
 | url | String? |  yes  | The web address to shorten. |
 | hash | String |  no  |  |
 | active | Bool |  no  |  |
 | expireAt | String |  no  |  |
 | enableTracking | Bool |  no  |  |
 | personalized | Bool |  no  | To create personalized short links. |
 | campaign | [CampaignShortLink](#CampaignShortLink) |  no  |  |
 | redirects | [Redirects](#Redirects) |  no  |  |
 | attribution | [Attribution](#Attribution) |  no  |  |
 | socialMediaTags | [SocialMediaTags](#SocialMediaTags) |  no  |  |
 | count | Int |  no  |  |

---


 
 
 #### [UrlInfo](#UrlInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | original | String |  no  |  |
 | short | String |  no  |  |
 | hash | String |  no  |  |

---


 
 
 #### [ShortLinkRes](#ShortLinkRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | url | [UrlInfo](#UrlInfo) |  no  |  |
 | createdBy | String |  no  |  |
 | appRedirect | Bool |  no  |  |
 | fallback | String |  no  |  |
 | active | Bool |  no  |  |
 | id | String |  no  |  |
 | enableTracking | Bool |  no  |  |
 | expireAt | String |  no  |  |
 | application | String |  no  |  |
 | userId | String |  no  |  |
 | createdAt | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | updatedAt | String |  no  |  |
 | personalized | Bool |  no  | To create personalized short links |
 | campaign | [CampaignShortLink](#CampaignShortLink) |  no  |  |
 | redirects | [Redirects](#Redirects) |  no  |  |
 | attribution | [Attribution](#Attribution) |  no  |  |
 | socialMediaTags | [SocialMediaTags](#SocialMediaTags) |  no  |  |
 | count | Int |  no  |  |

---


 
 
 #### [ShortLinkList](#ShortLinkList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ShortLinkRes](#ShortLinkRes)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ErrorRes](#ErrorRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---




 
 
 #### [FailedResponse](#FailedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [CDN](#CDN)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [Upload](#Upload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiry | Int? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [StartResponse](#StartResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fileName | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | contentType | String? |  yes  |  |
 | method | String? |  yes  |  |
 | namespace | String? |  yes  |  |
 | operation | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | upload | [Upload](#Upload)? |  yes  |  |
 | cdn | [CDN](#CDN)? |  yes  |  |
 | tags | [String] |  no  |  |

---


 
 
 #### [StartRequest](#StartRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fileName | String? |  yes  |  |
 | contentType | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | tags | [String] |  no  |  |
 | params | [String: Any] |  no  |  |

---


 
 
 #### [CompleteResponse](#CompleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | fileName | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | contentType | String? |  yes  |  |
 | method | String? |  yes  |  |
 | namespace | String? |  yes  |  |
 | operation | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | upload | [Upload](#Upload)? |  yes  |  |
 | cdn | [CDN](#CDN)? |  yes  |  |
 | success | String? |  yes  |  |
 | tags | [String] |  no  |  |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [Opts](#Opts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attempts | Int |  no  |  |
 | timestamp | Int |  no  |  |
 | delay | Int |  no  |  |

---


 
 
 #### [CopyFileTask](#CopyFileTask)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | data | [BulkRequest](#BulkRequest)? |  yes  |  |
 | opts | [Opts](#Opts)? |  yes  |  |
 | progress | Int? |  yes  |  |
 | delay | Int? |  yes  |  |
 | timestamp | Int? |  yes  |  |
 | attemptsMade | Int? |  yes  |  |
 | stacktrace | [String] |  no  |  |
 | finishedOn | Int? |  yes  |  |
 | processedOn | Int? |  yes  |  |

---


 
 
 #### [BulkResponse](#BulkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | trackingUrl | String? |  yes  |  |
 | task | [CopyFileTask](#CopyFileTask)? |  yes  |  |

---


 
 
 #### [ReqConfiguration](#ReqConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | concurrency | Int |  no  |  |

---


 
 
 #### [Destination](#Destination)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | namespace | String? |  yes  |  |
 | rewrite | String? |  yes  |  |
 | basepath | String |  no  |  |

---


 
 
 #### [BulkRequest](#BulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | urls | [String]? |  yes  |  |
 | destination | [Destination](#Destination)? |  yes  |  |
 | configuration | [ReqConfiguration](#ReqConfiguration) |  no  |  |

---


 
 
 #### [Urls](#Urls)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | signedUrl | String? |  yes  |  |
 | expiry | Int? |  yes  |  |

---


 
 
 #### [SignUrlResponse](#SignUrlResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | urls | [[Urls](#Urls)]? |  yes  |  |

---


 
 
 #### [SignUrlRequest](#SignUrlRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiry | Int? |  yes  |  |
 | urls | [String]? |  yes  |  |

---


 
 
 #### [DbRecord](#DbRecord)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | fileName | String? |  yes  |  |
 | operation | String |  no  |  |
 | namespace | String? |  yes  |  |
 | contentType | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | upload | [Upload](#Upload)? |  yes  |  |
 | cdn | [CDN](#CDN)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [BrowseResponse](#BrowseResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[DbRecord](#DbRecord)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---




 
 
 #### [ApplicationAboutResponse](#ApplicationAboutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationInfo | [ApplicationInfo](#ApplicationInfo) |  no  |  |
 | companyInfo | [CompanyInfo](#CompanyInfo) |  no  |  |
 | ownerInfo | [OwnerInfo](#OwnerInfo) |  no  |  |

---


 
 
 #### [ApplicationInfo](#ApplicationInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | domain | [Domain](#Domain) |  no  |  |
 | website | [ApplicationWebsite](#ApplicationWebsite) |  no  |  |
 | cors | [ApplicationCors](#ApplicationCors) |  no  |  |
 | description | String |  no  |  |
 | name | String |  no  |  |
 | meta | [ApplicationMeta](#ApplicationMeta) |  no  |  |
 | token | String |  no  |  |
 | secret | String |  no  |  |
 | createdAt | String |  no  |  |
 | banner | [SecureUrl](#SecureUrl) |  no  |  |
 | logo | [SecureUrl](#SecureUrl) |  no  |  |
 | isActive | Bool |  no  |  |

---


 
 
 #### [CompanyInfo](#CompanyInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | uid | Int |  no  |  |
 | createdOn | String |  no  |  |
 | isActive | Bool |  no  |  |
 | name | String |  no  |  |
 | addresses | [[CompanyAboutAddress](#CompanyAboutAddress)] |  no  |  |
 | notificationEmails | [String] |  no  |  |

---


 
 
 #### [OwnerInfo](#OwnerInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | emails | [[UserEmail](#UserEmail)] |  no  |  |
 | phoneNumbers | [[UserPhoneNumber](#UserPhoneNumber)] |  no  |  |
 | firstName | String |  no  |  |
 | lastName | String |  no  |  |
 | profilePic | String |  no  |  |

---


 
 
 #### [AppVersionRequest](#AppVersionRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | [ApplicationVersionRequest](#ApplicationVersionRequest)? |  yes  |  |
 | device | [Device](#Device)? |  yes  |  |
 | locale | String |  no  |  |
 | timezone | String |  no  |  |

---


 
 
 #### [ApplicationVersionRequest](#ApplicationVersionRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | name | String? |  yes  |  |
 | namespace | String |  no  |  |
 | token | String |  no  |  |
 | version | String? |  yes  |  |

---


 
 
 #### [Device](#Device)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | build | Int |  no  |  |
 | model | String |  no  |  |
 | os | [OS](#OS)? |  yes  |  |

---


 
 
 #### [OS](#OS)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | version | String |  no  |  |

---


 
 
 #### [SupportedLanguage](#SupportedLanguage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [LanguageResponse](#LanguageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SupportedLanguage](#SupportedLanguage)] |  no  |  |

---


 
 
 #### [AppStaffResponse](#AppStaffResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | staffUsers | [[AppStaff](#AppStaff)] |  no  |  |

---


 
 
 #### [UpdateDialog](#UpdateDialog)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | interval | Int |  no  |  |

---


 
 
 #### [OrderingStoreSelectRequest](#OrderingStoreSelectRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderingStore | [OrderingStoreSelect](#OrderingStoreSelect)? |  yes  |  |

---


 
 
 #### [OrderingStoreSelect](#OrderingStoreSelect)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  | store uid |

---


 
 
 #### [AppStaff](#AppStaff)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | orderIncent | Bool |  no  |  |
 | stores | [Int] |  no  |  |
 | application | String |  no  |  |
 | title | String |  no  |  |
 | user | String |  no  |  |
 | employeeCode | String |  no  |  |
 | firstName | String |  no  |  |
 | lastName | String |  no  |  |
 | profilePicUrl | String |  no  |  |

---


 
 
 #### [AppTokenResponse](#AppTokenResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tokens | [Tokens](#Tokens) |  no  |  |
 | id | String |  no  |  |
 | application | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [Tokens](#Tokens)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firebase | [Firebase](#Firebase) |  no  |  |
 | moengage | [Moengage](#Moengage) |  no  |  |
 | segment | [Segment](#Segment) |  no  |  |
 | gtm | [Gtm](#Gtm) |  no  |  |
 | freshchat | [Freshchat](#Freshchat) |  no  |  |
 | safetynet | [Safetynet](#Safetynet) |  no  |  |
 | fyndRewards | [FyndRewards](#FyndRewards) |  no  |  |
 | googleMap | [GoogleMap](#GoogleMap) |  no  |  |

---


 
 
 #### [Firebase](#Firebase)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [Credentials](#Credentials) |  no  |  |
 | enabled | Bool |  no  |  |

---


 
 
 #### [Credentials](#Credentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ios | [Ios](#Ios) |  no  |  |
 | android | [Android](#Android) |  no  |  |
 | projectId | String |  no  |  |
 | gcmSenderId | String |  no  |  |
 | applicationId | String |  no  |  |
 | apiKey | String |  no  |  |

---


 
 
 #### [Ios](#Ios)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String |  no  |  |
 | apiKey | String |  no  |  |

---


 
 
 #### [Android](#Android)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String |  no  |  |
 | apiKey | String |  no  |  |

---


 
 
 #### [Moengage](#Moengage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [MoengageCredentials](#MoengageCredentials) |  no  |  |
 | enabled | Bool |  no  |  |

---


 
 
 #### [MoengageCredentials](#MoengageCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |

---


 
 
 #### [Segment](#Segment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [SegmentCredentials](#SegmentCredentials) |  no  |  |
 | enabled | Bool |  no  |  |

---


 
 
 #### [SegmentCredentials](#SegmentCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | writeKey | String |  no  |  |

---


 
 
 #### [Gtm](#Gtm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [GtmCredentials](#GtmCredentials) |  no  |  |
 | enabled | Bool |  no  |  |

---


 
 
 #### [GtmCredentials](#GtmCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String |  no  |  |

---


 
 
 #### [Freshchat](#Freshchat)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [FreshchatCredentials](#FreshchatCredentials) |  no  |  |
 | enabled | Bool |  no  |  |

---


 
 
 #### [FreshchatCredentials](#FreshchatCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String |  no  |  |
 | appKey | String |  no  |  |
 | webToken | String |  no  |  |

---


 
 
 #### [Safetynet](#Safetynet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [SafetynetCredentials](#SafetynetCredentials) |  no  |  |
 | enabled | Bool |  no  |  |

---


 
 
 #### [SafetynetCredentials](#SafetynetCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String |  no  |  |

---


 
 
 #### [FyndRewards](#FyndRewards)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [FyndRewardsCredentials](#FyndRewardsCredentials) |  no  |  |

---


 
 
 #### [FyndRewardsCredentials](#FyndRewardsCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | publicKey | String |  no  |  |

---


 
 
 #### [GoogleMap](#GoogleMap)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [GoogleMapCredentials](#GoogleMapCredentials) |  no  |  |

---


 
 
 #### [GoogleMapCredentials](#GoogleMapCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String |  no  |  |

---


 
 
 #### [ProductDetailFeature](#ProductDetailFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | similar | [String] |  no  |  |
 | sellerSelection | Bool |  no  |  |
 | updateProductMeta | Bool |  no  |  |
 | requestProduct | Bool |  no  |  |

---


 
 
 #### [LaunchPage](#LaunchPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageType | String |  no  |  |
 | params | [String: Any] |  no  |  |
 | query | [String: Any] |  no  |  |

---


 
 
 #### [LandingPageFeature](#LandingPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | launchPage | [LaunchPage](#LaunchPage) |  no  |  |
 | continueAsGuest | Bool |  no  |  |
 | loginBtnText | String |  no  |  |
 | showDomainTextbox | Bool |  no  |  |
 | showRegisterBtn | Bool |  no  |  |

---


 
 
 #### [RegistrationPageFeature](#RegistrationPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | askStoreAddress | Bool |  no  |  |

---


 
 
 #### [AppFeature](#AppFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productDetail | [ProductDetailFeature](#ProductDetailFeature) |  no  |  |
 | landingPage | [LandingPageFeature](#LandingPageFeature) |  no  |  |
 | registrationPage | [RegistrationPageFeature](#RegistrationPageFeature) |  no  |  |
 | homePage | [HomePageFeature](#HomePageFeature) |  no  |  |
 | common | [CommonFeature](#CommonFeature) |  no  |  |
 | cart | [CartFeature](#CartFeature) |  no  |  |
 | qr | [QrFeature](#QrFeature) |  no  |  |
 | pcr | [PcrFeature](#PcrFeature) |  no  |  |
 | order | [OrderFeature](#OrderFeature) |  no  |  |
 | id | String |  no  |  |
 | app | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [HomePageFeature](#HomePageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderProcessing | Bool |  no  |  |

---


 
 
 #### [CommonFeature](#CommonFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | communicationOptinDialog | [CommunicationOptinDialogFeature](#CommunicationOptinDialogFeature) |  no  |  |
 | deploymentStoreSelection | [DeploymentStoreSelectionFeature](#DeploymentStoreSelectionFeature) |  no  |  |
 | listingPrice | [ListingPriceFeature](#ListingPriceFeature) |  no  |  |
 | listingPage | [ListingPageFeature](#ListingPageFeature) |  no  |  |
 | currency | [CurrencyFeature](#CurrencyFeature) |  no  |  |
 | revenueEngine | [RevenueEngineFeature](#RevenueEngineFeature) |  no  |  |
 | feedback | [FeedbackFeature](#FeedbackFeature) |  no  |  |
 | compareProducts | [CompareProductsFeature](#CompareProductsFeature) |  no  |  |

---


 
 
 #### [CommunicationOptinDialogFeature](#CommunicationOptinDialogFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | visibility | Bool |  no  |  |

---


 
 
 #### [DeploymentStoreSelectionFeature](#DeploymentStoreSelectionFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ListingPriceFeature](#ListingPriceFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | sort | String |  no  |  |

---


 
 
 #### [ListingPageFeature](#ListingPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sortOn | String |  no  |  |

---


 
 
 #### [CurrencyFeature](#CurrencyFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | [String] |  no  |  |
 | type | String |  no  |  |
 | defaultCurrency | String |  no  |  |

---


 
 
 #### [RevenueEngineFeature](#RevenueEngineFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |

---


 
 
 #### [FeedbackFeature](#FeedbackFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |

---


 
 
 #### [CompareProductsFeature](#CompareProductsFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |

---


 
 
 #### [CartFeature](#CartFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstInput | Bool |  no  |  |
 | staffSelection | Bool |  no  |  |
 | placingForCustomer | Bool |  no  |  |
 | googleMap | Bool |  no  |  |

---


 
 
 #### [QrFeature](#QrFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | Bool |  no  |  |
 | products | Bool |  no  |  |
 | collections | Bool |  no  |  |

---


 
 
 #### [PcrFeature](#PcrFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | staffSelection | Bool |  no  |  |

---


 
 
 #### [OrderFeature](#OrderFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | buyAgain | Bool |  no  |  |

---


 
 
 #### [AppFeatureRequest](#AppFeatureRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feature | [AppFeature](#AppFeature) |  no  |  |

---


 
 
 #### [AppFeatureResponse](#AppFeatureResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feature | [AppFeature](#AppFeature) |  no  |  |

---


 
 
 #### [Currency](#Currency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | isActive | Bool |  no  |  |
 | name | String |  no  |  |
 | code | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | decimalDigits | Int |  no  |  |
 | symbol | String |  no  |  |

---


 
 
 #### [Domain](#Domain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool |  no  |  |
 | isPrimary | Bool |  no  |  |
 | isDefault | Bool |  no  |  |
 | isShortlink | Bool |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [ApplicationWebsite](#ApplicationWebsite)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | basepath | String |  no  |  |

---


 
 
 #### [ApplicationCors](#ApplicationCors)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [String] |  no  |  |

---


 
 
 #### [ApplicationAuth](#ApplicationAuth)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |

---


 
 
 #### [ApplicationRedirections](#ApplicationRedirections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | from | String |  no  |  |
 | redirectTo | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ApplicationMeta](#ApplicationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [SecureUrl](#SecureUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String |  no  |  |

---


 
 
 #### [Application](#Application)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | website | [ApplicationWebsite](#ApplicationWebsite) |  no  |  |
 | cors | [ApplicationCors](#ApplicationCors) |  no  |  |
 | auth | [ApplicationAuth](#ApplicationAuth) |  no  |  |
 | description | String |  no  |  |
 | channelType | String |  no  |  |
 | cacheTtl | Int |  no  |  |
 | isInternal | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | owner | String |  no  |  |
 | companyId | Int |  no  |  |
 | token | String |  no  |  |
 | redirections | [[ApplicationRedirections](#ApplicationRedirections)] |  no  |  |
 | meta | [[ApplicationMeta](#ApplicationMeta)] |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |
 | banner | [SecureUrl](#SecureUrl) |  no  |  |
 | logo | [SecureUrl](#SecureUrl) |  no  |  |
 | favicon | [SecureUrl](#SecureUrl) |  no  |  |
 | domains | [[Domain](#Domain)] |  no  |  |
 | appType | String |  no  |  |
 | mobileLogo | [SecureUrl](#SecureUrl) |  no  |  |
 | domain | [Domain](#Domain) |  no  |  |

---


 
 
 #### [NotFound](#NotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [UnhandledError](#UnhandledError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [InvalidPayloadRequest](#InvalidPayloadRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [SuccessMessageResponse](#SuccessMessageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [InventoryBrandRule](#InventoryBrandRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String |  no  | Whether enable all or explicitly few brands as inventory |
 | brands | [Int] |  no  | Brand uids in case of explicit criteria |

---


 
 
 #### [StoreCriteriaRule](#StoreCriteriaRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companies | [Int] |  no  | list of company uids |
 | brands | [Int] |  no  | list of brand uids |

---


 
 
 #### [InventoryStoreRule](#InventoryStoreRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String |  no  | Whether enable all or explicitly few stores or use filter of brands and company as inventory stores |
 | rules | [[StoreCriteriaRule](#StoreCriteriaRule)] |  no  | List of rules with company and brands uids. Used when critera is `filter` |
 | stores | [Int] |  no  | List of store uids. Used when critera is `explicit` |

---


 
 
 #### [InventoryPaymentConfig](#InventoryPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modeOfPayment | String |  no  |  |
 | source | String |  no  |  |

---


 
 
 #### [StorePriorityRule](#StorePriorityRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | storetypeOrder | [String] |  no  |  |

---


 
 
 #### [ArticleAssignmentRule](#ArticleAssignmentRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storePriority | [StorePriorityRule](#StorePriorityRule) |  no  |  |

---


 
 
 #### [InventoryArticleAssignment](#InventoryArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | postOrderReassignment | Bool |  no  |  |
 | enforcedStores | [Int] |  no  |  |
 | rules | [ArticleAssignmentRule](#ArticleAssignmentRule) |  no  |  |

---


 
 
 #### [CompanyAboutAddress](#CompanyAboutAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int |  no  |  |
 | address1 | String |  no  |  |
 | address2 | String |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | addressType | String |  no  |  |

---


 
 
 #### [UserEmail](#UserEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | primary | Bool |  no  |  |
 | verified | Bool |  no  |  |
 | email | String |  no  |  |

---


 
 
 #### [UserPhoneNumber](#UserPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | primary | Bool |  no  |  |
 | verified | Bool |  no  |  |
 | countryCode | Int |  no  |  |
 | phone | String |  no  |  |

---


 
 
 #### [ApplicationInformation](#ApplicationInformation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [InformationAddress](#InformationAddress) |  no  |  |
 | support | [InformationSupport](#InformationSupport) |  no  |  |
 | socialLinks | [SocialLinks](#SocialLinks) |  no  |  |
 | links | [Links](#Links) |  no  |  |
 | copyrightText | String |  no  |  |
 | id | String |  no  |  |
 | businessHighlights | [BusinessHighlights](#BusinessHighlights) |  no  |  |
 | application | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [InformationAddress](#InformationAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | loc | String |  no  |  |
 | addressLine | [String] |  no  |  |
 | phone | [InformationPhone](#InformationPhone) |  no  |  |
 | city | String |  no  |  |
 | country | String |  no  |  |
 | pincode | Int |  no  |  |

---


 
 
 #### [InformationPhone](#InformationPhone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | number | String |  no  |  |

---


 
 
 #### [InformationSupport](#InformationSupport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [String] |  no  |  |
 | email | [String] |  no  |  |
 | timing | String |  no  |  |

---


 
 
 #### [SocialLinks](#SocialLinks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [FacebookLink](#FacebookLink) |  no  |  |
 | instagram | [InstagramLink](#InstagramLink) |  no  |  |
 | twitter | [TwitterLink](#TwitterLink) |  no  |  |
 | pinterest | [PinterestLink](#PinterestLink) |  no  |  |
 | googlePlus | [GooglePlusLink](#GooglePlusLink) |  no  |  |
 | youtube | [YoutubeLink](#YoutubeLink) |  no  |  |
 | linkedIn | [LinkedInLink](#LinkedInLink) |  no  |  |
 | vimeo | [VimeoLink](#VimeoLink) |  no  |  |
 | blogLink | [BlogLink](#BlogLink) |  no  |  |

---


 
 
 #### [FacebookLink](#FacebookLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | link | String |  no  |  |

---


 
 
 #### [InstagramLink](#InstagramLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | link | String |  no  |  |

---


 
 
 #### [TwitterLink](#TwitterLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | link | String |  no  |  |

---


 
 
 #### [PinterestLink](#PinterestLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | link | String |  no  |  |

---


 
 
 #### [GooglePlusLink](#GooglePlusLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | link | String |  no  |  |

---


 
 
 #### [YoutubeLink](#YoutubeLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | link | String |  no  |  |

---


 
 
 #### [LinkedInLink](#LinkedInLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | link | String |  no  |  |

---


 
 
 #### [VimeoLink](#VimeoLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | link | String |  no  |  |

---


 
 
 #### [BlogLink](#BlogLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | link | String |  no  |  |

---


 
 
 #### [Links](#Links)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | link | String |  no  |  |

---


 
 
 #### [BusinessHighlights](#BusinessHighlights)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | subTitle | String |  no  |  |

---


 
 
 #### [ApplicationDetail](#ApplicationDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | mobileLogo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | favicon | [SecureUrl](#SecureUrl)? |  yes  |  |
 | banner | [SecureUrl](#SecureUrl)? |  yes  |  |
 | domain | [Domain](#Domain) |  no  |  |
 | domains | [[Domain](#Domain)] |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [CurrenciesResponse](#CurrenciesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Currency](#Currency)] |  no  |  |

---


 
 
 #### [StoreLatLong](#StoreLatLong)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | coordinates | [Double] |  no  |  |

---


 
 
 #### [OptedStoreAddress](#OptedStoreAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String |  no  |  |
 | address1 | String |  no  |  |
 | latLong | [StoreLatLong](#StoreLatLong) |  no  |  |
 | address2 | String |  no  |  |
 | pincode | Int |  no  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [OrderingStore](#OrderingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [OptedStoreAddress](#OptedStoreAddress) |  no  |  |
 | id | String |  no  |  |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | displayName | String |  no  |  |
 | storeType | String |  no  |  |
 | storeCode | String |  no  |  |
 | pincode | Int |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [OrderingStores](#OrderingStores)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[OrderingStore](#OrderingStore)] |  no  |  |
 | deployedStores | [Int] |  no  |  |
 | allStores | Bool |  no  |  |
 | enabled | Bool |  no  |  |
 | type | String |  no  |  |
 | id | String |  no  |  |
 | app | String |  no  |  |
 | v | Int |  no  |  |

---




 
 
 #### [AggregatorConfigDetail](#AggregatorConfigDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | api | String |  no  | Payment gateway api endpoint |
 | merchantKey | String |  no  | Unique merchant key |
 | merchantId | String |  no  | Unique merchant id |
 | key | String? |  yes  | Payment gateway api key |
 | verifyApi | String |  no  | Payment gateway verify payment api endpoint |
 | configType | String? |  yes  | Fynd or self payment gateway |
 | sdk | Bool |  no  | SDK |
 | secret | String? |  yes  | Masked payment gateway api secret |
 | userId | String |  no  | Registered User id |
 | pin | String |  no  | Masked pin |

---


 
 
 #### [AggregatorsConfigDetailResponse](#AggregatorsConfigDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rupifi | [AggregatorConfigDetail](#AggregatorConfigDetail) |  no  |  |
 | ccavenue | [AggregatorConfigDetail](#AggregatorConfigDetail) |  no  |  |
 | stripe | [AggregatorConfigDetail](#AggregatorConfigDetail) |  no  |  |
 | payumoney | [AggregatorConfigDetail](#AggregatorConfigDetail) |  no  |  |
 | mswipe | [AggregatorConfigDetail](#AggregatorConfigDetail) |  no  |  |
 | simpl | [AggregatorConfigDetail](#AggregatorConfigDetail) |  no  |  |
 | razorpay | [AggregatorConfigDetail](#AggregatorConfigDetail) |  no  |  |
 | juspay | [AggregatorConfigDetail](#AggregatorConfigDetail) |  no  |  |
 | success | Bool? |  yes  |  |
 | env | String? |  yes  | Environment i.e Live or Test |

---


 
 
 #### [ErrorCodeAndDescription](#ErrorCodeAndDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  | Error human understandable description. |
 | code | String? |  yes  | Error descrption code. |

---


 
 
 #### [HttpErrorCodeAndResponse](#HttpErrorCodeAndResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Response is successful or not |
 | error | [ErrorCodeAndDescription](#ErrorCodeAndDescription)? |  yes  |  |

---


 
 
 #### [AttachCardRequest](#AttachCardRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardId | String? |  yes  | Card token of payment gateway. |
 | refresh | Bool |  no  | Refresh cache flag. |
 | nameOnCard | String |  no  |  |
 | nickname | String |  no  |  |

---


 
 
 #### [AttachCardsResponse](#AttachCardsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Human readable message. |
 | success | Bool? |  yes  | Response is successful or not. |
 | data | [String: Any]? |  yes  | List of cards of customer. |

---


 
 
 #### [CardPaymentGateway](#CardPaymentGateway)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String? |  yes  | Payment gateway name. |
 | api | String |  no  | Payment gateway CARD api endpoint |
 | customerId | String |  no  | Payment gateway customer id. |

---


 
 
 #### [ActiveCardPaymentGatewayResponse](#ActiveCardPaymentGatewayResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Human readable message. |
 | success | Bool? |  yes  | Response is successful or not. |
 | cards | [CardPaymentGateway](#CardPaymentGateway)? |  yes  | Card's payment gateway with customer id. |

---


 
 
 #### [Card](#Card)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardIsin | String |  no  | card_isin |
 | cardId | String |  no  | card_id |
 | cardReference | String |  no  | card_reference |
 | cardType | String |  no  | card_type |
 | cardName | String |  no  | card_name |
 | nickname | String |  no  | nickname |
 | cardToken | String |  no  | card_token |
 | expYear | Int |  no  | exp_year |
 | cardBrandImage | String |  no  | card_brand_image |
 | expired | Bool |  no  | expired |
 | cardFingerprint | String |  no  | card_fingerprint |
 | cardBrand | String |  no  | card_brand |
 | expMonth | Int |  no  | exp_month |
 | cardNumber | String |  no  | card_number |
 | aggregatorName | String? |  yes  | aggregator_name |
 | cardIssuer | String |  no  | card_issuer |

---


 
 
 #### [ListCardsResponse](#ListCardsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Human readable message. |
 | success | Bool? |  yes  | Response is successful or not. |
 | data | [[Card](#Card)] |  no  | List of cards of customer. |

---


 
 
 #### [DeletehCardRequest](#DeletehCardRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardId | String? |  yes  | Card token of payment gateway. |

---


 
 
 #### [DeleteCardsResponse](#DeleteCardsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Human readable message. |
 | success | Bool? |  yes  | Response is successful or not. |

---


 
 
 #### [ValidateCustomerRequest](#ValidateCustomerRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payload | String? |  yes  | Hashed payload string. |
 | aggregator | String? |  yes  | Payment gateway name in camel case i.e Simpl, Rupifi |
 | transactionAmountInPaise | Int? |  yes  | Payable amount in paise |
 | merchantParams | [String: Any]? |  yes  | Extra meta fields. |
 | phoneNumber | String? |  yes  | User mobile number without country code. |

---


 
 
 #### [ValidateCustomerResponse](#ValidateCustomerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Error or success message. |
 | success | Bool? |  yes  | Response is successful or not |
 | data | [String: Any]? |  yes  | Payment gateway response data |

---


 
 
 #### [ChargeCustomerRequest](#ChargeCustomerRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String? |  yes  | Payment gateway name i.e Simpl, Mswipe |
 | transactionToken | String |  no  | Transaction token of payment gateway. |
 | verified | Bool |  no  | Already Verified flag from payment gateway i.e Mswipe |
 | orderId | String? |  yes  | Unique order id. |
 | amount | Int? |  yes  | Chargable amount of order. |

---


 
 
 #### [ChargeCustomerResponse](#ChargeCustomerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cartId | String |  no  | Cart id of customer |
 | aggregator | String? |  yes  | Payment gateway name i.e Simpl, Mswipe |
 | deliveryAddressId | String |  no  | Delivery adddress id of customer |
 | orderId | String? |  yes  | Unique order id. |
 | status | String? |  yes  | Status of charged payment. |
 | message | String? |  yes  | Human readable message. |
 | success | Bool? |  yes  | Response is successful or not. |

---


 
 
 #### [PaymentInitializationRequest](#PaymentInitializationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | razorpayPaymentId | String? |  yes  | Payment gateway payment id |
 | aggregator | String? |  yes  | Payment gateway name |
 | method | String? |  yes  | Payment method |
 | pollingUrl | String? |  yes  | Polling url to check payment status |
 | aggregatorOrderId | String? |  yes  | Payment gateway order id |
 | customerId | String? |  yes  | Payment gateway customer id. |
 | timeout | Int? |  yes  | Payment polling timeout if not recieved response |
 | virtualId | String |  no  | Bharat QR code virtual id |
 | merchantOrderId | String? |  yes  | Unique fynd order id |

---


 
 
 #### [PaymentInitializationResponse](#PaymentInitializationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | razorpayPaymentId | String |  no  | Payment  id. |
 | aggregator | String? |  yes  | Payment gateway name |
 | method | String? |  yes  | Payment method |
 | vpa | String |  no  | Customer vpa address |
 | pollingUrl | String? |  yes  | Polling url. |
 | aggregatorOrderId | String |  no  | Payment order id |
 | customerId | String |  no  | Payment gateway customer id. |
 | bqrImage | String |  no  | Bharath qr image url. |
 | currency | String |  no  | Currency code. |
 | status | String |  no  | Status of payment. |
 | amount | Int |  no  | Payable amount. |
 | success | Bool? |  yes  | Response is successful or not. |
 | virtualId | String |  no  | Payment virtual address. |
 | merchantOrderId | String? |  yes  | order id |
 | timeout | Int |  no  | timeout. |

---


 
 
 #### [PaymentStatusUpdateRequest](#PaymentStatusUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String? |  yes  | Payment gateway name |
 | method | String? |  yes  | Payment method |
 | email | String? |  yes  | Customer valid email |
 | vpa | String? |  yes  | Customer vpa address |
 | customerId | String? |  yes  | Payment gateway customer id. |
 | orderId | String? |  yes  | Payment gateway order id |
 | currency | String? |  yes  | Currency code. |
 | status | String? |  yes  | Status of payment. |
 | amount | Int? |  yes  | Payable amount. |
 | contact | String? |  yes  | Customer valid mobile number |
 | merchantOrderId | String? |  yes  | Unique fynd order id |

---


 
 
 #### [PaymentStatusUpdateResponse](#PaymentStatusUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | retry | Bool? |  yes  | Response is successful or not. |
 | aggregatorName | String? |  yes  | Payment gateway name |
 | status | String? |  yes  | Payment status |

---


 
 
 #### [PaymentModeLogo](#PaymentModeLogo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | large | String? |  yes  | large |
 | small | String? |  yes  | smalll |

---


 
 
 #### [PaymentModeList](#PaymentModeList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | intentFlow | String |  no  | intent_flow |
 | nickname | String |  no  | nickname |
 | cardToken | String |  no  | card_token |
 | fyndVpa | String |  no  | fynd_vpa |
 | name | String |  no  | name |
 | aggregatorName | String? |  yes  | aggregator_name |
 | displayPriority | Int |  no  | Dispaly Priority |
 | cardId | String |  no  | card_id |
 | expYear | Int |  no  | exp_year |
 | intentAppErrorList | [String] |  no  | intent_app_error_list |
 | cardNumber | String |  no  | card_number |
 | cardReference | String |  no  | card_reference |
 | retryCount | Int |  no  | retry_count |
 | cardName | String |  no  | card_name |
 | merchantCode | String |  no  | merchant code |
 | cardFingerprint | String |  no  | card_fingerprint |
 | code | String |  no  | code |
 | cardIssuer | String |  no  | card_issuer |
 | cardIsin | String |  no  | card_isin |
 | cardType | String |  no  | card_type |
 | cardBrandImage | String |  no  | card_brand_image |
 | expired | Bool |  no  | expired |
 | displayName | String |  no  | display name |
 | cardBrand | String |  no  | card_brand |
 | timeout | Int |  no  | timeout |
 | expMonth | Int |  no  | exp_month |
 | logoUrl | [PaymentModeLogo](#PaymentModeLogo) |  no  | Logo |

---


 
 
 #### [RootPaymentMode](#RootPaymentMode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | list | [[PaymentModeList](#PaymentModeList)] |  no  | Payment mode |
 | displayPriority | Int? |  yes  | Dispaly Priority |
 | displayName | String? |  yes  | Payment mode display name |
 | addCardEnabled | Bool |  no  | Annonymous card flag |
 | name | String? |  yes  | Payment mode name |
 | aggregatorName | String |  no  | Dispaly Priority |
 | anonymousEnable | Bool |  no  | Annonymous card flag |

---


 
 
 #### [AggregatorRoute](#AggregatorRoute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiLink | String |  no  | api_link |
 | data | [String: Any] |  no  | Data |
 | paymentFlow | String |  no  | payment_flow |

---


 
 
 #### [PaymentFlow](#PaymentFlow)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rupifi | [AggregatorRoute](#AggregatorRoute) |  no  | Rupifi |
 | upiRazorpay | [AggregatorRoute](#AggregatorRoute) |  no  | UPI_Razorpay |
 | msipe | [AggregatorRoute](#AggregatorRoute) |  no  | mswipe |
 | bqrRazorpay | [AggregatorRoute](#AggregatorRoute) |  no  | BQR_Razorpay |
 | payubiz | [AggregatorRoute](#AggregatorRoute) |  no  | Payubiz |
 | ccavenue | [AggregatorRoute](#AggregatorRoute) |  no  | Ccavenue |
 | stripe | [AggregatorRoute](#AggregatorRoute) |  no  | Stripe |
 | simpl | [AggregatorRoute](#AggregatorRoute) |  no  | simpl |
 | razorpay | [AggregatorRoute](#AggregatorRoute) |  no  | Razorpay |
 | juspay | [AggregatorRoute](#AggregatorRoute) |  no  | Juspay |
 | fynd | [AggregatorRoute](#AggregatorRoute) |  no  | Fynd |

---


 
 
 #### [PaymentOptionAndFlow](#PaymentOptionAndFlow)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOption | [[RootPaymentMode](#RootPaymentMode)]? |  yes  | Payment options |
 | paymentFlows | [PaymentFlow](#PaymentFlow)? |  yes  | payment_flows |

---


 
 
 #### [PaymentModeRouteResponse](#PaymentModeRouteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Response is successful or not |
 | paymentOptions | [PaymentOptionAndFlow](#PaymentOptionAndFlow)? |  yes  | payment_options |

---


 
 
 #### [RupifiBannerData](#RupifiBannerData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | kycUrl | String |  no  | Rupifi KYC banner url. |
 | status | String |  no  | Rupifi KYC status |

---


 
 
 #### [RupifiBannerResponse](#RupifiBannerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Successful or not. |
 | data | [RupifiBannerData](#RupifiBannerData)? |  yes  | Rupifi KYC banner details. |

---


 
 
 #### [TransferItemsDetails](#TransferItemsDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logoSmall | String? |  yes  | Beneficiary small Logo |
 | id | String? |  yes  |   |
 | displayName | Bool |  no  | Beneficiary Display Name |
 | name | String? |  yes  |  Beneficiary Name |
 | logoLarge | String? |  yes  | Beneficiary large Logo |

---


 
 
 #### [TransferModeDetails](#TransferModeDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String? |  yes  | Beneficiary Mode Name |
 | items | [[TransferItemsDetails](#TransferItemsDetails)] |  no  | Beneficiary Mode Items |

---


 
 
 #### [TransferModeResponse](#TransferModeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[TransferModeDetails](#TransferModeDetails)]? |  yes  | Response Object |

---


 
 
 #### [UpdateRefundTransferModeRequest](#UpdateRefundTransferModeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | transferMode | String? |  yes  | Transfer Mode of the Beneficiary to be added |
 | enable | Bool? |  yes  | True for enabling the Transfer Mode |

---


 
 
 #### [UpdateRefundTransferModeResponse](#UpdateRefundTransferModeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [OrderBeneficiaryDetails](#OrderBeneficiaryDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |   |
 | address | String? |  yes  | Address of User |
 | title | String? |  yes  | Title Of Account |
 | email | String? |  yes  | EMail of User |
 | ifscCode | String? |  yes  | Ifsc Code Of Account |
 | mobile | Bool |  no  | MObile no of User |
 | transferMode | String? |  yes  | Transfer Mode Of Account |
 | accountNo | String? |  yes  | Account Number |
 | beneficiaryId | String? |  yes  | Benenficiary Id |
 | branchName | Bool |  no  | Branch Name Of Account |
 | accountHolder | String? |  yes  | Account Holder Name |
 | subtitle | String? |  yes  | SHort Title Of Account |
 | isActive | Bool? |  yes  | Boolean Flag whether Beneficiary set or not |
 | comment | Bool |  no  | Remarks |
 | displayName | String? |  yes  | Display Name Of Account |
 | bankName | String? |  yes  | Bank Name Of Account |
 | createdOn | String? |  yes  | Creation Date of Beneficiary |
 | delightsUserName | String? |  yes  | User Id Who filled the Beneficiary  |
 | modifiedOn | String? |  yes  | MOdification Date of Beneficiary |

---


 
 
 #### [OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | beneficiaries | [[OrderBeneficiaryDetails](#OrderBeneficiaryDetails)]? |  yes  | All Beneficiaries Of An Order |
 | showBeneficiaryDetails | Bool |  no  | Show beneficiary details or not. |

---


 
 
 #### [NotFoundResourceError](#NotFoundResourceError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  | Not Found |
 | success | Bool? |  yes  | Response is successful or not |
 | code | String? |  yes  | Bad Request Data |

---


 
 
 #### [IfscCodeResponse](#IfscCodeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | branchName | String? |  yes  | Branch Name Of Account |
 | success | Bool |  no  | Response is successful or not |
 | bankName | String? |  yes  | Bank Name Of Account |

---


 
 
 #### [ErrorCodeDescription](#ErrorCodeDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  | Error human understandable description. |
 | success | Bool? |  yes  | Response is successful or not |
 | code | String? |  yes  | Error descrption code. |

---


 
 
 #### [AddBeneficiaryViaOtpVerificationRequest](#AddBeneficiaryViaOtpVerificationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hashKey | String? |  yes  | Hash key of the beneficiary Id |
 | otp | String? |  yes  | Otp sent to the given Mobile No |
 | requestId | String? |  yes  | Request Id sent in  |

---


 
 
 #### [AddBeneficiaryViaOtpVerificationResponse](#AddBeneficiaryViaOtpVerificationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hashKey | String? |  yes  | Hash key of the beneficiary Id |
 | otp | String? |  yes  | Otp sent to the given Mobile No |
 | requestId | String? |  yes  | Request Id of the otp  |

---


 
 
 #### [WrongOtpError](#WrongOtpError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  | Wrong OTP Code |
 | success | String? |  yes  | Response is successful or not |

---


 
 
 #### [BeneficiaryModeDetails](#BeneficiaryModeDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | String |  no  | Address of the User |
 | branchName | String? |  yes  | Branch Name of the Account |
 | wallet | String |  no  |  |
 | comment | String |  no  | Remarks added by The user |
 | vpa | String |  no  |  |
 | accountHolder | String? |  yes  | Name of the Account Holder |
 | bankName | String? |  yes  | Bank Name of the Account |
 | email | String? |  yes  | Email of the Account Holder |
 | ifscCode | String? |  yes  | Ifsc Code of the Account |
 | mobile | String? |  yes  | Moblie Number of the User |
 | accountNo | String? |  yes  | Account NUmber of the Account Holder |

---


 
 
 #### [AddBeneficiaryDetailsRequest](#AddBeneficiaryDetailsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | delights | Bool? |  yes  | True if  beneficiary to be added by delights or False if by User |
 | requestId | String |  no  |  |
 | shipmentId | String? |  yes  | Shipment Id of the respective Merchant Order Id |
 | transferMode | String? |  yes  | Transfer Mode of the Beneficiary to be added |
 | details | [BeneficiaryModeDetails](#BeneficiaryModeDetails)? |  yes  | Beneficiary bank details |
 | orderId | String? |  yes  | Merchant Order Id |
 | otp | String |  no  |  |

---


 
 
 #### [RefundAccountResponse](#RefundAccountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Response message |
 | success | Bool? |  yes  | Success or failure flag. |
 | data | [String: Any] |  no  | Refund account data. |

---


 
 
 #### [WalletOtpRequest](#WalletOtpRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String? |  yes  | Wallet Moblie Number of the User |
 | countryCode | String? |  yes  | Country Code of the Mobile Number |

---


 
 
 #### [WalletOtpResponse](#WalletOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isVerifiedFlag | String? |  yes  | Boolean Flag whether OTP Validation is already done or not |
 | success | Bool |  no  | Response is successful or not |
 | requestId | String? |  yes  | request id  |

---


 
 
 #### [SetDefaultBeneficiaryRequest](#SetDefaultBeneficiaryRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | beneficiaryId | String? |  yes  | Beneficiary Hash Id of the beneficiary added |
 | orderId | String? |  yes  | Merchant Order Id |

---


 
 
 #### [SetDefaultBeneficiaryResponse](#SetDefaultBeneficiaryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isBeneficiarySet | Bool? |  yes  | Boolean Flag whether Beneficiary set or not |
 | success | Bool |  no  | Response is successful or not |

---




 
 
 #### [OrderById](#OrderById)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | [OrderSchema](#OrderSchema)? |  yes  |  |

---


 
 
 #### [OrderList](#OrderList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OrderSchema](#OrderSchema)]? |  yes  |  |
 | page | [OrderPage](#OrderPage)? |  yes  |  |
 | filters | [OrderFilters](#OrderFilters)? |  yes  |  |

---


 
 
 #### [OrderPage](#OrderPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int |  no  |  |
 | type | String |  no  |  |
 | size | Int |  no  |  |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |

---


 
 
 #### [OrderFilters](#OrderFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statuses | [[OrderStatuses](#OrderStatuses)] |  no  |  |
 | months | [[OrderMonths](#OrderMonths)] |  no  |  |

---


 
 
 #### [OrderStatuses](#OrderStatuses)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | value | Int |  no  |  |
 | isSelected | Bool |  no  |  |

---


 
 
 #### [OrderMonths](#OrderMonths)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromDate | String |  no  |  |
 | id | String |  no  |  |
 | isSelected | Bool |  no  |  |
 | name | String |  no  |  |
 | toDate | String |  no  |  |
 | value | Int |  no  |  |

---


 
 
 #### [ShipmentById](#ShipmentById)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipment | [Shipments](#Shipments)? |  yes  |  |

---


 
 
 #### [ShipmentReasons](#ShipmentReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasons | [[Reasons](#Reasons)]? |  yes  |  |

---


 
 
 #### [ShipmentStatusUpdateBody](#ShipmentStatusUpdateBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statuses | [[StatusesBody](#StatusesBody)]? |  yes  |  |
 | forceTransition | Bool? |  yes  |  |

---


 
 
 #### [StatusesBody](#StatusesBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | shipments | [String: Any] |  no  |  |

---


 
 
 #### [ShipmentStatusUpdate](#ShipmentStatusUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | [[String: Any]]? |  yes  |  |
 | status | Bool? |  yes  |  |

---


 
 
 #### [ShipmentTrack](#ShipmentTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [[Track](#Track)]? |  yes  |  |

---


 
 
 #### [OrderSchema](#OrderSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  |  |
 | breakupValues | [[BreakupValues](#BreakupValues)] |  no  |  |
 | orderCreatedTime | String |  no  |  |
 | shipments | [[Shipments](#Shipments)] |  no  |  |
 | totalShipmentsInOrder | Int |  no  |  |
 | userInfo | [UserInfo](#UserInfo) |  no  |  |
 | bagsForReorder | [[BagsForReorder](#BagsForReorder)] |  no  |  |

---


 
 
 #### [BagsForReorder](#BagsForReorder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemId | Int |  no  |  |
 | itemSize | String |  no  |  |
 | storeId | Int |  no  |  |
 | sellerId | Int |  no  |  |
 | quantity | Int |  no  |  |
 | articleAssignment | [BagsForReorderArticleAssignment](#BagsForReorderArticleAssignment) |  no  |  |

---


 
 
 #### [BagsForReorderArticleAssignment](#BagsForReorderArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | level | String |  no  |  |
 | strategy | String |  no  |  |

---


 
 
 #### [PosOrderById](#PosOrderById)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order | [OrderSchema](#OrderSchema)? |  yes  |  |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [Item](#Item) |  no  |  |
 | prices | [Prices](#Prices) |  no  |  |
 | currentStatus | [CurrentStatus](#CurrentStatus) |  no  |  |
 | id | Int |  no  |  |
 | financialBreakup | [[FinancialBreakup](#FinancialBreakup)] |  no  |  |

---


 
 
 #### [Item](#Item)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [ItemBrand](#ItemBrand) |  no  |  |
 | name | String |  no  |  |
 | size | String |  no  |  |
 | slugKey | String |  no  |  |
 | image | [String] |  no  |  |
 | code | String |  no  |  |
 | id | Double |  no  |  |

---


 
 
 #### [Prices](#Prices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amountPaidRoundoff | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | cashback | Double |  no  |  |
 | addedToFyndCash | Bool |  no  |  |
 | priceMarked | Double |  no  |  |
 | transferPrice | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | refundCredit | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | refundAmount | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | discount | Double |  no  |  |
 | couponEffectiveDiscount | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |

---


 
 
 #### [CurrentStatus](#CurrentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String |  no  |  |
 | status | String |  no  |  |
 | name | String |  no  |  |
 | journeyType | String |  no  |  |

---


 
 
 #### [FinancialBreakup](#FinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | amountPaidRoundoff | Double |  no  |  |
 | gstFee | String |  no  |  |
 | refundCredit | Double |  no  |  |
 | cashback | Double |  no  |  |
 | refundAmount | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | size | String |  no  |  |
 | totalUnits | Int |  no  |  |
 | discount | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | addedToFyndCash | Bool |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | hsnCode | String |  no  |  |
 | couponEffectiveDiscount | Double |  no  |  |
 | transferPrice | Double |  no  |  |
 | identifiers | [Identifiers](#Identifiers) |  no  |  |
 | gstTag | String |  no  |  |
 | priceMarked | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | itemName | String |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | gstTaxPercentage | Double |  no  |  |

---


 
 
 #### [Identifiers](#Identifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String |  no  |  |
 | skuCode | String |  no  |  |

---


 
 
 #### [ItemBrand](#ItemBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | logo | String |  no  |  |

---


 
 
 #### [BreakupValues](#BreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | value | Double |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [DeliveryAddress](#DeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | String |  no  |  |
 | landmark | String |  no  |  |
 | contactPerson | String |  no  |  |
 | phone | String |  no  |  |
 | state | String |  no  |  |
 | version | String |  no  |  |
 | address1 | String |  no  |  |
 | createdAt | String |  no  |  |
 | addressType | String |  no  |  |
 | addressCategory | String |  no  |  |
 | area | String |  no  |  |
 | city | String |  no  |  |
 | latitude | Double |  no  |  |
 | longitude | Double |  no  |  |
 | email | String |  no  |  |
 | country | String |  no  |  |
 | address2 | String |  no  |  |
 | updatedAt | String |  no  |  |
 | name | String |  no  |  |
 | address | String |  no  |  |

---


 
 
 #### [FulfillingStore](#FulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | id | Int |  no  |  |
 | name | String |  no  |  |
 | companyId | Int |  no  |  |

---


 
 
 #### [Invoice](#Invoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedDate | String |  no  |  |
 | invoiceUrl | String |  no  |  |
 | labelUrl | String |  no  |  |

---


 
 
 #### [Promise](#Promise)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | [Timestamp](#Timestamp) |  no  |  |

---


 
 
 #### [Timestamp](#Timestamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | String |  no  |  |
 | max | String |  no  |  |

---


 
 
 #### [Reasons](#Reasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonText | String |  no  |  |
 | showTextArea | Bool |  no  |  |
 | feedbackType | String |  no  |  |
 | flow | String |  no  |  |
 | reasonId | Int |  no  |  |
 | priority | Int |  no  |  |

---


 
 
 #### [ShipmentStatus](#ShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | hexCode | String |  no  |  |

---


 
 
 #### [ShipmentUserInfo](#ShipmentUserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gender | String |  no  |  |
 | mobile | String |  no  |  |
 | firstName | String |  no  |  |
 | lastName | String |  no  |  |

---


 
 
 #### [Shipments](#Shipments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  |  |
 | breakupValues | [[BreakupValues](#BreakupValues)] |  no  |  |
 | trackUrl | String |  no  |  |
 | trakingNo | String |  no  |  |
 | trackingDetails | [[TrackingDetails](#TrackingDetails)] |  no  |  |
 | beneficiaryDetails | Bool |  no  |  |
 | canReturn | Bool |  no  |  |
 | prices | [Prices](#Prices) |  no  |  |
 | needHelpUrl | String |  no  |  |
 | shipmentId | String |  no  |  |
 | totalBags | Int |  no  |  |
 | deliveryAddress | [DeliveryAddress](#DeliveryAddress) |  no  |  |
 | invoice | [Invoice](#Invoice) |  no  |  |
 | comment | String |  no  |  |
 | orderType | String |  no  |  |
 | promise | [Promise](#Promise) |  no  |  |
 | fulfillingStore | [FulfillingStore](#FulfillingStore) |  no  |  |
 | bags | [[Bags](#Bags)] |  no  |  |
 | canCancel | Bool |  no  |  |
 | payment | [ShipmentPayment](#ShipmentPayment) |  no  |  |
 | shipmentCreatedAt | String |  no  |  |
 | shipmentStatus | [ShipmentStatus](#ShipmentStatus) |  no  |  |
 | userInfo | [ShipmentUserInfo](#ShipmentUserInfo) |  no  |  |
 | sizeInfo | [String: Any] |  no  |  |
 | totalDetails | [ShipmentTotalDetails](#ShipmentTotalDetails) |  no  |  |

---


 
 
 #### [ShipmentTotalDetails](#ShipmentTotalDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalPrice | Double |  no  |  |
 | sizes | Int |  no  |  |
 | pieces | Int |  no  |  |

---


 
 
 #### [ShipmentPayment](#ShipmentPayment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String |  no  |  |
 | mode | String |  no  |  |
 | status | String |  no  |  |

---


 
 
 #### [Track](#Track)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | awb | String |  no  |  |
 | updatedAt | String |  no  |  |
 | lastLocationRecievedAt | String |  no  |  |
 | reason | String |  no  |  |
 | shipmentType | String |  no  |  |
 | status | String |  no  |  |
 | updatedTime | String |  no  |  |
 | accountName | String |  no  |  |

---


 
 
 #### [TrackingDetails](#TrackingDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isCurrent | Bool |  no  |  |
 | status | String |  no  |  |
 | time | String |  no  |  |
 | isPassed | Bool |  no  |  |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gender | String |  no  |  |
 | mobile | String |  no  |  |
 | name | String |  no  |  |
 | email | String |  no  |  |

---


 
 
 #### [ApefaceApiError](#ApefaceApiError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---




 
 
 #### [ActionPageParams](#ActionPageParams)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | [String] |  no  |  |

---


 
 
 #### [CatalogueOrderRequest](#CatalogueOrderRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articles | [[RewardsArticle](#RewardsArticle)] |  no  |  |

---


 
 
 #### [CatalogueOrderResponse](#CatalogueOrderResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articles | [[RewardsArticle](#RewardsArticle)] |  no  |  |

---


 
 
 #### [DiscountProperties](#DiscountProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | absolute | Double |  no  |  |
 | currency | String |  no  |  |
 | displayAbsolute | String |  no  |  |
 | displayPercent | String |  no  |  |
 | percent | Double |  no  |  |

---


 
 
 #### [Error](#Error)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | Int |  no  |  |
 | exception | String |  no  |  |
 | info | String |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [Offer](#Offer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | schedule | [Schedule](#Schedule) |  no  |  |
 | active | Bool |  no  |  |
 | applicationId | String |  no  |  |
 | bannerImage | [Asset](#Asset) |  no  |  |
 | createdAt | String |  no  |  |
 | name | String |  no  |  |
 | rule | [String: Any] |  no  |  |
 | share | [ShareMessages](#ShareMessages) |  no  |  |
 | subText | String |  no  |  |
 | text | String |  no  |  |
 | type | String |  no  |  |
 | updatedAt | String |  no  |  |
 | updatedBy | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [OrderDiscountRequest](#OrderDiscountRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currency | String |  no  |  |
 | orderAmount | Double? |  yes  |  |

---


 
 
 #### [OrderDiscountResponse](#OrderDiscountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appliedRuleBucket | [OrderDiscountRuleBucket](#OrderDiscountRuleBucket) |  no  |  |
 | baseDiscount | [DiscountProperties](#DiscountProperties) |  no  |  |
 | discount | [DiscountProperties](#DiscountProperties) |  no  |  |
 | orderAmount | Double |  no  |  |
 | points | Double |  no  |  |

---


 
 
 #### [OrderDiscountRuleBucket](#OrderDiscountRuleBucket)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | high | Double |  no  |  |
 | low | Double |  no  |  |
 | max | Double |  no  |  |
 | value | Double |  no  |  |
 | valueType | String |  no  |  |

---


 
 
 #### [PointsHistory](#PointsHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | applicationId | String |  no  |  |
 | claimed | Bool |  no  |  |
 | createdAt | String |  no  |  |
 | expiresOn | String |  no  |  |
 | meta | String |  no  |  |
 | points | Double |  no  |  |
 | remainingPoints | Double |  no  |  |
 | text1 | String |  no  |  |
 | text2 | String |  no  |  |
 | text3 | String |  no  |  |
 | txnName | String |  no  |  |
 | updatedAt | String |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [PointsHistoryResponse](#PointsHistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | history | [[PointsHistory](#PointsHistory)] |  no  | History is the list of points transaction. |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [PointsResponse](#PointsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | points | Double |  no  | Points is the total available |

---


 
 
 #### [RedeemReferralCodeRequest](#RedeemReferralCodeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deviceId | String? |  yes  |  |
 | referralCode | String? |  yes  |  |

---


 
 
 #### [RedeemReferralCodeResponse](#RedeemReferralCodeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | points | Double |  no  |  |
 | redeemed | Bool |  no  |  |
 | referrerId | String |  no  |  |
 | referrerInfo | String |  no  |  |

---


 
 
 #### [ReferralDetailsResponse](#ReferralDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | referral | [Offer](#Offer) |  no  |  |
 | referrerInfo | String |  no  |  |
 | share | [ShareMessages](#ShareMessages) |  no  |  |
 | user | [ReferralDetailsUser](#ReferralDetailsUser) |  no  |  |

---


 
 
 #### [ReferralDetailsUser](#ReferralDetailsUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | blocked | Bool |  no  |  |
 | points | Double |  no  |  |
 | redeemed | Bool |  no  |  |
 | referralCode | String |  no  |  |

---


 
 
 #### [RewardsArticle](#RewardsArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | points | Double |  no  |  |
 | price | Double |  no  |  |

---


 
 
 #### [Schedule](#Schedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String |  no  |  |
 | duration | Int |  no  |  |
 | end | String |  no  |  |
 | start | String |  no  |  |

---


 
 
 #### [ShareMessages](#ShareMessages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | facebook | String |  no  |  |
 | fallback | String |  no  |  |
 | message | String |  no  |  |
 | messenger | String |  no  |  |
 | sms | String |  no  |  |
 | text | String |  no  |  |
 | twitter | String |  no  |  |
 | whatsapp | String |  no  |  |

---




 
 
 #### [AbuseReport](#AbuseReport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | abused | Bool |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | description | String |  no  |  |
 | entity | [Entity](#Entity) |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | state | [FeedbackState](#FeedbackState) |  no  |  |
 | tags | [[TagMeta](#TagMeta)] |  no  |  |

---


 
 
 #### [Access](#Access)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | answer | Bool |  no  |  |
 | askQuestion | Bool |  no  |  |
 | comment | Bool |  no  |  |
 | rnr | Bool |  no  |  |

---


 
 
 #### [AddMediaListRequest](#AddMediaListRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityId | String |  no  |  |
 | entityType | String |  no  |  |
 | mediaList | [[AddMediaRequest](#AddMediaRequest)] |  no  |  |
 | refId | String |  no  |  |
 | refType | String |  no  |  |

---


 
 
 #### [AddMediaRequest](#AddMediaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cloudId | String |  no  |  |
 | cloudName | String |  no  |  |
 | cloudProvider | String |  no  |  |
 | entityId | String |  no  |  |
 | entityType | String |  no  |  |
 | mediaUrl | String |  no  |  |
 | refId | String |  no  |  |
 | refType | String |  no  |  |
 | tags | [String] |  no  |  |
 | thumbnailUrl | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ApplicationSchema](#ApplicationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |

---


 
 
 #### [Attribute](#Attribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | description | String |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | tags | [[TagMeta](#TagMeta)] |  no  |  |

---


 
 
 #### [AttributeObject](#AttributeObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | name | String? |  yes  |  |
 | slug | String |  no  |  |
 | title | String |  no  |  |
 | type | String? |  yes  |  |
 | value | Double? |  yes  |  |

---


 
 
 #### [AttributeResponse](#AttributeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Attribute](#Attribute)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [AutoDetectors](#AutoDetectors)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | textDetector | [[TextDetector](#TextDetector)] |  no  |  |

---


 
 
 #### [CheckEligibilityResponse](#CheckEligibilityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | access | [Access](#Access) |  no  |  |

---


 
 
 #### [Cloud](#Cloud)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | provider | String |  no  |  |

---


 
 
 #### [Comment](#Comment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | comment | [String] |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | entity | [Entity](#Entity) |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | state | [FeedbackState](#FeedbackState) |  no  |  |
 | tags | [[TagMeta](#TagMeta)] |  no  |  |
 | voteCount | [VoteCount](#VoteCount) |  no  |  |

---


 
 
 #### [CommentGetResponse](#CommentGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Comment](#Comment)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [CommentRequest](#CommentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | comment | [String]? |  yes  |  |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |

---


 
 
 #### [CreateQNARequest](#CreateQNARequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | choices | [String] |  no  |  |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | maxLen | Int |  no  |  |
 | sortPriority | Int |  no  |  |
 | tags | [String] |  no  |  |
 | text | String? |  yes  |  |
 | type | String |  no  |  |

---


 
 
 #### [CreatedBy](#CreatedBy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | tags | [[TagMeta](#TagMeta)] |  no  |  |

---


 
 
 #### [CursorGetResponse](#CursorGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [CustomerReview](#CustomerReview)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | autoDetectors | [AutoDetectors](#AutoDetectors) |  no  |  |
 | createdOn | String |  no  |  |
 | deviceMeta | [DeviceMeta](#DeviceMeta) |  no  |  |
 | entity | [ProductEntity](#ProductEntity) |  no  |  |
 | id | String |  no  |  |
 | locationMeta | [LocationMeta](#LocationMeta) |  no  |  |
 | modifiedOn | String |  no  |  |
 | name | String |  no  |  |
 | rating | [ReviewRating](#ReviewRating) |  no  |  |
 | review | [Review](#Review) |  no  |  |
 | slug | String |  no  |  |
 | state | [State](#State) |  no  |  |
 | tags | [[TagMeta](#TagMeta)] |  no  |  |
 | template | [Template](#Template) |  no  |  |
 | voteCount | [VoteCount](#VoteCount) |  no  |  |

---


 
 
 #### [DeviceMeta](#DeviceMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appVersion | String |  no  |  |
 | platform | String |  no  |  |

---


 
 
 #### [Entity](#Entity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | type | String |  no  | entity type could be review/comment/ |

---


 
 
 #### [EntityMeta](#EntityMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String |  no  |  |
 | type | String |  no  | product, delivery,seller |

---


 
 
 #### [FeedbackError](#FeedbackError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | exception | String |  no  |  |
 | info | String |  no  |  |
 | message | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | requestId | String |  no  |  |
 | stackTrace | String |  no  |  |
 | status | Int |  no  |  |

---


 
 
 #### [FeedbackMedia](#FeedbackMedia)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | [ApplicationSchema](#ApplicationSchema) |  no  |  |
 | cloud | [Cloud](#Cloud) |  no  |  |
 | createdBy | [CreatedBy](#CreatedBy) |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | description | String |  no  |  |
 | entity | [Entity](#Entity) |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | reference | [Entity](#Entity) |  no  |  |
 | state | [MediaState](#MediaState) |  no  |  |
 | tags | [[TagMeta](#TagMeta)] |  no  |  |
 | type | String |  no  |  |
 | url | [Url](#Url) |  no  |  |

---


 
 
 #### [FeedbackState](#FeedbackState)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | archive | Bool |  no  |  |
 | media | String |  no  |  |
 | qna | Bool |  no  |  |
 | rating | Bool |  no  |  |
 | review | Bool |  no  |  |

---


 
 
 #### [GeoLoc](#GeoLoc)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | latitude | String |  no  |  |
 | longitude | String |  no  |  |

---


 
 
 #### [InsertResponse](#InsertResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ids | String |  no  |  |

---


 
 
 #### [Location](#Location)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String |  no  |  |
 | flagUrl | String |  no  |  |
 | geoLoc | [GeoLoc](#GeoLoc) |  no  |  |
 | name | String |  no  |  |
 | pincode | String |  no  |  |

---


 
 
 #### [LocationMeta](#LocationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | demand | [Location](#Location) |  no  |  |
 | supply | [Location](#Location) |  no  |  |

---


 
 
 #### [MediaGetResponse](#MediaGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[FeedbackMedia](#FeedbackMedia)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [MediaMeta](#MediaMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cloud | [Cloud](#Cloud) |  no  |  |
 | comment | [String] |  no  |  |
 | description | String |  no  |  |
 | id | String |  no  |  |
 | type | String |  no  |  |
 | url | [Url](#Url) |  no  |  |

---


 
 
 #### [MediaState](#MediaState)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | approve | Bool |  no  |  |
 | archive | Bool |  no  |  |

---


 
 
 #### [NumberGetResponse](#NumberGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]] |  no  |  |
 | page | [PageNumber](#PageNumber) |  no  |  |

---


 
 
 #### [PageNumber](#PageNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | itemTotal | Int |  no  |  |
 | size | Int |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ProductEntity](#ProductEntity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  | For products, ID will be product ID, delivery, ID will be order id, seller ID will be company ID |
 | meta | [EntityMeta](#EntityMeta) |  no  |  |
 | type | String |  no  | product, delivery, seller, app, order |

---


 
 
 #### [QNA](#QNA)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | comments | [[Comment](#Comment)] |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | entity | [Entity](#Entity) |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | question | [Question](#Question) |  no  |  |
 | state | [QNAState](#QNAState) |  no  |  |
 | tag | [String] |  no  |  |
 | tags | [[TagMeta](#TagMeta)] |  no  |  |

---


 
 
 #### [QNAGetResponse](#QNAGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[QNA](#QNA)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [QNAState](#QNAState)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | approve | Bool |  no  |  |
 | modify | Bool |  no  |  |
 | priority | Int |  no  |  |
 | reply | Bool |  no  |  |
 | vote | Bool |  no  |  |

---


 
 
 #### [Question](#Question)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | choices | [String] |  no  |  |
 | maxLen | Int |  no  |  |
 | text | String |  no  |  |
 | type | String |  no  | type could be single_choice/text/multi_choice |

---


 
 
 #### [Rating](#Rating)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [[Attribute](#Attribute)] |  no  |  |
 | attributesSlugs | [String] |  no  |  |
 | ui | [UI](#UI) |  no  |  |

---


 
 
 #### [RatingGetResponse](#RatingGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Rating](#Rating)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [RatingMetric](#RatingMetric)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | avg | Double |  no  |  |
 | count | Int |  no  | Valuetype could be average, count |
 | name | String |  no  | Attribute name like Camera, Battery and rating name like a number 5,4,3 |
 | slug | String |  no  |  |
 | type | String |  no  | type could be attribute_rating and rating |

---


 
 
 #### [ReportAbuseGetResponse](#ReportAbuseGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AbuseReport](#AbuseReport)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ReportAbuseRequest](#ReportAbuseRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |

---


 
 
 #### [Review](#Review)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | answerIds | [String] |  no  |  |
 | comments | [String] |  no  |  |
 | description | String |  no  |  |
 | mediaMeta | [[MediaMeta](#MediaMeta)] |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [ReviewFacet](#ReviewFacet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | name | String |  no  |  |
 | selected | Bool |  no  |  |
 | slug | String |  no  |  |
 | type | String |  no  | rating, attribute rating |

---


 
 
 #### [ReviewGetResponse](#ReviewGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facets | [[ReviewFacet](#ReviewFacet)] |  no  |  |
 | items | [[CustomerReview](#CustomerReview)] |  no  |  |
 | page | [Page](#Page) |  no  |  |
 | sort | [[SortMethod](#SortMethod)] |  no  |  |

---


 
 
 #### [ReviewMediaMeta](#ReviewMediaMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxCount | Double |  no  |  |
 | size | Double |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ReviewMetric](#ReviewMetric)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributeMetric | [[RatingMetric](#RatingMetric)] |  no  |  |
 | createdOn | String |  no  |  |
 | entity | [Entity](#Entity) |  no  | entity could be product, seller, delivery |
 | id | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | ratingAvg | Double |  no  |  |
 | ratingCount | Int |  no  | total rating count |
 | ratingMetric | [[RatingMetric](#RatingMetric)] |  no  |  |
 | reviewCount | Int |  no  | total review count |

---


 
 
 #### [ReviewMetricGetResponse](#ReviewMetricGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ReviewMetric](#ReviewMetric)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ReviewRating](#ReviewRating)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [[AttributeObject](#AttributeObject)] |  no  |  |
 | value | Double |  no  |  |

---


 
 
 #### [SaveAttributeRequest](#SaveAttributeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |

---


 
 
 #### [SortMethod](#SortMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | selected | Bool |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [State](#State)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | approve | Bool |  no  |  |
 | autoDecided | Bool |  no  |  |
 | status | Int |  no  |  |

---


 
 
 #### [TagMeta](#TagMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | media | [[MediaMeta](#MediaMeta)] |  no  |  |
 | name | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [Template](#Template)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | entity | [Entity](#Entity) |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | rating | [Rating](#Rating) |  no  |  |
 | review | [TemplateReview](#TemplateReview) |  no  |  |
 | state | [FeedbackState](#FeedbackState) |  no  |  |

---


 
 
 #### [TemplateGetResponse](#TemplateGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Template](#Template)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [TemplateReview](#TemplateReview)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | header | String |  no  |  |
 | imageMeta | [ReviewMediaMeta](#ReviewMediaMeta) |  no  |  |
 | title | String |  no  |  |
 | videoMeta | [ReviewMediaMeta](#ReviewMediaMeta) |  no  |  |
 | voteAllowed | Bool |  no  |  |

---


 
 
 #### [TextDetector](#TextDetector)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | confidence | Double |  no  |  |
 | text | String |  no  |  |
 | textClass | String |  no  |  |
 | textType | String |  no  |  |

---


 
 
 #### [UI](#UI)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feedbackQuestion | [String] |  no  |  |
 | icon | [UIIcon](#UIIcon) |  no  |  |
 | text | [String] |  no  |  |
 | type | String |  no  | star | images | gifs | smileys |

---


 
 
 #### [UIIcon](#UIIcon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | String |  no  |  |
 | inactive | String |  no  |  |
 | selected | [String] |  no  |  |

---


 
 
 #### [UpdateAbuseStatusRequest](#UpdateAbuseStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | abusive | Bool |  no  |  |
 | active | Bool |  no  |  |
 | approve | Bool |  no  |  |
 | description | String |  no  |  |
 | entityId | String |  no  |  |
 | entityType | String |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [UpdateAttributeRequest](#UpdateAttributeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | name | String? |  yes  |  |
 | slug | String |  no  |  |

---


 
 
 #### [UpdateCommentRequest](#UpdateCommentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | approve | Bool |  no  |  |
 | comment | [String]? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [UpdateMediaListRequest](#UpdateMediaListRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | approve | Bool |  no  |  |
 | archive | Bool |  no  |  |
 | entityType | String |  no  |  |
 | ids | [String] |  no  |  |

---


 
 
 #### [UpdateQNARequest](#UpdateQNARequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | approve | Bool |  no  |  |
 | choices | [String] |  no  |  |
 | id | String |  no  |  |
 | tags | [String] |  no  |  |

---


 
 
 #### [UpdateResponse](#UpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |

---


 
 
 #### [UpdateReviewRequest](#UpdateReviewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | application | String |  no  |  |
 | approve | Bool |  no  |  |
 | archive | Bool |  no  |  |
 | attributesRating | [[AttributeObject](#AttributeObject)] |  no  |  |
 | description | String |  no  |  |
 | deviceMeta | [DeviceMeta](#DeviceMeta) |  no  |  |
 | entityId | String |  no  |  |
 | entityType | String |  no  |  |
 | mediaResource | [[MediaMeta](#MediaMeta)] |  no  |  |
 | rating | Double |  no  |  |
 | reviewId | String |  no  |  |
 | templateId | String |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [UpdateVoteRequest](#UpdateVoteRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String |  no  |  |
 | active | Bool |  no  |  |
 | id | String |  no  |  |
 | refId | String |  no  |  |
 | refType | String |  no  |  |

---


 
 
 #### [Url](#Url)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | main | String |  no  |  |
 | thumbnail | String |  no  |  |

---


 
 
 #### [Vote](#Vote)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String |  no  | upvote and downvote |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | entity | [Entity](#Entity) |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | reference | [Entity](#Entity) |  no  | review | comment |
 | state | [FeedbackState](#FeedbackState) |  no  |  |
 | tags | [[TagMeta](#TagMeta)] |  no  |  |

---


 
 
 #### [VoteCount](#VoteCount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | downvote | Int |  no  |  |
 | upvote | Int |  no  |  |

---


 
 
 #### [VoteRequest](#VoteRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String |  no  |  |
 | entityId | String |  no  |  |
 | entityType | String |  no  |  |
 | refId | String |  no  |  |
 | refType | String |  no  | review | comment |

---


 
 
 #### [VoteResponse](#VoteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Vote](#Vote)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---




 
 
 #### [UpdateCartShipmentItem](#UpdateCartShipmentItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentType | String? |  yes  | Shipment delivery type |
 | articleUid | String? |  yes  | Article mongo id |
 | quantity | Int |  no  | Quantity of product in shipment |

---


 
 
 #### [UpdateCartShipmentRequest](#UpdateCartShipmentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [[UpdateCartShipmentItem](#UpdateCartShipmentItem)]? |  yes  |  |

---


 
 
 #### [Files](#Files)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | values | [String]? |  yes  |  |
 | key | String? |  yes  |  |

---


 
 
 #### [CartPosCheckoutRequest](#CartPosCheckoutRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | merchantCode | String |  no  |  |
 | pos | Bool |  no  |  |
 | orderType | String? |  yes  |  |
 | extraMeta | [String: Any] |  no  |  |
 | staff | [String: Any] |  no  |  |
 | deliveryAddress | [String: Any] |  no  |  |
 | paymentIdentifier | String |  no  |  |
 | aggregator | String |  no  |  |
 | callbackUrl | String |  no  |  |
 | billingAddressId | Int |  no  |  |
 | billingAddress | [String: Any] |  no  |  |
 | addressId | Int |  no  |  |
 | paymentMode | String? |  yes  |  |
 | fyndstoreEmpId | String |  no  |  |
 | paymentAutoConfirm | Bool |  no  |  |
 | pickAtStoreUid | Int |  no  |  |
 | orderingStore | Int |  no  |  |
 | meta | [String: Any] |  no  |  |
 | paymentParams | [String: Any] |  no  |  |
 | files | [[Files](#Files)] |  no  | List of file url |

---


 
 
 #### [CartDeliveryModesResponse](#CartDeliveryModesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | availableModes | [String] |  no  | Available delivery modes |
 | pickupStores | [Int] |  no  | Store pick up available store uids |

---


 
 
 #### [PickupStoreDetail](#PickupStoreDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String |  no  |  |
 | storeCode | String |  no  |  |
 | address | String |  no  |  |
 | landmark | String |  no  |  |
 | pincode | Int |  no  |  |
 | areaCodeSlug | String |  no  |  |
 | areaCode | String |  no  |  |
 | email | String |  no  |  |
 | name | String |  no  |  |
 | addressType | String |  no  |  |
 | uid | Int |  no  |  |
 | phone | String |  no  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |
 | area | String |  no  |  |

---


 
 
 #### [StoreDetailsResponse](#StoreDetailsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PickupStoreDetail](#PickupStoreDetail)] |  no  |  |

---




 
 
 #### [GetPincodeCityResponse](#GetPincodeCityResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestUuid | String? |  yes  |  |
 | stormbreakerUuid | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | data | [[LogisticPincodeData](#LogisticPincodeData)]? |  yes  |  |

---


 
 
 #### [LogisticPincodeData](#LogisticPincodeData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [LogisticMeta](#LogisticMeta) |  no  |  |
 | parents | [[LogisticParents](#LogisticParents)] |  no  |  |
 | subType | String |  no  |  |
 | name | String |  no  |  |
 | error | [LogisticError](#LogisticError) |  no  |  |
 | uid | String |  no  |  |
 | displayName | String |  no  |  |

---


 
 
 #### [LogisticMeta](#LogisticMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zone | String |  no  |  |
 | deliverables | [[String: Any]] |  no  |  |

---


 
 
 #### [LogisticParents](#LogisticParents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subType | String |  no  |  |
 | name | String |  no  |  |
 | displayName | String |  no  |  |
 | uid | String |  no  |  |

---


 
 
 #### [LogisticError](#LogisticError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | value | String |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [GetTatProductReqBody](#GetTatProductReqBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locationDetails | [[LocationDetailsReq](#LocationDetailsReq)]? |  yes  |  |
 | toPincode | String? |  yes  |  |
 | action | String |  no  |  |

---


 
 
 #### [LocationDetailsReq](#LocationDetailsReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromPincode | String |  no  |  |
 | articles | [[TatReqProductArticles](#TatReqProductArticles)] |  no  |  |
 | fulfillmentId | Int |  no  |  |

---


 
 
 #### [TatReqProductArticles](#TatReqProductArticles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [LogisticRequestCategory](#LogisticRequestCategory) |  no  |  |

---


 
 
 #### [LogisticRequestCategory](#LogisticRequestCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | level | String |  no  |  |

---


 
 
 #### [GetTatProductResponse](#GetTatProductResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | locationDetails | [[LocationDetails](#LocationDetails)]? |  yes  |  |
 | requestUuid | String? |  yes  |  |
 | error | [String: Any]? |  yes  |  |
 | toCity | String? |  yes  |  |
 | source | String? |  yes  |  |
 | toPincode | String? |  yes  |  |
 | action | String? |  yes  |  |
 | stormbreakerUuid | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | identifier | String? |  yes  |  |
 | journey | String? |  yes  |  |

---


 
 
 #### [LocationDetails](#LocationDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fromPincode | String |  no  |  |
 | articles | [[TatProductArticles](#TatProductArticles)] |  no  |  |
 | fulfillmentId | Int |  no  |  |

---


 
 
 #### [TatProductArticles](#TatProductArticles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [String: Any] |  no  |  |
 | category | [LogisticResponseCategory](#LogisticResponseCategory) |  no  |  |
 | promise | [LogisticPromise](#LogisticPromise) |  no  |  |

---


 
 
 #### [LogisticResponseCategory](#LogisticResponseCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | level | String |  no  |  |

---


 
 
 #### [LogisticPromise](#LogisticPromise)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | [LogisticTimestamp](#LogisticTimestamp) |  no  |  |
 | formatted | [Formatted](#Formatted) |  no  |  |

---


 
 
 #### [LogisticTimestamp](#LogisticTimestamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int |  no  |  |
 | max | Int |  no  |  |

---


 
 
 #### [Formatted](#Formatted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | String |  no  |  |
 | max | String |  no  |  |

---




