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
----

### Classes and Methods


* [Common](#Common)
  * Methods
    * [getLocations](#getlocations)
    

* [Lead](#Lead)
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
    

* [Feedback](#Feedback)
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
    

* [Theme](#Theme)
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
    

* [User](#User)
  * Methods
    * [getCustomers](#getcustomers)
    * [searchUsers](#searchusers)
    * [getPlatformConfig](#getplatformconfig)
    * [updatePlatformConfig](#updateplatformconfig)
    

* [Content](#Content)
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
    

* [Assignment](#Assignment)
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
    

* [Billing](#Billing)
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
    

* [Communication](#Communication)
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
    

* [Payment](#Payment)
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
    

* [Order](#Order)
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
    

* [Catalog](#Catalog)
  * Methods
    * [updateSearchKeywords](#updatesearchkeywords)
    * [deleteSearchKeywords](#deletesearchkeywords)
    * [getSearchKeywords](#getsearchkeywords)
    * [getAllSearchKeyword](#getallsearchkeyword)
    * [createCustomKeyword](#createcustomkeyword)
    * [updateAutocompleteKeyword](#updateautocompletekeyword)
    * [deleteAutocompleteKeyword](#deleteautocompletekeyword)
    * [getAutocompleteKeywordDetail](#getautocompletekeyworddetail)
    * [getAutocompleteConfig](#getautocompleteconfig)
    * [createCustomAutocompleteRule](#createcustomautocompleterule)
    * [getProductBundle](#getproductbundle)
    * [createProductBundle](#createproductbundle)
    * [updateProductBundle](#updateproductbundle)
    * [getProductBundleDetail](#getproductbundledetail)
    * [getSizeGuides](#getsizeguides)
    * [createSizeGuide](#createsizeguide)
    * [updateSizeGuide](#updatesizeguide)
    * [getSizeGuide](#getsizeguide)
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
    * [listCategories](#listcategories)
    * [createCategories](#createcategories)
    * [updateCategory](#updatecategory)
    * [getCategoryData](#getcategorydata)
    * [getProducts](#getproducts)
    * [createProduct](#createproduct)
    * [editProduct](#editproduct)
    * [deleteProduct](#deleteproduct)
    * [getProduct](#getproduct)
    * [getProductValidation](#getproductvalidation)
    * [getProductSize](#getproductsize)
    * [getProductBulkUploadHistory](#getproductbulkuploadhistory)
    * [updateProductAssetsInBulk](#updateproductassetsinbulk)
    * [deleteProductBulkJob](#deleteproductbulkjob)
    * [createProductsInBulk](#createproductsinbulk)
    * [getCompanyTags](#getcompanytags)
    * [getProductAssetsInBulk](#getproductassetsinbulk)
    * [createProductAssetsInBulk](#createproductassetsinbulk)
    * [deleteSize](#deletesize)
    * [getInventory](#getinventory)
    * [addInventory](#addinventory)
    * [deleteInventory](#deleteinventory)
    * [getInventoryBulkUploadHistory](#getinventorybulkuploadhistory)
    * [createBulkInventoryJob](#createbulkinventoryjob)
    * [deleteBulkInventoryJob](#deletebulkinventoryjob)
    * [createBulkInventory](#createbulkinventory)
    * [getInventoryExport](#getinventoryexport)
    * [createInventoryExportJob](#createinventoryexportjob)
    * [exportInventoryConfig](#exportinventoryconfig)
    * [getAllHsnCodes](#getallhsncodes)
    * [createHsnCode](#createhsncode)
    * [updateHsnCode](#updatehsncode)
    * [getHsnCode](#gethsncode)
    * [bulkHsnCode](#bulkhsncode)
    * [getApplicationBrands](#getapplicationbrands)
    * [getDepartments](#getdepartments)
    * [getCategories](#getcategories)
    * [getAppicationProducts](#getappicationproducts)
    * [getProductDetailBySlug](#getproductdetailbyslug)
    

* [CompanyProfile](#CompanyProfile)
  * Methods
    * [cbsOnboardGet](#cbsonboardget)
    * [updateCompany](#updatecompany)
    * [getCompanyMetrics](#getcompanymetrics)
    * [getBrand](#getbrand)
    * [editBrand](#editbrand)
    * [createBrand](#createbrand)
    * [getBrands](#getbrands)
    * [createCompanyBrandMapping](#createcompanybrandmapping)
    * [getLocations](#getlocations)
    * [createLocation](#createlocation)
    * [getLocationDetail](#getlocationdetail)
    * [updateLocation](#updatelocation)
    * [createLocationBulk](#createlocationbulk)
    

* [FileStorage](#FileStorage)
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
    

* [Share](#Share)
  * Methods
    * [createShortLink](#createshortlink)
    * [getShortLinks](#getshortlinks)
    * [getShortLinkByHash](#getshortlinkbyhash)
    * [updateShortLinkById](#updateshortlinkbyid)
    

* [Inventory](#Inventory)
  * Methods
    * [getJobsByCompany](#getjobsbycompany)
    * [updateJob](#updatejob)
    * [createJob](#createjob)
    * [getJobByCompanyAndIntegration](#getjobbycompanyandintegration)
    * [getJobConfigDefaults](#getjobconfigdefaults)
    * [getJobByCode](#getjobbycode)
    * [getJobCodesByCompanyAndIntegration](#getjobcodesbycompanyandintegration)
    

* [Configuration](#Configuration)
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
    

* [Cart](#Cart)
  * Methods
    * [getCoupons](#getcoupons)
    * [createCoupon](#createcoupon)
    * [getCouponById](#getcouponbyid)
    * [updateCoupon](#updatecoupon)
    * [updateCouponPartially](#updatecouponpartially)
    

* [Rewards](#Rewards)
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
    

* [Analytics](#Analytics)
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
    

* [Discount](#Discount)
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
    

* [Partner](#Partner)
  * Methods
    * [addProxyPath](#addproxypath)
    * [removeProxyPath](#removeproxypath)
    

* [Webhook](#Webhook)
  * Methods
    * [getSubscribersByCompanyAndEventId](#getsubscribersbycompanyandeventid)
    * [registerSubscriberToEvent](#registersubscribertoevent)
    * [updateSubscriberConfig](#updatesubscriberconfig)
    


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

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| locationType | String? | Provide location type to query on |   
| id | String? | Field is optional when location_type is country. If querying for state, provide id of country. If querying for city, provide id of state. |  



*Success Response:*



Success


Schema: `Locations`






---



---


## Lead


#### getTickets
Gets the list of company level tickets and/or ticket filters depending on query params

```swift
lead.getTickets(companyId: companyId, items: items, filters: filters, q: q, status: status, priority: priority, category: category, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID for which the data will be returned |   
| items | Bool? | Decides that the reponse will contain the list of tickets |   
| filters | Bool? | Decides that the reponse will contain the ticket filters |   
| q | String? | Search through ticket titles and description |   
| status | String? | Filter tickets on status |   
| priority | String? | Filter tickets on priority |   
| category | String? | Filter tickets on category |   
| pageNo | Int? | The page number to navigate through the given set of results. |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

Gets the list of company level tickets and/or ticket filters

*Success Response:*



Success


Schema: `TicketList`






---


#### createTicket
Creates a company level ticket

```swift
lead.createTicket(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID for which the data will be returned |  

Creates a company level ticket

*Success Response:*



Success


Schema: `Ticket`






---


#### getTickets
Gets the list of Application level Tickets and/or ticket filters depending on query params

```swift
lead.getTickets(companyId: companyId, applicationId: applicationId, items: items, filters: filters, q: q, status: status, priority: priority, category: category) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for which the data will be returned |   
| items | Bool? | Decides that the reponse will contain the list of tickets |   
| filters | Bool? | Decides that the reponse will contain the ticket filters |   
| q | String? | Search through ticket titles and description |   
| status | String? | Filter tickets on status |   
| priority | String? | Filter tickets on priority |   
| category | String? | Filter tickets on category |  

Gets the list of Application level Tickets and/or ticket filters

*Success Response:*



Success


Schema: `TicketList`






---


#### getTicket
Retreives ticket details of a company level ticket with ticket ID

```swift
lead.getTicket(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID for which the data will be returned |   
| id | String? | Tiket ID of the ticket to be fetched |  

Retreives ticket details of a company level ticket

*Success Response:*



Success


Schema: `Ticket`






---


#### editTicket
Edits ticket details of a company level ticket

```swift
lead.editTicket(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID for ticket |   
| id | String? | Ticket ID of ticket to be edited |  

Edits ticket details of a company level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes

*Success Response:*



Success


Schema: `Ticket`






---


#### getTicket
Retreives ticket details of a application level ticket

```swift
lead.getTicket(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for which the data will be returned |   
| id | String? | Tiket ID of the ticket to be fetched |  

Retreives ticket details of a application level ticket with ticket ID

*Success Response:*



Success


Schema: `Ticket`






---


#### editTicket
Edits ticket details of a application level ticket

```swift
lead.editTicket(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for ticket |   
| id | String? | Ticket ID of ticket to be edited |  

Edits ticket details of a application level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes

*Success Response:*



Success


Schema: `Ticket`






---


#### createHistory
Create history for specific company level ticket

```swift
lead.createHistory(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID for ticket |   
| id | String? | Ticket ID for which history is created |  

Create history for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Success Response:*



Success


Schema: `TicketHistory`






---


#### getTicketHistory
Gets history list for specific company level ticket

```swift
lead.getTicketHistory(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID for ticket |   
| id | String? | Ticket ID for which history is to be fetched |  

Gets history list for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Success Response:*



Success


Schema: `TicketHistoryList`






---


#### createHistory
Create history for specific application level ticket

```swift
lead.createHistory(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for ticket |   
| id | String? | Ticket ID for which history is created |  

Create history for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Success Response:*



Success


Schema: `TicketHistory`






---


#### getTicketHistory
Gets history list for specific application level ticket

```swift
lead.getTicketHistory(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of application |   
| applicationId | String? | Application ID for ticket |   
| id | String? | Ticket ID for which history is to be fetched |  

Gets history list for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Success Response:*



Success


Schema: `TicketHistoryList`






---


#### getCustomForm
Get specific custom form using it's slug

```swift
lead.getCustomForm(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for the form |   
| slug | String? | Slug of form whose response is getting submitted |  

Get specific custom form using it's slug, this is used to view the form.

*Success Response:*



Success


Schema: `CustomForm`






---


#### editCustomForm
Edit the given custom form

```swift
lead.editCustomForm(companyId: companyId, applicationId: applicationId, slug: slug, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for the form |   
| slug | String? | Slug of form whose response is getting submitted |  

Edit the given custom form field such as adding or deleting input, assignee, title, decription, notification and polling information.

*Success Response:*



Success


Schema: `CustomForm`






---


#### getCustomForms
Get list of custom form

```swift
lead.getCustomForms(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for the form |  

Get list of custom form for given application

*Success Response:*



Success


Schema: `CustomFormList`






---


#### createCustomForm
Creates a new custom form

```swift
lead.createCustomForm(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for the form |  

Creates a new custom form for given application

*Success Response:*



Success


Schema: `CustomForm`






---


#### getTokenForVideoRoom
Get Token to join a specific Video Room using it's unqiue name

```swift
lead.getTokenForVideoRoom(companyId: companyId, uniqueName: uniqueName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id for video room |   
| uniqueName | String? | Unique name of video room |  

Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.

*Success Response:*



Success


Schema: `GetTokenForVideoRoomResponse`






---


#### getTokenForVideoRoom
Get Token to join a specific Video Room using it's unqiue name

```swift
lead.getTokenForVideoRoom(companyId: companyId, applicationId: applicationId, uniqueName: uniqueName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for video room |   
| uniqueName | String? | Unique name of video room |  

Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.

*Success Response:*



Success


Schema: `GetTokenForVideoRoomResponse`






---


#### getVideoParticipants
Get participants of a specific Video Room using it's unique name

```swift
lead.getVideoParticipants(companyId: companyId, uniqueName: uniqueName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id for video room |   
| uniqueName | String? | Unique name of Video Room |  

Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.

*Success Response:*



Success


Schema: `GetParticipantsInsideVideoRoomResponse`






---


#### getVideoParticipants
Get participants of a specific Video Room using it's unique name

```swift
lead.getVideoParticipants(companyId: companyId, applicationId: applicationId, uniqueName: uniqueName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for video room |   
| uniqueName | String? | Unique name of Video Room |  

Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.

*Success Response:*



Success


Schema: `GetParticipantsInsideVideoRoomResponse`






---


#### openVideoRoom
Open a video room.

```swift
lead.openVideoRoom(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for video room |  

Open a video room.

*Success Response:*



Success


Schema: `CreateVideoRoomResponse`






---


#### closeVideoRoom
Close the video room and force all participants to leave.

```swift
lead.closeVideoRoom(companyId: companyId, applicationId: applicationId, uniqueName: uniqueName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |   
| applicationId | String? | Application ID for video room |   
| uniqueName | String? | Unique name of Video Room |  

Close the video room and force all participants to leave.

*Success Response:*



Success


Schema: `CloseVideoRoomResponse`






---



---


## Feedback


#### getAttributes
Get list of attribute data

```swift
feedback.getAttributes(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| pageNo | Int? | pagination page no |   
| pageSize | Int? | pagination page size |  

Provides a list of all attribute data.

*Success Response:*



ok


Schema: `FeedbackAttributes`





Bad request


Schema: `FeedbackError`






---


#### getCustomerReviews
Get list of customer reviews [admin]

```swift
feedback.getCustomerReviews(companyId: companyId, applicationId: applicationId, id: id, entityId: entityId, entityType: entityType, userId: userId, media: media, rating: rating, attributeRating: attributeRating, facets: facets, sort: sort, next: next, start: start, limit: limit, count: count, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| id | String? | review id |   
| entityId | String? | entity id |   
| entityType | String? | entity type |   
| userId | String? | user id |   
| media | String? | media type e.g. image | video | video_file | video_link |   
| rating | [Double]? | rating filter, 1-5 |   
| attributeRating | [String]? | attribute rating filter with ma,e of attribute |   
| facets | Bool? | facets (true|false) |   
| sort | String? | sort by : default | top | recent |   
| next | String? | pagination next |   
| start | String? | pagination start |   
| limit | String? | pagination limit |   
| count | String? | pagination count |   
| pageId | String? | pagination page id |   
| pageSize | Int? | pagination page size |  

The endpoint provides a list of customer reviews based on entity and provided filters

*Success Response:*



Success


Schema: `GetReviewResponse`





Bad Request


Schema: `FeedbackError`






---


#### updateApprove
update approve details

```swift
feedback.updateApprove(companyId: companyId, applicationId: applicationId, reviewId: reviewId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| reviewId | String? | review id |  

The is used to update approve details like status and description text

*Success Response:*



ok


Schema: `UpdateResponse`





Bad request


Schema: `FeedbackError`






---


#### getHistory
get history details

```swift
feedback.getHistory(companyId: companyId, applicationId: applicationId, reviewId: reviewId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| reviewId | String? | review id |  

The is used to get the history details like status and description text

*Success Response:*



ok


Schema: `[ActivityDump]`





Bad request


Schema: `FeedbackError`






---


#### getApplicationTemplates
Get list of templates

```swift
feedback.getApplicationTemplates(companyId: companyId, applicationId: applicationId, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| pageId | String? | pagination page id |   
| pageSize | Int? | pagination page size |  

Get all templates of application

*Success Response:*



Success


Schema: `TemplateGetResponse`





Bad Request


Schema: `FeedbackError`






---


#### createTemplate
Create a new template

```swift
feedback.createTemplate(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |  

Create a new template for review with following data:
- Enable media, rating and review
- Rating - active/inactive/selected rate choices, attributes, text on rate, comment for each rate, type
- Review - header, title, description, image and video meta, enable votes

*Success Response:*



Success


Schema: `InsertResponse`





Bad Request


Schema: `FeedbackError`






---


#### getTemplateById
Get a template by ID

```swift
feedback.getTemplateById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| id | String? | template id |  

Get the template for product or l3 type by ID

*Success Response:*



Success


Schema: `Template`





Bad Request


Schema: `FeedbackError`






---


#### updateTemplate
Update a template's status

```swift
feedback.updateTemplate(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| id | String? | template id |  

Update existing template status, active/archive

*Success Response:*



Success


Schema: `UpdateResponse`





Bad Request


Schema: `FeedbackError`






---


#### updateTemplateStatus
Update a template's status

```swift
feedback.updateTemplateStatus(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| id | String? | template id |  

Update existing template status, active/archive

*Success Response:*



Success


Schema: `UpdateResponse`





Bad Request


Schema: `FeedbackError`






---



---


## Theme


#### getAllPages
Get all pages of a theme

```swift
theme.getAllPages(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID |   
| applicationId | String? | Application ID |   
| themeId | String? | ID of the theme to be retrieved |  

Use this API to retrieve all the available pages of a theme by its ID.

*Success Response:*



Success. Returns an array all the pages of the theme. Refer `AllAvailablePageSchema` for more details.


Schema: `AllAvailablePageSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegInternalServerError`






---


#### createPage
Create a page 

```swift
theme.createPage(companyId: companyId, applicationId: applicationId, themeId: themeId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID |   
| applicationId | String? | Application ID |   
| themeId | String? | ID of the theme |  

Use this API to create a page for a theme by its ID.

*Success Response:*



Success. Returns the page of the theme. Refer `AvailablePageSchema` for more details.


Schema: `AvailablePageSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegInternalServerError`






---


#### updateMultiplePages
Update multiple pages of a theme

```swift
theme.updateMultiplePages(companyId: companyId, applicationId: applicationId, themeId: themeId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID |   
| applicationId | String? | Application ID |   
| themeId | String? | ID of the theme to be retrieved |  

Use this API to update multiple pages of a theme by its ID.

*Success Response:*



Success. Returns an array all the pages of the theme. Refer `AllAvailablePageSchema` for more details.


Schema: `AllAvailablePageSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegInternalServerError`






---


#### getPage
Get page of a theme

```swift
theme.getPage(companyId: companyId, applicationId: applicationId, themeId: themeId, pageValue: pageValue) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID |   
| applicationId | String? | Application ID |   
| themeId | String? | ID of the theme to be retrieved |   
| pageValue | String? | Value of the page to be retrieved |  

Use this API to retrieve a page of a theme.

*Success Response:*



Success. Returns an object of the page.  Refer `AvailablePageSchema` for more details.


Schema: `AvailablePageSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegInternalServerError`






---


#### updatePage
Updates a page 

```swift
theme.updatePage(companyId: companyId, applicationId: applicationId, themeId: themeId, pageValue: pageValue, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID |   
| applicationId | String? | Application ID |   
| themeId | String? | ID of the theme |   
| pageValue | String? | Value of the page to be updated |  

Use this API to update a page for a theme by its ID.

*Success Response:*



Success. Returns a the page of the theme. Refer `AvailablePageSchema` for more details.


Schema: `AvailablePageSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegInternalServerError`






---


#### deletePage
Deletes a page 

```swift
theme.deletePage(companyId: companyId, applicationId: applicationId, themeId: themeId, pageValue: pageValue) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID |   
| applicationId | String? | Application ID |   
| themeId | String? | ID of the theme |   
| pageValue | String? | Value of the page to be updated |  

Use this API to delete a page for a theme by its ID and page_value.

*Success Response:*



Success. Returns a the page of the theme. Refer `AvailablePageSchema` for more details.


Schema: `AvailablePageSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegInternalServerError`






---


#### getThemeLibrary
Get a list of themes from the theme library

```swift
theme.getThemeLibrary(companyId: companyId, applicationId: applicationId, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10.  |   
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1. |  

Theme library is a personalized collection of themes that are chosen and added from the available themes. Use this API to fetch a list of themes from the library along with their configuration details. 

*Success Response:*



Success. Refer `ThemesListingResponseSchema` for more details.


Schema: `ThemesListingResponseSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### addToThemeLibrary
Add a theme to the theme library

```swift
theme.addToThemeLibrary(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Theme library is a personalized collection of themes that are chosen and added from the available themes. Use this API to choose a theme and add it to the theme library.

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### applyTheme
Apply a theme

```swift
theme.applyTheme(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Use this API to apply a theme to the website.

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### isUpgradable
Checks if theme is upgradable

```swift
theme.isUpgradable(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | Theme ID |  

There's always a possibility that new features get added to a theme. Use this API to check if the applied theme has an upgrade available.

*Success Response:*



Success. If the boolean value of `upgrade` returns **true**, the theme can be upgraded. Refer `UpgradableThemeSchema` for more details.


Schema: `UpgradableThemeSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### upgradeTheme
Upgrade a theme

```swift
theme.upgradeTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | ID allotted to the theme. |  

Use this API to upgrade the current theme to its latest version.

*Success Response:*



Success. Upgrades the theme and shares the details of the new version in the response. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### getPublicThemes
Get all public themes

```swift
theme.getPublicThemes(companyId: companyId, applicationId: applicationId, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10.  |   
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1.  |  

Use this API to get a list of free themes that you can apply to your website.

*Success Response:*



Success. Refer `ThemesListingResponseSchema` for more details.


Schema: `ThemesListingResponseSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### createTheme
Create a new theme

```swift
theme.createTheme(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Themes improve the look and appearance of a website. Use this API to create a theme.

*Success Response:*



Theme


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### getAppliedTheme
Get the applied theme

```swift
theme.getAppliedTheme(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Use this API to retrieve the theme that is currently applied to the website along with its details.

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### getFonts
Get all the supported fonts in a theme

```swift
theme.getFonts(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Font is a collection of characters with a similar design. Use this API to retrieve a list of website fonts.

*Success Response:*



Success. Refer `FontsSchema` for more details.


Schema: `FontsSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### getThemeById
Gets theme by id

```swift
theme.getThemeById(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | ID allotted to the theme. |  

Use this API to retrieve the details of a specific theme by using its ID.

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### updateTheme
Update a theme

```swift
theme.updateTheme(companyId: companyId, applicationId: applicationId, themeId: themeId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | ID allotted to the theme. |  

Use this API to edit an existing theme. You can customize the website font, sections, images, styles, and many more.

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### deleteTheme
Delete a theme

```swift
theme.deleteTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | ID allotted to the theme. |  

Use this API to delete a theme from the theme library.

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### getThemeForPreview
Get a theme preview

```swift
theme.getThemeForPreview(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | ID allotted to the theme. |  

A theme can be previewed before applying it. Use this API to retrieve the theme preview by using its ID.

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### publishTheme
Publish a theme

```swift
theme.publishTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | ID allotted to the theme. |  

Use this API to publish a theme that is either newly created or edited.

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### unpublishTheme
Unpublish a theme

```swift
theme.unpublishTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | ID allotted to the theme. |  

Use this API to remove an existing theme from the list of available themes.

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### archiveTheme
Archive a theme

```swift
theme.archiveTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | ID allotted to the theme. |  

Use this API to store an existing theme but not delete it so that it can be used in future if required. 

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---


#### unarchiveTheme
Unarchive a theme

```swift
theme.unarchiveTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| themeId | String? | ID allotted to the theme. |  

Use this API to restore an archived theme and bring it back for editing or publishing. 

*Success Response:*



Success. Refer `ThemesSchema` for more details.


Schema: `ThemesSchema`








Schema: `BlitzkriegApiError`








Schema: `BlitzkriegApiError`






---



---


## User


#### getCustomers
Get a list of customers

```swift
user.getCustomers(companyId: companyId, applicationId: applicationId, q: q, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| q | String? | The search query. Mobile number or email ID of a customer. |   
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10. |   
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1.  |  

Use this API to retrieve a list of customers who have registered in the application.

*Success Response:*



Success. Refer `CustomerListResponseSchema` for more details.


Schema: `CustomerListResponseSchema`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### searchUsers
Search an existing user.

```swift
user.searchUsers(companyId: companyId, applicationId: applicationId, q: q) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| q | String? | The search query. Mobile number or email ID of a customer. |  

Use this API to retrieve an existing user from a list.

*Success Response:*



Success. Returns first name, last name, emails, phone number and gender of the user. Refer `UserSearchResponseSchema` for more details.


Schema: `UserSearchResponseSchema`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### getPlatformConfig
Get platform configurations

```swift
user.getPlatformConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Use this API to get all the platform configurations such as mobile image, desktop image, social logins, and all other text.

*Success Response:*



Success. Returns a JSON object containing the all the platform configurations. Refer `PlatformSchema` for more details.


Schema: `PlatformSchema`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---


#### updatePlatformConfig
Update platform configurations

```swift
user.updatePlatformConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Use this API to edit the existing platform configurations such as mobile image, desktop image, social logins, and all other text.

*Success Response:*



Success. Returns a JSON object with the updated platform configurations. Refer `PlatformSchema` for more details.


Schema: `PlatformSchema`








Schema: `AuthenticationApiError`








Schema: `AuthenticationApiError`






---



---


## Content


#### getAnnouncementsList
Get a list of announcements

```swift
content.getAnnouncementsList(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10. |  

Announcements are useful to highlight a message or information on top of a webpage. Use this API to retrieve a list of announcements.	

*Success Response:*



Success. Refer `GetAnnouncementListSchema` for more details.


Schema: `GetAnnouncementListSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### createAnnouncement
Create an announcement

```swift
content.createAnnouncement(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Announcements are useful to highlight a message or information on top of a webpage. Use this API to create an announcement.

*Success Response:*



Success. Refer `CreateAnnouncementSchema` for more details.


Schema: `CreateAnnouncementSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getAnnouncementById
Get announcement by ID

```swift
content.getAnnouncementById(companyId: companyId, applicationId: applicationId, announcementId: announcementId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| announcementId | String? | ID allotted to the announcement. |  

Use this API to retrieve an announcement and its details such as the target platform and pages on which it's applicable

*Success Response:*



Success. Refer `AdminAnnouncementSchema` for more details.


Schema: `AdminAnnouncementSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateAnnouncement
Update an announcement

```swift
content.updateAnnouncement(companyId: companyId, applicationId: applicationId, announcementId: announcementId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| announcementId | String? | ID allotted to the announcement. |  

Use this API to edit an existing announcement and its details such as the target platform and pages on which it's applicable

*Success Response:*



Success. Refer `CreateAnnouncementSchema` for more details.


Schema: `CreateAnnouncementSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateAnnouncementSchedule
Update the schedule and the publish status of an announcement

```swift
content.updateAnnouncementSchedule(companyId: companyId, applicationId: applicationId, announcementId: announcementId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| announcementId | String? | ID allotted to the announcement. |  

Use this API to edit the duration, i.e. start date-time and end date-time of an announcement. Moreover, you can enable/disable an announcement using this API.

*Success Response:*



Success. Refer `CreateAnnouncementSchema` for more details.


Schema: `CreateAnnouncementSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### deleteAnnouncement
Delete announcement by id

```swift
content.deleteAnnouncement(companyId: companyId, applicationId: applicationId, announcementId: announcementId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| announcementId | String? | ID allotted to the announcement. |  

Use this API to delete an existing announcement.

*Success Response:*



Success.


Schema: `CreateAnnouncementSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### createBlog
Create a blog

```swift
content.createBlog(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Use this API to create a blog.

*Success Response:*



Success. Refer `BlogSchema` for more details.


Schema: `BlogSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getBlogs
Get blogs

```swift
content.getBlogs(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10. |  

Use this API to get a list of blogs along with their details, such as the title, reading time, publish status, feature image, tags, author, etc.

*Success Response:*



Success. Refer `BlogGetResponse` for more details.


Schema: `BlogGetResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateBlog
Update a blog

```swift
content.updateBlog(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to the blog. |  

Use this API to update the details of an existing blog which includes title, feature image, content, SEO details, expiry, etc.

*Success Response:*



Success.


Schema: `BlogSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### deleteBlog
Delete blogs

```swift
content.deleteBlog(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to the blog. |  

Use this API to delete a blog.

*Success Response:*



Success.


Schema: `BlogSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getComponentById
Get components of a blog

```swift
content.getComponentById(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| slug | String? | A short, human-readable, URL-friendly identifier of a blog page. You can get slug value of a blog from `getBlogs` API. |  

Use this API to retrieve the components of a blog, such as title, slug, feature image, content, schedule, publish status, author, etc.

*Success Response:*



Success. Returns a a JSON object with components. Refer `BlogSchema` for more details.


Schema: `BlogSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getFaqCategories
Get a list of FAQ categories

```swift
content.getFaqCategories(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

FAQs can be divided into categories. Use this API to get a list of FAQ categories.

*Success Response:*



Success. Refer `GetFaqCategoriesSchema` for more details.


Schema: `GetFaqCategoriesSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getFaqCategoryBySlugOrId
Get an FAQ category by slug or id

```swift
content.getFaqCategoryBySlugOrId(companyId: companyId, applicationId: applicationId, idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| idOrSlug | String? | ID or the slug allotted to an FAQ category. Slug is a short, human-readable, URL-friendly identifier of an object. You can get slug value of an FAQ category from `getFaqCategories` API. |  

FAQs can be divided into categories. Use this API to get an FAQ categories using its slug or ID.

*Success Response:*



Success. Refer `GetFaqCategoryBySlugSchema` for more details.


Schema: `GetFaqCategoryBySlugSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### createFaqCategory
Create an FAQ category

```swift
content.createFaqCategory(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

FAQs help users to solve an issue or know more about a process. FAQs can be categorized separately, for e.g. some questions can be related to payment, some could be related to purchase, shipping, navigating, etc. Use this API to create an FAQ category.

*Success Response:*



Success.


Schema: `CreateFaqCategorySchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateFaqCategory
Update an FAQ category

```swift
content.updateFaqCategory(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to an FAQ category. |  

Use this API to edit an existing FAQ category.

*Success Response:*



Success.


Schema: `CreateFaqCategorySchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### deleteFaqCategory
Delete an FAQ category

```swift
content.deleteFaqCategory(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to an FAQ category. |  

Use this API to delete an FAQ category.

*Success Response:*



Success.


Schema: `FaqSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getFaqsByCategoryIdOrSlug
Get question and answers within an FAQ category

```swift
content.getFaqsByCategoryIdOrSlug(companyId: companyId, applicationId: applicationId, idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| idOrSlug | String? | ID or the slug allotted to an FAQ category. Slug is a short, human-readable, URL-friendly identifier of an object. You can get slug value of an FAQ category from `getFaqCategories` API. |  

Use this API to retrieve all the commonly asked question and answers belonging to an FAQ category.

*Success Response:*



Success. Refer `GetFaqSchema` for more details.


Schema: `GetFaqSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### addFaq
Create an FAQ

```swift
content.addFaq(companyId: companyId, applicationId: applicationId, categoryId: categoryId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| categoryId | String? | ID allotted to an FAQ category. |  

FAQs help users to solve an issue or know more about a process. Use this API to create an FAQ for a given FAQ category.

*Success Response:*



Success.


Schema: `CreateFaqResponseSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateFaq
Update an FAQ

```swift
content.updateFaq(companyId: companyId, applicationId: applicationId, categoryId: categoryId, faqId: faqId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| categoryId | String? | ID allotted to an FAQ category. |   
| faqId | String? | ID allotted to an FAQ. |  

Use this API to edit an existing FAQ.

*Success Response:*



Success.


Schema: `CreateFaqResponseSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### deleteFaq
Delete an FAQ

```swift
content.deleteFaq(companyId: companyId, applicationId: applicationId, categoryId: categoryId, faqId: faqId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| categoryId | String? | ID allotted to an FAQ category. |   
| faqId | String? | ID allotted to an FAQ. |  

Use this API to delete an existing FAQ.

*Success Response:*



Success.


Schema: `CreateFaqResponseSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getFaqByIdOrSlug
Get an FAQ

```swift
content.getFaqByIdOrSlug(companyId: companyId, applicationId: applicationId, idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| idOrSlug | String? | ID or the slug allotted to an FAQ category. Slug is a short, human-readable, URL-friendly identifier of an object. You can get slug value of an FAQ category from `getFaqCategories` API. |  

Use this API to retrieve a specific FAQ. You will get the question and answer of that FAQ.

*Success Response:*



Success. Refer `CreateFaqResponseSchema` for more details.


Schema: `CreateFaqResponseSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getLandingPages
Get landing pages

```swift
content.getLandingPages(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10. |  

Landing page is the first page that a prospect lands upon while visiting a website. Use this API to fetch a list of landing pages.

*Success Response:*



Success. Refer `LandingPageGetResponse` for more details.


Schema: `LandingPageGetResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### createLandingPage
Create a landing page

```swift
content.createLandingPage(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Landing page is the first page that a prospect lands upon while visiting a website. Use this API to create a landing page.

*Success Response:*



Success.


Schema: `LandingPageSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateLandingPage
Update a landing page

```swift
content.updateLandingPage(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to a landing page. |  

Use this API to edit the details of an existing landing page.

*Success Response:*



Success.


Schema: `LandingPageSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### deleteLandingPage
Delete a landing page

```swift
content.deleteLandingPage(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to a landing page. |  

Use this API to delete an existing landing page.

*Success Response:*



Success.


Schema: `LandingPageSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getLegalInformation
Get legal information

```swift
content.getLegalInformation(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Use this API to get the legal information of an application, which includes Policy, Terms and Conditions, Shipping Policy and FAQ regarding the application.

*Success Response:*



Success. Refer `ApplicationLegal` for more details.


Schema: `ApplicationLegal`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateLegalInformation
Save legal information

```swift
content.updateLegalInformation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Use this API to edit, update and save the legal information of an application, which includes Policy, Terms and Conditions, Shipping Policy and FAQ regarding the application.

*Success Response:*



Success. Refer `ApplicationLegal` for more details.


Schema: `ApplicationLegal`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getNavigations
Get navigations

```swift
content.getNavigations(companyId: companyId, applicationId: applicationId, devicePlatform: devicePlatform, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| devicePlatform | String? | Filter navigations by platform. Acceptable values are: web, android, ios, all |   
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10. |  

Use this API to fetch the navigations details which includes the items of the navigation pane. It also shows the orientation, links, sub-navigations, etc.

*Success Response:*



Success. Refer `NavigationGetResponse` for more details.


Schema: `NavigationGetResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### createNavigation
Create a navigation

```swift
content.createNavigation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Navigation is the arrangement of navigational items to ease the accessibility of resources for users on a website. Use this API to create a navigation.

*Success Response:*



Success.


Schema: `NavigationSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getDefaultNavigations
Get default navigations

```swift
content.getDefaultNavigations(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

On any website (application), there are navigations that are present by default. Use this API to retrieve those default navigations.

*Success Response:*



Success. Refer `DefaultNavigationResponse` for more details.


Schema: `DefaultNavigationResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getNavigationBySlug
Get a navigation by slug

```swift
content.getNavigationBySlug(companyId: companyId, applicationId: applicationId, slug: slug, devicePlatform: devicePlatform) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| slug | String? | A short, human-readable, URL-friendly identifier of a navigation. You can get slug value of a navigation from `getNavigations` API. |   
| devicePlatform | String? | Filter navigations by platform. Acceptable values are: web, android, ios, all |  

Use this API to retrieve a navigation by its slug.

*Success Response:*



Success. Refer `NavigationSchema` for more details.


Schema: `NavigationSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateNavigation
Update a navigation

```swift
content.updateNavigation(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to the navigation. |  

Use this API to edit the details of an existing navigation.

*Success Response:*



Success.


Schema: `NavigationSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### deleteNavigation
Delete a navigation

```swift
content.deleteNavigation(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to the navigation. |  

Use this API to delete an existing navigation.

*Success Response:*



Success.


Schema: `NavigationSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getPageMeta
Get page meta

```swift
content.getPageMeta(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Use this API to get the meta of custom pages (blog, page) and default system pages (e.g. home/brand/category/collection).

*Success Response:*



Success. Refer `PageMetaSchema` for more details.


Schema: `PageMetaSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getPageSpec
Get page spec

```swift
content.getPageSpec(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Use this API to get the specifications of a page, such as page type, display name, params and query.

*Success Response:*



Success. Refer `PageSpec` for more details.


Schema: `PageSpec`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### createPage
Create a page

```swift
content.createPage(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Use this API to create a custom page using a title, seo, publish status, feature image, tags, meta, etc.

*Success Response:*



Success. Refer `PageSchema` for more details.


Schema: `PageSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getPages
Get a list of pages

```swift
content.getPages(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10. |  

Use this API to retrieve a list of pages.

*Success Response:*



Success. Refer `PageGetResponse` for more details.


Schema: `PageGetResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### createPagePreview
Create a page preview

```swift
content.createPagePreview(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Use this API to create a page preview to check the appearance of a custom page.

*Success Response:*



Success. Refer `PageSchema` for more details.


Schema: `PageSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updatePagePreview
Change the publish status of a page

```swift
content.updatePagePreview(companyId: companyId, applicationId: applicationId, slug: slug, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| slug | String? | A short, human-readable, URL-friendly identifier of a page. You can get slug value of a page from `getPages` API. |  

Use this API to change the publish status of an existing page. Allows you to publish and unpublish the page.

*Success Response:*



Success.


Schema: `PageSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updatePage
Update a page

```swift
content.updatePage(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to the page. |  

Use this API to edit the details of an existing page, such as its title, seo, publish status, feature image, tags, schedule, etc.

*Success Response:*



Success. Refer `PageSchema` for more details.


Schema: `PageSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### deletePage
Delete a page

```swift
content.deletePage(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to the page. |  

Use this API to delete an existing page.

*Success Response:*



Success.


Schema: `PageSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getPageBySlug
Get pages by component Id

```swift
content.getPageBySlug(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| slug | String? | A short, human-readable, URL-friendly identifier of a page. You can get slug value of a page from `getPages` API. |  

Use this API to retrieve the components of a page, such as its title, seo, publish status, feature image, tags, schedule, etc.

*Success Response:*



Success. Returns a JSON object of components. Refer `PageSchema` for more details.


Schema: `PageSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getSEOConfiguration
Get SEO configuration of an application

```swift
content.getSEOConfiguration(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Use this API to know how the SEO is configured in the application. This includes the sitemap, robot.txt, custom meta tags, etc.

*Success Response:*



Success. Refer `SeoComponent` for more details.


Schema: `SeoComponent`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateSEOConfiguration
Update SEO of application

```swift
content.updateSEOConfiguration(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

Use this API to edit the SEO details of an application. This includes the sitemap, robot.txt, custom meta tags, etc.

*Success Response:*



Success. Refer `SeoSchema` for more details.


Schema: `SeoSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getSlideshows
Get slideshows

```swift
content.getSlideshows(companyId: companyId, applicationId: applicationId, devicePlatform: devicePlatform, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| devicePlatform | String? | Filter slideshows by platform. Acceptable values are: web, android, ios and all |   
| pageNo | Int? | The page number to navigate through the given set of results. Default value is 1. |   
| pageSize | Int? | The number of items to retrieve in each page. Default value is 10. |  

A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to fetch a list of slideshows.

*Success Response:*



Success. Refer `SlideshowGetResponse` for more details.


Schema: `SlideshowGetResponse`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### createSlideshow
Create a slideshow

```swift
content.createSlideshow(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |  

A slideshow is a group of images, videos or a combination of both that are shown on the website in the form of slides. Use this API to create a slideshow.

*Success Response:*



Success. Refer `SlideshowSchema` for more details.


Schema: `SlideshowSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getSlideshowBySlug
Get slideshow by slug

```swift
content.getSlideshowBySlug(companyId: companyId, applicationId: applicationId, slug: slug, devicePlatform: devicePlatform) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| slug | String? | A short, human-readable, URL-friendly identifier of a slideshow. You can get slug value of a page from `getSlideshows` API. |   
| devicePlatform | String? | Filter slideshows by platform. Acceptable values are: web, android, ios and all |  

Use this API to retrieve the details of a slideshow by its slug.

*Success Response:*



Success. Refer `SlideshowSchema` for more details.


Schema: `SlideshowSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateSlideshow
Update a slideshow

```swift
content.updateSlideshow(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to the slideshow. |  

Use this API to edit the details of an existing slideshow.

*Success Response:*



Success. Refer `SlideshowSchema` for more details.


Schema: `SlideshowSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### deleteSlideshow
Delete a slideshow

```swift
content.deleteSlideshow(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform |   
| applicationId | String? | Numeric ID allotted to an application created within a business account. |   
| id | String? | ID allotted to the slideshow. |  

Use this API to delete an existing slideshow.

*Success Response:*



Success.


Schema: `SlideshowSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getSupportInformation
Get support information

```swift
content.getSupportInformation(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Use this API to get the contact details for customer support, including emails and phone numbers.

*Success Response:*



Success. Refer `Support` for more details.


Schema: `Support`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateSupportInformation
Update the support data of an application

```swift
content.updateSupportInformation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Use this API to edit the existing contact details for customer support, including emails and phone numbers.

*Success Response:*



Success. Refer `Support` for more details.


Schema: `Support`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### updateInjectableTag
Update a tag

```swift
content.updateInjectableTag(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Use this API to edit the details of an existing tag. This includes the tag name, tag type (css/js), url and position of the tag.

*Success Response:*



Success.


Schema: `TagsSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### deleteAllInjectableTags
Delete tags in application

```swift
content.deleteAllInjectableTags(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Use this API to delete all the existing tags at once.

*Success Response:*



Success.


Schema: `TagsSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### getInjectableTags
Get all the tags in an application

```swift
content.getInjectableTags(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Use this API to get all the CSS and JS injected in the application in the form of tags.

*Success Response:*



Success. Refer `TagsSchema` for more details.


Schema: `TagsSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### addInjectableTag
Add a tag

```swift
content.addInjectableTag(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

CSS and JS can be injected in the application (website) with the help of tags. Use this API to create such tags by entering the tag name, tag type (css/js), url and position of the tag.

*Success Response:*



Success.


Schema: `TagsSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### removeInjectableTag
Remove a tag

```swift
content.removeInjectableTag(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |  

Use this API to delete an existing tag.

*Success Response:*



Success.


Schema: `TagsSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---


#### editInjectableTag
Edit a tag by id

```swift
content.editInjectableTag(companyId: companyId, applicationId: applicationId, tagId: tagId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Numeric ID allotted to a business account on Fynd Platform. |   
| applicationId | String? | Alphanumeric ID allotted to an application created within a business account. |   
| tagId | String? | ID allotted to the tag. |  

Use this API to edit the details of an existing tag by its ID.

*Success Response:*



Success.


Schema: `TagsSchema`





Bad Request. See the error object in the response body to know the exact reason.


Schema: `APIError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `APIError`






---



---


## Assignment


#### createPickupLocation


```swift
assignment.createPickupLocation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Create a new Pickup point for an application.


*Success Response:*



Success Response - Store Updated


Schema: `Success`





Error Response


Schema: `ErrorResponseSchema`






---


#### getPickupLocation


```swift
assignment.getPickupLocation(q: q, pageNo: pageNo, pageSize: pageSize, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| q | String? | Search query |   
| pageNo | Int? | Request a page number |   
| pageSize | Int? | Request a page size |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Update list of pickup points for an application.


*Success Response:*



Success Response


Schema: `PickupPointResponse`





Error


Schema: `ErrorResponseSchema`






---


#### updatePickupLocation


```swift
assignment.updatePickupLocation(id: id, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| id | Double? | Pickup Point ID |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Update Pickup Point for an application. Pickup Point once created
can be updated using this API. 'x-application-id'm and request body are required to trigger
a successful update.


*Success Response:*



Success Response - Store Updated


Schema: `Success`





Error Response


Schema: `ErrorResponseSchema`






---


#### getPickupLocationById


```swift
assignment.getPickupLocationById(id: id, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| id | Double? | Pickup Point Id |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

This API returns Pickup point data for an id. Returns not found if no data exists for the
store id passed.


*Success Response:*



Success Response


Schema: `PickupPointSchema`





Error Response


Schema: `ErrorResponseSchema`






---


#### createPickupConfiguration


```swift
assignment.createPickupConfiguration(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Create a new pickup configuration for an application id. Only one configuration can be
created per application id.


*Success Response:*



Success Response - Store Updated


Schema: `Success`





Error Response


Schema: `ErrorResponseSchema`






---


#### getPickupConfiguration


```swift
assignment.getPickupConfiguration(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Let pickup configuration for an application. z-application-id is required in
the header to fetch the data.


*Success Response:*



Success Response


Schema: `PickupResponse`





Error Response


Schema: `ErrorResponseSchema`






---


#### getAllocationConfiguration


```swift
assignment.getAllocationConfiguration(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Get Shipping configuration for an application. Returns the global shipping configuration
including shipping priority and default strategy, etc. Every application can have one set of
configuration each. The endpoint requires an application id to get the data.


*Success Response:*



Success Response


Schema: `ShippingResponse`





Error Response


Schema: `ErrorResponseSchema`






---


#### createAllocationConfiguration


```swift
assignment.createAllocationConfiguration(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Create a new Shipping configuration for an application The configuration is for
all the stores under an application. There can be only one configuration for an
application i.e, for an application configuration can be created only once.


*Success Response:*



Success Response - Store Updated


Schema: `Success`





Error Response


Schema: `ErrorResponseSchema`






---


#### updateAllocationConfiguration


```swift
assignment.updateAllocationConfiguration(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Update Shipping configuration for an application. Application configuration once created
can be updated using this API. 'x-application-id'm and request body are required to trigger
a successful update.


*Success Response:*



Success Response - Store Updated


Schema: `Success`





Error Response


Schema: `ErrorResponseSchema`






---


#### getAllocationLocations


```swift
assignment.getAllocationLocations(q: q, pageNo: pageNo, pageSize: pageSize, type: type, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| q | String? | Search query |   
| pageNo | Int? | Request a page number |   
| pageSize | Int? | Request a page size |   
| type | String? | Type can be 'standard' or 'advanced' |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

List Stores of an application. Two types of stores are listed,
some having allocation types as standard and others, advanced.
API has support for pagination, filter by type and search by name.


*Success Response:*



Success Response


Schema: `StoreListResponse`





Error Response


Schema: `ErrorResponseSchema`






---


#### getAllocationLocationById


```swift
assignment.getAllocationLocationById(id: id, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| id | Double? | Store Id |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

This API returns store data for an id. Returns not found if no data exists for the
store id passed. The data is returned from sixspeed database which includes only the
shipping configuration of the stores including store id and app id.


*Success Response:*



Success Response


Schema: `StoreResponse`





Error Response


Schema: `ErrorResponseSchema`






---


#### updateAllocationLocation


```swift
assignment.updateAllocationLocation(id: id, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| id | Double? | Store Id |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

A store configuration once created can be updated via this API. Store id in request params
and udpated request body are required to successfully update the store data.


*Success Response:*



Success Response - Store Updated


Schema: `Success`





Error Response


Schema: `ErrorResponseSchema`






---


#### createAllocationLocation


```swift
assignment.createAllocationLocation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Create a new store shipping configuratiion. The configuration is stored into the
sixspeed database. One one store data can be created for one store id. Ther can be one
default configuration and multiple non-default ones. The default is not binded with product
tags while others are required to be.


*Success Response:*



Success Response - Store Updated


Schema: `Success`





Error Response


Schema: `ErrorResponseSchema`






---


#### getDestinationZones


```swift
assignment.getDestinationZones(q: q, pageNo: pageNo, pageSize: pageSize, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| q | String? | Search query |   
| pageNo | Int? | Request a page number |   
| pageSize | Int? | Request a page size |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Get a list of zones created, where every zone has a unique name and id. They can be
of three different types, radius, pincode and country.


*Success Response:*



Success Response


Schema: `ZoneListResponse`





Error Response


Schema: `ErrorResponseSchema`






---


#### postDestinationZone


```swift
assignment.postDestinationZone(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

This API lets you create a zone which can be used further be mapped with store
configuration rules to defined a shipping rule. Either of the three details need to
be passed, zone_detail, pincode and region.


*Success Response:*



Success Response - Zone Created


Schema: `Success`





Internal Server Error


Schema: `ErrorResponseSchema`






---


#### getDestinationZoneById


```swift
assignment.getDestinationZoneById(id: id, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| id | Double? | Store Id |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Returns zone data for the specified zone id. Id is the required parameter and returns
not found if no data is found for the passed zone id.


*Success Response:*



Success Response


Schema: `ZoneSchema`





Internal Server Error


Schema: `ErrorResponseSchema`






---


#### updateDestinationZone


```swift
assignment.updateDestinationZone(id: id, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| id | Double? | Store Id |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application Id |  

Zone once created can be updated using this API. Zone id and request body are the required
data to update a zone.


*Success Response:*



Success Response - Zone Updated


Schema: `Success`





Internal Server Error


Schema: `ErrorResponseSchema`






---



---


## Billing


#### createSubscriptionCharge
Create subscription charge

```swift
billing.createSubscriptionCharge(companyId: companyId, extensionId: extensionId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |   
| extensionId | String? | Extension _id |  

Register subscription charge for a seller of your extension.

*Success Response:*



Success


Schema: `CreateSubscriptionResponse`





Request failed due to invalid data


Schema: `BadRequest`






---


#### getSubscriptionCharge
Get subscription charge details

```swift
billing.getSubscriptionCharge(companyId: companyId, extensionId: extensionId, subscriptionId: subscriptionId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |   
| extensionId | String? | Extension _id |   
| subscriptionId | String? | Subscription charge _id |  

Get created subscription charge details

*Success Response:*



Success


Schema: `EntitySubscription`





Not found


Schema: `ResourceNotFound`






---


#### cancelSubscriptionCharge
Cancel subscription charge

```swift
billing.cancelSubscriptionCharge(companyId: companyId, extensionId: extensionId, subscriptionId: subscriptionId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |   
| extensionId | String? | Extension _id |   
| subscriptionId | String? | Subscription charge _id |  

Cancel subscription and attached charges.

*Success Response:*



Success


Schema: `EntitySubscription`





Request failed due to invalid data


Schema: `BadRequest`





Resource Not found


Schema: `ResourceNotFound`






---


#### getInvoices
Get invoices

```swift
billing.getInvoices(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |  

Get invoices.

*Success Response:*



Success


Schema: `Invoices`






---


#### getInvoiceById
Get invoice by id

```swift
billing.getInvoiceById(companyId: companyId, invoiceId: invoiceId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |   
| invoiceId | String? | Invoice id |  

Get invoice by id.

*Success Response:*



Success


Schema: `Invoice`






---


#### getCustomerDetail
Get subscription customer detail

```swift
billing.getCustomerDetail(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |  

Get subscription customer detail.

*Success Response:*



Success


Schema: `SubscriptionCustomer`





Resource not found


Schema: `ResourceNotFound`






---


#### upsertCustomerDetail
Upsert subscription customer detail

```swift
billing.upsertCustomerDetail(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |  

Upsert subscription customer detail.

*Success Response:*



Success


Schema: `SubscriptionCustomer`





Resource not found


Schema: `ResourceNotFound`





Internal server error


Schema: `InternalServerError`






---


#### getSubscription
Get current subscription detail

```swift
billing.getSubscription(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |  

If subscription is active then it will return is_enabled true and return subscription object. If subscription is not active then is_enabled false and message.


*Success Response:*



Success


Schema: `SubscriptionStatus`





Internal server error


Schema: `InternalServerError`






---


#### getFeatureLimitConfig
Get subscription subscription limits

```swift
billing.getFeatureLimitConfig(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |  

Get subscription subscription limits.

*Success Response:*



Success


Schema: `SubscriptionLimit`





Internal server error


Schema: `InternalServerError`






---


#### activateSubscriptionPlan
Activate subscription

```swift
billing.activateSubscriptionPlan(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |  

It will activate subscription plan for customer

*Success Response:*



Success


Schema: `SubscriptionActivateRes`





Resource not found


Schema: `ResourceNotFound`





Internal server error


Schema: `InternalServerError`






---


#### cancelSubscriptionPlan
Cancel subscription

```swift
billing.cancelSubscriptionPlan(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Customer unique id. In case of company it will be company id. |  

It will cancel current active subscription.

*Success Response:*



Success


Schema: `CancelSubscriptionRes`





Resource not found


Schema: `ResourceNotFound`





Internal server error


Schema: `InternalServerError`






---



---


## Communication


#### getCampaigns
Get campaigns

```swift
communication.getCampaigns(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on created_at |  

Get campaigns

*Success Response:*



Success


Schema: `Campaigns`






---


#### createCampaign
Create campaign

```swift
communication.createCampaign(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |  

Create campaign

*Success Response:*



Success


Schema: `Campaign`






---


#### getCampaignById
Get campaign by id

```swift
communication.getCampaignById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Campaign id |  

Get campaign by id

*Success Response:*



Success


Schema: `Campaign`





Not found


Schema: `NotFound`






---


#### updateCampaignById
Update campaign by id

```swift
communication.updateCampaignById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Campaign id |  

Update campaign by id

*Success Response:*



Success


Schema: `Campaign`





Not found


Schema: `NotFound`






---


#### getStatsOfCampaignById
Get stats of campaign by id

```swift
communication.getStatsOfCampaignById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Campaign id |  

Get stats of campaign by id

*Success Response:*



Success


Schema: `GetStats`





Bad request


Schema: `BadRequest`






---


#### getAudiences
Get audiences

```swift
communication.getAudiences(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on created_at |  

Get audiences

*Success Response:*



Success


Schema: `Audiences`






---


#### createAudience
Create audience

```swift
communication.createAudience(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |  

Create audience

*Success Response:*



Success


Schema: `Audience`






---


#### getBigqueryHeaders
Get bigquery headers

```swift
communication.getBigqueryHeaders(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |  

Get bigquery headers

*Success Response:*



Success


Schema: `BigqueryHeadersRes`





Bad request


Schema: `BadRequest`






---


#### getAudienceById
Get audience by id

```swift
communication.getAudienceById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Audience id |  

Get audience by id

*Success Response:*



Success


Schema: `Audience`





Not found


Schema: `NotFound`






---


#### updateAudienceById
Update audience by id

```swift
communication.updateAudienceById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Audience id |  

Update audience by id

*Success Response:*



Success


Schema: `Audience`





Not found


Schema: `NotFound`






---


#### getNSampleRecordsFromCsv
Get n sample records from csv

```swift
communication.getNSampleRecordsFromCsv(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |  

Get n sample records from csv

*Success Response:*



Success


Schema: `GetNRecordsCsvRes`





Bad request


Schema: `BadRequest`






---


#### getEmailProviders
Get email providers

```swift
communication.getEmailProviders(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on created_at |  

Get email providers

*Success Response:*



Success


Schema: `EmailProviders`






---


#### createEmailProvider
Create email provider

```swift
communication.createEmailProvider(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |  

Create email provider

*Success Response:*



Success


Schema: `EmailProvider`






---


#### getEmailProviderById
Get email provider by id

```swift
communication.getEmailProviderById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Email provider id |  

Get email provider by id

*Success Response:*



Success


Schema: `EmailProvider`






---


#### updateEmailProviderById
Update email provider by id

```swift
communication.updateEmailProviderById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Email provider id |  

Update email provider by id

*Success Response:*



Success


Schema: `EmailProvider`






---


#### getEmailTemplates
Get email templates

```swift
communication.getEmailTemplates(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on created_at |  

Get email templates

*Success Response:*



Success


Schema: `EmailTemplates`






---


#### createEmailTemplate
Create email template

```swift
communication.createEmailTemplate(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |  

Create email template

*Success Response:*



Success


Schema: `EmailTemplateRes`






---


#### getSystemEmailTemplates
Get system email templates

```swift
communication.getSystemEmailTemplates(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on created_at |  

Get system email templates

*Success Response:*



Success


Schema: `SystemEmailTemplates`






---


#### getEmailTemplateById
Get email template by id

```swift
communication.getEmailTemplateById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Email template id |  

Get email template by id

*Success Response:*



Success


Schema: `EmailTemplate`






---


#### updateEmailTemplateById
Update email template by id

```swift
communication.updateEmailTemplateById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Email template id |  

Update email template by id

*Success Response:*



Success


Schema: `EmailTemplateRes`






---


#### deleteEmailTemplateById
Delete email template by id

```swift
communication.deleteEmailTemplateById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Email template id |  

Delete email template by id

*Success Response:*



Success


Schema: `EmailTemplateDeleteSuccessRes`





Failure


Schema: `EmailTemplateDeleteFailureRes`






---


#### getEventSubscriptions
Get event subscriptions

```swift
communication.getEventSubscriptions(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, populate: populate) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| populate | String? | populate fields |  

Get event subscriptions

*Success Response:*



Success


Schema: `EventSubscriptions`






---


#### getJobs
Get jobs

```swift
communication.getJobs(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on created_at |  

Get jobs

*Success Response:*



Success


Schema: `Jobs`






---


#### triggerCampaignJob
Trigger campaign job

```swift
communication.triggerCampaignJob(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |  

Trigger campaign job

*Success Response:*



Success


Schema: `TriggerJobResponse`






---


#### getJobLogs
Get job logs

```swift
communication.getJobLogs(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on created_at |  

Get job logs

*Success Response:*



Success


Schema: `JobLogs`






---


#### getCommunicationLogs
Get communication logs

```swift
communication.getCommunicationLogs(companyId: companyId, applicationId: applicationId, pageId: pageId, pageSize: pageSize, sort: sort, query: query) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageId | String? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on _id |   
| query | [String: Any]? |  |  

Get communication logs

*Success Response:*



Success


Schema: `Logs`






---


#### getSystemNotifications
Get system notifications

```swift
communication.getSystemNotifications(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| pageNo | Int? |  |   
| pageSize | Int? |  |  

Get system notifications

*Success Response:*



Success


Schema: `SystemNotifications`






---


#### getSmsProviders
Get sms providers

```swift
communication.getSmsProviders(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on created_at |  

Get sms providers

*Success Response:*



Success


Schema: `SmsProviders`






---


#### createSmsProvider
Create sms provider

```swift
communication.createSmsProvider(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |  

Create sms provider

*Success Response:*



Success


Schema: `SmsProvider`






---


#### getSmsProviderById
Get sms provider by id

```swift
communication.getSmsProviderById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Sms provider id |  

Get sms provider by id

*Success Response:*



Success


Schema: `SmsProvider`






---


#### updateSmsProviderById
Update sms provider by id

```swift
communication.updateSmsProviderById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Sms provider id |  

Update sms provider by id

*Success Response:*



Success


Schema: `SmsProvider`






---


#### getSmsTemplates
Get sms templates

```swift
communication.getSmsTemplates(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on created_at |  

Get sms templates

*Success Response:*



Success


Schema: `SmsTemplates`






---


#### createSmsTemplate
Create sms template

```swift
communication.createSmsTemplate(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |  

Create sms template

*Success Response:*



Success


Schema: `SmsTemplateRes`






---


#### getSmsTemplateById
Get sms template by id

```swift
communication.getSmsTemplateById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Sms template id |  

Get sms template by id

*Success Response:*



Success


Schema: `SmsTemplate`





Not found


Schema: `NotFound`






---


#### updateSmsTemplateById
Update sms template by id

```swift
communication.updateSmsTemplateById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Sms template id |  

Update sms template by id

*Success Response:*



Success


Schema: `SmsTemplateRes`





Not found


Schema: `NotFound`






---


#### deleteSmsTemplateById
Delete sms template by id

```swift
communication.deleteSmsTemplateById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| id | String? | Sms template id |  

Delete sms template by id

*Success Response:*



Success


Schema: `SmsTemplateDeleteSuccessRes`





Failure


Schema: `SmsTemplateDeleteFailureRes`





Not found


Schema: `NotFound`






---


#### getSystemSystemTemplates
Get system sms templates

```swift
communication.getSystemSystemTemplates(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, sort: sort) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company id |   
| applicationId | String? | Application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |   
| sort | [String: Any]? | To sort based on created_at |  

Get system sms templates

*Success Response:*



Success


Schema: `SystemSmsTemplates`






---



---


## Payment


#### getBrandPaymentGatewayConfig
Get All Brand Payment Gateway Config Secret

```swift
payment.getBrandPaymentGatewayConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application id |  

Get All Brand Payment Gateway Config Secret

*Success Response:*



Refund Transfer Mode


Schema: `PaymentGatewayConfigResponse`





Internal Server Error


Schema: `ErrorCodeDescription`





Internal Server Error


Schema: `ErrorCodeDescription`






---


#### saveBrandPaymentGatewayConfig
Save Config Secret For Brand Payment Gateway

```swift
payment.saveBrandPaymentGatewayConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application id |  

Save Config Secret For Brand Payment Gateway

*Success Response:*



Save Config Secret For Brand Payment Gateway Success Response.


Schema: `PaymentGatewayToBeReviewed`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### updateBrandPaymentGatewayConfig
Save Config Secret For Brand Payment Gateway

```swift
payment.updateBrandPaymentGatewayConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application id |  

Save Config Secret For Brand Payment Gateway

*Success Response:*



Save Config Secret For Brand Payment Gateway Success Response.


Schema: `PaymentGatewayToBeReviewed`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### getPaymentModeRoutes
Get All Valid Payment Options

```swift
payment.getPaymentModeRoutes(companyId: companyId, applicationId: applicationId, refresh: refresh, requestType: requestType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application id |   
| refresh | Bool? |  |   
| requestType | String? |  |  

Use this API to get Get All Valid Payment Options for making payment

*Success Response:*



Success


Schema: `PaymentOptionsResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### getAllPayouts
Get All Payouts

```swift
payment.getAllPayouts(companyId: companyId, uniqueExternalId: uniqueExternalId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| uniqueExternalId | String? | Fetch payouts using unique external id |  

Get All Payouts

*Success Response:*



payouts response object


Schema: `PayoutsResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### savePayout
Save Payout

```swift
payment.savePayout(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |  

Save Payout

*Success Response:*



save payout response object


Schema: `PayoutResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### updatePayout
Update Payout

```swift
payment.updatePayout(companyId: companyId, uniqueTransferNo: uniqueTransferNo, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| uniqueTransferNo | String? | Unique transfer id |  

Update Payout

*Success Response:*



save payout response object


Schema: `UpdatePayoutResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### activateAndDectivatePayout
Partial Update Payout

```swift
payment.activateAndDectivatePayout(companyId: companyId, uniqueTransferNo: uniqueTransferNo, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| uniqueTransferNo | String? | Unique transfer id |  

Partial Update Payout

*Success Response:*



save payout response object


Schema: `UpdatePayoutResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### deletePayout
Delete Payout

```swift
payment.deletePayout(companyId: companyId, uniqueTransferNo: uniqueTransferNo) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| uniqueTransferNo | String? | Unique transfer id |  

Delete Payout

*Success Response:*



delete payout response object


Schema: `DeletePayoutResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### getSubscriptionPaymentMethod
List Subscription Payment Method

```swift
payment.getSubscriptionPaymentMethod(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |  

Get all  Subscription  Payment Method

*Success Response:*



List Subscription Payment Method Response


Schema: `SubscriptionPaymentMethodResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### deleteSubscriptionPaymentMethod
Delete Subscription Payment Method

```swift
payment.deleteSubscriptionPaymentMethod(companyId: companyId, uniqueExternalId: uniqueExternalId, paymentMethodId: paymentMethodId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| uniqueExternalId | String? |  |   
| paymentMethodId | String? |  |  

Uses this api to Delete Subscription Payment Method

*Success Response:*



Delete Subscription Payment Method Response.


Schema: `DeleteSubscriptionPaymentMethodResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### getSubscriptionConfig
List Subscription Config

```swift
payment.getSubscriptionConfig(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |  

Get all  Subscription Config details

*Success Response:*



List Subscription Config Response


Schema: `SubscriptionConfigResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### saveSubscriptionSetupIntent
Save Subscription Setup Intent

```swift
payment.saveSubscriptionSetupIntent(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |  

Uses this api to Save Subscription Setup Intent

*Success Response:*



Save Subscription Setup Intent Response.


Schema: `SaveSubscriptionSetupIntentResponse`





Bad Request Error


Schema: `HttpErrorCodeAndResponse`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### addBeneficiaryDetails
Save bank details for cancelled/returned order

```swift
payment.addBeneficiaryDetails(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| applicationId | String? | Application id |  

Use this API to save bank details for returned/cancelled order to refund amount in his account.

*Success Response:*



Success


Schema: `RefundAccountResponse`





Bad Request Error


Schema: `NotFoundResourceError`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### verifyIfscCode
Ifsc Code Verification

```swift
payment.verifyIfscCode(companyId: companyId, ifscCode: ifscCode) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
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


#### getUserOrderBeneficiaries
List Order Beneficiary

```swift
payment.getUserOrderBeneficiaries(orderId: orderId, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| orderId | String? |  |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application id |  

Get all active  beneficiary details added by the user for refund

*Success Response:*



List Order Beneficiary


Schema: `OrderBeneficiaryResponse`





Bad Request Error


Schema: `NotFoundResourceError`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---


#### getUserBeneficiaries
List User Beneficiary

```swift
payment.getUserBeneficiaries(orderId: orderId, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| orderId | String? |  |   
| companyId | Int? | Company Id |   
| applicationId | String? | Application id |  

Get all active  beneficiary details added by the user for refund

*Success Response:*



List User Beneficiary


Schema: `OrderBeneficiaryResponse`





Bad Request Error


Schema: `NotFoundResourceError`





Internal Server Error


Schema: `HttpErrorCodeAndResponse`






---



---


## Order


#### shipmentStatusUpdate
Update status of Shipment

```swift
order.shipmentStatusUpdate(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |  

Update Shipment Status

*Success Response:*



Success


Schema: `UpdateShipmentStatusResponse`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### activityStatus
Get Activity Status

```swift
order.activityStatus(companyId: companyId, bagId: bagId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| bagId | String? | Bag Id |  

Get Activity Status

*Success Response:*



Success


Schema: `GetActivityStatus`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### storeProcessShipmentUpdate
Update Store Process-Shipment

```swift
order.storeProcessShipmentUpdate(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |  

Update Store Process-Shipment

*Success Response:*



Success


Schema: `UpdateProcessShipmenstRequestResponse`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### checkRefund
Check Refund is available or not

```swift
order.checkRefund(companyId: companyId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| shipmentId | String? | Shipment Id |  

Check Refund is available or not

*Success Response:*



Success


Schema: `[String: Any]`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### getOrdersByCompanyId
Get Orders for company based on Company Id

```swift
order.getOrdersByCompanyId(companyId: companyId, pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, q: q, stage: stage, salesChannels: salesChannels, orderId: orderId, stores: stores, status: status, shortenUrls: shortenUrls, filterType: filterType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| pageNo | String? | Current page number |   
| pageSize | String? | Page limit |   
| fromDate | String? | From Date |   
| toDate | String? | To Date |   
| q | String? | Keyword for Search |   
| stage | String? | Specefic Order Stage |   
| salesChannels | String? | Selected Sales Channel |   
| orderId | String? | Order Id |   
| stores | String? | Selected Stores |   
| status | String? | Status of order |   
| shortenUrls | Bool? | Shorten URL option |   
| filterType | String? | Filters |  

Get Orders

*Success Response:*



Success


Schema: `OrderListing`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### getOrderDetails
Get Order Details for company based on Company Id and Order Id

```swift
order.getOrderDetails(companyId: companyId, orderId: orderId, next: next, previous: previous) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| orderId | String? | Order Id |   
| next | String? | Next |   
| previous | String? | Previous |  

Get Orders

*Success Response:*



Success


Schema: `OrderDetails`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### getPicklistOrdersByCompanyId
Get Orders for company based on Company Id

```swift
order.getPicklistOrdersByCompanyId(companyId: companyId, pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, q: q, stage: stage, salesChannels: salesChannels, orderId: orderId, stores: stores, status: status, shortenUrls: shortenUrls, filterType: filterType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| pageNo | String? | Current page number |   
| pageSize | String? | Page limit |   
| fromDate | String? | From Date |   
| toDate | String? | To Date |   
| q | String? | Keyword for Search |   
| stage | String? | Specefic Order Stage |   
| salesChannels | String? | Selected Sales Channel |   
| orderId | String? | Order Id |   
| stores | String? | Selected Stores |   
| status | String? | Status of order |   
| shortenUrls | Bool? | Shorten URL option |   
| filterType | String? | Filters |  

Get Orders

*Success Response:*



Success


Schema: `OrderPicklistListing`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### trackShipmentPlatform
Track Shipment by shipment id, for application based on application Id

```swift
order.trackShipmentPlatform(companyId: companyId, applicationId: applicationId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| shipmentId | String? | Shipment Id |  

Shipment Track

*Success Response:*



Success


Schema: `PlatformShipmentTrack`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### trackOrder
Track Order by order id, for application based on application Id

```swift
order.trackOrder(companyId: companyId, applicationId: applicationId, orderId: orderId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| orderId | String? | Order Id |  

Order Track

*Success Response:*



Success


Schema: `PlatformOrderTrack`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### failedOrders
Get all failed orders application wise

```swift
order.failedOrders(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |  

Failed Orders

*Success Response:*



Success


Schema: `FailedOrders`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### reprocessOrder
Reprocess order by order id

```swift
order.reprocessOrder(companyId: companyId, applicationId: applicationId, orderId: orderId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| orderId | String? | Order Id |  

Order Reprocess

*Success Response:*



Success


Schema: `UpdateOrderReprocessResponse`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### updateShipment
Use this API to update the shipment using its shipment ID.

```swift
order.updateShipment(companyId: companyId, applicationId: applicationId, shipmentId: shipmentId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| shipmentId | String? | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  

Update the shipment

*Success Response:*



Success. Check the example shown below or refer `ShipmentUpdateRequest` for more details.


Schema: `ShipmentUpdateResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### getPlatformShipmentReasons
Use this API to retrieve the issues that led to the cancellation of bags within a shipment.

```swift
order.getPlatformShipmentReasons(companyId: companyId, applicationId: applicationId, action: action) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| action | String? | Action |  

Get reasons behind full or partial cancellation of a shipment

*Success Response:*



Success. Check the example shown below or refer `ShipmentReasonsResponse` for more details.


Schema: `ShipmentReasonsResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### getShipmentTrackDetails
Use this API to track a shipment using its shipment ID.

```swift
order.getShipmentTrackDetails(companyId: companyId, applicationId: applicationId, orderId: orderId, shipmentId: shipmentId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| orderId | String? | ID of the order. |   
| shipmentId | String? | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |  

Track shipment

*Success Response:*



Success. Check the example shown below or refer `ShipmentTrackResponse` for more details.


Schema: `ShipmentTrackResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### getShipmentAddress
Use this API to get address of a shipment using its shipment ID and Address Category.

```swift
order.getShipmentAddress(companyId: companyId, shipmentId: shipmentId, addressCategory: addressCategory) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| shipmentId | String? | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| addressCategory | String? | Category of the address it falls into(billing or delivery). |  

Get Shipment Address

*Success Response:*



Success. Check the example shown below or refer `GetShipmentAddressResponse` for more details.


Schema: `GetShipmentAddressResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### updateShipmentAddress
Use this API to update address of a shipment using its shipment ID and Address Category.

```swift
order.updateShipmentAddress(companyId: companyId, shipmentId: shipmentId, addressCategory: addressCategory, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| shipmentId | String? | ID of the shipment. An order may contain multiple items and may get divided into one or more shipment, each having its own ID. |   
| addressCategory | String? | Category of the address it falls into(billing or delivery). |  

Update Shipment Address

*Success Response:*



Success. Check the example shown below or refer `UpdateShipmentAddressResponse` for more details.


Schema: `UpdateShipmentAddressResponse`





API Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`





Internal Server Error. See the error object in the response body to know the exact reason.


Schema: `ApefaceApiError`






---


#### getPing
Get Ping

```swift
order.getPing(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |  

Get Ping

*Success Response:*



Success


Schema: `GetPingResponse`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### voiceCallback
Get Voice Callback

```swift
order.voiceCallback(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |  

Voice Callback

*Success Response:*



Success


Schema: `GetVoiceCallbackResponse`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---


#### voiceClickToCall
Get Voice Click to Call

```swift
order.voiceClickToCall(companyId: companyId, caller: caller, receiver: receiver) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| caller | String? | Caller contact number |   
| receiver | String? | Receiver contact number |  

Voice Click to Call

*Success Response:*



Success


Schema: `GetClickToCallResponse`





API Error


Schema: `ApefaceApiError`





Internal Server Error


Schema: `ApefaceApiError`






---



---


## Catalog


#### updateSearchKeywords
Update Search Keyword

```swift
catalog.updateSearchKeywords(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  

Update Search Keyword by its id. On successful request, returns the updated collection

*Success Response:*



The Collection object. See example below or refer `GetSearchWordsDataSchema` for details.


Schema: `GetSearchWordsData`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### deleteSearchKeywords
Delete a Search Keywords

```swift
catalog.deleteSearchKeywords(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  

Delete a keywords by it's id. Returns an object that tells whether the keywords was deleted successfully

*Success Response:*



Status object. Tells whether the operation was successful. See example below or refer `DeleteResponse`


Schema: `DeleteResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getSearchKeywords
Get a Search Keywords Details

```swift
catalog.getSearchKeywords(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. |  

Get the details of a words by its `id`. If successful, returns a Collection resource in the response body specified in `GetSearchWordsDetailResponseSchema`

*Success Response:*



The Collection object. See example below or refer `GetSearchWordsDetailResponseSchema` for details


Schema: `GetSearchWordsDetailResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getAllSearchKeyword
List all Search Custom Keyword Listing

```swift
catalog.getAllSearchKeyword(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

Custom Search Keyword allows you to map conditions with keywords to give you the ultimate results

*Success Response:*



List of custom search keywords. See example below or refer `GetSearchWordsResponseSchema` for details


Schema: `GetSearchWordsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createCustomKeyword
Add a Custom Search Keywords

```swift
catalog.createCustomKeyword(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

Create a Custom Search Keywords. See `CreateSearchKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateSearchKeywordSchema`

*Success Response:*



Get keyword object with id that is added. See example below or refer `GetSearchWordsDataSchema` for details


Schema: `GetSearchWordsData`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### updateAutocompleteKeyword
Create & Update Autocomplete Keyword

```swift
catalog.updateAutocompleteKeyword(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  

Update a mapping by it's id. On successful request, returns the updated Keyword mapping

*Success Response:*



The Mapping object. See example below or refer `GetAutocompleteWordsResponseSchema` for details.


Schema: `GetAutocompleteWordsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### deleteAutocompleteKeyword
Delete a Autocomplete Keywords

```swift
catalog.deleteAutocompleteKeyword(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  

Delete a keywords by it's id. Returns an object that tells whether the keywords was deleted successfully

*Success Response:*



Status object. Tells whether the operation was successful. See example below or refer `DeleteResponse`


Schema: `DeleteResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getAutocompleteKeywordDetail
Get a Autocomplete Keywords Details

```swift
catalog.getAutocompleteKeywordDetail(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. |  

Get the details of a words by its `id`. If successful, returns a keywords resource in the response body specified in `GetAutocompleteWordsResponseSchema`

*Success Response:*



The mapping object. See example below or refer `GetAutocompleteWordsResponseSchema` for details


Schema: `GetAutocompleteWordsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getAutocompleteConfig
List all Autocomplete Keyword Listing

```swift
catalog.getAutocompleteConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

Custom Autocomplete Keyword allows you to map conditions with keywords to give you the ultimate results

*Success Response:*



List of custom autocomplete keywords. See example below or refer `GetAutocompleteWordsResponseSchema` for details


Schema: `GetAutocompleteWordsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createCustomAutocompleteRule
Add a Custom Autocomplete Keywords

```swift
catalog.createCustomAutocompleteRule(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

Create a Custom Autocomplete Keywords. See `CreateAutocompleteKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateAutocompleteKeywordSchema`

*Success Response:*



List of all the collections including the one you added. See example below or refer `CreateAutocompleteWordsResponseSchema` for details


Schema: `CreateAutocompleteWordsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductBundle
List all Product Bundles

```swift
catalog.getProductBundle(companyId: companyId, q: q) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| q | String? | A search string that is searched with product bundle name. |  

Get all product bundles for a particular company

*Success Response:*



List of bundle configured for a company. See example below or refer `GetProductBundleListingResponse` for details


Schema: `GetProductBundleListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createProductBundle
Create Product Bundle

```swift
catalog.createProductBundle(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |  

Create Product Bundle. See `ProductBundleRequest` for the request body parameter need to create a product bundle. On successful request, returns in `ProductBundleRequest` with id

*Success Response:*



Get bundle with id that is added. See example below or refer `GetProductBundleCreateResponse` for details


Schema: `GetProductBundleCreateResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### updateProductBundle
Update a Product Bundle

```swift
catalog.updateProductBundle(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| id | String? | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. |  

Update a Product Bundle by its id. On successful request, returns the updated product bundle

*Success Response:*



The Collection object. See example below or refer `GetProductBundleCreateResponse` for details.


Schema: `GetProductBundleCreateResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductBundleDetail
Get a particular Product Bundle details

```swift
catalog.getProductBundleDetail(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| id | String? | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. |  

Get a particular Bundle details by its `id`. If successful, returns a Product bundle resource in the response body specified in `GetProductBundleResponse`

*Success Response:*



The Collection object. See example below or refer `GetProductBundleResponse` for details


Schema: `GetProductBundleResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getSizeGuides
Get list of size guides

```swift
catalog.getSizeGuides(companyId: companyId, active: active, q: q, tag: tag, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company for which the size guides are to be fetched. |   
| active | Bool? | filter size guide on basis of active, in-active |   
| q | String? | Query that is to be searched. |   
| tag | String? | to filter size guide on basis of tag. |   
| pageNo | Int? | The page number to navigate through the given set of results |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 10. |  

This API allows to view all the size guides associated to the seller.

*Success Response:*



Size guide object. See example below or refer `ListSizeGuide` for details


Schema: `ListSizeGuide`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createSizeGuide
Create a size guide.

```swift
catalog.createSizeGuide(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company inside which the size guide is to be created. |  

This API allows to create a size guide associated to a brand.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### updateSizeGuide
Edit a size guide.

```swift
catalog.updateSizeGuide(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company. |   
| id | String? | Mongo id of the size guide to be edited |  

This API allows to edit a size guide.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getSizeGuide
Get a single size guide.

```swift
catalog.getSizeGuide(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company associated to size guide. |   
| id | String? | Id of the size guide to be viewed. |  

This API helps to get data associated to a size guide.

*Success Response:*



Brand object. See example below or refer `SizeGuideResponseSchema` for details


Schema: `SizeGuideResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCatalogConfiguration
Get configuration meta  details for catalog for admin panel

```swift
catalog.getCatalogConfiguration(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

configuration meta  details for catalog.

*Success Response:*



configuration details for catalog. See example below or refer `GetCatalogConfigurationMetaDataSchema` for details


Schema: `GetCatalogConfigurationMetaData`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getConfigurations
Get configured details for catalog

```swift
catalog.getConfigurations(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

configured details for catalog.

*Success Response:*



Get application level configured catalog details. See example below or refer `GetAppCatalogConfigurationSchema` for details


Schema: `GetAppCatalogConfiguration`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createConfigurationProductListing
Add configuration for products & listings

```swift
catalog.createConfigurationProductListing(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

Add configuration for products & listing.

*Success Response:*



success flag will tell whether the operation was successful.


Schema: `GetAppCatalogConfiguration`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getConfigurationByType
Get configured details for catalog

```swift
catalog.getConfigurationByType(companyId: companyId, applicationId: applicationId, type: type) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| type | String? | type can be brands, categories etc. |  

configured details for catalog.

*Success Response:*



Get application level configured catalog details. See example below or refer `GetAppCatalogEntityConfigurationSchema` for details


Schema: `GetAppCatalogEntityConfiguration`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createConfigurationByType
Add configuration for categories and brands

```swift
catalog.createConfigurationByType(companyId: companyId, applicationId: applicationId, type: type, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| type | String? | type can be brands, categories etc. |  

Add configuration for categories & brands.

*Success Response:*



success flag will tell whether the operation was successful.


Schema: `GetAppCatalogConfiguration`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getQueryFilters
Get query filters to configure a collection

```swift
catalog.getQueryFilters(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

Get query filters to configure a collection

*Success Response:*



The attached items of an collection. See example below or refer `GetCollectionQueryOptionResponse` for details


Schema: `GetCollectionQueryOptionResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getAllCollections
List all the collections

```swift
catalog.getAllCollections(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections as specified in `CollectionListingSchema`

*Success Response:*



List of collections. See example below or refer `GetCollectionListingResponse` for details


Schema: `GetCollectionListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createCollection
Add a Collection

```swift
catalog.createCollection(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

Create a collection. See `CreateCollectionRequestSchema` for the list of attributes needed to create a collection and collections/query-options for the available options to create a collection. On successful request, returns a paginated list of collections specified in `CollectionCreateResponse`

*Success Response:*



List of all the collections including the one you added. See example below or refer `CollectionCreateResponse` for details


Schema: `CollectionCreateResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCollectionDetail
Get a particular collection

```swift
catalog.getCollectionDetail(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| slug | String? | A `slug` is a human readable, URL friendly unique identifier of an object. Pass the `slug` of the collection which you want to retrieve. |  

Get the details of a collection by its `slug`. If successful, returns a Collection resource in the response body specified in `CollectionDetailResponse`

*Success Response:*



The Collection object. See example below or refer `CollectionDetailResponse` for details


Schema: `CollectionDetailResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### updateCollection
Update a collection

```swift
catalog.updateCollection(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | A `id` is a unique identifier of a collection. |  

Update a collection by it's id. On successful request, returns the updated collection

*Success Response:*



The Collection object. See example below or refer `UpdateCollectionSchema` for details.


Schema: `UpdateCollection`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### deleteCollection
Delete a Collection

```swift
catalog.deleteCollection(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | A `id` is a unique identifier of a collection. |  

Delete a collection by it's id. Returns an object that tells whether the collection was deleted successfully

*Success Response:*



Status object. Tells whether the operation was successful. See example below or refer `DeleteResponse`


Schema: `DeleteResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCollectionItems
Get the items for a collection

```swift
catalog.getCollectionItems(companyId: companyId, applicationId: applicationId, id: id, sortOn: sortOn, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | A `id` is a unique identifier of a collection. |   
| sortOn | String? | Each response will contain sort_on param, which should be sent back to make pagination work. |   
| pageId | String? | Each response will contain next_id param, which should be sent back to make pagination work. |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

Get items from a collection specified by its `id`.

*Success Response:*



The attached items of an collection. See example below or refer `GetCollectionItemsResponseSchema` for details


Schema: `GetCollectionItemsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### addCollectionItems
Add items to a collection

```swift
catalog.addCollectionItems(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| id | String? | A `id` is a unique identifier of a collection. |  

Adds items to a collection specified by its `id`. See `CollectionItemRequest` for the list of attributes needed to add items to an collection.

*Success Response:*



Status object. Tells whether the operation was successful.


Schema: `UpdatedResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCatalogInsights
Analytics data of catalog and inventory.

```swift
catalog.getCatalogInsights(companyId: companyId, applicationId: applicationId, brand: brand) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| brand | String? | Brand slug |  

Catalog Insights api returns the count of catalog related data like products, brands, departments and categories that have been made live as per configuration of the app.

*Success Response:*



Response Data


Schema: `CatalogInsightResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getSellerInsights
Analytics data of catalog and inventory that are being cross-selled.

```swift
catalog.getSellerInsights(companyId: companyId, sellerAppId: sellerAppId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| sellerAppId | String? | Id of the seller application which is serving the invetory/catalog of the company |  

Analytics data of catalog and inventory that are being cross-selled.

*Success Response:*



Response Data


Schema: `CrossSellingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createMarketplaceOptin
Create/Update opt-in infomation.

```swift
catalog.createMarketplaceOptin(companyId: companyId, marketplace: marketplace, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | The company id for which the detail needs to be retrieved. |   
| marketplace | String? | The marketplace for which the detail needs to be retrieved. |  

Use this API to create/update opt-in information for given platform. If successful, returns data in the response body as specified in `OptInPostResponseSchema`

*Success Response:*



See example below or refer `UpdatedResponse` for details.


Schema: `UpdatedResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getMarketplaceOptinDetail
Get opt-in infomation.

```swift
catalog.getMarketplaceOptinDetail(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? |  |  

Use this API to fetch opt-in information for all the platforms. If successful, returns a logs in the response body as specified in `GetOptInPlatformSchema`

*Success Response:*



See example below or refer `GetOptInPlatformSchema` for details.


Schema: `GetOptInPlatform`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCompanyDetail
Get the Company details.

```swift
catalog.getCompanyDetail(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | The company id for which the detail needs to be retrieved. |  

Get the details of the company associated with the given company_id passed.

*Success Response:*



See example below or refer `OptinCompanyDetailSchema` for details


Schema: `OptinCompanyDetail`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCompanyBrandDetail
Get the Company Brand details of Optin.

```swift
catalog.getCompanyBrandDetail(companyId: companyId, isActive: isActive, q: q, pageNo: pageNo, pageSize: pageSize, marketplace: marketplace) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | The company id for which the detail needs to be retrieved. |   
| isActive | Bool? | The is_active status for the optin id. |   
| q | Bool? | The search value to filter the list. |   
| pageNo | Int? | The number of page for the company id. |   
| pageSize | Int? | Number of records that can be seen on the page for the company id. |   
| marketplace | String? | The marketplace platform associated with the company id. |  

Get the details of the Brands associated with the given company_id passed.

*Success Response:*



See example below or refer `OptinCompanyBrandDetailsView` for details


Schema: `OptinCompanyBrandDetailsView`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCompanyMetrics
Get the Company metrics

```swift
catalog.getCompanyMetrics(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | The company id for which the detail needs to be retrieved. |  

Get the Company metrics associated with the company ID passed.

*Success Response:*



See example below or refer `OptinCompanyMetrics` for details


Schema: `OptinCompanyMetrics`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getStoreDetail
Get the Store details.

```swift
catalog.getStoreDetail(companyId: companyId, q: q, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | The company id for which the detail needs to be retrieved. |   
| q | String? | The search related the store for the company id. |   
| pageNo | Int? | The number of page for the company id. |   
| pageSize | Int? | Number of records that can be seen on the page for the company id. |  

Get the details of the store associated with the company ID passed.

*Success Response:*



See example below or refer `OptinStoreDetailsSchema` for details


Schema: `OptinStoreDetails`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getGenderAttribute
Get gender attribute details

```swift
catalog.getGenderAttribute(companyId: companyId, attributeSlug: attributeSlug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company for which you want to view the genders |   
| attributeSlug | String? | slug of the attribute for which you want to view the genders |  

This API allows to view the gender attribute details.

*Success Response:*



Size guide object. See example below or refer `GenderDetailSchema` for details


Schema: `GenderDetail`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### listProductTemplateCategories
List Department specifiec product categories

```swift
catalog.listProductTemplateCategories(companyId: companyId, departments: departments, itemType: itemType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| departments | String? | A `department` is name of a departments whose category needs to be listed. Can specify multiple departments. |   
| itemType | String? | An `item_type` is the type of item, it can be `set`, `standard`, `digital`, etc. |  

Allows you to list all product categories values for the departments specified

*Success Response:*



List of all categories attached to departments specified. See example below or refer `ProdcutTemplateCategoriesResponse` for details


Schema: `ProdcutTemplateCategoriesResponse`





Bad request. See the error object in the response body for specific reason


Schema: `PTErrorResponse`






---


#### listDepartmentsData
List all Departments

```swift
catalog.listDepartmentsData(companyId: companyId, pageNo: pageNo, pageSize: pageSize, name: name, search: search, isActive: isActive) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| pageNo | Int? | The page number to navigate through the given set of results |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 10. |   
| name | String? | Can search departments by passing name. |   
| search | String? | Can search departments by passing name of the department in search parameter. |   
| isActive | Bool? | Can query for departments based on whether they are active or inactive. |  

Allows you to list all departments, also can search using name and filter active and incative departments, and item type

*Success Response:*



List of departments data. See example below or refer `DepartmentsResponse` for details


Schema: `DepartmentsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `DepartmentErrorResponse`






---


#### getDepartmentData
Get specific departments details by passing in unique id of the department

```swift
catalog.getDepartmentData(companyId: companyId, uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| uid | String? | A `uid` is a unique identifier of a department. |  

Allows you to get department data, by uid

*Success Response:*



Departments Data. See example below or refer `DepartmentsResponse` for details


Schema: `DepartmentsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `DepartmentErrorResponse`






---


#### listProductTemplate
List all Templates

```swift
catalog.listProductTemplate(companyId: companyId, departments: departments) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| departments | String? | A `departments` is the name of a particular department. |  

Allows you to list all product templates, also can filter by department

*Success Response:*



List of product templates. See example below or refer `TemplatesResponse` for details


Schema: `TemplatesResponse`





Bad request. See the error object in the response body for specific reason


Schema: `PTErrorResponse`






---


#### validateProductTemplate
Validate Product Template Schema

```swift
catalog.validateProductTemplate(companyId: companyId, slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| slug | String? | A `slug` is a unique identifier for a particular template. |  

Allows you to list all product templates validation values for all the fields present in the database

*Success Response:*



List of fields and validation values fro each. See example below or refer `TemplatesValidationResponse` for details


Schema: `TemplatesValidationResponse`





Bad request. See the error object in the response body for specific reason


Schema: `PTErrorResponse`






---


#### downloadProductTemplateViews
Download Product Template View

```swift
catalog.downloadProductTemplateViews(companyId: companyId, slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| slug | String? | A `slug` is a unique identifier for a particular template. |  

Allows you to download product template data

*Success Response:*



CSV File of product template data. See example below or refer `TemplatesResponse` for details


Schema: `String`





Bad request. See the error object in the response body for specific reason


Schema: `PTErrorResponse`






---


#### downloadProductTemplateView
Download Product Template View

```swift
catalog.downloadProductTemplateView(companyId: companyId, itemType: itemType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| itemType | String? | An `item_type` defines the type of item. |  

Allows you to download product template data

*Success Response:*



CSV File of product template data.


Schema: `String`





Bad request. See the error object in the response body for specific reason


Schema: `PTErrorResponse`






---


#### validateProductTemplateSchema
Validate Product Template Schema

```swift
catalog.validateProductTemplateSchema(companyId: companyId, itemType: itemType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| itemType | String? | An `item_type` defines the type of item. The default value is standard. |  

Allows you to list all product templates validation values for all the fields present in the database

*Success Response:*



List of fields and validation values fro each. See example below or refer `InventoryValidationResponse` for details


Schema: `InventoryValidationResponse`





Bad request. See the error object in the response body for specific reason


Schema: `PTErrorResponse`






---


#### listHSNCodes
List HSN Codes

```swift
catalog.listHSNCodes(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |  

Allows you to list all hsn Codes

*Success Response:*



List of all HSN Codes. See example below or refer `HSNCodesResponse` for details


Schema: `HSNCodesResponse`





Bad request. See the error object in the response body for specific reason


Schema: `PTErrorResponse`






---


#### listProductTemplateExportDetails
Allows you to list all product templates export list details

```swift
catalog.listProductTemplateExportDetails(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |  

Can view details including trigger data, task id , etc.

*Success Response:*



List of Product Downloads Data. See example below or refer `ProductDownloadsResponse` for details


Schema: `ProductDownloadsResponse`





Bad request. See the error object in the response body for specific reason


Schema: `PTErrorResponse`






---


#### listTemplateBrandTypeValues
Allows you to list all values for Templates, Brands or Type

```swift
catalog.listTemplateBrandTypeValues(companyId: companyId, filter: filter) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| filter | String? | A `filter` is the unique identifier of the type of value required. |  

The filter type query parameter defines what type of data to return. The type of query returns the valid values for the same

*Success Response:*



See example below or refer `ProductConfigurationDownloadsSchema` for details


Schema: `ProductConfigurationDownloads`





Bad request. See the error object in the response body for specific reason


Schema: `PTErrorResponse`






---


#### listCategories
Get product categories list

```swift
catalog.listCategories(companyId: companyId, level: level, departments: departments, q: q, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| level | String? | Get category for multiple levels |   
| departments | String? | Get category for multiple departments filtered |   
| q | String? | Get multiple categories filtered by search string |   
| pageNo | Int? | The page number to navigate through the given set of results |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 10. |  

This API gets meta associated to product categories.

*Success Response:*



Category Meta. See example below or refer `CategoryResponse` for details


Schema: `CategoryResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createCategories
Create product categories

```swift
catalog.createCategories(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |  

This API lets user create product categories

*Success Response:*



Category Meta. See example below or refer `CategoryCreateResponse` for details


Schema: `CategoryCreateResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### updateCategory
Update product categories

```swift
catalog.updateCategory(companyId: companyId, uid: uid, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| uid | String? | Category unique id |  

Update a product category using this apu

*Success Response:*



Category Meta. See example below or refer `CategoryUpdateResponse` for details


Schema: `CategoryUpdateResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCategoryData
Get product category by uid

```swift
catalog.getCategoryData(companyId: companyId, uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| uid | String? | Category unique id |  

This API gets meta associated to product categories.

*Success Response:*



Get Data for one category. See example below or refer `CategoryResponse` for details


Schema: `SingleCategoryResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProducts
Get product list

```swift
catalog.getProducts(companyId: companyId, brandIds: brandIds, categoryIds: categoryIds, search: search, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Double? | Get list of products filtered by company Id |   
| brandIds | Double? | Get multiple products filtered by brand Ids |   
| categoryIds | Double? | Get multiple products filtered by category Ids |   
| search | String? | Get multiple products filtered by search string |   
| pageNo | Int? | The page number to navigate through the given set of results |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 10. |  

This API gets meta associated to products.

*Success Response:*



Product Meta. See example below for details


Schema: `ProductListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createProduct
Create a product.

```swift
catalog.createProduct(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company associated to product that is to be viewed. |  

This API allows to create product.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### editProduct
Edit a product.

```swift
catalog.editProduct(companyId: companyId, itemId: itemId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company associated to product that is to be viewed. |   
| itemId | Int? | Id of the product to be updated. |  

This API allows to edit product.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### deleteProduct
Delete a product.

```swift
catalog.deleteProduct(companyId: companyId, itemId: itemId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id of the company associated to product that is to be deleted. |   
| itemId | Int? | Id of the product to be updated. |  

This API allows to delete product.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProduct
Get a single product.

```swift
catalog.getProduct(itemCode: itemCode, companyId: companyId, itemId: itemId, brandUid: brandUid, uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| itemCode | String? | Item code of the product. |   
| companyId | Int? | Company Id of the product. |   
| itemId | Int? | Item Id of the product. |   
| brandUid | Int? | Brand Id of the product. |   
| uid | Int? | Id of the product. |  

This API helps to get data associated to a particular product.

*Success Response:*



Product object. See example below or refer `product.utils.format_product_response` for details


Schema: `Product`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductValidation
Validate product/size data

```swift
catalog.getProductValidation(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Double? | Validates data against given company |  

This API validates product data.

*Success Response:*



Validate Meta. See example below for details


Schema: `ValidateProduct`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductSize
Get a single product size.

```swift
catalog.getProductSize(itemCode: itemCode, companyId: companyId, itemId: itemId, brandUid: brandUid, uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| itemCode | String? | Item code of the product size. |   
| companyId | Int? | Company Id of the product size. |   
| itemId | Int? | Item Id of the product size. |   
| brandUid | Int? | Brand Id of the product size. |   
| uid | Int? | Id of the product size. |  

This API helps to get data associated to a particular product size.

*Success Response:*



Product object. See example below for details


Schema: `ProductListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductBulkUploadHistory
Get a list of all bulk product upload jobs.

```swift
catalog.getProductBulkUploadHistory(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id of of which Product Bulk Upload History to be obtained. |   
| pageNo | Int? | The page number to navigate through the given set of results |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

This API helps to get bulk product upload jobs data.

*Success Response:*



List of bulk product upload jobs. See `BulkRequestGetSchema` for details


Schema: `ProductBulkRequestList`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### updateProductAssetsInBulk
Create a Bulk asset upload Job.

```swift
catalog.updateProductAssetsInBulk(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id in which assets to be uploaded. |  

This API helps to create a bulk asset upload job.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### deleteProductBulkJob
Delete Bulk product job.

```swift
catalog.deleteProductBulkJob(companyId: companyId, batchId: batchId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id of the company associated to size that is to be deleted. |   
| batchId | Int? | Batch Id of the bulk product job to be deleted. |  

This API allows to delete bulk product job associated with company.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createProductsInBulk
Create products in bulk associated with given batch Id.

```swift
catalog.createProductsInBulk(companyId: companyId, batchId: batchId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id in which assets to be uploaded. |   
| batchId | String? | Batch Id in which assets to be uploaded. |  

This API helps to create products in bulk push to kafka for approval/creation.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCompanyTags
Get a list of all tags associated with company.

```swift
catalog.getCompanyTags(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id of the product size. |  

This API helps to get tags data associated to a particular copmpany.

*Success Response:*



Tag List. See example below for details


Schema: `ProductTagsViewResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductAssetsInBulk
Get a list of all bulk asset jobs.

```swift
catalog.getProductAssetsInBulk(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id of the product size. |   
| pageNo | Int? | The page number to navigate through the given set of results |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

This API helps to get bulk asset jobs data associated to a particular company.

*Success Response:*



List of bulk asset jobs List. See `BulkUtil.modify_batch_response` for details


Schema: `BulkAssetResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createProductAssetsInBulk
Create a Bulk asset upload Job.

```swift
catalog.createProductAssetsInBulk(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id in which assets to be uploaded. |  

This API helps to create a bulk asset upload job.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### deleteSize
Delete a Size associated with product.

```swift
catalog.deleteSize(companyId: companyId, itemId: itemId, size: size) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id of the company associated to size that is to be deleted. |   
| itemId | Int? | Item Id of the product associated with size to be deleted. |   
| size | Int? | size to be deleted. |  

This API allows to delete size associated with product.

*Success Response:*



Returns a success response


Schema: `ProductSizeDeleteResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getInventory
Get Inventory for company

```swift
catalog.getInventory(companyId: companyId, itemId: itemId, size: size, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company associated to product that is to be viewed. |   
| itemId | String? | Item code of the product of which size is to be get. |   
| size | String? | Size of which inventory is to get. |   
| pageNo | Int? | The page number to navigate through the given set of results |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

This API allows get Inventory data for particular company grouped by size and store.

*Success Response:*



returns a list of all inventory grouped by size and store


Schema: `InventoryResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### addInventory
Add Inventory for particular size and store.

```swift
catalog.addInventory(companyId: companyId, itemId: itemId, size: size, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company associated to product that is to be viewed. |   
| itemId | Double? | Item code of the product of which size is to be get. |   
| size | String? | Size in which inventory is to be added. |  

This API allows add Inventory for particular size and store.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### deleteInventory
Delete a Inventory.

```swift
catalog.deleteInventory(companyId: companyId, itemId: itemId, locationId: locationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id of the company associated with Inventory that is to be deleted. |   
| itemId | Int? | Id of the product associated with Inventory to be deleted. |   
| locationId | Double? | Location ID of store of which inventory is to be deleted. |  

This API allows to delete inventory of a particular product for particular company.

*Success Response:*



Returns a success response


Schema: `InventoryDelete`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getInventoryBulkUploadHistory
Get a list of all bulk Inventory upload jobs.

```swift
catalog.getInventoryBulkUploadHistory(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id of of which Inventory Bulk Upload History to be obtained. |   
| pageNo | Int? | The page number to navigate through the given set of results |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |  

This API helps to get bulk Inventory upload jobs data.

*Success Response:*



List of bulk Inventory upload jobs. See `BulkInventoryGetSchema` for details


Schema: `BulkInventoryGet`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createBulkInventoryJob
Create a Bulk Inventory upload Job.

```swift
catalog.createBulkInventoryJob(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id in which Inventory to be uploaded. |  

This API helps to create a bulk Inventory upload job.

*Success Response:*



Returns a success response


Schema: `CommonResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### deleteBulkInventoryJob
Delete Bulk Inventory job.

```swift
catalog.deleteBulkInventoryJob(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id of the company of which bulk Inventory job is to be deleted. |  

This API allows to delete bulk Inventory job associated with company.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createBulkInventory
Create products in bulk associated with given batch Id.

```swift
catalog.createBulkInventory(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id in which Inventory is to be uploaded. |  

This API helps to create products in bulk push to kafka for approval/creation.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getInventoryExport
Get Inventory export history.

```swift
catalog.getInventoryExport(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id in which assets to be uploaded. |  

This API helps to get Inventory export history.

*Success Response:*



Returns a list of inventory export jobs


Schema: `InventoryExportJob`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createInventoryExportJob
Create a Inventory export Job.

```swift
catalog.createInventoryExportJob(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id in which assets to be uploaded. |  

This API helps to create a Inventory export job.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### exportInventoryConfig
Get List of different filters for inventory export

```swift
catalog.exportInventoryConfig(companyId: companyId, filterType: filterType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company associated to product that is to be viewed. |   
| filterType | String? | filter type from any one of ['brand', 'store', 'type'] |  

This API allows get List of different filters like brand, store, and type for inventory export.

*Success Response:*



returns filters configuration for inventory export


Schema: `InventoryConfig`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getAllHsnCodes
Hsn Code List.

```swift
catalog.getAllHsnCodes(companyId: companyId, pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| pageNo | Int? | page no |   
| pageSize | Int? | page size |   
| q | String? | search using hsn code. |  

Hsn Code List.

*Success Response:*



List of all HSN Codes. See example below or refer `HsnCodesListingResponseSchema` for details


Schema: `HsnCodesListingResponse`





Bad request.


Schema: `ErrorResponse`






---


#### createHsnCode
Create Hsn Code.

```swift
catalog.createHsnCode(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |  

Create Hsn Code.

*Success Response:*



See example below for details


Schema: `HsnCode`





Bad request.


Schema: `ErrorResponse`






---


#### updateHsnCode
Update Hsn Code.

```swift
catalog.updateHsnCode(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| id | String? | Unique id |  

Update Hsn Code.

*Success Response:*



See example below for details


Schema: `HsnCode`





Bad request.


Schema: `ErrorResponse`






---


#### getHsnCode
Fetch Hsn Code.

```swift
catalog.getHsnCode(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| id | String? | Unique id |  

Fetch Hsn Code.

*Success Response:*



See example below details


Schema: `HsnCode`





Bad request.


Schema: `ErrorResponse`






---


#### bulkHsnCode
Bulk Create or Update Hsn Code.

```swift
catalog.bulkHsnCode(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |  

Bulk Create or Update Hsn Code.

*Success Response:*



See example below for details


Schema: `BulkHsnResponse`





Bad request.


Schema: `ErrorResponse`






---


#### getApplicationBrands
List all the brands

```swift
catalog.getApplicationBrands(companyId: companyId, applicationId: applicationId, department: department, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
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


#### getDepartments
List all the departments

```swift
catalog.getDepartments(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |  

Departments are a way to categorise similar products. A product can lie in multiple departments. For example, a skirt can below to the 'Women's Fashion' Department while a handbag can lie in 'Women's Accessories' Department. Use this API to list all the departments. If successful, returns the list of departments specified in `DepartmentResponse`

*Success Response:*



List of Departments. See example below or refer `DepartmentResponse` for details.


Schema: `DepartmentResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCategories
List all the categories

```swift
catalog.getCategories(companyId: companyId, applicationId: applicationId, department: department) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| department | String? | The name of the department. Use this parameter to filter products by a particular department. See below the list of available departments. You can retrieve available departments from the **v1.0/departments/** API |  

List all the categories. You can optionally pass filter the brands by the department. If successful, returns a paginated list of brands specified in `CategoryListingResponse`

*Success Response:*



List of Categories. See example below or refer `CategoryListingResponse` for details.


Schema: `CategoryListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getAppicationProducts
List the products

```swift
catalog.getAppicationProducts(companyId: companyId, applicationId: applicationId, q: q, f: f, filters: filters, sortOn: sortOn, pageId: pageId, pageSize: pageSize, pageNo: pageNo, pageType: pageType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| q | String? | The search query. This can be a partial or complete name of a either a product, brand or category |   
| f | String? | The search filter parameters. All the parameter filtered from filter parameters will be passed in **f** parameter in this format. **?f=brand:voi-jeans||and:::category:t-shirts||shirts** |   
| filters | Bool? | Pass `filters` parameter to fetch the filter details. This flag is used to fetch all filters |   
| sortOn | String? | The order to sort the list of products on. The supported sort parameters are popularity, price, redemption and discount in either ascending or descending order. See the supported values below. |   
| pageId | String? | Each response will contain **page_id** param, which should be sent back to make pagination work. |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 12. |   
| pageNo | Int? | If page_type is number then pass it to fetch page items. Default is 1. |   
| pageType | String? | For pagination type should be cursor or number. Default is cursor. |  

List all the products associated with a brand, collection or category in a requested sort order. The API additionally supports arbitrary search queries that may refer the name of any product, brand, category or collection. If successful, returns a paginated list of products specified in `ApplicationProductListingResponse`

*Success Response:*



List of Products. See example below or refer `ApplicationProductListingResponse` for details


Schema: `ApplicationProductListingResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getProductDetailBySlug
Get a product

```swift
catalog.getProductDetailBySlug(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |   
| applicationId | String? | A `application_id` is a unique identifier for a particular sale channel. |   
| slug | String? | The unique identifier of a product. i.e; `slug` of a product. You can retrieve these from the APIs that list products like **v1.0/products/** |  

Products are the core resource of an application. Products can be associated by categories, collections, brands and more. This API retrieves the product specified by the given **slug**. If successful, returns a Product resource in the response body specified in `ProductDetail`

*Success Response:*



The Product object. See example below or refer `ProductDetail` for details.


Schema: `ProductDetail`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---



---


## CompanyProfile


#### cbsOnboardGet
Get company profile

```swift
companyprofile.cbsOnboardGet(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |  

This API allows to view the company profile of the seller account.

*Success Response:*



Company profile object. See example below or refer `GetCompanyProfileSerializerResponse` for details


Schema: `GetCompanyProfileSerializerResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### updateCompany
Edit company profile

```swift
companyprofile.updateCompany(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |  

This API allows to edit the company profile of the seller account.

*Success Response:*



Returns a success message


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getCompanyMetrics
Get company metrics

```swift
companyprofile.getCompanyMetrics(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | A `company_id` is a unique identifier for a particular seller account. |  

This API allows to view the company metrics, i.e. the status of its brand and stores. Also its allows to view the number of products, company documents & store documents which are verified and unverified.

*Success Response:*



Metrics response object. See example below or refer `MetricsSerializer` for details


Schema: `MetricsSerializer`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getBrand
Get a single brand.

```swift
companyprofile.getBrand(companyId: companyId, brandId: brandId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company associated to brand that is to be viewed. |   
| brandId | String? | Id of the brand to be viewed. |  

This API helps to get data associated to a particular brand.

*Success Response:*



Brand object. See example below or refer `GetBrandResponseSerializer` for details


Schema: `GetBrandResponseSerializer`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### editBrand
Edit a brand.

```swift
companyprofile.editBrand(companyId: companyId, brandId: brandId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company associated to brand that is to be viewed. |   
| brandId | String? | Id of the brand to be viewed. |  

This API allows to edit meta of a brand.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createBrand
Create a Brand.

```swift
companyprofile.createBrand(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company. |  

This API allows to create a brand associated to a company.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getBrands
Get brands associated to a company

```swift
companyprofile.getBrands(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company. |   
| pageNo | Int? | The page number to navigate through the given set of results |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 10. |  

This API helps to get view brands associated to a particular company.

*Success Response:*



Brand object. See example below or refer `CompanyBrandListSerializer` for details


Schema: `CompanyBrandListSerializer`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createCompanyBrandMapping
Create a company brand mapping.

```swift
companyprofile.createCompanyBrandMapping(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company inside which the brand is to be mapped. |  

This API allows to create a company brand mapping, for a already existing brand in the system.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getLocations
Get list of locations

```swift
companyprofile.getLocations(companyId: companyId, storeType: storeType, q: q, stage: stage, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company whose locations are to fetched |   
| storeType | String? | Helps to sort the location list on the basis of location type. |   
| q | String? | Query that is to be searched. |   
| stage | String? | to filter companies on basis of verified or unverified companies. |   
| pageNo | Int? | The page number to navigate through the given set of results |   
| pageSize | Int? | Number of items to retrieve in each page. Default is 10. |  

This API allows to view all the locations asscoiated to a company.

*Success Response:*



Company profile object. See example below or refer `LocationListSerializer` for details


Schema: `LocationListSerializer`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createLocation
Create a location asscoiated to a company.

```swift
companyprofile.createLocation(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company inside which the location is to be created. |  

This API allows to create a location associated to a company.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### getLocationDetail
Get details of a specific location.

```swift
companyprofile.getLocationDetail(companyId: companyId, locationId: locationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company inside which the location lies. |   
| locationId | String? | Id of the location which you want to view. |  

This API helps to get data associated to a specific location.

*Success Response:*



Brand object. See example below or refer `GetLocationSerializer` for details


Schema: `GetLocationSerializer`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### updateLocation
Edit a location asscoiated to a company.

```swift
companyprofile.updateLocation(companyId: companyId, locationId: locationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company inside which the location is to be created. |   
| locationId | String? | Id of the location which you want to edit. |  

This API allows to edit a location associated to a company.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---


#### createLocationBulk
Create a location asscoiated to a company in bulk.

```swift
companyprofile.createLocationBulk(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Id of the company inside which the location is to be created. |  

This API allows to create a location associated to a company.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`





Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`






---



---


## FileStorage


#### startUpload
This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.

```swift
filestorage.startUpload(namespace: namespace, companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| namespace | String? | bucket name |   
| companyId | Int? | company_id |  

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
filestorage.completeUpload(namespace: namespace, companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| namespace | String? | bucket name |   
| companyId | Int? | company_id |  

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


#### appStartUpload
This operation initiates upload and returns storage link which is valid for 30 Minutes. You can use that storage link to make subsequent upload request with file buffer or blob.

```swift
filestorage.appStartUpload(namespace: namespace, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| namespace | String? | bucket name |   
| companyId | Int? | company_id |   
| applicationId | String? | application id |  

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


*Success Response:*



Success


Schema: `StartResponse`





Failed


Schema: `FailedResponse`






---


#### appCompleteUpload
This will complete the upload process. After successfully uploading file, you can call this operation to complete the upload process.

```swift
filestorage.appCompleteUpload(namespace: namespace, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| namespace | String? | bucket name |   
| companyId | Int? | company_id |   
| applicationId | String? | application id |  

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


*Success Response:*



Success


Schema: `CompleteResponse`





Failed


Schema: `FailedResponse`






---


#### getSignUrls
Explain here

```swift
filestorage.getSignUrls(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |  

Describe here

*Success Response:*



Success


Schema: `SignUrlResponse`





Failed


Schema: `FailedResponse`






---


#### copyFiles
Copy Files

```swift
filestorage.copyFiles(sync: sync, companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| sync | Bool? | sync |   
| companyId | Int? | company_id |  

Copy Files

*Success Response:*



Success


Schema: `BulkResponse`





Failed


Schema: `FailedResponse`






---


#### appCopyFiles
Copy Files

```swift
filestorage.appCopyFiles(sync: sync, companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| sync | Bool? | sync |   
| companyId | Int? | company_id |   
| applicationId | Int? | application_id |  

Copy Files

*Success Response:*



Success


Schema: `BulkResponse`





Failed


Schema: `FailedResponse`






---


#### browse
Browse Files

```swift
filestorage.browse(namespace: namespace, companyId: companyId, pageNo: pageNo) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| namespace | String? | bucket name |   
| companyId | Int? | company_id |   
| pageNo | Int? | page no |  

Browse Files

*Success Response:*



Success


Schema: `BrowseResponse`





Failed


Schema: `FailedResponse`






---


#### browse
Browse Files

```swift
filestorage.browse(namespace: namespace, companyId: companyId, applicationId: applicationId, pageNo: pageNo) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| namespace | String? | bucket name |   
| companyId | Int? | company_id |   
| applicationId | Int? | application_id |   
| pageNo | Int? | page no |  

Browse Files

*Success Response:*



Success


Schema: `BrowseResponse`





Failed


Schema: `FailedResponse`






---


#### proxy
Proxy

```swift
filestorage.proxy(companyId: companyId, url: url) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |   
| url | String? | url |  

Proxy

*Success Response:*



Success


Schema: `String`






---



---


## Share


#### createShortLink
Create short link

```swift
share.createShortLink(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |  

Create short link

*Success Response:*



Success


Schema: `ShortLinkRes`





Error


Schema: `ErrorRes`






---


#### getShortLinks
Get short links

```swift
share.getShortLinks(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, createdBy: createdBy, active: active, q: q) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| pageNo | Int? | Current page number |   
| pageSize | Int? | Current page size |   
| createdBy | String? | Short link creator |   
| active | String? | Short link active status |   
| q | String? | Search text for original and short url |  

Get short links

*Success Response:*



Success


Schema: `ShortLinkList`





Error


Schema: `ErrorRes`






---


#### getShortLinkByHash
Get short link by hash

```swift
share.getShortLinkByHash(companyId: companyId, applicationId: applicationId, hash: hash) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| hash | String? | Hash of short url |  

Get short link by hash

*Success Response:*



Success


Schema: `ShortLinkRes`





Error


Schema: `ErrorRes`






---


#### updateShortLinkById
Update short link by id

```swift
share.updateShortLinkById(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| id | String? | Short link document identifier |  

Update short link by id

*Success Response:*



Success


Schema: `ShortLinkRes`





Error


Schema: `ErrorRes`






---



---


## Inventory


#### getJobsByCompany
Get Job Configs For A Company

```swift
inventory.getJobsByCompany(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| pageNo | Int? | Page Number |   
| pageSize | Int? | Page Size |  

REST Endpoint that returns all job configs for a company

*Success Response:*



Successful operation


Schema: `ResponseEnvelopeListJobConfigRawDTO`





Bad Request


Schema: `ResponseEnvelopeListJobConfigRawDTO`





Internal Server Error


Schema: `ResponseEnvelopeListJobConfigRawDTO`






---


#### updateJob
Updates An Existing Job Config

```swift
inventory.updateJob(companyId: companyId, xUserData: xUserData, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| xUserData | String? |  |  

REST Endpoint that updates a job config

*Success Response:*



Job Config Updated Successfully


Schema: `ResponseEnvelopeString`





Bad Request


Schema: `ResponseEnvelopeString`





Unauthorized


Schema: `ResponseEnvelopeString`





Internal Server Error


Schema: `ResponseEnvelopeString`






---


#### createJob
Creates A New Job Config

```swift
inventory.createJob(companyId: companyId, xUserData: xUserData, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| xUserData | String? |  |  

REST Endpoint that creates a new job config

*Success Response:*



Job Config Created Successfully


Schema: `ResponseEnvelopeString`





Bad Request


Schema: `ResponseEnvelopeString`





Unauthorized


Schema: `ResponseEnvelopeString`





Job Config Already Exists


Schema: `ResponseEnvelopeString`





Internal Server Error


Schema: `ResponseEnvelopeString`






---


#### getJobByCompanyAndIntegration
Get Job Configs By Company And Integration

```swift
inventory.getJobByCompanyAndIntegration(companyId: companyId, integrationId: integrationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| integrationId | String? | Integration Id |   
| pageNo | Int? | Page Number |   
| pageSize | Int? | Page Size |  

REST Endpoint that returns all job configs by company And integration

*Success Response:*



Successful operation


Schema: `ResponseEnvelopeListJobConfigDTO`





Bad Request


Schema: `ResponseEnvelopeListJobConfigDTO`





Internal Server Error


Schema: `ResponseEnvelopeListJobConfigDTO`






---


#### getJobConfigDefaults
Get Job Configs Defaults

```swift
inventory.getJobConfigDefaults(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |  

REST Endpoint that returns default fields job configs by company And integration

*Success Response:*



Successful operation


Schema: `ResponseEnvelopeJobConfigDTO`





Bad Request


Schema: `ResponseEnvelopeJobConfigDTO`





Internal Server Error


Schema: `ResponseEnvelopeJobConfigDTO`






---


#### getJobByCode
Get Job Config By Code

```swift
inventory.getJobByCode(companyId: companyId, code: code) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| code | String? | Job Code |  

REST Endpoint that returns job config by code

*Success Response:*



Successful operation


Schema: `ResponseEnvelopeJobConfigDTO`





Bad Request


Schema: `ResponseEnvelopeJobConfigDTO`





Internal Server Error


Schema: `ResponseEnvelopeJobConfigDTO`






---


#### getJobCodesByCompanyAndIntegration
Get Job Codes By Company And Integration

```swift
inventory.getJobCodesByCompanyAndIntegration(companyId: companyId, integrationId: integrationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | Company Id |   
| integrationId | String? | Integration Id |   
| pageNo | Int? | Page Number |   
| pageSize | Int? | Page Size |  

REST Endpoint that returns all job codes by company And integration

*Success Response:*



Successful operation


Schema: `ResponseEnvelopeListJobConfigListDTO`





Bad Request


Schema: `ResponseEnvelopeListJobConfigListDTO`





Internal Server Error


Schema: `ResponseEnvelopeListJobConfigListDTO`






---



---


## Configuration


#### getBuildConfig
Get latest build config

```swift
configuration.getBuildConfig(companyId: companyId, applicationId: applicationId, platformType: platformType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |   
| platformType | String? | Current platform name |  

Get latest build config

*Success Response:*



Success


Schema: `MobileAppConfiguration`






---


#### updateBuildConfig
Update build config for next build

```swift
configuration.updateBuildConfig(companyId: companyId, applicationId: applicationId, platformType: platformType, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |   
| platformType | String? | Current platform name |  

Update build config for next build

*Success Response:*



Success


Schema: `MobileAppConfiguration`






---


#### getPreviousVersions
Get previous build versions

```swift
configuration.getPreviousVersions(companyId: companyId, applicationId: applicationId, platformType: platformType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |   
| platformType | String? | Current platform name |  

Get previous build versions

*Success Response:*



Success


Schema: `BuildVersionHistory`






---


#### getAppFeatures
Get features of application

```swift
configuration.getAppFeatures(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Get features of application

*Success Response:*



Success


Schema: `AppFeatureResponse`





Not found


Schema: `NotFound`






---


#### updateAppFeatures
Update features of application

```swift
configuration.updateAppFeatures(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Update features of application

*Success Response:*



Success


Schema: `AppFeature`






---


#### getAppBasicDetails
Get basic application details

```swift
configuration.getAppBasicDetails(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Get basic application details like name

*Success Response:*



Success


Schema: `ApplicationDetail`






---


#### updateAppBasicDetails
Add or update application's basic details

```swift
configuration.updateAppBasicDetails(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Add or update application's basic details

*Success Response:*



Success


Schema: `ApplicationDetail`






---


#### getAppContactInfo
Get application information

```swift
configuration.getAppContactInfo(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Get Application Current Information. This includes information about social links, address and contact information of company/seller/brand of the application.

*Success Response:*



Success


Schema: `ApplicationInformation`






---


#### updateAppContactInfo
Get application information

```swift
configuration.updateAppContactInfo(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Save Application Current Information. This includes information about social links, address and contact information of an application.

*Success Response:*



Success


Schema: `ApplicationInformation`






---


#### getAppApiTokens
Get social tokens

```swift
configuration.getAppApiTokens(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Get social tokens.

*Success Response:*



Success


Schema: `TokenResponse`






---


#### updateAppApiTokens
Add social tokens

```swift
configuration.updateAppApiTokens(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Add social tokens.

*Success Response:*



Success


Schema: `TokenResponse`






---


#### getAppCompanies
Application inventory enabled companies

```swift
configuration.getAppCompanies(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |  

Application inventory enabled companies.

*Success Response:*



Success


Schema: `CompaniesResponse`






---


#### getAppStores
Application inventory enabled stores

```swift
configuration.getAppStores(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |  

Application inventory enabled stores.

*Success Response:*



Success


Schema: `StoresResponse`






---


#### getInventoryConfig
Get application configuration

```swift
configuration.getInventoryConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Get application configuration for various features and data

*Success Response:*



Success


Schema: `ApplicationInventory`






---


#### updateInventoryConfig
Update application configuration

```swift
configuration.updateInventoryConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Update application configuration for various features and data

*Success Response:*



Success


Schema: `ApplicationInventory`






---


#### partiallyUpdateInventoryConfig
Partially update application configuration

```swift
configuration.partiallyUpdateInventoryConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Partially update application configuration for various features and data

*Success Response:*



Success


Schema: `ApplicationInventory`






---


#### getAppCurrencyConfig
Get application enabled currency list

```swift
configuration.getAppCurrencyConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Get application enabled currency list

*Success Response:*



Success


Schema: `AppSupportedCurrency`






---


#### updateAppCurrencyConfig
Add initial application supported currency

```swift
configuration.updateAppCurrencyConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Add initial application supported currency for various features and data. Default INR will be enabled.

*Success Response:*



Success


Schema: `AppSupportedCurrency`






---


#### getOrderingStoresByFilter
Get ordering store by filter

```swift
configuration.getOrderingStoresByFilter(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |  

Get ordering store by filter

*Success Response:*



Success


Schema: `OrderingStores`






---


#### updateOrderingStoreConfig
Add/Update ordering store config

```swift
configuration.updateOrderingStoreConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Add/Update ordering store config.

*Success Response:*



Success


Schema: `DeploymentMeta`





Invalid/Missing params


Schema: `InvalidPayloadRequest`






---


#### getDomains
Get attached domain list

```swift
configuration.getDomains(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Get attached domain list.

*Success Response:*



Success


Schema: `DomainsResponse`






---


#### addDomain
Add new domain to application

```swift
configuration.addDomain(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Add new domain to application.

*Success Response:*



Success


Schema: `Domain`





Invalid/Missing params


Schema: `InvalidPayloadRequest`






---


#### removeDomainById
Remove attached domain

```swift
configuration.removeDomainById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |   
| id | String? | Domain _id |  

Remove attached domain.

*Success Response:*



Success


Schema: `SuccessMessageResponse`





Invalid request or Missing params


Schema: `InvalidPayloadRequest`





Invalid/Missing params


Schema: `NotFound`






---


#### changeDomainType
Change domain type

```swift
configuration.changeDomainType(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Change a domain to Primary or Shortlink domain

*Success Response:*



Success


Schema: `DomainsResponse`





Invalid/Missing params


Schema: `NotFound`






---


#### getDomainStatus
Get domain connected status.

```swift
configuration.getDomainStatus(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Get domain connected status. Check if domain is live and mapped to appropriate IP to fynd servers.

*Success Response:*



Success


Schema: `DomainStatusResponse`






---


#### createApplication
Create application

```swift
configuration.createApplication(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |  

Create new application

*Success Response:*



Success


Schema: `CreateAppResponse`






---


#### getApplications
Get list of application under company

```swift
configuration.getApplications(companyId: companyId, pageNo: pageNo, pageSize: pageSize, q: q) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| pageNo | Int? |  |   
| pageSize | Int? |  |   
| q | String? | Url encoded object used as mongodb query |  

Get list of application under company

*Success Response:*



Success


Schema: `ApplicationsResponse`






---


#### getApplicationById
Get application data from id

```swift
configuration.getApplicationById(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |  

Get application data from id

*Success Response:*



Success


Schema: `Application`






---


#### getCurrencies
Get all currencies

```swift
configuration.getCurrencies(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |  

Get all currencies

*Success Response:*



Currencies Success response


Schema: `CurrenciesResponse`






---


#### getDomainAvailibility
Check domain availibility before linking to application

```swift
configuration.getDomainAvailibility(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |  

Check domain availibility before linking to application. Also sends domain suggestions with similar to queried domain. \ Custom domain search is currently powered by GoDaddy provider.

*Success Response:*



Success


Schema: `DomainSuggestionsResponse`






---


#### getIntegrationById
Get integration data

```swift
configuration.getIntegrationById(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| id | Int? | Integration id |  

Get integration data

*Success Response:*



Success


Schema: `Integration`






---


#### getAvailableOptIns
Get all available integration opt-ins

```swift
configuration.getAvailableOptIns(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |  

Get all available integration opt-ins

*Success Response:*



Success


Schema: `GetIntegrationsOptInsResponse`






---


#### getSelectedOptIns
Get company/store level integration opt-ins

```swift
configuration.getSelectedOptIns(companyId: companyId, level: level, uid: uid, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| level | String? | Integration level |   
| uid | Int? | Integration level uid |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |  

Get company/store level integration opt-ins

*Success Response:*



Success


Schema: `GetIntegrationsOptInsResponse`






---


#### getIntegrationLevelConfig
Get integration level config

```swift
configuration.getIntegrationLevelConfig(companyId: companyId, id: id, level: level, opted: opted, checkPermission: checkPermission) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| id | String? | Integration id |   
| level | String? | Integration level |   
| opted | Bool? | Filter on opted stores |   
| checkPermission | Bool? | Filter on if permissions are present |  

Get integration level config

*Success Response:*



Success


Schema: `IntegrationConfigResponse`






---


#### getIntegrationByLevelId
Get level data for integration

```swift
configuration.getIntegrationByLevelId(companyId: companyId, id: id, level: level, uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| id | String? | Integration id |   
| level | String? | Integration level |   
| uid | Int? | Integration level uid |  

Get level data for integration

*Success Response:*



Success


Schema: `IntegrationLevel`






---


#### getLevelActiveIntegrations
Check store has active integration

```swift
configuration.getLevelActiveIntegrations(companyId: companyId, id: id, level: level, uid: uid) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| id | String? | Integration id |   
| level | String? | Integration level |   
| uid | Int? | Integration level uid |  

API checks if a store is already opted in any other integrations

*Success Response:*



Success


Schema: `OptedStoreIntegration`






---


#### getBrandsByCompany
Get brands by company

```swift
configuration.getBrandsByCompany(companyId: companyId, q: q) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| q | String? | Search text for brand name |  

Get brands by company

*Success Response:*



Success


Schema: `BrandsByCompanyResponse`






---


#### getCompanyByBrands
Get company by brand uids

```swift
configuration.getCompanyByBrands(companyId: companyId, pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |  

Get company by brand uids

*Success Response:*



Success


Schema: `CompanyByBrandsResponse`






---


#### getStoreByBrands
Get stores by brand uids

```swift
configuration.getStoreByBrands(companyId: companyId, pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |  

Get stores by brand uids

*Success Response:*



Success


Schema: `StoreByBrandsResponse`






---


#### getOtherSellerApplications
Get other seller applications

```swift
configuration.getOtherSellerApplications(companyId: companyId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| pageNo | Int? | Current page no |   
| pageSize | Int? | Current request items count |  

Get other seller applications who has opted current company as inventory

*Success Response:*



Success


Schema: `OtherSellerApplications`






---


#### getOtherSellerApplicationById
Get other seller applications

```swift
configuration.getOtherSellerApplicationById(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| id | String? | Application Id |  

Get other seller application

*Success Response:*



Success


Schema: `OptedApplicationResponse`





Not found


Schema: `NotFound`






---


#### optOutFromApplication
Opt out company or store from other seller application

```swift
configuration.optOutFromApplication(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| id | String? | Application Id |  

Opt out company or store from other seller application

*Success Response:*



Success


Schema: `SuccessMessageResponse`





Invalid params or Not configured inventory


Schema: `InvalidPayloadRequest`





Not found


Schema: `NotFound`






---



---


## Cart


#### getCoupons
Get with single coupon details or coupon list

```swift
cart.getCoupons(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize, isArchived: isArchived, title: title, isPublic: isPublic, isDisplay: isDisplay, typeSlug: typeSlug, code: code) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current Application _id |   
| pageNo | Int? |  |   
| pageSize | Int? |  |   
| isArchived | Bool? |  |   
| title | String? |  |   
| isPublic | Bool? |  |   
| isDisplay | Bool? |  |   
| typeSlug | String? |  |   
| code | String? |  |  

Get coupon list with pagination

*Success Response:*



Coupon List for sent page_size and page_no


Schema: `CouponsResponse`






---


#### createCoupon
Create new coupon

```swift
cart.createCoupon(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current Application _id |  

Create new coupon

*Success Response:*



Coupon Created successfully


Schema: `SuccessMessage`





Invalid coupon data or existing coupon code


Schema: `OperationErrorResponse`






---


#### getCouponById
Get with single coupon details or coupon list

```swift
cart.getCouponById(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current Application _id |   
| id | String? |  |  

Get single coupon details with `id` in path param

*Success Response:*



Coupon object for sent `id`


Schema: `CouponUpdate`





Coupon not found for passed `id`


Schema: `OperationErrorResponse`






---


#### updateCoupon
Update existing coupon configuration

```swift
cart.updateCoupon(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current Application _id |   
| id | String? |  |  

Update coupon with id sent in `id`

*Success Response:*



Coupon updated successfully


Schema: `SuccessMessage`





Coupon not found for `id` from path params


Schema: `OperationErrorResponse`






---


#### updateCouponPartially
Update coupon archive state and schedule

```swift
cart.updateCouponPartially(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current Application _id |   
| id | String? |  |  

Update archive/unarchive and change schedule for coupon

*Success Response:*



Coupon updated successfully


Schema: `SuccessMessage`





Coupon not found for `id` from path params


Schema: `OperationErrorResponse`






---



---


## Rewards


#### getGiveaways
List of giveaways of the current application.

```swift
rewards.getGiveaways(companyId: companyId, applicationId: applicationId, pageId: pageId, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| pageId | String? | pagination page id |   
| pageSize | Int? | pagination page size |  

List of giveaways of the current application.

*Success Response:*



ok


Schema: `GiveawayResponse`





Bad request


Schema: `E`






---


#### createGiveaway
Adds a new giveaway.

```swift
rewards.createGiveaway(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |  

Adds a new giveaway.

*Success Response:*



ok


Schema: `Giveaway`





Bad request


Schema: `E`






---


#### getGiveawayByID
Get giveaway by ID.

```swift
rewards.getGiveawayByID(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| id | String? | Giveaway ID |  

Get giveaway by ID.

*Success Response:*



ok


Schema: `Giveaway`





Bad request


Schema: `E`






---


#### updateGiveaway
Updates the giveaway by it's ID.

```swift
rewards.updateGiveaway(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| id | String? | Giveaway ID |  

Updates the giveaway by it's ID.

*Success Response:*



ok


Schema: `Giveaway`





Bad request


Schema: `E`






---


#### getOffers
List of offer of the current application.

```swift
rewards.getOffers(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |  

List of offer of the current application.

*Success Response:*



ok


Schema: `[Offer]`





Bad request


Schema: `E`






---


#### getOfferByName
Get offer by name.

```swift
rewards.getOfferByName(companyId: companyId, applicationId: applicationId, cookie: cookie, name: name) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| cookie | String? | User's session cookie. This cookie is set in browser cookie when logged-in to fynd's authentication system i.e. `Grimlock` or by using grimlock-backend SDK for backend implementation. |   
| name | String? | Offer name |  

Get offer by name.

*Success Response:*



ok


Schema: `Offer`





Bad request


Schema: `E`






---


#### updateOfferByName
Updates the offer by name.

```swift
rewards.updateOfferByName(companyId: companyId, applicationId: applicationId, name: name, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| name | String? | Offer name |  

Updates the offer by name.

*Success Response:*



ok


Schema: `Offer`





Bad request


Schema: `E`






---


#### getUserAvailablePoints
User's reward details.

```swift
rewards.getUserAvailablePoints(companyId: companyId, applicationId: applicationId, userId: userId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| userId | String? | user id |  

User's reward details.

*Success Response:*



ok


Schema: `UserRes`





Bad request


Schema: `E`






---


#### updateUserStatus
Update User status

```swift
rewards.updateUserStatus(companyId: companyId, applicationId: applicationId, userId: userId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| userId | String? | user id |  

Update user status, active/archive

*Success Response:*



Success


Schema: `AppUser`





Bad Request


Schema: `E`






---


#### getUserPointsHistory
Get list of points transactions.

```swift
rewards.getUserPointsHistory(companyId: companyId, applicationId: applicationId, userId: userId, pageId: pageId, pageLimit: pageLimit, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | company id |   
| applicationId | String? | application id |   
| userId | String? | user id |   
| pageId | String? | PageID is the ID of the requested page. For first request it should be kept empty. |   
| pageLimit | Int? | PageLimit is the number of requested items in response. |   
| pageSize | Int? | PageSize is the number of requested items in response. |  

Get list of points transactions.
The list of points history is paginated.

*Success Response:*



ok


Schema: `HistoryRes`





Bad request


Schema: `E`






---



---


## Analytics


#### getStatiscticsGroups
Get statistics groups

```swift
analytics.getStatiscticsGroups(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |  

Get statistics groups

*Success Response:*



Success


Schema: `StatsGroups`





Error


Schema: `ErrorRes`






---


#### getStatiscticsGroupComponents
Get statistics group components

```swift
analytics.getStatiscticsGroupComponents(companyId: companyId, applicationId: applicationId, groupName: groupName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| groupName | String? | Group name |  

Get statistics group components

*Success Response:*



Success


Schema: `StatsGroupComponents`





Error


Schema: `ErrorRes`






---


#### getComponentStatsCSV
Get component statistics csv

```swift
analytics.getComponentStatsCSV(companyId: companyId, applicationId: applicationId, componentName: componentName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| componentName | String? | Component name |  

Get component statistics csv

*Success Response:*



Success


Schema: `String`





Error


Schema: `ErrorRes`






---


#### getComponentStatsPDF
Get component statistics pdf

```swift
analytics.getComponentStatsPDF(companyId: companyId, applicationId: applicationId, componentName: componentName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| componentName | String? | Component name |  

Get component statistics pdf

*Success Response:*



Success


Schema: `String`





Error


Schema: `ErrorRes`






---


#### getComponentStats
Get component statistics

```swift
analytics.getComponentStats(companyId: companyId, applicationId: applicationId, componentName: componentName) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| componentName | String? | Component name |  

Get component statistics

*Success Response:*



Success


Schema: `StatsRes`





Error


Schema: `ErrorRes`






---


#### getAbandonCartList
Get abandon carts list

```swift
analytics.getAbandonCartList(companyId: companyId, applicationId: applicationId, fromDate: fromDate, toDate: toDate, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| fromDate | String? | From date |   
| toDate | String? | To date |   
| pageNo | Int? | Current page number |   
| pageSize | Int? | Current page size |  

Get abandon carts list

*Success Response:*



Success


Schema: `AbandonCartsList`





Error


Schema: `ErrorRes`






---


#### getAbandonCartsCSV
Get abandon carts csv

```swift
analytics.getAbandonCartsCSV(companyId: companyId, applicationId: applicationId, fromDate: fromDate, toDate: toDate) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| fromDate | String? | From date |   
| toDate | String? | To date |  

Get abandon carts csv

*Success Response:*



Success


Schema: `String`





Error


Schema: `ErrorRes`






---


#### getAbandonCartDetail
Get abandon carts details

```swift
analytics.getAbandonCartDetail(companyId: companyId, applicationId: applicationId, cartId: cartId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| applicationId | String? | Application Id |   
| cartId | String? | Cart Id |  

Get abandon cart details

*Success Response:*



Success


Schema: `AbandonCartDetail`






---


#### createExportJob
Create data export job in required format

```swift
analytics.createExportJob(companyId: companyId, exportType: exportType, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| exportType | String? | Export type / format |  

Create data export job in required format

*Success Response:*



Success


Schema: `ExportJobRes`






---


#### getExportJobStatus
Get data export job status

```swift
analytics.getExportJobStatus(companyId: companyId, exportType: exportType, jobId: jobId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| exportType | String? | Export type / format |   
| jobId | String? | Export job id |  

Get data export job status

*Success Response:*



Success


Schema: `ExportJobStatusRes`






---


#### getLogsList
Get logs list

```swift
analytics.getLogsList(companyId: companyId, logType: logType, pageNo: pageNo, pageSize: pageSize, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| logType | String? | Log type |   
| pageNo | Int? | Current page number |   
| pageSize | Int? | Current page size |  

Get logs list

*Success Response:*



Success


Schema: `GetLogsListRes`






---


#### searchLogs
Search logs

```swift
analytics.searchLogs(companyId: companyId, pageNo: pageNo, pageSize: pageSize, logType: logType, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id |   
| pageNo | Int? | Current page number |   
| pageSize | Int? | Current page size |   
| logType | String? | Log type |  

Search logs

*Success Response:*



Success


Schema: `SearchLogRes`






---



---


## Discount


#### getDiscounts
Fetch discount list.

```swift
discount.getDiscounts(companyId: companyId, view: view, q: q, pageNo: pageNo, pageSize: pageSize, archived: archived, month: month, year: year, type: type, appIds: appIds) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |   
| view | String? | listing or calender.  Default is listing. |   
| q | String? | The search query. This can be a partial or complete name of a discount. |   
| pageNo | Int? | page number. Default is 1. |   
| pageSize | Int? | page size. Default is 12. |   
| archived | Bool? | archived. Default is false. |   
| month | Int? | month. Default is current month. |   
| year | Int? | year. Default is current year. |   
| type | String? | basic or custom. |   
| appIds | [String]? | application ids. |  

Fetch discount list.

*Success Response:*



Success


Schema: `ListOrCalender`





Failed


Schema: `BadRequestObject`






---


#### createDiscount
Create Discount.

```swift
discount.createDiscount(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |  

Create Discount.

*Success Response:*



Success


Schema: `DiscountJob`





Failed


Schema: `BadRequestObject`






---


#### getDiscount
Fetch discount.

```swift
discount.getDiscount(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |   
| id | String? | unique id. |  

Fetch discount.

*Success Response:*



Success


Schema: `DiscountJob`





Failed


Schema: `BadRequestObject`






---


#### updateDiscount
Create Discount.

```swift
discount.updateDiscount(companyId: companyId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |   
| id | String? | id |  

Create Discount.

*Success Response:*



Success


Schema: `DiscountJob`





Failed


Schema: `BadRequestObject`






---


#### validateDiscountFile
Validate File.

```swift
discount.validateDiscountFile(companyId: companyId, discount: discount, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |   
| discount | String? | discount |  

Validate File.

*Success Response:*



Success


Schema: `FileJobResponse`





Failed


Schema: `BadRequestObject`






---


#### downloadDiscountFile
Validate File.

```swift
discount.downloadDiscountFile(companyId: companyId, type: type, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |   
| type | String? | type |  

Validate File.

*Success Response:*



Success


Schema: `FileJobResponse`





Failed


Schema: `BadRequestObject`






---


#### getValidationJob
Validate File Job.

```swift
discount.getValidationJob(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |   
| id | String? | id |  

Validate File Job.

*Success Response:*



Success


Schema: `FileJobResponse`





Failed


Schema: `BadRequestObject`






---


#### cancelValidationJob
Cancel Validation Job.

```swift
discount.cancelValidationJob(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |   
| id | String? | id |  

Cancel Validation Job.

*Success Response:*



Success


Schema: `CancelJobResponse`





Failed


Schema: `BadRequestObject`






---


#### getDownloadJob
Download File Job.

```swift
discount.getDownloadJob(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |   
| id | String? | id |  

Download File Job.

*Success Response:*



Success


Schema: `FileJobResponse`





Failed


Schema: `BadRequestObject`






---


#### cancelDownloadJob
Cancel Download Job.

```swift
discount.cancelDownloadJob(companyId: companyId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | Int? | company_id |   
| id | String? | id |  

Cancel Download Job.

*Success Response:*



Success


Schema: `CancelJobResponse`





Failed


Schema: `BadRequestObject`






---



---


## Partner


#### addProxyPath
Add proxy path for external url

```swift
partner.addProxyPath(companyId: companyId, applicationId: applicationId, extensionId: extensionId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |   
| extensionId | String? | Extension id |  

Add proxy path for external url

*Success Response:*



Success


Schema: `AddProxyResponse`





Duplicate proxy path


Schema: `ApiError`






---


#### removeProxyPath
Remove proxy path for external url

```swift
partner.removeProxyPath(companyId: companyId, applicationId: applicationId, extensionId: extensionId, attachedPath: attachedPath) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Current company id |   
| applicationId | String? | Current application id |   
| extensionId | String? | Extension id |   
| attachedPath | String? | Attachaed path slug |  

Remove proxy path for external url

*Success Response:*



Success


Schema: `RemoveProxyResponse`





Entry not found attached path


Schema: `ApiError`






---



---


## Webhook


#### getSubscribersByCompanyAndEventId
Get Subscribers By Company And Event

```swift
webhook.getSubscribersByCompanyAndEventId(pageNo: pageNo, pageSize: pageSize, companyId: companyId, eventId: eventId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| pageNo | Int? | Page Number |   
| pageSize | Int? | Page Size |   
| companyId | String? | Company ID of the application |   
| eventId | Int? | Event Id of the application |  

Get Subscribers By Company And Event

*Success Response:*



Success


Schema: `SubscriberConfigList`






---


#### registerSubscriberToEvent
Register Subscriber

```swift
webhook.registerSubscriberToEvent(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company Id of the application |  

Register Subscriber

*Success Response:*



Success


Schema: `SubscriberConfig`






---


#### updateSubscriberConfig
Update Subscriber

```swift
webhook.updateSubscriberConfig(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- | 
| companyId | String? | Company ID of the application |  

Update Subscriber

*Success Response:*



Success


Schema: `SubscriberConfig`






---



---


---
---
