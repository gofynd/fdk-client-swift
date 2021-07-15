

# FDK Platform Front API Documentaion


* [Common](#Common) - Application configuration apis 
* [Lead](#Lead) - Handles communication between Administrator <-> Staff and Staff <-> Users 
* [Feedback](#Feedback) - User Reviews and Rating System 
* [Theme](#Theme) - Responsible for themes 
* [User](#User) - Authentication Service 
* [Content](#Content) - Content System 
* [Assignment](#Assignment) -  
* [Billing](#Billing) - Handle platform subscription 
* [Communication](#Communication) - Manages email, sms, push notifications sent to users 
* [Payment](#Payment) - Collect payment through many payment gateway i.e Stripe, Razorpay, Juspay etc.into Fynd or Self account 
* [Order](#Order) - Handles Platform websites OMS 
* [Catalog](#Catalog) - Catalog API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features.  
* [CompanyProfile](#CompanyProfile) - Company Profile API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features.  
* [FileStorage](#FileStorage) - File Storage 
* [Share](#Share) - Short link and QR Code 
* [Inventory](#Inventory) -  
* [Configuration](#Configuration) - Application configuration apis 
* [Cart](#Cart) - Cart APIs 
* [Rewards](#Rewards) - Rewards 
* [Analytics](#Analytics) - Perceptor analytics 
* [Discount](#Discount) - Discount 
* [Partner](#Partner) - Partner configuration apis 
* [Webhook](#Webhook) - Webhook dispatcher with retry and one event to many subscriber vice versa 

----

### Classes and Methods


* ## [Common](#Common)
  * Methods
    * [getLocations](#getlocations)
    

* ## [Lead](#Lead)
  * Methods
    * [getTickets](#gettickets)
    * [createTicket](#createticket)
    * [getTickets](#gettickets)
    * [getTicket](#getticket)
    * [editTicket](#editticket)
    * [getTicket](#getticket)
    * [editTicket](#editticket)
    * [createHistory](#createhistory)
    * [getTicketHistory](#gettickethistory)
    * [getFeedbacks](#getfeedbacks)
    * [submitFeedback](#submitfeedback)
    * [createHistory](#createhistory)
    * [getTicketHistory](#gettickethistory)
    * [getCustomForm](#getcustomform)
    * [editCustomForm](#editcustomform)
    * [getCustomForms](#getcustomforms)
    * [createCustomForm](#createcustomform)
    * [getTokenForVideoRoom](#gettokenforvideoroom)
    * [getTokenForVideoRoom](#gettokenforvideoroom)
    * [getVideoParticipants](#getvideoparticipants)
    * [getVideoParticipants](#getvideoparticipants)
    * [openVideoRoom](#openvideoroom)
    * [closeVideoRoom](#closevideoroom)
    

* ## [Feedback](#Feedback)
  * Methods
    * [getAttributes](#getattributes)
    * [getCustomerReviews](#getcustomerreviews)
    * [updateApprove](#updateapprove)
    * [getHistory](#gethistory)
    * [getApplicationTemplates](#getapplicationtemplates)
    * [createTemplate](#createtemplate)
    * [getTemplateById](#gettemplatebyid)
    * [updateTemplate](#updatetemplate)
    * [updateTemplateStatus](#updatetemplatestatus)
    

* ## [Theme](#Theme)
  * Methods
    * [getAllPages](#getallpages)
    * [createPage](#createpage)
    * [updateMultiplePages](#updatemultiplepages)
    * [getPage](#getpage)
    * [updatePage](#updatepage)
    * [deletePage](#deletepage)
    * [getThemeLibrary](#getthemelibrary)
    * [addToThemeLibrary](#addtothemelibrary)
    * [applyTheme](#applytheme)
    * [isUpgradable](#isupgradable)
    * [upgradeTheme](#upgradetheme)
    * [getPublicThemes](#getpublicthemes)
    * [createTheme](#createtheme)
    * [getAppliedTheme](#getappliedtheme)
    * [getFonts](#getfonts)
    * [getThemeById](#getthemebyid)
    * [updateTheme](#updatetheme)
    * [deleteTheme](#deletetheme)
    * [getThemeForPreview](#getthemeforpreview)
    * [publishTheme](#publishtheme)
    * [unpublishTheme](#unpublishtheme)
    * [archiveTheme](#archivetheme)
    * [unarchiveTheme](#unarchivetheme)
    

* ## [User](#User)
  * Methods
    * [getCustomers](#getcustomers)
    * [searchUsers](#searchusers)
    * [createUser](#createuser)
    * [updateUser](#updateuser)
    * [createUserSession](#createusersession)
    * [getPlatformConfig](#getplatformconfig)
    * [updatePlatformConfig](#updateplatformconfig)
    

* ## [Content](#Content)
  * Methods
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
    * [createPage](#createpage)
    * [getPages](#getpages)
    * [createPagePreview](#createpagepreview)
    * [updatePagePreview](#updatepagepreview)
    * [updatePage](#updatepage)
    * [deletePage](#deletepage)
    * [getPageBySlug](#getpagebyslug)
    * [getSEOConfiguration](#getseoconfiguration)
    * [updateSEOConfiguration](#updateseoconfiguration)
    * [getSlideshows](#getslideshows)
    * [createSlideshow](#createslideshow)
    * [getSlideshowBySlug](#getslideshowbyslug)
    * [updateSlideshow](#updateslideshow)
    * [deleteSlideshow](#deleteslideshow)
    * [getSupportInformation](#getsupportinformation)
    * [updateSupportInformation](#updatesupportinformation)
    * [updateInjectableTag](#updateinjectabletag)
    * [deleteAllInjectableTags](#deleteallinjectabletags)
    * [getInjectableTags](#getinjectabletags)
    * [addInjectableTag](#addinjectabletag)
    * [removeInjectableTag](#removeinjectabletag)
    * [editInjectableTag](#editinjectabletag)
    

* ## [Assignment](#Assignment)
  * Methods
    * [createPickupLocation](#createpickuplocation)
    * [getPickupLocation](#getpickuplocation)
    * [updatePickupLocation](#updatepickuplocation)
    * [getPickupLocationById](#getpickuplocationbyid)
    * [createPickupConfiguration](#createpickupconfiguration)
    * [getPickupConfiguration](#getpickupconfiguration)
    * [getAllocationConfiguration](#getallocationconfiguration)
    * [createAllocationConfiguration](#createallocationconfiguration)
    * [updateAllocationConfiguration](#updateallocationconfiguration)
    * [getAllocationLocations](#getallocationlocations)
    * [getAllocationLocationById](#getallocationlocationbyid)
    * [updateAllocationLocation](#updateallocationlocation)
    * [createAllocationLocation](#createallocationlocation)
    * [getDestinationZones](#getdestinationzones)
    * [postDestinationZone](#postdestinationzone)
    * [getDestinationZoneById](#getdestinationzonebyid)
    * [updateDestinationZone](#updatedestinationzone)
    

* ## [Billing](#Billing)
  * Methods
    * [createSubscriptionCharge](#createsubscriptioncharge)
    * [getSubscriptionCharge](#getsubscriptioncharge)
    * [cancelSubscriptionCharge](#cancelsubscriptioncharge)
    * [getInvoices](#getinvoices)
    * [getInvoiceById](#getinvoicebyid)
    * [getCustomerDetail](#getcustomerdetail)
    * [upsertCustomerDetail](#upsertcustomerdetail)
    * [getSubscription](#getsubscription)
    * [getFeatureLimitConfig](#getfeaturelimitconfig)
    * [activateSubscriptionPlan](#activatesubscriptionplan)
    * [cancelSubscriptionPlan](#cancelsubscriptionplan)
    

* ## [Communication](#Communication)
  * Methods
    * [getCampaigns](#getcampaigns)
    * [createCampaign](#createcampaign)
    * [getCampaignById](#getcampaignbyid)
    * [updateCampaignById](#updatecampaignbyid)
    * [getStatsOfCampaignById](#getstatsofcampaignbyid)
    * [getAudiences](#getaudiences)
    * [createAudience](#createaudience)
    * [getBigqueryHeaders](#getbigqueryheaders)
    * [getAudienceById](#getaudiencebyid)
    * [updateAudienceById](#updateaudiencebyid)
    * [getNSampleRecordsFromCsv](#getnsamplerecordsfromcsv)
    * [getEmailProviders](#getemailproviders)
    * [createEmailProvider](#createemailprovider)
    * [getEmailProviderById](#getemailproviderbyid)
    * [updateEmailProviderById](#updateemailproviderbyid)
    * [getEmailTemplates](#getemailtemplates)
    * [createEmailTemplate](#createemailtemplate)
    * [getSystemEmailTemplates](#getsystememailtemplates)
    * [getEmailTemplateById](#getemailtemplatebyid)
    * [updateEmailTemplateById](#updateemailtemplatebyid)
    * [deleteEmailTemplateById](#deleteemailtemplatebyid)
    * [getEventSubscriptions](#geteventsubscriptions)
    * [getJobs](#getjobs)
    * [triggerCampaignJob](#triggercampaignjob)
    * [getJobLogs](#getjoblogs)
    * [getCommunicationLogs](#getcommunicationlogs)
    * [getSystemNotifications](#getsystemnotifications)
    * [getSmsProviders](#getsmsproviders)
    * [createSmsProvider](#createsmsprovider)
    * [getSmsProviderById](#getsmsproviderbyid)
    * [updateSmsProviderById](#updatesmsproviderbyid)
    * [getSmsTemplates](#getsmstemplates)
    * [createSmsTemplate](#createsmstemplate)
    * [getSmsTemplateById](#getsmstemplatebyid)
    * [updateSmsTemplateById](#updatesmstemplatebyid)
    * [deleteSmsTemplateById](#deletesmstemplatebyid)
    * [getSystemSystemTemplates](#getsystemsystemtemplates)
    

* ## [Payment](#Payment)
  * Methods
    * [getBrandPaymentGatewayConfig](#getbrandpaymentgatewayconfig)
    * [saveBrandPaymentGatewayConfig](#savebrandpaymentgatewayconfig)
    * [updateBrandPaymentGatewayConfig](#updatebrandpaymentgatewayconfig)
    * [getPaymentModeRoutes](#getpaymentmoderoutes)
    * [getAllPayouts](#getallpayouts)
    * [savePayout](#savepayout)
    * [updatePayout](#updatepayout)
    * [activateAndDectivatePayout](#activateanddectivatepayout)
    * [deletePayout](#deletepayout)
    * [getSubscriptionPaymentMethod](#getsubscriptionpaymentmethod)
    * [deleteSubscriptionPaymentMethod](#deletesubscriptionpaymentmethod)
    * [getSubscriptionConfig](#getsubscriptionconfig)
    * [saveSubscriptionSetupIntent](#savesubscriptionsetupintent)
    * [addBeneficiaryDetails](#addbeneficiarydetails)
    * [verifyIfscCode](#verifyifsccode)
    * [getUserOrderBeneficiaries](#getuserorderbeneficiaries)
    * [getUserBeneficiaries](#getuserbeneficiaries)
    

* ## [Order](#Order)
  * Methods
    * [shipmentStatusUpdate](#shipmentstatusupdate)
    * [activityStatus](#activitystatus)
    * [storeProcessShipmentUpdate](#storeprocessshipmentupdate)
    * [checkRefund](#checkrefund)
    * [getOrdersByCompanyId](#getordersbycompanyid)
    * [getOrderDetails](#getorderdetails)
    * [getPicklistOrdersByCompanyId](#getpicklistordersbycompanyid)
    * [trackShipmentPlatform](#trackshipmentplatform)
    * [trackOrder](#trackorder)
    * [failedOrders](#failedorders)
    * [reprocessOrder](#reprocessorder)
    * [updateShipment](#updateshipment)
    * [getPlatformShipmentReasons](#getplatformshipmentreasons)
    * [getShipmentTrackDetails](#getshipmenttrackdetails)
    * [getShipmentAddress](#getshipmentaddress)
    * [updateShipmentAddress](#updateshipmentaddress)
    * [getPing](#getping)
    * [voiceCallback](#voicecallback)
    * [voiceClickToCall](#voiceclicktocall)
    

* ## [Catalog](#Catalog)
  * Methods
    * [deleteSearchKeywords](#deletesearchkeywords)
    * [getSearchKeywords](#getsearchkeywords)
    * [updateSearchKeywords](#updatesearchkeywords)
    * [createCustomKeyword](#createcustomkeyword)
    * [getAllSearchKeyword](#getallsearchkeyword)
    * [deleteAutocompleteKeyword](#deleteautocompletekeyword)
    * [getAutocompleteKeywordDetail](#getautocompletekeyworddetail)
    * [updateAutocompleteKeyword](#updateautocompletekeyword)
    * [createCustomAutocompleteRule](#createcustomautocompleterule)
    * [getAutocompleteConfig](#getautocompleteconfig)
    * [createProductBundle](#createproductbundle)
    * [getProductBundle](#getproductbundle)
    * [getProductBundleDetail](#getproductbundledetail)
    * [updateProductBundle](#updateproductbundle)
    * [createSizeGuide](#createsizeguide)
    * [getSizeGuides](#getsizeguides)
    * [getSizeGuide](#getsizeguide)
    * [updateSizeGuide](#updatesizeguide)
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
    * [listDepartmentsData](#listdepartmentsdata)
    * [getDepartmentData](#getdepartmentdata)
    * [listProductTemplate](#listproducttemplate)
    * [validateProductTemplate](#validateproducttemplate)
    * [downloadProductTemplateViews](#downloadproducttemplateviews)
    * [downloadProductTemplateView](#downloadproducttemplateview)
    * [validateProductTemplateSchema](#validateproducttemplateschema)
    * [listHSNCodes](#listhsncodes)
    * [listProductTemplateExportDetails](#listproducttemplateexportdetails)
    * [listTemplateBrandTypeValues](#listtemplatebrandtypevalues)
    * [createCategories](#createcategories)
    * [listCategories](#listcategories)
    * [getCategoryData](#getcategorydata)
    * [updateCategory](#updatecategory)
    * [createProduct](#createproduct)
    * [getProducts](#getproducts)
    * [deleteProduct](#deleteproduct)
    * [getProduct](#getproduct)
    * [editProduct](#editproduct)
    * [getProductValidation](#getproductvalidation)
    * [getProductSize](#getproductsize)
    * [updateProductAssetsInBulk](#updateproductassetsinbulk)
    * [getProductBulkUploadHistory](#getproductbulkuploadhistory)
    * [deleteProductBulkJob](#deleteproductbulkjob)
    * [createProductsInBulk](#createproductsinbulk)
    * [getCompanyTags](#getcompanytags)
    * [createProductAssetsInBulk](#createproductassetsinbulk)
    * [getProductAssetsInBulk](#getproductassetsinbulk)
    * [deleteSize](#deletesize)
    * [addInventory](#addinventory)
    * [getInventoryBySize](#getinventorybysize)
    * [getInventoryBySizeIdentifier](#getinventorybysizeidentifier)
    * [deleteInventory](#deleteinventory)
    * [createBulkInventoryJob](#createbulkinventoryjob)
    * [getInventoryBulkUploadHistory](#getinventorybulkuploadhistory)
    * [deleteBulkInventoryJob](#deletebulkinventoryjob)
    * [createBulkInventory](#createbulkinventory)
    * [createInventoryExportJob](#createinventoryexportjob)
    * [getInventoryExport](#getinventoryexport)
    * [exportInventoryConfig](#exportinventoryconfig)
    * [createHsnCode](#createhsncode)
    * [getAllHsnCodes](#getallhsncodes)
    * [getHsnCode](#gethsncode)
    * [updateHsnCode](#updatehsncode)
    * [bulkHsnCode](#bulkhsncode)
    * [getApplicationBrands](#getapplicationbrands)
    * [getDepartments](#getdepartments)
    * [getCategories](#getcategories)
    * [getAppicationProducts](#getappicationproducts)
    * [getProductDetailBySlug](#getproductdetailbyslug)
    

* ## [CompanyProfile](#CompanyProfile)
  * Methods
    * [cbsOnboardGet](#cbsonboardget)
    * [updateCompany](#updatecompany)
    * [getCompanyMetrics](#getcompanymetrics)
    * [getBrand](#getbrand)
    * [editBrand](#editbrand)
    * [createBrand](#createbrand)
    * [createCompanyBrandMapping](#createcompanybrandmapping)
    * [getBrands](#getbrands)
    * [createLocation](#createlocation)
    * [getLocations](#getlocations)
    * [getLocationDetail](#getlocationdetail)
    * [updateLocation](#updatelocation)
    * [createLocationBulk](#createlocationbulk)
    

* ## [FileStorage](#FileStorage)
  * Methods
    * [startUpload](#startupload)
    * [completeUpload](#completeupload)
    * [appStartUpload](#appstartupload)
    * [appCompleteUpload](#appcompleteupload)
    * [getSignUrls](#getsignurls)
    * [copyFiles](#copyfiles)
    * [appCopyFiles](#appcopyfiles)
    * [browse](#browse)
    * [browse](#browse)
    * [proxy](#proxy)
    

* ## [Share](#Share)
  * Methods
    * [createShortLink](#createshortlink)
    * [getShortLinks](#getshortlinks)
    * [getShortLinkByHash](#getshortlinkbyhash)
    * [updateShortLinkById](#updateshortlinkbyid)
    

* ## [Inventory](#Inventory)
  * Methods
    * [getJobsByCompany](#getjobsbycompany)
    * [updateJob](#updatejob)
    * [createJob](#createjob)
    * [getJobByCompanyAndIntegration](#getjobbycompanyandintegration)
    * [getJobConfigDefaults](#getjobconfigdefaults)
    * [getJobByCode](#getjobbycode)
    * [getJobCodeMetrics](#getjobcodemetrics)
    * [getJobCodesByCompanyAndIntegration](#getjobcodesbycompanyandintegration)
    

* ## [Configuration](#Configuration)
  * Methods
    * [getBuildConfig](#getbuildconfig)
    * [updateBuildConfig](#updatebuildconfig)
    * [getPreviousVersions](#getpreviousversions)
    * [getAppFeatures](#getappfeatures)
    * [updateAppFeatures](#updateappfeatures)
    * [getAppBasicDetails](#getappbasicdetails)
    * [updateAppBasicDetails](#updateappbasicdetails)
    * [getAppContactInfo](#getappcontactinfo)
    * [updateAppContactInfo](#updateappcontactinfo)
    * [getAppApiTokens](#getappapitokens)
    * [updateAppApiTokens](#updateappapitokens)
    * [getAppCompanies](#getappcompanies)
    * [getAppStores](#getappstores)
    * [getInventoryConfig](#getinventoryconfig)
    * [updateInventoryConfig](#updateinventoryconfig)
    * [partiallyUpdateInventoryConfig](#partiallyupdateinventoryconfig)
    * [getAppCurrencyConfig](#getappcurrencyconfig)
    * [updateAppCurrencyConfig](#updateappcurrencyconfig)
    * [getOrderingStoresByFilter](#getorderingstoresbyfilter)
    * [updateOrderingStoreConfig](#updateorderingstoreconfig)
    * [getDomains](#getdomains)
    * [addDomain](#adddomain)
    * [removeDomainById](#removedomainbyid)
    * [changeDomainType](#changedomaintype)
    * [getDomainStatus](#getdomainstatus)
    * [createApplication](#createapplication)
    * [getApplications](#getapplications)
    * [getApplicationById](#getapplicationbyid)
    * [getCurrencies](#getcurrencies)
    * [getDomainAvailibility](#getdomainavailibility)
    * [getIntegrationById](#getintegrationbyid)
    * [getAvailableOptIns](#getavailableoptins)
    * [getSelectedOptIns](#getselectedoptins)
    * [getIntegrationLevelConfig](#getintegrationlevelconfig)
    * [getIntegrationByLevelId](#getintegrationbylevelid)
    * [getLevelActiveIntegrations](#getlevelactiveintegrations)
    * [getBrandsByCompany](#getbrandsbycompany)
    * [getCompanyByBrands](#getcompanybybrands)
    * [getStoreByBrands](#getstorebybrands)
    * [getOtherSellerApplications](#getothersellerapplications)
    * [getOtherSellerApplicationById](#getothersellerapplicationbyid)
    * [optOutFromApplication](#optoutfromapplication)
    

* ## [Cart](#Cart)
  * Methods
    * [getCoupons](#getcoupons)
    * [createCoupon](#createcoupon)
    * [getCouponById](#getcouponbyid)
    * [updateCoupon](#updatecoupon)
    * [updateCouponPartially](#updatecouponpartially)
    

* ## [Rewards](#Rewards)
  * Methods
    * [getGiveaways](#getgiveaways)
    * [createGiveaway](#creategiveaway)
    * [getGiveawayByID](#getgiveawaybyid)
    * [updateGiveaway](#updategiveaway)
    * [getOffers](#getoffers)
    * [getOfferByName](#getofferbyname)
    * [updateOfferByName](#updateofferbyname)
    * [getUserAvailablePoints](#getuseravailablepoints)
    * [updateUserStatus](#updateuserstatus)
    * [getUserPointsHistory](#getuserpointshistory)
    

* ## [Analytics](#Analytics)
  * Methods
    * [getStatiscticsGroups](#getstatiscticsgroups)
    * [getStatiscticsGroupComponents](#getstatiscticsgroupcomponents)
    * [getComponentStatsCSV](#getcomponentstatscsv)
    * [getComponentStatsPDF](#getcomponentstatspdf)
    * [getComponentStats](#getcomponentstats)
    * [getAbandonCartList](#getabandoncartlist)
    * [getAbandonCartsCSV](#getabandoncartscsv)
    * [getAbandonCartDetail](#getabandoncartdetail)
    * [createExportJob](#createexportjob)
    * [getExportJobStatus](#getexportjobstatus)
    * [getLogsList](#getlogslist)
    * [searchLogs](#searchlogs)
    

* ## [Discount](#Discount)
  * Methods
    * [getDiscounts](#getdiscounts)
    * [createDiscount](#creatediscount)
    * [getDiscount](#getdiscount)
    * [updateDiscount](#updatediscount)
    * [validateDiscountFile](#validatediscountfile)
    * [downloadDiscountFile](#downloaddiscountfile)
    * [getValidationJob](#getvalidationjob)
    * [cancelValidationJob](#cancelvalidationjob)
    * [getDownloadJob](#getdownloadjob)
    * [cancelDownloadJob](#canceldownloadjob)
    

* ## [Partner](#Partner)
  * Methods
    * [addProxyPath](#addproxypath)
    * [removeProxyPath](#removeproxypath)
    

* ## [Webhook](#Webhook)
  * Methods
    * [getSubscribersByCompanyAndEventId](#getsubscribersbycompanyandeventid)
    * [registerSubscriberToEvent](#registersubscribertoevent)
    * [updateSubscriberConfig](#updatesubscriberconfig)
    


---



## Common


#### getLocations
Get countries, states, cities



```swift
common.getLocations(locationType: locationType, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| locationType | String? | no | Provide location type to query on |   
| id | String? | no | Field is optional when location_type is country. If querying for state, provide id of country. If querying for city, provide id of state. |  





*Returned Response:*




[Locations](#Locations)

Success






---




## Lead


#### getTickets
Gets the list of company level tickets and/or ticket filters depending on query params



```swift
lead.getTickets(companyId: companyId, items: items, filters: filters, q: q, status: status, priority: priority, category: category, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID for which the data will be returned |   
| items | Bool? | no | Decides that the reponse will contain the list of tickets |   
| filters | Bool? | no | Decides that the reponse will contain the ticket filters |   
| q | String? | no | Search through ticket titles and description |   
| status | String? | no | Filter tickets on status |   
| priority | PriorityEnum? | no | Filter tickets on priority |   
| category | String? | no | Filter tickets on category |   
| pageNo | Int? | no | The page number to navigate through the given set of results. |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



Gets the list of company level tickets and/or ticket filters

*Returned Response:*




[TicketList](#TicketList)

Success






---


#### createTicket
Creates a company level ticket



```swift
lead.createTicket(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID for which the data will be returned |  
| body | AddTicketPayload |  no  | Request body |


Creates a company level ticket

*Returned Response:*




[Ticket](#Ticket)

Success






---


#### getTickets
Gets the list of Application level Tickets and/or ticket filters depending on query params



```swift
lead.getTickets(companyId: companyId, applicationId: applicationId, items: items, filters: filters, q: q, status: status, priority: priority, category: category) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for which the data will be returned |   
| items | Bool? | no | Decides that the reponse will contain the list of tickets |   
| filters | Bool? | no | Decides that the reponse will contain the ticket filters |   
| q | String? | no | Search through ticket titles and description |   
| status | String? | no | Filter tickets on status |   
| priority | PriorityEnum? | no | Filter tickets on priority |   
| category | String? | no | Filter tickets on category |  



Gets the list of Application level Tickets and/or ticket filters

*Returned Response:*




[TicketList](#TicketList)

Success






---


#### getTicket
Retreives ticket details of a company level ticket with ticket ID



```swift
lead.getTicket(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID for which the data will be returned |   
| id | String? | no | Tiket ID of the ticket to be fetched |  



Retreives ticket details of a company level ticket

*Returned Response:*




[Ticket](#Ticket)

Success






---


#### editTicket
Edits ticket details of a company level ticket



```swift
lead.editTicket(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID for ticket |   
| id | String? | no | Ticket ID of ticket to be edited |  
| body | EditTicketPayload |  no  | Request body |


Edits ticket details of a company level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes

*Returned Response:*




[Ticket](#Ticket)

Success






---


#### getTicket
Retreives ticket details of a application level ticket



```swift
lead.getTicket(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for which the data will be returned |   
| id | String? | no | Tiket ID of the ticket to be fetched |  



Retreives ticket details of a application level ticket with ticket ID

*Returned Response:*




[Ticket](#Ticket)

Success






---


#### editTicket
Edits ticket details of a application level ticket



```swift
lead.editTicket(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for ticket |   
| id | String? | no | Ticket ID of ticket to be edited |  
| body | EditTicketPayload |  no  | Request body |


Edits ticket details of a application level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes

*Returned Response:*




[Ticket](#Ticket)

Success






---


#### createHistory
Create history for specific company level ticket



```swift
lead.createHistory(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID for ticket |   
| id | String? | no | Ticket ID for which history is created |  
| body | TicketHistoryPayload |  no  | Request body |


Create history for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Returned Response:*




[TicketHistory](#TicketHistory)

Success






---


#### getTicketHistory
Gets history list for specific company level ticket



```swift
lead.getTicketHistory(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID for ticket |   
| id | String? | no | Ticket ID for which history is to be fetched |  



Gets history list for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Returned Response:*




[TicketHistoryList](#TicketHistoryList)

Success






---


#### getFeedbacks
Gets a list of feedback submitted against that ticket



```swift
lead.getFeedbacks(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID for ticket |   
| id | String? | no | Ticket ID for which feedbacks are to be fetched |  



Gets a list of feedback submitted against that ticket

*Returned Response:*




[TicketFeedbackList](#TicketFeedbackList)

Success






---


#### submitFeedback
Submit a response for feeback form against that ticket



```swift
lead.submitFeedback(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID for ticket |   
| id | String? | no | Ticket ID for which feedback is to be submitted |  
| body | TicketFeedbackPayload |  no  | Request body |


Submit a response for feeback form against that ticket

*Returned Response:*




[TicketFeedback](#TicketFeedback)

Success






---


#### createHistory
Create history for specific application level ticket



```swift
lead.createHistory(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for ticket |   
| id | String? | no | Ticket ID for which history is created |  
| body | TicketHistoryPayload |  no  | Request body |


Create history for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Returned Response:*




[TicketHistory](#TicketHistory)

Success






---


#### getTicketHistory
Gets history list for specific application level ticket



```swift
lead.getTicketHistory(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of application |   
| applicationId | String? | no | Application ID for ticket |   
| id | String? | no | Ticket ID for which history is to be fetched |  



Gets history list for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Returned Response:*




[TicketHistoryList](#TicketHistoryList)

Success






---


#### getCustomForm
Get specific custom form using it's slug



```swift
lead.getCustomForm(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for the form |   
| slug | String? | no | Slug of form whose response is getting submitted |  



Get specific custom form using it's slug, this is used to view the form.

*Returned Response:*




[CustomForm](#CustomForm)

Success






---


#### editCustomForm
Edit the given custom form



```swift
lead.editCustomForm(companyId: companyId, applicationId: applicationId, slug: slug, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for the form |   
| slug | String? | no | Slug of form whose response is getting submitted |  
| body | EditCustomFormPayload |  no  | Request body |


Edit the given custom form field such as adding or deleting input, assignee, title, decription, notification and polling information.

*Returned Response:*




[CustomForm](#CustomForm)

Success






---


#### getCustomForms
Get list of custom form



```swift
lead.getCustomForms(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for the form |  



Get list of custom form for given application

*Returned Response:*




[CustomFormList](#CustomFormList)

Success






---


#### createCustomForm
Creates a new custom form



```swift
lead.createCustomForm(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for the form |  
| body | CreateCustomFormPayload |  no  | Request body |


Creates a new custom form for given application

*Returned Response:*




[CustomForm](#CustomForm)

Success






---


#### getTokenForVideoRoom
Get Token to join a specific Video Room using it's unqiue name



```swift
lead.getTokenForVideoRoom(companyId: companyId, uniqueName: uniqueName) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id for video room |   
| uniqueName | String? | no | Unique name of video room |  



Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.

*Returned Response:*




[GetTokenForVideoRoomResponse](#GetTokenForVideoRoomResponse)

Success






---


#### getTokenForVideoRoom
Get Token to join a specific Video Room using it's unqiue name



```swift
lead.getTokenForVideoRoom(companyId: companyId, applicationId: applicationId, uniqueName: uniqueName) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for video room |   
| uniqueName | String? | no | Unique name of video room |  



Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.

*Returned Response:*




[GetTokenForVideoRoomResponse](#GetTokenForVideoRoomResponse)

Success






---


#### getVideoParticipants
Get participants of a specific Video Room using it's unique name



```swift
lead.getVideoParticipants(companyId: companyId, uniqueName: uniqueName) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id for video room |   
| uniqueName | String? | no | Unique name of Video Room |  



Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.

*Returned Response:*




[GetParticipantsInsideVideoRoomResponse](#GetParticipantsInsideVideoRoomResponse)

Success






---


#### getVideoParticipants
Get participants of a specific Video Room using it's unique name



```swift
lead.getVideoParticipants(companyId: companyId, applicationId: applicationId, uniqueName: uniqueName) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for video room |   
| uniqueName | String? | no | Unique name of Video Room |  



Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.

*Returned Response:*




[GetParticipantsInsideVideoRoomResponse](#GetParticipantsInsideVideoRoomResponse)

Success






---


#### openVideoRoom
Open a video room.



```swift
lead.openVideoRoom(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for video room |  
| body | CreateVideoRoomPayload |  no  | Request body |


Open a video room.

*Returned Response:*




[CreateVideoRoomResponse](#CreateVideoRoomResponse)

Success






---


#### closeVideoRoom
Close the video room and force all participants to leave.



```swift
lead.closeVideoRoom(companyId: companyId, applicationId: applicationId, uniqueName: uniqueName) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |   
| applicationId | String? | no | Application ID for video room |   
| uniqueName | String? | no | Unique name of Video Room |  



Close the video room and force all participants to leave.

*Returned Response:*




[CloseVideoRoomResponse](#CloseVideoRoomResponse)

Success






---




## Feedback


#### getAttributes
Get list of attribute data



```swift
feedback.getAttributes(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| pageNo | Int? | no | pagination page no |   
| pageSize | Int? | no | pagination page size |  



Provides a list of all attribute data.

*Returned Response:*




[FeedbackAttributes](#FeedbackAttributes)

ok






---


#### getCustomerReviews
Get list of customer reviews [admin]



```swift
feedback.getCustomerReviews(companyId: companyId, applicationId: applicationId, id: id, entityId: entityId, entityType: entityType, userId: userId, media: media, rating: rating, attributeRating: attributeRating, facets: facets, sort: sort, next: next, start: start, limit: limit, count: count, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
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






---


#### updateApprove
update approve details



```swift
feedback.updateApprove(companyId: companyId, applicationId: applicationId, reviewId: reviewId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| reviewId | String? | no | review id |  
| body | ApproveRequest |  yes  | Request body |


The is used to update approve details like status and description text

*Returned Response:*




[UpdateResponse](#UpdateResponse)

ok






---


#### getHistory
get history details



```swift
feedback.getHistory(companyId: companyId, applicationId: applicationId, reviewId: reviewId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| reviewId | String? | no | review id |  



The is used to get the history details like status and description text

*Returned Response:*




[[ActivityDump]](#[ActivityDump])

ok






---


#### getApplicationTemplates
Get list of templates



```swift
feedback.getApplicationTemplates(companyId: companyId, applicationId: applicationId, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| pageId | String? | no | pagination page id |   
| pageSize | Int? | no | pagination page size |  



Get all templates of application

*Returned Response:*




[TemplateGetResponse](#TemplateGetResponse)

Success






---


#### createTemplate
Create a new template



```swift
feedback.createTemplate(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |  
| body | TemplateRequestList |  yes  | Request body |


Create a new template for review with following data:
- Enable media, rating and review
- Rating - active/inactive/selected rate choices, attributes, text on rate, comment for each rate, type
- Review - header, title, description, image and video meta, enable votes

*Returned Response:*




[InsertResponse](#InsertResponse)

Success






---


#### getTemplateById
Get a template by ID



```swift
feedback.getTemplateById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| id | String? | no | template id |  



Get the template for product or l3 type by ID

*Returned Response:*




[Template](#Template)

Success






---


#### updateTemplate
Update a template's status



```swift
feedback.updateTemplate(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| id | String? | no | template id |  
| body | UpdateTemplateRequest |  yes  | Request body |


Update existing template status, active/archive

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success






---


#### updateTemplateStatus
Update a template's status



```swift
feedback.updateTemplateStatus(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| id | String? | no | template id |  
| body | UpdateTemplateStatusRequest |  yes  | Request body |


Update existing template status, active/archive

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success






---




## Theme


#### getAllPages
Get all pages of a theme



```swift
theme.getAllPages(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID |   
| applicationId | String? | no | Application ID |   
| themeId | String? | no | ID of the theme to be retrieved |  



Use this API to retrieve all the available pages of a theme by its ID.

*Returned Response:*




[AllAvailablePageSchema](#AllAvailablePageSchema)

Success. Returns an array all the pages of the theme. Refer `AllAvailablePageSchema` for more details.






---


#### createPage
Create a page 



```swift
theme.createPage(companyId: companyId, applicationId: applicationId, themeId: themeId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID |   
| applicationId | String? | no | Application ID |   
| themeId | String? | no | ID of the theme |  
| body | AvailablePageSchema |  no  | Request body |


Use this API to create a page for a theme by its ID.

*Returned Response:*




[AvailablePageSchema](#AvailablePageSchema)

Success. Returns the page of the theme. Refer `AvailablePageSchema` for more details.






---


#### updateMultiplePages
Update multiple pages of a theme



```swift
theme.updateMultiplePages(companyId: companyId, applicationId: applicationId, themeId: themeId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID |   
| applicationId | String? | no | Application ID |   
| themeId | String? | no | ID of the theme to be retrieved |  
| body | AllAvailablePageSchema |  no  | Request body |


Use this API to update multiple pages of a theme by its ID.

*Returned Response:*




[AllAvailablePageSchema](#AllAvailablePageSchema)

Success. Returns an array all the pages of the theme. Refer `AllAvailablePageSchema` for more details.






---


#### getPage
Get page of a theme



```swift
theme.getPage(companyId: companyId, applicationId: applicationId, themeId: themeId, pageValue: pageValue) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID |   
| applicationId | String? | no | Application ID |   
| themeId | String? | no | ID of the theme to be retrieved |   
| pageValue | String? | no | Value of the page to be retrieved |  



Use this API to retrieve a page of a theme.

*Returned Response:*




[AvailablePageSchema](#AvailablePageSchema)

Success. Returns an object of the page.  Refer `AvailablePageSchema` for more details.






---


#### updatePage
Updates a page 



```swift
theme.updatePage(companyId: companyId, applicationId: applicationId, themeId: themeId, pageValue: pageValue, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID |   
| applicationId | String? | no | Application ID |   
| themeId | String? | no | ID of the theme |   
| pageValue | String? | no | Value of the page to be updated |  
| body | AvailablePageSchema |  no  | Request body |


Use this API to update a page for a theme by its ID.

*Returned Response:*




[AvailablePageSchema](#AvailablePageSchema)

Success. Returns a the page of the theme. Refer `AvailablePageSchema` for more details.






---


#### deletePage
Deletes a page 



```swift
theme.deletePage(companyId: companyId, applicationId: applicationId, themeId: themeId, pageValue: pageValue) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID |   
| applicationId | String? | no | Application ID |   
| themeId | String? | no | ID of the theme |   
| pageValue | String? | no | Value of the page to be updated |  



Use this API to delete a page for a theme by its ID and page_value.

*Returned Response:*




[AvailablePageSchema](#AvailablePageSchema)

Success. Returns a the page of the theme. Refer `AvailablePageSchema` for more details.






---


#### getThemeLibrary
Get a list of themes from the theme library



```swift
theme.getThemeLibrary(companyId: companyId, applicationId: applicationId, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10.  |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |  



Theme library is a personalized collection of themes that are chosen and added from the available themes. Use this API to fetch a list of themes from the library along with their configuration details. 

*Returned Response:*




[ThemesListingResponseSchema](#ThemesListingResponseSchema)

Success. Refer `ThemesListingResponseSchema` for more details.






---


#### addToThemeLibrary
Add a theme to the theme library



```swift
theme.addToThemeLibrary(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  
| body | AddThemeRequestSchema |  no  | Request body |


Theme library is a personalized collection of themes that are chosen and added from the available themes. Use this API to choose a theme and add it to the theme library.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---


#### applyTheme
Apply a theme



```swift
theme.applyTheme(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  
| body | AddThemeRequestSchema |  no  | Request body |


Use this API to apply a theme to the website.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---


#### isUpgradable
Checks if theme is upgradable



```swift
theme.isUpgradable(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | no | Theme ID |  



There's always a possibility that new features get added to a theme. Use this API to check if the applied theme has an upgrade available.

*Returned Response:*




[UpgradableThemeSchema](#UpgradableThemeSchema)

Success. If the boolean value of `upgrade` returns **true**, the theme can be upgraded. Refer `UpgradableThemeSchema` for more details.






---


#### upgradeTheme
Upgrade a theme



```swift
theme.upgradeTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | no | ID allotted to the theme. |  



Use this API to upgrade the current theme to its latest version.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Upgrades the theme and shares the details of the new version in the response. Refer `ThemesSchema` for more details.






---


#### getPublicThemes
Get all public themes



```swift
theme.getPublicThemes(companyId: companyId, applicationId: applicationId, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10.  |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |  



Use this API to get a list of free themes that you can apply to your website.

*Returned Response:*




[ThemesListingResponseSchema](#ThemesListingResponseSchema)

Success. Refer `ThemesListingResponseSchema` for more details.






---


#### createTheme
Create a new theme



```swift
theme.createTheme(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  
| body | ThemesSchema |  no  | Request body |


Themes improve the look and appearance of a website. Use this API to create a theme.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Theme






---


#### getAppliedTheme
Get the applied theme



```swift
theme.getAppliedTheme(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  



Use this API to retrieve the theme that is currently applied to the website along with its details.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---


#### getFonts
Get all the supported fonts in a theme



```swift
theme.getFonts(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  



Font is a collection of characters with a similar design. Use this API to retrieve a list of website fonts.

*Returned Response:*




[FontsSchema](#FontsSchema)

Success. Refer `FontsSchema` for more details.






---


#### getThemeById
Gets theme by id



```swift
theme.getThemeById(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | no | ID allotted to the theme. |  



Use this API to retrieve the details of a specific theme by using its ID.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---


#### updateTheme
Update a theme



```swift
theme.updateTheme(companyId: companyId, applicationId: applicationId, themeId: themeId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | no | ID allotted to the theme. |  
| body | ThemesSchema |  no  | Request body |


Use this API to edit an existing theme. You can customize the website font, sections, images, styles, and many more.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---


#### deleteTheme
Delete a theme



```swift
theme.deleteTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | no | ID allotted to the theme. |  



Use this API to delete a theme from the theme library.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---


#### getThemeForPreview
Get a theme preview



```swift
theme.getThemeForPreview(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | no | ID allotted to the theme. |  



A theme can be previewed before applying it. Use this API to retrieve the theme preview by using its ID.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---


#### publishTheme
Publish a theme



```swift
theme.publishTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | no | ID allotted to the theme. |  



Use this API to publish a theme that is either newly created or edited.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---


#### unpublishTheme
Unpublish a theme



```swift
theme.unpublishTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | no | ID allotted to the theme. |  



Use this API to remove an existing theme from the list of available themes.

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---


#### archiveTheme
Archive a theme



```swift
theme.archiveTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | no | ID allotted to the theme. |  



Use this API to store an existing theme but not delete it so that it can be used in future if required. 

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---


#### unarchiveTheme
Unarchive a theme



```swift
theme.unarchiveTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | no | ID allotted to the theme. |  



Use this API to restore an archived theme and bring it back for editing or publishing. 

*Returned Response:*




[ThemesSchema](#ThemesSchema)

Success. Refer `ThemesSchema` for more details.






---




## User


#### getCustomers
Get a list of customers



```swift
user.getCustomers(companyId: companyId, applicationId: applicationId, q: q, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| q | String? | no | The search query. Mobile number or email ID of a customer. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1.  |  



Use this API to retrieve a list of customers who have registered in the application.

*Returned Response:*




[CustomerListResponseSchema](#CustomerListResponseSchema)

Success. Refer `CustomerListResponseSchema` for more details.






---


#### searchUsers
Search an existing user.



```swift
user.searchUsers(companyId: companyId, applicationId: applicationId, q: q) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| q | String? | no | The search query. Mobile number or email ID of a customer. |  



Use this API to retrieve an existing user from a list.

*Returned Response:*




[UserSearchResponseSchema](#UserSearchResponseSchema)

Success. Returns first name, last name, emails, phone number and gender of the user. Refer `UserSearchResponseSchema` for more details.






---


#### createUser
Create user



```swift
user.createUser(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID |   
| applicationId | String? | no | Application ID |  
| body | CreateUserRequestSchema |  yes  | Request body |


Create user

*Returned Response:*




[CreateUserResponseSchema](#CreateUserResponseSchema)

User create






---


#### updateUser
Update user



```swift
user.updateUser(companyId: companyId, applicationId: applicationId, userId: userId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID |   
| applicationId | String? | no | Application ID |   
| userId | String? | no | User ID |  
| body | UpdateUserRequestSchema |  yes  | Request body |


Update user

*Returned Response:*




[CreateUserResponseSchema](#CreateUserResponseSchema)

User update






---


#### createUserSession
Create user session



```swift
user.createUserSession(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID |   
| applicationId | String? | no | Application ID |  
| body | CreateUserSessionRequestSchema |  yes  | Request body |


Create user session

*Returned Response:*




[CreateUserSessionResponseSchema](#CreateUserSessionResponseSchema)

Create user session






---


#### getPlatformConfig
Get platform configurations



```swift
user.getPlatformConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  



Use this API to get all the platform configurations such as mobile image, desktop image, social logins, and all other text.

*Returned Response:*




[PlatformSchema](#PlatformSchema)

Success. Returns a JSON object containing the all the platform configurations. Refer `PlatformSchema` for more details.






---


#### updatePlatformConfig
Update platform configurations



```swift
user.updatePlatformConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  
| body | PlatformSchema |  yes  | Request body |


Use this API to edit the existing platform configurations such as mobile image, desktop image, social logins, and all other text.

*Returned Response:*




[PlatformSchema](#PlatformSchema)

Success. Returns a JSON object with the updated platform configurations. Refer `PlatformSchema` for more details.






---




## Content


#### getAnnouncementsList
Get a list of announcements



```swift
content.getAnnouncementsList(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Announcements are useful to highlight a message or information on top of a webpage. Use this API to retrieve a list of announcements.	

*Returned Response:*




[GetAnnouncementListSchema](#GetAnnouncementListSchema)

Success. Refer `GetAnnouncementListSchema` for more details.






---


#### createAnnouncement
Create an announcement



```swift
content.createAnnouncement(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  
| body | AdminAnnouncementSchema |  yes  | Request body |


Announcements are useful to highlight a message or information on top of a webpage. Use this API to create an announcement.

*Returned Response:*




[CreateAnnouncementSchema](#CreateAnnouncementSchema)

Success. Refer `CreateAnnouncementSchema` for more details.






---


#### getAnnouncementById
Get announcement by ID



```swift
content.getAnnouncementById(companyId: companyId, applicationId: applicationId, announcementId: announcementId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| announcementId | String? | no | ID allotted to the announcement. |  



Use this API to retrieve an announcement and its details such as the target platform and pages on which it's applicable

*Returned Response:*




[AdminAnnouncementSchema](#AdminAnnouncementSchema)

Success. Refer `AdminAnnouncementSchema` for more details.






---


#### updateAnnouncement
Update an announcement



```swift
content.updateAnnouncement(companyId: companyId, applicationId: applicationId, announcementId: announcementId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| announcementId | String? | no | ID allotted to the announcement. |  
| body | AdminAnnouncementSchema |  yes  | Request body |


Use this API to edit an existing announcement and its details such as the target platform and pages on which it's applicable

*Returned Response:*




[CreateAnnouncementSchema](#CreateAnnouncementSchema)

Success. Refer `CreateAnnouncementSchema` for more details.






---


#### updateAnnouncementSchedule
Update the schedule and the publish status of an announcement



```swift
content.updateAnnouncementSchedule(companyId: companyId, applicationId: applicationId, announcementId: announcementId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| announcementId | String? | no | ID allotted to the announcement. |  
| body | ScheduleSchema |  yes  | Request body |


Use this API to edit the duration, i.e. start date-time and end date-time of an announcement. Moreover, you can enable/disable an announcement using this API.

*Returned Response:*




[CreateAnnouncementSchema](#CreateAnnouncementSchema)

Success. Refer `CreateAnnouncementSchema` for more details.






---


#### deleteAnnouncement
Delete announcement by id



```swift
content.deleteAnnouncement(companyId: companyId, applicationId: applicationId, announcementId: announcementId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| announcementId | String? | no | ID allotted to the announcement. |  



Use this API to delete an existing announcement.

*Returned Response:*




[CreateAnnouncementSchema](#CreateAnnouncementSchema)

Success.






---


#### createBlog
Create a blog



```swift
content.createBlog(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  
| body | BlogRequest |  yes  | Request body |


Use this API to create a blog.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success. Refer `BlogSchema` for more details.






---


#### getBlogs
Get blogs



```swift
content.getBlogs(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Use this API to get a list of blogs along with their details, such as the title, reading time, publish status, feature image, tags, author, etc.

*Returned Response:*




[BlogGetResponse](#BlogGetResponse)

Success. Refer `BlogGetResponse` for more details.






---


#### updateBlog
Update a blog



```swift
content.updateBlog(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to the blog. |  
| body | BlogRequest |  yes  | Request body |


Use this API to update the details of an existing blog which includes title, feature image, content, SEO details, expiry, etc.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success.






---


#### deleteBlog
Delete blogs



```swift
content.deleteBlog(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to the blog. |  



Use this API to delete a blog.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success.






---


#### getComponentById
Get components of a blog



```swift
content.getComponentById(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| slug | String? | no | A short, human-readable, URL-friendly identifier of a blog page. You can get slug value of a blog from `getBlogs` API. |  



Use this API to retrieve the components of a blog, such as title, slug, feature image, content, schedule, publish status, author, etc.

*Returned Response:*




[BlogSchema](#BlogSchema)

Success. Returns a a JSON object with components. Refer `BlogSchema` for more details.






---


#### getFaqCategories
Get a list of FAQ categories



```swift
content.getFaqCategories(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  



FAQs can be divided into categories. Use this API to get a list of FAQ categories.

*Returned Response:*




[GetFaqCategoriesSchema](#GetFaqCategoriesSchema)

Success. Refer `GetFaqCategoriesSchema` for more details.






---


#### getFaqCategoryBySlugOrId
Get an FAQ category by slug or id



```swift
content.getFaqCategoryBySlugOrId(companyId: companyId, applicationId: applicationId, idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| idOrSlug | String? | no | ID or the slug allotted to an FAQ category. Slug is a short, human-readable, URL-friendly identifier of an object. You can get slug value of an FAQ category from `getFaqCategories` API. |  



FAQs can be divided into categories. Use this API to get an FAQ categories using its slug or ID.

*Returned Response:*




[GetFaqCategoryBySlugSchema](#GetFaqCategoryBySlugSchema)

Success. Refer `GetFaqCategoryBySlugSchema` for more details.






---


#### createFaqCategory
Create an FAQ category



```swift
content.createFaqCategory(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  
| body | CreateFaqCategoryRequestSchema |  no  | Request body |


FAQs help users to solve an issue or know more about a process. FAQs can be categorized separately, for e.g. some questions can be related to payment, some could be related to purchase, shipping, navigating, etc. Use this API to create an FAQ category.

*Returned Response:*




[CreateFaqCategorySchema](#CreateFaqCategorySchema)

Success.






---


#### updateFaqCategory
Update an FAQ category



```swift
content.updateFaqCategory(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to an FAQ category. |  
| body | UpdateFaqCategoryRequestSchema |  no  | Request body |


Use this API to edit an existing FAQ category.

*Returned Response:*




[CreateFaqCategorySchema](#CreateFaqCategorySchema)

Success.






---


#### deleteFaqCategory
Delete an FAQ category



```swift
content.deleteFaqCategory(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to an FAQ category. |  



Use this API to delete an FAQ category.

*Returned Response:*




[FaqSchema](#FaqSchema)

Success.






---


#### getFaqsByCategoryIdOrSlug
Get question and answers within an FAQ category



```swift
content.getFaqsByCategoryIdOrSlug(companyId: companyId, applicationId: applicationId, idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| idOrSlug | String? | no | ID or the slug allotted to an FAQ category. Slug is a short, human-readable, URL-friendly identifier of an object. You can get slug value of an FAQ category from `getFaqCategories` API. |  



Use this API to retrieve all the commonly asked question and answers belonging to an FAQ category.

*Returned Response:*




[GetFaqSchema](#GetFaqSchema)

Success. Refer `GetFaqSchema` for more details.






---


#### addFaq
Create an FAQ



```swift
content.addFaq(companyId: companyId, applicationId: applicationId, categoryId: categoryId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| categoryId | String? | no | ID allotted to an FAQ category. |  
| body | CreateFaqSchema |  no  | Request body |


FAQs help users to solve an issue or know more about a process. Use this API to create an FAQ for a given FAQ category.

*Returned Response:*




[CreateFaqResponseSchema](#CreateFaqResponseSchema)

Success.






---


#### updateFaq
Update an FAQ



```swift
content.updateFaq(companyId: companyId, applicationId: applicationId, categoryId: categoryId, faqId: faqId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| categoryId | String? | no | ID allotted to an FAQ category. |   
| faqId | String? | no | ID allotted to an FAQ. |  
| body | CreateFaqSchema |  no  | Request body |


Use this API to edit an existing FAQ.

*Returned Response:*




[CreateFaqResponseSchema](#CreateFaqResponseSchema)

Success.






---


#### deleteFaq
Delete an FAQ



```swift
content.deleteFaq(companyId: companyId, applicationId: applicationId, categoryId: categoryId, faqId: faqId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| categoryId | String? | no | ID allotted to an FAQ category. |   
| faqId | String? | no | ID allotted to an FAQ. |  



Use this API to delete an existing FAQ.

*Returned Response:*




[CreateFaqResponseSchema](#CreateFaqResponseSchema)

Success.






---


#### getFaqByIdOrSlug
Get an FAQ



```swift
content.getFaqByIdOrSlug(companyId: companyId, applicationId: applicationId, idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| idOrSlug | String? | no | ID or the slug allotted to an FAQ category. Slug is a short, human-readable, URL-friendly identifier of an object. You can get slug value of an FAQ category from `getFaqCategories` API. |  



Use this API to retrieve a specific FAQ. You will get the question and answer of that FAQ.

*Returned Response:*




[CreateFaqResponseSchema](#CreateFaqResponseSchema)

Success. Refer `CreateFaqResponseSchema` for more details.






---


#### getLandingPages
Get landing pages



```swift
content.getLandingPages(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Landing page is the first page that a prospect lands upon while visiting a website. Use this API to fetch a list of landing pages.

*Returned Response:*




[LandingPageGetResponse](#LandingPageGetResponse)

Success. Refer `LandingPageGetResponse` for more details.






---


#### createLandingPage
Create a landing page



```swift
content.createLandingPage(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  
| body | LandingPageSchema |  yes  | Request body |


Landing page is the first page that a prospect lands upon while visiting a website. Use this API to create a landing page.

*Returned Response:*




[LandingPageSchema](#LandingPageSchema)

Success.






---


#### updateLandingPage
Update a landing page



```swift
content.updateLandingPage(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to a landing page. |  
| body | LandingPageSchema |  yes  | Request body |


Use this API to edit the details of an existing landing page.

*Returned Response:*




[LandingPageSchema](#LandingPageSchema)

Success.






---


#### deleteLandingPage
Delete a landing page



```swift
content.deleteLandingPage(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to a landing page. |  



Use this API to delete an existing landing page.

*Returned Response:*




[LandingPageSchema](#LandingPageSchema)

Success.






---


#### getLegalInformation
Get legal information



```swift
content.getLegalInformation(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  



Use this API to get the legal information of an application, which includes Policy, Terms and Conditions, Shipping Policy and FAQ regarding the application.

*Returned Response:*




[ApplicationLegal](#ApplicationLegal)

Success. Refer `ApplicationLegal` for more details.






---


#### updateLegalInformation
Save legal information



```swift
content.updateLegalInformation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  
| body | ApplicationLegal |  yes  | Request body |


Use this API to edit, update and save the legal information of an application, which includes Policy, Terms and Conditions, Shipping Policy and FAQ regarding the application.

*Returned Response:*




[ApplicationLegal](#ApplicationLegal)

Success. Refer `ApplicationLegal` for more details.






---


#### getNavigations
Get navigations



```swift
content.getNavigations(companyId: companyId, applicationId: applicationId, devicePlatform: devicePlatform, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| devicePlatform | String? | no | Filter navigations by platform. Acceptable values are: web, android, ios, all |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Use this API to fetch the navigations details which includes the items of the navigation pane. It also shows the orientation, links, sub-navigations, etc.

*Returned Response:*




[NavigationGetResponse](#NavigationGetResponse)

Success. Refer `NavigationGetResponse` for more details.






---


#### createNavigation
Create a navigation



```swift
content.createNavigation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  
| body | NavigationRequest |  yes  | Request body |


Navigation is the arrangement of navigational items to ease the accessibility of resources for users on a website. Use this API to create a navigation.

*Returned Response:*




[NavigationSchema](#NavigationSchema)

Success.






---


#### getDefaultNavigations
Get default navigations



```swift
content.getDefaultNavigations(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  



On any website (application), there are navigations that are present by default. Use this API to retrieve those default navigations.

*Returned Response:*




[DefaultNavigationResponse](#DefaultNavigationResponse)

Success. Refer `DefaultNavigationResponse` for more details.






---


#### getNavigationBySlug
Get a navigation by slug



```swift
content.getNavigationBySlug(companyId: companyId, applicationId: applicationId, slug: slug, devicePlatform: devicePlatform) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| slug | String? | no | A short, human-readable, URL-friendly identifier of a navigation. You can get slug value of a navigation from `getNavigations` API. |   
| devicePlatform | String? | no | Filter navigations by platform. Acceptable values are: web, android, ios, all |  



Use this API to retrieve a navigation by its slug.

*Returned Response:*




[NavigationSchema](#NavigationSchema)

Success. Refer `NavigationSchema` for more details.






---


#### updateNavigation
Update a navigation



```swift
content.updateNavigation(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to the navigation. |  
| body | NavigationRequest |  yes  | Request body |


Use this API to edit the details of an existing navigation.

*Returned Response:*




[NavigationSchema](#NavigationSchema)

Success.






---


#### deleteNavigation
Delete a navigation



```swift
content.deleteNavigation(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to the navigation. |  



Use this API to delete an existing navigation.

*Returned Response:*




[NavigationSchema](#NavigationSchema)

Success.






---


#### getPageMeta
Get page meta



```swift
content.getPageMeta(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  



Use this API to get the meta of custom pages (blog, page) and default system pages (e.g. home/brand/category/collection).

*Returned Response:*




[PageMetaSchema](#PageMetaSchema)

Success. Refer `PageMetaSchema` for more details.






---


#### getPageSpec
Get page spec



```swift
content.getPageSpec(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  



Use this API to get the specifications of a page, such as page type, display name, params and query.

*Returned Response:*




[PageSpec](#PageSpec)

Success. Refer `PageSpec` for more details.






---


#### createPage
Create a page



```swift
content.createPage(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  
| body | PageRequest |  yes  | Request body |


Use this API to create a custom page using a title, seo, publish status, feature image, tags, meta, etc.

*Returned Response:*




[PageSchema](#PageSchema)

Success. Refer `PageSchema` for more details.






---


#### getPages
Get a list of pages



```swift
content.getPages(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



Use this API to retrieve a list of pages.

*Returned Response:*




[PageGetResponse](#PageGetResponse)

Success. Refer `PageGetResponse` for more details.






---


#### createPagePreview
Create a page preview



```swift
content.createPagePreview(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  
| body | PageRequest |  yes  | Request body |


Use this API to create a page preview to check the appearance of a custom page.

*Returned Response:*




[PageSchema](#PageSchema)

Success. Refer `PageSchema` for more details.






---


#### updatePagePreview
Change the publish status of a page



```swift
content.updatePagePreview(companyId: companyId, applicationId: applicationId, slug: slug, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| slug | String? | no | A short, human-readable, URL-friendly identifier of a page. You can get slug value of a page from `getPages` API. |  
| body | PagePublishRequest |  yes  | Request body |


Use this API to change the publish status of an existing page. Allows you to publish and unpublish the page.

*Returned Response:*




[PageSchema](#PageSchema)

Success.






---


#### updatePage
Update a page



```swift
content.updatePage(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to the page. |  
| body | PageSchema |  yes  | Request body |


Use this API to edit the details of an existing page, such as its title, seo, publish status, feature image, tags, schedule, etc.

*Returned Response:*




[PageSchema](#PageSchema)

Success. Refer `PageSchema` for more details.






---


#### deletePage
Delete a page



```swift
content.deletePage(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to the page. |  



Use this API to delete an existing page.

*Returned Response:*




[PageSchema](#PageSchema)

Success.






---


#### getPageBySlug
Get pages by component Id



```swift
content.getPageBySlug(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| slug | String? | no | A short, human-readable, URL-friendly identifier of a page. You can get slug value of a page from `getPages` API. |  



Use this API to retrieve the components of a page, such as its title, seo, publish status, feature image, tags, schedule, etc.

*Returned Response:*




[PageSchema](#PageSchema)

Success. Returns a JSON object of components. Refer `PageSchema` for more details.






---


#### getSEOConfiguration
Get SEO configuration of an application



```swift
content.getSEOConfiguration(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  



Use this API to know how the SEO is configured in the application. This includes the sitemap, robot.txt, custom meta tags, etc.

*Returned Response:*




[SeoComponent](#SeoComponent)

Success. Refer `SeoComponent` for more details.






---


#### updateSEOConfiguration
Update SEO of application



```swift
content.updateSEOConfiguration(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  
| body | SeoComponent |  yes  | Request body |


Use this API to edit the SEO details of an application. This includes the sitemap, robot.txt, custom meta tags, etc.

*Returned Response:*




[SeoSchema](#SeoSchema)

Success. Refer `SeoSchema` for more details.






---


#### getSlideshows
Get slideshows



```swift
content.getSlideshows(companyId: companyId, applicationId: applicationId, devicePlatform: devicePlatform, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| devicePlatform | String? | no | Filter slideshows by platform. Acceptable values are: web, android, ios and all |   
| pageNo | Int? | no | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | no | The number of items to retrieve in each page. Default value is 10. |  



A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to fetch a list of slideshows.

*Returned Response:*




[SlideshowGetResponse](#SlideshowGetResponse)

Success. Refer `SlideshowGetResponse` for more details.






---


#### createSlideshow
Create a slideshow



```swift
content.createSlideshow(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |  
| body | SlideshowRequest |  yes  | Request body |


A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to create a slideshow.

*Returned Response:*




[SlideshowSchema](#SlideshowSchema)

Success. Refer `SlideshowSchema` for more details.






---


#### getSlideshowBySlug
Get slideshow by slug



```swift
content.getSlideshowBySlug(companyId: companyId, applicationId: applicationId, slug: slug, devicePlatform: devicePlatform) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| slug | String? | no | A short, human-readable, URL-friendly identifier of a slideshow. You can get slug value of a page from `getSlideshows` API. |   
| devicePlatform | String? | no | Filter slideshows by platform. Acceptable values are: web, android, ios and all |  



Use this API to retrieve the details of a slideshow by its slug.

*Returned Response:*




[SlideshowSchema](#SlideshowSchema)

Success. Refer `SlideshowSchema` for more details.






---


#### updateSlideshow
Update a slideshow



```swift
content.updateSlideshow(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to the slideshow. |  
| body | SlideshowRequest |  yes  | Request body |


Use this API to edit the details of an existing slideshow.

*Returned Response:*




[SlideshowSchema](#SlideshowSchema)

Success. Refer `SlideshowSchema` for more details.






---


#### deleteSlideshow
Delete a slideshow



```swift
content.deleteSlideshow(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | no | Numeric ID allotted to an application created within a business account. |   
| id | String? | no | ID allotted to the slideshow. |  



Use this API to delete an existing slideshow.

*Returned Response:*




[SlideshowSchema](#SlideshowSchema)

Success.






---


#### getSupportInformation
Get support information



```swift
content.getSupportInformation(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  



Use this API to get the contact details for customer support, including emails and phone numbers.

*Returned Response:*




[Support](#Support)

Success. Refer `Support` for more details.






---


#### updateSupportInformation
Update the support data of an application



```swift
content.updateSupportInformation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  
| body | Support |  yes  | Request body |


Use this API to edit the existing contact details for customer support, including emails and phone numbers.

*Returned Response:*




[Support](#Support)

Success. Refer `Support` for more details.






---


#### updateInjectableTag
Update a tag



```swift
content.updateInjectableTag(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  
| body | CreateTagRequestSchema |  no  | Request body |


Use this API to edit the details of an existing tag. This includes the tag name, tag type (css/js), url and position of the tag.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success.






---


#### deleteAllInjectableTags
Delete tags in application



```swift
content.deleteAllInjectableTags(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  



Use this API to delete all the existing tags at once.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success.






---


#### getInjectableTags
Get all the tags in an application



```swift
content.getInjectableTags(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  



Use this API to get all the CSS and JS injected in the application in the form of tags.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success. Refer `TagsSchema` for more details.






---


#### addInjectableTag
Add a tag



```swift
content.addInjectableTag(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  
| body | CreateTagRequestSchema |  no  | Request body |


CSS and JS can be injected in the application (website) with the help of tags. Use this API to create such tags by entering the tag name, tag type (css/js), url and position of the tag.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success.






---


#### removeInjectableTag
Remove a tag



```swift
content.removeInjectableTag(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |  
| body | RemoveHandpickedSchema |  no  | Request body |


Use this API to delete an existing tag.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success.






---


#### editInjectableTag
Edit a tag by id



```swift
content.editInjectableTag(companyId: companyId, applicationId: applicationId, tagId: tagId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | no | Alphanumeric ID allotted to an application created within a business account. |   
| tagId | String? | no | ID allotted to the tag. |  
| body | UpdateHandpickedSchema |  no  | Request body |


Use this API to edit the details of an existing tag by its ID.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success.






---




## Assignment


#### createPickupLocation




```swift
assignment.createPickupLocation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  
| body | PickupPointSchema |  no  | Request body |


Create a new Pickup point for an application.


*Returned Response:*




[Success](#Success)

Success Response - Store Updated






---


#### getPickupLocation




```swift
assignment.getPickupLocation(q: q, pageNo: pageNo, pageSize: pageSize, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | Search query |   
| pageNo | Int? | no | Request a page number |   
| pageSize | Int? | no | Request a page size |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  



Update list of pickup points for an application.


*Returned Response:*




[PickupPointResponse](#PickupPointResponse)

Success Response






---


#### updatePickupLocation




```swift
assignment.updatePickupLocation(id: id, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | Double? | no | Pickup Point ID |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  
| body | PickupPointSchema |  no  | Request body |


Update Pickup Point for an application. Pickup Point once created
can be updated using this API. 'x-application-id'm and request body are required to trigger
a successful update.


*Returned Response:*




[Success](#Success)

Success Response - Store Updated






---


#### getPickupLocationById




```swift
assignment.getPickupLocationById(id: id, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | Double? | no | Pickup Point Id |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  



This API returns Pickup point data for an id. Returns not found if no data exists for the
store id passed.


*Returned Response:*




[PickupPointSchema](#PickupPointSchema)

Success Response






---


#### createPickupConfiguration




```swift
assignment.createPickupConfiguration(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  
| body | PickupConfiguration |  no  | Request body |


Create a new pickup configuration for an application id. Only one configuration can be
created per application id.


*Returned Response:*




[Success](#Success)

Success Response - Store Updated






---


#### getPickupConfiguration




```swift
assignment.getPickupConfiguration(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  



Let pickup configuration for an application. z-application-id is required in
the header to fetch the data.


*Returned Response:*




[PickupResponse](#PickupResponse)

Success Response






---


#### getAllocationConfiguration




```swift
assignment.getAllocationConfiguration(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  



Get Shipping configuration for an application. Returns the global shipping configuration
including shipping priority and default strategy, etc. Every application can have one set of
configuration each. The endpoint requires an application id to get the data.


*Returned Response:*




[ShippingResponse](#ShippingResponse)

Success Response






---


#### createAllocationConfiguration




```swift
assignment.createAllocationConfiguration(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  
| body | ShippingSchema |  no  | Request body |


Create a new Shipping configuration for an application The configuration is for
all the stores under an application. There can be only one configuration for an
application i.e, for an application configuration can be created only once.


*Returned Response:*




[Success](#Success)

Success Response - Store Updated






---


#### updateAllocationConfiguration




```swift
assignment.updateAllocationConfiguration(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  
| body | ShippingSchema |  no  | Request body |


Update Shipping configuration for an application. Application configuration once created
can be updated using this API. 'x-application-id'm and request body are required to trigger
a successful update.


*Returned Response:*




[Success](#Success)

Success Response - Store Updated






---


#### getAllocationLocations




```swift
assignment.getAllocationLocations(q: q, pageNo: pageNo, pageSize: pageSize, type: type, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | Search query |   
| pageNo | Int? | no | Request a page number |   
| pageSize | Int? | no | Request a page size |   
| type | String? | no | Type can be 'standard' or 'advanced' |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  



List Stores of an application. Two types of stores are listed,
some having allocation types as standard and others, advanced.
API has support for pagination, filter by type and search by name.


*Returned Response:*




[StoreListResponse](#StoreListResponse)

Success Response






---


#### getAllocationLocationById




```swift
assignment.getAllocationLocationById(id: id, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | Double? | no | Store Id |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  



This API returns store data for an id. Returns not found if no data exists for the
store id passed. The data is returned from sixspeed database which includes only the
shipping configuration of the stores including store id and app id.


*Returned Response:*




[StoreResponse](#StoreResponse)

Success Response






---


#### updateAllocationLocation




```swift
assignment.updateAllocationLocation(id: id, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | Double? | no | Store Id |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  
| body | StoreSchema |  no  | Request body |


A store configuration once created can be updated via this API. Store id in request params
and udpated request body are required to successfully update the store data.


*Returned Response:*




[Success](#Success)

Success Response - Store Updated






---


#### createAllocationLocation




```swift
assignment.createAllocationLocation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  
| body | StoreSchema |  no  | Request body |


Create a new store shipping configuratiion. The configuration is stored into the
sixspeed database. One one store data can be created for one store id. Ther can be one
default configuration and multiple non-default ones. The default is not binded with product
tags while others are required to be.


*Returned Response:*




[Success](#Success)

Success Response - Store Updated






---


#### getDestinationZones




```swift
assignment.getDestinationZones(q: q, pageNo: pageNo, pageSize: pageSize, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| q | String? | no | Search query |   
| pageNo | Int? | no | Request a page number |   
| pageSize | Int? | no | Request a page size |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  



Get a list of zones created, where every zone has a unique name and id. They can be
of three different types, radius, pincode and country.


*Returned Response:*




[ZoneListResponse](#ZoneListResponse)

Success Response






---


#### postDestinationZone




```swift
assignment.postDestinationZone(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  
| body | ZoneSchema |  no  | Request body |


This API lets you create a zone which can be used further be mapped with store
configuration rules to defined a shipping rule. Either of the three details need to
be passed, zone_detail, pincode and region.


*Returned Response:*




[Success](#Success)

Success Response - Zone Created






---


#### getDestinationZoneById




```swift
assignment.getDestinationZoneById(id: id, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | Double? | no | Store Id |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  



Returns zone data for the specified zone id. Id is the required parameter and returns
not found if no data is found for the passed zone id.


*Returned Response:*




[ZoneSchema](#ZoneSchema)

Success Response






---


#### updateDestinationZone




```swift
assignment.updateDestinationZone(id: id, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| id | Double? | no | Store Id |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application Id |  
| body | ZoneSchema |  no  | Request body |


Zone once created can be updated using this API. Zone id and request body are the required
data to update a zone.


*Returned Response:*




[Success](#Success)

Success Response - Zone Updated






---




## Billing


#### createSubscriptionCharge
Create subscription charge



```swift
billing.createSubscriptionCharge(companyId: companyId, extensionId: extensionId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |   
| extensionId | String? | no | Extension _id |  
| body | CreateSubscriptionCharge |  no  | Request body |


Register subscription charge for a seller of your extension.

*Returned Response:*




[CreateSubscriptionResponse](#CreateSubscriptionResponse)

Success






---


#### getSubscriptionCharge
Get subscription charge details



```swift
billing.getSubscriptionCharge(companyId: companyId, extensionId: extensionId, subscriptionId: subscriptionId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |   
| extensionId | String? | no | Extension _id |   
| subscriptionId | String? | no | Subscription charge _id |  



Get created subscription charge details

*Returned Response:*




[EntitySubscription](#EntitySubscription)

Success






---


#### cancelSubscriptionCharge
Cancel subscription charge



```swift
billing.cancelSubscriptionCharge(companyId: companyId, extensionId: extensionId, subscriptionId: subscriptionId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |   
| extensionId | String? | no | Extension _id |   
| subscriptionId | String? | no | Subscription charge _id |  



Cancel subscription and attached charges.

*Returned Response:*




[EntitySubscription](#EntitySubscription)

Success






---


#### getInvoices
Get invoices



```swift
billing.getInvoices(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |  



Get invoices.

*Returned Response:*




[Invoices](#Invoices)

Success






---


#### getInvoiceById
Get invoice by id



```swift
billing.getInvoiceById(companyId: companyId, invoiceId: invoiceId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |   
| invoiceId | String? | no | Invoice id |  



Get invoice by id.

*Returned Response:*




[Invoice](#Invoice)

Success






---


#### getCustomerDetail
Get subscription customer detail



```swift
billing.getCustomerDetail(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |  



Get subscription customer detail.

*Returned Response:*




[SubscriptionCustomer](#SubscriptionCustomer)

Success






---


#### upsertCustomerDetail
Upsert subscription customer detail



```swift
billing.upsertCustomerDetail(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |  
| body | SubscriptionCustomerCreate |  yes  | Request body |


Upsert subscription customer detail.

*Returned Response:*




[SubscriptionCustomer](#SubscriptionCustomer)

Success






---


#### getSubscription
Get current subscription detail



```swift
billing.getSubscription(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |  



If subscription is active then it will return is_enabled true and return subscription object. If subscription is not active then is_enabled false and message.


*Returned Response:*




[SubscriptionStatus](#SubscriptionStatus)

Success






---


#### getFeatureLimitConfig
Get subscription subscription limits



```swift
billing.getFeatureLimitConfig(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |  



Get subscription subscription limits.

*Returned Response:*




[SubscriptionLimit](#SubscriptionLimit)

Success






---


#### activateSubscriptionPlan
Activate subscription



```swift
billing.activateSubscriptionPlan(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |  
| body | SubscriptionActivateReq |  yes  | Request body |


It will activate subscription plan for customer

*Returned Response:*




[SubscriptionActivateRes](#SubscriptionActivateRes)

Success






---


#### cancelSubscriptionPlan
Cancel subscription



```swift
billing.cancelSubscriptionPlan(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |  
| body | CancelSubscriptionReq |  yes  | Request body |


It will cancel current active subscription.

*Returned Response:*




[CancelSubscriptionRes](#CancelSubscriptionRes)

Success






---




## Communication


#### getCampaigns
Get campaigns



```swift
communication.getCampaigns(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get campaigns

*Returned Response:*




[Campaigns](#Campaigns)

Success






---


#### createCampaign
Create campaign



```swift
communication.createCampaign(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |  
| body | CampaignReq |  yes  | Request body |


Create campaign

*Returned Response:*




[Campaign](#Campaign)

Success






---


#### getCampaignById
Get campaign by id



```swift
communication.getCampaignById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Campaign id |  



Get campaign by id

*Returned Response:*




[Campaign](#Campaign)

Success






---


#### updateCampaignById
Update campaign by id



```swift
communication.updateCampaignById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Campaign id |  
| body | CampaignReq |  yes  | Request body |


Update campaign by id

*Returned Response:*




[Campaign](#Campaign)

Success






---


#### getStatsOfCampaignById
Get stats of campaign by id



```swift
communication.getStatsOfCampaignById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Campaign id |  



Get stats of campaign by id

*Returned Response:*




[GetStats](#GetStats)

Success






---


#### getAudiences
Get audiences



```swift
communication.getAudiences(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get audiences

*Returned Response:*




[Audiences](#Audiences)

Success






---


#### createAudience
Create audience



```swift
communication.createAudience(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |  
| body | AudienceReq |  yes  | Request body |


Create audience

*Returned Response:*




[Audience](#Audience)

Success






---


#### getBigqueryHeaders
Get bigquery headers



```swift
communication.getBigqueryHeaders(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |  
| body | BigqueryHeadersReq |  yes  | Request body |


Get bigquery headers

*Returned Response:*




[BigqueryHeadersRes](#BigqueryHeadersRes)

Success






---


#### getAudienceById
Get audience by id



```swift
communication.getAudienceById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Audience id |  



Get audience by id

*Returned Response:*




[Audience](#Audience)

Success






---


#### updateAudienceById
Update audience by id



```swift
communication.updateAudienceById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Audience id |  
| body | AudienceReq |  yes  | Request body |


Update audience by id

*Returned Response:*




[Audience](#Audience)

Success






---


#### getNSampleRecordsFromCsv
Get n sample records from csv



```swift
communication.getNSampleRecordsFromCsv(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |  
| body | GetNRecordsCsvReq |  yes  | Request body |


Get n sample records from csv

*Returned Response:*




[GetNRecordsCsvRes](#GetNRecordsCsvRes)

Success






---


#### getEmailProviders
Get email providers



```swift
communication.getEmailProviders(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get email providers

*Returned Response:*




[EmailProviders](#EmailProviders)

Success






---


#### createEmailProvider
Create email provider



```swift
communication.createEmailProvider(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |  
| body | EmailProviderReq |  yes  | Request body |


Create email provider

*Returned Response:*




[EmailProvider](#EmailProvider)

Success






---


#### getEmailProviderById
Get email provider by id



```swift
communication.getEmailProviderById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Email provider id |  



Get email provider by id

*Returned Response:*




[EmailProvider](#EmailProvider)

Success






---


#### updateEmailProviderById
Update email provider by id



```swift
communication.updateEmailProviderById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Email provider id |  
| body | EmailProviderReq |  yes  | Request body |


Update email provider by id

*Returned Response:*




[EmailProvider](#EmailProvider)

Success






---


#### getEmailTemplates
Get email templates



```swift
communication.getEmailTemplates(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get email templates

*Returned Response:*




[EmailTemplates](#EmailTemplates)

Success






---


#### createEmailTemplate
Create email template



```swift
communication.createEmailTemplate(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |  
| body | EmailTemplateReq |  yes  | Request body |


Create email template

*Returned Response:*




[EmailTemplateRes](#EmailTemplateRes)

Success






---


#### getSystemEmailTemplates
Get system email templates



```swift
communication.getSystemEmailTemplates(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get system email templates

*Returned Response:*




[SystemEmailTemplates](#SystemEmailTemplates)

Success






---


#### getEmailTemplateById
Get email template by id



```swift
communication.getEmailTemplateById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Email template id |  



Get email template by id

*Returned Response:*




[EmailTemplate](#EmailTemplate)

Success






---


#### updateEmailTemplateById
Update email template by id



```swift
communication.updateEmailTemplateById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Email template id |  
| body | EmailTemplateReq |  yes  | Request body |


Update email template by id

*Returned Response:*




[EmailTemplateRes](#EmailTemplateRes)

Success






---


#### deleteEmailTemplateById
Delete email template by id



```swift
communication.deleteEmailTemplateById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Email template id |  



Delete email template by id

*Returned Response:*




[EmailTemplateDeleteSuccessRes](#EmailTemplateDeleteSuccessRes)

Success






---


#### getEventSubscriptions
Get event subscriptions



```swift
communication.getEventSubscriptions(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, populate: populate) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| populate | String? | no | populate fields |  



Get event subscriptions

*Returned Response:*




[EventSubscriptions](#EventSubscriptions)

Success






---


#### getJobs
Get jobs



```swift
communication.getJobs(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get jobs

*Returned Response:*




[Jobs](#Jobs)

Success






---


#### triggerCampaignJob
Trigger campaign job



```swift
communication.triggerCampaignJob(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |  
| body | TriggerJobRequest |  yes  | Request body |


Trigger campaign job

*Returned Response:*




[TriggerJobResponse](#TriggerJobResponse)

Success






---


#### getJobLogs
Get job logs



```swift
communication.getJobLogs(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get job logs

*Returned Response:*




[JobLogs](#JobLogs)

Success






---


#### getCommunicationLogs
Get communication logs



```swift
communication.getCommunicationLogs(companyId: companyId, applicationId: applicationId, pageId: pageId, pageSize: pageSize, sort: sort, query: query) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageId | String? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on _id |   
| query | [String: Any]? | no |  |  



Get communication logs

*Returned Response:*




[Logs](#Logs)

Success






---


#### getSystemNotifications
Get system notifications



```swift
communication.getSystemNotifications(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |  



Get system notifications

*Returned Response:*




[SystemNotifications](#SystemNotifications)

Success






---


#### getSmsProviders
Get sms providers



```swift
communication.getSmsProviders(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get sms providers

*Returned Response:*




[SmsProviders](#SmsProviders)

Success






---


#### createSmsProvider
Create sms provider



```swift
communication.createSmsProvider(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |  
| body | SmsProviderReq |  yes  | Request body |


Create sms provider

*Returned Response:*




[SmsProvider](#SmsProvider)

Success






---


#### getSmsProviderById
Get sms provider by id



```swift
communication.getSmsProviderById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Sms provider id |  



Get sms provider by id

*Returned Response:*




[SmsProvider](#SmsProvider)

Success






---


#### updateSmsProviderById
Update sms provider by id



```swift
communication.updateSmsProviderById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Sms provider id |  
| body | SmsProviderReq |  yes  | Request body |


Update sms provider by id

*Returned Response:*




[SmsProvider](#SmsProvider)

Success






---


#### getSmsTemplates
Get sms templates



```swift
communication.getSmsTemplates(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get sms templates

*Returned Response:*




[SmsTemplates](#SmsTemplates)

Success






---


#### createSmsTemplate
Create sms template



```swift
communication.createSmsTemplate(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |  
| body | SmsTemplateReq |  yes  | Request body |


Create sms template

*Returned Response:*




[SmsTemplateRes](#SmsTemplateRes)

Success






---


#### getSmsTemplateById
Get sms template by id



```swift
communication.getSmsTemplateById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Sms template id |  



Get sms template by id

*Returned Response:*




[SmsTemplate](#SmsTemplate)

Success






---


#### updateSmsTemplateById
Update sms template by id



```swift
communication.updateSmsTemplateById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Sms template id |  
| body | SmsTemplateReq |  yes  | Request body |


Update sms template by id

*Returned Response:*




[SmsTemplateRes](#SmsTemplateRes)

Success






---


#### deleteSmsTemplateById
Delete sms template by id



```swift
communication.deleteSmsTemplateById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| id | String? | no | Sms template id |  



Delete sms template by id

*Returned Response:*




[SmsTemplateDeleteSuccessRes](#SmsTemplateDeleteSuccessRes)

Success






---


#### getSystemSystemTemplates
Get system sms templates



```swift
communication.getSystemSystemTemplates(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company id |   
| applicationId | String? | no | Application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |   
| sort | [String: Any]? | no | To sort based on created_at |  



Get system sms templates

*Returned Response:*




[SystemSmsTemplates](#SystemSmsTemplates)

Success






---




## Payment


#### getBrandPaymentGatewayConfig
Get All Brand Payment Gateway Config Secret



```swift
payment.getBrandPaymentGatewayConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application id |  



Get All Brand Payment Gateway Config Secret

*Returned Response:*




[PaymentGatewayConfigResponse](#PaymentGatewayConfigResponse)

Refund Transfer Mode






---


#### saveBrandPaymentGatewayConfig
Save Config Secret For Brand Payment Gateway



```swift
payment.saveBrandPaymentGatewayConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application id |  
| body | PaymentGatewayConfigRequest |  no  | Request body |


Save Config Secret For Brand Payment Gateway

*Returned Response:*




[PaymentGatewayToBeReviewed](#PaymentGatewayToBeReviewed)

Save Config Secret For Brand Payment Gateway Success Response.






---


#### updateBrandPaymentGatewayConfig
Save Config Secret For Brand Payment Gateway



```swift
payment.updateBrandPaymentGatewayConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application id |  
| body | PaymentGatewayConfigRequest |  no  | Request body |


Save Config Secret For Brand Payment Gateway

*Returned Response:*




[PaymentGatewayToBeReviewed](#PaymentGatewayToBeReviewed)

Save Config Secret For Brand Payment Gateway Success Response.






---


#### getPaymentModeRoutes
Get All Valid Payment Options



```swift
payment.getPaymentModeRoutes(companyId: companyId, applicationId: applicationId, refresh: refresh, requestType: requestType) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application id |   
| refresh | Bool? | no |  |   
| requestType | String? | no |  |  



Use this API to get Get All Valid Payment Options for making payment

*Returned Response:*




[PaymentOptionsResponse](#PaymentOptionsResponse)

Success






---


#### getAllPayouts
Get All Payouts



```swift
payment.getAllPayouts(companyId: companyId, uniqueExternalId: uniqueExternalId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| uniqueExternalId | String? | no | Fetch payouts using unique external id |  



Get All Payouts

*Returned Response:*




[PayoutsResponse](#PayoutsResponse)

payouts response object






---


#### savePayout
Save Payout



```swift
payment.savePayout(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |  
| body | PayoutRequest |  no  | Request body |


Save Payout

*Returned Response:*




[PayoutResponse](#PayoutResponse)

save payout response object






---


#### updatePayout
Update Payout



```swift
payment.updatePayout(companyId: companyId, uniqueTransferNo: uniqueTransferNo, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| uniqueTransferNo | String? | no | Unique transfer id |  
| body | PayoutRequest |  no  | Request body |


Update Payout

*Returned Response:*




[UpdatePayoutResponse](#UpdatePayoutResponse)

save payout response object






---


#### activateAndDectivatePayout
Partial Update Payout



```swift
payment.activateAndDectivatePayout(companyId: companyId, uniqueTransferNo: uniqueTransferNo, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| uniqueTransferNo | String? | no | Unique transfer id |  
| body | UpdatePayoutRequest |  no  | Request body |


Partial Update Payout

*Returned Response:*




[UpdatePayoutResponse](#UpdatePayoutResponse)

save payout response object






---


#### deletePayout
Delete Payout



```swift
payment.deletePayout(companyId: companyId, uniqueTransferNo: uniqueTransferNo) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| uniqueTransferNo | String? | no | Unique transfer id |  



Delete Payout

*Returned Response:*




[DeletePayoutResponse](#DeletePayoutResponse)

delete payout response object






---


#### getSubscriptionPaymentMethod
List Subscription Payment Method



```swift
payment.getSubscriptionPaymentMethod(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |  



Get all  Subscription  Payment Method

*Returned Response:*




[SubscriptionPaymentMethodResponse](#SubscriptionPaymentMethodResponse)

List Subscription Payment Method Response






---


#### deleteSubscriptionPaymentMethod
Delete Subscription Payment Method



```swift
payment.deleteSubscriptionPaymentMethod(companyId: companyId, uniqueExternalId: uniqueExternalId, paymentMethodId: paymentMethodId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| uniqueExternalId | String? | no |  |   
| paymentMethodId | String? | no |  |  



Uses this api to Delete Subscription Payment Method

*Returned Response:*




[DeleteSubscriptionPaymentMethodResponse](#DeleteSubscriptionPaymentMethodResponse)

Delete Subscription Payment Method Response.






---


#### getSubscriptionConfig
List Subscription Config



```swift
payment.getSubscriptionConfig(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |  



Get all  Subscription Config details

*Returned Response:*




[SubscriptionConfigResponse](#SubscriptionConfigResponse)

List Subscription Config Response






---


#### saveSubscriptionSetupIntent
Save Subscription Setup Intent



```swift
payment.saveSubscriptionSetupIntent(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |  
| body | SaveSubscriptionSetupIntentRequest |  no  | Request body |


Uses this api to Save Subscription Setup Intent

*Returned Response:*




[SaveSubscriptionSetupIntentResponse](#SaveSubscriptionSetupIntentResponse)

Save Subscription Setup Intent Response.






---


#### addBeneficiaryDetails
Save bank details for cancelled/returned order



```swift
payment.addBeneficiaryDetails(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application id |  
| body | AddBeneficiaryDetailsRequest |  no  | Request body |


Use this API to save bank details for returned/cancelled order to refund amount in his account.

*Returned Response:*




[RefundAccountResponse](#RefundAccountResponse)

Success






---


#### verifyIfscCode
Ifsc Code Verification



```swift
payment.verifyIfscCode(companyId: companyId, ifscCode: ifscCode) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| ifscCode | String? | no |  |  



Get True/False for correct IFSC Code for adding bank details for refund

*Returned Response:*




[IfscCodeResponse](#IfscCodeResponse)

Bank details on correct Ifsc Code






---


#### getUserOrderBeneficiaries
List Order Beneficiary



```swift
payment.getUserOrderBeneficiaries(orderId: orderId, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String? | no |  |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application id |  



Get all active  beneficiary details added by the user for refund

*Returned Response:*




[OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

List Order Beneficiary






---


#### getUserBeneficiaries
List User Beneficiary



```swift
payment.getUserBeneficiaries(orderId: orderId, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| orderId | String? | no |  |   
| companyId | Int? | no | Company Id |   
| applicationId | String? | no | Application id |  



Get all active  beneficiary details added by the user for refund

*Returned Response:*




[OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

List User Beneficiary






---




## Order


#### shipmentStatusUpdate
Update status of Shipment



```swift
order.shipmentStatusUpdate(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |  
| body | UpdateShipmentStatusBody |  yes  | Request body |


Update Shipment Status

*Returned Response:*




[UpdateShipmentStatusResponse](#UpdateShipmentStatusResponse)

Success






---


#### activityStatus
Get Activity Status



```swift
order.activityStatus(companyId: companyId, bagId: bagId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| bagId | String? | no | Bag Id |  



Get Activity Status

*Returned Response:*




[GetActivityStatus](#GetActivityStatus)

Success






---


#### storeProcessShipmentUpdate
Update Store Process-Shipment



```swift
order.storeProcessShipmentUpdate(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |  
| body | UpdateProcessShipmenstRequestBody |  yes  | Request body |


Update Store Process-Shipment

*Returned Response:*




[UpdateProcessShipmenstRequestResponse](#UpdateProcessShipmenstRequestResponse)

Success






---


#### checkRefund
Check Refund is available or not



```swift
order.checkRefund(companyId: companyId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| shipmentId | String? | no | Shipment Id |  



Check Refund is available or not

*Returned Response:*




[[String: Any]](#[String: Any])

Success






---


#### getOrdersByCompanyId
Get Orders for company based on Company Id



```swift
order.getOrdersByCompanyId(companyId: companyId, pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, q: q, stage: stage, salesChannels: salesChannels, orderId: orderId, stores: stores, status: status, shortenUrls: shortenUrls, filterType: filterType) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| pageNo | String? | no | Current page number |   
| pageSize | String? | no | Page limit |   
| fromDate | String? | no | From Date |   
| toDate | String? | no | To Date |   
| q | String? | no | Keyword for Search |   
| stage | String? | no | Specefic Order Stage |   
| salesChannels | String? | no | Selected Sales Channel |   
| orderId | String? | no | Order Id |   
| stores | String? | no | Selected Stores |   
| status | String? | no | Status of order |   
| shortenUrls | Bool? | no | Shorten URL option |   
| filterType | String? | no | Filters |  



Get Orders

*Returned Response:*




[OrderListing](#OrderListing)

Success






---


#### getOrderDetails
Get Order Details for company based on Company Id and Order Id



```swift
order.getOrderDetails(companyId: companyId, orderId: orderId, next: next, previous: previous) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| orderId | String? | no | Order Id |   
| next | String? | no | Next |   
| previous | String? | no | Previous |  



Get Orders

*Returned Response:*




[OrderDetails](#OrderDetails)

Success






---


#### getPicklistOrdersByCompanyId
Get Orders for company based on Company Id



```swift
order.getPicklistOrdersByCompanyId(companyId: companyId, pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, q: q, stage: stage, salesChannels: salesChannels, orderId: orderId, stores: stores, status: status, shortenUrls: shortenUrls, filterType: filterType) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| pageNo | String? | no | Current page number |   
| pageSize | String? | no | Page limit |   
| fromDate | String? | no | From Date |   
| toDate | String? | no | To Date |   
| q | String? | no | Keyword for Search |   
| stage | String? | no | Specefic Order Stage |   
| salesChannels | String? | no | Selected Sales Channel |   
| orderId | String? | no | Order Id |   
| stores | String? | no | Selected Stores |   
| status | String? | no | Status of order |   
| shortenUrls | Bool? | no | Shorten URL option |   
| filterType | String? | no | Filters |  



Get Orders

*Returned Response:*




[OrderPicklistListing](#OrderPicklistListing)

Success






---


#### trackShipmentPlatform
Track Shipment by shipment id, for application based on application Id



```swift
order.trackShipmentPlatform(companyId: companyId, applicationId: applicationId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| shipmentId | String? | no | Shipment Id |  



Shipment Track

*Returned Response:*




[PlatformShipmentTrack](#PlatformShipmentTrack)

Success






---


#### trackOrder
Track Order by order id, for application based on application Id



```swift
order.trackOrder(companyId: companyId, applicationId: applicationId, orderId: orderId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| orderId | String? | no | Order Id |  



Order Track

*Returned Response:*




[PlatformOrderTrack](#PlatformOrderTrack)

Success






---


#### failedOrders
Get all failed orders application wise



```swift
order.failedOrders(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |  



Failed Orders

*Returned Response:*




[FailedOrders](#FailedOrders)

Success






---


#### reprocessOrder
Reprocess order by order id



```swift
order.reprocessOrder(companyId: companyId, applicationId: applicationId, orderId: orderId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| orderId | String? | no | Order Id |  



Order Reprocess

*Returned Response:*




[UpdateOrderReprocessResponse](#UpdateOrderReprocessResponse)

Success






---


#### updateShipment
Use this API to update the shipment using its shipment ID.



```swift
order.updateShipment(companyId: companyId, applicationId: applicationId, shipmentId: shipmentId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| shipmentId | String? | no | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  
| body | ShipmentUpdateRequest |  yes  | Request body |


Update the shipment

*Returned Response:*




[ShipmentUpdateResponse](#ShipmentUpdateResponse)

Success. Check the example shown below or refer `ShipmentUpdateRequest` for more details.






---


#### getPlatformShipmentReasons
Use this API to retrieve the issues that led to the cancellation of bags within a shipment.



```swift
order.getPlatformShipmentReasons(companyId: companyId, applicationId: applicationId, action: action) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| action | String? | no | Action |  



Get reasons behind full or partial cancellation of a shipment

*Returned Response:*




[ShipmentReasonsResponse](#ShipmentReasonsResponse)

Success. Check the example shown below or refer `ShipmentReasonsResponse` for more details.






---


#### getShipmentTrackDetails
Use this API to track a shipment using its shipment ID.



```swift
order.getShipmentTrackDetails(companyId: companyId, applicationId: applicationId, orderId: orderId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| orderId | String? | no | ID of the order. |   
| shipmentId | String? | no | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  



Track shipment

*Returned Response:*




[ShipmentTrackResponse](#ShipmentTrackResponse)

Success. Check the example shown below or refer `ShipmentTrackResponse` for more details.






---


#### getShipmentAddress
Use this API to get address of a shipment using its shipment ID and Address Category.



```swift
order.getShipmentAddress(companyId: companyId, shipmentId: shipmentId, addressCategory: addressCategory) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| shipmentId | String? | no | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| addressCategory | String? | no | Category of the address it falls into(billing or delivery). |  



Get Shipment Address

*Returned Response:*




[GetShipmentAddressResponse](#GetShipmentAddressResponse)

Success. Check the example shown below or refer `GetShipmentAddressResponse` for more details.






---


#### updateShipmentAddress
Use this API to update address of a shipment using its shipment ID and Address Category.



```swift
order.updateShipmentAddress(companyId: companyId, shipmentId: shipmentId, addressCategory: addressCategory, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| shipmentId | String? | no | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| addressCategory | String? | no | Category of the address it falls into(billing or delivery). |  
| body | UpdateShipmentAddressRequest |  yes  | Request body |


Update Shipment Address

*Returned Response:*




[UpdateShipmentAddressResponse](#UpdateShipmentAddressResponse)

Success. Check the example shown below or refer `UpdateShipmentAddressResponse` for more details.






---


#### getPing
Get Ping



```swift
order.getPing(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |  



Get Ping

*Returned Response:*




[GetPingResponse](#GetPingResponse)

Success






---


#### voiceCallback
Get Voice Callback



```swift
order.voiceCallback(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |  



Voice Callback

*Returned Response:*




[GetVoiceCallbackResponse](#GetVoiceCallbackResponse)

Success






---


#### voiceClickToCall
Get Voice Click to Call



```swift
order.voiceClickToCall(companyId: companyId, caller: caller, receiver: receiver) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| caller | String? | no | Caller contact number |   
| receiver | String? | no | Receiver contact number |  



Voice Click to Call

*Returned Response:*




[GetClickToCallResponse](#GetClickToCallResponse)

Success






---




## Catalog


#### deleteSearchKeywords
Delete a Search Keywords



```swift
catalog.deleteSearchKeywords(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | no | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  



Delete a keywords by it's id. Returns an object that tells whether the keywords was deleted successfully

*Returned Response:*




[DeleteResponse](#DeleteResponse)

Status object. Tells whether the operation was successful. See example below or refer `DeleteResponse`






---


#### getSearchKeywords
Get a Search Keywords Details



```swift
catalog.getSearchKeywords(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | no | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. |  



Get the details of a words by its `id`. If successful, returns a Collection resource in the response body specified in `GetSearchWordsDetailResponseSchema`

*Returned Response:*




[GetSearchWordsDetailResponse](#GetSearchWordsDetailResponse)

The Collection object. See example below or refer `GetSearchWordsDetailResponseSchema` for details






---


#### updateSearchKeywords
Update Search Keyword



```swift
catalog.updateSearchKeywords(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | no | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  
| body | CreateSearchKeyword |  yes  | Request body |


Update Search Keyword by its id. On successful request, returns the updated collection

*Returned Response:*




[GetSearchWordsData](#GetSearchWordsData)

The Collection object. See example below or refer `GetSearchWordsDataSchema` for details.






---


#### createCustomKeyword
Add a Custom Search Keywords



```swift
catalog.createCustomKeyword(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  
| body | CreateSearchKeyword |  yes  | Request body |


Create a Custom Search Keywords. See `CreateSearchKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateSearchKeywordSchema`

*Returned Response:*




[GetSearchWordsData](#GetSearchWordsData)

Get keyword object with id that is added. See example below or refer `GetSearchWordsDataSchema` for details






---


#### getAllSearchKeyword
List all Search Custom Keyword Listing



```swift
catalog.getAllSearchKeyword(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  



Custom Search Keyword allows you to map conditions with keywords to give you the ultimate results

*Returned Response:*




[GetSearchWordsResponse](#GetSearchWordsResponse)

List of custom search keywords. See example below or refer `GetSearchWordsResponseSchema` for details






---


#### deleteAutocompleteKeyword
Delete a Autocomplete Keywords



```swift
catalog.deleteAutocompleteKeyword(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | no | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  



Delete a keywords by it's id. Returns an object that tells whether the keywords was deleted successfully

*Returned Response:*




[DeleteResponse](#DeleteResponse)

Status object. Tells whether the operation was successful. See example below or refer `DeleteResponse`






---


#### getAutocompleteKeywordDetail
Get a Autocomplete Keywords Details



```swift
catalog.getAutocompleteKeywordDetail(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | no | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. |  



Get the details of a words by its `id`. If successful, returns a keywords resource in the response body specified in `GetAutocompleteWordsResponseSchema`

*Returned Response:*




[GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

The mapping object. See example below or refer `GetAutocompleteWordsResponseSchema` for details






---


#### updateAutocompleteKeyword
Create & Update Autocomplete Keyword



```swift
catalog.updateAutocompleteKeyword(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | no | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  
| body | CreateAutocompleteKeyword |  yes  | Request body |


Update a mapping by it's id. On successful request, returns the updated Keyword mapping

*Returned Response:*




[GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

The Mapping object. See example below or refer `GetAutocompleteWordsResponseSchema` for details.






---


#### createCustomAutocompleteRule
Add a Custom Autocomplete Keywords



```swift
catalog.createCustomAutocompleteRule(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  
| body | CreateAutocompleteKeyword |  yes  | Request body |


Create a Custom Autocomplete Keywords. See `CreateAutocompleteKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateAutocompleteKeywordSchema`

*Returned Response:*




[CreateAutocompleteWordsResponse](#CreateAutocompleteWordsResponse)

List of all the collections including the one you added. See example below or refer `CreateAutocompleteWordsResponseSchema` for details






---


#### getAutocompleteConfig
List all Autocomplete Keyword Listing



```swift
catalog.getAutocompleteConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  



Custom Autocomplete Keyword allows you to map conditions with keywords to give you the ultimate results

*Returned Response:*




[GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

List of custom autocomplete keywords. See example below or refer `GetAutocompleteWordsResponseSchema` for details






---


#### createProductBundle
Create Product Bundle



```swift
catalog.createProductBundle(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |  
| body | ProductBundleRequest |  yes  | Request body |


Create Product Bundle. See `ProductBundleRequest` for the request body parameter need to create a product bundle. On successful request, returns in `ProductBundleRequest` with id

*Returned Response:*




[GetProductBundleCreateResponse](#GetProductBundleCreateResponse)

Get bundle with id that is added. See example below or refer `GetProductBundleCreateResponse` for details






---


#### getProductBundle
List all Product Bundles



```swift
catalog.getProductBundle(companyId: companyId, q: q) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| q | String? | no | A search string that is searched with product bundle name. |  



Get all product bundles for a particular company

*Returned Response:*




[GetProductBundleListingResponse](#GetProductBundleListingResponse)

List of bundle configured for a company. See example below or refer `GetProductBundleListingResponse` for details






---


#### getProductBundleDetail
Get a particular Product Bundle details



```swift
catalog.getProductBundleDetail(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| id | String? | no | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. |  



Get a particular Bundle details by its `id`. If successful, returns a Product bundle resource in the response body specified in `GetProductBundleResponse`

*Returned Response:*




[GetProductBundleResponse](#GetProductBundleResponse)

The Collection object. See example below or refer `GetProductBundleResponse` for details






---


#### updateProductBundle
Update a Product Bundle



```swift
catalog.updateProductBundle(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| id | String? | no | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  
| body | ProductBundleUpdateRequest |  yes  | Request body |


Update a Product Bundle by its id. On successful request, returns the updated product bundle

*Returned Response:*




[GetProductBundleCreateResponse](#GetProductBundleCreateResponse)

The Collection object. See example below or refer `GetProductBundleCreateResponse` for details.






---


#### createSizeGuide
Create a size guide.



```swift
catalog.createSizeGuide(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company inside which the size guide is to be created. |  
| body | ValidateSizeGuide |  yes  | Request body |


This API allows to create a size guide associated to a brand.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getSizeGuides
Get list of size guides



```swift
catalog.getSizeGuides(companyId: companyId, active: active, q: q, tag: tag, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company for which the size guides are to be fetched. |   
| active | Bool? | no | filter size guide on basis of active, in-active |   
| q | String? | no | Query that is to be searched. |   
| tag | String? | no | to filter size guide on basis of tag. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |  



This API allows to view all the size guides associated to the seller.

*Returned Response:*




[ListSizeGuide](#ListSizeGuide)

Size guide object. See example below or refer `ListSizeGuide` for details






---


#### getSizeGuide
Get a single size guide.



```swift
catalog.getSizeGuide(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company associated to size guide. |   
| id | String? | no | Id of the size guide to be viewed. |  



This API helps to get data associated to a size guide.

*Returned Response:*




[SizeGuideResponse](#SizeGuideResponse)

Brand object. See example below or refer `SizeGuideResponseSchema` for details






---


#### updateSizeGuide
Edit a size guide.



```swift
catalog.updateSizeGuide(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company. |   
| id | String? | no | Mongo id of the size guide to be edited |  
| body | ValidateSizeGuide |  yes  | Request body |


This API allows to edit a size guide.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getCatalogConfiguration
Get configuration meta  details for catalog for admin panel



```swift
catalog.getCatalogConfiguration(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  



configuration meta  details for catalog.

*Returned Response:*




[GetCatalogConfigurationMetaData](#GetCatalogConfigurationMetaData)

configuration details for catalog. See example below or refer `GetCatalogConfigurationMetaDataSchema` for details






---


#### createConfigurationProductListing
Add configuration for products & listings



```swift
catalog.createConfigurationProductListing(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  
| body | AppConfiguration |  yes  | Request body |


Add configuration for products & listing.

*Returned Response:*




[GetAppCatalogConfiguration](#GetAppCatalogConfiguration)

success flag will tell whether the operation was successful.






---


#### getConfigurations
Get configured details for catalog



```swift
catalog.getConfigurations(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  



configured details for catalog.

*Returned Response:*




[GetAppCatalogConfiguration](#GetAppCatalogConfiguration)

Get application level configured catalog details. See example below or refer `GetAppCatalogConfigurationSchema` for details






---


#### createConfigurationByType
Add configuration for categories and brands



```swift
catalog.createConfigurationByType(companyId: companyId, applicationId: applicationId, type: type, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| type | String? | no | type can be brands, categories etc. |  
| body | AppConfiguration |  yes  | Request body |


Add configuration for categories & brands.

*Returned Response:*




[GetAppCatalogConfiguration](#GetAppCatalogConfiguration)

success flag will tell whether the operation was successful.






---


#### getConfigurationByType
Get configured details for catalog



```swift
catalog.getConfigurationByType(companyId: companyId, applicationId: applicationId, type: type) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| type | String? | no | type can be brands, categories etc. |  



configured details for catalog.

*Returned Response:*




[GetAppCatalogEntityConfiguration](#GetAppCatalogEntityConfiguration)

Get application level configured catalog details. See example below or refer `GetAppCatalogEntityConfigurationSchema` for details






---


#### getQueryFilters
Get query filters to configure a collection



```swift
catalog.getQueryFilters(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  



Get query filters to configure a collection

*Returned Response:*




[GetCollectionQueryOptionResponse](#GetCollectionQueryOptionResponse)

The attached items of an collection. See example below or refer `GetCollectionQueryOptionResponse` for details






---


#### createCollection
Add a Collection



```swift
catalog.createCollection(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  
| body | CreateCollection |  yes  | Request body |


Create a collection. See `CreateCollectionRequestSchema` for the list of attributes needed to create a collection and collections/query-options for the available options to create a collection. On successful request, returns a paginated list of collections specified in `CollectionCreateResponse`

*Returned Response:*




[CollectionCreateResponse](#CollectionCreateResponse)

List of all the collections including the one you added. See example below or refer `CollectionCreateResponse` for details






---


#### getAllCollections
List all the collections



```swift
catalog.getAllCollections(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  



A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections as specified in `CollectionListingSchema`

*Returned Response:*




[GetCollectionListingResponse](#GetCollectionListingResponse)

List of collections. See example below or refer `GetCollectionListingResponse` for details






---


#### getCollectionDetail
Get a particular collection



```swift
catalog.getCollectionDetail(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| slug | String? | no | A `slug` is a human readable, URL friendly unique identifier of an object. Pass the `slug` of the collection which you want to retrieve. |  



Get the details of a collection by its `slug`. If successful, returns a Collection resource in the response body specified in `CollectionDetailResponse`

*Returned Response:*




[CollectionDetailResponse](#CollectionDetailResponse)

The Collection object. See example below or refer `CollectionDetailResponse` for details






---


#### deleteCollection
Delete a Collection



```swift
catalog.deleteCollection(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | no | A `id` is a unique identifier of a collection. |  



Delete a collection by it's id. Returns an object that tells whether the collection was deleted successfully

*Returned Response:*




[DeleteResponse](#DeleteResponse)

Status object. Tells whether the operation was successful. See example below or refer `DeleteResponse`






---


#### updateCollection
Update a collection



```swift
catalog.updateCollection(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | no | A `id` is a unique identifier of a collection. |  
| body | UpdateCollection |  yes  | Request body |


Update a collection by it's id. On successful request, returns the updated collection

*Returned Response:*




[UpdateCollection](#UpdateCollection)

The Collection object. See example below or refer `UpdateCollectionSchema` for details.






---


#### addCollectionItems
Add items to a collection



```swift
catalog.addCollectionItems(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | no | A `id` is a unique identifier of a collection. |  
| body | CollectionItemRequest |  yes  | Request body |


Adds items to a collection specified by its `id`. See `CollectionItemRequest` for the list of attributes needed to add items to an collection.

*Returned Response:*




[UpdatedResponse](#UpdatedResponse)

Status object. Tells whether the operation was successful.






---


#### getCollectionItems
Get the items for a collection



```swift
catalog.getCollectionItems(companyId: companyId, applicationId: applicationId, id: id, sortOn: sortOn, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | no | A `id` is a unique identifier of a collection. |   
| sortOn | String? | no | Each response will contain sort_on param, which should be sent back to make pagination work. |   
| pageId | String? | no | Each response will contain next_id param, which should be sent back to make pagination work. |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



Get items from a collection specified by its `id`.

*Returned Response:*




[GetCollectionItemsResponse](#GetCollectionItemsResponse)

The attached items of an collection. See example below or refer `GetCollectionItemsResponseSchema` for details






---


#### getCatalogInsights
Analytics data of catalog and inventory.



```swift
catalog.getCatalogInsights(companyId: companyId, applicationId: applicationId, brand: brand) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| brand | String? | no | Brand slug |  



Catalog Insights api returns the count of catalog related data like products, brands, departments and categories that have been made live as per configuration of the app.

*Returned Response:*




[CatalogInsightResponse](#CatalogInsightResponse)

Response Data






---


#### getSellerInsights
Analytics data of catalog and inventory that are being cross-selled.



```swift
catalog.getSellerInsights(companyId: companyId, sellerAppId: sellerAppId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| sellerAppId | String? | no | Id of the seller application which is serving the invetory/catalog of the company |  



Analytics data of catalog and inventory that are being cross-selled.

*Returned Response:*




[CrossSellingResponse](#CrossSellingResponse)

Response Data






---


#### createMarketplaceOptin
Create/Update opt-in infomation.



```swift
catalog.createMarketplaceOptin(companyId: companyId, marketplace: marketplace, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | The company id for which the detail needs to be retrieved. |   
| marketplace | String? | no | The marketplace for which the detail needs to be retrieved. |  
| body | OptInPostRequest |  yes  | Request body |


Use this API to create/update opt-in information for given platform. If successful, returns data in the response body as specified in `OptInPostResponseSchema`

*Returned Response:*




[UpdatedResponse](#UpdatedResponse)

See example below or refer `UpdatedResponse` for details.






---


#### getMarketplaceOptinDetail
Get opt-in infomation.



```swift
catalog.getMarketplaceOptinDetail(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no |  |  



Use this API to fetch opt-in information for all the platforms. If successful, returns a logs in the response body as specified in `GetOptInPlatformSchema`

*Returned Response:*




[GetOptInPlatform](#GetOptInPlatform)

See example below or refer `GetOptInPlatformSchema` for details.






---


#### getCompanyDetail
Get the Company details.



```swift
catalog.getCompanyDetail(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | The company id for which the detail needs to be retrieved. |  



Get the details of the company associated with the given company_id passed.

*Returned Response:*




[OptinCompanyDetail](#OptinCompanyDetail)

See example below or refer `OptinCompanyDetailSchema` for details






---


#### getCompanyBrandDetail
Get the Company Brand details of Optin.



```swift
catalog.getCompanyBrandDetail(companyId: companyId, isActive: isActive, q: q, pageNo: pageNo, pageSize: pageSize, marketplace: marketplace) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | The company id for which the detail needs to be retrieved. |   
| isActive | Bool? | no | The is_active status for the optin id. |   
| q | Bool? | no | The search value to filter the list. |   
| pageNo | Int? | no | The number of page for the company id. |   
| pageSize | Int? | no | Number of records that can be seen on the page for the company id. |   
| marketplace | String? | no | The marketplace platform associated with the company id. |  



Get the details of the Brands associated with the given company_id passed.

*Returned Response:*




[OptinCompanyBrandDetailsView](#OptinCompanyBrandDetailsView)

See example below or refer `OptinCompanyBrandDetailsView` for details






---


#### getCompanyMetrics
Get the Company metrics



```swift
catalog.getCompanyMetrics(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | The company id for which the detail needs to be retrieved. |  



Get the Company metrics associated with the company ID passed.

*Returned Response:*




[OptinCompanyMetrics](#OptinCompanyMetrics)

See example below or refer `OptinCompanyMetrics` for details






---


#### getStoreDetail
Get the Store details.



```swift
catalog.getStoreDetail(companyId: companyId, q: q, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | The company id for which the detail needs to be retrieved. |   
| q | String? | no | The search related the store for the company id. |   
| pageNo | Int? | no | The number of page for the company id. |   
| pageSize | Int? | no | Number of records that can be seen on the page for the company id. |  



Get the details of the store associated with the company ID passed.

*Returned Response:*




[OptinStoreDetails](#OptinStoreDetails)

See example below or refer `OptinStoreDetailsSchema` for details






---


#### getGenderAttribute
Get gender attribute details



```swift
catalog.getGenderAttribute(companyId: companyId, attributeSlug: attributeSlug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company for which you want to view the genders |   
| attributeSlug | String? | no | slug of the attribute for which you want to view the genders |  



This API allows to view the gender attribute details.

*Returned Response:*




[GenderDetail](#GenderDetail)

Size guide object. See example below or refer `GenderDetailSchema` for details






---


#### listProductTemplateCategories
List Department specifiec product categories



```swift
catalog.listProductTemplateCategories(companyId: companyId, departments: departments, itemType: itemType) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| departments | String? | no | A `department` is name of a departments whose category needs to be listed. Can specify multiple departments. |   
| itemType | String? | no | An `item_type` is the type of item, it can be `set`, `standard`, `digital`, etc. |  



Allows you to list all product categories values for the departments specified

*Returned Response:*




[ProdcutTemplateCategoriesResponse](#ProdcutTemplateCategoriesResponse)

List of all categories attached to departments specified. See example below or refer `ProdcutTemplateCategoriesResponse` for details






---


#### listDepartmentsData
List all Departments



```swift
catalog.listDepartmentsData(companyId: companyId, pageNo: pageNo, pageSize: pageSize, name: name, search: search, isActive: isActive) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |   
| name | String? | no | Can search departments by passing name. |   
| search | String? | no | Can search departments by passing name of the department in search parameter. |   
| isActive | Bool? | no | Can query for departments based on whether they are active or inactive. |  



Allows you to list all departments, also can search using name and filter active and incative departments, and item type

*Returned Response:*




[DepartmentsResponse](#DepartmentsResponse)

List of departments data. See example below or refer `DepartmentsResponse` for details






---


#### getDepartmentData
Get specific departments details by passing in unique id of the department



```swift
catalog.getDepartmentData(companyId: companyId, uid: uid) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| uid | String? | no | A `uid` is a unique identifier of a department. |  



Allows you to get department data, by uid

*Returned Response:*




[DepartmentsResponse](#DepartmentsResponse)

Departments Data. See example below or refer `DepartmentsResponse` for details






---


#### listProductTemplate
List all Templates



```swift
catalog.listProductTemplate(companyId: companyId, departments: departments) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| departments | String? | no | A `departments` is the name of a particular department. |  



Allows you to list all product templates, also can filter by department

*Returned Response:*




[TemplatesResponse](#TemplatesResponse)

List of product templates. See example below or refer `TemplatesResponse` for details






---


#### validateProductTemplate
Validate Product Template Schema



```swift
catalog.validateProductTemplate(companyId: companyId, slug: slug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| slug | String? | no | A `slug` is a unique identifier for a particular template. |  



Allows you to list all product templates validation values for all the fields present in the database

*Returned Response:*




[TemplatesValidationResponse](#TemplatesValidationResponse)

List of fields and validation values fro each. See example below or refer `TemplatesValidationResponse` for details






---


#### downloadProductTemplateViews
Download Product Template View



```swift
catalog.downloadProductTemplateViews(companyId: companyId, slug: slug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| slug | String? | no | A `slug` is a unique identifier for a particular template. |  



Allows you to download product template data

*Returned Response:*




[String](#String)

CSV File of product template data. See example below or refer `TemplatesResponse` for details






---


#### downloadProductTemplateView
Download Product Template View



```swift
catalog.downloadProductTemplateView(companyId: companyId, itemType: itemType) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| itemType | String? | no | An `item_type` defines the type of item. |  



Allows you to download product template data

*Returned Response:*




[String](#String)

CSV File of product template data.






---


#### validateProductTemplateSchema
Validate Product Template Schema



```swift
catalog.validateProductTemplateSchema(companyId: companyId, itemType: itemType) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| itemType | String? | no | An `item_type` defines the type of item. The default value is standard. |  



Allows you to list all product templates validation values for all the fields present in the database

*Returned Response:*




[InventoryValidationResponse](#InventoryValidationResponse)

List of fields and validation values fro each. See example below or refer `InventoryValidationResponse` for details






---


#### listHSNCodes
List HSN Codes



```swift
catalog.listHSNCodes(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |  



Allows you to list all hsn Codes

*Returned Response:*




[HSNCodesResponse](#HSNCodesResponse)

List of all HSN Codes. See example below or refer `HSNCodesResponse` for details






---


#### listProductTemplateExportDetails
Allows you to list all product templates export list details



```swift
catalog.listProductTemplateExportDetails(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |  



Can view details including trigger data, task id , etc.

*Returned Response:*




[ProductDownloadsResponse](#ProductDownloadsResponse)

List of Product Downloads Data. See example below or refer `ProductDownloadsResponse` for details






---


#### listTemplateBrandTypeValues
Allows you to list all values for Templates, Brands or Type



```swift
catalog.listTemplateBrandTypeValues(companyId: companyId, filter: filter) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| filter | String? | no | A `filter` is the unique identifier of the type of value required. |  



The filter type query parameter defines what type of data to return. The type of query returns the valid values for the same

*Returned Response:*




[ProductConfigurationDownloads](#ProductConfigurationDownloads)

See example below or refer `ProductConfigurationDownloadsSchema` for details






---


#### createCategories
Create product categories



```swift
catalog.createCategories(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |  
| body | CategoryRequestBody |  yes  | Request body |


This API lets user create product categories

*Returned Response:*




[CategoryCreateResponse](#CategoryCreateResponse)

Category Meta. See example below or refer `CategoryCreateResponse` for details






---


#### listCategories
Get product categories list



```swift
catalog.listCategories(companyId: companyId, level: level, departments: departments, q: q, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| level | String? | no | Get category for multiple levels |   
| departments | String? | no | Get category for multiple departments filtered |   
| q | String? | no | Get multiple categories filtered by search string |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |  



This API gets meta associated to product categories.

*Returned Response:*




[CategoryResponse](#CategoryResponse)

Category Meta. See example below or refer `CategoryResponse` for details






---


#### getCategoryData
Get product category by uid



```swift
catalog.getCategoryData(companyId: companyId, uid: uid) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| uid | String? | no | Category unique id |  



This API gets meta associated to product categories.

*Returned Response:*




[SingleCategoryResponse](#SingleCategoryResponse)

Get Data for one category. See example below or refer `CategoryResponse` for details






---


#### updateCategory
Update product categories



```swift
catalog.updateCategory(companyId: companyId, uid: uid, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| uid | String? | no | Category unique id |  
| body | CategoryRequestBody |  yes  | Request body |


Update a product category using this apu

*Returned Response:*




[CategoryUpdateResponse](#CategoryUpdateResponse)

Category Meta. See example below or refer `CategoryUpdateResponse` for details






---


#### createProduct
Create a product.



```swift
catalog.createProduct(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company associated to product that is to be viewed. |  
| body | ProductCreateUpdate |  yes  | Request body |


This API allows to create product.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getProducts
Get product list



```swift
catalog.getProducts(companyId: companyId, brandIds: brandIds, categoryIds: categoryIds, departmentIds: departmentIds, q: q, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Double? | no | Get list of products filtered by company Id |   
| brandIds | [Double]? | no | Get multiple products filtered by Brand Ids |   
| categoryIds | [Double]? | no | Get multiple products filtered by Category Ids |   
| departmentIds | [Double]? | no | Get multiple products filtered by Department Ids |   
| q | String? | no | Get multiple products filtered by q string |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |  



This API gets meta associated to products.

*Returned Response:*




[ProductListingResponse](#ProductListingResponse)

Product Meta. See example below for details






---


#### deleteProduct
Delete a product.



```swift
catalog.deleteProduct(companyId: companyId, itemId: itemId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id of the company associated to product that is to be deleted. |   
| itemId | Int? | no | Id of the product to be updated. |  



This API allows to delete product.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getProduct
Get a single product.



```swift
catalog.getProduct(itemCode: itemCode, companyId: companyId, itemId: itemId, brandUid: brandUid, uid: uid) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemCode | String? | no | Item code of the product. |   
| companyId | Int? | no | Company Id of the product. |   
| itemId | Int? | no | Item Id of the product. |   
| brandUid | Int? | no | Brand Id of the product. |   
| uid | Int? | no | Id of the product. |  



This API helps to get data associated to a particular product.

*Returned Response:*




[Product](#Product)

Product object. See example below or refer `product.utils.format_product_response` for details






---


#### editProduct
Edit a product.



```swift
catalog.editProduct(companyId: companyId, itemId: itemId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company associated to product that is to be viewed. |   
| itemId | Int? | no | Id of the product to be updated. |  
| body | ProductCreateUpdate |  yes  | Request body |


This API allows to edit product.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getProductValidation
Validate product/size data



```swift
catalog.getProductValidation(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Double? | no | Validates data against given company |  



This API validates product data.

*Returned Response:*




[ValidateProduct](#ValidateProduct)

Validate Meta. See example below for details






---


#### getProductSize
Get a single product size.



```swift
catalog.getProductSize(itemCode: itemCode, companyId: companyId, itemId: itemId, brandUid: brandUid, uid: uid) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| itemCode | String? | no | Item code of the product size. |   
| companyId | Int? | no | Company Id of the product size. |   
| itemId | Int? | no | Item Id of the product size. |   
| brandUid | Int? | no | Brand Id of the product size. |   
| uid | Int? | no | Id of the product size. |  



This API helps to get data associated to a particular product size.

*Returned Response:*




[ProductListingResponse](#ProductListingResponse)

Product object. See example below for details






---


#### updateProductAssetsInBulk
Create a Bulk asset upload Job.



```swift
catalog.updateProductAssetsInBulk(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id in which assets to be uploaded. |  
| body | BulkJob |  yes  | Request body |


This API helps to create a bulk asset upload job.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getProductBulkUploadHistory
Get a list of all bulk product upload jobs.



```swift
catalog.getProductBulkUploadHistory(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id of of which Product Bulk Upload History to be obtained. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



This API helps to get bulk product upload jobs data.

*Returned Response:*




[ProductBulkRequestList](#ProductBulkRequestList)

List of bulk product upload jobs. See `BulkRequestGetSchema` for details






---


#### deleteProductBulkJob
Delete Bulk product job.



```swift
catalog.deleteProductBulkJob(companyId: companyId, batchId: batchId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id of the company associated to size that is to be deleted. |   
| batchId | Int? | no | Batch Id of the bulk product job to be deleted. |  



This API allows to delete bulk product job associated with company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### createProductsInBulk
Create products in bulk associated with given batch Id.



```swift
catalog.createProductsInBulk(companyId: companyId, batchId: batchId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id in which assets to be uploaded. |   
| batchId | String? | no | Batch Id in which assets to be uploaded. |  
| body | BulkProductRequest |  yes  | Request body |


This API helps to create products in bulk push to kafka for approval/creation.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getCompanyTags
Get a list of all tags associated with company.



```swift
catalog.getCompanyTags(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id of the product size. |  



This API helps to get tags data associated to a particular copmpany.

*Returned Response:*




[ProductTagsViewResponse](#ProductTagsViewResponse)

Tag List. See example below for details






---


#### createProductAssetsInBulk
Create a Bulk asset upload Job.



```swift
catalog.createProductAssetsInBulk(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id in which assets to be uploaded. |  
| body | ProductBulkAssets |  yes  | Request body |


This API helps to create a bulk asset upload job.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getProductAssetsInBulk
Get a list of all bulk asset jobs.



```swift
catalog.getProductAssetsInBulk(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id of the product size. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



This API helps to get bulk asset jobs data associated to a particular company.

*Returned Response:*




[BulkAssetResponse](#BulkAssetResponse)

List of bulk asset jobs List. See `BulkUtil.modify_batch_response` for details






---


#### deleteSize
Delete a Size associated with product.



```swift
catalog.deleteSize(companyId: companyId, itemId: itemId, size: size) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id of the company associated to size that is to be deleted. |   
| itemId | Int? | no | Item Id of the product associated with size to be deleted. |   
| size | Int? | no | size to be deleted. |  



This API allows to delete size associated with product.

*Returned Response:*




[ProductSizeDeleteResponse](#ProductSizeDeleteResponse)

Returns a success response






---


#### addInventory
Add Inventory for particular size and store.



```swift
catalog.addInventory(companyId: companyId, itemId: itemId, size: size, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company associated to product that is to be viewed. |   
| itemId | Double? | no | Item code of the product of which size is to be get. |   
| size | String? | no | Size in which inventory is to be added. |  
| body | InventoryRequest |  yes  | Request body |


This API allows add Inventory for particular size and store.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getInventoryBySize
Get Inventory for company



```swift
catalog.getInventoryBySize(companyId: companyId, itemId: itemId, size: size, pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company associated to product that is to be viewed. |   
| itemId | String? | no | Item code of the product of which size is to be get. |   
| size | String? | no | Size of which inventory is to get. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| q | String? | no | Search with help of store code. |  



This API allows get Inventory data for particular company grouped by size and store.

*Returned Response:*




[InventoryResponse](#InventoryResponse)

returns a list of all inventory grouped by size and store






---


#### getInventoryBySizeIdentifier
Get Inventory for company



```swift
catalog.getInventoryBySizeIdentifier(companyId: companyId, itemId: itemId, sizeIdentifier: sizeIdentifier, pageNo: pageNo, pageSize: pageSize, q: q, locationIds: locationIds) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company associated to product that is to be viewed. |   
| itemId | String? | no | Item code of the product of which size is to be get. |   
| sizeIdentifier | String? | no | Size Identifier (Seller Identifier or Primary Identifier) of which inventory is to get. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| q | String? | no | Search with help of store code. |   
| locationIds | [Int]? | no | Search by store ids. |  



This API allows get Inventory data for particular company grouped by size and store.

*Returned Response:*




[InventoryResponse](#InventoryResponse)

returns a list of all inventory grouped by size and store






---


#### deleteInventory
Delete a Inventory.



```swift
catalog.deleteInventory(companyId: companyId, size: size, itemId: itemId, locationId: locationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id of the company associated with Inventory that is to be deleted. |   
| size | String? | no | size that is to be deleted. |   
| itemId | Int? | no | Id of the product associated with Inventory to be deleted. |   
| locationId | Double? | no | Location ID of store of which inventory is to be deleted. |  



This API allows to delete inventory of a particular product for particular company.

*Returned Response:*




[InventoryDelete](#InventoryDelete)

Returns a success response






---


#### createBulkInventoryJob
Create a Bulk Inventory upload Job.



```swift
catalog.createBulkInventoryJob(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id in which Inventory to be uploaded. |  
| body | BulkJob |  yes  | Request body |


This API helps to create a bulk Inventory upload job.

*Returned Response:*




[CommonResponse](#CommonResponse)

Returns a success response






---


#### getInventoryBulkUploadHistory
Get a list of all bulk Inventory upload jobs.



```swift
catalog.getInventoryBulkUploadHistory(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id of of which Inventory Bulk Upload History to be obtained. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



This API helps to get bulk Inventory upload jobs data.

*Returned Response:*




[BulkInventoryGet](#BulkInventoryGet)

List of bulk Inventory upload jobs. See `BulkInventoryGetSchema` for details






---


#### deleteBulkInventoryJob
Delete Bulk Inventory job.



```swift
catalog.deleteBulkInventoryJob(companyId: companyId, batchId: batchId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id of the company of which bulk Inventory job is to be deleted. |   
| batchId | String? | no | Batch Id of the bulk delete job. |  



This API allows to delete bulk Inventory job associated with company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### createBulkInventory
Create products in bulk associated with given batch Id.



```swift
catalog.createBulkInventory(companyId: companyId, batchId: batchId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id in which Inventory is to be uploaded. |   
| batchId | String? | no | Batch Id of the bulk create job. |  
| body | InventoryBulkRequest |  yes  | Request body |


This API helps to create products in bulk push to kafka for approval/creation.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### createInventoryExportJob
Create a Inventory export Job.



```swift
catalog.createInventoryExportJob(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id in which assets to be uploaded. |  
| body | InventoryExportRequest |  yes  | Request body |


This API helps to create a Inventory export job.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getInventoryExport
Get Inventory export history.



```swift
catalog.getInventoryExport(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id in which assets to be uploaded. |  



This API helps to get Inventory export history.

*Returned Response:*




[InventoryExportJob](#InventoryExportJob)

Returns a list of inventory export jobs






---


#### exportInventoryConfig
Get List of different filters for inventory export



```swift
catalog.exportInventoryConfig(companyId: companyId, filterType: filterType) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company associated to product that is to be viewed. |   
| filterType | String? | no | filter type from any one of ['brand', 'store', 'type'] |  



This API allows get List of different filters like brand, store, and type for inventory export.

*Returned Response:*




[InventoryConfig](#InventoryConfig)

returns filters configuration for inventory export






---


#### createHsnCode
Create Hsn Code.



```swift
catalog.createHsnCode(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |  
| body | HsnUpsert |  yes  | Request body |


Create Hsn Code.

*Returned Response:*




[HsnCode](#HsnCode)

See example below for details






---


#### getAllHsnCodes
Hsn Code List.



```swift
catalog.getAllHsnCodes(companyId: companyId, pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| pageNo | Int? | no | page no |   
| pageSize | Int? | no | page size |   
| q | String? | no | search using hsn code. |  



Hsn Code List.

*Returned Response:*




[HsnCodesListingResponse](#HsnCodesListingResponse)

List of all HSN Codes. See example below or refer `HsnCodesListingResponseSchema` for details






---


#### getHsnCode
Fetch Hsn Code.



```swift
catalog.getHsnCode(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| id | String? | no | Unique id |  



Fetch Hsn Code.

*Returned Response:*




[HsnCode](#HsnCode)

See example below details






---


#### updateHsnCode
Update Hsn Code.



```swift
catalog.updateHsnCode(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| id | String? | no | Unique id |  
| body | HsnUpsert |  yes  | Request body |


Update Hsn Code.

*Returned Response:*




[HsnCode](#HsnCode)

See example below for details






---


#### bulkHsnCode
Bulk Create or Update Hsn Code.



```swift
catalog.bulkHsnCode(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |  
| body | BulkHsnUpsert |  yes  | Request body |


Bulk Create or Update Hsn Code.

*Returned Response:*




[BulkHsnResponse](#BulkHsnResponse)

See example below for details






---


#### getApplicationBrands
List all the brands



```swift
catalog.getApplicationBrands(companyId: companyId, applicationId: applicationId, department: department, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| department | String? | no | The name of the department. Use this parameter to filter products by a particular department. See below the list of available departments. You can retrieve available departments from the **v1.0/departments/** API |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |  



A brand is the name under which a product is being sold. Use this API to list all the brands. You can pass optionally filter the brands by the department. If successful, returns a paginated list of brands specified in `BrandListingResponse`

*Returned Response:*




[BrandListingResponse](#BrandListingResponse)

List of Brands. See example below or refer `BrandListingResponse` for details






---


#### getDepartments
List all the departments



```swift
catalog.getDepartments(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |  



Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the departments. If successful, returns the list of departments specified in `DepartmentResponse`

*Returned Response:*




[DepartmentResponse](#DepartmentResponse)

List of Departments. See example below or refer `DepartmentResponse` for details.






---


#### getCategories
List all the categories



```swift
catalog.getCategories(companyId: companyId, applicationId: applicationId, department: department) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| department | String? | no | The name of the department. Use this parameter to filter products by a particular department. See below the list of available departments. You can retrieve available departments from the **v1.0/departments/** API |  



List all the categories. You can optionally pass filter the brands by the department. If successful, returns a paginated list of brands specified in `CategoryListingResponse`

*Returned Response:*




[CategoryListingResponse](#CategoryListingResponse)

List of Categories. See example below or refer `CategoryListingResponse` for details.






---


#### getAppicationProducts
List the products



```swift
catalog.getAppicationProducts(companyId: companyId, applicationId: applicationId, q: q, f: f, filters: filters, sortOn: sortOn, pageId: pageId, pageSize: pageSize, pageNo: pageNo, pageType: pageType) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| q | String? | no | The search query. This can be a partial or complete name of a either a product, brand or category |   
| f | String? | no | The search filter parameters. All the parameter filtered from filter parameters will be passed in **f** parameter in this format. **?f=brand:voi-jeans||and:::category:t-shirts||shirts** |   
| filters | Bool? | no | Pass `filters` parameter to fetch the filter details. This flag is used to fetch all filters |   
| sortOn | String? | no | The order to sort the list of products on. The supported sort parameters are popularity, price, redemption and discount in either ascending or descending order. See the supported values below. |   
| pageId | String? | no | Each response will contain **page_id** param, which should be sent back to make pagination work. |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 12. |   
| pageNo | Int? | no | If page_type is number then pass it to fetch page items. Default is 1. |   
| pageType | String? | no | For pagination type should be cursor or number. Default is cursor. |  



List all the products associated with a brand, collection or category in a requested sort order. The API additionally supports arbitrary search queries that may refer the name of any product, brand, category or collection. If successful, returns a paginated list of products specified in `ApplicationProductListingResponse`

*Returned Response:*




[ApplicationProductListingResponse](#ApplicationProductListingResponse)

List of Products. See example below or refer `ApplicationProductListingResponse` for details






---


#### getProductDetailBySlug
Get a product



```swift
catalog.getProductDetailBySlug(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | no | A `application_id` is a unique identifier for a particular sale channel. |   
| slug | String? | no | The unique identifier of a product. i.e; `slug` of a product. You can retrieve these from the APIs that list products like **v1.0/products/** |  



Products are the core resource of an application. Products can be associated by categories, collections, brands and more. This API retrieves the product specified by the given **slug**. If successful, returns a Product resource in the response body specified in `ProductDetail`

*Returned Response:*




[ProductDetail](#ProductDetail)

The Product object. See example below or refer `ProductDetail` for details.






---




## CompanyProfile


#### cbsOnboardGet
Get company profile



```swift
companyprofile.cbsOnboardGet(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |  



This API allows to view the company profile of the seller account.

*Returned Response:*




[GetCompanyProfileSerializerResponse](#GetCompanyProfileSerializerResponse)

Company profile object. See example below or refer `GetCompanyProfileSerializerResponse` for details






---


#### updateCompany
Edit company profile



```swift
companyprofile.updateCompany(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |  
| body | UpdateCompany |  yes  | Request body |


This API allows to edit the company profile of the seller account.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success message






---


#### getCompanyMetrics
Get company metrics



```swift
companyprofile.getCompanyMetrics(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | A `company_id` is a unique identifier for a particular seller account. |  



This API allows to view the company metrics, i.e. the status of its brand and stores. Also its allows to view the number of products, company documents & store documents which are verified and unverified.

*Returned Response:*




[MetricsSerializer](#MetricsSerializer)

Metrics response object. See example below or refer `MetricsSerializer` for details






---


#### getBrand
Get a single brand.



```swift
companyprofile.getBrand(companyId: companyId, brandId: brandId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company associated to brand that is to be viewed. |   
| brandId | String? | no | Id of the brand to be viewed. |  



This API helps to get data associated to a particular brand.

*Returned Response:*




[GetBrandResponseSerializer](#GetBrandResponseSerializer)

Brand object. See example below or refer `GetBrandResponseSerializer` for details






---


#### editBrand
Edit a brand.



```swift
companyprofile.editBrand(companyId: companyId, brandId: brandId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company associated to brand that is to be viewed. |   
| brandId | String? | no | Id of the brand to be viewed. |  
| body | CreateUpdateBrandRequestSerializer |  yes  | Request body |


This API allows to edit meta of a brand.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### createBrand
Create a Brand.



```swift
companyprofile.createBrand(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company. |  
| body | CreateUpdateBrandRequestSerializer |  yes  | Request body |


This API allows to create a brand associated to a company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### createCompanyBrandMapping
Create a company brand mapping.



```swift
companyprofile.createCompanyBrandMapping(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company inside which the brand is to be mapped. |  
| body | CompanyBrandPostRequestSerializer |  yes  | Request body |


This API allows to create a company brand mapping, for a already existing brand in the system.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getBrands
Get brands associated to a company



```swift
companyprofile.getBrands(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |  



This API helps to get view brands associated to a particular company.

*Returned Response:*




[CompanyBrandListSerializer](#CompanyBrandListSerializer)

Brand object. See example below or refer `CompanyBrandListSerializer` for details






---


#### createLocation
Create a location asscoiated to a company.



```swift
companyprofile.createLocation(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company inside which the location is to be created. |  
| body | LocationSerializer |  yes  | Request body |


This API allows to create a location associated to a company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### getLocations
Get list of locations



```swift
companyprofile.getLocations(companyId: companyId, storeType: storeType, q: q, stage: stage, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company whose locations are to fetched |   
| storeType | String? | no | Helps to sort the location list on the basis of location type. |   
| q | String? | no | Query that is to be searched. |   
| stage | String? | no | to filter companies on basis of verified or unverified companies. |   
| pageNo | Int? | no | The page number to navigate through the given set of results |   
| pageSize | Int? | no | Number of items to retrieve in each page. Default is 10. |  



This API allows to view all the locations asscoiated to a company.

*Returned Response:*




[LocationListSerializer](#LocationListSerializer)

Company profile object. See example below or refer `LocationListSerializer` for details






---


#### getLocationDetail
Get details of a specific location.



```swift
companyprofile.getLocationDetail(companyId: companyId, locationId: locationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company inside which the location lies. |   
| locationId | String? | no | Id of the location which you want to view. |  



This API helps to get data associated to a specific location.

*Returned Response:*




[GetLocationSerializer](#GetLocationSerializer)

Brand object. See example below or refer `GetLocationSerializer` for details






---


#### updateLocation
Edit a location asscoiated to a company.



```swift
companyprofile.updateLocation(companyId: companyId, locationId: locationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company inside which the location is to be created. |   
| locationId | String? | no | Id of the location which you want to edit. |  
| body | LocationSerializer |  yes  | Request body |


This API allows to edit a location associated to a company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### createLocationBulk
Create a location asscoiated to a company in bulk.



```swift
companyprofile.createLocationBulk(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Id of the company inside which the location is to be created. |  
| body | BulkLocationSerializer |  yes  | Request body |


This API allows to create a location associated to a company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---




## FileStorage


#### startUpload
This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.



```swift
filestorage.startUpload(namespace: namespace, companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String? | no | bucket name |   
| companyId | Int? | no | company_id |  
| body | StartRequest |  no  | Request body |


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


*Returned Response:*




[StartResponse](#StartResponse)

Success






---


#### completeUpload
This will complete the upload process. After successfully uploading file, you can call this operation to complete the upload process.



```swift
filestorage.completeUpload(namespace: namespace, companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String? | no | bucket name |   
| companyId | Int? | no | company_id |  
| body | StartResponse |  no  | Request body |


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


*Returned Response:*




[CompleteResponse](#CompleteResponse)

Success






---


#### appStartUpload
This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.



```swift
filestorage.appStartUpload(namespace: namespace, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String? | no | bucket name |   
| companyId | Int? | no | company_id |   
| applicationId | String? | no | application id |  
| body | StartRequest |  no  | Request body |


Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `appStartUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `appStartUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `appCompleteUpload` api to complete the upload process.
This operation will return the url for the uploaded file.


*Returned Response:*




[StartResponse](#StartResponse)

Success






---


#### appCompleteUpload
This will complete the upload process. After successfully uploading file, you can call this operation to complete the upload process.



```swift
filestorage.appCompleteUpload(namespace: namespace, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String? | no | bucket name |   
| companyId | Int? | no | company_id |   
| applicationId | String? | no | application id |  
| body | StartResponse |  no  | Request body |


Uploads an arbitrarily sized buffer or blob.

It has three Major Steps:
* Start
* Upload
* Complete

### Start
Initiates the assets upload using `appStartUpload`.
It returns the storage link in response.

### Upload
Use the storage link to upload a file (Buffer or Blob) to the File Storage.
Make a `PUT` request on storage link received from `appStartUpload` api with file (Buffer or Blob) as a request body.

### Complete
After successfully upload, call `appCompleteUpload` api to complete the upload process.
This operation will return the url for the uploaded file.


*Returned Response:*




[CompleteResponse](#CompleteResponse)

Success






---


#### getSignUrls
Explain here



```swift
filestorage.getSignUrls(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |  
| body | SignUrlRequest |  no  | Request body |


Describe here

*Returned Response:*




[SignUrlResponse](#SignUrlResponse)

Success






---


#### copyFiles
Copy Files



```swift
filestorage.copyFiles(sync: sync, companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| sync | Bool? | no | sync |   
| companyId | Int? | no | company_id |  
| body | BulkRequest |  no  | Request body |


Copy Files

*Returned Response:*




[BulkResponse](#BulkResponse)

Success






---


#### appCopyFiles
Copy Files



```swift
filestorage.appCopyFiles(sync: sync, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| sync | Bool? | no | sync |   
| companyId | Int? | no | company_id |   
| applicationId | Int? | no | application_id |  
| body | BulkRequest |  no  | Request body |


Copy Files

*Returned Response:*




[BulkResponse](#BulkResponse)

Success






---


#### browse
Browse Files



```swift
filestorage.browse(namespace: namespace, companyId: companyId, pageNo: pageNo) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String? | no | bucket name |   
| companyId | Int? | no | company_id |   
| pageNo | Int? | no | page no |  



Browse Files

*Returned Response:*




[BrowseResponse](#BrowseResponse)

Success






---


#### browse
Browse Files



```swift
filestorage.browse(namespace: namespace, companyId: companyId, applicationId: applicationId, pageNo: pageNo) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String? | no | bucket name |   
| companyId | Int? | no | company_id |   
| applicationId | Int? | no | application_id |   
| pageNo | Int? | no | page no |  



Browse Files

*Returned Response:*




[BrowseResponse](#BrowseResponse)

Success






---


#### proxy
Proxy



```swift
filestorage.proxy(companyId: companyId, url: url) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |   
| url | String? | no | url |  



Proxy

*Returned Response:*




[String](#String)

Success






---




## Share


#### createShortLink
Create short link



```swift
share.createShortLink(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |  
| body | ShortLinkReq |  no  | Request body |


Create short link

*Returned Response:*




[ShortLinkRes](#ShortLinkRes)

Success






---


#### getShortLinks
Get short links



```swift
share.getShortLinks(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, createdBy: createdBy, active: active, q: q) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| pageNo | Int? | no | Current page number |   
| pageSize | Int? | no | Current page size |   
| createdBy | String? | no | Short link creator |   
| active | String? | no | Short link active status |   
| q | String? | no | Search text for original and short url |  



Get short links

*Returned Response:*




[ShortLinkList](#ShortLinkList)

Success






---


#### getShortLinkByHash
Get short link by hash



```swift
share.getShortLinkByHash(companyId: companyId, applicationId: applicationId, hash: hash) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| hash | String? | no | Hash of short url |  



Get short link by hash

*Returned Response:*




[ShortLinkRes](#ShortLinkRes)

Success






---


#### updateShortLinkById
Update short link by id



```swift
share.updateShortLinkById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| id | String? | no | Short link document identifier |  
| body | ShortLinkReq |  no  | Request body |


Update short link by id

*Returned Response:*




[ShortLinkRes](#ShortLinkRes)

Success






---




## Inventory


#### getJobsByCompany
Get Job Configs For A Company



```swift
inventory.getJobsByCompany(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| pageNo | Int? | no | Page Number |   
| pageSize | Int? | no | Page Size |  



REST Endpoint that returns all job configs for a company

*Returned Response:*




[ResponseEnvelopeListJobConfigRawDTO](#ResponseEnvelopeListJobConfigRawDTO)

Successful operation






---


#### updateJob
Updates An Existing Job Config



```swift
inventory.updateJob(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |  
| body | JobConfigDTO |  yes  | Request body |


REST Endpoint that updates a job config

*Returned Response:*




---


#### createJob
Creates A New Job Config



```swift
inventory.createJob(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |  
| body | JobConfigDTO |  yes  | Request body |


REST Endpoint that creates a new job config

*Returned Response:*




[ResponseEnvelopeString](#ResponseEnvelopeString)

Job Config Created Successfully






---


#### getJobByCompanyAndIntegration
Get Job Configs By Company And Integration



```swift
inventory.getJobByCompanyAndIntegration(companyId: companyId, integrationId: integrationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| integrationId | String? | no | Integration Id |   
| pageNo | Int? | no | Page Number |   
| pageSize | Int? | no | Page Size |  



REST Endpoint that returns all job configs by company And integration

*Returned Response:*




[ResponseEnvelopeListJobConfigDTO](#ResponseEnvelopeListJobConfigDTO)

Successful operation






---


#### getJobConfigDefaults
Get Job Configs Defaults



```swift
inventory.getJobConfigDefaults(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |  



REST Endpoint that returns default fields job configs by company And integration

*Returned Response:*




[ResponseEnvelopeJobConfigDTO](#ResponseEnvelopeJobConfigDTO)

Successful operation






---


#### getJobByCode
Get Job Config By Code



```swift
inventory.getJobByCode(companyId: companyId, code: code) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| code | String? | no | Job Code |  



REST Endpoint that returns job config by code

*Returned Response:*




[ResponseEnvelopeJobConfigDTO](#ResponseEnvelopeJobConfigDTO)

Successful operation






---


#### getJobCodeMetrics
Get Job Metrics



```swift
inventory.getJobCodeMetrics(companyId: companyId, code: code, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| code | String? | no | Code |   
| pageNo | Int? | no | Page Number |   
| pageSize | Int? | no | Page Size |  



REST Endpoint that returns Inventory Run History For A Job Code

*Returned Response:*




[ResponseEnvelopeJobMetricsDto](#ResponseEnvelopeJobMetricsDto)

Successful operation






---


#### getJobCodesByCompanyAndIntegration
Get Job Codes By Company And Integration



```swift
inventory.getJobCodesByCompanyAndIntegration(companyId: companyId, integrationId: integrationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id |   
| integrationId | String? | no | Integration Id |   
| pageNo | Int? | no | Page Number |   
| pageSize | Int? | no | Page Size |  



REST Endpoint that returns all job codes by company And integration

*Returned Response:*




[ResponseEnvelopeListJobConfigListDTO](#ResponseEnvelopeListJobConfigListDTO)

Successful operation






---




## Configuration


#### getBuildConfig
Get latest build config



```swift
configuration.getBuildConfig(companyId: companyId, applicationId: applicationId, platformType: platformType) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |   
| platformType | String? | no | Current platform name |  



Get latest build config

*Returned Response:*




[MobileAppConfiguration](#MobileAppConfiguration)

Success






---


#### updateBuildConfig
Update build config for next build



```swift
configuration.updateBuildConfig(companyId: companyId, applicationId: applicationId, platformType: platformType, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |   
| platformType | String? | no | Current platform name |  
| body | MobileAppConfigRequest |  no  | Request body |


Update build config for next build

*Returned Response:*




[MobileAppConfiguration](#MobileAppConfiguration)

Success






---


#### getPreviousVersions
Get previous build versions



```swift
configuration.getPreviousVersions(companyId: companyId, applicationId: applicationId, platformType: platformType) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |   
| platformType | String? | no | Current platform name |  



Get previous build versions

*Returned Response:*




[BuildVersionHistory](#BuildVersionHistory)

Success






---


#### getAppFeatures
Get features of application



```swift
configuration.getAppFeatures(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  



Get features of application

*Returned Response:*




[AppFeatureResponse](#AppFeatureResponse)

Success






---


#### updateAppFeatures
Update features of application



```swift
configuration.updateAppFeatures(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | AppFeatureRequest |  yes  | Request body |


Update features of application

*Returned Response:*




[AppFeature](#AppFeature)

Success






---


#### getAppBasicDetails
Get basic application details



```swift
configuration.getAppBasicDetails(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  



Get basic application details like name

*Returned Response:*




[ApplicationDetail](#ApplicationDetail)

Success






---


#### updateAppBasicDetails
Add or update application's basic details



```swift
configuration.updateAppBasicDetails(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | ApplicationDetail |  yes  | Request body |


Add or update application's basic details

*Returned Response:*




[ApplicationDetail](#ApplicationDetail)

Success






---


#### getAppContactInfo
Get application information



```swift
configuration.getAppContactInfo(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  



Get Application Current Information. This includes information about social links, address and contact information of company/seller/brand of the application.

*Returned Response:*




[ApplicationInformation](#ApplicationInformation)

Success






---


#### updateAppContactInfo
Get application information



```swift
configuration.updateAppContactInfo(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | ApplicationInformation |  yes  | Request body |


Save Application Current Information. This includes information about social links, address and contact information of an application.

*Returned Response:*




[ApplicationInformation](#ApplicationInformation)

Success






---


#### getAppApiTokens
Get social tokens



```swift
configuration.getAppApiTokens(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  



Get social tokens.

*Returned Response:*




[TokenResponse](#TokenResponse)

Success






---


#### updateAppApiTokens
Add social tokens



```swift
configuration.updateAppApiTokens(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | TokenResponse |  no  | Request body |


Add social tokens.

*Returned Response:*




[TokenResponse](#TokenResponse)

Success






---


#### getAppCompanies
Application inventory enabled companies



```swift
configuration.getAppCompanies(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Application inventory enabled companies.

*Returned Response:*




[CompaniesResponse](#CompaniesResponse)

Success






---


#### getAppStores
Application inventory enabled stores



```swift
configuration.getAppStores(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Application inventory enabled stores.

*Returned Response:*




[StoresResponse](#StoresResponse)

Success






---


#### getInventoryConfig
Get application configuration



```swift
configuration.getInventoryConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  



Get application configuration for various features and data

*Returned Response:*




[ApplicationInventory](#ApplicationInventory)

Success






---


#### updateInventoryConfig
Update application configuration



```swift
configuration.updateInventoryConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | ApplicationInventory |  no  | Request body |


Update application configuration for various features and data

*Returned Response:*




[ApplicationInventory](#ApplicationInventory)

Success






---


#### partiallyUpdateInventoryConfig
Partially update application configuration



```swift
configuration.partiallyUpdateInventoryConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | AppInventoryPartialUpdate |  no  | Request body |


Partially update application configuration for various features and data

*Returned Response:*




[ApplicationInventory](#ApplicationInventory)

Success






---


#### getAppCurrencyConfig
Get application enabled currency list



```swift
configuration.getAppCurrencyConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  



Get application enabled currency list

*Returned Response:*




[AppSupportedCurrency](#AppSupportedCurrency)

Success






---


#### updateAppCurrencyConfig
Add initial application supported currency



```swift
configuration.updateAppCurrencyConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | AppSupportedCurrency |  no  | Request body |


Add initial application supported currency for various features and data. Default INR will be enabled.

*Returned Response:*




[AppSupportedCurrency](#AppSupportedCurrency)

Success






---


#### getOrderingStoresByFilter
Get ordering store by filter



```swift
configuration.getOrderingStoresByFilter(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  
| body | FilterOrderingStoreRequest |  no  | Request body |


Get ordering store by filter

*Returned Response:*




[OrderingStores](#OrderingStores)

Success






---


#### updateOrderingStoreConfig
Add/Update ordering store config



```swift
configuration.updateOrderingStoreConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | OrderingStoreConfig |  no  | Request body |


Add/Update ordering store config.

*Returned Response:*




[DeploymentMeta](#DeploymentMeta)

Success






---


#### getDomains
Get attached domain list



```swift
configuration.getDomains(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  



Get attached domain list.

*Returned Response:*




[DomainsResponse](#DomainsResponse)

Success






---


#### addDomain
Add new domain to application



```swift
configuration.addDomain(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | DomainAddRequest |  no  | Request body |


Add new domain to application.

*Returned Response:*




[Domain](#Domain)

Success






---


#### removeDomainById
Remove attached domain



```swift
configuration.removeDomainById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |   
| id | String? | no | Domain _id |  



Remove attached domain.

*Returned Response:*




[SuccessMessageResponse](#SuccessMessageResponse)

Success






---


#### changeDomainType
Change domain type



```swift
configuration.changeDomainType(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | UpdateDomainTypeRequest |  no  | Request body |


Change a domain to Primary or Shortlink domain

*Returned Response:*




[DomainsResponse](#DomainsResponse)

Success






---


#### getDomainStatus
Get domain connected status.



```swift
configuration.getDomainStatus(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  
| body | DomainStatusRequest |  no  | Request body |


Get domain connected status. Check if domain is live and mapped to appropriate IP to fynd servers.

*Returned Response:*




[DomainStatusResponse](#DomainStatusResponse)

Success






---


#### createApplication
Create application



```swift
configuration.createApplication(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |  
| body | CreateApplicationRequest |  no  | Request body |


Create new application

*Returned Response:*




[CreateAppResponse](#CreateAppResponse)

Success






---


#### getApplications
Get list of application under company



```swift
configuration.getApplications(companyId: companyId, pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| q | String? | no | Url encoded object used as mongodb query |  



Get list of application under company

*Returned Response:*




[ApplicationsResponse](#ApplicationsResponse)

Success






---


#### getApplicationById
Get application data from id



```swift
configuration.getApplicationById(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |  



Get application data from id

*Returned Response:*




[Application](#Application)

Success






---


#### getCurrencies
Get all currencies



```swift
configuration.getCurrencies(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |  



Get all currencies

*Returned Response:*




[CurrenciesResponse](#CurrenciesResponse)

Currencies Success response






---


#### getDomainAvailibility
Check domain availibility before linking to application



```swift
configuration.getDomainAvailibility(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |  
| body | DomainSuggestionsRequest |  no  | Request body |


Check domain availibility before linking to application. Also sends domain suggestions with similar to queried domain. \ Custom domain search is currently powered by GoDaddy provider.

*Returned Response:*




[DomainSuggestionsResponse](#DomainSuggestionsResponse)

Success






---


#### getIntegrationById
Get integration data



```swift
configuration.getIntegrationById(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| id | Int? | no | Integration id |  



Get integration data

*Returned Response:*




[Integration](#Integration)

Success






---


#### getAvailableOptIns
Get all available integration opt-ins



```swift
configuration.getAvailableOptIns(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Get all available integration opt-ins

*Returned Response:*




[GetIntegrationsOptInsResponse](#GetIntegrationsOptInsResponse)

Success






---


#### getSelectedOptIns
Get company/store level integration opt-ins



```swift
configuration.getSelectedOptIns(companyId: companyId, level: level, uid: uid, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| level | String? | no | Integration level |   
| uid | Int? | no | Integration level uid |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Get company/store level integration opt-ins

*Returned Response:*




[GetIntegrationsOptInsResponse](#GetIntegrationsOptInsResponse)

Success






---


#### getIntegrationLevelConfig
Get integration level config



```swift
configuration.getIntegrationLevelConfig(companyId: companyId, id: id, level: level, opted: opted, checkPermission: checkPermission) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| id | String? | no | Integration id |   
| level | String? | no | Integration level |   
| opted | Bool? | no | Filter on opted stores |   
| checkPermission | Bool? | no | Filter on if permissions are present |  



Get integration level config

*Returned Response:*




[IntegrationConfigResponse](#IntegrationConfigResponse)

Success






---


#### getIntegrationByLevelId
Get level data for integration



```swift
configuration.getIntegrationByLevelId(companyId: companyId, id: id, level: level, uid: uid) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| id | String? | no | Integration id |   
| level | String? | no | Integration level |   
| uid | Int? | no | Integration level uid |  



Get level data for integration

*Returned Response:*




[IntegrationLevel](#IntegrationLevel)

Success






---


#### getLevelActiveIntegrations
Check store has active integration



```swift
configuration.getLevelActiveIntegrations(companyId: companyId, id: id, level: level, uid: uid) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| id | String? | no | Integration id |   
| level | String? | no | Integration level |   
| uid | Int? | no | Integration level uid |  



API checks if a store is already opted in any other integrations

*Returned Response:*




[OptedStoreIntegration](#OptedStoreIntegration)

Success






---


#### getBrandsByCompany
Get brands by company



```swift
configuration.getBrandsByCompany(companyId: companyId, q: q) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| q | String? | no | Search text for brand name |  



Get brands by company

*Returned Response:*




[BrandsByCompanyResponse](#BrandsByCompanyResponse)

Success






---


#### getCompanyByBrands
Get company by brand uids



```swift
configuration.getCompanyByBrands(companyId: companyId, pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  
| body | CompanyByBrandsRequest |  no  | Request body |


Get company by brand uids

*Returned Response:*




[CompanyByBrandsResponse](#CompanyByBrandsResponse)

Success






---


#### getStoreByBrands
Get stores by brand uids



```swift
configuration.getStoreByBrands(companyId: companyId, pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  
| body | StoreByBrandsRequest |  no  | Request body |


Get stores by brand uids

*Returned Response:*




[StoreByBrandsResponse](#StoreByBrandsResponse)

Success






---


#### getOtherSellerApplications
Get other seller applications



```swift
configuration.getOtherSellerApplications(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| pageNo | Int? | no | Current page no |   
| pageSize | Int? | no | Current request items count |  



Get other seller applications who has opted current company as inventory

*Returned Response:*




[OtherSellerApplications](#OtherSellerApplications)

Success






---


#### getOtherSellerApplicationById
Get other seller applications



```swift
configuration.getOtherSellerApplicationById(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| id | String? | no | Application Id |  



Get other seller application

*Returned Response:*




[OptedApplicationResponse](#OptedApplicationResponse)

Success






---


#### optOutFromApplication
Opt out company or store from other seller application



```swift
configuration.optOutFromApplication(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| id | String? | no | Application Id |  
| body | OptOutInventory |  no  | Request body |


Opt out company or store from other seller application

*Returned Response:*




[SuccessMessageResponse](#SuccessMessageResponse)

Success






---




## Cart


#### getCoupons
Get with single coupon details or coupon list



```swift
cart.getCoupons(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, isArchived: isArchived, title: title, isPublic: isPublic, isDisplay: isDisplay, typeSlug: typeSlug, code: code) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current Application _id |   
| pageNo | Int? | no |  |   
| pageSize | Int? | no |  |   
| isArchived | Bool? | no |  |   
| title | String? | no |  |   
| isPublic | Bool? | no |  |   
| isDisplay | Bool? | no |  |   
| typeSlug | String? | no |  |   
| code | String? | no |  |  



Get coupon list with pagination

*Returned Response:*




[CouponsResponse](#CouponsResponse)

Coupon List for sent page_size and page_no






---


#### createCoupon
Create new coupon



```swift
cart.createCoupon(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current Application _id |  
| body | CouponAdd |  no  | Request body |


Create new coupon

*Returned Response:*




---


#### getCouponById
Get with single coupon details or coupon list



```swift
cart.getCouponById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current Application _id |   
| id | String? | no |  |  



Get single coupon details with `id` in path param

*Returned Response:*




[CouponUpdate](#CouponUpdate)

Coupon object for sent `id`






---


#### updateCoupon
Update existing coupon configuration



```swift
cart.updateCoupon(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current Application _id |   
| id | String? | no |  |  
| body | CouponUpdate |  no  | Request body |


Update coupon with id sent in `id`

*Returned Response:*




[SuccessMessage](#SuccessMessage)

Coupon updated successfully






---


#### updateCouponPartially
Update coupon archive state and schedule



```swift
cart.updateCouponPartially(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current Application _id |   
| id | String? | no |  |  
| body | CouponPartialUpdate |  no  | Request body |


Update archive/unarchive and change schedule for coupon

*Returned Response:*




[SuccessMessage](#SuccessMessage)

Coupon updated successfully






---




## Rewards


#### getGiveaways
List of giveaways of the current application.



```swift
rewards.getGiveaways(companyId: companyId, applicationId: applicationId, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| pageId | String? | no | pagination page id |   
| pageSize | Int? | no | pagination page size |  



List of giveaways of the current application.

*Returned Response:*




[GiveawayResponse](#GiveawayResponse)

ok






---


#### createGiveaway
Adds a new giveaway.



```swift
rewards.createGiveaway(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |  
| body | Giveaway |  yes  | Request body |


Adds a new giveaway.

*Returned Response:*




[Giveaway](#Giveaway)

ok






---


#### getGiveawayByID
Get giveaway by ID.



```swift
rewards.getGiveawayByID(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| id | String? | no | Giveaway ID |  



Get giveaway by ID.

*Returned Response:*




[Giveaway](#Giveaway)

ok






---


#### updateGiveaway
Updates the giveaway by it's ID.



```swift
rewards.updateGiveaway(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| id | String? | no | Giveaway ID |  
| body | Giveaway |  yes  | Request body |


Updates the giveaway by it's ID.

*Returned Response:*




[Giveaway](#Giveaway)

ok






---


#### getOffers
List of offer of the current application.



```swift
rewards.getOffers(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |  



List of offer of the current application.

*Returned Response:*




[[Offer]](#[Offer])

ok






---


#### getOfferByName
Get offer by name.



```swift
rewards.getOfferByName(companyId: companyId, applicationId: applicationId, cookie: cookie, name: name) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| cookie | String? | no | User's session cookie. This cookie is set in browser cookie when logged-in to fynd's authentication system i.e. `Grimlock` or by using grimlock-backend SDK for backend implementation. |   
| name | String? | no | Offer name |  



Get offer by name.

*Returned Response:*




[Offer](#Offer)

ok






---


#### updateOfferByName
Updates the offer by name.



```swift
rewards.updateOfferByName(companyId: companyId, applicationId: applicationId, name: name, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| name | String? | no | Offer name |  
| body | Offer |  yes  | Request body |


Updates the offer by name.

*Returned Response:*




[Offer](#Offer)

ok






---


#### getUserAvailablePoints
User's reward details.



```swift
rewards.getUserAvailablePoints(companyId: companyId, applicationId: applicationId, userId: userId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| userId | String? | no | user id |  



User's reward details.

*Returned Response:*




[UserRes](#UserRes)

ok






---


#### updateUserStatus
Update User status



```swift
rewards.updateUserStatus(companyId: companyId, applicationId: applicationId, userId: userId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| userId | String? | no | user id |  
| body | AppUser |  yes  | Request body |


Update user status, active/archive

*Returned Response:*




[AppUser](#AppUser)

Success






---


#### getUserPointsHistory
Get list of points transactions.



```swift
rewards.getUserPointsHistory(companyId: companyId, applicationId: applicationId, userId: userId, pageId: pageId, pageLimit: pageLimit, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | company id |   
| applicationId | String? | no | application id |   
| userId | String? | no | user id |   
| pageId | String? | no | PageID is the ID of the requested page. For first request it should be kept empty. |   
| pageLimit | Int? | no | PageLimit is the number of requested items in response. |   
| pageSize | Int? | no | PageSize is the number of requested items in response. |  



Get list of points transactions.
The list of points history is paginated.

*Returned Response:*




[HistoryRes](#HistoryRes)

ok






---




## Analytics


#### getStatiscticsGroups
Get statistics groups



```swift
analytics.getStatiscticsGroups(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |  



Get statistics groups

*Returned Response:*




[StatsGroups](#StatsGroups)

Success






---


#### getStatiscticsGroupComponents
Get statistics group components



```swift
analytics.getStatiscticsGroupComponents(companyId: companyId, applicationId: applicationId, groupName: groupName) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| groupName | String? | no | Group name |  



Get statistics group components

*Returned Response:*




[StatsGroupComponents](#StatsGroupComponents)

Success






---


#### getComponentStatsCSV
Get component statistics csv



```swift
analytics.getComponentStatsCSV(companyId: companyId, applicationId: applicationId, componentName: componentName) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| componentName | String? | no | Component name |  



Get component statistics csv

*Returned Response:*




[String](#String)

Success






---


#### getComponentStatsPDF
Get component statistics pdf



```swift
analytics.getComponentStatsPDF(companyId: companyId, applicationId: applicationId, componentName: componentName) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| componentName | String? | no | Component name |  



Get component statistics pdf

*Returned Response:*




[String](#String)

Success






---


#### getComponentStats
Get component statistics



```swift
analytics.getComponentStats(companyId: companyId, applicationId: applicationId, componentName: componentName) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| componentName | String? | no | Component name |  



Get component statistics

*Returned Response:*




[StatsRes](#StatsRes)

Success






---


#### getAbandonCartList
Get abandon carts list



```swift
analytics.getAbandonCartList(companyId: companyId, applicationId: applicationId, fromDate: fromDate, toDate: toDate, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| fromDate | String? | no | From date |   
| toDate | String? | no | To date |   
| pageNo | Int? | no | Current page number |   
| pageSize | Int? | no | Current page size |  



Get abandon carts list

*Returned Response:*




[AbandonCartsList](#AbandonCartsList)

Success






---


#### getAbandonCartsCSV
Get abandon carts csv



```swift
analytics.getAbandonCartsCSV(companyId: companyId, applicationId: applicationId, fromDate: fromDate, toDate: toDate) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| fromDate | String? | no | From date |   
| toDate | String? | no | To date |  



Get abandon carts csv

*Returned Response:*




[String](#String)

Success






---


#### getAbandonCartDetail
Get abandon carts details



```swift
analytics.getAbandonCartDetail(companyId: companyId, applicationId: applicationId, cartId: cartId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| applicationId | String? | no | Application Id |   
| cartId | String? | no | Cart Id |  



Get abandon cart details

*Returned Response:*




[AbandonCartDetail](#AbandonCartDetail)

Success






---


#### createExportJob
Create data export job in required format



```swift
analytics.createExportJob(companyId: companyId, exportType: exportType, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| exportType | String? | no | Export type / format |  
| body | ExportJobReq |  no  | Request body |


Create data export job in required format

*Returned Response:*




[ExportJobRes](#ExportJobRes)

Success






---


#### getExportJobStatus
Get data export job status



```swift
analytics.getExportJobStatus(companyId: companyId, exportType: exportType, jobId: jobId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| exportType | String? | no | Export type / format |   
| jobId | String? | no | Export job id |  



Get data export job status

*Returned Response:*




[ExportJobStatusRes](#ExportJobStatusRes)

Success






---


#### getLogsList
Get logs list



```swift
analytics.getLogsList(companyId: companyId, logType: logType, pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| logType | String? | no | Log type |   
| pageNo | Int? | no | Current page number |   
| pageSize | Int? | no | Current page size |  
| body | GetLogsListReq |  no  | Request body |


Get logs list

*Returned Response:*




[GetLogsListRes](#GetLogsListRes)

Success






---


#### searchLogs
Search logs



```swift
analytics.searchLogs(companyId: companyId, pageNo: pageNo, pageSize: pageSize, logType: logType, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id |   
| pageNo | Int? | no | Current page number |   
| pageSize | Int? | no | Current page size |   
| logType | String? | no | Log type |  
| body | SearchLogReq |  no  | Request body |


Search logs

*Returned Response:*




[SearchLogRes](#SearchLogRes)

Success






---




## Discount


#### getDiscounts
Fetch discount list.



```swift
discount.getDiscounts(companyId: companyId, view: view, q: q, pageNo: pageNo, pageSize: pageSize, archived: archived, month: month, year: year, type: type, appIds: appIds) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |   
| view | String? | no | listing or calender.  Default is listing. |   
| q | String? | no | The search query. This can be a partial or complete name of a discount. |   
| pageNo | Int? | no | page number. Default is 1. |   
| pageSize | Int? | no | page size. Default is 12. |   
| archived | Bool? | no | archived. Default is false. |   
| month | Int? | no | month. Default is current month. |   
| year | Int? | no | year. Default is current year. |   
| type | String? | no | basic or custom. |   
| appIds | [String]? | no | application ids. |  



Fetch discount list.

*Returned Response:*




[ListOrCalender](#ListOrCalender)

Success






---


#### createDiscount
Create Discount.



```swift
discount.createDiscount(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |  
| body | CreateUpdateDiscount |  yes  | Request body |


Create Discount.

*Returned Response:*




[DiscountJob](#DiscountJob)

Success






---


#### getDiscount
Fetch discount.



```swift
discount.getDiscount(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |   
| id | String? | no | unique id. |  



Fetch discount.

*Returned Response:*




[DiscountJob](#DiscountJob)

Success






---


#### updateDiscount
Create Discount.



```swift
discount.updateDiscount(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |   
| id | String? | no | id |  
| body | CreateUpdateDiscount |  yes  | Request body |


Create Discount.

*Returned Response:*




[DiscountJob](#DiscountJob)

Success






---


#### validateDiscountFile
Validate File.



```swift
discount.validateDiscountFile(companyId: companyId, discount: discount, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |   
| discount | String? | no | discount |  
| body | DiscountJob |  yes  | Request body |


Validate File.

*Returned Response:*




[FileJobResponse](#FileJobResponse)

Success






---


#### downloadDiscountFile
Validate File.



```swift
discount.downloadDiscountFile(companyId: companyId, type: type, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |   
| type | String? | no | type |  
| body | DownloadFileJob |  yes  | Request body |


Validate File.

*Returned Response:*




[FileJobResponse](#FileJobResponse)

Success






---


#### getValidationJob
Validate File Job.



```swift
discount.getValidationJob(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |   
| id | String? | no | id |  



Validate File Job.

*Returned Response:*




[FileJobResponse](#FileJobResponse)

Success






---


#### cancelValidationJob
Cancel Validation Job.



```swift
discount.cancelValidationJob(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |   
| id | String? | no | id |  



Cancel Validation Job.

*Returned Response:*




[CancelJobResponse](#CancelJobResponse)

Success






---


#### getDownloadJob
Download File Job.



```swift
discount.getDownloadJob(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |   
| id | String? | no | id |  



Download File Job.

*Returned Response:*




[FileJobResponse](#FileJobResponse)

Success






---


#### cancelDownloadJob
Cancel Download Job.



```swift
discount.cancelDownloadJob(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | company_id |   
| id | String? | no | id |  



Cancel Download Job.

*Returned Response:*




[CancelJobResponse](#CancelJobResponse)

Success






---




## Partner


#### addProxyPath
Add proxy path for external url



```swift
partner.addProxyPath(companyId: companyId, applicationId: applicationId, extensionId: extensionId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |   
| extensionId | String? | no | Extension id |  
| body | AddProxyReq |  no  | Request body |


Add proxy path for external url

*Returned Response:*




[AddProxyResponse](#AddProxyResponse)

Success






---


#### removeProxyPath
Remove proxy path for external url



```swift
partner.removeProxyPath(companyId: companyId, applicationId: applicationId, extensionId: extensionId, attachedPath: attachedPath) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Current company id |   
| applicationId | String? | no | Current application id |   
| extensionId | String? | no | Extension id |   
| attachedPath | String? | no | Attachaed path slug |  



Remove proxy path for external url

*Returned Response:*




---




## Webhook


#### getSubscribersByCompanyAndEventId
Get Subscribers By Company And Event



```swift
webhook.getSubscribersByCompanyAndEventId(pageNo: pageNo, pageSize: pageSize, companyId: companyId, eventId: eventId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Page Number |   
| pageSize | Int? | no | Page Size |   
| companyId | String? | no | Company ID of the application |   
| eventId | Int? | no | Event Id of the application |  



Get Subscribers By Company And Event

*Returned Response:*




[SubscriberConfigList](#SubscriberConfigList)

Success






---


#### registerSubscriberToEvent
Register Subscriber



```swift
webhook.registerSubscriberToEvent(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id of the application |  
| body | SubscriberConfig |  no  | Request body |


Register Subscriber

*Returned Response:*




[SubscriberConfig](#SubscriberConfig)

Success






---


#### updateSubscriberConfig
Update Subscriber



```swift
webhook.updateSubscriberConfig(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company ID of the application |  
| body | SubscriberConfig |  no  | Request body |


Update Subscriber

*Returned Response:*




[SubscriberConfig](#SubscriberConfig)

Success






---




### Schemas


 
 
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




 
 
 #### [Activity](#Activity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currentState | [String: Any] |  no  |  |
 | documentId | String |  no  |  |
 | previousState | [String: Any] |  no  |  |

---


 
 
 #### [ActivityDump](#ActivityDump)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activity | [Activity](#Activity) |  no  |  |
 | createdBy | [CreatedBy](#CreatedBy) |  no  |  |
 | dateMeta | [DateMeta](#DateMeta) |  no  |  |
 | id | String |  no  |  |
 | type | String |  no  |  |

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


 
 
 #### [ApproveRequest](#ApproveRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | approve | Bool |  no  |  |
 | entityType | String |  no  |  |
 | id | String? |  yes  |  |
 | reason | String |  no  |  |

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


 
 
 #### [DateMeta](#DateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

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
 | type | String |  no  |  |

---


 
 
 #### [EntityRequest](#EntityRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityId | String |  no  |  |
 | entityType | String |  no  |  |

---


 
 
 #### [FeedbackAttributes](#FeedbackAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Attribute](#Attribute)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [FeedbackError](#FeedbackError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | [String: Any] |  no  |  |
 | exception | String |  no  |  |
 | info | String |  no  |  |
 | message | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | requestId | String |  no  |  |
 | stackTrace | String |  no  |  |
 | status | Int |  no  |  |

---


 
 
 #### [FeedbackState](#FeedbackState)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | archive | Bool |  no  |  |
 | media | String |  no  | image, video, any |
 | qna | Bool |  no  |  |
 | rating | Bool |  no  |  |
 | review | Bool |  no  |  |

---


 
 
 #### [GetResponse](#GetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [GetReviewResponse](#GetReviewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facets | [[ReviewFacet](#ReviewFacet)] |  no  |  |
 | items | [[String: Any]] |  no  |  |
 | page | [Page](#Page) |  no  |  |
 | sort | [[SortMethod](#SortMethod)] |  no  |  |

---


 
 
 #### [InsertResponse](#InsertResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |

---


 
 
 #### [MediaMeta](#MediaMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxCount | Int |  no  |  |
 | size | Int |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [MediaMetaRequest](#MediaMetaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxCount | Int? |  yes  |  |
 | size | Int? |  yes  |  |

---


 
 
 #### [NumberGetResponse](#NumberGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [PageCursor](#PageCursor)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | hasPrevious | Bool |  no  |  |
 | itemTotal | Int |  no  |  |
 | nextId | String |  no  |  |
 | size | Int? |  yes  |  |
 | type | String? |  yes  |  |

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


 
 
 #### [Rating](#Rating)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [[Attribute](#Attribute)] |  no  |  |
 | attributesSlugs | [String] |  no  |  |
 | ui | [UI](#UI) |  no  |  |

---


 
 
 #### [RatingRequest](#RatingRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [String]? |  yes  |  |
 | ui | [UI](#UI) |  no  |  |

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
 | description | String |  no  |  |
 | header | String |  no  |  |
 | imageMeta | [MediaMeta](#MediaMeta) |  no  |  |
 | title | String |  no  |  |
 | videoMeta | [MediaMeta](#MediaMeta) |  no  |  |
 | voteAllowed | Bool |  no  |  |

---


 
 
 #### [ReviewFacet](#ReviewFacet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | name | String |  no  |  |
 | selected | Bool |  no  |  |
 | slug | String |  no  |  |
 | type | String |  no  | rating, attributerating |

---


 
 
 #### [ReviewRequest](#ReviewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | header | String? |  yes  |  |
 | imageMeta | [MediaMetaRequest](#MediaMetaRequest)? |  yes  |  |
 | isVoteAllowed | Bool? |  yes  |  |
 | title | String? |  yes  |  |
 | videoMeta | [MediaMetaRequest](#MediaMetaRequest)? |  yes  |  |

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
 | review | [Review](#Review) |  no  |  |
 | state | [FeedbackState](#FeedbackState) |  no  |  |
 | tags | [[TagMeta](#TagMeta)] |  no  |  |

---


 
 
 #### [TemplateGetResponse](#TemplateGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Template](#Template)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [TemplateRequest](#TemplateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | enableMediaType | String |  no  | image | video | any |
 | enableQna | Bool |  no  |  |
 | enableRating | Bool? |  yes  |  |
 | enableReview | Bool? |  yes  |  |
 | entity | [EntityRequest](#EntityRequest)? |  yes  |  |
 | rating | [RatingRequest](#RatingRequest)? |  yes  |  |
 | review | [ReviewRequest](#ReviewRequest)? |  yes  |  |

---


 
 
 #### [TemplateRequestList](#TemplateRequestList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateList | [[TemplateRequest](#TemplateRequest)]? |  yes  |  |

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


 
 
 #### [UpdateAttributeRequest](#UpdateAttributeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | name | String? |  yes  |  |
 | slug | String |  no  |  |

---


 
 
 #### [UpdateResponse](#UpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |

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


 
 
 #### [UpdateTemplateRequest](#UpdateTemplateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | enableMediaType | String |  no  | image | video | any |
 | enableQna | Bool |  no  |  |
 | enableRating | Bool? |  yes  |  |
 | enableReview | Bool? |  yes  |  |
 | entity | [EntityRequest](#EntityRequest)? |  yes  |  |
 | rating | [RatingRequest](#RatingRequest)? |  yes  |  |
 | review | [ReviewRequest](#ReviewRequest)? |  yes  |  |

---


 
 
 #### [UpdateTemplateStatusRequest](#UpdateTemplateStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | archive | Bool |  no  |  |

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




 
 
 #### [ErrorResponseSchema](#ErrorResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Reason for failure |
 | code | Double |  no  | error code |

---


 
 
 #### [Success](#Success)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [CreatedModifiedByObject](#CreatedModifiedByObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [PickupPointResponse](#PickupPointResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ItemProperties](#ItemProperties)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [PickupPointSchema](#PickupPointSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notificationEmails | [String] |  no  |  |
 | name | String |  no  |  |
 | isActive | Bool |  no  |  |
 | code | String |  no  |  |
 | address | [AddressObject](#AddressObject) |  no  |  |
 | additionalContacts | [AdditionalContactsObject](#AdditionalContactsObject) |  no  |  |
 | timing | [[AdditionalContactsObject](#AdditionalContactsObject)] |  no  |  |
 | createdBy | [CreatedModifiedByObject](#CreatedModifiedByObject) |  no  |  |
 | modifiedBy | [TimingObject](#TimingObject) |  no  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

---


 
 
 #### [ItemProperties](#ItemProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notificationEmails | [String] |  no  |  |
 | name | String |  no  |  |
 | isActive | Bool |  no  |  |
 | code | String |  no  |  |
 | address | [AddressObject](#AddressObject) |  no  |  |
 | additionalContacts | [AdditionalContactsObject](#AdditionalContactsObject) |  no  |  |
 | timing | [[AdditionalContactsObject](#AdditionalContactsObject)] |  no  |  |
 | createdBy | [CreatedModifiedByObject](#CreatedModifiedByObject) |  no  |  |
 | modifiedBy | [TimingObject](#TimingObject) |  no  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

---


 
 
 #### [AddressObject](#AddressObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | pincode | Double |  no  |  |
 | country | String |  no  |  |
 | countryCode | String |  no  |  |

---


 
 
 #### [AdditionalContactsObject](#AdditionalContactsObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | Double |  no  |  |
 | countryCode | Double |  no  |  |

---


 
 
 #### [TimingObject](#TimingObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opening | [OpeningClosingObject](#OpeningClosingObject) |  no  |  |
 | closing | [OpeningClosingObject](#OpeningClosingObject) |  no  |  |
 | open | Bool |  no  |  |
 | weekday | String |  no  |  |

---


 
 
 #### [OpeningClosingObject](#OpeningClosingObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hour | String |  no  |  |
 | minute | String |  no  |  |

---


 
 
 #### [PickupResponse](#PickupResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PickupResponseItems](#PickupResponseItems)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [PickupConfiguration](#PickupConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | datetimeCheck | Bool |  no  |  |
 | header | String |  no  |  |
 | instructionForCustomer | String |  no  |  |

---


 
 
 #### [PickupResponseItems](#PickupResponseItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | datetimeCheck | Bool |  no  |  |
 | header | String |  no  |  |
 | instructionForCustomer | String |  no  |  |
 | appId | String |  no  |  |

---


 
 
 #### [ShippingSchema](#ShippingSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | assignment | [AssignmentSchema](#AssignmentSchema) |  no  |  |
 | id | String |  no  |  |
 | appId | String |  no  |  |

---


 
 
 #### [ShippingResponse](#ShippingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [ShippingSchema](#ShippingSchema) |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [AssignmentSchema](#AssignmentSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentPriority | [FulfillmentPriorityObject](#FulfillmentPriorityObject) |  no  |  |
 | defaultSortStrategy | String |  no  |  |

---


 
 
 #### [FulfillmentPriorityObject](#FulfillmentPriorityObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priorities | String |  no  |  |
 | enabled | Bool |  no  |  |

---


 
 
 #### [StoreSchema](#StoreSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | assignment | [StoreAssignmentObject](#StoreAssignmentObject) |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [StoreResponse](#StoreResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [StoreSchema](#StoreSchema) |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [StoreAssignmentObject](#StoreAssignmentObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | strategy | [StrategyObject](#StrategyObject) |  no  |  |
 | assignmentType | String |  no  |  |

---


 
 
 #### [StrategyObject](#StrategyObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rules | [[StrategyItems](#StrategyItems)] |  no  |  |

---


 
 
 #### [StrategyItems](#StrategyItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productTags | [String] |  no  |  |
 | zone | String |  no  |  |

---


 
 
 #### [StoreListResponse](#StoreListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ZoneSchema](#ZoneSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zoneDetail | [ZoneDetailsObject](#ZoneDetailsObject) |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [ZoneListResponse](#ZoneListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ZoneSchema](#ZoneSchema)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [RegionObject](#RegionObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | state | String |  no  |  |

---


 
 
 #### [PincodeObject](#PincodeObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincodeList | [Double] |  no  |  |

---


 
 
 #### [RadiusObject](#RadiusObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Double |  no  |  |

---


 
 
 #### [ZoneDetailsObject](#ZoneDetailsObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | radius | [RadiusObject](#RadiusObject) |  no  |  |
 | pincode | [PincodeObject](#PincodeObject) |  no  |  |
 | region | [RegionObject](#RegionObject) |  no  |  |

---




 
 
 #### [UnauthenticatedUser](#UnauthenticatedUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Failure message. |

---


 
 
 #### [UnauthenticatedApplication](#UnauthenticatedApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Failure message. |

---


 
 
 #### [BadRequest](#BadRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Failure message. |

---


 
 
 #### [ResourceNotFound](#ResourceNotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Resource not found with {id} |

---


 
 
 #### [InternalServerError](#InternalServerError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Internal server Server error |
 | code | String |  no  | Error code |

---


 
 
 #### [PlanRecurring](#PlanRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String |  no  |  |
 | intervalCount | Double |  no  |  |

---


 
 
 #### [Plan](#Plan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [PlanRecurring](#PlanRecurring) |  no  |  |
 | isTrialPlan | Bool |  no  |  |
 | planGroup | String |  no  |  |
 | tagLines | [String] |  no  |  |
 | currency | String |  no  |  |
 | isActive | Bool |  no  |  |
 | isVisible | Bool |  no  |  |
 | trialPeriod | Double |  no  |  |
 | addons | [String] |  no  |  |
 | tags | [String] |  no  |  |
 | type | String |  no  |  |
 | country | String |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | amount | Double |  no  |  |
 | productSuiteId | String |  no  |  |
 | createdAt | String |  no  |  |
 | modifiedAt | String |  no  |  |

---


 
 
 #### [DetailedPlanComponents](#DetailedPlanComponents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | description | String |  no  |  |
 | group | String |  no  |  |
 | icon | String |  no  |  |
 | links | [String: Any] |  no  |  |
 | enabled | Bool |  no  |  |
 | displayText | String |  no  |  |

---


 
 
 #### [DetailedPlan](#DetailedPlan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [PlanRecurring](#PlanRecurring) |  no  |  |
 | isTrialPlan | Bool |  no  |  |
 | planGroup | String |  no  |  |
 | tagLines | [String] |  no  |  |
 | currency | String |  no  |  |
 | isActive | Bool |  no  |  |
 | isVisible | Bool |  no  |  |
 | trialPeriod | Double |  no  |  |
 | addons | [String] |  no  |  |
 | tags | [String] |  no  |  |
 | type | String |  no  |  |
 | country | String |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | amount | Double |  no  |  |
 | productSuiteId | String |  no  |  |
 | createdAt | String |  no  |  |
 | modifiedAt | String |  no  |  |
 | components | [[DetailedPlanComponents](#DetailedPlanComponents)] |  no  |  |

---


 
 
 #### [SubscriptionTrialPeriod](#SubscriptionTrialPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startDate | String |  no  |  |
 | endDate | String |  no  |  |

---


 
 
 #### [EntityChargePrice](#EntityChargePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [EntityChargeRecurring](#EntityChargeRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String? |  yes  |  |
 | intervalTime | Int? |  yes  |  |

---


 
 
 #### [ChargeLineItem](#ChargeLineItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | term | String? |  yes  |  |
 | pricingType | String? |  yes  |  |
 | price | [EntityChargePrice](#EntityChargePrice)? |  yes  |  |
 | recurring | [EntityChargeRecurring](#EntityChargeRecurring) |  no  |  |
 | cappedAmount | Double |  no  |  |
 | trialDays | Int |  no  |  |
 | isTest | Bool |  no  |  |
 | metadata | [String: Any] |  no  |  |

---


 
 
 #### [CreateSubscriptionCharge](#CreateSubscriptionCharge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | trialDays | Int |  no  |  |
 | lineItems | [[ChargeLineItem](#ChargeLineItem)]? |  yes  |  |
 | isTest | Bool |  no  |  |
 | returnUrl | String? |  yes  |  |

---


 
 
 #### [CurrentPeriod](#CurrentPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startDate | String |  no  |  |
 | endDate | String |  no  |  |

---


 
 
 #### [SubscriptionCharge](#SubscriptionCharge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | term | String |  no  |  |
 | pricingType | String |  no  |  |
 | price | [EntityChargePrice](#EntityChargePrice) |  no  |  |
 | recurring | [EntityChargeRecurring](#EntityChargeRecurring) |  no  |  |
 | cappedAmount | Double |  no  |  |
 | activatedOn | String |  no  |  |
 | cancelledOn | String |  no  |  |
 | billingDate | String |  no  |  |
 | currentPeriod | [CurrentPeriod](#CurrentPeriod) |  no  |  |
 | status | String |  no  |  |
 | isTest | Bool |  no  |  |
 | metadata | [String: Any] |  no  |  |

---


 
 
 #### [EntitySubscription](#EntitySubscription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | status | String |  no  |  |
 | companyId | Int |  no  |  |
 | activatedOn | String |  no  |  |
 | cancelledOn | String |  no  |  |
 | trialDays | Int |  no  |  |
 | trialPeriod | [SubscriptionTrialPeriod](#SubscriptionTrialPeriod) |  no  |  |
 | metadata | [String: Any] |  no  |  |
 | lineItems | [[SubscriptionCharge](#SubscriptionCharge)] |  no  |  |

---


 
 
 #### [CreateSubscriptionResponse](#CreateSubscriptionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscription | [EntitySubscription](#EntitySubscription) |  no  |  |
 | confirmUrl | String |  no  |  |

---


 
 
 #### [InvoiceDetailsPeriod](#InvoiceDetailsPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String |  no  |  |
 | end | String |  no  |  |

---


 
 
 #### [InvoiceDetailsClient](#InvoiceDetailsClient)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addressLines | [String] |  no  |  |
 | name | String |  no  |  |
 | email | String |  no  |  |
 | phone | String |  no  |  |

---


 
 
 #### [InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | value | String |  no  |  |
 | timestamp | String |  no  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsDataChecks](#InvoiceDetailsPaymentMethodsDataChecks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cvcCheck | String |  no  |  |
 | addressLine1Check | String |  no  |  |
 | addressPostalCodeCheck | String |  no  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsDataNetworks](#InvoiceDetailsPaymentMethodsDataNetworks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | available | [String] |  no  |  |
 | preferred | String |  no  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsDataThreeDSecureUsage](#InvoiceDetailsPaymentMethodsDataThreeDSecureUsage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | supported | Bool |  no  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsData](#InvoiceDetailsPaymentMethodsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | String |  no  |  |
 | last4 | String |  no  |  |
 | checks | [InvoiceDetailsPaymentMethodsDataChecks](#InvoiceDetailsPaymentMethodsDataChecks) |  no  |  |
 | wallet | String |  no  |  |
 | country | String |  no  |  |
 | funding | String |  no  |  |
 | expYear | Int |  no  |  |
 | networks | [InvoiceDetailsPaymentMethodsDataNetworks](#InvoiceDetailsPaymentMethodsDataNetworks) |  no  |  |
 | expMonth | Int |  no  |  |
 | fingerprint | String |  no  |  |
 | generatedFrom | String |  no  |  |
 | threeDSecureUsage | [InvoiceDetailsPaymentMethodsDataThreeDSecureUsage](#InvoiceDetailsPaymentMethodsDataThreeDSecureUsage) |  no  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethods](#InvoiceDetailsPaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | type | String |  no  |  |
 | pgPaymentMethodId | String |  no  |  |
 | data | [InvoiceDetailsPaymentMethodsData](#InvoiceDetailsPaymentMethodsData) |  no  |  |
 | isDefault | Bool |  no  |  |

---


 
 
 #### [InvoicePaymentMethod](#InvoicePaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pgPaymentMethodId | String |  no  |  |

---


 
 
 #### [InvoiceDetails](#InvoiceDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | period | [InvoiceDetailsPeriod](#InvoiceDetailsPeriod) |  no  |  |
 | client | [InvoiceDetailsClient](#InvoiceDetailsClient) |  no  |  |
 | autoAdvance | Bool |  no  |  |
 | currency | String |  no  |  |
 | paid | Bool |  no  |  |
 | attemp | Int |  no  |  |
 | id | String |  no  |  |
 | collectionMethod | String |  no  |  |
 | subscriberId | String |  no  |  |
 | invoiceUrl | String |  no  |  |
 | number | String |  no  |  |
 | pgData | [String: Any] |  no  |  |
 | receiptNumber | String |  no  |  |
 | statementDescriptor | String |  no  |  |
 | currentStatus | String |  no  |  |
 | statusTrail | [[InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)] |  no  |  |
 | subtotal | Double |  no  |  |
 | total | Double |  no  |  |
 | subscription | String |  no  |  |
 | nextActionTime | String |  no  |  |
 | createdAt | String |  no  |  |
 | modifiedAt | String |  no  |  |
 | hashIdentifier | String |  no  |  |
 | paymentMethod | [InvoicePaymentMethod](#InvoicePaymentMethod) |  no  |  |

---


 
 
 #### [InvoiceItemsPlanRecurring](#InvoiceItemsPlanRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String |  no  |  |
 | intervalCount | Int |  no  |  |

---


 
 
 #### [InvoiceItemsPlan](#InvoiceItemsPlan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [InvoiceItemsPlanRecurring](#InvoiceItemsPlanRecurring) |  no  |  |
 | isTrialPlan | Bool |  no  |  |
 | planGroup | String |  no  |  |
 | tagLines | [String] |  no  |  |
 | currency | String |  no  |  |
 | isActive | Bool |  no  |  |
 | isVisible | Bool |  no  |  |
 | trialPeriod | Int |  no  |  |
 | addons | [String] |  no  |  |
 | tags | [String] |  no  |  |
 | type | String |  no  |  |
 | country | String |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | amount | Int |  no  |  |
 | productSuiteId | String |  no  |  |
 | createdAt | String |  no  |  |
 | modifiedAt | String |  no  |  |

---


 
 
 #### [InvoiceItemsPeriod](#InvoiceItemsPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String |  no  |  |
 | end | String |  no  |  |

---


 
 
 #### [InvoiceItems](#InvoiceItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | currency | String |  no  |  |
 | plan | [InvoiceItemsPlan](#InvoiceItemsPlan) |  no  |  |
 | name | String |  no  |  |
 | quantity | Int |  no  |  |
 | description | String |  no  |  |
 | period | [InvoiceItemsPeriod](#InvoiceItemsPeriod) |  no  |  |
 | unitAmount | Double |  no  |  |
 | amount | Double |  no  |  |
 | type | String |  no  |  |
 | invoiceId | String |  no  |  |
 | createdAt | String |  no  |  |
 | modifiedAt | String |  no  |  |

---


 
 
 #### [Invoice](#Invoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoice | [InvoiceDetails](#InvoiceDetails) |  no  |  |
 | invoiceItems | [[InvoiceItems](#InvoiceItems)] |  no  |  |

---


 
 
 #### [InvoicesDataClient](#InvoicesDataClient)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | email | String |  no  |  |
 | phone | String |  no  |  |
 | addressLines | [String] |  no  |  |

---


 
 
 #### [InvoicesDataPeriod](#InvoicesDataPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String |  no  |  |
 | end | String |  no  |  |

---


 
 
 #### [InvoicesDataPaymentMethod](#InvoicesDataPaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pgPaymentMethodId | String |  no  |  |

---


 
 
 #### [InvoicesData](#InvoicesData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | client | [InvoicesDataClient](#InvoicesDataClient) |  no  |  |
 | autoAdvance | Bool |  no  |  |
 | currency | String |  no  |  |
 | paid | Bool |  no  |  |
 | attemp | Int |  no  |  |
 | collectionMethod | String |  no  |  |
 | subscriberId | String |  no  |  |
 | invoiceUrl | String |  no  |  |
 | number | String |  no  |  |
 | pgData | [String: Any] |  no  |  |
 | period | [InvoicesDataPeriod](#InvoicesDataPeriod) |  no  |  |
 | receiptNumber | String |  no  |  |
 | statementDescriptor | String |  no  |  |
 | currentStatus | String |  no  |  |
 | statusTrail | [[InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)] |  no  |  |
 | subtotal | Double |  no  |  |
 | total | Double |  no  |  |
 | subscription | String |  no  |  |
 | nextActionTime | String |  no  |  |
 | createdAt | String |  no  |  |
 | modifiedAt | String |  no  |  |
 | hashIdentifier | String |  no  |  |
 | paymentMethod | [InvoicesDataPaymentMethod](#InvoicesDataPaymentMethod) |  no  |  |
 | invoiceItems | [[InvoiceItems](#InvoiceItems)] |  no  |  |

---


 
 
 #### [Invoices](#Invoices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[InvoicesData](#InvoicesData)] |  no  |  |
 | start | Int |  no  |  |
 | end | Int |  no  |  |
 | limit | Int |  no  |  |
 | page | Int |  no  |  |
 | total | Int |  no  |  |

---


 
 
 #### [Phone](#Phone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String |  no  |  |
 | phoneCountryCode | String |  no  |  |

---


 
 
 #### [SubscriptionBillingAddress](#SubscriptionBillingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | state | String |  no  |  |
 | city | String |  no  |  |
 | line1 | String |  no  |  |
 | line2 | String |  no  |  |
 | postalCode | String |  no  |  |

---


 
 
 #### [SubscriptionCustomer](#SubscriptionCustomer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [Phone](#Phone) |  no  |  |
 | billingAddress | [SubscriptionBillingAddress](#SubscriptionBillingAddress) |  no  |  |
 | id | String |  no  |  |
 | uniqueId | String |  no  |  |
 | type | String |  no  |  |
 | name | String |  no  |  |
 | email | String |  no  |  |
 | createdAt | String |  no  |  |
 | modifiedAt | String |  no  |  |
 | data | [String: Any] |  no  |  |

---


 
 
 #### [SubscriptionCustomerCreate](#SubscriptionCustomerCreate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [Phone](#Phone) |  no  |  |
 | billingAddress | [SubscriptionBillingAddress](#SubscriptionBillingAddress) |  no  |  |
 | uniqueId | String |  no  |  |
 | type | String |  no  |  |
 | name | String |  no  |  |
 | email | String |  no  |  |

---


 
 
 #### [SubscriptionCurrentPeriod](#SubscriptionCurrentPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String |  no  |  |
 | end | String |  no  |  |

---


 
 
 #### [SubscriptionPauseCollection](#SubscriptionPauseCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | behavior | String |  no  |  |
 | resumeAt | String |  no  |  |

---


 
 
 #### [SubscriptionTrial](#SubscriptionTrial)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String |  no  |  |
 | end | String |  no  |  |

---


 
 
 #### [SubscriptionInvoiceSettings](#SubscriptionInvoiceSettings)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | generation | Bool |  no  |  |
 | charging | Bool |  no  |  |

---


 
 
 #### [Subscription](#Subscription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currentPeriod | [SubscriptionCurrentPeriod](#SubscriptionCurrentPeriod) |  no  |  |
 | pauseCollection | [SubscriptionPauseCollection](#SubscriptionPauseCollection) |  no  |  |
 | trial | [SubscriptionTrial](#SubscriptionTrial) |  no  |  |
 | invoiceSettings | [SubscriptionInvoiceSettings](#SubscriptionInvoiceSettings) |  no  |  |
 | isActive | Bool |  no  |  |
 | cancelAtPeriodEnd | Bool |  no  |  |
 | id | String |  no  |  |
 | subscriberId | String |  no  |  |
 | planId | String |  no  |  |
 | productSuiteId | String |  no  |  |
 | planData | [Plan](#Plan) |  no  |  |
 | currentStatus | String |  no  |  |
 | collectionMethod | String |  no  |  |
 | createdAt | String |  no  |  |
 | modifiedAt | String |  no  |  |
 | latestInvoice | String |  no  |  |

---


 
 
 #### [SubscriptionStatus](#SubscriptionStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isEnabled | Bool |  no  |  |
 | subscription | [Subscription](#Subscription) |  no  |  |

---


 
 
 #### [SubscriptionLimitApplication](#SubscriptionLimitApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | hardLimit | Int |  no  |  |
 | softLimit | Int |  no  |  |

---


 
 
 #### [SubscriptionLimitMarketplace](#SubscriptionLimitMarketplace)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |

---


 
 
 #### [SubscriptionLimitOtherPlatform](#SubscriptionLimitOtherPlatform)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |

---


 
 
 #### [SubscriptionLimitTeam](#SubscriptionLimitTeam)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | limit | Int |  no  |  |

---


 
 
 #### [SubscriptionLimitProducts](#SubscriptionLimitProducts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bulk | Bool |  no  |  |
 | limit | Int |  no  |  |

---


 
 
 #### [SubscriptionLimitExtensions](#SubscriptionLimitExtensions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | limit | Int |  no  |  |

---


 
 
 #### [SubscriptionLimitIntegrations](#SubscriptionLimitIntegrations)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | limit | Int |  no  |  |

---


 
 
 #### [SubscriptionLimit](#SubscriptionLimit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | [SubscriptionLimitApplication](#SubscriptionLimitApplication) |  no  |  |
 | marketplace | [SubscriptionLimitMarketplace](#SubscriptionLimitMarketplace) |  no  |  |
 | otherPlatform | [SubscriptionLimitOtherPlatform](#SubscriptionLimitOtherPlatform) |  no  |  |
 | team | [SubscriptionLimitTeam](#SubscriptionLimitTeam) |  no  |  |
 | products | [SubscriptionLimitProducts](#SubscriptionLimitProducts) |  no  |  |
 | extensions | [SubscriptionLimitExtensions](#SubscriptionLimitExtensions) |  no  |  |
 | integrations | [SubscriptionLimitIntegrations](#SubscriptionLimitIntegrations) |  no  |  |
 | isTrialPlan | Bool |  no  |  |

---


 
 
 #### [SubscriptionActivateReq](#SubscriptionActivateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueId | String |  no  |  |
 | type | String |  no  |  |
 | productSuite | String |  no  |  |
 | planId | String |  no  |  |
 | paymentMethod | String |  no  |  |

---


 
 
 #### [SubscriptionActivateRes](#SubscriptionActivateRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [Subscription](#Subscription) |  no  |  |

---


 
 
 #### [CancelSubscriptionReq](#CancelSubscriptionReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueId | String |  no  |  |
 | type | String |  no  |  |
 | productSuite | String |  no  |  |
 | subscriptionId | String |  no  |  |

---


 
 
 #### [CancelSubscriptionRes](#CancelSubscriptionRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [Subscription](#Subscription) |  no  |  |

---




 
 
 #### [StatsImported](#StatsImported)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |

---


 
 
 #### [StatsProcessedEmail](#StatsProcessedEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Int |  no  |  |
 | failed | Int |  no  |  |
 | suppressed | Int |  no  |  |

---


 
 
 #### [StatsProcessedSms](#StatsProcessedSms)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Int |  no  |  |
 | failed | Int |  no  |  |
 | suppressed | Int |  no  |  |

---


 
 
 #### [StatsProcessed](#StatsProcessed)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [StatsProcessedEmail](#StatsProcessedEmail) |  no  |  |
 | sms | [StatsProcessedSms](#StatsProcessedSms) |  no  |  |

---


 
 
 #### [Stats](#Stats)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | imported | [String: Any] |  no  |  |
 | processed | [String: Any] |  no  |  |

---


 
 
 #### [GetStats](#GetStats)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Stats](#Stats)] |  no  |  |

---


 
 
 #### [CampaignReq](#CampaignReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | tags | [String] |  no  |  |
 | headers | [String] |  no  |  |
 | isActive | Bool |  no  |  |
 | name | String |  no  |  |
 | fileUrl | String |  no  |  |
 | type | String |  no  |  |
 | recordsCount | Int |  no  |  |
 | application | String |  no  |  |

---


 
 
 #### [RecipientHeaders](#RecipientHeaders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |

---


 
 
 #### [CampaignEmailTemplate](#CampaignEmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [CampignEmailProvider](#CampignEmailProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | fromName | String |  no  |  |
 | fromEmail | String |  no  |  |

---


 
 
 #### [CampaignEmail](#CampaignEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | [CampaignEmailTemplate](#CampaignEmailTemplate) |  no  |  |
 | provider | [CampignEmailProvider](#CampignEmailProvider) |  no  |  |

---


 
 
 #### [Campaign](#Campaign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recipientHeaders | [RecipientHeaders](#RecipientHeaders) |  no  |  |
 | email | [CampaignEmail](#CampaignEmail) |  no  |  |
 | description | String |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | isActive | Bool |  no  |  |
 | id | String |  no  |  |
 | datasource | String |  no  |  |
 | type | String |  no  |  |
 | name | String |  no  |  |
 | application | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | slug | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [Campaigns](#Campaigns)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Campaign](#Campaign)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [BigqueryHeadersReq](#BigqueryHeadersReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | query | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [BigqueryHeadersResHeaders](#BigqueryHeadersResHeaders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [BigqueryHeadersRes](#BigqueryHeadersRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headers | [[BigqueryHeadersResHeaders](#BigqueryHeadersResHeaders)] |  no  |  |

---


 
 
 #### [GetNRecordsCsvReq](#GetNRecordsCsvReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | header | Bool |  no  |  |
 | count | Int |  no  |  |

---


 
 
 #### [GetNRecordsCsvResItems](#GetNRecordsCsvResItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String |  no  |  |
 | email | String |  no  |  |
 | firstname | String |  no  |  |
 | lastname | String |  no  |  |
 | orderid | String |  no  |  |

---


 
 
 #### [GetNRecordsCsvRes](#GetNRecordsCsvRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GetNRecordsCsvResItems](#GetNRecordsCsvResItems)] |  no  |  |

---


 
 
 #### [AudienceReq](#AudienceReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | tags | [String] |  no  |  |
 | headers | [String] |  no  |  |
 | isActive | Bool |  no  |  |
 | name | String |  no  |  |
 | fileUrl | String |  no  |  |
 | type | String |  no  |  |
 | recordsCount | Int |  no  |  |
 | application | String |  no  |  |

---


 
 
 #### [Audience](#Audience)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | tags | [String] |  no  |  |
 | headers | [String] |  no  |  |
 | isActive | Bool |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | fileUrl | String |  no  |  |
 | type | String |  no  |  |
 | recordsCount | Int |  no  |  |
 | application | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | slug | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [Audiences](#Audiences)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Audience](#Audience)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [EmailProviderReqFrom](#EmailProviderReqFrom)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | email | String |  no  |  |
 | isDefault | Bool |  no  |  |

---


 
 
 #### [EmailProviderReq](#EmailProviderReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | apiKey | String |  no  |  |
 | type | String |  no  |  |
 | provider | String |  no  |  |
 | from | [[EmailProviderReqFrom](#EmailProviderReqFrom)] |  no  |  |

---


 
 
 #### [EmailProvider](#EmailProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | provider | String |  no  |  |
 | from | [[EmailProviderReqFrom](#EmailProviderReqFrom)] |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | apiKey | String |  no  |  |
 | application | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | slug | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [EmailProviders](#EmailProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EmailProvider](#EmailProvider)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [EmailTemplateDeleteSuccessRes](#EmailTemplateDeleteSuccessRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [EmailTemplateDeleteFailureRes](#EmailTemplateDeleteFailureRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [EmailTemplateKeys](#EmailTemplateKeys)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | to | String |  no  |  |
 | cc | String |  no  |  |
 | bcc | String |  no  |  |

---


 
 
 #### [EmailTemplateHeaders](#EmailTemplateHeaders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [EmailTemplateReq](#EmailTemplateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | keys | [EmailTemplateKeys](#EmailTemplateKeys) |  no  |  |
 | from | String |  no  |  |
 | staticTo | [String] |  no  |  |
 | staticCc | [String] |  no  |  |
 | staticBcc | [String] |  no  |  |
 | replyTo | String |  no  |  |
 | headers | [[EmailTemplateHeaders](#EmailTemplateHeaders)] |  no  |  |
 | subject | [TemplateAndType](#TemplateAndType) |  no  |  |
 | html | [TemplateAndType](#TemplateAndType) |  no  |  |
 | text | [TemplateAndType](#TemplateAndType) |  no  |  |
 | attachments | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |

---


 
 
 #### [TemplateAndType](#TemplateAndType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateType | String |  no  |  |
 | template | String |  no  |  |

---


 
 
 #### [EmailTemplateRes](#EmailTemplateRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool |  no  |  |
 | isInternal | Bool |  no  |  |
 | description | String |  no  |  |
 | staticTo | [String] |  no  |  |
 | staticCc | [String] |  no  |  |
 | staticBcc | [String] |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |
 | published | Bool |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | keys | [EmailTemplateKeys](#EmailTemplateKeys) |  no  |  |
 | from | String |  no  |  |
 | replyTo | String |  no  |  |
 | headers | [[EmailTemplateHeaders](#EmailTemplateHeaders)] |  no  |  |
 | subject | [TemplateAndType](#TemplateAndType) |  no  |  |
 | html | [TemplateAndType](#TemplateAndType) |  no  |  |
 | text | [TemplateAndType](#TemplateAndType) |  no  |  |
 | attachments | [[String: Any]] |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | slug | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [EmailTemplate](#EmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool |  no  |  |
 | isInternal | Bool |  no  |  |
 | description | String |  no  |  |
 | staticTo | [[String: Any]] |  no  |  |
 | staticCc | [[String: Any]] |  no  |  |
 | staticBcc | [[String: Any]] |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |
 | published | Bool |  no  |  |
 | id | String |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | from | String |  no  |  |
 | fromName | String |  no  |  |
 | subject | [TemplateAndType](#TemplateAndType) |  no  |  |
 | html | [TemplateAndType](#TemplateAndType) |  no  |  |
 | text | [TemplateAndType](#TemplateAndType) |  no  |  |
 | headers | [[String: Any]] |  no  |  |
 | attachments | [[String: Any]] |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [SystemEmailTemplate](#SystemEmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool |  no  |  |
 | isInternal | Bool |  no  |  |
 | description | String |  no  |  |
 | staticTo | [[String: Any]] |  no  |  |
 | staticCc | [[String: Any]] |  no  |  |
 | staticBcc | [[String: Any]] |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |
 | published | Bool |  no  |  |
 | id | String |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | from | String |  no  |  |
 | fromName | String |  no  |  |
 | subject | [TemplateAndType](#TemplateAndType) |  no  |  |
 | html | [TemplateAndType](#TemplateAndType) |  no  |  |
 | text | [TemplateAndType](#TemplateAndType) |  no  |  |
 | headers | [[String: Any]] |  no  |  |
 | attachments | [[String: Any]] |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [EmailTemplates](#EmailTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EmailTemplate](#EmailTemplate)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [SystemEmailTemplates](#SystemEmailTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SystemEmailTemplate](#SystemEmailTemplate)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [EventSubscriptionTemplateSms](#EventSubscriptionTemplateSms)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscribed | Bool |  no  |  |
 | template | String |  no  |  |

---


 
 
 #### [EventSubscriptionTemplateEmail](#EventSubscriptionTemplateEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscribed | Bool |  no  |  |
 | template | String |  no  |  |

---


 
 
 #### [EventSubscriptionTemplate](#EventSubscriptionTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sms | [EventSubscriptionTemplateSms](#EventSubscriptionTemplateSms) |  no  |  |
 | email | [EventSubscriptionTemplateEmail](#EventSubscriptionTemplateEmail) |  no  |  |

---


 
 
 #### [EventSubscription](#EventSubscription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | [EventSubscriptionTemplate](#EventSubscriptionTemplate) |  no  |  |
 | isDefault | Bool |  no  |  |
 | id | String |  no  |  |
 | application | String |  no  |  |
 | event | String |  no  |  |
 | slug | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [EventSubscriptions](#EventSubscriptions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EventSubscription](#EventSubscription)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [TriggerJobResponse](#TriggerJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int |  no  |  |

---


 
 
 #### [TriggerJobRequest](#TriggerJobRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jobId | String |  no  |  |

---


 
 
 #### [Job](#Job)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | completed | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | id | String |  no  |  |
 | campaign | String |  no  |  |
 | application | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [Jobs](#Jobs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Job](#Job)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [JobLog](#JobLog)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | imported | [String: Any] |  no  |  |
 | processed | [String: Any] |  no  |  |
 | id | String |  no  |  |
 | job | String |  no  |  |
 | campaign | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [JobLogs](#JobLogs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[JobLog](#JobLog)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [LogEmail](#LogEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | String |  no  |  |

---


 
 
 #### [LogPushnotification](#LogPushnotification)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pushtokens | [String] |  no  |  |

---


 
 
 #### [LogMeta](#LogMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | identifier | String |  no  |  |
 | key | String |  no  |  |
 | offset | String |  no  |  |
 | partition | String |  no  |  |
 | topic | String |  no  |  |

---


 
 
 #### [Log](#Log)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [LogEmail](#LogEmail) |  no  |  |
 | pushnotification | [LogPushnotification](#LogPushnotification) |  no  |  |
 | meta | [LogMeta](#LogMeta) |  no  |  |
 | id | String |  no  |  |
 | application | String |  no  |  |
 | service | String |  no  |  |
 | step | String |  no  |  |
 | status | String |  no  |  |
 | data | [String: Any] |  no  |  |
 | expireAt | String |  no  |  |
 | createdAt | String |  no  |  |

---


 
 
 #### [Logs](#Logs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Log](#Log)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [PushtokenReq](#PushtokenReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String |  no  |  |
 | bundleIdentifier | String |  no  |  |
 | pushToken | String |  no  |  |
 | uniqueDeviceId | String |  no  |  |

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


 
 
 #### [SmsProviderReq](#SmsProviderReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | sender | String |  no  |  |
 | username | String |  no  |  |
 | authkey | String |  no  |  |
 | type | String |  no  |  |
 | provider | String |  no  |  |

---


 
 
 #### [SmsProvider](#SmsProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rpt | Int |  no  |  |
 | type | String |  no  |  |
 | provider | String |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | sender | String |  no  |  |
 | username | String |  no  |  |
 | authkey | String |  no  |  |
 | application | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | slug | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [SmsProviders](#SmsProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SmsProvider](#SmsProvider)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [SmsTemplateDeleteSuccessRes](#SmsTemplateDeleteSuccessRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [SmsTemplateDeleteFailureRes](#SmsTemplateDeleteFailureRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [SmsTemplateMessage](#SmsTemplateMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateType | String |  no  |  |
 | template | String |  no  |  |

---


 
 
 #### [SmsTemplateReq](#SmsTemplateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage) |  no  |  |
 | templateVariables | [String: Any] |  no  |  |
 | attachments | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |

---


 
 
 #### [SmsTemplateRes](#SmsTemplateRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool |  no  |  |
 | isInternal | Bool |  no  |  |
 | description | String |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |
 | published | Bool |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage) |  no  |  |
 | templateVariables | [String: Any] |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | slug | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [SmsTemplate](#SmsTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool |  no  |  |
 | isInternal | Bool |  no  |  |
 | description | String |  no  |  |
 | priority | String |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | published | Bool |  no  |  |
 | id | String |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage) |  no  |  |
 | templateVariables | [String: Any] |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [SystemSmsTemplate](#SystemSmsTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool |  no  |  |
 | isInternal | Bool |  no  |  |
 | description | String |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |
 | published | Bool |  no  |  |
 | id | String |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage) |  no  |  |
 | templateVariables | [String: Any] |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [SmsTemplates](#SmsTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SmsTemplate](#SmsTemplate)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [SystemSmsTemplates](#SystemSmsTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SystemSmsTemplate](#SystemSmsTemplate)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [Notification](#Notification)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | body | String |  no  |  |
 | subtitle | String |  no  |  |
 | icon | String |  no  |  |
 | deeplink | String |  no  |  |
 | clickAction | String |  no  |  |

---


 
 
 #### [SystemNotificationUser](#SystemNotificationUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [SystemNotificationSettings](#SystemNotificationSettings)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sound | Bool |  no  |  |
 | priority | String |  no  |  |
 | timeToLive | String |  no  |  |

---


 
 
 #### [SystemNotification](#SystemNotification)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notification | [Notification](#Notification) |  no  |  |
 | user | [SystemNotificationUser](#SystemNotificationUser) |  no  |  |
 | settings | [SystemNotificationUser](#SystemNotificationUser) |  no  |  |
 | id | String |  no  |  |
 | group | String |  no  |  |
 | createdAt | String |  no  |  |

---


 
 
 #### [SystemNotificationsPage](#SystemNotificationsPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | current | Int |  no  |  |
 | size | Int |  no  |  |
 | itemTotal | Int |  no  |  |
 | hasNext | Bool |  no  |  |

---


 
 
 #### [SystemNotifications](#SystemNotifications)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SystemNotification](#SystemNotification)] |  no  |  |
 | lastReadAnchor | Int |  no  |  |
 | page | [Page](#Page) |  no  |  |

---




 
 
 #### [PaymentGatewayConfigResponse](#PaymentGatewayConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  | Application Id to which Payment config Mapped |
 | success | Bool? |  yes  | Response is successful or not |
 | excludedFields | [String]? |  yes  | List of all excluded  options with their Details. |
 | aggregators | [[String: Any]] |  no  | List of all speceific Payment options with their Details. |
 | created | Bool? |  yes  | Response is created or not |
 | displayFields | [String]? |  yes  | List of all included  options with their Details. |

---


 
 
 #### [ErrorCodeDescription](#ErrorCodeDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  | Error human understandable description. |
 | success | Bool? |  yes  | Response is successful or not |
 | code | String? |  yes  | Error descrption code. |

---


 
 
 #### [PaymentGatewayConfig](#PaymentGatewayConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | merchantSalt | String? |  yes  | Merchant key of the payment aggregator |
 | secret | String? |  yes  | Secret Key of the payment aggregator |
 | configType | String? |  yes  | Config Type of the aggregator |
 | key | String? |  yes  | Api key of the payment aggregator |
 | isActive | Bool |  no  | Enable/ Disable Flag |

---


 
 
 #### [PaymentGatewayConfigRequest](#PaymentGatewayConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregatorName | [PaymentGatewayConfig](#PaymentGatewayConfig) |  no  |  |
 | appId | String? |  yes  | Application Id to which Payment config Mapped |
 | isActive | Bool |  no  | Enable/ Disable Flag |

---


 
 
 #### [PaymentGatewayToBeReviewed](#PaymentGatewayToBeReviewed)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | [String]? |  yes  | List of added payment gateway |
 | success | Bool? |  yes  | Response is successful or not |

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


 
 
 #### [PaymentModeLogo](#PaymentModeLogo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | large | String? |  yes  | large |
 | small | String? |  yes  | smalll |

---


 
 
 #### [PaymentModeList](#PaymentModeList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardName | String |  no  | card_name |
 | name | String |  no  | name |
 | cardBrandImage | String |  no  | card_brand_image |
 | fyndVpa | String |  no  | fynd_vpa |
 | cardIsin | String |  no  | card_isin |
 | cardFingerprint | String |  no  | card_fingerprint |
 | cardId | String |  no  | card_id |
 | cardToken | String |  no  | card_token |
 | expMonth | Int |  no  | exp_month |
 | code | String |  no  | code |
 | displayName | String |  no  | display name |
 | cardType | String |  no  | card_type |
 | aggregatorName | String? |  yes  | aggregator_name |
 | cardNumber | String |  no  | card_number |
 | cardBrand | String |  no  | card_brand |
 | cardReference | String |  no  | card_reference |
 | expired | Bool |  no  | expired |
 | cardIssuer | String |  no  | card_issuer |
 | intentFlow | String |  no  | intent_flow |
 | timeout | Int |  no  | timeout |
 | logoUrl | [PaymentModeLogo](#PaymentModeLogo) |  no  | Logo |
 | nickname | String |  no  | nickname |
 | merchantCode | String |  no  | merchant code |
 | displayPriority | Int |  no  | Dispaly Priority |
 | expYear | Int |  no  | exp_year |
 | retryCount | Int |  no  | retry_count |
 | intentAppErrorList | [String] |  no  | intent_app_error_list |

---


 
 
 #### [RootPaymentMode](#RootPaymentMode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Payment mode name |
 | displayPriority | Int? |  yes  | Dispaly Priority |
 | anonymousEnable | Bool |  no  | Annonymous card flag |
 | displayName | String? |  yes  | Payment mode display name |
 | list | [[PaymentModeList](#PaymentModeList)] |  no  | Payment mode |
 | aggregatorName | String |  no  | Dispaly Priority |
 | addCardEnabled | Bool |  no  | Annonymous card flag |

---


 
 
 #### [PaymentOptions](#PaymentOptions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOption | [[RootPaymentMode](#RootPaymentMode)]? |  yes  | Payment options |

---


 
 
 #### [PaymentOptionsResponse](#PaymentOptionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOptions | [PaymentOptions](#PaymentOptions)? |  yes  | Payment options |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [PayoutsResponse](#PayoutsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customers | [String: Any]? |  yes  | customers details object |
 | transferType | String? |  yes  | transafer type |
 | uniqueTransferNo | [String: Any]? |  yes  | display priority of the payment mode |
 | isActive | Bool? |  yes  | Enable/DIsable Flag Payout |
 | moreAttributes | [String: Any]? |  yes  | bank details object |
 | payoutsAggregators | [[String: Any]]? |  yes  | payout aggregator object |
 | isDefault | Bool? |  yes  | default or not  |

---


 
 
 #### [PayoutBankDetails](#PayoutBankDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String |  no  |  |
 | accountNo | String |  no  |  |
 | accountType | String? |  yes  |  |
 | ifscCode | String? |  yes  |  |
 | city | String |  no  |  |
 | branchName | String |  no  |  |
 | bankName | String |  no  |  |
 | country | String |  no  |  |
 | pincode | Int |  no  |  |
 | accountHolder | String |  no  |  |

---


 
 
 #### [PayoutRequest](#PayoutRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | users | [String: Any]? |  yes  | payout users object |
 | transferType | String? |  yes  | transafer type |
 | aggregator | String? |  yes  | Aggregator Name |
 | isActive | Bool? |  yes  | Enable/Disable Flag Payout |
 | uniqueExternalId | String? |  yes  | Unique Id of Payout |
 | bankDetails | [PayoutBankDetails](#PayoutBankDetails)? |  yes  | payout bank details object |

---


 
 
 #### [PayoutResponse](#PayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Response is successful or not |
 | users | [String: Any]? |  yes  | users details object |
 | payouts | [String: Any]? |  yes  | payout  object |
 | transferType | String? |  yes  | transfer type |
 | aggregator | String? |  yes  | Aggregator Name |
 | created | Bool? |  yes  | created flag |
 | uniqueTransferNo | String? |  yes  | unique transfer no |
 | isActive | Bool? |  yes  | Enable/DIsable Flag Payout |
 | bankDetails | [String: Any]? |  yes  | payout bank_details object |
 | paymentStatus | String? |  yes  | status of payment |

---


 
 
 #### [UpdatePayoutResponse](#UpdatePayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  | Enable/Disable Default Payout |
 | success | Bool? |  yes  | Response is successful or not |
 | isActive | Bool? |  yes  | Enable/DIsable Flag Payout |

---


 
 
 #### [UpdatePayoutRequest](#UpdatePayoutRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  | Enable/Disable Default Payout |
 | isActive | Bool? |  yes  | Enable/Disable Flag Payout |
 | uniqueExternalId | String? |  yes  | Unique Id of Payout |

---


 
 
 #### [DeletePayoutResponse](#DeletePayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [SubscriptionPaymentMethodResponse](#SubscriptionPaymentMethodResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[String: Any]]? |  yes  | Subscription Payment Method Object |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [DeleteSubscriptionPaymentMethodResponse](#DeleteSubscriptionPaymentMethodResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Success or failure. |

---


 
 
 #### [SubscriptionConfigResponse](#SubscriptionConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String? |  yes  | Aggregator Name |
 | config | [String: Any]? |  yes  | Aggregator Config |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [SaveSubscriptionSetupIntentRequest](#SaveSubscriptionSetupIntentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueExternalId | String? |  yes  | Unique id i.e company:id |

---


 
 
 #### [SaveSubscriptionSetupIntentResponse](#SaveSubscriptionSetupIntentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any]? |  yes  | Subscription Payment Method Object |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [BeneficiaryModeDetails](#BeneficiaryModeDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  | Email of the Account Holder |
 | address | String |  no  | Address of the User |
 | accountNo | String? |  yes  | Account NUmber of the Account Holder |
 | comment | String |  no  | Remarks added by The user |
 | ifscCode | String? |  yes  | Ifsc Code of the Account |
 | mobile | String? |  yes  | Moblie Number of the User |
 | branchName | String? |  yes  | Branch Name of the Account |
 | bankName | String? |  yes  | Bank Name of the Account |
 | vpa | String |  no  |  |
 | wallet | String |  no  |  |
 | accountHolder | String? |  yes  | Name of the Account Holder |

---


 
 
 #### [AddBeneficiaryDetailsRequest](#AddBeneficiaryDetailsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderId | String? |  yes  | Merchant Order Id |
 | transferMode | String? |  yes  | Transfer Mode of the Beneficiary to be added |
 | delights | Bool? |  yes  | True if  beneficiary to be added by delights or False if by User |
 | otp | String |  no  |  |
 | requestId | String |  no  |  |
 | shipmentId | String? |  yes  | Shipment Id of the respective Merchant Order Id |
 | details | [BeneficiaryModeDetails](#BeneficiaryModeDetails)? |  yes  | Beneficiary bank details |

---


 
 
 #### [RefundAccountResponse](#RefundAccountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Response message |
 | data | [String: Any] |  no  | Refund account data. |
 | success | Bool? |  yes  | Success or failure flag. |

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
 | bankName | String? |  yes  | Bank Name Of Account |
 | success | Bool |  no  | Response is successful or not |
 | branchName | String? |  yes  | Branch Name Of Account |

---


 
 
 #### [OrderBeneficiaryDetails](#OrderBeneficiaryDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  | EMail of User |
 | address | String? |  yes  | Address of User |
 | id | Int? |  yes  |   |
 | transferMode | String? |  yes  | Transfer Mode Of Account |
 | title | String? |  yes  | Title Of Account |
 | createdOn | String? |  yes  | Creation Date of Beneficiary |
 | ifscCode | String? |  yes  | Ifsc Code Of Account |
 | displayName | String? |  yes  | Display Name Of Account |
 | isActive | Bool? |  yes  | Boolean Flag whether Beneficiary set or not |
 | bankName | String? |  yes  | Bank Name Of Account |
 | delightsUserName | String? |  yes  | User Id Who filled the Beneficiary  |
 | beneficiaryId | String? |  yes  | Benenficiary Id |
 | subtitle | String? |  yes  | SHort Title Of Account |
 | accountNo | String? |  yes  | Account Number |
 | comment | Bool |  no  | Remarks |
 | mobile | Bool |  no  | MObile no of User |
 | branchName | Bool |  no  | Branch Name Of Account |
 | modifiedOn | String? |  yes  | MOdification Date of Beneficiary |
 | accountHolder | String? |  yes  | Account Holder Name |

---


 
 
 #### [OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | beneficiaries | [[OrderBeneficiaryDetails](#OrderBeneficiaryDetails)]? |  yes  | All Beneficiaries Of An Order |
 | showBeneficiaryDetails | Bool |  no  | Show beneficiary details or not. |

---




 
 
 #### [GetActivityStatus](#GetActivityStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [ActivityHistory](#ActivityHistory)? |  yes  |  |

---


 
 
 #### [ActivityHistory](#ActivityHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdat | String |  no  |  |
 | message | String |  no  |  |
 | type | String |  no  |  |
 | user | String |  no  |  |

---


 
 
 #### [FailedOrders](#FailedOrders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orders | [FailOrder](#FailOrder)? |  yes  |  |

---


 
 
 #### [FailOrder](#FailOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String |  no  |  |
 | id | String |  no  |  |
 | reason | String |  no  |  |
 | marketplaceOrder | [MarketplaceOrder](#MarketplaceOrder) |  no  |  |
 | marketplaceOrderId | String |  no  |  |
 | createdAt | String |  no  |  |
 | appId | String |  no  |  |
 | marketplace | String |  no  |  |
 | companyId | Int |  no  |  |

---


 
 
 #### [MarketplaceOrder](#MarketplaceOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderStatusUrl | String |  no  |  |
 | adminGraphqlApiId | String |  no  |  |
 | email | String |  no  |  |
 | test | Bool |  no  |  |
 | note | String |  no  |  |
 | totalPrice | String |  no  |  |
 | appId | Int |  no  |  |
 | totalDiscountsSet | [TotalDiscountsSet](#TotalDiscountsSet) |  no  |  |
 | totalPriceSet | [TotalPriceSet](#TotalPriceSet) |  no  |  |
 | totalTaxSet | [TotalTaxSet](#TotalTaxSet) |  no  |  |
 | gateway | String |  no  |  |
 | name | String |  no  |  |
 | subtotalPriceSet | [SubtotalPriceSet](#SubtotalPriceSet) |  no  |  |
 | number | Int |  no  |  |
 | buyerAcceptsMarketing | Bool |  no  |  |
 | contactEmail | String |  no  |  |
 | token | String |  no  |  |
 | sourceName | String |  no  |  |
 | paymentGatewayNames | [[String: Any]] |  no  |  |
 | presentmentCurrency | String |  no  |  |
 | subtotalPrice | String |  no  |  |
 | processedAt | String |  no  |  |
 | orderNumber | Int |  no  |  |
 | totalTipReceived | String |  no  |  |
 | id | Int |  no  |  |
 | confirmed | Bool |  no  |  |
 | currency | String |  no  |  |
 | totalLineItemsPrice | String |  no  |  |
 | lineItems | [LineItems](#LineItems) |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | totalWeight | Int |  no  |  |
 | billingAddress | [BillingAddress](#BillingAddress) |  no  |  |
 | totalShippingPriceSet | [TotalShippingPriceSet](#TotalShippingPriceSet) |  no  |  |
 | customer | [Customer](#Customer) |  no  |  |
 | totalDiscounts | String |  no  |  |
 | totalLineItemsPriceSet | [TotalLineItemsPriceSet](#TotalLineItemsPriceSet) |  no  |  |
 | tags | String |  no  |  |
 | totalPriceUsd | String |  no  |  |
 | userId | Int |  no  |  |
 | totalTax | String |  no  |  |
 | processingMethod | String |  no  |  |
 | shippingAddress | [ShippingAddress](#ShippingAddress) |  no  |  |
 | taxesIncluded | Bool |  no  |  |
 | financialStatus | String |  no  |  |

---


 
 
 #### [TotalDiscountsSet](#TotalDiscountsSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | presentmentMoney | [PresentmentMoney](#PresentmentMoney) |  no  |  |
 | shopMoney | [ShopMoney](#ShopMoney) |  no  |  |

---


 
 
 #### [PresentmentMoney](#PresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [ShopMoney](#ShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [TotalPriceSet](#TotalPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalPriceSetShopMoney](#TotalPriceSetShopMoney) |  no  |  |
 | presentmentMoney | [TotalPriceSetPresentmentMoney](#TotalPriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [TotalPriceSetShopMoney](#TotalPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [TotalPriceSetPresentmentMoney](#TotalPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [TotalTaxSet](#TotalTaxSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalTaxSetShopMoney](#TotalTaxSetShopMoney) |  no  |  |
 | presentmentMoney | [TotalTaxSetPresentmentMoney](#TotalTaxSetPresentmentMoney) |  no  |  |

---


 
 
 #### [TotalTaxSetShopMoney](#TotalTaxSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [TotalTaxSetPresentmentMoney](#TotalTaxSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [SubtotalPriceSet](#SubtotalPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [SubtotalPriceSetShopMoney](#SubtotalPriceSetShopMoney) |  no  |  |
 | presentmentMoney | [SubtotalPriceSetPresentmentMoney](#SubtotalPriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [SubtotalPriceSetShopMoney](#SubtotalPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [SubtotalPriceSetPresentmentMoney](#SubtotalPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [LineItems](#LineItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sku | String |  no  |  |
 | fulfillableQuantity | Int |  no  |  |
 | grams | Int |  no  |  |
 | totalDiscount | String |  no  |  |
 | article | [LineItemsArticle](#LineItemsArticle) |  no  |  |
 | title | String |  no  |  |
 | variantInventoryManagement | String |  no  |  |
 | id | Int |  no  |  |
 | variantId | Int |  no  |  |
 | variantTitle | String |  no  |  |
 | productExists | Bool |  no  |  |
 | price | String |  no  |  |
 | adminGraphqlApiId | String |  no  |  |
 | quantity | Int |  no  |  |
 | vendor | String |  no  |  |
 | fulfillmentService | String |  no  |  |
 | taxable | Bool |  no  |  |
 | name | String |  no  |  |
 | productId | Int |  no  |  |
 | priceSet | [PriceSet](#PriceSet) |  no  |  |
 | taxLines | [TaxLines](#TaxLines) |  no  |  |
 | requiresShipping | Bool |  no  |  |
 | giftCard | Bool |  no  |  |
 | totalDiscountSet | [TotalDiscountSet](#TotalDiscountSet) |  no  |  |

---


 
 
 #### [LineItemsArticle](#LineItemsArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | quantities | [Quantities](#Quantities) |  no  |  |
 | oldArticleUid | String |  no  |  |
 | totalQuantity | Int |  no  |  |
 | manufacturer | [Manufacturer](#Manufacturer) |  no  |  |
 | price | [ArticlePrice](#ArticlePrice) |  no  |  |
 | trackInventory | Bool |  no  |  |
 | company | [Company](#Company) |  no  |  |
 | isActive | Bool |  no  |  |
 | dateMeta | [FailOrderDateMeta](#FailOrderDateMeta) |  no  |  |
 | fragile | Bool |  no  |  |
 | marketplaceIdentifiers | [MarketplaceIdentifiers](#MarketplaceIdentifiers) |  no  |  |
 | size | String |  no  |  |
 | isSet | Bool |  no  |  |
 | dimension | [Dimension](#Dimension) |  no  |  |
 | weight | [Weight](#Weight) |  no  |  |
 | store | [Store](#Store) |  no  |  |
 | meta | [ArticleMeta](#ArticleMeta) |  no  |  |
 | uid | String |  no  |  |
 | brand | [ArticleBrand](#ArticleBrand) |  no  |  |
 | itemId | Int |  no  |  |
 | fyndArticleCode | String |  no  |  |
 | id | String |  no  |  |
 | identifier | [LineItemsArticleIdentifier](#LineItemsArticleIdentifier) |  no  |  |
 | sellerIdentifier | String |  no  |  |
 | fyndItemCode | String |  no  |  |
 | countryOfOrigin | String |  no  |  |

---


 
 
 #### [Quantities](#Quantities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notAvailable | [NotAvailable](#NotAvailable) |  no  |  |
 | sellable | [Sellable](#Sellable) |  no  |  |
 | orderCommitted | [OrderCommitted](#OrderCommitted) |  no  |  |
 | damaged | [Damaged](#Damaged) |  no  |  |

---


 
 
 #### [NotAvailable](#NotAvailable)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |
 | updatedAt | String |  no  |  |

---


 
 
 #### [Sellable](#Sellable)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |
 | updatedAt | String |  no  |  |

---


 
 
 #### [OrderCommitted](#OrderCommitted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |
 | updatedAt | String |  no  |  |

---


 
 
 #### [Damaged](#Damaged)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String |  no  |  |
 | count | Int |  no  |  |

---


 
 
 #### [Manufacturer](#Manufacturer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool |  no  |  |
 | address | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [ArticlePrice](#ArticlePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | Int |  no  |  |
 | currency | String |  no  |  |
 | effective | Int |  no  |  |
 | transfer | Int |  no  |  |

---


 
 
 #### [Company](#Company)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | companyType | String |  no  |  |
 | businessType | String |  no  |  |
 | companyName | String |  no  |  |
 | createdOn | String |  no  |  |
 | panNo | String |  no  |  |
 | returnAllowed | Bool |  no  |  |
 | meta | String |  no  |  |
 | exchangeAllowed | Bool |  no  |  |
 | agreementStartDate | String |  no  |  |
 | exchangeWithinDays | Int |  no  |  |
 | paymentProcesingCharge | Int |  no  |  |
 | fyndAFitAvailable | Bool |  no  |  |
 | modifiedOn | String |  no  |  |
 | returnWithinDays | Int |  no  |  |

---


 
 
 #### [FailOrderDateMeta](#FailOrderDateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addedOnStore | String |  no  |  |
 | inventoryUpdatedOn | String |  no  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

---


 
 
 #### [MarketplaceIdentifiers](#MarketplaceIdentifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tatacliqLuxury | [TatacliqLuxury](#TatacliqLuxury) |  no  |  |

---


 
 
 #### [TatacliqLuxury](#TatacliqLuxury)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sku | String |  no  |  |

---


 
 
 #### [Dimension](#Dimension)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | height | Int |  no  |  |
 | width | Int |  no  |  |
 | unit | String |  no  |  |
 | length | Int |  no  |  |
 | isDefault | Bool |  no  |  |

---


 
 
 #### [Weight](#Weight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool |  no  |  |
 | unit | String |  no  |  |
 | shipping | Int |  no  |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |

---


 
 
 #### [ArticleMeta](#ArticleMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | service | String |  no  |  |

---


 
 
 #### [ArticleBrand](#ArticleBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | id | Int |  no  |  |

---


 
 
 #### [LineItemsArticleIdentifier](#LineItemsArticleIdentifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | skuCode | String |  no  |  |

---


 
 
 #### [PriceSet](#PriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [PriceSetShopMoney](#PriceSetShopMoney) |  no  |  |
 | presentmentMoney | [PriceSetPresentmentMoney](#PriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [PriceSetShopMoney](#PriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [PriceSetPresentmentMoney](#PriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [TaxLines](#TaxLines)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | price | String |  no  |  |
 | rate | Int |  no  |  |
 | priceSet | [TaxLinesPriceSet](#TaxLinesPriceSet) |  no  |  |

---


 
 
 #### [TaxLinesPriceSet](#TaxLinesPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TaxLinesPriceSetShopMoney](#TaxLinesPriceSetShopMoney) |  no  |  |
 | presentmentMoney | [TaxLinesPriceSetPresentmentMoney](#TaxLinesPriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [TaxLinesPriceSetShopMoney](#TaxLinesPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [TaxLinesPriceSetPresentmentMoney](#TaxLinesPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyCode | String |  no  |  |
 | amount | String |  no  |  |

---


 
 
 #### [TotalDiscountSet](#TotalDiscountSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | presentmentMoney | [TotalDiscountSetPresentmentMoney](#TotalDiscountSetPresentmentMoney) |  no  |  |
 | shopMoney | [TotalDiscountSetShopMoney](#TotalDiscountSetShopMoney) |  no  |  |

---


 
 
 #### [TotalDiscountSetPresentmentMoney](#TotalDiscountSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [TotalDiscountSetShopMoney](#TotalDiscountSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [BillingAddress](#BillingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String |  no  |  |
 | city | String |  no  |  |
 | zip | String |  no  |  |
 | lastName | String |  no  |  |
 | address2 | String |  no  |  |
 | longitude | Double |  no  |  |
 | provinceCode | String |  no  |  |
 | phone | String |  no  |  |
 | company | String |  no  |  |
 | latitude | Double |  no  |  |
 | name | String |  no  |  |
 | country | String |  no  |  |
 | countryCode | String |  no  |  |
 | firstName | String |  no  |  |
 | province | String |  no  |  |

---


 
 
 #### [TotalShippingPriceSet](#TotalShippingPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalShippingPriceSetShopMoney](#TotalShippingPriceSetShopMoney) |  no  |  |
 | presentmentMoney | [TotalShippingPriceSetPresentmentMoney](#TotalShippingPriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [TotalShippingPriceSetShopMoney](#TotalShippingPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [TotalShippingPriceSetPresentmentMoney](#TotalShippingPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [Customer](#Customer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdAt | String |  no  |  |
 | id | Int |  no  |  |
 | lastName | String |  no  |  |
 | state | String |  no  |  |
 | lastOrderId | Int |  no  |  |
 | note | String |  no  |  |
 | verifiedEmail | Bool |  no  |  |
 | phone | String |  no  |  |
 | acceptsMarketing | Bool |  no  |  |
 | firstName | String |  no  |  |
 | tags | String |  no  |  |
 | lastOrderName | String |  no  |  |
 | ordersCount | Int |  no  |  |
 | totalSpent | String |  no  |  |
 | taxExempt | Bool |  no  |  |
 | currency | String |  no  |  |
 | acceptsMarketingUpdatedAt | String |  no  |  |
 | email | String |  no  |  |
 | updatedAt | String |  no  |  |
 | adminGraphqlApiId | String |  no  |  |
 | defaultAddress | [DefaultAddress](#DefaultAddress) |  no  |  |

---


 
 
 #### [DefaultAddress](#DefaultAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lastName | String |  no  |  |
 | name | String |  no  |  |
 | provinceCode | String |  no  |  |
 | countryCode | String |  no  |  |
 | isDefault | Bool |  no  |  |
 | id | Int |  no  |  |
 | customerId | Int |  no  |  |
 | firstName | String |  no  |  |
 | address1 | String |  no  |  |
 | phone | String |  no  |  |
 | countryName | String |  no  |  |
 | company | String |  no  |  |
 | address2 | String |  no  |  |
 | city | String |  no  |  |
 | province | String |  no  |  |
 | country | String |  no  |  |
 | zip | String |  no  |  |

---


 
 
 #### [TotalLineItemsPriceSet](#TotalLineItemsPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalLineItemsPriceSetShopMoney](#TotalLineItemsPriceSetShopMoney) |  no  |  |
 | presentmentMoney | [TotalLineItemsPriceSetPresentmentMoney](#TotalLineItemsPriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [TotalLineItemsPriceSetShopMoney](#TotalLineItemsPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [TotalLineItemsPriceSetPresentmentMoney](#TotalLineItemsPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [ShippingAddress](#ShippingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String |  no  |  |
 | zip | String |  no  |  |
 | address2 | String |  no  |  |
 | countryCode | String |  no  |  |
 | country | String |  no  |  |
 | lastName | String |  no  |  |
 | latitude | Double |  no  |  |
 | provinceCode | String |  no  |  |
 | firstName | String |  no  |  |
 | phone | String |  no  |  |
 | province | String |  no  |  |
 | longitude | Double |  no  |  |
 | city | String |  no  |  |
 | company | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [OrderListing](#OrderListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OrderItems](#OrderItems)]? |  yes  |  |
 | filters | [Filters](#Filters)? |  yes  |  |
 | nextOrderStatus | [String: Any]? |  yes  |  |
 | page | [PlatformOrderPage](#PlatformOrderPage)? |  yes  |  |
 | appliedFilters | [AppliedFilters](#AppliedFilters)? |  yes  |  |

---


 
 
 #### [OrderItems](#OrderItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo) |  no  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress) |  no  |  |
 | channel | [Channel](#Channel) |  no  |  |
 | id | String |  no  |  |
 | application | [PlatformApplication](#PlatformApplication) |  no  |  |
 | shipments | [PlatformShipment](#PlatformShipment) |  no  |  |
 | createdAt | String |  no  |  |
 | totalShipmentsInOrder | Int |  no  |  |

---


 
 
 #### [PlatformOrderUserInfo](#PlatformOrderUserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String |  no  |  |
 | firstName | String |  no  |  |
 | gender | String |  no  |  |
 | email | String |  no  |  |
 | lastName | String |  no  |  |
 | isAnonymousUser | Bool |  no  |  |
 | uid | Int |  no  |  |
 | avisUserId | String |  no  |  |

---


 
 
 #### [PlatformDeliveryAddress](#PlatformDeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | area | String |  no  |  |
 | state | String |  no  |  |
 | country | String |  no  |  |
 | version | String |  no  |  |
 | address1 | String |  no  |  |
 | latitude | Double |  no  |  |
 | updatedAt | String |  no  |  |
 | city | String |  no  |  |
 | landmark | String |  no  |  |
 | createdAt | String |  no  |  |
 | name | String |  no  |  |
 | address | String |  no  |  |
 | phone | String |  no  |  |
 | longitude | Double |  no  |  |
 | addressType | String |  no  |  |
 | email | String |  no  |  |
 | pincode | String |  no  |  |
 | address2 | String |  no  |  |
 | contactPerson | String |  no  |  |
 | addressCategory | String |  no  |  |

---


 
 
 #### [Channel](#Channel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | logo | String |  no  |  |

---


 
 
 #### [PlatformApplication](#PlatformApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |

---


 
 
 #### [PlatformShipment](#PlatformShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [PlatformShipmentStatus](#PlatformShipmentStatus) |  no  |  |
 | bags | [Bags](#Bags) |  no  |  |
 | prices | [ShipmentPrices](#ShipmentPrices) |  no  |  |
 | id | String |  no  |  |
 | gst | [ShipmentGst](#ShipmentGst) |  no  |  |
 | totalShipmentBags | Int |  no  |  |

---


 
 
 #### [PlatformShipmentStatus](#PlatformShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | bagList | [Int] |  no  |  |
 | createdAt | String |  no  |  |
 | status | String |  no  |  |
 | name | String |  no  |  |
 | progress | Int |  no  |  |
 | shipmentId | String |  no  |  |
 | currentShipmentStatus | String |  no  |  |
 | colorCode | String |  no  |  |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [BagItem](#BagItem) |  no  |  |
 | id | Int |  no  |  |

---


 
 
 #### [BagItem](#BagItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | size | String |  no  |  |
 | slugKey | String |  no  |  |
 | canReturn | Bool |  no  |  |
 | brandId | Int |  no  |  |
 | l2Category | [String] |  no  |  |
 | name | String |  no  |  |
 | code | String |  no  |  |
 | canCancel | Bool |  no  |  |
 | attributes | [BagItemAttributes](#BagItemAttributes) |  no  |  |
 | l3CategoryName | String |  no  |  |
 | l3Category | Int |  no  |  |
 | l1Category | [String] |  no  |  |
 | image | [String] |  no  |  |
 | brand | String |  no  |  |
 | lastUpdatedAt | String |  no  |  |

---


 
 
 #### [BagItemAttributes](#BagItemAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCode | String |  no  |  |
 | brandName | String |  no  |  |
 | countryOfOrigin | String |  no  |  |

---


 
 
 #### [ShipmentPrices](#ShipmentPrices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundAmount | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | transferPrice | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | couponEffectiveDiscount | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | refundCredit | Double |  no  |  |
 | addedToFyndCash | Bool |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | discount | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | amountPaidRoundoff | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |
 | cashback | Double |  no  |  |
 | valueOfGood | Double |  no  |  |

---


 
 
 #### [Payments](#Payments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool |  no  |  |
 | displayName | String |  no  |  |
 | logo | String |  no  |  |
 | source | String |  no  |  |
 | sourceNickname | String |  no  |  |
 | displayPriority | Int |  no  |  |
 | id | Int |  no  |  |
 | mode | String |  no  |  |
 | paymentIdentifier | String |  no  |  |

---


 
 
 #### [Filters](#Filters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stages | [Stages](#Stages) |  no  |  |

---


 
 
 #### [Stages](#Stages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | value | String |  no  |  |
 | isDefault | Bool |  no  |  |
 | filters | [StagesFilters](#StagesFilters) |  no  |  |

---


 
 
 #### [StagesFilters](#StagesFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | value | String |  no  |  |
 | type | String |  no  |  |
 | options | [Options](#Options) |  no  |  |

---


 
 
 #### [Options](#Options)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [PlatformOrderPage](#PlatformOrderPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | next | String |  no  |  |
 | previous | String |  no  |  |
 | type | String |  no  |  |
 | size | Int |  no  |  |
 | current | Int |  no  |  |
 | hasNext | Bool |  no  |  |
 | itemTotal | [ItemTotal](#ItemTotal) |  no  |  |

---


 
 
 #### [ItemTotal](#ItemTotal)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | new | Int |  no  |  |
 | processing | Int |  no  |  |
 | returns | Int |  no  |  |
 | all | Int |  no  |  |

---


 
 
 #### [AppliedFilters](#AppliedFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String |  no  |  |
 | stores | [String] |  no  |  |
 | fromDate | String |  no  |  |
 | toDate | String |  no  |  |

---


 
 
 #### [OrderDetails](#OrderDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OrderPicklistListing](#OrderPicklistListing)]? |  yes  |  |
 | page | [PlatformOrderPage](#PlatformOrderPage)? |  yes  |  |
 | filters | [Filters](#Filters)? |  yes  |  |
 | nextOrderStatus | [String: Any]? |  yes  |  |
 | appliedFilters | [AppliedFilters](#AppliedFilters)? |  yes  |  |

---


 
 
 #### [OrderDetailsItem](#OrderDetailsItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo) |  no  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress) |  no  |  |
 | channel | [Channel](#Channel) |  no  |  |
 | breakupValues | [PlatformBreakupValues](#PlatformBreakupValues) |  no  |  |
 | id | String |  no  |  |
 | application | [PlatformApplication](#PlatformApplication) |  no  |  |
 | shipments | [PlatformShipmentDetails](#PlatformShipmentDetails) |  no  |  |
 | createdAt | String |  no  |  |
 | totalShipmentsInOrder | Int |  no  |  |
 | payments | [ItemsPayments](#ItemsPayments) |  no  |  |

---


 
 
 #### [PlatformBreakupValues](#PlatformBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | value | Double |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [ArticleAssignment](#ArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | strategy | String |  no  |  |
 | level | String |  no  |  |

---


 
 
 #### [PlatformShipmentDetails](#PlatformShipmentDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [PlatformShipmentDetailsStatus](#PlatformShipmentDetailsStatus) |  no  |  |
 | bags | [BagsDetails](#BagsDetails) |  no  |  |
 | prices | [ShipmentPrices](#ShipmentPrices) |  no  |  |
 | breakupValues | [ShipmentBreakupValues](#ShipmentBreakupValues) |  no  |  |
 | id | String |  no  |  |
 | dpDetails | [DpDetails](#DpDetails) |  no  |  |
 | invoice | [ShipmentInvoice](#ShipmentInvoice) |  no  |  |
 | fulfillingStore | [PlatformFulfillingStore](#PlatformFulfillingStore) |  no  |  |
 | payments | [Payments](#Payments) |  no  |  |
 | gst | [ShipmentGst](#ShipmentGst) |  no  |  |
 | company | [Company](#Company) |  no  |  |
 | brand | [PlatformShipmentDetailsBrand](#PlatformShipmentDetailsBrand) |  no  |  |
 | coupon | [String: Any] |  no  |  |
 | orderSource | String |  no  |  |
 | isNotFyndSource | Bool |  no  |  |
 | comment | String |  no  |  |
 | promise | [Promise](#Promise) |  no  |  |
 | trackingDetails | [ShipmentTrackingDetails](#ShipmentTrackingDetails) |  no  |  |
 | isFyndCoupon | Bool |  no  |  |
 | orderType | String |  no  |  |
 | totalShipmentBags | Int |  no  |  |
 | pod | [String: Any] |  no  |  |
 | lockStatus | Bool |  no  |  |
 | orderingChannel | String |  no  |  |

---


 
 
 #### [PlatformShipmentDetailsStatus](#PlatformShipmentDetailsStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | bagList | [Int] |  no  |  |
 | createdAt | String |  no  |  |
 | status | String |  no  |  |
 | name | String |  no  |  |
 | progress | Int |  no  |  |
 | shipmentId | String |  no  |  |
 | currentShipmentStatus | String |  no  |  |
 | colorCode | String |  no  |  |

---


 
 
 #### [BagsDetails](#BagsDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | financialBreakup | [[BagFinancialBreakup](#BagFinancialBreakup)] |  no  |  |
 | status | [BagCurrStatus](#BagCurrStatus) |  no  |  |
 | item | [BagItem](#BagItem) |  no  |  |
 | article | [BagArticle](#BagArticle) |  no  |  |
 | id | Int |  no  |  |
 | prices | [BagPrices](#BagPrices) |  no  |  |
 | gstDetails | [GstDetails](#GstDetails) |  no  |  |
 | breakupValues | [BagBreakupValues](#BagBreakupValues) |  no  |  |
 | updateTime | Int |  no  |  |
 | currentStatus | [BagCurrentStatus](#BagCurrentStatus) |  no  |  |
 | bagStatus | [BagStatus](#BagStatus) |  no  |  |

---


 
 
 #### [BagFinancialBreakup](#BagFinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | valueOfGood | Double |  no  |  |
 | hsnCode | String |  no  |  |
 | priceEffective | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | gstFee | String |  no  |  |
 | fyndCredits | Double |  no  |  |
 | refundAmount | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | transferPrice | Double |  no  |  |
 | amountPaidRoundoff | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | size | String |  no  |  |
 | totalUnits | Int |  no  |  |
 | discount | Double |  no  |  |
 | couponEffectiveDiscount | Double |  no  |  |
 | cashback | Double |  no  |  |
 | promotionEffectiveDiscount | Double |  no  |  |
 | gstTag | String |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | refundCredit | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | identifiers | [Identifiers](#Identifiers) |  no  |  |
 | itemName | String |  no  |  |
 | addedToFyndCash | Bool |  no  |  |
 | brandCalculatedAmount | Double |  no  |  |

---


 
 
 #### [Identifiers](#Identifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String |  no  |  |

---


 
 
 #### [BagCurrStatus](#BagCurrStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enableTracking | Bool |  no  |  |
 | isCustomerReturnAllowed | Bool |  no  |  |
 | isActive | Bool |  no  |  |
 | isReturnable | Bool |  no  |  |
 | canBeCancelled | Bool |  no  |  |

---


 
 
 #### [BagArticle](#BagArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifiers | [ArticleIdentifiers](#ArticleIdentifiers) |  no  |  |
 | espModified | Bool |  no  |  |
 | isSet | Bool |  no  |  |
 | size | String |  no  |  |
 | code | String |  no  |  |
 | set | [Set](#Set) |  no  |  |
 | sellerIdentifier | String |  no  |  |
 | returnConfig | [BagArticleReturnConfig](#BagArticleReturnConfig) |  no  |  |
 | id | String |  no  |  |
 | uid | String |  no  |  |
 | childDetails | [String: Any] |  no  |  |

---


 
 
 #### [ArticleIdentifiers](#ArticleIdentifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String |  no  |  |

---


 
 
 #### [Set](#Set)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | quantity | Int |  no  |  |
 | sizeDistribution | [SetSizeDistribution](#SetSizeDistribution) |  no  |  |

---


 
 
 #### [SetSizeDistribution](#SetSizeDistribution)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizes | [Sizes](#Sizes) |  no  |  |

---


 
 
 #### [Sizes](#Sizes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String |  no  |  |
 | pieces | Int |  no  |  |

---


 
 
 #### [BagArticleReturnConfig](#BagArticleReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | time | Int |  no  |  |
 | unit | String |  no  |  |
 | returnable | Bool |  no  |  |

---


 
 
 #### [GstDetails](#GstDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Double |  no  |  |
 | gstFee | String |  no  |  |
 | gstTag | String |  no  |  |
 | hsnCode | String |  no  |  |
 | valueOfGood | Double |  no  |  |
 | gstTaxPercentage | Double |  no  |  |
 | isDefaultHsnCode | Bool |  no  |  |

---


 
 
 #### [BagBreakupValues](#BagBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | display | String |  no  |  |
 | value | Double |  no  |  |

---


 
 
 #### [BagCurrentStatus](#BagCurrentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String |  no  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper) |  no  |  |
 | status | String |  no  |  |
 | stateType | String |  no  |  |

---


 
 
 #### [BagStateMapper](#BagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appStateName | String |  no  |  |
 | isActive | Bool |  no  |  |
 | displayName | String |  no  |  |
 | name | String |  no  |  |
 | appDisplayName | String |  no  |  |

---


 
 
 #### [BagStatus](#BagStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | stateType | String |  no  |  |
 | updatedAt | String |  no  |  |
 | bagStateMapper | [BagStatusBagStateMapper](#BagStatusBagStateMapper) |  no  |  |

---


 
 
 #### [BagStatusBagStateMapper](#BagStatusBagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool |  no  |  |
 | displayName | String |  no  |  |
 | name | String |  no  |  |
 | appDisplayName | String |  no  |  |
 | appStateName | String |  no  |  |

---


 
 
 #### [BagPrices](#BagPrices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cashback | Double |  no  |  |
 | refundCredit | Double |  no  |  |
 | couponValue | Double |  no  |  |
 | deliveryCharge | Double |  no  |  |
 | fyndCredits | Double |  no  |  |
 | priceMarked | Double |  no  |  |
 | cashbackApplied | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | amountPaidRoundoff | Double |  no  |  |
 | amountPaid | Double |  no  |  |
 | codCharges | Double |  no  |  |
 | priceEffective | Double |  no  |  |
 | refundAmount | Double |  no  |  |
 | discount | Double |  no  |  |

---


 
 
 #### [ShipmentBreakupValues](#ShipmentBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | display | String |  no  |  |
 | value | Double |  no  |  |

---


 
 
 #### [DpDetails](#DpDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstTag | String |  no  |  |

---


 
 
 #### [ShipmentInvoice](#ShipmentInvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentType | String |  no  |  |
 | updatedDate | String |  no  |  |
 | invoiceUrl | String |  no  |  |
 | labelUrl | String |  no  |  |
 | paymentMode | String |  no  |  |
 | amountToCollect | Double |  no  |  |
 | rtoAddress | [RtoAddress](#RtoAddress) |  no  |  |

---


 
 
 #### [RtoAddress](#RtoAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | id | Int |  no  |  |
 | phone | String |  no  |  |
 | locationType | String |  no  |  |
 | storeAddressJson | [StoreAddressJson](#StoreAddressJson) |  no  |  |
 | code | String |  no  |  |
 | address1 | String |  no  |  |
 | city | String |  no  |  |
 | country | String |  no  |  |
 | pincode | String |  no  |  |
 | companyId | Int |  no  |  |
 | contactPerson | String |  no  |  |
 | state | String |  no  |  |
 | storeEmail | String |  no  |  |
 | address2 | String |  no  |  |

---


 
 
 #### [StoreAddressJson](#StoreAddressJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | latitude | Double |  no  |  |
 | updatedAt | String |  no  |  |
 | area | String |  no  |  |
 | state | String |  no  |  |
 | addressType | String |  no  |  |
 | city | String |  no  |  |
 | pincode | String |  no  |  |
 | address1 | String |  no  |  |
 | address2 | String |  no  |  |
 | longitude | Double |  no  |  |
 | email | String |  no  |  |
 | phone | String |  no  |  |
 | createdAt | String |  no  |  |
 | contactPerson | String |  no  |  |
 | addressCategory | String |  no  |  |
 | version | String |  no  |  |
 | landmark | String |  no  |  |

---


 
 
 #### [PlatformFulfillingStore](#PlatformFulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | packagingMaterialCount | Int |  no  |  |
 | locationType | String |  no  |  |
 | code | String |  no  |  |
 | city | String |  no  |  |
 | meta | [FulfillingStoreMeta](#FulfillingStoreMeta) |  no  |  |
 | name | String |  no  |  |
 | isActive | Bool |  no  |  |
 | address1 | String |  no  |  |
 | storeEmail | String |  no  |  |
 | isArchived | Bool |  no  |  |
 | state | String |  no  |  |
 | address2 | String |  no  |  |
 | contactPerson | String |  no  |  |
 | phone | String |  no  |  |
 | isEnabledForRecon | Bool |  no  |  |
 | fulfillmentChannel | String |  no  |  |
 | createdAt | String |  no  |  |
 | id | Int |  no  |  |
 | pincode | String |  no  |  |
 | brandStoreTags | [String] |  no  |  |
 | companyId | Int |  no  |  |
 | storeAddressJson | [FulfillingStoreStoreAddressJson](#FulfillingStoreStoreAddressJson) |  no  |  |
 | updatedAt | String |  no  |  |
 | loginUsername | String |  no  |  |
 | country | String |  no  |  |

---


 
 
 #### [FulfillingStoreMeta](#FulfillingStoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | additionalContactDetails | [AdditionalContactDetails](#AdditionalContactDetails) |  no  |  |
 | documents | [Documents](#Documents) |  no  |  |
 | gstNumber | String |  no  |  |
 | displayName | String |  no  |  |
 | productReturnConfig | [ProductReturnConfig](#ProductReturnConfig) |  no  |  |
 | allowDpAssignmentFromFynd | Bool |  no  |  |
 | stage | String |  no  |  |
 | timing | [Timing](#Timing) |  no  |  |

---


 
 
 #### [AdditionalContactDetails](#AdditionalContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | [String] |  no  |  |

---


 
 
 #### [Documents](#Documents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gst | [Gst](#Gst) |  no  |  |

---


 
 
 #### [Gst](#Gst)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | legalName | String |  no  |  |
 | type | String |  no  |  |
 | value | String |  no  |  |
 | verified | Bool |  no  |  |

---


 
 
 #### [ProductReturnConfig](#ProductReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | onSameStore | Bool |  no  |  |

---


 
 
 #### [Timing](#Timing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opening | [Opening](#Opening) |  no  |  |
 | weekday | String |  no  |  |
 | open | Bool |  no  |  |
 | closing | [Closing](#Closing) |  no  |  |

---


 
 
 #### [Opening](#Opening)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minute | Int |  no  |  |
 | hour | Int |  no  |  |

---


 
 
 #### [Closing](#Closing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hour | Int |  no  |  |
 | minute | Int |  no  |  |

---


 
 
 #### [FulfillingStoreStoreAddressJson](#FulfillingStoreStoreAddressJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address2 | String |  no  |  |
 | area | String |  no  |  |
 | email | String |  no  |  |
 | phone | String |  no  |  |
 | state | String |  no  |  |
 | contactPerson | String |  no  |  |
 | country | String |  no  |  |
 | pincode | String |  no  |  |
 | version | String |  no  |  |
 | createdAt | String |  no  |  |
 | addressType | String |  no  |  |
 | city | String |  no  |  |
 | address1 | String |  no  |  |
 | landmark | String |  no  |  |
 | latitude | Double |  no  |  |
 | longitude | Double |  no  |  |
 | updatedAt | String |  no  |  |
 | addressCategory | String |  no  |  |

---


 
 
 #### [ShipmentGst](#ShipmentGst)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Double |  no  |  |
 | valueOfGood | Double |  no  |  |
 | gstFee | Double |  no  |  |

---


 
 
 #### [PlatformShipmentDetailsBrand](#PlatformShipmentDetailsBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNoteAllowed | Bool |  no  |  |
 | brandName | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | id | Int |  no  |  |
 | isVirtualInvoice | Bool |  no  |  |
 | createdOn | String |  no  |  |
 | logo | String |  no  |  |

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


 
 
 #### [ShipmentTrackingDetails](#ShipmentTrackingDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | time | String |  no  |  |
 | isPassed | Bool |  no  |  |
 | isCurrent | Bool |  no  |  |

---


 
 
 #### [ItemsPayments](#ItemsPayments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayPriority | Int |  no  |  |
 | id | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | displayName | String |  no  |  |
 | logo | String |  no  |  |
 | paymentIdentifier | String |  no  |  |
 | sourceNickname | String |  no  |  |
 | mode | String |  no  |  |
 | source | String |  no  |  |

---


 
 
 #### [PlatformOrderDetailsPage](#PlatformOrderDetailsPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | next | String |  no  |  |
 | previous | String |  no  |  |

---


 
 
 #### [UpdateOrderReprocessResponse](#UpdateOrderReprocessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |

---


 
 
 #### [PlatformOrderTrack](#PlatformOrderTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | requestId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | resendTimer | Int? |  yes  |  |
 | resendToken | String |  no  |  |

---


 
 
 #### [OrderPicklistListing](#OrderPicklistListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo) |  no  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress) |  no  |  |
 | channel | [Channel](#Channel) |  no  |  |
 | breakupValues | [PlatformBreakupValues](#PlatformBreakupValues) |  no  |  |
 | id | String |  no  |  |
 | application | [PlatformApplication](#PlatformApplication) |  no  |  |
 | shipments | [PlatformShipmentDetails](#PlatformShipmentDetails) |  no  |  |
 | createdAt | String |  no  |  |
 | totalShipmentsInOrder | Int |  no  |  |
 | payments | [ItemsPayments](#ItemsPayments) |  no  |  |

---


 
 
 #### [GetPingResponse](#GetPingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ping | String? |  yes  |  |

---


 
 
 #### [GetShipmentAddressResponse](#GetShipmentAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | data | [DataShipmentAddress](#DataShipmentAddress)? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [DataShipmentAddress](#DataShipmentAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | city | String |  no  |  |
 | country | String |  no  |  |
 | pincode | String |  no  |  |
 | phone | String |  no  |  |
 | area | String |  no  |  |
 | address | String |  no  |  |
 | landmark | String |  no  |  |
 | state | String |  no  |  |
 | addressType | String |  no  |  |
 | addressCategory | String |  no  |  |
 | email | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [UpdateShipmentAddressRequest](#UpdateShipmentAddressRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | address | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | state | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | country | String? |  yes  |  |
 | name | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | area | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [UpdateShipmentAddressResponse](#UpdateShipmentAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponse](#ShipmentTrackResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagList | [[ShipmentTrackResponseBagListItem](#ShipmentTrackResponseBagListItem)]? |  yes  |  |
 | message | String? |  yes  |  |
 | orderValue | Int? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItem](#ShipmentTrackResponseBagListItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enableTracking | Bool |  no  |  |
 | price | String |  no  |  |
 | timeSlot | String |  no  |  |
 | productName | String |  no  |  |
 | canReturn | Bool |  no  |  |
 | orderDate | String |  no  |  |
 | isTryAtHome | Bool |  no  |  |
 | breakupValues | [[ShipmentTrackResponseBagListItemBreakValues](#ShipmentTrackResponseBagListItemBreakValues)] |  no  |  |
 | statuses | [[ShipmentTrackResponseBagListItemStatuses](#ShipmentTrackResponseBagListItemStatuses)] |  no  |  |
 | isActive | Bool |  no  |  |
 | bagId | String |  no  |  |
 | orderId | String |  no  |  |
 | size | String |  no  |  |
 | paymentModeSource | String |  no  |  |
 | dpDetails | [ShipmentTrackResponseBagListItemDpDetails](#ShipmentTrackResponseBagListItemDpDetails) |  no  |  |
 | productId | Int |  no  |  |
 | productImage | [ShipmentTrackResponseBagListItemsProductImage](#ShipmentTrackResponseBagListItemsProductImage) |  no  |  |
 | brandName | String |  no  |  |
 | priceMarked | String |  no  |  |
 | status | String |  no  |  |
 | canCancel | Bool |  no  |  |
 | paymentMode | String |  no  |  |
 | fyndCashMsg | String |  no  |  |
 | deliveryAddress | String |  no  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemBreakValues](#ShipmentTrackResponseBagListItemBreakValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | display | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemStatuses](#ShipmentTrackResponseBagListItemStatuses)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | npsRating | Int |  no  |  |
 | npsString | String |  no  |  |
 | progressStatus | [[ShipmentTrackResponseBagListItemStatusesProgress](#ShipmentTrackResponseBagListItemStatusesProgress)] |  no  |  |
 | flowType | String |  no  |  |
 | statusProgress | Int |  no  |  |
 | isNpsDone | Bool |  no  |  |
 | headerMessage | String |  no  |  |
 | isDelayed | String |  no  |  |
 | trackingList | [[ShipmentTrackResponseBagListItemStatusesTrack](#ShipmentTrackResponseBagListItemStatusesTrack)] |  no  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemStatusesProgress](#ShipmentTrackResponseBagListItemStatusesProgress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | type | String |  no  |  |
 | state | Bool |  no  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemStatusesTrack](#ShipmentTrackResponseBagListItemStatusesTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | time | String |  no  |  |
 | isPassed | Bool |  no  |  |
 | isCurrent | Bool |  no  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemDpDetails](#ShipmentTrackResponseBagListItemDpDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | trackingNo | String |  no  |  |
 | courier | String |  no  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemsProductImage](#ShipmentTrackResponseBagListItemsProductImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [UpdateShipmentStatusResponse](#UpdateShipmentStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [String: Any]? |  yes  |  |
 | errorShipments | [[String: Any]] |  no  |  |

---


 
 
 #### [UpdateShipmentStatusBody](#UpdateShipmentStatusBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [String: Any]? |  yes  |  |
 | forceTransition | Bool? |  yes  |  |
 | task | Bool? |  yes  |  |

---


 
 
 #### [ShipmentReasonsResponse](#ShipmentReasonsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |
 | reasons | [[ShipmentResponseReasons](#ShipmentResponseReasons)]? |  yes  |  |

---


 
 
 #### [ShipmentResponseReasons](#ShipmentResponseReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonId | Double |  no  |  |
 | reason | String |  no  |  |

---


 
 
 #### [PlatformShipmentTrack](#PlatformShipmentTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [Results](#Results)? |  yes  |  |

---


 
 
 #### [Results](#Results)

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


 
 
 #### [ShipmentUpdateRequest](#ShipmentUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bags | [String]? |  yes  |  |
 | reason | [String: Any]? |  yes  |  |
 | comments | String? |  yes  |  |
 | action | String? |  yes  |  |

---


 
 
 #### [ShipmentUpdateResponse](#ShipmentUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [UpdateProcessShipmenstRequestBody](#UpdateProcessShipmenstRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentIds | [String]? |  yes  |  |
 | expectedStatus | String? |  yes  |  |

---


 
 
 #### [UpdateProcessShipmenstRequestResponse](#UpdateProcessShipmenstRequestResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [GetVoiceCallbackResponse](#GetVoiceCallbackResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [GetClickToCallResponse](#GetClickToCallResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [ApefaceApiError](#ApefaceApiError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---




 
 
 #### [DeleteResponse](#DeleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int |  no  |  |
 | meta | [String: Any] |  no  |  |
 | message | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [GetSearchWordsData](#GetSearchWordsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | result | [String: Any] |  no  |  |
 | words | [String] |  no  |  |
 | uid | String |  no  |  |
 | appId | String |  no  |  |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [GetSearchWordsDetailResponse](#GetSearchWordsDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [GetSearchWordsData](#GetSearchWordsData) |  no  |  |

---


 
 
 #### [SearchKeywordResult](#SearchKeywordResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sortOn | String? |  yes  |  |
 | query | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateSearchKeyword](#CreateSearchKeyword)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool |  no  |  |
 | result | [SearchKeywordResult](#SearchKeywordResult)? |  yes  |  |
 | words | [String] |  no  |  |
 | appId | String |  no  |  |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [GetSearchWordsResponse](#GetSearchWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[GetSearchWordsData](#GetSearchWordsData)] |  no  |  |

---


 
 
 #### [GetAutocompleteWordsData](#GetAutocompleteWordsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | words | [String] |  no  |  |
 | uid | String |  no  |  |
 | appId | String |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | results | [[String: Any]] |  no  |  |

---


 
 
 #### [GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[GetAutocompleteWordsData](#GetAutocompleteWordsData)] |  no  |  |

---


 
 
 #### [Media](#Media)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [AutocompletePageAction](#AutocompletePageAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | params | [String: Any] |  no  |  |
 | type | String? |  yes  |  |
 | url | String |  no  |  |
 | query | [String: Any]? |  yes  |  |

---


 
 
 #### [AutocompleteAction](#AutocompleteAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [AutocompletePageAction](#AutocompletePageAction) |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [AutocompleteResult](#AutocompleteResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customJson | [String: Any] |  no  |  |
 | logo | [Media](#Media) |  no  |  |
 | display | String |  no  |  |
 | action | [AutocompleteAction](#AutocompleteAction) |  no  |  |

---


 
 
 #### [CreateAutocompleteKeyword](#CreateAutocompleteKeyword)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool |  no  |  |
 | words | [String] |  no  |  |
 | appId | String |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | results | [[AutocompleteResult](#AutocompleteResult)] |  no  |  |

---


 
 
 #### [CreateAutocompleteWordsResponse](#CreateAutocompleteWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | words | [String] |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | results | [[String: Any]] |  no  |  |
 | appId | String |  no  |  |

---


 
 
 #### [ProductBundleItem](#ProductBundleItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productUid | Int? |  yes  |  |
 | minQuantity | Int? |  yes  |  |
 | allowRemove | Bool |  no  |  |
 | autoSelect | Bool |  no  |  |
 | maxQuantity | Int? |  yes  |  |
 | autoAddToCart | Bool |  no  |  |

---


 
 
 #### [ProductBundleRequest](#ProductBundleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | choice | String? |  yes  |  |
 | logo | String |  no  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | modifiedBy | [String: Any] |  no  |  |
 | modifiedOn | String |  no  |  |
 | createdBy | [String: Any] |  no  |  |
 | createdOn | String |  no  |  |
 | name | String? |  yes  |  |
 | meta | [String: Any] |  no  |  |
 | slug | String? |  yes  |  |
 | pageVisibility | [String] |  no  |  |
 | sameStoreAssignment | Bool |  no  |  |

---


 
 
 #### [GetProductBundleCreateResponse](#GetProductBundleCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | choice | String? |  yes  |  |
 | logo | String |  no  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | modifiedBy | [String: Any] |  no  |  |
 | modifiedOn | String |  no  |  |
 | createdBy | [String: Any] |  no  |  |
 | id | String |  no  |  |
 | companyId | Int |  no  |  |
 | createdOn | String |  no  |  |
 | name | String? |  yes  |  |
 | meta | [String: Any] |  no  |  |
 | slug | String? |  yes  |  |
 | pageVisibility | [String] |  no  |  |
 | sameStoreAssignment | Bool |  no  |  |

---


 
 
 #### [GetProductBundleListingResponse](#GetProductBundleListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[GetProductBundleCreateResponse](#GetProductBundleCreateResponse)] |  no  |  |

---


 
 
 #### [Size](#Size)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isAvailable | Bool |  no  |  |
 | value | String |  no  |  |
 | display | String |  no  |  |
 | quantity | Int |  no  |  |

---


 
 
 #### [Price](#Price)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxEffective | Double |  no  |  |
 | minEffective | Double |  no  |  |
 | currency | String |  no  |  |
 | maxMarked | Double |  no  |  |
 | minMarked | Double |  no  |  |

---


 
 
 #### [LimitedProductData](#LimitedProductData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | images | [String] |  no  |  |
 | price | [String: Any] |  no  |  |
 | quantity | Int |  no  |  |
 | shortDescription | String |  no  |  |
 | sizes | [String] |  no  |  |
 | identifier | [String: Any] |  no  |  |
 | countryOfOrigin | String |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | uid | Int |  no  |  |
 | slug | String |  no  |  |
 | itemCode | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [GetProducts](#GetProducts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productUid | Int |  no  |  |
 | sizes | [[Size](#Size)] |  no  |  |
 | price | [Price](#Price) |  no  |  |
 | minQuantity | Int |  no  |  |
 | productDetails | [LimitedProductData](#LimitedProductData) |  no  |  |
 | allowRemove | Bool |  no  |  |
 | autoSelect | Bool |  no  |  |
 | maxQuantity | Int |  no  |  |
 | autoAddToCart | Bool |  no  |  |

---


 
 
 #### [GetProductBundleResponse](#GetProductBundleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | choice | String |  no  |  |
 | logo | String |  no  |  |
 | products | [[GetProducts](#GetProducts)] |  no  |  |
 | isActive | Bool |  no  |  |
 | companyId | Int |  no  |  |
 | pageVisibility | [String] |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | sameStoreAssignment | Bool |  no  |  |

---


 
 
 #### [ProductBundleUpdateRequest](#ProductBundleUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | choice | String? |  yes  |  |
 | logo | String |  no  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | modifiedBy | [String: Any] |  no  |  |
 | modifiedOn | String |  no  |  |
 | name | String? |  yes  |  |
 | meta | [String: Any] |  no  |  |
 | slug | String? |  yes  |  |
 | pageVisibility | [String] |  no  |  |
 | sameStoreAssignment | Bool |  no  |  |

---


 
 
 #### [Meta](#Meta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headers | [String: Any] |  no  |  |
 | unit | String |  no  |  |
 | values | [[String: Any]] |  no  |  |

---


 
 
 #### [Guide](#Guide)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [Meta](#Meta) |  no  |  |

---


 
 
 #### [ValidateSizeGuide](#ValidateSizeGuide)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | subtitle | String |  no  |  |
 | image | String |  no  |  |
 | modifiedBy | [String: Any] |  no  |  |
 | modifiedOn | String |  no  |  |
 | id | String |  no  |  |
 | createdBy | [String: Any] |  no  |  |
 | guide | [Guide](#Guide) |  no  |  |
 | companyId | Int |  no  |  |
 | title | String? |  yes  |  |
 | createdOn | String |  no  |  |
 | active | Bool |  no  |  |
 | name | String? |  yes  |  |
 | brandId | Int |  no  |  |
 | tag | String |  no  |  |

---


 
 
 #### [SuccessResponse](#SuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | uid | Int |  no  |  |

---


 
 
 #### [ListSizeGuide](#ListSizeGuide)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [String: Any] |  no  |  |
 | items | [[String: Any]] |  no  |  |

---


 
 
 #### [SizeGuideResponse](#SizeGuideResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subtitle | String |  no  |  |
 | modifiedBy | [String: Any] |  no  |  |
 | modifiedOn | String |  no  |  |
 | id | String |  no  |  |
 | createdBy | [String: Any] |  no  |  |
 | guide | [String: Any] |  no  |  |
 | companyId | Int |  no  |  |
 | title | String |  no  |  |
 | createdOn | String |  no  |  |
 | active | Bool |  no  |  |
 | name | String |  no  |  |
 | brandId | Int |  no  |  |
 | tag | String |  no  |  |

---


 
 
 #### [MetaDataListingSortMetaResponse](#MetaDataListingSortMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | display | String |  no  |  |

---


 
 
 #### [MetaDataListingSortResponse](#MetaDataListingSortResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[MetaDataListingSortMetaResponse](#MetaDataListingSortMetaResponse)] |  no  |  |

---


 
 
 #### [MetaDataListingFilterMetaResponse](#MetaDataListingFilterMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filterTypes | [String] |  no  |  |
 | key | String |  no  |  |
 | display | String |  no  |  |
 | units | [[String: Any]] |  no  |  |

---


 
 
 #### [MetaDataListingFilterResponse](#MetaDataListingFilterResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[MetaDataListingFilterMetaResponse](#MetaDataListingFilterMetaResponse)] |  no  |  |

---


 
 
 #### [MetaDataListingResponse](#MetaDataListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort | [MetaDataListingSortResponse](#MetaDataListingSortResponse)? |  yes  |  |
 | filter | [MetaDataListingFilterResponse](#MetaDataListingFilterResponse)? |  yes  |  |

---


 
 
 #### [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | compare | [String: Any] |  no  |  |
 | detail | [String: Any] |  no  |  |
 | variant | [String: Any] |  no  |  |
 | similar | [String: Any] |  no  |  |

---


 
 
 #### [GetCatalogConfigurationMetaData](#GetCatalogConfigurationMetaData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | listing | [MetaDataListingResponse](#MetaDataListingResponse) |  no  |  |
 | product | [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct) |  no  |  |

---


 
 
 #### [ConfigurationListingSortConfig](#ConfigurationListingSortConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | logo | String |  no  |  |
 | priority | Int? |  yes  |  |
 | key | String? |  yes  |  |
 | name | String |  no  |  |

---


 
 
 #### [ConfigurationListingSort](#ConfigurationListingSort)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [[ConfigurationListingSortConfig](#ConfigurationListingSortConfig)] |  no  |  |
 | defaultKey | String? |  yes  |  |

---


 
 
 #### [ConfigurationBucketPoints](#ConfigurationBucketPoints)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | Double |  no  |  |
 | end | Double |  no  |  |

---


 
 
 #### [ConfigurationListingFilterValue](#ConfigurationListingFilterValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | condition | String |  no  |  |
 | bucketPoints | [[ConfigurationBucketPoints](#ConfigurationBucketPoints)] |  no  |  |
 | value | String |  no  |  |
 | sort | String |  no  |  |
 | map | [String: Any] |  no  |  |

---


 
 
 #### [ConfigurationListingFilterConfig](#ConfigurationListingFilterConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | logo | String |  no  |  |
 | priority | Int? |  yes  |  |
 | key | String? |  yes  |  |
 | name | String |  no  |  |
 | valueConfig | [ConfigurationListingFilterValue](#ConfigurationListingFilterValue) |  no  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ConfigurationListingFilter](#ConfigurationListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allowSingle | Bool? |  yes  |  |
 | attributeConfig | [[ConfigurationListingFilterConfig](#ConfigurationListingFilterConfig)] |  no  |  |

---


 
 
 #### [ConfigurationListing](#ConfigurationListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort | [ConfigurationListingSort](#ConfigurationListingSort)? |  yes  |  |
 | filter | [ConfigurationListingFilter](#ConfigurationListingFilter)? |  yes  |  |

---


 
 
 #### [ProductSize](#ProductSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int? |  yes  |  |
 | min | Int? |  yes  |  |

---


 
 
 #### [ConfigurationProductVariantConfig](#ConfigurationProductVariantConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | logo | String |  no  |  |
 | priority | Int? |  yes  |  |
 | displayType | String? |  yes  |  |
 | size | [ProductSize](#ProductSize)? |  yes  |  |
 | key | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ConfigurationProductVariant](#ConfigurationProductVariant)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [[ConfigurationProductVariantConfig](#ConfigurationProductVariantConfig)] |  no  |  |

---


 
 
 #### [ConfigurationProductConfig](#ConfigurationProductConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | logo | String |  no  |  |
 | subtitle | String |  no  |  |
 | priority | Int? |  yes  |  |
 | title | String |  no  |  |
 | size | [ProductSize](#ProductSize) |  no  |  |
 | key | String? |  yes  |  |

---


 
 
 #### [ConfigurationProductSimilar](#ConfigurationProductSimilar)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [[ConfigurationProductConfig](#ConfigurationProductConfig)] |  no  |  |

---


 
 
 #### [ConfigurationProduct](#ConfigurationProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | variant | [ConfigurationProductVariant](#ConfigurationProductVariant)? |  yes  |  |
 | similar | [ConfigurationProductSimilar](#ConfigurationProductSimilar)? |  yes  |  |

---


 
 
 #### [AppConfiguration](#AppConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | listing | [ConfigurationListing](#ConfigurationListing) |  no  |  |
 | product | [ConfigurationProduct](#ConfigurationProduct) |  no  |  |
 | configId | String |  no  |  |
 | appId | String? |  yes  |  |
 | configType | String? |  yes  |  |

---


 
 
 #### [AppCatalogConfiguration](#AppCatalogConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | listing | [ConfigurationListing](#ConfigurationListing) |  no  |  |
 | id | String |  no  |  |
 | product | [ConfigurationProduct](#ConfigurationProduct) |  no  |  |
 | configId | String |  no  |  |
 | appId | String? |  yes  |  |
 | configType | String? |  yes  |  |

---


 
 
 #### [GetAppCatalogConfiguration](#GetAppCatalogConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [AppCatalogConfiguration](#AppCatalogConfiguration) |  no  |  |
 | isDefault | Bool |  no  |  |

---


 
 
 #### [GetCatalogConfigurationDetailsSchemaListing](#GetCatalogConfigurationDetailsSchemaListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort | [String: Any] |  no  |  |
 | filter | [String: Any] |  no  |  |

---


 
 
 #### [EntityConfiguration](#EntityConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | listing | [GetCatalogConfigurationDetailsSchemaListing](#GetCatalogConfigurationDetailsSchemaListing) |  no  |  |
 | id | String |  no  |  |
 | product | [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct) |  no  |  |
 | configId | String |  no  |  |
 | appId | String? |  yes  |  |
 | configType | String? |  yes  |  |

---


 
 
 #### [GetAppCatalogEntityConfiguration](#GetAppCatalogEntityConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [EntityConfiguration](#EntityConfiguration) |  no  |  |
 | isDefault | Bool |  no  |  |

---


 
 
 #### [ProductFiltersKey](#ProductFiltersKey)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | kind | String |  no  |  |
 | logo | String |  no  |  |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ProductFiltersValue](#ProductFiltersValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | queryFormat | String |  no  |  |
 | currencySymbol | String |  no  |  |
 | displayFormat | String |  no  |  |
 | isSelected | Bool? |  yes  |  |
 | value | String? |  yes  |  |
 | max | Int |  no  |  |
 | display | String? |  yes  |  |
 | count | Int |  no  |  |
 | selectedMin | Int |  no  |  |
 | selectedMax | Int |  no  |  |
 | currencyCode | String |  no  |  |
 | min | Int |  no  |  |

---


 
 
 #### [ProductFilters](#ProductFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | [ProductFiltersKey](#ProductFiltersKey)? |  yes  |  |
 | values | [[ProductFiltersValue](#ProductFiltersValue)]? |  yes  |  |

---


 
 
 #### [ProductSortOn](#ProductSortOn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSelected | Bool |  no  |  |
 | value | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [GetCollectionQueryOptionResponse](#GetCollectionQueryOptionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[ProductFilters](#ProductFilters)] |  no  |  |
 | sortOn | [[ProductSortOn](#ProductSortOn)] |  no  |  |

---


 
 
 #### [CollectionImage](#CollectionImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [CollectionBanner](#CollectionBanner)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | [CollectionImage](#CollectionImage)? |  yes  |  |
 | portrait | [CollectionImage](#CollectionImage)? |  yes  |  |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | username | String |  no  |  |
 | userId | String |  no  |  |
 | uid | String |  no  |  |

---


 
 
 #### [CollectionBadge](#CollectionBadge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | color | String |  no  |  |

---


 
 
 #### [SeoDetail](#SeoDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [Schedule](#Schedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | duration | Int |  no  |  |
 | start | String |  no  |  |
 | end | String |  no  |  |
 | cron | String |  no  |  |

---


 
 
 #### [CreateCollection](#CreateCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | banners | [CollectionBanner](#CollectionBanner)? |  yes  |  |
 | modifiedBy | [UserInfo](#UserInfo) |  no  |  |
 | badge | [CollectionBadge](#CollectionBadge) |  no  |  |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | appId | String? |  yes  |  |
 | allowFacets | Bool |  no  |  |
 | seo | [SeoDetail](#SeoDetail) |  no  |  |
 | description | String |  no  |  |
 | allowSort | Bool |  no  |  |
 | localeLanguage | [String: Any] |  no  |  |
 | sortOn | String |  no  |  |
 | tags | [String] |  no  |  |
 | logo | [CollectionImage](#CollectionImage)? |  yes  |  |
 | published | Bool |  no  |  |
 | visibleFacetsKeys | [String] |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | isActive | Bool |  no  |  |
 | createdBy | [UserInfo](#UserInfo) |  no  |  |
 | schedule | [Schedule](#Schedule) |  no  |  |
 | meta | [String: Any] |  no  |  |
 | query | [String: Any] |  no  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [BannerImage](#BannerImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [ImageUrls](#ImageUrls)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | [BannerImage](#BannerImage) |  no  |  |
 | portrait | [BannerImage](#BannerImage) |  no  |  |

---


 
 
 #### [CollectionCreateResponse](#CollectionCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | description | String |  no  |  |
 | isActive | Bool |  no  |  |
 | logo | [BannerImage](#BannerImage) |  no  |  |
 | query | [String: Any] |  no  |  |
 | allowSort | Bool |  no  |  |
 | tag | [String] |  no  |  |
 | badge | [String: Any] |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | schedule | [String: Any] |  no  |  |
 | appId | String |  no  |  |
 | visibleFacetsKeys | [String] |  no  |  |
 | allowFacets | Bool |  no  |  |
 | meta | [String: Any] |  no  |  |
 | cron | [String: Any] |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [CollectionListingFilterTag](#CollectionListingFilterTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | isSelected | Bool |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [CollectionListingFilterType](#CollectionListingFilterType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | isSelected | Bool |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [CollectionListingFilter](#CollectionListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [[CollectionListingFilterTag](#CollectionListingFilterTag)] |  no  |  |
 | type | [[CollectionListingFilterType](#CollectionListingFilterType)] |  no  |  |

---


 
 
 #### [ProductListingActionPage](#ProductListingActionPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | query | [String: Any] |  no  |  |

---


 
 
 #### [ProductListingAction](#ProductListingAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [ProductListingActionPage](#ProductListingActionPage) |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [Media1](#Media1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any] |  no  |  |
 | type | String |  no  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [GetCollectionDetailNest](#GetCollectionDetailNest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | badge | [String: Any] |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | appId | String |  no  |  |
 | allowFacets | Bool |  no  |  |
 | tag | [String] |  no  |  |
 | description | String |  no  |  |
 | allowSort | Bool |  no  |  |
 | uid | String |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | cron | [String: Any] |  no  |  |
 | logo | [Media1](#Media1) |  no  |  |
 | visibleFacetsKeys | [String] |  no  |  |
 | isActive | Bool |  no  |  |
 | schedule | [String: Any] |  no  |  |
 | meta | [String: Any] |  no  |  |
 | query | [String: Any] |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [GetCollectionListingResponse](#GetCollectionListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [CollectionListingFilter](#CollectionListingFilter) |  no  |  |
 | page | [Page](#Page) |  no  |  |
 | items | [[GetCollectionDetailNest](#GetCollectionDetailNest)] |  no  |  |

---


 
 
 #### [CollectionDetailResponse](#CollectionDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | description | String |  no  |  |
 | isActive | Bool |  no  |  |
 | logo | [Media1](#Media1) |  no  |  |
 | query | [String: Any] |  no  |  |
 | allowSort | Bool |  no  |  |
 | tag | [String] |  no  |  |
 | badge | [String: Any] |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | schedule | [String: Any] |  no  |  |
 | appId | String |  no  |  |
 | visibleFacetsKeys | [String] |  no  |  |
 | allowFacets | Bool |  no  |  |
 | meta | [String: Any] |  no  |  |
 | cron | [String: Any] |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [UpdateCollection](#UpdateCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | banners | [CollectionBanner](#CollectionBanner) |  no  |  |
 | modifiedBy | [UserInfo](#UserInfo) |  no  |  |
 | badge | [CollectionBadge](#CollectionBadge) |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | allowFacets | Bool |  no  |  |
 | seo | [SeoDetail](#SeoDetail) |  no  |  |
 | description | String |  no  |  |
 | allowSort | Bool |  no  |  |
 | localeLanguage | [String: Any] |  no  |  |
 | sortOn | String |  no  |  |
 | tags | [String] |  no  |  |
 | logo | [CollectionImage](#CollectionImage) |  no  |  |
 | published | Bool |  no  |  |
 | visibleFacetsKeys | [String] |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | isActive | Bool |  no  |  |
 | schedule | [Schedule](#Schedule) |  no  |  |
 | meta | [String: Any] |  no  |  |
 | query | [String: Any] |  no  |  |

---


 
 
 #### [CollectionItemRequest](#CollectionItemRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageSize | Int? |  yes  |  |
 | pageNo | Int? |  yes  |  |

---


 
 
 #### [UpdatedResponse](#UpdatedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [ProductDetailAttribute](#ProductDetailAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | value | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | details | [[ProductDetailAttribute](#ProductDetailAttribute)] |  no  |  |

---


 
 
 #### [Price1](#Price1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyCode | String |  no  |  |
 | currencySymbol | String |  no  |  |
 | max | Double |  no  |  |
 | min | Double |  no  |  |

---


 
 
 #### [ProductListingPrice](#ProductListingPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | [Price1](#Price1) |  no  |  |
 | effective | [Price1](#Price1) |  no  |  |

---


 
 
 #### [ProductBrand](#ProductBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | [Media1](#Media1) |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |

---


 
 
 #### [ProductListingDetail](#ProductListingDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | similars | [String] |  no  |  |
 | rating | Double |  no  |  |
 | name | String |  no  |  |
 | slug | String? |  yes  |  |
 | highlights | [String] |  no  |  |
 | groupedAttributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)] |  no  |  |
 | description | String |  no  |  |
 | price | [ProductListingPrice](#ProductListingPrice) |  no  |  |
 | discount | String |  no  |  |
 | medias | [[Media1](#Media1)] |  no  |  |
 | promoMeta | [String: Any] |  no  |  |
 | color | String |  no  |  |
 | ratingCount | Int |  no  |  |
 | uid | Int |  no  |  |
 | shortDescription | String |  no  |  |
 | hasVariant | Bool |  no  |  |
 | imageNature | String |  no  |  |
 | sellable | Bool |  no  |  |
 | productOnlineDate | String |  no  |  |
 | tryouts | [String] |  no  |  |
 | itemType | String |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | brand | [ProductBrand](#ProductBrand) |  no  |  |
 | teaserTag | [String: Any] |  no  |  |
 | itemCode | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [GetCollectionItemsResponse](#GetCollectionItemsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[ProductFilters](#ProductFilters)] |  no  |  |
 | page | [Page](#Page) |  no  |  |
 | items | [[ProductListingDetail](#ProductListingDetail)] |  no  |  |
 | sortOn | [[ProductSortOn](#ProductSortOn)] |  no  |  |

---


 
 
 #### [CatalogInsightBrand](#CatalogInsightBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalSizes | Int |  no  |  |
 | totalArticles | Int |  no  |  |
 | availableSizes | Int |  no  |  |
 | availableArticles | Int |  no  |  |
 | name | String |  no  |  |
 | articleFreshness | Int |  no  |  |

---


 
 
 #### [CatalogInsightItem](#CatalogInsightItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |
 | outOfStockCount | Int |  no  |  |
 | sellableCount | Int |  no  |  |

---


 
 
 #### [CatalogInsightResponse](#CatalogInsightResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandDistribution | [CatalogInsightBrand](#CatalogInsightBrand) |  no  |  |
 | item | [CatalogInsightItem](#CatalogInsightItem) |  no  |  |

---


 
 
 #### [CrossSellingData](#CrossSellingData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articles | Int |  no  |  |
 | products | Int |  no  |  |

---


 
 
 #### [CrossSellingResponse](#CrossSellingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandDistribution | [CatalogInsightBrand](#CatalogInsightBrand) |  no  |  |
 | data | [CrossSellingData](#CrossSellingData) |  no  |  |

---


 
 
 #### [OptInPostRequest](#OptInPostRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandIds | [Int] |  no  |  |
 | optLevel | String? |  yes  |  |
 | enabled | Bool |  no  |  |
 | storeIds | [Int] |  no  |  |

---


 
 
 #### [CompanyOptIn](#CompanyOptIn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandIds | [Int]? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | modifiedBy | [String: Any] |  no  |  |
 | modifiedOn | Int? |  yes  |  |
 | createdBy | [String: Any] |  no  |  |
 | companyId | Int? |  yes  |  |
 | platform | String? |  yes  |  |
 | createdOn | Int? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | optLevel | String? |  yes  |  |

---


 
 
 #### [GetOptInPlatform](#GetOptInPlatform)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[CompanyOptIn](#CompanyOptIn)]? |  yes  |  |

---


 
 
 #### [OptinCompanyDetail](#OptinCompanyDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | businessType | String |  no  |  |
 | companyType | String |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |

---


 
 
 #### [CompanyBrandDetail](#CompanyBrandDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalArticle | Int |  no  |  |
 | companyId | Int |  no  |  |
 | brandName | String |  no  |  |
 | brandId | Int |  no  |  |

---


 
 
 #### [OptinCompanyBrandDetailsView](#OptinCompanyBrandDetailsView)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[CompanyBrandDetail](#CompanyBrandDetail)] |  no  |  |

---


 
 
 #### [OptinCompanyMetrics](#OptinCompanyMetrics)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | Int |  no  |  |
 | company | String |  no  |  |
 | brand | Int |  no  |  |

---


 
 
 #### [StoreDetail](#StoreDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayName | String |  no  |  |
 | documents | [[String: Any]] |  no  |  |
 | modifiedOn | String |  no  |  |
 | timing | [String: Any] |  no  |  |
 | storeType | String |  no  |  |
 | companyId | Int |  no  |  |
 | additionalContacts | [[String: Any]] |  no  |  |
 | createdOn | String |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |
 | storeCode | String |  no  |  |

---


 
 
 #### [OptinStoreDetails](#OptinStoreDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[StoreDetail](#StoreDetail)] |  no  |  |

---


 
 
 #### [AttributeMasterMandatoryDetails](#AttributeMasterMandatoryDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l3Keys | [String] |  no  |  |

---


 
 
 #### [AttributeMasterMeta](#AttributeMasterMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enriched | Bool |  no  |  |
 | mandatoryDetails | [AttributeMasterMandatoryDetails](#AttributeMasterMandatoryDetails)? |  yes  |  |

---


 
 
 #### [AttributeMasterFilter](#AttributeMasterFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dependsOn | [String] |  no  |  |
 | indexing | Bool? |  yes  |  |
 | priority | Int |  no  |  |

---


 
 
 #### [AttributeMasterDetails](#AttributeMasterDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayType | String? |  yes  |  |

---


 
 
 #### [AttributeSchemaRange](#AttributeSchemaRange)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int |  no  |  |
 | min | Int |  no  |  |

---


 
 
 #### [AttributeMaster](#AttributeMaster)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multi | Bool |  no  |  |
 | range | [AttributeSchemaRange](#AttributeSchemaRange) |  no  |  |
 | format | String |  no  |  |
 | mandatory | Bool |  no  |  |
 | allowedValues | [String] |  no  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [GenderDetail](#GenderDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | logo | String |  no  |  |
 | id | String |  no  |  |
 | departments | [String] |  no  |  |
 | enabledForEndConsumer | Bool |  no  |  |
 | name | String |  no  |  |
 | meta | [AttributeMasterMeta](#AttributeMasterMeta) |  no  |  |
 | slug | String |  no  |  |
 | filters | [AttributeMasterFilter](#AttributeMasterFilter) |  no  |  |
 | details | [AttributeMasterDetails](#AttributeMasterDetails) |  no  |  |
 | isNested | Bool |  no  |  |
 | schema | [AttributeMaster](#AttributeMaster) |  no  |  |

---


 
 
 #### [ProdcutTemplateCategoriesResponse](#ProdcutTemplateCategoriesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[String: Any]] |  no  |  |

---


 
 
 #### [PTErrorResponse](#PTErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int |  no  |  |
 | message | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | code | String |  no  |  |
 | errors | [String: Any] |  no  |  |

---


 
 
 #### [UserSerializer](#UserSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | userId | String |  no  |  |
 | contact | String |  no  |  |

---


 
 
 #### [GetDepartment](#GetDepartment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool |  no  |  |
 | logo | String |  no  |  |
 | priorityOrder | Int |  no  |  |
 | modifiedOn | String |  no  |  |
 | modifiedBy | [UserSerializer](#UserSerializer) |  no  |  |
 | createdBy | [UserSerializer](#UserSerializer) |  no  |  |
 | pageSize | Int |  no  |  |
 | itemType | String |  no  |  |
 | createdOn | String |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |
 | slug | String |  no  |  |
 | search | String |  no  |  |
 | synonyms | [String] |  no  |  |
 | pageNo | Int |  no  |  |

---


 
 
 #### [DepartmentsResponse](#DepartmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[GetDepartment](#GetDepartment)] |  no  |  |

---


 
 
 #### [DepartmentErrorResponse](#DepartmentErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int |  no  |  |
 | message | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | code | String |  no  |  |
 | errors | [String: Any] |  no  |  |

---


 
 
 #### [ProductTemplate](#ProductTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | isActive | Bool |  no  |  |
 | categories | [String] |  no  |  |
 | isArchived | Bool |  no  |  |
 | logo | String |  no  |  |
 | isPhysical | Bool? |  yes  |  |
 | modifiedBy | [String: Any] |  no  |  |
 | departments | [String] |  no  |  |
 | createdBy | [String: Any] |  no  |  |
 | modifiedOn | String |  no  |  |
 | createdOn | String |  no  |  |
 | name | String |  no  |  |
 | attributes | [String] |  no  |  |
 | slug | String? |  yes  |  |
 | tag | String |  no  |  |

---


 
 
 #### [TemplatesResponse](#TemplatesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [ProductTemplate](#ProductTemplate) |  no  |  |

---


 
 
 #### [Properties](#Properties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDependent | [String: Any] |  no  |  |
 | countryOfOrigin | [String: Any] |  no  |  |
 | multiSize | [String: Any] |  no  |  |
 | name | [String: Any] |  no  |  |
 | slug | [String: Any] |  no  |  |
 | highlights | [String: Any] |  no  |  |
 | variants | [String: Any] |  no  |  |
 | moq | [String: Any] |  no  |  |
 | description | [String: Any] |  no  |  |
 | media | [String: Any] |  no  |  |
 | tags | [String: Any] |  no  |  |
 | brandUid | [String: Any] |  no  |  |
 | traderType | [String: Any] |  no  |  |
 | customOrder | [String: Any] |  no  |  |
 | shortDescription | [String: Any] |  no  |  |
 | trader | [String: Any] |  no  |  |
 | returnConfig | [String: Any] |  no  |  |
 | currency | [String: Any] |  no  |  |
 | hsnCode | [String: Any] |  no  |  |
 | command | [String: Any] |  no  |  |
 | isActive | [String: Any] |  no  |  |
 | productPublish | [String: Any] |  no  |  |
 | sizes | [String: Any] |  no  |  |
 | productGroupTag | [String: Any] |  no  |  |
 | sizeGuide | [String: Any] |  no  |  |
 | noOfBoxes | [String: Any] |  no  |  |
 | itemType | [String: Any] |  no  |  |
 | teaserTag | [String: Any] |  no  |  |
 | itemCode | [String: Any] |  no  |  |
 | categorySlug | [String: Any] |  no  |  |

---


 
 
 #### [GlobalValidation](#GlobalValidation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | properties | [Properties](#Properties) |  no  |  |
 | title | String |  no  |  |
 | definitions | [String: Any] |  no  |  |
 | required | [String] |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [TemplateValidationData](#TemplateValidationData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | globalValidation | [GlobalValidation](#GlobalValidation) |  no  |  |
 | templateValidation | [String: Any] |  no  |  |

---


 
 
 #### [TemplateDetails](#TemplateDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | isActive | Bool |  no  |  |
 | categories | [String] |  no  |  |
 | isArchived | Bool |  no  |  |
 | logo | String |  no  |  |
 | isPhysical | Bool? |  yes  |  |
 | id | String |  no  |  |
 | departments | [String] |  no  |  |
 | name | String |  no  |  |
 | attributes | [String] |  no  |  |
 | slug | String? |  yes  |  |
 | tag | String |  no  |  |

---


 
 
 #### [TemplatesValidationResponse](#TemplatesValidationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [TemplateValidationData](#TemplateValidationData) |  no  |  |
 | templateDetails | [TemplateDetails](#TemplateDetails) |  no  |  |

---


 
 
 #### [InventoryValidationResponse](#InventoryValidationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any] |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [HSNData](#HSNData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hsnCode | [String] |  no  |  |
 | countryOfOrigin | [String] |  no  |  |

---


 
 
 #### [HSNCodesResponse](#HSNCodesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [HSNData](#HSNData) |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [VerifiedBy](#VerifiedBy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [ProductDownloadItemsData](#ProductDownloadItemsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | brand | [String] |  no  |  |
 | templates | [String] |  no  |  |

---


 
 
 #### [ProductDownloadsItems](#ProductDownloadsItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | taskId | String |  no  |  |
 | completedOn | String |  no  |  |
 | id | String |  no  |  |
 | createdBy | [VerifiedBy](#VerifiedBy) |  no  |  |
 | templateTags | [String: Any] |  no  |  |
 | triggerOn | String |  no  |  |
 | sellerId | Double |  no  |  |
 | url | String |  no  |  |
 | data | [ProductDownloadItemsData](#ProductDownloadItemsData) |  no  |  |

---


 
 
 #### [ProductDownloadsResponse](#ProductDownloadsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [ProductDownloadsItems](#ProductDownloadsItems) |  no  |  |

---


 
 
 #### [ProductConfigurationDownloads](#ProductConfigurationDownloads)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multivalue | Bool |  no  |  |
 | data | [[String: Any]] |  no  |  |

---


 
 
 #### [Media2](#Media2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String? |  yes  |  |
 | landscape | String? |  yes  |  |
 | portrait | String? |  yes  |  |

---


 
 
 #### [CategoryMappingValues](#CategoryMappingValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | catalogId | Int |  no  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [CategoryMapping](#CategoryMapping)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | google | [CategoryMappingValues](#CategoryMappingValues) |  no  |  |
 | facebook | [CategoryMappingValues](#CategoryMappingValues) |  no  |  |
 | ajio | [CategoryMappingValues](#CategoryMappingValues) |  no  |  |

---


 
 
 #### [Hierarchy](#Hierarchy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l1 | Int? |  yes  |  |
 | department | Int? |  yes  |  |
 | l2 | Int? |  yes  |  |

---


 
 
 #### [CategoryRequestBody](#CategoryRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | level | Int? |  yes  |  |
 | media | [Media2](#Media2) |  no  |  |
 | isActive | Bool? |  yes  |  |
 | priority | Int |  no  |  |
 | departments | [Int]? |  yes  |  |
 | marketplaces | [CategoryMapping](#CategoryMapping) |  no  |  |
 | tryouts | [String] |  no  |  |
 | name | String? |  yes  |  |
 | slug | String |  no  |  |
 | hierarchy | [[Hierarchy](#Hierarchy)] |  no  |  |
 | synonyms | [String] |  no  |  |

---


 
 
 #### [CategoryCreateResponse](#CategoryCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | uid | Int |  no  |  |

---


 
 
 #### [Category](#Category)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | level | Int? |  yes  |  |
 | media | [Media2](#Media2) |  no  |  |
 | isActive | Bool? |  yes  |  |
 | modifiedBy | [String: Any] |  no  |  |
 | modifiedOn | String |  no  |  |
 | priority | Int |  no  |  |
 | departments | [Int]? |  yes  |  |
 | createdBy | [String: Any] |  no  |  |
 | marketplaces | [CategoryMapping](#CategoryMapping) |  no  |  |
 | tryouts | [String] |  no  |  |
 | id | String |  no  |  |
 | createdOn | String |  no  |  |
 | name | String? |  yes  |  |
 | uid | Int |  no  |  |
 | slug | String |  no  |  |
 | hierarchy | [[Hierarchy](#Hierarchy)] |  no  |  |
 | synonyms | [String] |  no  |  |

---


 
 
 #### [CategoryResponse](#CategoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[Category](#Category)] |  no  |  |

---


 
 
 #### [SingleCategoryResponse](#SingleCategoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [Category](#Category) |  no  |  |

---


 
 
 #### [CategoryUpdateResponse](#CategoryUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [OrderQuantity](#OrderQuantity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maximum | Int |  no  |  |
 | minimum | Int |  no  |  |
 | isSet | Bool |  no  |  |

---


 
 
 #### [CustomOrder](#CustomOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manufacturingTime | Int |  no  |  |
 | isCustomOrder | Bool |  no  |  |
 | manufacturingTimeUnit | String |  no  |  |

---


 
 
 #### [Trader](#Trader)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | time | Int |  no  |  |
 | unit | String |  no  |  |
 | returnable | Bool |  no  |  |

---


 
 
 #### [ProductPublish](#ProductPublish)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productOnlineDate | String |  no  |  |
 | isSet | Bool |  no  |  |

---


 
 
 #### [TeaserTag](#TeaserTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [ProductCreateUpdate](#ProductCreateUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDependent | Bool |  no  |  |
 | isSet | Bool |  no  |  |
 | countryOfOrigin | String? |  yes  |  |
 | multiSize | Bool |  no  |  |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | highlights | [String] |  no  |  |
 | variants | [String: Any] |  no  |  |
 | moq | [OrderQuantity](#OrderQuantity) |  no  |  |
 | description | String |  no  |  |
 | media | [[Media1](#Media1)] |  no  |  |
 | templateTag | String? |  yes  |  |
 | departments | [Int]? |  yes  |  |
 | uid | Int |  no  |  |
 | brandUid | Int? |  yes  |  |
 | tags | [String] |  no  |  |
 | traderType | String |  no  |  |
 | isImageLessProduct | Bool |  no  |  |
 | requester | String |  no  |  |
 | customOrder | [CustomOrder](#CustomOrder) |  no  |  |
 | shortDescription | String |  no  |  |
 | trader | [Trader](#Trader) |  no  |  |
 | returnConfig | [ReturnConfig](#ReturnConfig) |  no  |  |
 | companyId | Int? |  yes  |  |
 | currency | String? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | customJson | [String: Any] |  no  |  |
 | isActive | Bool |  no  |  |
 | productPublish | [ProductPublish](#ProductPublish) |  no  |  |
 | productGroupTag | [String] |  no  |  |
 | sizeGuide | String |  no  |  |
 | noOfBoxes | Int |  no  |  |
 | itemType | String? |  yes  |  |
 | teaserTag | [TeaserTag](#TeaserTag) |  no  |  |
 | itemCode | String? |  yes  |  |
 | changeRequestId | String |  no  |  |
 | categorySlug | String? |  yes  |  |

---


 
 
 #### [Image](#Image)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String |  no  |  |
 | aspectRatio | String |  no  |  |
 | url | String |  no  |  |
 | aspectRatioF | Double |  no  |  |

---


 
 
 #### [ProductPublished](#ProductPublished)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productOnlineDate | Int |  no  |  |
 | isSet | Bool |  no  |  |

---


 
 
 #### [UserCommon](#UserCommon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | companyId | Int |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [Attributes](#Attributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedBy | [UserCommon](#UserCommon) |  no  |  |
 | modifiedOn | String |  no  |  |
 | material | String |  no  |  |
 | metaNature | String |  no  |  |
 | essential | String |  no  |  |
 | gender | [String] |  no  |  |
 | color | String |  no  |  |
 | verifiedOn | String |  no  |  |
 | neckType | String |  no  |  |
 | isImageLessProduct | Bool |  no  |  |
 | l3Mapping | [String] |  no  |  |
 | verifiedBy | [VerifiedBy](#VerifiedBy) |  no  |  |
 | primaryColor | String |  no  |  |
 | productFit | String |  no  |  |
 | stage | String |  no  |  |
 | imageNature | String |  no  |  |
 | pattern | String |  no  |  |
 | primaryMaterial | String |  no  |  |
 | createdBy | [UserCommon](#UserCommon) |  no  |  |
 | createdOn | String |  no  |  |
 | sleeveLength | String |  no  |  |

---


 
 
 #### [Logo](#Logo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String |  no  |  |
 | aspectRatio | String |  no  |  |
 | url | String |  no  |  |
 | aspectRatioF | Int |  no  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | [Logo](#Logo) |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |

---


 
 
 #### [Product](#Product)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDependent | Bool |  no  |  |
 | isSet | Bool |  no  |  |
 | countryOfOrigin | String |  no  |  |
 | multiSize | Bool |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | highlights | String |  no  |  |
 | allSizes | [String] |  no  |  |
 | description | String |  no  |  |
 | media | [[Media1](#Media1)] |  no  |  |
 | templateTag | String |  no  |  |
 | departments | [Int] |  no  |  |
 | uid | Int |  no  |  |
 | images | [[Image](#Image)] |  no  |  |
 | id | String |  no  |  |
 | companyId | Int |  no  |  |
 | currency | String |  no  |  |
 | hsnCode | String |  no  |  |
 | isActive | Bool |  no  |  |
 | sizeGuide | String |  no  |  |
 | productPublish | [ProductPublished](#ProductPublished) |  no  |  |
 | sizes | [[String: Any]] |  no  |  |
 | itemType | String |  no  |  |
 | attributes | [Attributes](#Attributes) |  no  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | itemCode | String |  no  |  |
 | categorySlug | String |  no  |  |

---


 
 
 #### [ProductListingResponse](#ProductListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[Product](#Product)] |  no  |  |

---


 
 
 #### [ValidateProduct](#ValidateProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | valid | Bool |  no  |  |

---


 
 
 #### [UserInfo1](#UserInfo1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | username | String |  no  |  |
 | userId | String |  no  |  |
 | uid | String |  no  |  |

---


 
 
 #### [BulkJob](#BulkJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failed | Int |  no  |  |
 | total | Int? |  yes  |  |
 | isActive | Bool |  no  |  |
 | modifiedBy | [UserInfo1](#UserInfo1) |  no  |  |
 | modifiedOn | String |  no  |  |
 | templateTag | String |  no  |  |
 | createdBy | [UserInfo1](#UserInfo1) |  no  |  |
 | cancelled | Int |  no  |  |
 | companyId | Int? |  yes  |  |
 | failedRecords | [[String: Any]] |  no  |  |
 | createdOn | String? |  yes  |  |
 | succeed | Int |  no  |  |
 | cancelledRecords | [[String: Any]] |  no  |  |
 | trackingUrl | String |  no  |  |
 | stage | String |  no  |  |
 | filePath | String |  no  |  |
 | customTemplateTag | String |  no  |  |

---


 
 
 #### [UserDetail](#UserDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | fullName | String |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [ProductBulkRequest](#ProductBulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failed | Int |  no  |  |
 | total | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | modifiedBy | [UserDetail](#UserDetail) |  no  |  |
 | templateTag | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | createdBy | [UserDetail](#UserDetail) |  no  |  |
 | cancelled | Int |  no  |  |
 | companyId | Int |  no  |  |
 | template | [ProductTemplate](#ProductTemplate) |  no  |  |
 | failedRecords | [String] |  no  |  |
 | createdOn | String |  no  |  |
 | succeed | Int |  no  |  |
 | cancelledRecords | [String] |  no  |  |
 | stage | String |  no  |  |
 | filePath | String |  no  |  |

---


 
 
 #### [ProductBulkRequestList](#ProductBulkRequestList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [ProductBulkRequest](#ProductBulkRequest) |  no  |  |

---


 
 
 #### [BulkProductRequest](#BulkProductRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | batchId | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | data | [[String: Any]]? |  yes  |  |
 | templateTag | String? |  yes  |  |

---


 
 
 #### [NestedTags](#NestedTags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String] |  no  |  |

---


 
 
 #### [ProductTagsViewResponse](#ProductTagsViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [NestedTags](#NestedTags) |  no  |  |

---


 
 
 #### [ProductBulkAssets](#ProductBulkAssets)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [String: Any]? |  yes  |  |
 | companyId | Int |  no  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [Items](#Items)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failed | Int |  no  |  |
 | total | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | modifiedBy | [UserCommon](#UserCommon) |  no  |  |
 | modifiedOn | String |  no  |  |
 | id | String |  no  |  |
 | createdBy | [UserCommon](#UserCommon) |  no  |  |
 | cancelled | Int |  no  |  |
 | companyId | Int |  no  |  |
 | failedRecords | [String] |  no  |  |
 | createdOn | String |  no  |  |
 | succeed | Int |  no  |  |
 | cancelledRecords | [String] |  no  |  |
 | retry | Int |  no  |  |
 | trackingUrl | String |  no  |  |
 | stage | String |  no  |  |
 | filePath | String |  no  |  |

---


 
 
 #### [BulkAssetResponse](#BulkAssetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[Items](#Items)] |  no  |  |

---


 
 
 #### [ProductSizeDeleteDataResponse](#ProductSizeDeleteDataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int |  no  |  |
 | size | String |  no  |  |
 | itemId | Int |  no  |  |

---


 
 
 #### [ProductSizeDeleteResponse](#ProductSizeDeleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [ProductSizeDeleteDataResponse](#ProductSizeDeleteDataResponse) |  no  |  |

---


 
 
 #### [ItemQuery](#ItemQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCode | String |  no  |  |
 | brandUid | Int |  no  |  |
 | uid | Int |  no  |  |

---


 
 
 #### [GTIN](#GTIN)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gtinType | String? |  yes  |  |
 | primary | Bool |  no  |  |
 | gtinValue | String? |  yes  |  |

---


 
 
 #### [SetSize](#SetSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String? |  yes  |  |
 | pieces | Int? |  yes  |  |

---


 
 
 #### [SizeDistribution](#SizeDistribution)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizes | [[SetSize](#SetSize)]? |  yes  |  |

---


 
 
 #### [InventorySet](#InventorySet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizeDistribution | [SizeDistribution](#SizeDistribution)? |  yes  |  |
 | quantity | Int |  no  |  |

---


 
 
 #### [InvSize](#InvSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | price | Double? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | isSet | Bool |  no  |  |
 | itemLength | Double |  no  |  |
 | itemWeightUnitOfMeasure | String |  no  |  |
 | size | String? |  yes  |  |
 | itemWeight | Double |  no  |  |
 | itemHeight | Double |  no  |  |
 | itemDimensionsUnitOfMeasure | String |  no  |  |
 | currency | String? |  yes  |  |
 | identifiers | [[GTIN](#GTIN)]? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | priceTransfer | Double |  no  |  |
 | set | [InventorySet](#InventorySet) |  no  |  |
 | storeCode | String? |  yes  |  |
 | itemWidth | Double |  no  |  |

---


 
 
 #### [InventoryRequest](#InventoryRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | item | [ItemQuery](#ItemQuery)? |  yes  |  |
 | sizes | [[InvSize](#InvSize)]? |  yes  |  |

---


 
 
 #### [InventoryResponse](#InventoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerIdentifier | Int |  no  |  |
 | store | [String: Any] |  no  |  |
 | price | Int |  no  |  |
 | inventoryUpdatedOn | String |  no  |  |
 | quantity | Int |  no  |  |
 | itemId | Int |  no  |  |
 | sellableQuantity | Int |  no  |  |
 | currency | String |  no  |  |
 | size | String |  no  |  |
 | identifiers | [String: Any] |  no  |  |
 | priceEffective | Int |  no  |  |
 | priceTransfer | Int |  no  |  |
 | uid | String |  no  |  |

---


 
 
 #### [InventoryDeleteData](#InventoryDeleteData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String |  no  |  |
 | itemId | Int |  no  |  |
 | locationId | Int |  no  |  |

---


 
 
 #### [InventoryDelete](#InventoryDelete)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [InventoryDeleteData](#InventoryDeleteData) |  no  |  |

---


 
 
 #### [CommonResponse](#CommonResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | String |  no  |  |

---


 
 
 #### [BulkInventoryGetItems](#BulkInventoryGetItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failed | Int |  no  |  |
 | total | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | modifiedBy | [String: Any] |  no  |  |
 | id | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | createdBy | [String: Any] |  no  |  |
 | cancelled | Int |  no  |  |
 | companyId | Int |  no  |  |
 | failedRecords | [String] |  no  |  |
 | createdOn | String |  no  |  |
 | succeed | Int |  no  |  |
 | cancelledRecords | [String] |  no  |  |
 | stage | String |  no  |  |
 | filePath | String |  no  |  |

---


 
 
 #### [BulkInventoryGet](#BulkInventoryGet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[BulkInventoryGetItems](#BulkInventoryGetItems)] |  no  |  |

---


 
 
 #### [Size1](#Size1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sellerIdentifier | String? |  yes  |  |
 | price | Double? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | isSet | Bool |  no  |  |
 | itemLength | Double |  no  |  |
 | itemWeightUnitOfMeasure | String |  no  |  |
 | size | String |  no  |  |
 | itemWeight | Double |  no  |  |
 | itemHeight | Double |  no  |  |
 | itemDimensionsUnitOfMeasure | String |  no  |  |
 | currency | String? |  yes  |  |
 | identifiers | [[String: Any]] |  no  |  |
 | priceEffective | Double? |  yes  |  |
 | priceTransfer | Double |  no  |  |
 | set | [InventorySet](#InventorySet) |  no  |  |
 | storeCode | String? |  yes  |  |
 | itemWidth | Double |  no  |  |

---


 
 
 #### [InventoryBulkRequest](#InventoryBulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | batchId | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | sizes | [[Size1](#Size1)]? |  yes  |  |
 | user | [String: Any] |  no  |  |

---


 
 
 #### [InventoryExportRequest](#InventoryExportRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [Int] |  no  |  |
 | type | String |  no  |  |
 | brand | [Int] |  no  |  |

---


 
 
 #### [InventoryExportJob](#InventoryExportJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | taskId | String? |  yes  |  |
 | completedOn | String |  no  |  |
 | triggerOn | String |  no  |  |
 | sellerId | Int? |  yes  |  |
 | url | String |  no  |  |
 | requestParams | [String: Any] |  no  |  |

---


 
 
 #### [FilerList](#FilerList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | display | String |  no  |  |

---


 
 
 #### [InventoryConfig](#InventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multivalues | Bool |  no  |  |
 | data | [[FilerList](#FilerList)] |  no  |  |

---


 
 
 #### [HsnUpsert](#HsnUpsert)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tax2 | Double |  no  |  |
 | taxOnEsp | Bool |  no  |  |
 | companyId | Int? |  yes  |  |
 | threshold1 | Double? |  yes  |  |
 | threshold2 | Double |  no  |  |
 | hsnCode | String? |  yes  |  |
 | tax1 | Double? |  yes  |  |
 | taxOnMrp | Bool? |  yes  |  |
 | uid | Int |  no  |  |
 | hs2Code | String? |  yes  |  |

---


 
 
 #### [HsnCodesObject](#HsnCodesObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tax2 | Double |  no  |  |
 | taxOnEsp | Bool |  no  |  |
 | id | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | companyId | Int |  no  |  |
 | threshold1 | Double |  no  |  |
 | threshold2 | Double |  no  |  |
 | hsnCode | String |  no  |  |
 | tax1 | Double |  no  |  |
 | taxOnMrp | Bool |  no  |  |
 | hs2Code | String |  no  |  |

---


 
 
 #### [HsnCode](#HsnCode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [HsnCodesObject](#HsnCodesObject) |  no  |  |

---


 
 
 #### [PageResponse](#PageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | String |  no  |  |
 | hasPrevious | Bool |  no  |  |
 | size | Int |  no  |  |
 | itemTotal | Int |  no  |  |
 | hasNext | Bool |  no  |  |

---


 
 
 #### [HsnCodesListingResponse](#HsnCodesListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [PageResponse](#PageResponse) |  no  |  |
 | items | [[HsnCodesObject](#HsnCodesObject)] |  no  |  |

---


 
 
 #### [BulkHsnUpsert](#BulkHsnUpsert)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[HsnUpsert](#HsnUpsert)]? |  yes  |  |

---


 
 
 #### [BulkHsnResponse](#BulkHsnResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |

---


 
 
 #### [BrandItem](#BrandItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | logo | [Media](#Media) |  no  |  |
 | departments | [String] |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | discount | String |  no  |  |

---


 
 
 #### [BrandListingResponse](#BrandListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[BrandItem](#BrandItem)] |  no  |  |

---


 
 
 #### [Department](#Department)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | [Media](#Media) |  no  |  |
 | priorityOrder | Int |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |
 | slug | String |  no  |  |

---


 
 
 #### [DepartmentResponse](#DepartmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Department](#Department)] |  no  |  |

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
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | childs | [[String: Any]] |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |
 | slug | String |  no  |  |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [SecondLevelChild](#SecondLevelChild)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | childs | [[ThirdLevelChild](#ThirdLevelChild)] |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |
 | slug | String |  no  |  |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [Child](#Child)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | childs | [[SecondLevelChild](#SecondLevelChild)] |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |
 | slug | String |  no  |  |
 | customJson | [String: Any] |  no  |  |

---


 
 
 #### [CategoryItems](#CategoryItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | childs | [[Child](#Child)] |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | uid | Int |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |

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


 
 
 #### [ApplicationProductListingResponse](#ApplicationProductListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[ProductFilters](#ProductFilters)] |  no  |  |
 | items | [[ProductListingDetail](#ProductListingDetail)] |  no  |  |
 | page | [Page](#Page)? |  yes  |  |
 | sortOn | [[ProductSortOn](#ProductSortOn)] |  no  |  |

---


 
 
 #### [ProductDetail](#ProductDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | similars | [String] |  no  |  |
 | rating | Double |  no  |  |
 | name | String |  no  |  |
 | slug | String? |  yes  |  |
 | highlights | [String] |  no  |  |
 | groupedAttributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)] |  no  |  |
 | description | String |  no  |  |
 | medias | [[Media1](#Media1)] |  no  |  |
 | promoMeta | [String: Any] |  no  |  |
 | color | String |  no  |  |
 | ratingCount | Int |  no  |  |
 | uid | Int |  no  |  |
 | shortDescription | String |  no  |  |
 | hasVariant | Bool |  no  |  |
 | imageNature | String |  no  |  |
 | productOnlineDate | String |  no  |  |
 | tryouts | [String] |  no  |  |
 | itemType | String |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | brand | [ProductBrand](#ProductBrand) |  no  |  |
 | teaserTag | [String: Any] |  no  |  |
 | itemCode | String |  no  |  |
 | type | String |  no  |  |

---




 
 
 #### [GetAddressSerializer](#GetAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int |  no  |  |
 | longitude | Double |  no  |  |
 | landmark | String |  no  |  |
 | address2 | String |  no  |  |
 | country | String |  no  |  |
 | latitude | Double |  no  |  |
 | address1 | String |  no  |  |
 | city | String |  no  |  |
 | countryCode | String |  no  |  |
 | state | String |  no  |  |
 | addressType | String |  no  |  |

---


 
 
 #### [BusinessCountryInfo](#BusinessCountryInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | countryCode | String |  no  |  |

---


 
 
 #### [SellerPhoneNumber](#SellerPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | Int? |  yes  |  |
 | number | String? |  yes  |  |

---


 
 
 #### [ContactDetails](#ContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [[SellerPhoneNumber](#SellerPhoneNumber)] |  no  |  |
 | emails | [String] |  no  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool |  no  |  |
 | value | String? |  yes  |  |
 | url | String |  no  |  |
 | type | String? |  yes  |  |
 | legalName | String |  no  |  |

---


 
 
 #### [Website](#Website)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |

---


 
 
 #### [BusinessDetails](#BusinessDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | website | [Website](#Website) |  no  |  |

---


 
 
 #### [GetCompanyProfileSerializerResponse](#GetCompanyProfileSerializerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | createdBy | [UserSerializer](#UserSerializer) |  no  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)] |  no  |  |
 | createdOn | String |  no  |  |
 | companyType | String? |  yes  |  |
 | modifiedOn | String |  no  |  |
 | verifiedOn | String |  no  |  |
 | stage | String |  no  |  |
 | uid | Int? |  yes  |  |
 | businessCountryInfo | [BusinessCountryInfo](#BusinessCountryInfo) |  no  |  |
 | warnings | [String: Any] |  no  |  |
 | contactDetails | [ContactDetails](#ContactDetails) |  no  |  |
 | documents | [[Document](#Document)] |  no  |  |
 | mode | String |  no  |  |
 | notificationEmails | [String] |  no  |  |
 | franchiseEnabled | Bool |  no  |  |
 | businessDetails | [BusinessDetails](#BusinessDetails) |  no  |  |
 | verifiedBy | [UserSerializer](#UserSerializer) |  no  |  |
 | modifiedBy | [UserSerializer](#UserSerializer) |  no  |  |
 | businessInfo | String |  no  |  |
 | businessType | String? |  yes  |  |

---


 
 
 #### [CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | landmark | String |  no  |  |
 | address2 | String |  no  |  |
 | country | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | address1 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | countryCode | String |  no  |  |
 | state | String? |  yes  |  |
 | addressType | String? |  yes  |  |

---


 
 
 #### [UpdateCompany](#UpdateCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | documents | [[Document](#Document)] |  no  |  |
 | franchiseEnabled | Bool |  no  |  |
 | rejectReason | String |  no  |  |
 | addresses | [[CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)] |  no  |  |
 | businessDetails | [BusinessDetails](#BusinessDetails) |  no  |  |
 | companyType | String |  no  |  |
 | notificationEmails | [String] |  no  |  |
 | warnings | [String: Any] |  no  |  |
 | contactDetails | [ContactDetails](#ContactDetails) |  no  |  |
 | businessInfo | String |  no  |  |
 | businessType | String |  no  |  |

---


 
 
 #### [DocumentsObj](#DocumentsObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Int |  no  |  |
 | pending | Int |  no  |  |

---


 
 
 #### [MetricsSerializer](#MetricsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String |  no  |  |
 | uid | Int |  no  |  |
 | companyDocuments | [DocumentsObj](#DocumentsObj) |  no  |  |
 | brand | [DocumentsObj](#DocumentsObj) |  no  |  |
 | storeDocuments | [DocumentsObj](#DocumentsObj) |  no  |  |
 | product | [DocumentsObj](#DocumentsObj) |  no  |  |
 | store | [DocumentsObj](#DocumentsObj) |  no  |  |

---


 
 
 #### [UserSerializer1](#UserSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | contact | String |  no  |  |
 | userId | String |  no  |  |
 | username | String |  no  |  |

---


 
 
 #### [BrandBannerSerializer](#BrandBannerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | String |  no  |  |
 | portrait | String |  no  |  |

---


 
 
 #### [GetBrandResponseSerializer](#GetBrandResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String |  no  |  |
 | name | String? |  yes  |  |
 | createdBy | [UserSerializer1](#UserSerializer1) |  no  |  |
 | uid | Int |  no  |  |
 | slugKey | String |  no  |  |
 | rejectReason | String |  no  |  |
 | createdOn | String |  no  |  |
 | synonyms | [String] |  no  |  |
 | verifiedBy | [UserSerializer1](#UserSerializer1) |  no  |  |
 | modifiedOn | String |  no  |  |
 | description | String |  no  |  |
 | warnings | [String: Any] |  no  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer) |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | localeLanguage | [String: Any] |  no  |  |
 | modifiedBy | [UserSerializer1](#UserSerializer1) |  no  |  |
 | verifiedOn | String |  no  |  |
 | logo | String |  no  |  |

---


 
 
 #### [CreateUpdateBrandRequestSerializer](#CreateUpdateBrandRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int |  no  |  |
 | brandTier | String |  no  |  |
 | synonyms | [String] |  no  |  |
 | companyId | Int |  no  |  |
 | description | String |  no  |  |
 | localeLanguage | [String: Any] |  no  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer) |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [CompanyBrandPostRequestSerializer](#CompanyBrandPostRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | [Int]? |  yes  |  |
 | uid | Int |  no  |  |
 | company | Int? |  yes  |  |

---


 
 
 #### [GetCompanySerializer](#GetCompanySerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String |  no  |  |
 | name | String |  no  |  |
 | createdBy | [UserSerializer](#UserSerializer) |  no  |  |
 | uid | Int |  no  |  |
 | rejectReason | String |  no  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)] |  no  |  |
 | createdOn | String |  no  |  |
 | companyType | String |  no  |  |
 | verifiedBy | [UserSerializer](#UserSerializer) |  no  |  |
 | modifiedOn | String |  no  |  |
 | modifiedBy | [UserSerializer](#UserSerializer) |  no  |  |
 | verifiedOn | String |  no  |  |
 | businessType | String |  no  |  |

---


 
 
 #### [CompanyBrandSerializer](#CompanyBrandSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String |  no  |  |
 | createdBy | [UserSerializer1](#UserSerializer1) |  no  |  |
 | uid | Int |  no  |  |
 | rejectReason | String |  no  |  |
 | createdOn | String |  no  |  |
 | brand | [GetBrandResponseSerializer](#GetBrandResponseSerializer) |  no  |  |
 | verifiedBy | [UserSerializer1](#UserSerializer1) |  no  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer) |  no  |  |
 | modifiedOn | String |  no  |  |
 | warnings | [String: Any] |  no  |  |
 | modifiedBy | [UserSerializer1](#UserSerializer1) |  no  |  |
 | verifiedOn | String |  no  |  |

---


 
 
 #### [CompanyBrandListSerializer](#CompanyBrandListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CompanyBrandSerializer](#CompanyBrandSerializer)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [LocationManagerSerializer](#LocationManagerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobileNo | [SellerPhoneNumber](#SellerPhoneNumber)? |  yes  |  |
 | name | String |  no  |  |
 | email | String |  no  |  |

---


 
 
 #### [LocationTimingSerializer](#LocationTimingSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minute | Int |  no  |  |
 | hour | Int |  no  |  |

---


 
 
 #### [LocationDayWiseSerializer](#LocationDayWiseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | weekday | String? |  yes  |  |
 | opening | [LocationTimingSerializer](#LocationTimingSerializer) |  no  |  |
 | open | Bool? |  yes  |  |
 | closing | [LocationTimingSerializer](#LocationTimingSerializer) |  no  |  |

---


 
 
 #### [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | onSameStore | Bool |  no  |  |
 | storeUid | Int |  no  |  |

---


 
 
 #### [InvoiceCredSerializer](#InvoiceCredSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | password | String |  no  |  |
 | enabled | Bool |  no  |  |
 | username | String |  no  |  |

---


 
 
 #### [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eInvoice | [InvoiceCredSerializer](#InvoiceCredSerializer) |  no  |  |
 | eWaybill | [InvoiceCredSerializer](#InvoiceCredSerializer) |  no  |  |

---


 
 
 #### [GetAddressSerializer1](#GetAddressSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int |  no  |  |
 | longitude | Double |  no  |  |
 | landmark | String |  no  |  |
 | address2 | String |  no  |  |
 | country | String |  no  |  |
 | latitude | Double |  no  |  |
 | address1 | String |  no  |  |
 | city | String |  no  |  |
 | countryCode | String |  no  |  |
 | state | String |  no  |  |
 | addressType | String |  no  |  |

---


 
 
 #### [LocationSerializer](#LocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | documents | [[Document](#Document)] |  no  |  |
 | name | String? |  yes  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer) |  no  |  |
 | uid | Int |  no  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)] |  no  |  |
 | displayName | String? |  yes  |  |
 | stage | String |  no  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer) |  no  |  |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer) |  no  |  |
 | notificationEmails | [String] |  no  |  |
 | company | Int? |  yes  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)] |  no  |  |
 | address | [GetAddressSerializer1](#GetAddressSerializer1)? |  yes  |  |
 | warnings | [String: Any] |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | code | String? |  yes  |  |
 | storeType | String |  no  |  |

---


 
 
 #### [LocationIntegrationType](#LocationIntegrationType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | String |  no  |  |
 | order | String |  no  |  |

---


 
 
 #### [GetLocationSerializer](#GetLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | createdBy | [UserSerializer1](#UserSerializer1) |  no  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer) |  no  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | verifiedOn | String |  no  |  |
 | storeType | String |  no  |  |
 | stage | String |  no  |  |
 | uid | Int |  no  |  |
 | address | [GetAddressSerializer](#GetAddressSerializer)? |  yes  |  |
 | warnings | [String: Any] |  no  |  |
 | integrationType | [LocationIntegrationType](#LocationIntegrationType) |  no  |  |
 | phoneNumber | String? |  yes  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer) |  no  |  |
 | documents | [[Document](#Document)] |  no  |  |
 | displayName | String? |  yes  |  |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer) |  no  |  |
 | notificationEmails | [String] |  no  |  |
 | customJson | [String: Any] |  no  |  |
 | code | String? |  yes  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)] |  no  |  |
 | verifiedBy | [UserSerializer1](#UserSerializer1) |  no  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer) |  no  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)] |  no  |  |
 | modifiedBy | [UserSerializer1](#UserSerializer1) |  no  |  |

---


 
 
 #### [LocationListSerializer](#LocationListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GetLocationSerializer](#GetLocationSerializer)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [BulkLocationSerializer](#BulkLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[LocationSerializer](#LocationSerializer)] |  no  |  |

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




 
 
 #### [DataTresholdDTO](#DataTresholdDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minPrice | Double |  no  |  |
 | safeStock | Int |  no  |  |
 | periodThreshold | Int |  no  |  |
 | periodThresholdType | String |  no  |  |
 | periodTypeList | [[GenericDTO](#GenericDTO)] |  no  |  |

---


 
 
 #### [GenericDTO](#GenericDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | value | [String: Any] |  no  |  |

---


 
 
 #### [JobConfigDTO](#JobConfigDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | integration | String? |  yes  |  |
 | integrationData | [String: Any] |  no  |  |
 | companyName | String |  no  |  |
 | companyId | Int? |  yes  |  |
 | taskDetails | [TaskDTO](#TaskDTO) |  no  |  |
 | thresholdDetails | [DataTresholdDTO](#DataTresholdDTO) |  no  |  |
 | jobCode | String |  no  |  |
 | alias | String |  no  |  |

---


 
 
 #### [TaskDTO](#TaskDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | Int |  no  |  |
 | groupList | [[GenericDTO](#GenericDTO)] |  no  |  |

---


 
 
 #### [ResponseEnvelopeString](#ResponseEnvelopeString)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String |  no  |  |
 | status | Int |  no  |  |
 | error | String |  no  |  |
 | exception | String |  no  |  |
 | message | String |  no  |  |
 | totalTimeTakenInMillis | Int |  no  |  |
 | httpStatus | String |  no  |  |
 | items | String |  no  |  |
 | payload | String |  no  |  |
 | traceId | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [AWSS3config](#AWSS3config)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bucket | String |  no  |  |
 | region | String |  no  |  |
 | dir | String |  no  |  |
 | accessKey | String |  no  |  |
 | secretKey | String |  no  |  |
 | localFilePath | String |  no  |  |
 | archivePath | String |  no  |  |
 | archive | Bool |  no  |  |
 | delete | Bool |  no  |  |
 | unzip | Bool |  no  |  |
 | zipFormat | String |  no  |  |
 | fileRegex | String |  no  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig) |  no  |  |

---


 
 
 #### [ArchiveConfig](#ArchiveConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | delete | Bool |  no  |  |
 | archive | Bool |  no  |  |
 | archiveDir | String |  no  |  |

---


 
 
 #### [Audit](#Audit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String |  no  |  |
 | modifiedBy | String |  no  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

---


 
 
 #### [CatalogMasterConfig](#CatalogMasterConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sourceSlug | String |  no  |  |

---


 
 
 #### [CompanyConfig](#CompanyConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int |  no  |  |
 | excludeSteps | [Int] |  no  |  |
 | hiddenClosetKeys | [String] |  no  |  |
 | openTags | [String: Any] |  no  |  |
 | taxIdentifiers | [String] |  no  |  |
 | deleteQuantityThreshold | Int |  no  |  |

---


 
 
 #### [DBConfig](#DBConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | vendor | String |  no  |  |
 | host | String |  no  |  |
 | port | Int |  no  |  |
 | username | String |  no  |  |
 | password | String |  no  |  |
 | dbname | String |  no  |  |
 | query | String |  no  |  |
 | procedure | Bool |  no  |  |
 | driverClass | String |  no  |  |
 | jdbcUrl | String |  no  |  |
 | optionalProperties | [String: String] |  no  |  |

---


 
 
 #### [DBConnectionProfile](#DBConnectionProfile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | String |  no  |  |

---


 
 
 #### [DBParamConfig](#DBParamConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | params | [String: Any] |  no  |  |

---


 
 
 #### [DefaultHeadersDTO](#DefaultHeadersDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [PropBeanDTO](#PropBeanDTO) |  no  |  |
 | intfArticleId | [PropBeanDTO](#PropBeanDTO) |  no  |  |
 | priceEffective | [PropBeanDTO](#PropBeanDTO) |  no  |  |
 | quantity | [PropBeanDTO](#PropBeanDTO) |  no  |  |

---


 
 
 #### [DocMappingConfig](#DocMappingConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | properties | [String: Any] |  no  |  |
 | junkDataThresholdCount | Int |  no  |  |
 | propBeanConfigs | [[PropBeanConfig](#PropBeanConfig)] |  no  |  |
 | unwindField | String |  no  |  |
 | defaultHeaders | [DefaultHeadersDTO](#DefaultHeadersDTO) |  no  |  |

---


 
 
 #### [EmailConfig](#EmailConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recepient | String |  no  |  |
 | host | String |  no  |  |
 | username | String |  no  |  |
 | password | String |  no  |  |
 | unzip | Bool |  no  |  |
 | readFromContent | Bool |  no  |  |
 | filterBasedOnRecepients | Bool |  no  |  |
 | pcol | String |  no  |  |
 | subjectLineRegex | String |  no  |  |
 | senderAddress | String |  no  |  |
 | localDir | String |  no  |  |
 | folderNameHierarchies | [String] |  no  |  |
 | attachmentRegex | String |  no  |  |
 | bodyContentRegex | String |  no  |  |
 | passwordProtected | Bool |  no  |  |
 | zipFormat | String |  no  |  |
 | attachmentMandate | Bool |  no  |  |
 | filterFilesAfterExtraction | Bool |  no  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig) |  no  |  |
 | readAllUnreadMails | Bool |  no  |  |
 | contentType | String |  no  |  |
 | downloadableLink | Bool |  no  |  |
 | properties | [String: String] |  no  |  |

---


 
 
 #### [FTPConfig](#FTPConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | host | String |  no  |  |
 | port | Int |  no  |  |
 | username | String |  no  |  |
 | password | String |  no  |  |
 | unzip | Bool |  no  |  |
 | retries | Int |  no  |  |
 | interval | Int |  no  |  |
 | localDir | String |  no  |  |
 | remoteDir | String |  no  |  |
 | zipFileRegex | String |  no  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig) |  no  |  |
 | fileRegex | String |  no  |  |
 | zipFormat | String |  no  |  |
 | readAllFiles | Bool |  no  |  |

---


 
 
 #### [FileConfig](#FileConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | delimiter | String |  no  |  |
 | charset | String |  no  |  |
 | properties | [String: Any] |  no  |  |
 | fileHasHeader | Bool |  no  |  |
 | headerIndex | Int |  no  |  |
 | headerArray | [String] |  no  |  |
 | dataStartIndex | Int |  no  |  |
 | propBeanConfigs | [[PropBeanConfig](#PropBeanConfig)] |  no  |  |
 | junkDataThresholdCount | Int |  no  |  |
 | fileType | String |  no  |  |
 | lineValidityCheck | Bool |  no  |  |
 | sheetNames | [String] |  no  |  |
 | readAllSheets | Bool |  no  |  |
 | quoteChar | String |  no  |  |
 | escapeChar | String |  no  |  |
 | defaultHeaders | [DefaultHeadersDTO](#DefaultHeadersDTO) |  no  |  |

---


 
 
 #### [GoogleSpreadSheetConfig](#GoogleSpreadSheetConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | range | String |  no  |  |
 | sheetId | String |  no  |  |
 | clientSecretLocation | String |  no  |  |
 | credStorageDirectory | String |  no  |  |
 | localDir | String |  no  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig) |  no  |  |

---


 
 
 #### [HttpConfig](#HttpConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hosturl | String |  no  |  |
 | username | String |  no  |  |
 | password | String |  no  |  |
 | requestParams | [String: String] |  no  |  |
 | httpMethod | String |  no  |  |
 | requestPayload | String |  no  |  |
 | localPath | String |  no  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig) |  no  |  |

---


 
 
 #### [JobConfig](#JobConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | jobCode | String |  no  |  |
 | taskType | String |  no  |  |
 | syncDelay | Int |  no  |  |
 | cronExpression | String |  no  |  |
 | storeFilter | [StoreFilter](#StoreFilter) |  no  |  |
 | processConfig | [ProcessConfig](#ProcessConfig) |  no  |  |
 | storeConfig | [[StoreConfig](#StoreConfig)] |  no  |  |
 | properties | [String: String] |  no  |  |
 | immediateFirstRun | Bool |  no  |  |
 | disable | Bool |  no  |  |
 | dependentJobCodes | [String] |  no  |  |
 | companyConfig | [[CompanyConfig](#CompanyConfig)] |  no  |  |
 | companyIds | [Int] |  no  |  |
 | taxIdentifiers | [String] |  no  |  |
 | priority | String |  no  |  |
 | periodThreshold | Int |  no  |  |
 | periodThresholdType | String |  no  |  |
 | dbConnectionProfile | [DBConnectionProfile](#DBConnectionProfile) |  no  |  |
 | params | [String: Any] |  no  |  |
 | openTags | [String: Any] |  no  |  |
 | deleteQuantityThreshold | Int |  no  |  |
 | catalogMasterConfig | [CatalogMasterConfig](#CatalogMasterConfig) |  no  |  |
 | aggregatorTypes | [String] |  no  |  |
 | integrationType | String |  no  |  |
 | minPrice | Double |  no  |  |
 | audit | [Audit](#Audit) |  no  |  |
 | version | Int |  no  |  |
 | alias | String |  no  |  |

---


 
 
 #### [JobConfigRawDTO](#JobConfigRawDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | integration | String? |  yes  |  |
 | companyName | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | data | [JobConfig](#JobConfig) |  no  |  |

---


 
 
 #### [JsonDocConfig](#JsonDocConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | propBeanConfigs | [[PropBeanConfig](#PropBeanConfig)] |  no  |  |

---


 
 
 #### [LocalFileConfig](#LocalFileConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | retries | Int |  no  |  |
 | interval | Int |  no  |  |
 | localDir | String |  no  |  |
 | workingDir | String |  no  |  |
 | unzip | Bool |  no  |  |
 | zipFileRegex | String |  no  |  |
 | fileRegex | String |  no  |  |
 | zipFormat | String |  no  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig) |  no  |  |
 | readAllFiles | Bool |  no  |  |

---


 
 
 #### [MongoDocConfig](#MongoDocConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | collectionName | String |  no  |  |
 | findQuery | [String: Any] |  no  |  |
 | projectionQuery | [String: Any] |  no  |  |
 | propBeanConfigs | [[PropBeanConfig](#PropBeanConfig)] |  no  |  |
 | aggregatePipeline | [[String: Any]] |  no  |  |
 | skipSave | Bool |  no  |  |

---


 
 
 #### [OAuthConfig](#OAuthConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | limit | Int |  no  |  |
 | pages | Int |  no  |  |
 | interval | Int |  no  |  |
 | consumerKey | String |  no  |  |
 | consumerSecret | String |  no  |  |
 | token | String |  no  |  |
 | tokenSecret | String |  no  |  |
 | restUrl | String |  no  |  |
 | restBaseUrl | String |  no  |  |
 | functionName | String |  no  |  |

---


 
 
 #### [ProcessConfig](#ProcessConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dbConfig | [DBConfig](#DBConfig) |  no  |  |
 | dbParamConfig | [DBParamConfig](#DBParamConfig) |  no  |  |
 | sftpConfig | [SFTPConfig](#SFTPConfig) |  no  |  |
 | awsS3Config | [AWSS3config](#AWSS3config) |  no  |  |
 | mongoDocConfig | [MongoDocConfig](#MongoDocConfig) |  no  |  |
 | ftpConfig | [FTPConfig](#FTPConfig) |  no  |  |
 | emailConfig | [EmailConfig](#EmailConfig) |  no  |  |
 | fileConfig | [FileConfig](#FileConfig) |  no  |  |
 | jsonDocConfig | [JsonDocConfig](#JsonDocConfig) |  no  |  |
 | docMappingConfig | [DocMappingConfig](#DocMappingConfig) |  no  |  |
 | taskStepConfig | [TaskStepConfig](#TaskStepConfig) |  no  |  |
 | httpConfig | [HttpConfig](#HttpConfig) |  no  |  |
 | localFileConfig | [LocalFileConfig](#LocalFileConfig) |  no  |  |
 | oauthConfig | [OAuthConfig](#OAuthConfig) |  no  |  |
 | googleSpreadsheetConfig | [GoogleSpreadSheetConfig](#GoogleSpreadSheetConfig) |  no  |  |

---


 
 
 #### [PropBeanConfig](#PropBeanConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | required | Bool |  no  |  |
 | mapping | [String: [PropBeanConfig](#PropBeanConfig)] |  no  |  |
 | optional | Bool |  no  |  |
 | send | [Send](#Send) |  no  |  |
 | validations | [[String: Any]] |  no  |  |
 | values | [String] |  no  |  |
 | include | Bool |  no  |  |
 | sourceField | String |  no  |  |
 | sourceFields | [String] |  no  |  |
 | destinationField | String |  no  |  |
 | dataType | String |  no  |  |
 | defaultValue | [String: Any] |  no  |  |
 | constValue | [String: Any] |  no  |  |
 | concatStr | String |  no  |  |
 | functionName | String |  no  |  |
 | transformerName | String |  no  |  |
 | allParamFunctionName | String |  no  |  |
 | subSeparator | String |  no  |  |
 | indexField | String |  no  |  |
 | ignoreIfNotExists | Bool |  no  |  |
 | identifierType | String |  no  |  |
 | projectionQuery | [String: Any] |  no  |  |
 | enrichFromMaster | Bool |  no  |  |

---


 
 
 #### [PropBeanDTO](#PropBeanDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | required | Bool |  no  |  |
 | optional | Bool |  no  |  |
 | include | Bool |  no  |  |
 | sourceField | String |  no  |  |
 | sourceFields | [String] |  no  |  |
 | destinationField | String |  no  |  |
 | dataType | String |  no  |  |
 | defaultValue | [String: Any] |  no  |  |
 | constValue | [String: Any] |  no  |  |
 | concatStr | String |  no  |  |
 | functionName | String |  no  |  |
 | transformerName | String |  no  |  |
 | allParamFunctionName | String |  no  |  |
 | subSeparator | String |  no  |  |
 | indexField | String |  no  |  |
 | ignoreIfNotExists | Bool |  no  |  |
 | identifierType | String |  no  |  |
 | projectionQuery | [String: Any] |  no  |  |
 | enrichFromMaster | Bool |  no  |  |

---


 
 
 #### [ResponseEnvelopeListJobConfigRawDTO](#ResponseEnvelopeListJobConfigRawDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String |  no  |  |
 | status | Int |  no  |  |
 | error | String |  no  |  |
 | exception | String |  no  |  |
 | message | String |  no  |  |
 | totalTimeTakenInMillis | Int |  no  |  |
 | httpStatus | String |  no  |  |
 | items | [[JobConfigRawDTO](#JobConfigRawDTO)] |  no  |  |
 | payload | [[JobConfigRawDTO](#JobConfigRawDTO)] |  no  |  |
 | traceId | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [SFTPConfig](#SFTPConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | host | String |  no  |  |
 | port | Int |  no  |  |
 | username | String |  no  |  |
 | password | String |  no  |  |
 | unzip | Bool |  no  |  |
 | retries | Int |  no  |  |
 | interval | Int |  no  |  |
 | privateKeyPath | String |  no  |  |
 | strictHostKeyChecking | Bool |  no  |  |
 | localDir | String |  no  |  |
 | remoteDir | String |  no  |  |
 | passwordProtected | Bool |  no  |  |
 | zipFileRegex | String |  no  |  |
 | fileRegex | String |  no  |  |
 | zipFormat | String |  no  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig) |  no  |  |
 | readAllFiles | Bool |  no  |  |

---


 
 
 #### [Send](#Send)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | raw | Bool |  no  |  |
 | processed | Bool |  no  |  |

---


 
 
 #### [StoreConfig](#StoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jobCode | String |  no  |  |
 | storeid | String |  no  |  |
 | storeAlias | String |  no  |  |
 | storeFileRegex | String |  no  |  |
 | storeFileName | String |  no  |  |
 | processConfig | [ProcessConfig](#ProcessConfig) |  no  |  |
 | properties | [String: String] |  no  |  |

---


 
 
 #### [StoreFilter](#StoreFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | includeTags | [String] |  no  |  |
 | excludeTags | [String] |  no  |  |
 | query | [String: Any] |  no  |  |

---


 
 
 #### [TaskConfig](#TaskConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | taskConfigId | Int |  no  |  |
 | taskParams | [[TaskParam](#TaskParam)] |  no  |  |

---


 
 
 #### [TaskParam](#TaskParam)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | value | [String: Any] |  no  |  |

---


 
 
 #### [TaskStepConfig](#TaskStepConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | taskConfigs | [[TaskConfig](#TaskConfig)] |  no  |  |
 | taskConfigIds | [Int] |  no  |  |
 | taskConfigGroupIds | [Int] |  no  |  |

---


 
 
 #### [ResponseEnvelopeListJobConfigDTO](#ResponseEnvelopeListJobConfigDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String |  no  |  |
 | status | Int |  no  |  |
 | error | String |  no  |  |
 | exception | String |  no  |  |
 | message | String |  no  |  |
 | totalTimeTakenInMillis | Int |  no  |  |
 | httpStatus | String |  no  |  |
 | items | [[JobConfigDTO](#JobConfigDTO)] |  no  |  |
 | payload | [[JobConfigDTO](#JobConfigDTO)] |  no  |  |
 | traceId | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ResponseEnvelopeJobConfigDTO](#ResponseEnvelopeJobConfigDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String |  no  |  |
 | status | Int |  no  |  |
 | error | String |  no  |  |
 | exception | String |  no  |  |
 | message | String |  no  |  |
 | totalTimeTakenInMillis | Int |  no  |  |
 | httpStatus | String |  no  |  |
 | items | [JobConfigDTO](#JobConfigDTO) |  no  |  |
 | payload | [JobConfigDTO](#JobConfigDTO) |  no  |  |
 | traceId | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [JobHistoryDto](#JobHistoryDto)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalAddedCount | Int |  no  |  |
 | totalUpdatedCount | Int |  no  |  |
 | totalSuppressedCount | Int |  no  |  |
 | jobId | Int |  no  |  |
 | status | String |  no  |  |
 | jobCode | String |  no  |  |
 | processedOn | String |  no  |  |
 | filename | [String] |  no  |  |

---


 
 
 #### [JobMetricsDto](#JobMetricsDto)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jobCode | String |  no  |  |
 | isRunMoreThanUsual | String |  no  |  |
 | jobHistory | [[JobHistoryDto](#JobHistoryDto)] |  no  |  |
 | totalSuccessCount | Int |  no  |  |
 | totalFailureCount | Int |  no  |  |
 | totalWarningCount | Int |  no  |  |
 | totalSuppressedCount | Int |  no  |  |
 | totalJobRuns | Int |  no  |  |

---


 
 
 #### [ResponseEnvelopeJobMetricsDto](#ResponseEnvelopeJobMetricsDto)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String |  no  |  |
 | status | Int |  no  |  |
 | error | String |  no  |  |
 | exception | String |  no  |  |
 | message | String |  no  |  |
 | totalTimeTakenInMillis | Int |  no  |  |
 | httpStatus | String |  no  |  |
 | items | [JobMetricsDto](#JobMetricsDto) |  no  |  |
 | payload | [JobMetricsDto](#JobMetricsDto) |  no  |  |
 | traceId | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [JobConfigListDTO](#JobConfigListDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | alias | String |  no  |  |
 | modifiedBy | String |  no  |  |
 | createdBy | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | createdOn | String |  no  |  |
 | active | Bool |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ResponseEnvelopeListJobConfigListDTO](#ResponseEnvelopeListJobConfigListDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String |  no  |  |
 | status | Int |  no  |  |
 | error | String |  no  |  |
 | exception | String |  no  |  |
 | message | String |  no  |  |
 | totalTimeTakenInMillis | Int |  no  |  |
 | httpStatus | String |  no  |  |
 | items | [[JobConfigListDTO](#JobConfigListDTO)] |  no  |  |
 | payload | [[JobConfigListDTO](#JobConfigListDTO)] |  no  |  |
 | traceId | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---




 
 
 #### [ApplicationInventory](#ApplicationInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | [AppInventoryConfig](#AppInventoryConfig) |  no  |  |
 | authentication | [AuthenticationConfig](#AuthenticationConfig) |  no  |  |
 | articleAssignment | [ArticleAssignmentConfig](#ArticleAssignmentConfig) |  no  |  |
 | rewardPoints | [RewardPointsConfig](#RewardPointsConfig) |  no  |  |
 | cart | [AppCartConfig](#AppCartConfig) |  no  |  |
 | payment | [AppPaymentConfig](#AppPaymentConfig) |  no  |  |
 | order | [AppOrderConfig](#AppOrderConfig) |  no  |  |
 | logistics | [AppLogisticsConfig](#AppLogisticsConfig) |  no  |  |
 | business | String |  no  |  |
 | commsEnabled | Bool |  no  |  |
 | platforms | [String] |  no  |  |
 | id | String |  no  |  |
 | loyaltyPoints | [LoyaltyPointsConfig](#LoyaltyPointsConfig) |  no  |  |
 | app | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | modifiedBy | String |  no  |  |

---


 
 
 #### [AppInventoryConfig](#AppInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [InventoryBrand](#InventoryBrand) |  no  |  |
 | store | [InventoryStore](#InventoryStore) |  no  |  |
 | category | [InventoryCategory](#InventoryCategory) |  no  |  |
 | price | [InventoryPrice](#InventoryPrice) |  no  |  |
 | discount | [InventoryDiscount](#InventoryDiscount) |  no  |  |
 | outOfStock | Bool |  no  |  |
 | franchiseEnabled | Bool |  no  |  |
 | excludeCategory | [[String: Any]] |  no  |  |
 | image | [String] |  no  |  |
 | companyStore | [[String: Any]] |  no  |  |

---


 
 
 #### [InventoryBrand](#InventoryBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String |  no  |  |
 | brands | [[String: Any]] |  no  |  |

---


 
 
 #### [InventoryStore](#InventoryStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String |  no  |  |
 | stores | [[String: Any]] |  no  |  |
 | rules | [AppStoreRules](#AppStoreRules) |  no  |  |

---


 
 
 #### [AppStoreRules](#AppStoreRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companies | [Int] |  no  |  |
 | brands | [[String: Any]] |  no  |  |

---


 
 
 #### [InventoryCategory](#InventoryCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String |  no  |  |
 | categories | [[String: Any]] |  no  |  |

---


 
 
 #### [InventoryPrice](#InventoryPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Double |  no  |  |
 | max | Double |  no  |  |

---


 
 
 #### [InventoryDiscount](#InventoryDiscount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Double |  no  |  |
 | max | Double |  no  |  |

---


 
 
 #### [AuthenticationConfig](#AuthenticationConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | required | Bool |  no  |  |
 | provider | String |  no  |  |

---


 
 
 #### [ArticleAssignmentConfig](#ArticleAssignmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rules | [ArticleAssignmentRules](#ArticleAssignmentRules) |  no  |  |
 | postOrderReassignment | Bool |  no  |  |
 | enforcedStores | [[String: Any]] |  no  |  |

---


 
 
 #### [ArticleAssignmentRules](#ArticleAssignmentRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storePriority | [StorePriority](#StorePriority) |  no  |  |

---


 
 
 #### [StorePriority](#StorePriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | storetypeOrder | [[String: Any]] |  no  |  |

---


 
 
 #### [RewardPointsConfig](#RewardPointsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credit | [Credit](#Credit) |  no  |  |
 | debit | [Debit](#Debit) |  no  |  |

---


 
 
 #### [Credit](#Credit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |

---


 
 
 #### [Debit](#Debit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | autoApply | Bool |  no  |  |
 | strategyChannel | String |  no  |  |

---


 
 
 #### [AppCartConfig](#AppCartConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryCharges | [DeliveryCharges](#DeliveryCharges) |  no  |  |
 | enabled | Bool |  no  |  |
 | maxCartItems | Int |  no  |  |
 | minCartValue | Double |  no  |  |
 | bulkCoupons | Bool |  no  |  |

---


 
 
 #### [DeliveryCharges](#DeliveryCharges)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | charges | [Charges](#Charges) |  no  |  |

---


 
 
 #### [Charges](#Charges)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | threshold | Double |  no  |  |
 | charges | Double |  no  |  |

---


 
 
 #### [AppPaymentConfig](#AppPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | callbackUrl | [CallbackUrl](#CallbackUrl) |  no  |  |
 | methods | [Methods](#Methods) |  no  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock) |  no  |  |
 | modeOfPayment | String |  no  |  |
 | source | String |  no  |  |
 | enabled | Bool |  no  |  |
 | codAmountLimit | Double |  no  |  |
 | codCharges | Double |  no  |  |

---


 
 
 #### [CallbackUrl](#CallbackUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | String |  no  |  |
 | web | String |  no  |  |

---


 
 
 #### [Methods](#Methods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pl | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | card | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | nb | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | wl | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | ps | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | upi | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | qr | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | cod | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | pp | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | jp | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | pac | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | fc | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | jiopp | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | stripepg | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | juspaypg | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | payubizpg | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | payumoneypg | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | rupifipg | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |
 | simpl | [PaymentModeConfig](#PaymentModeConfig) |  no  |  |

---


 
 
 #### [PaymentModeConfig](#PaymentModeConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |

---


 
 
 #### [PaymentSelectionLock](#PaymentSelectionLock)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | defaultOptions | String |  no  |  |
 | paymentIdentifier | String |  no  |  |

---


 
 
 #### [AppOrderConfig](#AppOrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | forceReassignment | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [AppLogisticsConfig](#AppLogisticsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logisticsBySeller | Bool |  no  |  |
 | serviceabilityCheck | Bool |  no  |  |
 | sameDayDelivery | Bool |  no  |  |
 | dpAssignment | Bool |  no  |  |

---


 
 
 #### [LoyaltyPointsConfig](#LoyaltyPointsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | autoApply | Bool |  no  |  |

---


 
 
 #### [AppInventoryPartialUpdate](#AppInventoryPartialUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rewardPoints | [RewardPointsConfig](#RewardPointsConfig) |  no  |  |
 | cart | [AppCartConfig](#AppCartConfig) |  no  |  |
 | payment | [AppPaymentConfig](#AppPaymentConfig) |  no  |  |
 | loyaltyPoints | [LoyaltyPointsConfig](#LoyaltyPointsConfig) |  no  |  |
 | commsEnabled | Bool |  no  |  |

---


 
 
 #### [BrandCompanyInfo](#BrandCompanyInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyName | String |  no  |  |
 | companyId | Int |  no  |  |

---


 
 
 #### [CompanyByBrandsRequest](#CompanyByBrandsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | Int? |  yes  | Brand uids |
 | searchText | String |  no  | Search company by name |

---


 
 
 #### [CompanyByBrandsResponse](#CompanyByBrandsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BrandCompanyInfo](#BrandCompanyInfo)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [StoreByBrandsRequest](#StoreByBrandsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int |  no  | Current company id for current company stores only. Don't send in case of cross selling enabled |
 | brands | Int? |  yes  | Brand uids |
 | searchText | String |  no  | Search store by name or store code |

---


 
 
 #### [StoreByBrandsResponse](#StoreByBrandsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BrandStoreInfo](#BrandStoreInfo)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [BrandStoreInfo](#BrandStoreInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeName | String |  no  |  |
 | storeId | Int |  no  |  |
 | storeType | String |  no  |  |
 | storeCode | String |  no  |  |
 | storeAddress | [OptedStoreAddress](#OptedStoreAddress) |  no  |  |
 | company | [OptedCompany](#OptedCompany) |  no  |  |

---


 
 
 #### [CompanyBrandInfo](#CompanyBrandInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | value | Int |  no  |  |
 | brandLogoUrl | String |  no  |  |
 | brandBannerUrl | String |  no  |  |
 | brandBannerPortraitUrl | String |  no  |  |

---


 
 
 #### [BrandsByCompanyResponse](#BrandsByCompanyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | [CompanyBrandInfo](#CompanyBrandInfo) |  no  |  |

---


 
 
 #### [CreateApplicationRequest](#CreateApplicationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | [App](#App) |  no  |  |
 | configuration | [AppInventory](#AppInventory) |  no  |  |
 | domain | [AppDomain](#AppDomain) |  no  |  |

---


 
 
 #### [CreateAppResponse](#CreateAppResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | [Application](#Application) |  no  |  |
 | configuration | [ApplicationInventory](#ApplicationInventory) |  no  |  |

---


 
 
 #### [ApplicationsResponse](#ApplicationsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Application](#Application)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [MobileAppConfiguration](#MobileAppConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool |  no  |  |
 | id | String |  no  |  |
 | appName | String |  no  |  |
 | landingImage | [LandingImage](#LandingImage) |  no  |  |
 | splashImage | [SplashImage](#SplashImage) |  no  |  |
 | application | String |  no  |  |
 | platformType | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |
 | packageName | String |  no  |  |

---


 
 
 #### [LandingImage](#LandingImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String |  no  |  |
 | secureUrl | String |  no  |  |

---


 
 
 #### [SplashImage](#SplashImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String |  no  |  |
 | secureUrl | String |  no  |  |

---


 
 
 #### [MobileAppConfigRequest](#MobileAppConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appName | String |  no  |  |
 | landingImage | [LandingImage](#LandingImage) |  no  |  |
 | splashImage | [SplashImage](#SplashImage) |  no  |  |
 | isActive | Bool |  no  |  |

---


 
 
 #### [BuildVersionHistory](#BuildVersionHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | versions | [BuildVersion](#BuildVersion) |  no  |  |
 | latestAvailableVersionName | String |  no  |  |

---


 
 
 #### [BuildVersion](#BuildVersion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | application | String |  no  |  |
 | platformType | String |  no  |  |
 | buildStatus | String |  no  |  |
 | versionName | String |  no  |  |
 | versionCode | Int |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [AppSupportedCurrency](#AppSupportedCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | supportedCurrency | [String] |  no  |  |
 | application | String |  no  |  |
 | defaultCurrency | [DefaultCurrency](#DefaultCurrency) |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |

---


 
 
 #### [DefaultCurrency](#DefaultCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ref | String |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [CurrencyConfig](#CurrencyConfig)

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


 
 
 #### [DomainAdd](#DomainAdd)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  | Full domain name |

---


 
 
 #### [DomainAddRequest](#DomainAddRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | [DomainAdd](#DomainAdd) |  no  |  |

---


 
 
 #### [DomainsResponse](#DomainsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [[Domain](#Domain)] |  no  |  |

---


 
 
 #### [UpdateDomain](#UpdateDomain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |

---


 
 
 #### [UpdateDomainTypeRequest](#UpdateDomainTypeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | [UpdateDomain](#UpdateDomain) |  no  |  |
 | action | String |  no  |  |

---


 
 
 #### [DomainStatusRequest](#DomainStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domainUrl | String |  no  | Domain url |

---


 
 
 #### [DomainStatus](#DomainStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | status | Bool |  no  |  |

---


 
 
 #### [DomainStatusResponse](#DomainStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | connected | Bool |  no  |  |
 | status | [[DomainStatus](#DomainStatus)] |  no  |  |

---


 
 
 #### [DomainSuggestionsRequest](#DomainSuggestionsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domainUrl | String |  no  | Domain url |
 | custom | Bool |  no  | Get suggestion for custom domains or fynd domains |

---


 
 
 #### [DomainSuggestion](#DomainSuggestion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | unsupported | Bool |  no  | Whether TLD domain is supported or not |
 | isAvailable | Bool? |  yes  |  |
 | price | Double |  no  | Price for purchasing a custom domain. Not present for fynd domain |
 | currency | String |  no  | Custom domain price currency. Not present for fynd domain |

---


 
 
 #### [DomainSuggestionsResponse](#DomainSuggestionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [[DomainSuggestion](#DomainSuggestion)] |  no  | Domain url |

---


 
 
 #### [GetIntegrationsOptInsResponse](#GetIntegrationsOptInsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [IntegrationOptIn](#IntegrationOptIn) |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [IntegrationOptIn](#IntegrationOptIn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | validators | [Validators](#Validators) |  no  |  |
 | description | String |  no  |  |
 | descriptionHtml | String |  no  |  |
 | constants | String |  no  |  |
 | companies | [[String: Any]] |  no  |  |
 | support | [String] |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | meta | [IntegrationMeta](#IntegrationMeta) |  no  |  |
 | icon | String |  no  |  |
 | owner | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | token | String |  no  |  |
 | secret | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [Validators](#Validators)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company | [CompanyValidator](#CompanyValidator) |  no  |  |
 | store | [StoreValidator](#StoreValidator) |  no  |  |
 | inventory | [InventoryValidator](#InventoryValidator) |  no  |  |
 | order | [OrderValidator](#OrderValidator) |  no  |  |

---


 
 
 #### [CompanyValidator](#CompanyValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [JsonSchema](#JsonSchema) |  no  |  |
 | browserScript | String |  no  |  |

---


 
 
 #### [JsonSchema](#JsonSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | key | String |  no  |  |
 | type | String |  no  |  |
 | tooltip | String |  no  |  |

---


 
 
 #### [StoreValidator](#StoreValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)] |  no  |  |
 | browserScript | String |  no  |  |

---


 
 
 #### [InventoryValidator](#InventoryValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)] |  no  |  |
 | browserScript | String |  no  |  |

---


 
 
 #### [OrderValidator](#OrderValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)] |  no  |  |
 | browserScript | String |  no  |  |

---


 
 
 #### [IntegrationMeta](#IntegrationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPublic | Bool |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [Integration](#Integration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | validators | [Validators](#Validators) |  no  |  |
 | description | String |  no  |  |
 | descriptionHtml | String |  no  |  |
 | constants | [String: Any] |  no  |  |
 | companies | [[String: Any]] |  no  |  |
 | support | [String] |  no  |  |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | meta | [IntegrationMeta](#IntegrationMeta) |  no  |  |
 | icon | String |  no  |  |
 | owner | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | token | String |  no  |  |
 | secret | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [IntegrationConfigResponse](#IntegrationConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [IntegrationLevel](#IntegrationLevel) |  no  |  |

---


 
 
 #### [IntegrationLevel](#IntegrationLevel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opted | Bool |  no  |  |
 | permissions | [[String: Any]] |  no  |  |
 | lastPatch | [[String: Any]] |  no  |  |
 | id | String |  no  |  |
 | integration | String |  no  |  |
 | level | String |  no  |  |
 | uid | Int |  no  |  |
 | meta | [[String: Any]] |  no  |  |
 | token | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |
 | data | [String: Any] |  no  |  |

---


 
 
 #### [OptedStoreIntegration](#OptedStoreIntegration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otherOpted | Bool |  no  |  |
 | otherIntegration | [IntegrationOptIn](#IntegrationOptIn) |  no  |  |
 | otherEntity | [OtherEntity](#OtherEntity) |  no  |  |

---


 
 
 #### [OtherEntity](#OtherEntity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opted | Bool |  no  |  |
 | permissions | [String] |  no  |  |
 | lastPatch | [LastPatch](#LastPatch) |  no  |  |
 | id | String |  no  |  |
 | integration | String |  no  |  |
 | level | String |  no  |  |
 | uid | Int |  no  |  |
 | data | [OtherEntityData](#OtherEntityData) |  no  |  |
 | meta | [[String: Any]] |  no  |  |
 | token | String |  no  |  |
 | createdAt | String |  no  |  |
 | updatedAt | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [LastPatch](#LastPatch)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | op | String |  no  |  |
 | path | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [OtherEntityData](#OtherEntityData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleIdentifier | String |  no  |  |

---


 
 
 #### [App](#App)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | String |  no  | Current company id |
 | channelType | String |  no  |  |
 | auth | [ApplicationAuth](#ApplicationAuth) |  no  |  |
 | name | String |  no  | User friendly name for application |
 | desc | String |  no  | Basic description of application |

---


 
 
 #### [AppInventory](#AppInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [InventoryBrandRule](#InventoryBrandRule) |  no  |  |
 | store | [InventoryStoreRule](#InventoryStoreRule) |  no  |  |
 | image | [String] |  no  |  |
 | franchiseEnabled | Bool |  no  |  |
 | outOfStock | Bool |  no  |  |
 | payment | [InventoryPaymentConfig](#InventoryPaymentConfig) |  no  |  |
 | articleAssignment | [InventoryArticleAssignment](#InventoryArticleAssignment) |  no  |  |

---


 
 
 #### [AppDomain](#AppDomain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |

---


 
 
 #### [CompaniesResponse](#CompaniesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [AppInventoryCompanies](#AppInventoryCompanies) |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [AppInventoryCompanies](#AppInventoryCompanies)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | companyType | String |  no  |  |

---


 
 
 #### [StoresResponse](#StoresResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [AppInventoryStores](#AppInventoryStores) |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [AppInventoryStores](#AppInventoryStores)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | displayName | String |  no  |  |
 | storeType | String |  no  |  |
 | storeCode | String |  no  |  |
 | companyId | Int |  no  |  |

---


 
 
 #### [FilterOrderingStoreRequest](#FilterOrderingStoreRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allStores | Bool |  no  |  |
 | deployedStores | [Int] |  no  |  |
 | q | String |  no  |  |

---


 
 
 #### [DeploymentMeta](#DeploymentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deployedStores | [Int] |  no  |  |
 | allStores | Bool |  no  |  |
 | enabled | Bool |  no  |  |
 | type | String |  no  |  |
 | id | String |  no  |  |
 | app | String |  no  |  |
 | v | Int |  no  |  |

---


 
 
 #### [OrderingStoreConfig](#OrderingStoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deploymentMeta | [DeploymentMeta](#DeploymentMeta) |  no  |  |

---


 
 
 #### [OtherSellerCompany](#OtherSellerCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [OtherSellerApplication](#OtherSellerApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | id | String |  no  |  |
 | domain | String |  no  |  |
 | company | [OtherSellerCompany](#OtherSellerCompany) |  no  |  |
 | optType | String |  no  |  |

---


 
 
 #### [OtherSellerApplications](#OtherSellerApplications)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OtherSellerApplication](#OtherSellerApplication)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [OptedApplicationResponse](#OptedApplicationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | id | String |  no  |  |
 | domain | String |  no  |  |
 | company | [OptedCompany](#OptedCompany) |  no  |  |
 | optedInventory | [OptedInventory](#OptedInventory) |  no  |  |
 | optOutInventory | [OptOutInventory](#OptOutInventory) |  no  |  |

---


 
 
 #### [OptedCompany](#OptedCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [OptedInventory](#OptedInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | optType | [OptType](#OptType) |  no  |  |
 | items | [String: Any] |  no  |  |

---


 
 
 #### [OptType](#OptType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | display | String |  no  |  |

---


 
 
 #### [OptedStore](#OptedStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | storeCode | String |  no  |  |
 | id | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | uid | Int |  no  |  |
 | address | [OptedStoreAddress](#OptedStoreAddress) |  no  |  |
 | displayName | String |  no  |  |
 | storeType | String |  no  |  |
 | companyId | Int |  no  |  |

---


 
 
 #### [OptOutInventory](#OptOutInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [Int]? |  yes  |  |
 | company | [Int]? |  yes  |  |

---


 
 
 #### [TokenResponse](#TokenResponse)

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




 
 
 #### [Rule](#Rule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | Double |  no  |  |
 | max | Double |  no  |  |
 | discountQty | Double |  no  |  |
 | value | Double |  no  |  |
 | min | Double |  no  |  |

---


 
 
 #### [BulkBundleRestriction](#BulkBundleRestriction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multiStoreAllowed | Bool? |  yes  |  |

---


 
 
 #### [UsesRemaining](#UsesRemaining)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | Int |  no  |  |
 | total | Int |  no  |  |
 | user | Int |  no  |  |

---


 
 
 #### [UsesRestriction](#UsesRestriction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | remaining | [UsesRemaining](#UsesRemaining) |  no  |  |
 | maximum | [UsesRemaining](#UsesRemaining) |  no  |  |

---


 
 
 #### [PaymentAllowValue](#PaymentAllowValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int |  no  |  |

---


 
 
 #### [PaymentModes](#PaymentModes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | types | [String] |  no  |  |
 | networks | [String] |  no  |  |
 | codes | [String] |  no  |  |
 | uses | [PaymentAllowValue](#PaymentAllowValue) |  no  |  |

---


 
 
 #### [PaymentCodes](#PaymentCodes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pl | [PaymentModes](#PaymentModes) |  no  |  |
 | ps | [PaymentModes](#PaymentModes) |  no  |  |
 | upi | [PaymentModes](#PaymentModes) |  no  |  |
 | wl | [PaymentModes](#PaymentModes) |  no  |  |
 | qr | [PaymentModes](#PaymentModes) |  no  |  |
 | card | [PaymentModes](#PaymentModes) |  no  |  |
 | nb | [PaymentModes](#PaymentModes) |  no  |  |

---


 
 
 #### [PostOrder](#PostOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cancellationAllowed | Bool |  no  |  |
 | returnAllowed | Bool |  no  |  |

---


 
 
 #### [PriceRange](#PriceRange)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int |  no  |  |
 | max | Int |  no  |  |

---


 
 
 #### [Restrictions](#Restrictions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | couponAllowed | Bool |  no  |  |
 | bulkBundle | [BulkBundleRestriction](#BulkBundleRestriction) |  no  |  |
 | uses | [UsesRestriction](#UsesRestriction) |  no  |  |
 | platforms | [String] |  no  |  |
 | payments | [PaymentCodes](#PaymentCodes) |  no  |  |
 | postOrder | [PostOrder](#PostOrder) |  no  |  |
 | orderingStores | [Int] |  no  |  |
 | priceRange | [PriceRange](#PriceRange) |  no  |  |

---


 
 
 #### [Ownership](#Ownership)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payableCategory | String? |  yes  |  |
 | payableBy | String? |  yes  |  |

---


 
 
 #### [State](#State)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isArchived | Bool |  no  |  |
 | isPublic | Bool |  no  |  |
 | isDisplay | Bool |  no  |  |

---


 
 
 #### [CouponAction](#CouponAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | txnMode | String |  no  |  |
 | actionDate | String |  no  |  |

---


 
 
 #### [Validation](#Validation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userRegisteredAfter | String |  no  |  |
 | anonymous | Bool |  no  |  |
 | appId | [String] |  no  |  |

---


 
 
 #### [RuleDefinition](#RuleDefinition)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | valueType | String? |  yes  |  |
 | autoApply | Bool |  no  |  |
 | scope | [String] |  no  |  |
 | currencyCode | String |  no  |  |
 | calculateOn | String? |  yes  |  |
 | isExact | Bool |  no  |  |
 | applicableOn | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Identifier](#Identifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categoryId | [Int] |  no  |  |
 | collectionId | [String] |  no  |  |
 | companyId | [Int] |  no  |  |
 | itemId | [Int] |  no  |  |
 | brandId | [Int] |  no  |  |
 | userId | [String] |  no  |  |
 | articleId | [String] |  no  |  |
 | storeId | [Int] |  no  |  |

---


 
 
 #### [CouponSchedule](#CouponSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | nextSchedule | [[String: Any]] |  no  |  |
 | start | String |  no  |  |
 | duration | Int |  no  |  |
 | end | String |  no  |  |
 | cron | String |  no  |  |

---


 
 
 #### [DisplayMetaDict](#DisplayMetaDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | subtitle | String |  no  |  |

---


 
 
 #### [DisplayMeta](#DisplayMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | auto | [DisplayMetaDict](#DisplayMetaDict) |  no  |  |
 | title | String |  no  |  |
 | remove | [DisplayMetaDict](#DisplayMetaDict) |  no  |  |
 | apply | [DisplayMetaDict](#DisplayMetaDict) |  no  |  |
 | description | String |  no  |  |
 | subtitle | String |  no  |  |

---


 
 
 #### [CouponAuthor](#CouponAuthor)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String |  no  |  |
 | modifiedBy | String |  no  |  |

---


 
 
 #### [Validity](#Validity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int |  no  |  |

---


 
 
 #### [CouponDateMeta](#CouponDateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

---


 
 
 #### [CouponAdd](#CouponAdd)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rule | [[Rule](#Rule)]? |  yes  |  |
 | restrictions | [Restrictions](#Restrictions) |  no  |  |
 | ownership | [Ownership](#Ownership)? |  yes  |  |
 | state | [State](#State) |  no  |  |
 | action | [CouponAction](#CouponAction) |  no  |  |
 | validation | [Validation](#Validation) |  no  |  |
 | ruleDefinition | [RuleDefinition](#RuleDefinition)? |  yes  |  |
 | identifiers | [Identifier](#Identifier)? |  yes  |  |
 | schedule | [CouponSchedule](#CouponSchedule) |  no  |  |
 | typeSlug | String? |  yes  |  |
 | displayMeta | [DisplayMeta](#DisplayMeta)? |  yes  |  |
 | tags | [String] |  no  |  |
 | author | [CouponAuthor](#CouponAuthor) |  no  |  |
 | validity | [Validity](#Validity)? |  yes  |  |
 | code | String? |  yes  |  |
 | dateMeta | [CouponDateMeta](#CouponDateMeta) |  no  |  |

---


 
 
 #### [CouponsResponse](#CouponsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [CouponAdd](#CouponAdd) |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [SuccessMessage](#SuccessMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [OperationErrorResponse](#OperationErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [CouponUpdate](#CouponUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rule | [[Rule](#Rule)]? |  yes  |  |
 | restrictions | [Restrictions](#Restrictions) |  no  |  |
 | ownership | [Ownership](#Ownership)? |  yes  |  |
 | state | [State](#State) |  no  |  |
 | action | [CouponAction](#CouponAction) |  no  |  |
 | validation | [Validation](#Validation) |  no  |  |
 | ruleDefinition | [RuleDefinition](#RuleDefinition)? |  yes  |  |
 | identifiers | [Identifier](#Identifier)? |  yes  |  |
 | schedule | [CouponSchedule](#CouponSchedule) |  no  |  |
 | typeSlug | String? |  yes  |  |
 | displayMeta | [DisplayMeta](#DisplayMeta)? |  yes  |  |
 | tags | [String] |  no  |  |
 | author | [CouponAuthor](#CouponAuthor) |  no  |  |
 | validity | [Validity](#Validity)? |  yes  |  |
 | code | String? |  yes  |  |
 | dateMeta | [CouponDateMeta](#CouponDateMeta) |  no  |  |

---


 
 
 #### [CouponPartialUpdate](#CouponPartialUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | schedule | [CouponSchedule](#CouponSchedule) |  no  |  |
 | archive | Bool |  no  | Send true to unpublish coupon |

---




 
 
 #### [AppUser](#AppUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | active | Bool |  no  |  |
 | applicationId | String |  no  |  |
 | blockReason | String |  no  |  |
 | updatedAt | String |  no  |  |
 | updatedBy | String |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [E](#E)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | [String: Any] |  no  |  |
 | exception | String |  no  |  |
 | info | String |  no  |  |
 | message | String |  no  |  |
 | requestId | String |  no  |  |
 | stackTrace | String |  no  |  |
 | status | Int |  no  |  |

---


 
 
 #### [Giveaway](#Giveaway)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | schedule | [Schedule](#Schedule) |  no  |  |
 | active | Bool |  no  |  |
 | applicationId | String |  no  |  |
 | audience | [RewardsAudience](#RewardsAudience) |  no  |  |
 | bannerImage | [Asset](#Asset) |  no  |  |
 | createdAt | String |  no  |  |
 | description | String |  no  |  |
 | name | String |  no  |  |
 | rule | [RewardsRule](#RewardsRule) |  no  |  |
 | title | String |  no  |  |
 | updatedAt | String |  no  |  |

---


 
 
 #### [GiveawayResponse](#GiveawayResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Giveaway](#Giveaway)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [HistoryPretty](#HistoryPretty)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | applicationId | String |  no  |  |
 | claimed | Bool |  no  |  |
 | createdAt | String |  no  |  |
 | expiresOn | String |  no  |  |
 | points | Double |  no  |  |
 | remainingPoints | Double |  no  |  |
 | text1 | String |  no  |  |
 | text2 | String |  no  |  |
 | text3 | String |  no  |  |
 | txnName | String |  no  |  |
 | updatedAt | String |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [HistoryRes](#HistoryRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[HistoryPretty](#HistoryPretty)] |  no  |  |
 | page | [Page](#Page) |  no  |  |
 | points | Double |  no  |  |

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


 
 
 #### [Points](#Points)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | available | Double |  no  |  |

---


 
 
 #### [Referral](#Referral)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |

---


 
 
 #### [RewardUser](#RewardUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | active | Bool |  no  |  |
 | createdAt | String |  no  |  |
 | referral | [Referral](#Referral) |  no  |  |
 | uid | Int |  no  |  |
 | updatedAt | String |  no  |  |
 | userBlockReason | String |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [RewardsAudience](#RewardsAudience)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headerUserId | String |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [RewardsRule](#RewardsRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double |  no  |  |

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


 
 
 #### [UserRes](#UserRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | points | [Points](#Points) |  no  |  |
 | user | [RewardUser](#RewardUser) |  no  |  |

---




 
 
 #### [StatGroup](#StatGroup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | url | String |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [StatsGroups](#StatsGroups)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | groups | [[StatGroup](#StatGroup)] |  no  |  |

---


 
 
 #### [StatsGroupComponent](#StatsGroupComponent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | url | String |  no  |  |
 | title | String |  no  |  |
 | type | String |  no  |  |
 | filters | [String: Any] |  no  |  |

---


 
 
 #### [StatsGroupComponents](#StatsGroupComponents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | components | [[StatsGroupComponent](#StatsGroupComponent)] |  no  |  |

---


 
 
 #### [StatsRes](#StatsRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  |  |
 | title | String |  no  |  |
 | type | String |  no  |  |
 | data | [String: Any] |  no  |  |

---


 
 
 #### [ReceivedAt](#ReceivedAt)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |

---


 
 
 #### [AbandonCartsDetail](#AbandonCartsDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | propertiesCartId | String |  no  |  |
 | contextTraitsFirstName | String |  no  |  |
 | contextTraitsLastName | String |  no  |  |
 | contextTraitsPhoneNumber | String |  no  |  |
 | contextTraitsEmail | String |  no  |  |
 | contextAppApplicationId | String |  no  |  |
 | propertiesBreakupValuesRawTotal | String |  no  |  |
 | receivedAt | [ReceivedAt](#ReceivedAt) |  no  |  |

---


 
 
 #### [AbandonCartsList](#AbandonCartsList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AbandonCartsDetail](#AbandonCartsDetail)] |  no  |  |
 | cartTotal | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [AbandonCartDetail](#AbandonCartDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | userId | String |  no  |  |
 | cartValue | String |  no  |  |
 | articles | [[String: Any]] |  no  |  |
 | breakup | [String: Any] |  no  |  |
 | address | [String: Any] |  no  |  |

---


 
 
 #### [ExportJobReq](#ExportJobReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceName | String |  no  |  |
 | startTime | String |  no  |  |
 | endTime | String |  no  |  |
 | eventType | String |  no  |  |
 | traceId | String |  no  |  |

---


 
 
 #### [ExportJobRes](#ExportJobRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | jobId | String |  no  |  |

---


 
 
 #### [ExportJobStatusRes](#ExportJobStatusRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | jobId | String |  no  |  |
 | downloadUrl | String |  no  |  |

---


 
 
 #### [GetLogsListReq](#GetLogsListReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceName | String |  no  |  |
 | startDate | String |  no  |  |
 | companyId | String |  no  |  |
 | endDate | String |  no  |  |

---


 
 
 #### [MkpLogsResp](#MkpLogsResp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startTimeIso | String |  no  |  |
 | endTimeIso | String |  no  |  |
 | eventType | String |  no  |  |
 | traceId | String |  no  |  |
 | count | String |  no  |  |
 | status | String |  no  |  |

---


 
 
 #### [GetLogsListRes](#GetLogsListRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[MkpLogsResp](#MkpLogsResp)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [SearchLogReq](#SearchLogReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceName | String |  no  |  |
 | startDate | String |  no  |  |
 | companyId | String |  no  |  |
 | endDate | String |  no  |  |
 | identifier | String |  no  |  |
 | identifierValue | String |  no  |  |

---


 
 
 #### [LogInfo](#LogInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | status | String |  no  |  |
 | eventType | String |  no  |  |
 | marketplaceName | String |  no  |  |
 | event | String |  no  |  |
 | traceId | String |  no  |  |
 | companyId | Double |  no  |  |
 | brandId | Double |  no  |  |
 | storeCode | String |  no  |  |
 | storeId | Double |  no  |  |
 | itemId | Double |  no  |  |
 | articleId | String |  no  |  |
 | sellerIdentifier | String |  no  |  |

---


 
 
 #### [SearchLogRes](#SearchLogRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[LogInfo](#LogInfo)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---




 
 
 #### [ValidityObject](#ValidityObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [CreateUpdateDiscount](#CreateUpdateDiscount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | appIds | [String]? |  yes  |  |
 | jobType | String? |  yes  |  |
 | discountType | String? |  yes  |  |
 | discountLevel | String? |  yes  |  |
 | value | Int |  no  |  |
 | filePath | String |  no  |  |
 | brandIds | [Int] |  no  |  |
 | storeIds | [Int] |  no  |  |
 | validity | [ValidityObject](#ValidityObject)? |  yes  |  |

---


 
 
 #### [DiscountJob](#DiscountJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | appIds | [String] |  no  |  |
 | jobType | String |  no  |  |
 | discountType | String |  no  |  |
 | discountLevel | String |  no  |  |
 | value | Int |  no  |  |
 | filePath | String |  no  |  |
 | brandIds | [Int] |  no  |  |
 | storeIds | [Int] |  no  |  |
 | validity | [ValidityObject](#ValidityObject)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdBy | [UserDetails](#UserDetails)? |  yes  |  |
 | modifiedBy | [UserDetails](#UserDetails)? |  yes  |  |
 | meta | [String: Any] |  no  |  |

---


 
 
 #### [ListOrCalender](#ListOrCalender)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[DiscountJob](#DiscountJob)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [FileJobResponse](#FileJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String? |  yes  |  |
 | total | Int? |  yes  |  |
 | failed | Int? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | body | [String: Any] |  no  |  |
 | type | String? |  yes  |  |
 | fileType | String? |  yes  |  |

---


 
 
 #### [DownloadFileJob](#DownloadFileJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandIds | [Int] |  no  |  |
 | storeIds | [Int] |  no  |  |

---


 
 
 #### [CancelJobResponse](#CancelJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [UserDetails](#UserDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [BadRequestObject](#BadRequestObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---




 
 
 #### [AddProxyReq](#AddProxyReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attachedPath | String |  no  | Proxy path slug |
 | proxyUrl | String |  no  | Proxied url |

---


 
 
 #### [AddProxyResponse](#AddProxyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | attachedPath | String |  no  |  |
 | proxyUrl | String |  no  |  |
 | companyId | String |  no  |  |
 | applicationId | String |  no  |  |
 | extensionId | String |  no  |  |
 | createdAt | String |  no  |  |
 | modifiedAt | String |  no  |  |

---


 
 
 #### [ApiError](#ApiError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | message | String |  no  |  |
 | meta | [String: Any] |  no  |  |

---


 
 
 #### [RemoveProxyResponse](#RemoveProxyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | data | [String: Any] |  no  |  |

---




 
 
 #### [EventConfig](#EventConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | eventName | String |  no  |  |
 | eventType | String |  no  |  |
 | version | String |  no  |  |
 | displayName | String |  no  |  |
 | description | String |  no  |  |
 | createdOn | String |  no  |  |

---


 
 
 #### [EventConfigList](#EventConfigList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EventConfig](#EventConfig)] |  no  |  |

---


 
 
 #### [SubscriberConfigList](#SubscriberConfigList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscribers | [[SubscriberConfig](#SubscriberConfig)] |  no  |  |

---


 
 
 #### [EventProcessedStatus](#EventProcessedStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | subscriberId | String |  no  |  |
 | attempt | Int |  no  |  |
 | responseCode | String |  no  |  |
 | responseMessage | String |  no  |  |
 | createdOn | String |  no  |  |
 | processedOn | String |  no  |  |
 | status | Bool |  no  |  |

---


 
 
 #### [EventPayload](#EventPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | eventTraceId | String |  no  |  |
 | eventCompanyId | Int |  no  |  |
 | eventApplicationId | String |  no  |  |
 | eventExtensionId | String |  no  |  |
 | eventName | String |  no  |  |
 | status | Bool |  no  |  |

---


 
 
 #### [SubscriberConfig](#SubscriberConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | webhookUrl | String |  no  |  |
 | companyId | Int |  no  |  |
 | applicationId | String |  no  |  |
 | extensionId | String |  no  |  |
 | status | String |  no  |  |
 | authMeta | [AuthMeta](#AuthMeta) |  no  |  |
 | createdOn | String |  no  |  |
 | updatedOn | String |  no  |  |
 | subscriberEventMapping | [SubscriberEvent](#SubscriberEvent) |  no  |  |

---


 
 
 #### [SubscriberEvent](#SubscriberEvent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | subscriberId | Int |  no  |  |
 | eventId | Int |  no  |  |
 | createdDate | String |  no  |  |

---


 
 
 #### [AuthMeta](#AuthMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | username | String |  no  |  |
 | password | String |  no  |  |

---



