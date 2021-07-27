

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
    * [getOrderLanesCountByCompanyId](#getorderlanescountbycompanyid)
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
    * [updateSearchKeywords](#updatesearchkeywords)
    * [getSearchKeywords](#getsearchkeywords)
    * [getAllSearchKeyword](#getallsearchkeyword)
    * [createCustomKeyword](#createcustomkeyword)
    * [deleteAutocompleteKeyword](#deleteautocompletekeyword)
    * [updateAutocompleteKeyword](#updateautocompletekeyword)
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
    * [deleteCollection](#deletecollection)
    * [updateCollection](#updatecollection)
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
    * [deleteProduct](#deleteproduct)
    * [editProduct](#editproduct)
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
    * [getInventoryBySize](#getinventorybysize)
    * [addInventory](#addinventory)
    * [getInventoryBySizeIdentifier](#getinventorybysizeidentifier)
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
    

* ## [CompanyProfile](#CompanyProfile)
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
    * [getSubscribersByCompany](#getsubscribersbycompany)
    * [registerSubscriberToEvent](#registersubscribertoevent)
    * [updateSubscriberConfig](#updatesubscriberconfig)
    * [getSubscriberById](#getsubscriberbyid)
    * [fetchAllEventConfigurations](#fetchalleventconfigurations)
    


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


#### getOrderLanesCountByCompanyId
Get Order Lanes Count for company based on Company Id



```swift
order.getOrderLanesCountByCompanyId(companyId: companyId, pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate, q: q, stage: stage, salesChannels: salesChannels, orderId: orderId, stores: stores, status: status, shortenUrls: shortenUrls, filterType: filterType) { (response, error) in
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



Get Orders Seperate Lane Count

*Returned Response:*




[OrderLanesCount](#OrderLanesCount)

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



Get integration/integration-opt-in level config

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


#### getSubscribersByCompany
Get Subscribers By Company ID



```swift
webhook.getSubscribersByCompany(pageNo: pageNo, pageSize: pageSize, companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| pageNo | Int? | no | Page Number |   
| pageSize | Int? | no | Page Size |   
| companyId | Int? | no | Company ID of the application |  



Get Subscribers By CompanyId

*Returned Response:*




[SubscriberResponse](#SubscriberResponse)

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
| companyId | Int? | no | Company Id of the application |  
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
| companyId | Int? | no | Company ID of the application |  
| body | SubscriberConfig |  no  | Request body |


Update Subscriber

*Returned Response:*




[SubscriberConfig](#SubscriberConfig)

Success






---


#### getSubscriberById
Get Subscriber By Subscriber ID



```swift
webhook.getSubscriberById(companyId: companyId, subscriberId: subscriberId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company ID of the application |   
| subscriberId | Int? | no | Subscriber ID |  



Get Subscriber By Subscriber ID

*Returned Response:*




[SubscriberResponse](#SubscriberResponse)

Success






---


#### fetchAllEventConfigurations
Get All Webhook Events



```swift
webhook.fetchAllEventConfigurations(companyId: companyId) { (response, error) in
    // Use response
}
```



| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company ID of the application |  



Get All Webhook Events

*Returned Response:*




[EventConfigList](#EventConfigList)

Success






---




### Schemas


 
 
 #### [LocationDefaultLanguage](#LocationDefaultLanguage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [LocationDefaultCurrency](#LocationDefaultCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | symbol | String? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [LocationCountry](#LocationCountry)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | capital | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | iso2 | String? |  yes  |  |
 | iso3 | String? |  yes  |  |
 | name | String? |  yes  |  |
 | parent | String? |  yes  |  |
 | phoneCode | String? |  yes  |  |
 | type | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | v | Int? |  yes  |  |
 | id | String? |  yes  |  |
 | defaultCurrency | [LocationDefaultCurrency](#LocationDefaultCurrency)? |  yes  |  |
 | defaultLanguage | [LocationDefaultLanguage](#LocationDefaultLanguage)? |  yes  |  |

---


 
 
 #### [Locations](#Locations)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[LocationCountry](#LocationCountry)]? |  yes  |  |

---




 
 
 #### [TicketList](#TicketList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Ticket](#Ticket)]? |  yes  | List of tickets |
 | filters | [Filter](#Filter)? |  yes  | All the filters available for tickets |
 | page | [Page](#Page)? |  yes  | Describes the pagination state |

---


 
 
 #### [Page](#Page)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | current | Int? |  yes  |  |
 | type | String |  no  |  |
 | size | Int? |  yes  |  |

---


 
 
 #### [TicketHistoryList](#TicketHistoryList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[TicketHistory](#TicketHistory)]? |  yes  | List of ticket history |
 | page | [Page](#Page)? |  yes  | Describes the pagination state |

---


 
 
 #### [CustomFormList](#CustomFormList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CustomForm](#CustomForm)]? |  yes  | List of forms |
 | page | [Page](#Page)? |  yes  | Describes the pagination state |

---


 
 
 #### [CreateCustomFormPayload](#CreateCustomFormPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  | Slug for the form |
 | title | String |  no  | Title for the form |
 | inputs | [[String: Any]] |  no  | List of all the form components |
 | description | String? |  yes  | Description of the form |
 | headerImage | String? |  yes  | Header image that is to be shown for the form |
 | priority | [String: Any] |  no  | Describes the priority of the tickets created by the form |
 | shouldNotify | Bool? |  yes  | Indicates if staff should be notified when a response is received |
 | successMessage | String? |  yes  | Success message that will be shown on submission |
 | pollForAssignment | [PollForAssignment](#PollForAssignment)? |  yes  | Describes how polling will be done for the tickets createds |

---


 
 
 #### [EditCustomFormPayload](#EditCustomFormPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  | Title for the form |
 | inputs | [[String: Any]] |  no  | List of all the form components |
 | description | String? |  yes  | Description of the form |
 | priority | [String: Any] |  no  | Describes the priority of the tickets created by the form |
 | headerImage | String? |  yes  | Header image that is to be shown for the form |
 | shouldNotify | Bool? |  yes  | Indicates if staff should be notified when a response is received |
 | loginRequired | Bool? |  yes  | Denotes if login is required to make a form response submission |
 | successMessage | String? |  yes  | Success message that will be shown on submission |
 | pollForAssignment | [PollForAssignment](#PollForAssignment)? |  yes  | Describes how polling will be done for the tickets createds |

---


 
 
 #### [EditTicketPayload](#EditTicketPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | content | [TicketContent](#TicketContent)? |  yes  | Ticket conetent details |
 | category | String? |  yes  | Category assigned to the ticket |
 | subCategory | String? |  yes  | Sub-category assigned to the ticket |
 | source | String? |  yes  | Denotes if the ticket was created at company or application level |
 | status | String? |  yes  | Denotes in what state is the ticket |
 | priority | [String: Any]? |  yes  | Denotes the priority of ticket |
 | assignedTo | [AgentChangePayload](#AgentChangePayload)? |  yes  | Details of support staff to whom ticket is assigned |
 | tags | [String]? |  yes  | Tags relevant to ticket |

---


 
 
 #### [AgentChangePayload](#AgentChangePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | agentId | String |  no  | Agent's unique ID |

---


 
 
 #### [CreateVideoRoomResponse](#CreateVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueName | String |  no  | Video Room's unique name |

---


 
 
 #### [CloseVideoRoomResponse](#CloseVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Denotes if operation was successfully |

---


 
 
 #### [CreateVideoRoomPayload](#CreateVideoRoomPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueName | String |  no  | Ticket id |
 | notify | [[NotifyUser](#NotifyUser)]? |  yes  | List of people to be notified |

---


 
 
 #### [NotifyUser](#NotifyUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String |  no  | Country code |
 | phoneNumber | String |  no  | Phone number |

---


 
 
 #### [Filter](#Filter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priorities | [[Priority](#Priority)] |  no  | List of possible priorities for tickets |
 | categories | [[TicketCategory](#TicketCategory)]? |  yes  | List of possible categories for tickets |
 | statuses | [[Status](#Status)] |  no  | List of possible statuses for tickets |
 | assignees | [[String: Any]] |  no  | List of support staff availble for tickets assignment |

---


 
 
 #### [TicketHistoryPayload](#TicketHistoryPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | [String: Any] |  no  | Details of history event |
 | type | [String: Any] |  no  | Type of history event |

---


 
 
 #### [CustomFormSubmissionPayload](#CustomFormSubmissionPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | response | [[KeyValue](#KeyValue)] |  no  | Form response |
 | attachments | [[TicketAsset](#TicketAsset)]? |  yes  | List of all attachments related to the form |

---


 
 
 #### [KeyValue](#KeyValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  | Parameter for evaluating |
 | value | [String: Any] |  no  | Response for the parameter |

---


 
 
 #### [GetTokenForVideoRoomResponse](#GetTokenForVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accessToken | String |  no  | Access token to be used for video room |

---


 
 
 #### [GetParticipantsInsideVideoRoomResponse](#GetParticipantsInsideVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | participants | [[Participant](#Participant)] |  no  | List of participants of the video room |

---


 
 
 #### [Participant](#Participant)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  | Details of participant |
 | identity | String? |  yes  | Unique identifier of participant |
 | status | String? |  yes  | Status of participant |

---


 
 
 #### [PhoneNumber](#PhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  | Denotes if the phone number is active |
 | primary | Bool? |  yes  | Denotes it's the primary phone number for the account |
 | verified | Bool? |  yes  | Denotes it's a verified phone number |
 | phone | String? |  yes  | Phone number |
 | countryCode | Int? |  yes  | Country code |

---


 
 
 #### [Email](#Email)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primary | Bool? |  yes  | Denotes it's the primary email for the account |
 | verified | Bool? |  yes  | Denotes it's a verified email |
 | email | String? |  yes  | Email Address |
 | active | Bool? |  yes  | Denotes if the email is active |

---


 
 
 #### [Debug](#Debug)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  | Source of user |
 | platform | String? |  yes  | Platform of user |

---


 
 
 #### [SubmitCustomFormResponse](#SubmitCustomFormResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ticket | [Ticket](#Ticket) |  no  | Ticket created on form submission |

---


 
 
 #### [TicketContext](#TicketContext)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  | Application ID related to the ticket |
 | companyId | String |  no  | Company ID related to the ticket |

---


 
 
 #### [CreatedOn](#CreatedOn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userAgent | String |  no  | Useragent details |

---


 
 
 #### [TicketAsset](#TicketAsset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  | Display text for asset |
 | value | String |  no  | To be used for details |
 | type | [String: Any] |  no  | Type of asset |

---


 
 
 #### [TicketContent](#TicketContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  | Title for ticket |
 | description | String? |  yes  | Long description of issue |
 | attachments | [[TicketAsset](#TicketAsset)]? |  yes  | List of all attachments related to the ticket |

---


 
 
 #### [AddTicketPayload](#AddTicketPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | [String: Any]? |  yes  | Creator of the ticket |
 | status | String? |  yes  | Status of the ticket |
 | priority | [String: Any]? |  yes  | Priority of the ticket |
 | category | String |  no  | Category of the ticket |
 | content | [TicketContent](#TicketContent) |  no  | Content for the ticket |

---


 
 
 #### [Priority](#Priority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | [PriorityEnum](#PriorityEnum) |  no  | Key for priority |
 | display | String |  no  | Display text for priority |
 | color | String |  no  | Color for priority |

---


 
 
 #### [Status](#Status)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  | Key for status |
 | display | String |  no  | Display text for status |
 | color | String |  no  | Color for status |

---


 
 
 #### [TicketCategory](#TicketCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  | Key for category |
 | display | String |  no  | Display text for category |
 | form | [CustomForm](#CustomForm)? |  yes  | Form related to the category |
 | subCategories | [[TicketSubCategory](#TicketSubCategory)]? |  yes  | Sub-category related to the category |
 | feedbackForm | [TicketFeedbackForm](#TicketFeedbackForm)? |  yes  | Feedback form of category used to submit ticket feedback |

---


 
 
 #### [TicketSubCategory](#TicketSubCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String |  no  | Key for sub-category |
 | display | String |  no  | Display text for sub-category |

---


 
 
 #### [TicketFeedbackForm](#TicketFeedbackForm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  | Feedback form title that will be shown to the user |
 | display | [[String: Any]]? |  yes  | List of all the form fields |

---


 
 
 #### [TicketFeedbackList](#TicketFeedbackList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[TicketFeedback](#TicketFeedback)]? |  yes  | List of all ticket feedback for the ticket |

---


 
 
 #### [TicketFeedbackPayload](#TicketFeedbackPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | formResponse | [String: Any]? |  yes  | Key-value pairs of all the form fields and their response |

---


 
 
 #### [SubmitButton](#SubmitButton)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  | Title for submit button |
 | titleColor | String |  no  | Title color submit button |
 | backgroundColor | String |  no  | Color for submit button |

---


 
 
 #### [PollForAssignment](#PollForAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | duration | Double |  no  | Duration for polling of staff |
 | message | String |  no  | Message for polling |
 | successMessage | String |  no  | Message for successful polling |
 | failureMessage | String |  no  | Message if polling failed |

---


 
 
 #### [CustomForm](#CustomForm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String |  no  | Application ID for form |
 | slug | String |  no  | Slug for the form, which is to be used for accessing the form |
 | headerImage | String? |  yes  | Form header image that will be shown to the user |
 | title | String |  no  | Form title that will be shown to the user |
 | description | String? |  yes  | Form description that will be shown to the user |
 | priority | [Priority](#Priority) |  no  | Sets priority of tickets created by form response |
 | loginRequired | Bool |  no  | Denotes if login is required to make a form response submission |
 | shouldNotify | Bool |  no  | Denotes if new response submission for the form should be notified to the assignees |
 | successMessage | String? |  yes  | Message that is to be shown on succesfull form response submission |
 | submitButton | [SubmitButton](#SubmitButton)? |  yes  | Details for submit button |
 | inputs | [[String: Any]] |  no  | List of all the form fields |
 | createdOn | [CreatedOn](#CreatedOn)? |  yes  | Gives details of when the form was created |
 | createdBy | [String: Any]? |  yes  | Gives details of user who created the form |
 | pollForAssignment | [PollForAssignment](#PollForAssignment)? |  yes  | Details of how polling should be done for support |
 | id | String |  no  | Unique identifier for the form |

---


 
 
 #### [FeedbackResponseItem](#FeedbackResponseItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  | Question/Title of the form field |
 | key | String |  no  | Key of the form field |
 | value | String |  no  | User response value for the form field |

---


 
 
 #### [TicketFeedback](#TicketFeedback)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  | Unique identifier for the feedback |
 | ticketId | String |  no  | Readable ticket number |
 | companyId | String |  no  | Company id for which ticket was raised |
 | response | [[FeedbackResponseItem](#FeedbackResponseItem)] |  no  |  |
 | category | String? |  yes  | Category of the ticket |
 | user | [String: Any]? |  yes  | User who submitted the feedback |
 | updatedAt | String? |  yes  | Time when the feedback was last updated |
 | createdAt | String? |  yes  | Time when the feedback was created |

---


 
 
 #### [TicketHistory](#TicketHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  | Type of the history event |
 | value | [String: Any] |  no  | Data of the history event |
 | ticketId | String |  no  | Readable ticket number |
 | createdOn | [CreatedOn](#CreatedOn)? |  yes  | Time of creation of the history event |
 | createdBy | [String: Any]? |  yes  | User who created the history event |
 | id | String |  no  | Unique identifier of the history event |
 | updatedAt | String? |  yes  | Time of last update of the history event |
 | createdAt | String? |  yes  | Time of creation of the history event |

---


 
 
 #### [Ticket](#Ticket)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | context | [TicketContext](#TicketContext)? |  yes  | Details of company and application realated to the ticket |
 | createdOn | [CreatedOn](#CreatedOn)? |  yes  | Details of company and application realated to the ticket |
 | responseId | String? |  yes  | Details of company and application realated to the ticket |
 | content | [TicketContent](#TicketContent)? |  yes  | Ticket conetent details |
 | ticketId | String |  no  | Readable ticket number |
 | category | [TicketCategory](#TicketCategory) |  no  | Category assigned to the ticket |
 | subCategory | [TicketSubCategory](#TicketSubCategory)? |  yes  | Sub-category assigned to the ticket |
 | source | [String: Any] |  no  | Denotes if the ticket was created at company or application level |
 | status | [Status](#Status) |  no  | Denotes in what state is the ticket |
 | priority | [Priority](#Priority) |  no  | Denotes the priority of ticket |
 | createdBy | [String: Any]? |  yes  | User details of ticket creator |
 | assignedTo | [String: Any]? |  yes  | Details of support staff to whom ticket is assigned |
 | tags | [String]? |  yes  | Tags relevant to ticket |
 | customJson | [String: Any]? |  yes  | custom json relevant to the ticket |
 | isFeedbackPending | Bool? |  yes  | Denotes if feedback submission is pending for the ticket |
 | id | String |  no  | Unique identifier for the ticket |
 | updatedAt | String? |  yes  | Time when the ticket was last updated |
 | createdAt | String? |  yes  | Time when the ticket was created |

---




 
 
 #### [Activity](#Activity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currentState | [String: Any]? |  yes  |  |
 | documentId | String? |  yes  |  |
 | previousState | [String: Any]? |  yes  |  |

---


 
 
 #### [ActivityDump](#ActivityDump)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activity | [Activity](#Activity)? |  yes  |  |
 | createdBy | [CreatedBy](#CreatedBy)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [AddMediaListRequest](#AddMediaListRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | mediaList | [[AddMediaRequest](#AddMediaRequest)]? |  yes  |  |
 | refId | String? |  yes  |  |
 | refType | String? |  yes  |  |

---


 
 
 #### [AddMediaRequest](#AddMediaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cloudId | String? |  yes  |  |
 | cloudName | String? |  yes  |  |
 | cloudProvider | String? |  yes  |  |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | mediaUrl | String? |  yes  |  |
 | refId | String? |  yes  |  |
 | refType | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | thumbnailUrl | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ApproveRequest](#ApproveRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | approve | Bool? |  yes  |  |
 | entityType | String? |  yes  |  |
 | id | String |  no  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [Attribute](#Attribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | description | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [[TagMeta](#TagMeta)]? |  yes  |  |

---


 
 
 #### [AttributeObject](#AttributeObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | name | String |  no  |  |
 | slug | String? |  yes  |  |
 | title | String? |  yes  |  |
 | type | String |  no  |  |
 | value | Double |  no  |  |

---


 
 
 #### [CreatedBy](#CreatedBy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | tags | [[TagMeta](#TagMeta)]? |  yes  |  |

---


 
 
 #### [CursorGetResponse](#CursorGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [DateMeta](#DateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [DeviceMeta](#DeviceMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appVersion | String? |  yes  |  |
 | platform | String? |  yes  |  |

---


 
 
 #### [Entity](#Entity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [EntityRequest](#EntityRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |

---


 
 
 #### [FeedbackAttributes](#FeedbackAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Attribute](#Attribute)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [FeedbackError](#FeedbackError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | [String: Any]? |  yes  |  |
 | exception | String? |  yes  |  |
 | info | String? |  yes  |  |
 | message | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | requestId | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | status | Int? |  yes  |  |

---


 
 
 #### [FeedbackState](#FeedbackState)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | archive | Bool? |  yes  |  |
 | media | String? |  yes  | image, video, any |
 | qna | Bool? |  yes  |  |
 | rating | Bool? |  yes  |  |
 | review | Bool? |  yes  |  |

---


 
 
 #### [GetResponse](#GetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [GetReviewResponse](#GetReviewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facets | [[ReviewFacet](#ReviewFacet)]? |  yes  |  |
 | items | [[String: Any]]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | sort | [[SortMethod](#SortMethod)]? |  yes  |  |

---


 
 
 #### [InsertResponse](#InsertResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |

---


 
 
 #### [MediaMeta](#MediaMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxCount | Int? |  yes  |  |
 | size | Int? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [MediaMetaRequest](#MediaMetaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | maxCount | Int |  no  |  |
 | size | Int |  no  |  |

---


 
 
 #### [NumberGetResponse](#NumberGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PageCursor](#PageCursor)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | nextId | String? |  yes  |  |
 | size | Int |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [PageNumber](#PageNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | size | Int? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Rating](#Rating)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [[Attribute](#Attribute)]? |  yes  |  |
 | attributesSlugs | [String]? |  yes  |  |
 | ui | [UI](#UI)? |  yes  |  |

---


 
 
 #### [RatingRequest](#RatingRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [String] |  no  |  |
 | ui | [UI](#UI)? |  yes  |  |

---


 
 
 #### [ReportAbuseRequest](#ReportAbuseRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | entityId | String |  no  |  |
 | entityType | String |  no  |  |

---


 
 
 #### [Review](#Review)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | header | String? |  yes  |  |
 | imageMeta | [MediaMeta](#MediaMeta)? |  yes  |  |
 | title | String? |  yes  |  |
 | videoMeta | [MediaMeta](#MediaMeta)? |  yes  |  |
 | voteAllowed | Bool? |  yes  |  |

---


 
 
 #### [ReviewFacet](#ReviewFacet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |
 | selected | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | type | String? |  yes  | rating, attributerating |

---


 
 
 #### [ReviewRequest](#ReviewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | header | String |  no  |  |
 | imageMeta | [MediaMetaRequest](#MediaMetaRequest) |  no  |  |
 | isVoteAllowed | Bool |  no  |  |
 | title | String |  no  |  |
 | videoMeta | [MediaMetaRequest](#MediaMetaRequest) |  no  |  |

---


 
 
 #### [SaveAttributeRequest](#SaveAttributeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |

---


 
 
 #### [SortMethod](#SortMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | selected | Bool? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [TagMeta](#TagMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | media | [[MediaMeta](#MediaMeta)]? |  yes  |  |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Template](#Template)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | entity | [Entity](#Entity)? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | rating | [Rating](#Rating)? |  yes  |  |
 | review | [Review](#Review)? |  yes  |  |
 | state | [FeedbackState](#FeedbackState)? |  yes  |  |
 | tags | [[TagMeta](#TagMeta)]? |  yes  |  |

---


 
 
 #### [TemplateGetResponse](#TemplateGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Template](#Template)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [TemplateRequest](#TemplateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | enableMediaType | String? |  yes  | image | video | any |
 | enableQna | Bool? |  yes  |  |
 | enableRating | Bool |  no  |  |
 | enableReview | Bool |  no  |  |
 | entity | [EntityRequest](#EntityRequest) |  no  |  |
 | rating | [RatingRequest](#RatingRequest) |  no  |  |
 | review | [ReviewRequest](#ReviewRequest) |  no  |  |

---


 
 
 #### [TemplateRequestList](#TemplateRequestList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateList | [[TemplateRequest](#TemplateRequest)] |  no  |  |

---


 
 
 #### [UI](#UI)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feedbackQuestion | [String]? |  yes  |  |
 | icon | [UIIcon](#UIIcon)? |  yes  |  |
 | text | [String]? |  yes  |  |
 | type | String? |  yes  | star | images | gifs | smileys |

---


 
 
 #### [UIIcon](#UIIcon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | String? |  yes  |  |
 | inactive | String? |  yes  |  |
 | selected | [String]? |  yes  |  |

---


 
 
 #### [UpdateAttributeRequest](#UpdateAttributeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | name | String |  no  |  |
 | slug | String? |  yes  |  |

---


 
 
 #### [UpdateResponse](#UpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |

---


 
 
 #### [UpdateReviewRequest](#UpdateReviewRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | application | String? |  yes  |  |
 | approve | Bool? |  yes  |  |
 | archive | Bool? |  yes  |  |
 | attributesRating | [[AttributeObject](#AttributeObject)]? |  yes  |  |
 | description | String? |  yes  |  |
 | deviceMeta | [DeviceMeta](#DeviceMeta)? |  yes  |  |
 | entityId | String? |  yes  |  |
 | entityType | String? |  yes  |  |
 | mediaResource | [[MediaMeta](#MediaMeta)]? |  yes  |  |
 | rating | Double? |  yes  |  |
 | reviewId | String? |  yes  |  |
 | templateId | String? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [UpdateTemplateRequest](#UpdateTemplateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool |  no  |  |
 | enableMediaType | String? |  yes  | image | video | any |
 | enableQna | Bool? |  yes  |  |
 | enableRating | Bool |  no  |  |
 | enableReview | Bool |  no  |  |
 | entity | [EntityRequest](#EntityRequest) |  no  |  |
 | rating | [RatingRequest](#RatingRequest) |  no  |  |
 | review | [ReviewRequest](#ReviewRequest) |  no  |  |

---


 
 
 #### [UpdateTemplateStatusRequest](#UpdateTemplateStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | archive | Bool? |  yes  |  |

---




 
 
 #### [AvailablePageSchema](#AvailablePageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | text | String? |  yes  |  |
 | path | String? |  yes  |  |
 | type | String? |  yes  |  |
 | sections | [[AvailablePageSchemaSections](#AvailablePageSchemaSections)]? |  yes  |  |
 | sectionsMeta | [[AvailablePageSectionMetaAttributes](#AvailablePageSectionMetaAttributes)]? |  yes  |  |
 | theme | String? |  yes  |  |
 | seo | [AvailablePageSeo](#AvailablePageSeo)? |  yes  |  |
 | props | [[String: Any]]? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [AvailablePageSectionMetaAttributes](#AvailablePageSectionMetaAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [String: Any]? |  yes  |  |

---


 
 
 #### [AvailablePageSeo](#AvailablePageSeo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [AvailablePageSchemaSections](#AvailablePageSchemaSections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | label | String? |  yes  |  |
 | props | [String: Any]? |  yes  |  |
 | blocks | [[String: Any]]? |  yes  |  |
 | preset | [String: Any]? |  yes  |  |
 | predicate | [AvailablePagePredicate](#AvailablePagePredicate)? |  yes  |  |

---


 
 
 #### [AvailablePageScreenPredicate](#AvailablePageScreenPredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | Bool? |  yes  |  |
 | desktop | Bool? |  yes  |  |
 | tablet | Bool? |  yes  |  |

---


 
 
 #### [AvailablePageUserPredicate](#AvailablePageUserPredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | authenticated | Bool? |  yes  |  |
 | anonymous | Bool? |  yes  |  |

---


 
 
 #### [AvailablePageRoutePredicate](#AvailablePageRoutePredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | selected | String? |  yes  |  |
 | exactUrl | String? |  yes  |  |
 | query | [String: Any]? |  yes  |  |

---


 
 
 #### [AvailablePagePredicate](#AvailablePagePredicate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | screen | [AvailablePageScreenPredicate](#AvailablePageScreenPredicate)? |  yes  |  |
 | user | [AvailablePageUserPredicate](#AvailablePageUserPredicate)? |  yes  |  |
 | route | [AvailablePageRoutePredicate](#AvailablePageRoutePredicate)? |  yes  |  |

---


 
 
 #### [AllAvailablePageSchema](#AllAvailablePageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pages | [[AvailablePageSchema](#AvailablePageSchema)]? |  yes  |  |

---


 
 
 #### [PaginationSchema](#PaginationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | current | Int? |  yes  |  |

---


 
 
 #### [ThemesListingResponseSchema](#ThemesListingResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ThemesSchema](#ThemesSchema)]? |  yes  |  |
 | page | [PaginationSchema](#PaginationSchema)? |  yes  |  |

---


 
 
 #### [AddThemeRequestSchema](#AddThemeRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | themeId | String? |  yes  |  |

---


 
 
 #### [UpgradableThemeSchema](#UpgradableThemeSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | parentTheme | String? |  yes  |  |
 | appliedTheme | String? |  yes  |  |
 | upgrade | Bool? |  yes  |  |

---


 
 
 #### [FontsSchema](#FontsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [FontsSchemaItems](#FontsSchemaItems)? |  yes  |  |
 | kind | String? |  yes  |  |

---


 
 
 #### [BlitzkriegApiErrorSchema](#BlitzkriegApiErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [BlitzkriegNotFoundSchema](#BlitzkriegNotFoundSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [BlitzkriegInternalServerErrorSchema](#BlitzkriegInternalServerErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [FontsSchemaItems](#FontsSchemaItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | family | String? |  yes  |  |
 | variants | [String]? |  yes  |  |
 | subsets | [String]? |  yes  |  |
 | version | String? |  yes  |  |
 | lastModified | String? |  yes  |  |
 | files | [FontsSchemaItemsFiles](#FontsSchemaItemsFiles)? |  yes  |  |
 | category | String? |  yes  |  |
 | kind | String? |  yes  |  |

---


 
 
 #### [FontsSchemaItemsFiles](#FontsSchemaItemsFiles)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | regular | String? |  yes  |  |
 | italic | String? |  yes  |  |
 | bold | String? |  yes  |  |

---


 
 
 #### [ThemesSchema](#ThemesSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | applied | Bool? |  yes  |  |
 | customized | Bool? |  yes  |  |
 | published | Bool? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | version | String? |  yes  |  |
 | parentThemeVersion | String? |  yes  |  |
 | parentTheme | String? |  yes  |  |
 | information | [Information](#Information)? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | src | [Src](#Src)? |  yes  |  |
 | assets | [AssetsSchema](#AssetsSchema)? |  yes  |  |
 | availableSections | [[availableSectionSchema](#availableSectionSchema)]? |  yes  |  |
 | constants | [String: Any]? |  yes  |  |
 | styles | [String: Any]? |  yes  |  |
 | config | [Config](#Config)? |  yes  |  |
 | settings | [String: Any]? |  yes  |  |
 | font | [Font](#Font)? |  yes  |  |
 | id | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | colors | [Colors](#Colors)? |  yes  |  |

---


 
 
 #### [availableSectionSchema](#availableSectionSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | blocks | [[Blocks](#Blocks)]? |  yes  |  |
 | name | String? |  yes  |  |
 | label | String? |  yes  |  |
 | props | [[BlocksProps](#BlocksProps)]? |  yes  |  |

---


 
 
 #### [Information](#Information)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | images | [Images](#Images)? |  yes  |  |
 | features | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [Images](#Images)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | desktop | [String]? |  yes  |  |
 | android | [String]? |  yes  |  |
 | ios | [String]? |  yes  |  |
 | thumbnail | [String]? |  yes  |  |

---


 
 
 #### [Src](#Src)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |

---


 
 
 #### [AssetsSchema](#AssetsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | umdJs | [UmdJs](#UmdJs)? |  yes  |  |
 | commonJs | [CommonJs](#CommonJs)? |  yes  |  |
 | css | [Css](#Css)? |  yes  |  |

---


 
 
 #### [UmdJs](#UmdJs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |

---


 
 
 #### [CommonJs](#CommonJs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |

---


 
 
 #### [Css](#Css)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |

---


 
 
 #### [Seo](#Seo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [Sections](#Sections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | String? |  yes  |  |

---


 
 
 #### [Config](#Config)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | preset | [Preset](#Preset)? |  yes  |  |
 | globalSchema | [GlobalSchema](#GlobalSchema)? |  yes  |  |
 | current | String? |  yes  |  |
 | list | [[ListSchemaItem](#ListSchemaItem)]? |  yes  |  |

---


 
 
 #### [Preset](#Preset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pages | [[AvailablePageSchema](#AvailablePageSchema)]? |  yes  |  |

---


 
 
 #### [GlobalSchema](#GlobalSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [[GlobalSchemaProps](#GlobalSchemaProps)]? |  yes  |  |

---


 
 
 #### [ListSchemaItem](#ListSchemaItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | global | [String: Any]? |  yes  |  |
 | page | [[ConfigPage](#ConfigPage)]? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [Colors](#Colors)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bgColor | String? |  yes  |  |
 | primaryColor | String? |  yes  |  |
 | secondaryColor | String? |  yes  |  |
 | accentColor | String? |  yes  |  |
 | linkColor | String? |  yes  |  |
 | buttonSecondaryColor | String? |  yes  |  |

---


 
 
 #### [Custom](#Custom)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | props | [String: Any]? |  yes  |  |

---


 
 
 #### [ConfigPage](#ConfigPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | settings | [String: Any]? |  yes  |  |
 | page | String? |  yes  |  |

---


 
 
 #### [Font](#Font)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | family | String? |  yes  |  |
 | variants | [Variants](#Variants)? |  yes  |  |

---


 
 
 #### [Variants](#Variants)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | medium | [Medium](#Medium)? |  yes  |  |
 | semiBold | [SemiBold](#SemiBold)? |  yes  |  |
 | bold | [Bold](#Bold)? |  yes  |  |
 | light | [Light](#Light)? |  yes  |  |
 | regular | [Regular](#Regular)? |  yes  |  |

---


 
 
 #### [Medium](#Medium)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | file | String? |  yes  |  |

---


 
 
 #### [SemiBold](#SemiBold)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | file | String? |  yes  |  |

---


 
 
 #### [Bold](#Bold)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | file | String? |  yes  |  |

---


 
 
 #### [Light](#Light)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | file | String? |  yes  |  |

---


 
 
 #### [Regular](#Regular)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | file | String? |  yes  |  |

---


 
 
 #### [Blocks](#Blocks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | name | String? |  yes  |  |
 | props | [[BlocksProps](#BlocksProps)]? |  yes  |  |

---


 
 
 #### [GlobalSchemaProps](#GlobalSchemaProps)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | label | String? |  yes  |  |
 | type | String? |  yes  |  |
 | category | String? |  yes  |  |

---


 
 
 #### [BlocksProps](#BlocksProps)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | label | String? |  yes  |  |
 | type | String? |  yes  |  |

---




 
 
 #### [EditEmailRequestSchema](#EditEmailRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |

---


 
 
 #### [SendVerificationLinkMobileRequestSchema](#SendVerificationLinkMobileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool? |  yes  |  |
 | active | Bool? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | primary | Bool? |  yes  |  |

---


 
 
 #### [EditMobileRequestSchema](#EditMobileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | phone | String? |  yes  |  |

---


 
 
 #### [EditProfileRequestSchema](#EditProfileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | mobile | [EditProfileMobileSchema](#EditProfileMobileSchema)? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | email | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | dob | String? |  yes  |  |
 | profilePicUrl | String? |  yes  |  |
 | androidHash | String? |  yes  |  |
 | sender | String? |  yes  |  |
 | registerToken | String? |  yes  |  |

---


 
 
 #### [EditProfileMobileSchema](#EditProfileMobileSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [SendEmailOtpRequestSchema](#SendEmailOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | action | String? |  yes  |  |
 | token | String? |  yes  |  |
 | registerToken | String? |  yes  |  |

---


 
 
 #### [VerifyEmailOtpRequestSchema](#VerifyEmailOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | action | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | otp | String? |  yes  |  |

---


 
 
 #### [VerifyOtpRequestSchema](#VerifyOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | requestId | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | otp | String? |  yes  |  |

---


 
 
 #### [SendMobileOtpRequestSchema](#SendMobileOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | action | String? |  yes  |  |
 | token | String? |  yes  |  |
 | androidHash | String? |  yes  |  |
 | force | String? |  yes  |  |
 | captchaCode | String? |  yes  |  |

---


 
 
 #### [UpdatePasswordRequestSchema](#UpdatePasswordRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | oldPassword | String? |  yes  |  |
 | newPassword | String? |  yes  |  |

---


 
 
 #### [FormRegisterRequestSchema](#FormRegisterRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | email | String? |  yes  |  |
 | password | String? |  yes  |  |
 | phone | [FormRegisterRequestSchemaPhone](#FormRegisterRequestSchemaPhone)? |  yes  |  |
 | registerToken | String? |  yes  |  |

---


 
 
 #### [TokenRequestBodySchema](#TokenRequestBodySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | token | String? |  yes  |  |

---


 
 
 #### [ForgotPasswordRequestSchema](#ForgotPasswordRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | password | String? |  yes  |  |

---


 
 
 #### [CodeRequestBodySchema](#CodeRequestBodySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |

---


 
 
 #### [SendResetPasswordEmailRequestSchema](#SendResetPasswordEmailRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | captchaCode | String? |  yes  |  |

---


 
 
 #### [PasswordLoginRequestSchema](#PasswordLoginRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | captchaCode | String? |  yes  |  |
 | password | String? |  yes  |  |
 | username | String? |  yes  |  |

---


 
 
 #### [SendOtpRequestSchema](#SendOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | captchaCode | String? |  yes  |  |
 | mobile | String? |  yes  |  |

---


 
 
 #### [OAuthRequestSchema](#OAuthRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSignedIn | Bool? |  yes  |  |
 | oauth2 | [OAuthRequestSchemaOauth2](#OAuthRequestSchemaOauth2)? |  yes  |  |
 | profile | [OAuthRequestSchemaProfile](#OAuthRequestSchemaProfile)? |  yes  |  |

---


 
 
 #### [UserObjectSchema](#UserObjectSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |

---


 
 
 #### [AuthSuccess](#AuthSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | registerToken | String? |  yes  |  |
 | userExists | Bool? |  yes  |  |
 | user | [UserSchema](#UserSchema)? |  yes  |  |

---


 
 
 #### [SendOtpResponse](#SendOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | resendTimer | Int? |  yes  |  |
 | resendToken | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | requestId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | email | String? |  yes  |  |
 | resendEmailToken | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | verifyEmailOtp | Bool? |  yes  |  |
 | verifyMobileOtp | Bool? |  yes  |  |
 | userExists | Bool? |  yes  |  |

---


 
 
 #### [ProfileEditSuccess](#ProfileEditSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | userExists | Bool? |  yes  |  |
 | verifyEmailLink | Bool? |  yes  |  |
 | verifyEmailOtp | Bool? |  yes  |  |
 | verifyMobileOtp | Bool? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [LoginSuccess](#LoginSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |
 | requestId | String? |  yes  |  |
 | registerToken | String? |  yes  |  |

---


 
 
 #### [VerifyOtpSuccess](#VerifyOtpSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |
 | userExists | Bool? |  yes  |  |
 | registerToken | String? |  yes  |  |

---


 
 
 #### [ResetPasswordSuccess](#ResetPasswordSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |

---


 
 
 #### [RegisterFormSuccess](#RegisterFormSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | resendTimer | Int? |  yes  |  |
 | resendToken | String? |  yes  |  |
 | resendEmailToken | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | requestId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | verifyEmailOtp | Bool? |  yes  |  |
 | verifyMobileOtp | Bool? |  yes  |  |
 | userExists | Bool? |  yes  |  |

---


 
 
 #### [VerifyEmailSuccess](#VerifyEmailSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [HasPasswordSuccess](#HasPasswordSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | result | Bool? |  yes  |  |

---


 
 
 #### [LogoutSuccess](#LogoutSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logout | Bool? |  yes  |  |

---


 
 
 #### [OtpSuccess](#OtpSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | resendTimer | Int? |  yes  |  |
 | resendToken | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | success | Bool? |  yes  |  |
 | requestId | String? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [EmailOtpSuccess](#EmailOtpSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |

---


 
 
 #### [SessionListSuccess](#SessionListSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sessions | [String]? |  yes  |  |

---


 
 
 #### [VerifyMobileOTPSuccess](#VerifyMobileOTPSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |
 | verifyMobileLink | Bool? |  yes  |  |

---


 
 
 #### [VerifyEmailOTPSuccess](#VerifyEmailOTPSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |
 | verifyEmailLink | Bool? |  yes  |  |

---


 
 
 #### [SendMobileVerifyLinkSuccess](#SendMobileVerifyLinkSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verifyMobileLink | Bool? |  yes  |  |

---


 
 
 #### [SendEmailVerifyLinkSuccess](#SendEmailVerifyLinkSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verifyEmailLink | Bool? |  yes  |  |

---


 
 
 #### [UserSearchResponseSchema](#UserSearchResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | users | [[UserSchema](#UserSchema)]? |  yes  |  |

---


 
 
 #### [CustomerListResponseSchema](#CustomerListResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[UserSchema](#UserSchema)]? |  yes  |  |
 | page | [PaginationSchema](#PaginationSchema)? |  yes  |  |

---


 
 
 #### [UnauthorizedSchema](#UnauthorizedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [UnauthenticatedSchema](#UnauthenticatedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | authenticated | Bool? |  yes  |  |

---


 
 
 #### [NotFoundSchema](#NotFoundSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [AuthenticationInternalServerErrorSchema](#AuthenticationInternalServerErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [AuthenticationApiErrorSchema](#AuthenticationApiErrorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [ProfileEditSuccessSchema](#ProfileEditSuccessSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | verifyEmailOtp | Bool? |  yes  |  |
 | verifyEmailLink | Bool? |  yes  |  |
 | verifyMobileOtp | Bool? |  yes  |  |
 | user | String? |  yes  |  |
 | registerToken | String? |  yes  |  |
 | userExists | Bool? |  yes  |  |

---


 
 
 #### [FormRegisterRequestSchemaPhone](#FormRegisterRequestSchemaPhone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | mobile | String? |  yes  |  |

---


 
 
 #### [OAuthRequestSchemaOauth2](#OAuthRequestSchemaOauth2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accessToken | String? |  yes  |  |
 | expiry | Int? |  yes  |  |
 | refreshToken | String? |  yes  |  |

---


 
 
 #### [OAuthRequestSchemaProfile](#OAuthRequestSchemaProfile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lastName | String? |  yes  |  |
 | image | String? |  yes  |  |
 | id | String? |  yes  |  |
 | email | String? |  yes  |  |
 | fullName | String? |  yes  |  |
 | firstName | String? |  yes  |  |

---


 
 
 #### [AuthSuccessUser](#AuthSuccessUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | debug | [AuthSuccessUserDebug](#AuthSuccessUserDebug)? |  yes  |  |
 | active | Bool? |  yes  |  |
 | emails | [AuthSuccessUserEmails](#AuthSuccessUserEmails)? |  yes  |  |

---


 
 
 #### [AuthSuccessUserDebug](#AuthSuccessUserDebug)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | platform | String? |  yes  |  |

---


 
 
 #### [AuthSuccessUserEmails](#AuthSuccessUserEmails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | active | Bool? |  yes  |  |

---


 
 
 #### [CreateUserRequestSchema](#CreateUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String |  no  |  |
 | email | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | username | String |  no  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateUserResponseSchema](#CreateUserResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema)? |  yes  |  |

---


 
 
 #### [CreateUserSessionRequestSchema](#CreateUserSessionRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | String? |  yes  |  |
 | maxAge | Double? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [CreateUserSessionResponseSchema](#CreateUserSessionResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | String? |  yes  |  |
 | maxAge | Double? |  yes  |  |
 | secure | Bool? |  yes  |  |
 | httpOnly | Bool? |  yes  |  |
 | cookie | [String: Any]? |  yes  |  |

---


 
 
 #### [PlatformSchema](#PlatformSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | lookAndFeel | [LookAndFeel](#LookAndFeel)? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | forgotPassword | Bool? |  yes  |  |
 | login | [Login](#Login)? |  yes  |  |
 | skipCaptcha | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | meta | [MetaSchema](#MetaSchema)? |  yes  |  |
 | id | String? |  yes  |  |
 | social | [Social](#Social)? |  yes  |  |
 | requiredFields | [RequiredFields](#RequiredFields)? |  yes  |  |
 | registerRequiredFields | [RegisterRequiredFields](#RegisterRequiredFields)? |  yes  |  |
 | skipLogin | Bool? |  yes  |  |
 | flashCard | [FlashCard](#FlashCard)? |  yes  |  |
 | subtext | String? |  yes  |  |
 | socialTokens | [SocialTokens](#SocialTokens)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | register | Bool? |  yes  |  |
 | mobileImage | String? |  yes  |  |
 | desktopImage | String? |  yes  |  |

---


 
 
 #### [LookAndFeel](#LookAndFeel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cardPosition | String? |  yes  |  |
 | backgroundColor | String? |  yes  |  |

---


 
 
 #### [Login](#Login)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | password | Bool? |  yes  |  |
 | otp | Bool? |  yes  |  |

---


 
 
 #### [MetaSchema](#MetaSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fyndDefault | Bool? |  yes  |  |

---


 
 
 #### [Social](#Social)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | accountKit | Bool? |  yes  |  |
 | facebook | Bool? |  yes  |  |
 | google | Bool? |  yes  |  |

---


 
 
 #### [RequiredFields](#RequiredFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [PlatformEmail](#PlatformEmail)? |  yes  |  |
 | mobile | [PlatformMobile](#PlatformMobile)? |  yes  |  |

---


 
 
 #### [PlatformEmail](#PlatformEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [PlatformMobile](#PlatformMobile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [RegisterRequiredFields](#RegisterRequiredFields)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [RegisterRequiredFieldsEmail](#RegisterRequiredFieldsEmail)? |  yes  |  |
 | mobile | [RegisterRequiredFieldsMobile](#RegisterRequiredFieldsMobile)? |  yes  |  |

---


 
 
 #### [RegisterRequiredFieldsEmail](#RegisterRequiredFieldsEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [RegisterRequiredFieldsMobile](#RegisterRequiredFieldsMobile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isRequired | Bool? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [FlashCard](#FlashCard)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | textColor | String? |  yes  |  |
 | backgroundColor | String? |  yes  |  |

---


 
 
 #### [SocialTokens](#SocialTokens)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [Facebook](#Facebook)? |  yes  |  |
 | accountKit | [Accountkit](#Accountkit)? |  yes  |  |
 | google | [Google](#Google)? |  yes  |  |

---


 
 
 #### [Facebook](#Facebook)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |

---


 
 
 #### [Accountkit](#Accountkit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |

---


 
 
 #### [Google](#Google)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |

---


 
 
 #### [UpdateUserRequestSchema](#UpdateUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [UserSchema](#UserSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firstName | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | lastName | String? |  yes  |  |
 | phoneNumbers | [[PhoneNumber](#PhoneNumber)]? |  yes  |  |
 | emails | [[Email](#Email)]? |  yes  |  |
 | gender | String? |  yes  |  |
 | dob | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | profilePicUrl | String? |  yes  |  |
 | username | String? |  yes  |  |
 | accountType | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | debug | [Debug](#Debug)? |  yes  |  |
 | hasOldPasswordHash | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---




 
 
 #### [ApplicationLegal](#ApplicationLegal)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | tnc | String? |  yes  |  |
 | policy | String? |  yes  |  |
 | shipping | String? |  yes  |  |
 | faq | [[ApplicationLegalFAQ](#ApplicationLegalFAQ)]? |  yes  |  |
 | id | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [ApplicationLegalFAQ](#ApplicationLegalFAQ)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |

---


 
 
 #### [SeoComponent](#SeoComponent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | seo | [SeoSchema](#SeoSchema)? |  yes  |  |

---


 
 
 #### [SeoSchema](#SeoSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | String? |  yes  |  |
 | id | String? |  yes  |  |
 | robotsTxt | String? |  yes  |  |
 | sitemapEnabled | Bool? |  yes  |  |
 | customMetaTags | [[CustomMetaTag](#CustomMetaTag)]? |  yes  |  |
 | details | [Detail](#Detail)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [CustomMetaTag](#CustomMetaTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | content | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [Detail](#Detail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [AnnouncementPageSchema](#AnnouncementPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageSlug | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [EditorMeta](#EditorMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | foregroundColor | String? |  yes  |  |
 | backgroundColor | String? |  yes  |  |
 | contentType | String? |  yes  |  |
 | content | String? |  yes  |  |

---


 
 
 #### [AnnouncementAuthorSchema](#AnnouncementAuthorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String? |  yes  |  |
 | modifiedBy | String? |  yes  |  |

---


 
 
 #### [AdminAnnouncementSchema](#AdminAnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | platforms | [String]? |  yes  |  |
 | title | String? |  yes  |  |
 | announcement | String? |  yes  |  |
 | pages | [[AnnouncementPageSchema](#AnnouncementPageSchema)]? |  yes  |  |
 | editorMeta | [EditorMeta](#EditorMeta)? |  yes  |  |
 | author | [AnnouncementAuthorSchema](#AnnouncementAuthorSchema)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | app | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema)? |  yes  |  |

---


 
 
 #### [ScheduleSchema](#ScheduleSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String? |  yes  |  |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |
 | duration | Double? |  yes  |  |
 | nextSchedule | [[NextSchedule](#NextSchedule)]? |  yes  |  |

---


 
 
 #### [NextSchedule](#NextSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [AnnouncementSchema](#AnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | announcement | String? |  yes  |  |
 | schedule | [ScheduleStartSchema](#ScheduleStartSchema)? |  yes  |  |

---


 
 
 #### [ScheduleStartSchema](#ScheduleStartSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [BlogGetResponse](#BlogGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BlogSchema](#BlogSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [ResourceContent](#ResourceContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [Asset](#Asset)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | id | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [Author](#Author)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | designation | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [BlogSchema](#BlogSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | application | String? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | author | [Author](#Author)? |  yes  |  |
 | content | [[ResourceContent](#ResourceContent)]? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | published | Bool? |  yes  |  |
 | readingTime | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | schedule | [CronSchedule](#CronSchedule)? |  yes  |  |
 | title | String? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |

---


 
 
 #### [SEO](#SEO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | image | [SEOImage](#SEOImage)? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [SEOImage](#SEOImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [BlogRequest](#BlogRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | author | [Author](#Author)? |  yes  |  |
 | content | [[ResourceContent](#ResourceContent)]? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | published | Bool? |  yes  |  |
 | readingTime | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | title | String? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | schedule | [CronSchedule](#CronSchedule)? |  yes  |  |

---


 
 
 #### [GetAnnouncementListSchema](#GetAnnouncementListSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AdminAnnouncementSchema](#AdminAnnouncementSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [CreateAnnouncementSchema](#CreateAnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | data | [AdminAnnouncementSchema](#AdminAnnouncementSchema)? |  yes  |  |

---


 
 
 #### [Navigation](#Navigation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | orientation | String? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | id | String? |  yes  |  |
 | position | String? |  yes  |  |
 | application | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | navigation | [NavigationReference](#NavigationReference)? |  yes  |  |

---


 
 
 #### [LocaleLanguage](#LocaleLanguage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hi | [Language](#Language)? |  yes  |  |
 | ar | [Language](#Language)? |  yes  |  |
 | enUs | [Language](#Language)? |  yes  |  |

---


 
 
 #### [Language](#Language)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |

---


 
 
 #### [Action](#Action)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [ActionPage](#ActionPage)? |  yes  |  |
 | popup | [ActionPage](#ActionPage)? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ActionPage](#ActionPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | params | [String: [String]]? |  yes  |  |
 | query | [String: [String]]? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [NavigationReference](#NavigationReference)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | acl | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | localeLanguage | [LocaleLanguage](#LocaleLanguage)? |  yes  |  |
 | image | String? |  yes  |  |
 | type | String? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | active | Bool? |  yes  |  |
 | display | String? |  yes  |  |
 | sortOrder | Int? |  yes  |  |
 | subNavigation | [[NavigationReference](#NavigationReference)]? |  yes  |  |

---


 
 
 #### [LandingPage](#LandingPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [LandingPageSchema](#LandingPageSchema)? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ConfigurationSchema](#ConfigurationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sleepTime | Int? |  yes  |  |
 | startOnLaunch | Bool? |  yes  |  |
 | duration | Int? |  yes  |  |
 | slideDirection | String? |  yes  |  |

---


 
 
 #### [SlideshowMedia](#SlideshowMedia)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | url | String? |  yes  |  |
 | bgColor | String? |  yes  |  |
 | duration | Int? |  yes  |  |
 | autoDecideDuration | Bool? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |

---


 
 
 #### [Slideshow](#Slideshow)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [SlideshowSchema](#SlideshowSchema)? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [AnnouncementsResponseSchema](#AnnouncementsResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | announcements | [String: [[AnnouncementSchema](#AnnouncementSchema)]]? |  yes  |  |
 | refreshRate | Int? |  yes  | number of seconds after which api should hit again to fetch new announcements |
 | refreshPages | [String]? |  yes  | list of page slugs on which announcement should be fetched as soon as they are loaded |

---


 
 
 #### [FaqResponseSchema](#FaqResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faqs | [[FaqSchema](#FaqSchema)]? |  yes  |  |

---


 
 
 #### [UpdateHandpickedSchema](#UpdateHandpickedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | [HandpickedTagSchema](#HandpickedTagSchema)? |  yes  |  |

---


 
 
 #### [HandpickedTagSchema](#HandpickedTagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | position | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | content | String? |  yes  |  |

---


 
 
 #### [RemoveHandpickedSchema](#RemoveHandpickedSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  |  |

---


 
 
 #### [CreateTagSchema](#CreateTagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | id | String? |  yes  |  |
 | type | String? |  yes  |  |
 | url | String? |  yes  |  |
 | position | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | content | String? |  yes  |  |

---


 
 
 #### [CreateTagRequestSchema](#CreateTagRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [[CreateTagSchema](#CreateTagSchema)]? |  yes  |  |

---


 
 
 #### [APIError](#APIError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | status | Double? |  yes  |  |
 | code | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | info | String? |  yes  |  |
 | requestId | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [CategorySchema](#CategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | index | Int? |  yes  |  |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | children | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | iconUrl | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [ChildrenSchema](#ChildrenSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [CategoryRequestSchema](#CategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [FAQCategorySchema](#FAQCategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | index | Int? |  yes  |  |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | children | [[ChildrenSchema](#ChildrenSchema)]? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | iconUrl | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [FaqSchema](#FaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | application | String? |  yes  |  |
 | id | String? |  yes  |  |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |

---


 
 
 #### [FAQ](#FAQ)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | question | String? |  yes  |  |
 | answer | String? |  yes  |  |

---


 
 
 #### [CreateFaqResponseSchema](#CreateFaqResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faq | [FaqSchema](#FaqSchema)? |  yes  |  |

---


 
 
 #### [CreateFaqSchema](#CreateFaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faq | [FAQ](#FAQ)? |  yes  |  |

---


 
 
 #### [GetFaqSchema](#GetFaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | faqs | [[FaqSchema](#FaqSchema)]? |  yes  |  |

---


 
 
 #### [UpdateFaqCategoryRequestSchema](#UpdateFaqCategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategorySchema](#CategorySchema)? |  yes  |  |

---


 
 
 #### [CreateFaqCategoryRequestSchema](#CreateFaqCategoryRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategoryRequestSchema](#CategoryRequestSchema)? |  yes  |  |

---


 
 
 #### [CreateFaqCategorySchema](#CreateFaqCategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [CategorySchema](#CategorySchema)? |  yes  |  |

---


 
 
 #### [GetFaqCategoriesSchema](#GetFaqCategoriesSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categories | [[CategorySchema](#CategorySchema)]? |  yes  |  |

---


 
 
 #### [GetFaqCategoryBySlugSchema](#GetFaqCategoryBySlugSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category | [FAQCategorySchema](#FAQCategorySchema)? |  yes  |  |

---


 
 
 #### [LandingPageGetResponse](#LandingPageGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[LandingPageSchema](#LandingPageSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [LandingPageSchema](#LandingPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | action | [Action](#Action)? |  yes  |  |
 | platform | [String]? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [DefaultNavigationResponse](#DefaultNavigationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[NavigationSchema](#NavigationSchema)]? |  yes  |  |

---


 
 
 #### [NavigationGetResponse](#NavigationGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[NavigationSchema](#NavigationSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [Orientation](#Orientation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | portrait | [String]? |  yes  |  |
 | landscape | [String]? |  yes  |  |

---


 
 
 #### [NavigationSchema](#NavigationSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | platform | [String]? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | orientation | [Orientation](#Orientation)? |  yes  |  |
 | version | Double? |  yes  |  |
 | navigation | [[NavigationReference](#NavigationReference)]? |  yes  |  |

---


 
 
 #### [NavigationRequest](#NavigationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | platform | [String]? |  yes  |  |
 | orientation | [Orientation](#Orientation)? |  yes  |  |
 | navigation | [[NavigationReference](#NavigationReference)]? |  yes  |  |

---


 
 
 #### [CustomPageSchema](#CustomPageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | title | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | type | String? |  yes  |  |
 | orientation | String? |  yes  |  |
 | application | String? |  yes  |  |
 | description | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | content | [[String: Any]]? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema)? |  yes  |  |

---


 
 
 #### [ContentSchema](#ContentSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [CustomPage](#CustomPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [CustomPageSchema](#CustomPageSchema)? |  yes  |  |

---


 
 
 #### [FeatureImage](#FeatureImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [PageGetResponse](#PageGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PageSchema](#PageSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PageSpec](#PageSpec)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | specifications | [[PageSpecItem](#PageSpecItem)]? |  yes  |  |

---


 
 
 #### [PageSpecParam](#PageSpecParam)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | required | Bool? |  yes  |  |

---


 
 
 #### [PageSpecItem](#PageSpecItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageType | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | params | [[PageSpecParam](#PageSpecParam)]? |  yes  |  |
 | query | [[PageSpecParam](#PageSpecParam)]? |  yes  |  |

---


 
 
 #### [PageSchema](#PageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | componentIds | [String]? |  yes  | Components can be used to store multiple components |
 | content | [[PageContent](#PageContent)]? |  yes  |  |
 | createdBy | [CreatedBySchema](#CreatedBySchema)? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | description | String? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | pageMeta | [[PageMeta](#PageMeta)]? |  yes  |  |
 | schedule | [ScheduleSchema](#ScheduleSchema)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | orientation | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | title | String? |  yes  |  |
 | type | String? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | visibility | [String: Any]? |  yes  |  |

---


 
 
 #### [CreatedBySchema](#CreatedBySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |

---


 
 
 #### [PageContent](#PageContent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [PageMeta](#PageMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [PageRequest](#PageRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | schedule | [CronSchedule](#CronSchedule)? |  yes  |  |
 | application | String? |  yes  |  |
 | author | [Author](#Author)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | orientation | String? |  yes  |  |
 | content | [[String: Any]]? |  yes  |  |
 | featureImage | [Asset](#Asset)? |  yes  |  |
 | published | Bool? |  yes  |  |
 | readingTime | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | seo | [SEO](#SEO)? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [CronSchedule](#CronSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String? |  yes  |  |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |
 | duration | Double? |  yes  |  |

---


 
 
 #### [PagePublishRequest](#PagePublishRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | publish | Bool? |  yes  |  |

---


 
 
 #### [PageMetaSchema](#PageMetaSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | systemPages | [[NavigationSchema](#NavigationSchema)]? |  yes  |  |
 | customPages | [[PageSchema](#PageSchema)]? |  yes  |  |
 | applicationId | String? |  yes  |  |

---


 
 
 #### [SlideshowGetResponse](#SlideshowGetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SlideshowSchema](#SlideshowSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SlideshowSchema](#SlideshowSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | dateMeta | [DateMeta](#DateMeta)? |  yes  |  |
 | application | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | configuration | [ConfigurationSchema](#ConfigurationSchema)? |  yes  |  |
 | media | [[SlideshowMedia](#SlideshowMedia)]? |  yes  |  |
 | active | Bool? |  yes  |  |
 | archived | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |

---


 
 
 #### [SlideshowRequest](#SlideshowRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | configuration | [ConfigurationSchema](#ConfigurationSchema)? |  yes  |  |
 | media | [SlideshowMedia](#SlideshowMedia)? |  yes  |  |
 | active | Bool? |  yes  |  |

---


 
 
 #### [Support](#Support)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | created | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | configType | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | contact | [ContactSchema](#ContactSchema)? |  yes  |  |

---


 
 
 #### [PhoneProperties](#PhoneProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | code | String? |  yes  |  |
 | number | String? |  yes  |  |

---


 
 
 #### [PhoneSchema](#PhoneSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | phone | [[PhoneProperties](#PhoneProperties)]? |  yes  |  |

---


 
 
 #### [EmailProperties](#EmailProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [EmailSchema](#EmailSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | email | [[EmailProperties](#EmailProperties)]? |  yes  |  |

---


 
 
 #### [ContactSchema](#ContactSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [PhoneSchema](#PhoneSchema)? |  yes  |  |
 | email | [EmailSchema](#EmailSchema)? |  yes  |  |

---


 
 
 #### [TagsSchema](#TagsSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String? |  yes  |  |
 | id | String? |  yes  |  |
 | tags | [[TagSchema](#TagSchema)]? |  yes  |  |

---


 
 
 #### [TagSchema](#TagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |
 | subType | String? |  yes  |  |
 | id | String? |  yes  |  |
 | position | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | content | String? |  yes  |  |

---




 
 
 #### [ErrorResponseSchema](#ErrorResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Reason for failure |
 | code | Double? |  yes  | error code |

---


 
 
 #### [Success](#Success)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [CreatedModifiedByObject](#CreatedModifiedByObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [PickupPointResponse](#PickupPointResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ItemProperties](#ItemProperties)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PickupPointSchema](#PickupPointSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notificationEmails | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | code | String? |  yes  |  |
 | address | [AddressObject](#AddressObject)? |  yes  |  |
 | additionalContacts | [AdditionalContactsObject](#AdditionalContactsObject)? |  yes  |  |
 | timing | [[AdditionalContactsObject](#AdditionalContactsObject)]? |  yes  |  |
 | createdBy | [CreatedModifiedByObject](#CreatedModifiedByObject)? |  yes  |  |
 | modifiedBy | [TimingObject](#TimingObject)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [ItemProperties](#ItemProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notificationEmails | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | code | String? |  yes  |  |
 | address | [AddressObject](#AddressObject)? |  yes  |  |
 | additionalContacts | [AdditionalContactsObject](#AdditionalContactsObject)? |  yes  |  |
 | timing | [[AdditionalContactsObject](#AdditionalContactsObject)]? |  yes  |  |
 | createdBy | [CreatedModifiedByObject](#CreatedModifiedByObject)? |  yes  |  |
 | modifiedBy | [TimingObject](#TimingObject)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [AddressObject](#AddressObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | state | String? |  yes  |  |
 | pincode | Double? |  yes  |  |
 | country | String? |  yes  |  |
 | countryCode | String? |  yes  |  |

---


 
 
 #### [AdditionalContactsObject](#AdditionalContactsObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | Double? |  yes  |  |
 | countryCode | Double? |  yes  |  |

---


 
 
 #### [TimingObject](#TimingObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opening | [OpeningClosingObject](#OpeningClosingObject)? |  yes  |  |
 | closing | [OpeningClosingObject](#OpeningClosingObject)? |  yes  |  |
 | open | Bool? |  yes  |  |
 | weekday | String? |  yes  |  |

---


 
 
 #### [OpeningClosingObject](#OpeningClosingObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hour | String? |  yes  |  |
 | minute | String? |  yes  |  |

---


 
 
 #### [PickupResponse](#PickupResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[PickupResponseItems](#PickupResponseItems)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PickupConfiguration](#PickupConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | datetimeCheck | Bool? |  yes  |  |
 | header | String? |  yes  |  |
 | instructionForCustomer | String? |  yes  |  |

---


 
 
 #### [PickupResponseItems](#PickupResponseItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | datetimeCheck | Bool? |  yes  |  |
 | header | String? |  yes  |  |
 | instructionForCustomer | String? |  yes  |  |
 | appId | String? |  yes  |  |

---


 
 
 #### [ShippingSchema](#ShippingSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | assignment | [AssignmentSchema](#AssignmentSchema)? |  yes  |  |
 | id | String? |  yes  |  |
 | appId | String? |  yes  |  |

---


 
 
 #### [ShippingResponse](#ShippingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [ShippingSchema](#ShippingSchema)? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [AssignmentSchema](#AssignmentSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fulfillmentPriority | [FulfillmentPriorityObject](#FulfillmentPriorityObject)? |  yes  |  |
 | defaultSortStrategy | String? |  yes  |  |

---


 
 
 #### [FulfillmentPriorityObject](#FulfillmentPriorityObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priorities | String? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [StoreSchema](#StoreSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | assignment | [StoreAssignmentObject](#StoreAssignmentObject)? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [StoreResponse](#StoreResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [StoreSchema](#StoreSchema)? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [StoreAssignmentObject](#StoreAssignmentObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | strategy | [StrategyObject](#StrategyObject)? |  yes  |  |
 | assignmentType | String? |  yes  |  |

---


 
 
 #### [StrategyObject](#StrategyObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rules | [[StrategyItems](#StrategyItems)]? |  yes  |  |

---


 
 
 #### [StrategyItems](#StrategyItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productTags | [String]? |  yes  |  |
 | zone | String? |  yes  |  |

---


 
 
 #### [StoreListResponse](#StoreListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [ZoneSchema](#ZoneSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | zoneDetail | [ZoneDetailsObject](#ZoneDetailsObject)? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [ZoneListResponse](#ZoneListResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ZoneSchema](#ZoneSchema)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [RegionObject](#RegionObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | state | String? |  yes  |  |

---


 
 
 #### [PincodeObject](#PincodeObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincodeList | [Double]? |  yes  |  |

---


 
 
 #### [RadiusObject](#RadiusObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | Double? |  yes  |  |

---


 
 
 #### [ZoneDetailsObject](#ZoneDetailsObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | radius | [RadiusObject](#RadiusObject)? |  yes  |  |
 | pincode | [PincodeObject](#PincodeObject)? |  yes  |  |
 | region | [RegionObject](#RegionObject)? |  yes  |  |

---




 
 
 #### [UnauthenticatedUser](#UnauthenticatedUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Failure message. |

---


 
 
 #### [UnauthenticatedApplication](#UnauthenticatedApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Failure message. |

---


 
 
 #### [BadRequest](#BadRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Failure message. |

---


 
 
 #### [ResourceNotFound](#ResourceNotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Resource not found with {id} |

---


 
 
 #### [InternalServerError](#InternalServerError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  | Internal server Server error |
 | code | String? |  yes  | Error code |

---


 
 
 #### [PlanRecurring](#PlanRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String? |  yes  |  |
 | intervalCount | Double? |  yes  |  |

---


 
 
 #### [Plan](#Plan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [PlanRecurring](#PlanRecurring)? |  yes  |  |
 | isTrialPlan | Bool? |  yes  |  |
 | planGroup | String? |  yes  |  |
 | tagLines | [String]? |  yes  |  |
 | currency | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | isVisible | Bool? |  yes  |  |
 | trialPeriod | Double? |  yes  |  |
 | addons | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | country | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | amount | Double? |  yes  |  |
 | productSuiteId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |

---


 
 
 #### [DetailedPlanComponents](#DetailedPlanComponents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | description | String? |  yes  |  |
 | group | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | links | [String: Any]? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | displayText | String? |  yes  |  |

---


 
 
 #### [DetailedPlan](#DetailedPlan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [PlanRecurring](#PlanRecurring)? |  yes  |  |
 | isTrialPlan | Bool? |  yes  |  |
 | planGroup | String? |  yes  |  |
 | tagLines | [String]? |  yes  |  |
 | currency | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | isVisible | Bool? |  yes  |  |
 | trialPeriod | Double? |  yes  |  |
 | addons | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | country | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | amount | Double? |  yes  |  |
 | productSuiteId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | components | [[DetailedPlanComponents](#DetailedPlanComponents)]? |  yes  |  |

---


 
 
 #### [SubscriptionTrialPeriod](#SubscriptionTrialPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |

---


 
 
 #### [EntityChargePrice](#EntityChargePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double |  no  |  |
 | currencyCode | String |  no  |  |

---


 
 
 #### [EntityChargeRecurring](#EntityChargeRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String |  no  |  |
 | intervalTime | Int |  no  |  |

---


 
 
 #### [ChargeLineItem](#ChargeLineItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | term | String |  no  |  |
 | pricingType | String |  no  |  |
 | price | [EntityChargePrice](#EntityChargePrice) |  no  |  |
 | recurring | [EntityChargeRecurring](#EntityChargeRecurring)? |  yes  |  |
 | cappedAmount | Double? |  yes  |  |
 | trialDays | Int? |  yes  |  |
 | isTest | Bool? |  yes  |  |
 | metadata | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateSubscriptionCharge](#CreateSubscriptionCharge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | trialDays | Int? |  yes  |  |
 | lineItems | [[ChargeLineItem](#ChargeLineItem)] |  no  |  |
 | isTest | Bool? |  yes  |  |
 | returnUrl | String |  no  |  |

---


 
 
 #### [CurrentPeriod](#CurrentPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startDate | String? |  yes  |  |
 | endDate | String? |  yes  |  |

---


 
 
 #### [SubscriptionCharge](#SubscriptionCharge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | term | String? |  yes  |  |
 | pricingType | String? |  yes  |  |
 | price | [EntityChargePrice](#EntityChargePrice)? |  yes  |  |
 | recurring | [EntityChargeRecurring](#EntityChargeRecurring)? |  yes  |  |
 | cappedAmount | Double? |  yes  |  |
 | activatedOn | String? |  yes  |  |
 | cancelledOn | String? |  yes  |  |
 | billingDate | String? |  yes  |  |
 | currentPeriod | [CurrentPeriod](#CurrentPeriod)? |  yes  |  |
 | status | String? |  yes  |  |
 | isTest | Bool? |  yes  |  |
 | metadata | [String: Any]? |  yes  |  |

---


 
 
 #### [EntitySubscription](#EntitySubscription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | status | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | activatedOn | String? |  yes  |  |
 | cancelledOn | String? |  yes  |  |
 | trialDays | Int? |  yes  |  |
 | trialPeriod | [SubscriptionTrialPeriod](#SubscriptionTrialPeriod)? |  yes  |  |
 | metadata | [String: Any]? |  yes  |  |
 | lineItems | [[SubscriptionCharge](#SubscriptionCharge)]? |  yes  |  |

---


 
 
 #### [CreateSubscriptionResponse](#CreateSubscriptionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscription | [EntitySubscription](#EntitySubscription)? |  yes  |  |
 | confirmUrl | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPeriod](#InvoiceDetailsPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsClient](#InvoiceDetailsClient)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addressLines | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | phone | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | value | String? |  yes  |  |
 | timestamp | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsDataChecks](#InvoiceDetailsPaymentMethodsDataChecks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cvcCheck | String? |  yes  |  |
 | addressLine1Check | String? |  yes  |  |
 | addressPostalCodeCheck | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsDataNetworks](#InvoiceDetailsPaymentMethodsDataNetworks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | available | [String]? |  yes  |  |
 | preferred | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsDataThreeDSecureUsage](#InvoiceDetailsPaymentMethodsDataThreeDSecureUsage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | supported | Bool? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsData](#InvoiceDetailsPaymentMethodsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | String? |  yes  |  |
 | last4 | String? |  yes  |  |
 | checks | [InvoiceDetailsPaymentMethodsDataChecks](#InvoiceDetailsPaymentMethodsDataChecks)? |  yes  |  |
 | wallet | String? |  yes  |  |
 | country | String? |  yes  |  |
 | funding | String? |  yes  |  |
 | expYear | Int? |  yes  |  |
 | networks | [InvoiceDetailsPaymentMethodsDataNetworks](#InvoiceDetailsPaymentMethodsDataNetworks)? |  yes  |  |
 | expMonth | Int? |  yes  |  |
 | fingerprint | String? |  yes  |  |
 | generatedFrom | String? |  yes  |  |
 | threeDSecureUsage | [InvoiceDetailsPaymentMethodsDataThreeDSecureUsage](#InvoiceDetailsPaymentMethodsDataThreeDSecureUsage)? |  yes  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethods](#InvoiceDetailsPaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | pgPaymentMethodId | String? |  yes  |  |
 | data | [InvoiceDetailsPaymentMethodsData](#InvoiceDetailsPaymentMethodsData)? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [InvoicePaymentMethod](#InvoicePaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pgPaymentMethodId | String? |  yes  |  |

---


 
 
 #### [InvoiceDetails](#InvoiceDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | period | [InvoiceDetailsPeriod](#InvoiceDetailsPeriod)? |  yes  |  |
 | client | [InvoiceDetailsClient](#InvoiceDetailsClient)? |  yes  |  |
 | autoAdvance | Bool? |  yes  |  |
 | currency | String? |  yes  |  |
 | paid | Bool? |  yes  |  |
 | attemp | Int? |  yes  |  |
 | id | String? |  yes  |  |
 | collectionMethod | String? |  yes  |  |
 | subscriberId | String? |  yes  |  |
 | invoiceUrl | String? |  yes  |  |
 | number | String? |  yes  |  |
 | pgData | [String: Any]? |  yes  |  |
 | receiptNumber | String? |  yes  |  |
 | statementDescriptor | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | statusTrail | [[InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)]? |  yes  |  |
 | subtotal | Double? |  yes  |  |
 | total | Double? |  yes  |  |
 | subscription | String? |  yes  |  |
 | nextActionTime | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | hashIdentifier | String? |  yes  |  |
 | paymentMethod | [InvoicePaymentMethod](#InvoicePaymentMethod)? |  yes  |  |

---


 
 
 #### [InvoiceItemsPlanRecurring](#InvoiceItemsPlanRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String? |  yes  |  |
 | intervalCount | Int? |  yes  |  |

---


 
 
 #### [InvoiceItemsPlan](#InvoiceItemsPlan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [InvoiceItemsPlanRecurring](#InvoiceItemsPlanRecurring)? |  yes  |  |
 | isTrialPlan | Bool? |  yes  |  |
 | planGroup | String? |  yes  |  |
 | tagLines | [String]? |  yes  |  |
 | currency | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | isVisible | Bool? |  yes  |  |
 | trialPeriod | Int? |  yes  |  |
 | addons | [String]? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | country | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | amount | Int? |  yes  |  |
 | productSuiteId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |

---


 
 
 #### [InvoiceItemsPeriod](#InvoiceItemsPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [InvoiceItems](#InvoiceItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | plan | [InvoiceItemsPlan](#InvoiceItemsPlan)? |  yes  |  |
 | name | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | description | String? |  yes  |  |
 | period | [InvoiceItemsPeriod](#InvoiceItemsPeriod)? |  yes  |  |
 | unitAmount | Double? |  yes  |  |
 | amount | Double? |  yes  |  |
 | type | String? |  yes  |  |
 | invoiceId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |

---


 
 
 #### [Invoice](#Invoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoice | [InvoiceDetails](#InvoiceDetails)? |  yes  |  |
 | invoiceItems | [[InvoiceItems](#InvoiceItems)]? |  yes  |  |

---


 
 
 #### [InvoicesDataClient](#InvoicesDataClient)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | addressLines | [String]? |  yes  |  |

---


 
 
 #### [InvoicesDataPeriod](#InvoicesDataPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [InvoicesDataPaymentMethod](#InvoicesDataPaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pgPaymentMethodId | String? |  yes  |  |

---


 
 
 #### [InvoicesData](#InvoicesData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | client | [InvoicesDataClient](#InvoicesDataClient)? |  yes  |  |
 | autoAdvance | Bool? |  yes  |  |
 | currency | String? |  yes  |  |
 | paid | Bool? |  yes  |  |
 | attemp | Int? |  yes  |  |
 | collectionMethod | String? |  yes  |  |
 | subscriberId | String? |  yes  |  |
 | invoiceUrl | String? |  yes  |  |
 | number | String? |  yes  |  |
 | pgData | [String: Any]? |  yes  |  |
 | period | [InvoicesDataPeriod](#InvoicesDataPeriod)? |  yes  |  |
 | receiptNumber | String? |  yes  |  |
 | statementDescriptor | String? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | statusTrail | [[InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)]? |  yes  |  |
 | subtotal | Double? |  yes  |  |
 | total | Double? |  yes  |  |
 | subscription | String? |  yes  |  |
 | nextActionTime | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | hashIdentifier | String? |  yes  |  |
 | paymentMethod | [InvoicesDataPaymentMethod](#InvoicesDataPaymentMethod)? |  yes  |  |
 | invoiceItems | [[InvoiceItems](#InvoiceItems)]? |  yes  |  |

---


 
 
 #### [Invoices](#Invoices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[InvoicesData](#InvoicesData)]? |  yes  |  |
 | start | Int? |  yes  |  |
 | end | Int? |  yes  |  |
 | limit | Int? |  yes  |  |
 | page | Int? |  yes  |  |
 | total | Int? |  yes  |  |

---


 
 
 #### [Phone](#Phone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String? |  yes  |  |
 | phoneCountryCode | String? |  yes  |  |

---


 
 
 #### [SubscriptionBillingAddress](#SubscriptionBillingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | state | String? |  yes  |  |
 | city | String? |  yes  |  |
 | line1 | String? |  yes  |  |
 | line2 | String? |  yes  |  |
 | postalCode | String? |  yes  |  |

---


 
 
 #### [SubscriptionCustomer](#SubscriptionCustomer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [Phone](#Phone)? |  yes  |  |
 | billingAddress | [SubscriptionBillingAddress](#SubscriptionBillingAddress)? |  yes  |  |
 | id | String? |  yes  |  |
 | uniqueId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [SubscriptionCustomerCreate](#SubscriptionCustomerCreate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [Phone](#Phone)? |  yes  |  |
 | billingAddress | [SubscriptionBillingAddress](#SubscriptionBillingAddress)? |  yes  |  |
 | uniqueId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [SubscriptionCurrentPeriod](#SubscriptionCurrentPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [SubscriptionPauseCollection](#SubscriptionPauseCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | behavior | String? |  yes  |  |
 | resumeAt | String? |  yes  |  |

---


 
 
 #### [SubscriptionTrial](#SubscriptionTrial)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [SubscriptionInvoiceSettings](#SubscriptionInvoiceSettings)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | generation | Bool? |  yes  |  |
 | charging | Bool? |  yes  |  |

---


 
 
 #### [Subscription](#Subscription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currentPeriod | [SubscriptionCurrentPeriod](#SubscriptionCurrentPeriod)? |  yes  |  |
 | pauseCollection | [SubscriptionPauseCollection](#SubscriptionPauseCollection)? |  yes  |  |
 | trial | [SubscriptionTrial](#SubscriptionTrial)? |  yes  |  |
 | invoiceSettings | [SubscriptionInvoiceSettings](#SubscriptionInvoiceSettings)? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | cancelAtPeriodEnd | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | subscriberId | String? |  yes  |  |
 | planId | String? |  yes  |  |
 | productSuiteId | String? |  yes  |  |
 | planData | [Plan](#Plan)? |  yes  |  |
 | currentStatus | String? |  yes  |  |
 | collectionMethod | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |
 | latestInvoice | String? |  yes  |  |

---


 
 
 #### [SubscriptionStatus](#SubscriptionStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isEnabled | Bool? |  yes  |  |
 | subscription | [Subscription](#Subscription)? |  yes  |  |

---


 
 
 #### [SubscriptionLimitApplication](#SubscriptionLimitApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | hardLimit | Int? |  yes  |  |
 | softLimit | Int? |  yes  |  |

---


 
 
 #### [SubscriptionLimitMarketplace](#SubscriptionLimitMarketplace)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [SubscriptionLimitOtherPlatform](#SubscriptionLimitOtherPlatform)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [SubscriptionLimitTeam](#SubscriptionLimitTeam)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | limit | Int? |  yes  |  |

---


 
 
 #### [SubscriptionLimitProducts](#SubscriptionLimitProducts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bulk | Bool? |  yes  |  |
 | limit | Int? |  yes  |  |

---


 
 
 #### [SubscriptionLimitExtensions](#SubscriptionLimitExtensions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | limit | Int? |  yes  |  |

---


 
 
 #### [SubscriptionLimitIntegrations](#SubscriptionLimitIntegrations)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | limit | Int? |  yes  |  |

---


 
 
 #### [SubscriptionLimit](#SubscriptionLimit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | [SubscriptionLimitApplication](#SubscriptionLimitApplication)? |  yes  |  |
 | marketplace | [SubscriptionLimitMarketplace](#SubscriptionLimitMarketplace)? |  yes  |  |
 | otherPlatform | [SubscriptionLimitOtherPlatform](#SubscriptionLimitOtherPlatform)? |  yes  |  |
 | team | [SubscriptionLimitTeam](#SubscriptionLimitTeam)? |  yes  |  |
 | products | [SubscriptionLimitProducts](#SubscriptionLimitProducts)? |  yes  |  |
 | extensions | [SubscriptionLimitExtensions](#SubscriptionLimitExtensions)? |  yes  |  |
 | integrations | [SubscriptionLimitIntegrations](#SubscriptionLimitIntegrations)? |  yes  |  |
 | isTrialPlan | Bool? |  yes  |  |

---


 
 
 #### [SubscriptionActivateReq](#SubscriptionActivateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | productSuite | String? |  yes  |  |
 | planId | String? |  yes  |  |
 | paymentMethod | String? |  yes  |  |

---


 
 
 #### [SubscriptionActivateRes](#SubscriptionActivateRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [Subscription](#Subscription)? |  yes  |  |

---


 
 
 #### [CancelSubscriptionReq](#CancelSubscriptionReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | productSuite | String? |  yes  |  |
 | subscriptionId | String? |  yes  |  |

---


 
 
 #### [CancelSubscriptionRes](#CancelSubscriptionRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [Subscription](#Subscription)? |  yes  |  |

---




 
 
 #### [StatsImported](#StatsImported)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |

---


 
 
 #### [StatsProcessedEmail](#StatsProcessedEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Int? |  yes  |  |
 | failed | Int? |  yes  |  |
 | suppressed | Int? |  yes  |  |

---


 
 
 #### [StatsProcessedSms](#StatsProcessedSms)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Int? |  yes  |  |
 | failed | Int? |  yes  |  |
 | suppressed | Int? |  yes  |  |

---


 
 
 #### [StatsProcessed](#StatsProcessed)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [StatsProcessedEmail](#StatsProcessedEmail)? |  yes  |  |
 | sms | [StatsProcessedSms](#StatsProcessedSms)? |  yes  |  |

---


 
 
 #### [Stats](#Stats)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | imported | [String: Any]? |  yes  |  |
 | processed | [String: Any]? |  yes  |  |

---


 
 
 #### [GetStats](#GetStats)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Stats](#Stats)]? |  yes  |  |

---


 
 
 #### [CampaignReq](#CampaignReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | fileUrl | String? |  yes  |  |
 | type | String? |  yes  |  |
 | recordsCount | Int? |  yes  |  |
 | application | String? |  yes  |  |

---


 
 
 #### [RecipientHeaders](#RecipientHeaders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |

---


 
 
 #### [CampaignEmailTemplate](#CampaignEmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [CampignEmailProvider](#CampignEmailProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | fromName | String? |  yes  |  |
 | fromEmail | String? |  yes  |  |

---


 
 
 #### [CampaignEmail](#CampaignEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | [CampaignEmailTemplate](#CampaignEmailTemplate)? |  yes  |  |
 | provider | [CampignEmailProvider](#CampignEmailProvider)? |  yes  |  |

---


 
 
 #### [Campaign](#Campaign)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recipientHeaders | [RecipientHeaders](#RecipientHeaders)? |  yes  |  |
 | email | [CampaignEmail](#CampaignEmail)? |  yes  |  |
 | description | String? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | datasource | String? |  yes  |  |
 | type | String? |  yes  |  |
 | name | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Campaigns](#Campaigns)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Campaign](#Campaign)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [BigqueryHeadersReq](#BigqueryHeadersReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | query | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [BigqueryHeadersResHeaders](#BigqueryHeadersResHeaders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [BigqueryHeadersRes](#BigqueryHeadersRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headers | [[BigqueryHeadersResHeaders](#BigqueryHeadersResHeaders)]? |  yes  |  |

---


 
 
 #### [GetNRecordsCsvReq](#GetNRecordsCsvReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | header | Bool? |  yes  |  |
 | count | Int? |  yes  |  |

---


 
 
 #### [GetNRecordsCsvResItems](#GetNRecordsCsvResItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phoneNumber | String? |  yes  |  |
 | email | String? |  yes  |  |
 | firstname | String? |  yes  |  |
 | lastname | String? |  yes  |  |
 | orderid | String? |  yes  |  |

---


 
 
 #### [GetNRecordsCsvRes](#GetNRecordsCsvRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GetNRecordsCsvResItems](#GetNRecordsCsvResItems)]? |  yes  |  |

---


 
 
 #### [AudienceReq](#AudienceReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | fileUrl | String? |  yes  |  |
 | type | String? |  yes  |  |
 | recordsCount | Int? |  yes  |  |
 | application | String? |  yes  |  |

---


 
 
 #### [Audience](#Audience)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | headers | [String]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | fileUrl | String? |  yes  |  |
 | type | String? |  yes  |  |
 | recordsCount | Int? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Audiences](#Audiences)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Audience](#Audience)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [EmailProviderReqFrom](#EmailProviderReqFrom)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | email | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [EmailProviderReq](#EmailProviderReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | apiKey | String? |  yes  |  |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |
 | from | [[EmailProviderReqFrom](#EmailProviderReqFrom)]? |  yes  |  |

---


 
 
 #### [EmailProvider](#EmailProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |
 | from | [[EmailProviderReqFrom](#EmailProviderReqFrom)]? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | apiKey | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [EmailProviders](#EmailProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EmailProvider](#EmailProvider)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [EmailTemplateDeleteSuccessRes](#EmailTemplateDeleteSuccessRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [EmailTemplateDeleteFailureRes](#EmailTemplateDeleteFailureRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [EmailTemplateKeys](#EmailTemplateKeys)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | to | String? |  yes  |  |
 | cc | String? |  yes  |  |
 | bcc | String? |  yes  |  |

---


 
 
 #### [EmailTemplateHeaders](#EmailTemplateHeaders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [EmailTemplateReq](#EmailTemplateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | keys | [EmailTemplateKeys](#EmailTemplateKeys)? |  yes  |  |
 | from | String? |  yes  |  |
 | staticTo | [String]? |  yes  |  |
 | staticCc | [String]? |  yes  |  |
 | staticBcc | [String]? |  yes  |  |
 | replyTo | String? |  yes  |  |
 | headers | [[EmailTemplateHeaders](#EmailTemplateHeaders)]? |  yes  |  |
 | subject | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | html | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | text | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | attachments | [[String: Any]]? |  yes  |  |
 | priority | String? |  yes  |  |

---


 
 
 #### [TemplateAndType](#TemplateAndType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateType | String? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [EmailTemplateRes](#EmailTemplateRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | staticTo | [String]? |  yes  |  |
 | staticCc | [String]? |  yes  |  |
 | staticBcc | [String]? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | priority | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | keys | [EmailTemplateKeys](#EmailTemplateKeys)? |  yes  |  |
 | from | String? |  yes  |  |
 | replyTo | String? |  yes  |  |
 | headers | [[EmailTemplateHeaders](#EmailTemplateHeaders)]? |  yes  |  |
 | subject | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | html | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | text | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | attachments | [[String: Any]]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [EmailTemplate](#EmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | staticTo | [[String: Any]]? |  yes  |  |
 | staticCc | [[String: Any]]? |  yes  |  |
 | staticBcc | [[String: Any]]? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | priority | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | from | String? |  yes  |  |
 | fromName | String? |  yes  |  |
 | subject | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | html | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | text | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | headers | [[String: Any]]? |  yes  |  |
 | attachments | [[String: Any]]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [SystemEmailTemplate](#SystemEmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | staticTo | [[String: Any]]? |  yes  |  |
 | staticCc | [[String: Any]]? |  yes  |  |
 | staticBcc | [[String: Any]]? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | priority | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | from | String? |  yes  |  |
 | fromName | String? |  yes  |  |
 | subject | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | html | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | text | [TemplateAndType](#TemplateAndType)? |  yes  |  |
 | headers | [[String: Any]]? |  yes  |  |
 | attachments | [[String: Any]]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [EmailTemplates](#EmailTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EmailTemplate](#EmailTemplate)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SystemEmailTemplates](#SystemEmailTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SystemEmailTemplate](#SystemEmailTemplate)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [EventSubscriptionTemplateSms](#EventSubscriptionTemplateSms)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscribed | Bool? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [EventSubscriptionTemplateEmail](#EventSubscriptionTemplateEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscribed | Bool? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [EventSubscriptionTemplate](#EventSubscriptionTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sms | [EventSubscriptionTemplateSms](#EventSubscriptionTemplateSms)? |  yes  |  |
 | email | [EventSubscriptionTemplateEmail](#EventSubscriptionTemplateEmail)? |  yes  |  |

---


 
 
 #### [EventSubscription](#EventSubscription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | [EventSubscriptionTemplate](#EventSubscriptionTemplate)? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | event | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [EventSubscriptions](#EventSubscriptions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EventSubscription](#EventSubscription)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [TriggerJobResponse](#TriggerJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | Int? |  yes  |  |

---


 
 
 #### [TriggerJobRequest](#TriggerJobRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jobId | String? |  yes  |  |

---


 
 
 #### [Job](#Job)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | completed | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | campaign | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Jobs](#Jobs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Job](#Job)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [JobLog](#JobLog)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | imported | [String: Any]? |  yes  |  |
 | processed | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | job | String? |  yes  |  |
 | campaign | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [JobLogs](#JobLogs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[JobLog](#JobLog)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [LogEmail](#LogEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template | String? |  yes  |  |

---


 
 
 #### [LogPushnotification](#LogPushnotification)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pushtokens | [String]? |  yes  |  |

---


 
 
 #### [LogMeta](#LogMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | identifier | String? |  yes  |  |
 | key | String? |  yes  |  |
 | offset | String? |  yes  |  |
 | partition | String? |  yes  |  |
 | topic | String? |  yes  |  |

---


 
 
 #### [Log](#Log)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | [LogEmail](#LogEmail)? |  yes  |  |
 | pushnotification | [LogPushnotification](#LogPushnotification)? |  yes  |  |
 | meta | [LogMeta](#LogMeta)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | service | String? |  yes  |  |
 | step | String? |  yes  |  |
 | status | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |
 | expireAt | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [Logs](#Logs)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Log](#Log)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [PushtokenReq](#PushtokenReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | action | String? |  yes  |  |
 | bundleIdentifier | String? |  yes  |  |
 | pushToken | String? |  yes  |  |
 | uniqueDeviceId | String? |  yes  |  |

---


 
 
 #### [PushtokenRes](#PushtokenRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | bundleIdentifier | String? |  yes  |  |
 | pushToken | String? |  yes  |  |
 | uniqueDeviceId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | platform | String? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | expiredAt | String? |  yes  |  |

---


 
 
 #### [SmsProviderReq](#SmsProviderReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | sender | String? |  yes  |  |
 | username | String? |  yes  |  |
 | authkey | String? |  yes  |  |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |

---


 
 
 #### [SmsProvider](#SmsProvider)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rpt | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | provider | String? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | sender | String? |  yes  |  |
 | username | String? |  yes  |  |
 | authkey | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [SmsProviders](#SmsProviders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SmsProvider](#SmsProvider)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SmsTemplateDeleteSuccessRes](#SmsTemplateDeleteSuccessRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [SmsTemplateDeleteFailureRes](#SmsTemplateDeleteFailureRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [SmsTemplateMessage](#SmsTemplateMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templateType | String? |  yes  |  |
 | template | String? |  yes  |  |

---


 
 
 #### [SmsTemplateReq](#SmsTemplateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage)? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | attachments | [[String: Any]]? |  yes  |  |
 | priority | String? |  yes  |  |

---


 
 
 #### [SmsTemplateRes](#SmsTemplateRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | priority | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage)? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [SmsTemplate](#SmsTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | priority | String? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | published | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage)? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [SystemSmsTemplate](#SystemSmsTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isSystem | Bool? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | tags | [[String: Any]]? |  yes  |  |
 | priority | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | name | String? |  yes  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage)? |  yes  |  |
 | templateVariables | [String: Any]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [SmsTemplates](#SmsTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SmsTemplate](#SmsTemplate)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SystemSmsTemplates](#SystemSmsTemplates)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SystemSmsTemplate](#SystemSmsTemplate)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [Notification](#Notification)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | body | String? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | deeplink | String? |  yes  |  |
 | clickAction | String? |  yes  |  |

---


 
 
 #### [SystemNotificationUser](#SystemNotificationUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [SystemNotificationSettings](#SystemNotificationSettings)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sound | Bool? |  yes  |  |
 | priority | String? |  yes  |  |
 | timeToLive | String? |  yes  |  |

---


 
 
 #### [SystemNotification](#SystemNotification)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notification | [Notification](#Notification)? |  yes  |  |
 | user | [SystemNotificationUser](#SystemNotificationUser)? |  yes  |  |
 | settings | [SystemNotificationUser](#SystemNotificationUser)? |  yes  |  |
 | id | String? |  yes  |  |
 | group | String? |  yes  |  |
 | createdAt | String? |  yes  |  |

---


 
 
 #### [SystemNotificationsPage](#SystemNotificationsPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | current | Int? |  yes  |  |
 | size | Int? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |

---


 
 
 #### [SystemNotifications](#SystemNotifications)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SystemNotification](#SystemNotification)]? |  yes  |  |
 | lastReadAnchor | Int? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---




 
 
 #### [PaymentGatewayConfigResponse](#PaymentGatewayConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayFields | [String] |  no  | List of all included  options with their Details. |
 | aggregators | [[String: Any]]? |  yes  | List of all speceific Payment options with their Details. |
 | created | Bool |  no  | Response is created or not |
 | excludedFields | [String] |  no  | List of all excluded  options with their Details. |
 | appId | String |  no  | Application Id to which Payment config Mapped |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [ErrorCodeDescription](#ErrorCodeDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  | Error human understandable description. |
 | success | Bool |  no  | Response is successful or not |
 | code | String |  no  | Error descrption code. |

---


 
 
 #### [PaymentGatewayConfig](#PaymentGatewayConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | merchantSalt | String |  no  | Merchant key of the payment aggregator |
 | secret | String |  no  | Secret Key of the payment aggregator |
 | key | String |  no  | Api key of the payment aggregator |
 | configType | String |  no  | Config Type of the aggregator |
 | isActive | Bool? |  yes  | Enable/ Disable Flag |

---


 
 
 #### [PaymentGatewayConfigRequest](#PaymentGatewayConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregatorName | [PaymentGatewayConfig](#PaymentGatewayConfig)? |  yes  |  |
 | appId | String |  no  | Application Id to which Payment config Mapped |
 | isActive | Bool? |  yes  | Enable/ Disable Flag |

---


 
 
 #### [PaymentGatewayToBeReviewed](#PaymentGatewayToBeReviewed)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | [String] |  no  | List of added payment gateway |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [ErrorCodeAndDescription](#ErrorCodeAndDescription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  | Error human understandable description. |
 | code | String |  no  | Error descrption code. |

---


 
 
 #### [HttpErrorCodeAndResponse](#HttpErrorCodeAndResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | error | [ErrorCodeAndDescription](#ErrorCodeAndDescription) |  no  |  |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [PaymentModeLogo](#PaymentModeLogo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | large | String |  no  | large |
 | small | String |  no  | smalll |

---


 
 
 #### [PaymentModeList](#PaymentModeList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | nickname | String? |  yes  | nickname |
 | cardReference | String? |  yes  | card_reference |
 | name | String? |  yes  | name |
 | intentAppErrorList | [String]? |  yes  | intent_app_error_list |
 | displayPriority | Int? |  yes  | Dispaly Priority |
 | expired | Bool? |  yes  | expired |
 | cardId | String? |  yes  | card_id |
 | displayName | String? |  yes  | display name |
 | fyndVpa | String? |  yes  | fynd_vpa |
 | cardType | String? |  yes  | card_type |
 | cardNumber | String? |  yes  | card_number |
 | retryCount | Int? |  yes  | retry_count |
 | timeout | Int? |  yes  | timeout |
 | cardBrand | String? |  yes  | card_brand |
 | cardName | String? |  yes  | card_name |
 | cardIssuer | String? |  yes  | card_issuer |
 | merchantCode | String? |  yes  | merchant code |
 | cardBrandImage | String? |  yes  | card_brand_image |
 | cardFingerprint | String? |  yes  | card_fingerprint |
 | code | String? |  yes  | code |
 | logoUrl | [PaymentModeLogo](#PaymentModeLogo)? |  yes  | Logo |
 | cardIsin | String? |  yes  | card_isin |
 | aggregatorName | String |  no  | aggregator_name |
 | cardToken | String? |  yes  | card_token |
 | intentFlow | String? |  yes  | intent_flow |
 | expYear | Int? |  yes  | exp_year |
 | expMonth | Int? |  yes  | exp_month |

---


 
 
 #### [RootPaymentMode](#RootPaymentMode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregatorName | String? |  yes  | Dispaly Priority |
 | name | String |  no  | Payment mode name |
 | displayPriority | Int |  no  | Dispaly Priority |
 | list | [[PaymentModeList](#PaymentModeList)]? |  yes  | Payment mode |
 | addCardEnabled | Bool? |  yes  | Annonymous card flag |
 | displayName | String |  no  | Payment mode display name |
 | anonymousEnable | Bool? |  yes  | Annonymous card flag |

---


 
 
 #### [PaymentOptions](#PaymentOptions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOption | [[RootPaymentMode](#RootPaymentMode)] |  no  | Payment options |

---


 
 
 #### [PaymentOptionsResponse](#PaymentOptionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentOptions | [PaymentOptions](#PaymentOptions) |  no  | Payment options |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [PayoutsResponse](#PayoutsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueTransferNo | [String: Any] |  no  | display priority of the payment mode |
 | isDefault | Bool |  no  | default or not  |
 | payoutsAggregators | [[String: Any]] |  no  | payout aggregator object |
 | customers | [String: Any] |  no  | customers details object |
 | transferType | String |  no  | transafer type |
 | moreAttributes | [String: Any] |  no  | bank details object |
 | isActive | Bool |  no  | Enable/DIsable Flag Payout |

---


 
 
 #### [PayoutBankDetails](#PayoutBankDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bankName | String? |  yes  |  |
 | accountHolder | String? |  yes  |  |
 | country | String? |  yes  |  |
 | accountNo | String? |  yes  |  |
 | state | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | city | String? |  yes  |  |
 | ifscCode | String |  no  |  |
 | branchName | String? |  yes  |  |
 | accountType | String |  no  |  |

---


 
 
 #### [PayoutRequest](#PayoutRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueExternalId | String |  no  | Unique Id of Payout |
 | aggregator | String |  no  | Aggregator Name |
 | users | [String: Any] |  no  | payout users object |
 | transferType | String |  no  | transafer type |
 | bankDetails | [PayoutBankDetails](#PayoutBankDetails) |  no  | payout bank details object |
 | isActive | Bool |  no  | Enable/Disable Flag Payout |

---


 
 
 #### [PayoutResponse](#PayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueTransferNo | String |  no  | unique transfer no |
 | payouts | [String: Any] |  no  | payout  object |
 | paymentStatus | String |  no  | status of payment |
 | aggregator | String |  no  | Aggregator Name |
 | created | Bool |  no  | created flag |
 | users | [String: Any] |  no  | users details object |
 | transferType | String |  no  | transfer type |
 | bankDetails | [String: Any] |  no  | payout bank_details object |
 | success | Bool |  no  | Response is successful or not |
 | isActive | Bool |  no  | Enable/DIsable Flag Payout |

---


 
 
 #### [UpdatePayoutResponse](#UpdatePayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool |  no  | Enable/Disable Default Payout |
 | success | Bool |  no  | Response is successful or not |
 | isActive | Bool |  no  | Enable/DIsable Flag Payout |

---


 
 
 #### [UpdatePayoutRequest](#UpdatePayoutRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool |  no  | Enable/Disable Default Payout |
 | uniqueExternalId | String |  no  | Unique Id of Payout |
 | isActive | Bool |  no  | Enable/Disable Flag Payout |

---


 
 
 #### [DeletePayoutResponse](#DeletePayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [SubscriptionPaymentMethodResponse](#SubscriptionPaymentMethodResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[String: Any]] |  no  | Subscription Payment Method Object |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [DeleteSubscriptionPaymentMethodResponse](#DeleteSubscriptionPaymentMethodResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  | Success or failure. |

---


 
 
 #### [SubscriptionConfigResponse](#SubscriptionConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator | String |  no  | Aggregator Name |
 | config | [String: Any] |  no  | Aggregator Config |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [SaveSubscriptionSetupIntentRequest](#SaveSubscriptionSetupIntentRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uniqueExternalId | String |  no  | Unique id i.e company:id |

---


 
 
 #### [SaveSubscriptionSetupIntentResponse](#SaveSubscriptionSetupIntentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [String: Any] |  no  | Subscription Payment Method Object |
 | success | Bool |  no  | Response is successful or not |

---


 
 
 #### [BeneficiaryModeDetails](#BeneficiaryModeDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bankName | String |  no  | Bank Name of the Account |
 | vpa | String? |  yes  |  |
 | accountHolder | String |  no  | Name of the Account Holder |
 | accountNo | String |  no  | Account NUmber of the Account Holder |
 | wallet | String? |  yes  |  |
 | comment | String? |  yes  | Remarks added by The user |
 | ifscCode | String |  no  | Ifsc Code of the Account |
 | branchName | String |  no  | Branch Name of the Account |
 | mobile | String |  no  | Moblie Number of the User |
 | address | String? |  yes  | Address of the User |
 | email | String |  no  | Email of the Account Holder |

---


 
 
 #### [AddBeneficiaryDetailsRequest](#AddBeneficiaryDetailsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otp | String? |  yes  |  |
 | orderId | String |  no  | Merchant Order Id |
 | shipmentId | String |  no  | Shipment Id of the respective Merchant Order Id |
 | transferMode | String |  no  | Transfer Mode of the Beneficiary to be added |
 | delights | Bool |  no  | True if  beneficiary to be added by delights or False if by User |
 | details | [BeneficiaryModeDetails](#BeneficiaryModeDetails) |  no  | Beneficiary bank details |
 | requestId | String? |  yes  |  |

---


 
 
 #### [RefundAccountResponse](#RefundAccountResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  | Response message |
 | data | [String: Any]? |  yes  | Refund account data. |
 | success | Bool |  no  | Success or failure flag. |

---


 
 
 #### [NotFoundResourceError](#NotFoundResourceError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  | Not Found |
 | success | Bool |  no  | Response is successful or not |
 | code | String |  no  | Bad Request Data |

---


 
 
 #### [IfscCodeResponse](#IfscCodeResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bankName | String |  no  | Bank Name Of Account |
 | branchName | String |  no  | Branch Name Of Account |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [OrderBeneficiaryDetails](#OrderBeneficiaryDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  | Title Of Account |
 | subtitle | String |  no  | SHort Title Of Account |
 | transferMode | String |  no  | Transfer Mode Of Account |
 | createdOn | String |  no  | Creation Date of Beneficiary |
 | address | String |  no  | Address of User |
 | displayName | String |  no  | Display Name Of Account |
 | email | String |  no  | EMail of User |
 | delightsUserName | String |  no  | User Id Who filled the Beneficiary  |
 | isActive | Bool |  no  | Boolean Flag whether Beneficiary set or not |
 | branchName | Bool? |  yes  | Branch Name Of Account |
 | beneficiaryId | String |  no  | Benenficiary Id |
 | accountNo | String |  no  | Account Number |
 | comment | Bool? |  yes  | Remarks |
 | modifiedOn | String |  no  | MOdification Date of Beneficiary |
 | id | Int |  no  |   |
 | bankName | String |  no  | Bank Name Of Account |
 | accountHolder | String |  no  | Account Holder Name |
 | ifscCode | String |  no  | Ifsc Code Of Account |
 | mobile | Bool? |  yes  | MObile no of User |

---


 
 
 #### [OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | beneficiaries | [[OrderBeneficiaryDetails](#OrderBeneficiaryDetails)] |  no  | All Beneficiaries Of An Order |
 | showBeneficiaryDetails | Bool? |  yes  | Show beneficiary details or not. |

---




 
 
 #### [GetActivityStatus](#GetActivityStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [ActivityHistory](#ActivityHistory) |  no  |  |

---


 
 
 #### [ActivityHistory](#ActivityHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdat | String? |  yes  |  |
 | message | String? |  yes  |  |
 | type | String? |  yes  |  |
 | user | String? |  yes  |  |

---


 
 
 #### [FailedOrders](#FailedOrders)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orders | [FailOrder](#FailOrder) |  no  |  |

---


 
 
 #### [FailOrder](#FailOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | id | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | marketplaceOrder | [MarketplaceOrder](#MarketplaceOrder)? |  yes  |  |
 | marketplaceOrderId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | appId | String? |  yes  |  |
 | marketplace | String? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [MarketplaceOrder](#MarketplaceOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderStatusUrl | String? |  yes  |  |
 | adminGraphqlApiId | String? |  yes  |  |
 | email | String? |  yes  |  |
 | test | Bool? |  yes  |  |
 | note | String? |  yes  |  |
 | totalPrice | String? |  yes  |  |
 | appId | Int? |  yes  |  |
 | totalDiscountsSet | [TotalDiscountsSet](#TotalDiscountsSet)? |  yes  |  |
 | totalPriceSet | [TotalPriceSet](#TotalPriceSet)? |  yes  |  |
 | totalTaxSet | [TotalTaxSet](#TotalTaxSet)? |  yes  |  |
 | gateway | String? |  yes  |  |
 | name | String? |  yes  |  |
 | subtotalPriceSet | [SubtotalPriceSet](#SubtotalPriceSet)? |  yes  |  |
 | number | Int? |  yes  |  |
 | buyerAcceptsMarketing | Bool? |  yes  |  |
 | contactEmail | String? |  yes  |  |
 | token | String? |  yes  |  |
 | sourceName | String? |  yes  |  |
 | paymentGatewayNames | [[String: Any]]? |  yes  |  |
 | presentmentCurrency | String? |  yes  |  |
 | subtotalPrice | String? |  yes  |  |
 | processedAt | String? |  yes  |  |
 | orderNumber | Int? |  yes  |  |
 | totalTipReceived | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | confirmed | Bool? |  yes  |  |
 | currency | String? |  yes  |  |
 | totalLineItemsPrice | String? |  yes  |  |
 | lineItems | [LineItems](#LineItems)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | totalWeight | Int? |  yes  |  |
 | billingAddress | [BillingAddress](#BillingAddress)? |  yes  |  |
 | totalShippingPriceSet | [TotalShippingPriceSet](#TotalShippingPriceSet)? |  yes  |  |
 | customer | [Customer](#Customer)? |  yes  |  |
 | totalDiscounts | String? |  yes  |  |
 | totalLineItemsPriceSet | [TotalLineItemsPriceSet](#TotalLineItemsPriceSet)? |  yes  |  |
 | tags | String? |  yes  |  |
 | totalPriceUsd | String? |  yes  |  |
 | userId | Int? |  yes  |  |
 | totalTax | String? |  yes  |  |
 | processingMethod | String? |  yes  |  |
 | shippingAddress | [ShippingAddress](#ShippingAddress)? |  yes  |  |
 | taxesIncluded | Bool? |  yes  |  |
 | financialStatus | String? |  yes  |  |

---


 
 
 #### [TotalDiscountsSet](#TotalDiscountsSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | presentmentMoney | [PresentmentMoney](#PresentmentMoney)? |  yes  |  |
 | shopMoney | [ShopMoney](#ShopMoney)? |  yes  |  |

---


 
 
 #### [PresentmentMoney](#PresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [ShopMoney](#ShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalPriceSet](#TotalPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalPriceSetShopMoney](#TotalPriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [TotalPriceSetPresentmentMoney](#TotalPriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [TotalPriceSetShopMoney](#TotalPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalPriceSetPresentmentMoney](#TotalPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalTaxSet](#TotalTaxSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalTaxSetShopMoney](#TotalTaxSetShopMoney)? |  yes  |  |
 | presentmentMoney | [TotalTaxSetPresentmentMoney](#TotalTaxSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [TotalTaxSetShopMoney](#TotalTaxSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalTaxSetPresentmentMoney](#TotalTaxSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [SubtotalPriceSet](#SubtotalPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [SubtotalPriceSetShopMoney](#SubtotalPriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [SubtotalPriceSetPresentmentMoney](#SubtotalPriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [SubtotalPriceSetShopMoney](#SubtotalPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [SubtotalPriceSetPresentmentMoney](#SubtotalPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [LineItems](#LineItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sku | String? |  yes  |  |
 | fulfillableQuantity | Int? |  yes  |  |
 | grams | Int? |  yes  |  |
 | totalDiscount | String? |  yes  |  |
 | article | [LineItemsArticle](#LineItemsArticle)? |  yes  |  |
 | title | String? |  yes  |  |
 | variantInventoryManagement | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | variantId | Int? |  yes  |  |
 | variantTitle | String? |  yes  |  |
 | productExists | Bool? |  yes  |  |
 | price | String? |  yes  |  |
 | adminGraphqlApiId | String? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | vendor | String? |  yes  |  |
 | fulfillmentService | String? |  yes  |  |
 | taxable | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | productId | Int? |  yes  |  |
 | priceSet | [PriceSet](#PriceSet)? |  yes  |  |
 | taxLines | [TaxLines](#TaxLines)? |  yes  |  |
 | requiresShipping | Bool? |  yes  |  |
 | giftCard | Bool? |  yes  |  |
 | totalDiscountSet | [TotalDiscountSet](#TotalDiscountSet)? |  yes  |  |

---


 
 
 #### [LineItemsArticle](#LineItemsArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | quantities | [Quantities](#Quantities)? |  yes  |  |
 | oldArticleUid | String? |  yes  |  |
 | totalQuantity | Int? |  yes  |  |
 | manufacturer | [Manufacturer](#Manufacturer)? |  yes  |  |
 | price | [ArticlePrice](#ArticlePrice)? |  yes  |  |
 | trackInventory | Bool? |  yes  |  |
 | company | [Company](#Company)? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | dateMeta | [FailOrderDateMeta](#FailOrderDateMeta)? |  yes  |  |
 | fragile | Bool? |  yes  |  |
 | marketplaceIdentifiers | [MarketplaceIdentifiers](#MarketplaceIdentifiers)? |  yes  |  |
 | size | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | dimension | [Dimension](#Dimension)? |  yes  |  |
 | weight | [Weight](#Weight)? |  yes  |  |
 | store | [Store](#Store)? |  yes  |  |
 | meta | [ArticleMeta](#ArticleMeta)? |  yes  |  |
 | uid | String? |  yes  |  |
 | brand | [ArticleBrand](#ArticleBrand)? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | fyndArticleCode | String? |  yes  |  |
 | id | String? |  yes  |  |
 | identifier | [LineItemsArticleIdentifier](#LineItemsArticleIdentifier)? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | fyndItemCode | String? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |

---


 
 
 #### [Quantities](#Quantities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notAvailable | [NotAvailable](#NotAvailable)? |  yes  |  |
 | sellable | [Sellable](#Sellable)? |  yes  |  |
 | orderCommitted | [OrderCommitted](#OrderCommitted)? |  yes  |  |
 | damaged | [Damaged](#Damaged)? |  yes  |  |

---


 
 
 #### [NotAvailable](#NotAvailable)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [Sellable](#Sellable)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [OrderCommitted](#OrderCommitted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [Damaged](#Damaged)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | count | Int? |  yes  |  |

---


 
 
 #### [Manufacturer](#Manufacturer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  |  |
 | address | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ArticlePrice](#ArticlePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | Int? |  yes  |  |
 | currency | String? |  yes  |  |
 | effective | Int? |  yes  |  |
 | transfer | Int? |  yes  |  |

---


 
 
 #### [Company](#Company)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | companyType | String? |  yes  |  |
 | businessType | String? |  yes  |  |
 | companyName | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | panNo | String? |  yes  |  |
 | returnAllowed | Bool? |  yes  |  |
 | meta | String? |  yes  |  |
 | exchangeAllowed | Bool? |  yes  |  |
 | agreementStartDate | String? |  yes  |  |
 | exchangeWithinDays | Int? |  yes  |  |
 | paymentProcesingCharge | Int? |  yes  |  |
 | fyndAFitAvailable | Bool? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | returnWithinDays | Int? |  yes  |  |

---


 
 
 #### [FailOrderDateMeta](#FailOrderDateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addedOnStore | String? |  yes  |  |
 | inventoryUpdatedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [MarketplaceIdentifiers](#MarketplaceIdentifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tatacliqLuxury | [TatacliqLuxury](#TatacliqLuxury)? |  yes  |  |

---


 
 
 #### [TatacliqLuxury](#TatacliqLuxury)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sku | String? |  yes  |  |

---


 
 
 #### [Dimension](#Dimension)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | height | Int? |  yes  |  |
 | width | Int? |  yes  |  |
 | unit | String? |  yes  |  |
 | length | Int? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [Weight](#Weight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDefault | Bool? |  yes  |  |
 | unit | String? |  yes  |  |
 | shipping | Int? |  yes  |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |

---


 
 
 #### [ArticleMeta](#ArticleMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | service | String? |  yes  |  |

---


 
 
 #### [ArticleBrand](#ArticleBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [LineItemsArticleIdentifier](#LineItemsArticleIdentifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | skuCode | String? |  yes  |  |

---


 
 
 #### [PriceSet](#PriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [PriceSetShopMoney](#PriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [PriceSetPresentmentMoney](#PriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [PriceSetShopMoney](#PriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [PriceSetPresentmentMoney](#PriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TaxLines](#TaxLines)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | price | String? |  yes  |  |
 | rate | Int? |  yes  |  |
 | priceSet | [TaxLinesPriceSet](#TaxLinesPriceSet)? |  yes  |  |

---


 
 
 #### [TaxLinesPriceSet](#TaxLinesPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TaxLinesPriceSetShopMoney](#TaxLinesPriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [TaxLinesPriceSetPresentmentMoney](#TaxLinesPriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [TaxLinesPriceSetShopMoney](#TaxLinesPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TaxLinesPriceSetPresentmentMoney](#TaxLinesPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencyCode | String? |  yes  |  |
 | amount | String? |  yes  |  |

---


 
 
 #### [TotalDiscountSet](#TotalDiscountSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | presentmentMoney | [TotalDiscountSetPresentmentMoney](#TotalDiscountSetPresentmentMoney)? |  yes  |  |
 | shopMoney | [TotalDiscountSetShopMoney](#TotalDiscountSetShopMoney)? |  yes  |  |

---


 
 
 #### [TotalDiscountSetPresentmentMoney](#TotalDiscountSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalDiscountSetShopMoney](#TotalDiscountSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [BillingAddress](#BillingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | zip | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | provinceCode | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | company | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | name | String? |  yes  |  |
 | country | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | province | String? |  yes  |  |

---


 
 
 #### [TotalShippingPriceSet](#TotalShippingPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalShippingPriceSetShopMoney](#TotalShippingPriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [TotalShippingPriceSetPresentmentMoney](#TotalShippingPriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [TotalShippingPriceSetShopMoney](#TotalShippingPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalShippingPriceSetPresentmentMoney](#TotalShippingPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [Customer](#Customer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdAt | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | lastName | String? |  yes  |  |
 | state | String? |  yes  |  |
 | lastOrderId | Int? |  yes  |  |
 | note | String? |  yes  |  |
 | verifiedEmail | Bool? |  yes  |  |
 | phone | String? |  yes  |  |
 | acceptsMarketing | Bool? |  yes  |  |
 | firstName | String? |  yes  |  |
 | tags | String? |  yes  |  |
 | lastOrderName | String? |  yes  |  |
 | ordersCount | Int? |  yes  |  |
 | totalSpent | String? |  yes  |  |
 | taxExempt | Bool? |  yes  |  |
 | currency | String? |  yes  |  |
 | acceptsMarketingUpdatedAt | String? |  yes  |  |
 | email | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | adminGraphqlApiId | String? |  yes  |  |
 | defaultAddress | [DefaultAddress](#DefaultAddress)? |  yes  |  |

---


 
 
 #### [DefaultAddress](#DefaultAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | lastName | String? |  yes  |  |
 | name | String? |  yes  |  |
 | provinceCode | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | id | Int? |  yes  |  |
 | customerId | Int? |  yes  |  |
 | firstName | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | countryName | String? |  yes  |  |
 | company | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | province | String? |  yes  |  |
 | country | String? |  yes  |  |
 | zip | String? |  yes  |  |

---


 
 
 #### [TotalLineItemsPriceSet](#TotalLineItemsPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shopMoney | [TotalLineItemsPriceSetShopMoney](#TotalLineItemsPriceSetShopMoney)? |  yes  |  |
 | presentmentMoney | [TotalLineItemsPriceSetPresentmentMoney](#TotalLineItemsPriceSetPresentmentMoney)? |  yes  |  |

---


 
 
 #### [TotalLineItemsPriceSetShopMoney](#TotalLineItemsPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [TotalLineItemsPriceSetPresentmentMoney](#TotalLineItemsPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [ShippingAddress](#ShippingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String? |  yes  |  |
 | zip | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | countryCode | String? |  yes  |  |
 | country | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | provinceCode | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | province | String? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | city | String? |  yes  |  |
 | company | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [OrderListing](#OrderListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OrderItems](#OrderItems)] |  no  |  |
 | filters | [Filters](#Filters) |  no  |  |
 | nextOrderStatus | [String: Any] |  no  |  |
 | page | [PlatformOrderPage](#PlatformOrderPage) |  no  |  |
 | appliedFilters | [AppliedFilters](#AppliedFilters) |  no  |  |

---


 
 
 #### [OrderItems](#OrderItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo)? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | channel | [Channel](#Channel)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | [PlatformApplication](#PlatformApplication)? |  yes  |  |
 | shipments | [PlatformShipment](#PlatformShipment)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | totalShipmentsInOrder | Int? |  yes  |  |

---


 
 
 #### [PlatformOrderUserInfo](#PlatformOrderUserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String? |  yes  |  |
 | firstName | String? |  yes  |  |
 | gender | String? |  yes  |  |
 | email | String? |  yes  |  |
 | lastName | String? |  yes  |  |
 | isAnonymousUser | Bool? |  yes  |  |
 | uid | Int? |  yes  |  |
 | avisUserId | String? |  yes  |  |

---


 
 
 #### [PlatformDeliveryAddress](#PlatformDeliveryAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | area | String? |  yes  |  |
 | state | String? |  yes  |  |
 | country | String? |  yes  |  |
 | version | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | city | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | name | String? |  yes  |  |
 | address | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | addressType | String? |  yes  |  |
 | email | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |

---


 
 
 #### [Channel](#Channel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [PlatformApplication](#PlatformApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |

---


 
 
 #### [PlatformShipment](#PlatformShipment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [PlatformShipmentStatus](#PlatformShipmentStatus)? |  yes  |  |
 | bags | [Bags](#Bags)? |  yes  |  |
 | prices | [ShipmentPrices](#ShipmentPrices)? |  yes  |  |
 | id | String? |  yes  |  |
 | gst | [ShipmentGst](#ShipmentGst)? |  yes  |  |
 | totalShipmentBags | Int? |  yes  |  |

---


 
 
 #### [PlatformShipmentStatus](#PlatformShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | bagList | [Int]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | status | String? |  yes  |  |
 | name | String? |  yes  |  |
 | progress | Int? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | currentShipmentStatus | String? |  yes  |  |
 | colorCode | String? |  yes  |  |

---


 
 
 #### [Bags](#Bags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [BagItem](#BagItem)? |  yes  |  |
 | id | Int? |  yes  |  |

---


 
 
 #### [BagItem](#BagItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | size | String? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | l2Category | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | code | String? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | attributes | [BagItemAttributes](#BagItemAttributes)? |  yes  |  |
 | l3CategoryName | String? |  yes  |  |
 | l3Category | Int? |  yes  |  |
 | l1Category | [String]? |  yes  |  |
 | image | [String]? |  yes  |  |
 | brand | String? |  yes  |  |
 | lastUpdatedAt | String? |  yes  |  |

---


 
 
 #### [BagItemAttributes](#BagItemAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemCode | String? |  yes  |  |
 | brandName | String? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |

---


 
 
 #### [ShipmentPrices](#ShipmentPrices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refundAmount | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | addedToFyndCash | Bool? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | discount | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |

---


 
 
 #### [Payments](#Payments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | source | String? |  yes  |  |
 | sourceNickname | String? |  yes  |  |
 | displayPriority | Int? |  yes  |  |
 | id | Int? |  yes  |  |
 | mode | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |

---


 
 
 #### [Filters](#Filters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | [Stage](#Stage)? |  yes  |  |
 | stages | [Stages](#Stages)? |  yes  |  |

---


 
 
 #### [Stage](#Stage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | filters | [StagesFilters](#StagesFilters)? |  yes  |  |

---


 
 
 #### [StagesFilters](#StagesFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |
 | type | String? |  yes  |  |
 | options | [Options](#Options)? |  yes  |  |

---


 
 
 #### [Options](#Options)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [PlatformOrderPage](#PlatformOrderPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | next | String? |  yes  |  |
 | previous | String? |  yes  |  |
 | type | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | current | Int? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | total | Int? |  yes  |  |
 | itemTotal | [ItemTotal](#ItemTotal)? |  yes  |  |

---


 
 
 #### [AppliedFilters](#AppliedFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String? |  yes  |  |
 | stores | [String]? |  yes  |  |
 | fromDate | String? |  yes  |  |
 | toDate | String? |  yes  |  |

---


 
 
 #### [OrderDetails](#OrderDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OrderPicklistListing](#OrderPicklistListing)] |  no  |  |
 | page | [PlatformOrderPage](#PlatformOrderPage) |  no  |  |
 | filters | [Filters](#Filters) |  no  |  |
 | nextOrderStatus | [String: Any] |  no  |  |
 | appliedFilters | [AppliedFilters](#AppliedFilters) |  no  |  |

---


 
 
 #### [OrderDetailsItem](#OrderDetailsItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo)? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | channel | [Channel](#Channel)? |  yes  |  |
 | breakupValues | [PlatformBreakupValues](#PlatformBreakupValues)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | [PlatformApplication](#PlatformApplication)? |  yes  |  |
 | shipments | [PlatformShipmentDetails](#PlatformShipmentDetails)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | totalShipmentsInOrder | Int? |  yes  |  |
 | payments | [ItemsPayments](#ItemsPayments)? |  yes  |  |

---


 
 
 #### [PlatformBreakupValues](#PlatformBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | value | Double? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ArticleAssignment](#ArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | strategy | String? |  yes  |  |
 | level | String? |  yes  |  |

---


 
 
 #### [PlatformShipmentDetails](#PlatformShipmentDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | [PlatformShipmentDetailsStatus](#PlatformShipmentDetailsStatus)? |  yes  |  |
 | bags | [BagsDetails](#BagsDetails)? |  yes  |  |
 | prices | [ShipmentPrices](#ShipmentPrices)? |  yes  |  |
 | breakupValues | [ShipmentBreakupValues](#ShipmentBreakupValues)? |  yes  |  |
 | id | String? |  yes  |  |
 | dpDetails | [DpDetails](#DpDetails)? |  yes  |  |
 | invoice | [ShipmentInvoice](#ShipmentInvoice)? |  yes  |  |
 | fulfillingStore | [PlatformFulfillingStore](#PlatformFulfillingStore)? |  yes  |  |
 | payments | [Payments](#Payments)? |  yes  |  |
 | gst | [ShipmentGst](#ShipmentGst)? |  yes  |  |
 | company | [Company](#Company)? |  yes  |  |
 | brand | [PlatformShipmentDetailsBrand](#PlatformShipmentDetailsBrand)? |  yes  |  |
 | coupon | [String: Any]? |  yes  |  |
 | orderSource | String? |  yes  |  |
 | isNotFyndSource | Bool? |  yes  |  |
 | comment | String? |  yes  |  |
 | promise | [Promise](#Promise)? |  yes  |  |
 | trackingDetails | [ShipmentTrackingDetails](#ShipmentTrackingDetails)? |  yes  |  |
 | isFyndCoupon | Bool? |  yes  |  |
 | orderType | String? |  yes  |  |
 | totalShipmentBags | Int? |  yes  |  |
 | pod | [String: Any]? |  yes  |  |
 | lockStatus | Bool? |  yes  |  |
 | orderingChannel | String? |  yes  |  |

---


 
 
 #### [PlatformShipmentDetailsStatus](#PlatformShipmentDetailsStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | bagList | [Int]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | status | String? |  yes  |  |
 | name | String? |  yes  |  |
 | progress | Int? |  yes  |  |
 | shipmentId | String? |  yes  |  |
 | currentShipmentStatus | String? |  yes  |  |
 | colorCode | String? |  yes  |  |

---


 
 
 #### [BagsDetails](#BagsDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | financialBreakup | [[BagFinancialBreakup](#BagFinancialBreakup)]? |  yes  |  |
 | status | [BagCurrStatus](#BagCurrStatus)? |  yes  |  |
 | item | [BagItem](#BagItem)? |  yes  |  |
 | article | [BagArticle](#BagArticle)? |  yes  |  |
 | id | Int? |  yes  |  |
 | prices | [BagPrices](#BagPrices)? |  yes  |  |
 | gstDetails | [GstDetails](#GstDetails)? |  yes  |  |
 | breakupValues | [BagBreakupValues](#BagBreakupValues)? |  yes  |  |
 | updateTime | Int? |  yes  |  |
 | currentStatus | [BagCurrentStatus](#BagCurrentStatus)? |  yes  |  |
 | bagStatus | [BagStatus](#BagStatus)? |  yes  |  |

---


 
 
 #### [BagFinancialBreakup](#BagFinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | valueOfGood | Double? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | gstFee | String? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | transferPrice | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | size | String? |  yes  |  |
 | totalUnits | Int? |  yes  |  |
 | discount | Double? |  yes  |  |
 | couponEffectiveDiscount | Double? |  yes  |  |
 | cashback | Double? |  yes  |  |
 | promotionEffectiveDiscount | Double? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | identifiers | [Identifiers](#Identifiers)? |  yes  |  |
 | itemName | String? |  yes  |  |
 | addedToFyndCash | Bool? |  yes  |  |
 | brandCalculatedAmount | Double? |  yes  |  |

---


 
 
 #### [Identifiers](#Identifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String? |  yes  |  |

---


 
 
 #### [BagCurrStatus](#BagCurrStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enableTracking | Bool? |  yes  |  |
 | isCustomerReturnAllowed | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | isReturnable | Bool? |  yes  |  |
 | canBeCancelled | Bool? |  yes  |  |

---


 
 
 #### [BagArticle](#BagArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifiers | [ArticleIdentifiers](#ArticleIdentifiers)? |  yes  |  |
 | espModified | Bool? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | size | String? |  yes  |  |
 | code | String? |  yes  |  |
 | set | [Set](#Set)? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |
 | returnConfig | [BagArticleReturnConfig](#BagArticleReturnConfig)? |  yes  |  |
 | id | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | childDetails | [String: Any]? |  yes  |  |

---


 
 
 #### [ArticleIdentifiers](#ArticleIdentifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String? |  yes  |  |

---


 
 
 #### [Set](#Set)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | quantity | Int? |  yes  |  |
 | sizeDistribution | [SetSizeDistribution](#SetSizeDistribution)? |  yes  |  |

---


 
 
 #### [SetSizeDistribution](#SetSizeDistribution)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sizes | [Sizes](#Sizes)? |  yes  |  |

---


 
 
 #### [Sizes](#Sizes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String? |  yes  |  |
 | pieces | Int? |  yes  |  |

---


 
 
 #### [BagArticleReturnConfig](#BagArticleReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | time | Int? |  yes  |  |
 | unit | String? |  yes  |  |
 | returnable | Bool? |  yes  |  |

---


 
 
 #### [GstDetails](#GstDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Double? |  yes  |  |
 | gstFee | String? |  yes  |  |
 | gstTag | String? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | gstTaxPercentage | Double? |  yes  |  |
 | isDefaultHsnCode | Bool? |  yes  |  |

---


 
 
 #### [BagBreakupValues](#BagBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | display | String? |  yes  |  |
 | value | Double? |  yes  |  |

---


 
 
 #### [BagCurrentStatus](#BagCurrentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updatedAt | String? |  yes  |  |
 | bagStateMapper | [BagStateMapper](#BagStateMapper)? |  yes  |  |
 | status | String? |  yes  |  |
 | stateType | String? |  yes  |  |

---


 
 
 #### [BagStateMapper](#BagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appStateName | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | name | String? |  yes  |  |
 | appDisplayName | String? |  yes  |  |

---


 
 
 #### [BagStatus](#BagStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | stateType | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | bagStateMapper | [BagStatusBagStateMapper](#BagStatusBagStateMapper)? |  yes  |  |

---


 
 
 #### [BagStatusBagStateMapper](#BagStatusBagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | name | String? |  yes  |  |
 | appDisplayName | String? |  yes  |  |
 | appStateName | String? |  yes  |  |

---


 
 
 #### [BagPrices](#BagPrices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cashback | Double? |  yes  |  |
 | refundCredit | Double? |  yes  |  |
 | couponValue | Double? |  yes  |  |
 | deliveryCharge | Double? |  yes  |  |
 | fyndCredits | Double? |  yes  |  |
 | priceMarked | Double? |  yes  |  |
 | cashbackApplied | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | amountPaidRoundoff | Double? |  yes  |  |
 | amountPaid | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |
 | priceEffective | Double? |  yes  |  |
 | refundAmount | Double? |  yes  |  |
 | discount | Double? |  yes  |  |

---


 
 
 #### [ShipmentBreakupValues](#ShipmentBreakupValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | display | String? |  yes  |  |
 | value | Double? |  yes  |  |

---


 
 
 #### [DpDetails](#DpDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstTag | String? |  yes  |  |

---


 
 
 #### [ShipmentInvoice](#ShipmentInvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | paymentType | String? |  yes  |  |
 | updatedDate | String? |  yes  |  |
 | invoiceUrl | String? |  yes  |  |
 | labelUrl | String? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | amountToCollect | Double? |  yes  |  |
 | rtoAddress | [RtoAddress](#RtoAddress)? |  yes  |  |

---


 
 
 #### [RtoAddress](#RtoAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | phone | String? |  yes  |  |
 | locationType | String? |  yes  |  |
 | storeAddressJson | [StoreAddressJson](#StoreAddressJson)? |  yes  |  |
 | code | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | state | String? |  yes  |  |
 | storeEmail | String? |  yes  |  |
 | address2 | String? |  yes  |  |

---


 
 
 #### [StoreAddressJson](#StoreAddressJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | area | String? |  yes  |  |
 | state | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | city | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | email | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | version | String? |  yes  |  |
 | landmark | String? |  yes  |  |

---


 
 
 #### [PlatformFulfillingStore](#PlatformFulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | packagingMaterialCount | Int? |  yes  |  |
 | locationType | String? |  yes  |  |
 | code | String? |  yes  |  |
 | city | String? |  yes  |  |
 | meta | [FulfillingStoreMeta](#FulfillingStoreMeta)? |  yes  |  |
 | name | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | address1 | String? |  yes  |  |
 | storeEmail | String? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | state | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | isEnabledForRecon | Bool? |  yes  |  |
 | fulfillmentChannel | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | pincode | String? |  yes  |  |
 | brandStoreTags | [String]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | storeAddressJson | [FulfillingStoreStoreAddressJson](#FulfillingStoreStoreAddressJson)? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | loginUsername | String? |  yes  |  |
 | country | String? |  yes  |  |

---


 
 
 #### [FulfillingStoreMeta](#FulfillingStoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | additionalContactDetails | [AdditionalContactDetails](#AdditionalContactDetails)? |  yes  |  |
 | documents | [Documents](#Documents)? |  yes  |  |
 | gstNumber | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | productReturnConfig | [ProductReturnConfig](#ProductReturnConfig)? |  yes  |  |
 | allowDpAssignmentFromFynd | Bool? |  yes  |  |
 | stage | String? |  yes  |  |
 | timing | [Timing](#Timing)? |  yes  |  |

---


 
 
 #### [AdditionalContactDetails](#AdditionalContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | [String]? |  yes  |  |

---


 
 
 #### [Documents](#Documents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gst | [Gst](#Gst)? |  yes  |  |

---


 
 
 #### [Gst](#Gst)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | legalName | String? |  yes  |  |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |
 | verified | Bool? |  yes  |  |

---


 
 
 #### [ProductReturnConfig](#ProductReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | onSameStore | Bool? |  yes  |  |

---


 
 
 #### [Timing](#Timing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opening | [Opening](#Opening)? |  yes  |  |
 | weekday | String? |  yes  |  |
 | open | Bool? |  yes  |  |
 | closing | [Closing](#Closing)? |  yes  |  |

---


 
 
 #### [Opening](#Opening)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minute | Int? |  yes  |  |
 | hour | Int? |  yes  |  |

---


 
 
 #### [Closing](#Closing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hour | Int? |  yes  |  |
 | minute | Int? |  yes  |  |

---


 
 
 #### [FulfillingStoreStoreAddressJson](#FulfillingStoreStoreAddressJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address2 | String? |  yes  |  |
 | area | String? |  yes  |  |
 | email | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | state | String? |  yes  |  |
 | contactPerson | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | version | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | city | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |

---


 
 
 #### [ShipmentGst](#ShipmentGst)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandCalculatedAmount | Double? |  yes  |  |
 | valueOfGood | Double? |  yes  |  |
 | gstFee | Double? |  yes  |  |

---


 
 
 #### [PlatformShipmentDetailsBrand](#PlatformShipmentDetailsBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | creditNoteAllowed | Bool? |  yes  |  |
 | brandName | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | id | Int? |  yes  |  |
 | isVirtualInvoice | Bool? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [Promise](#Promise)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | [Timestamp](#Timestamp)? |  yes  |  |

---


 
 
 #### [Timestamp](#Timestamp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | String? |  yes  |  |
 | max | String? |  yes  |  |

---


 
 
 #### [ShipmentTrackingDetails](#ShipmentTrackingDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | time | String? |  yes  |  |
 | isPassed | Bool? |  yes  |  |
 | isCurrent | Bool? |  yes  |  |

---


 
 
 #### [ItemsPayments](#ItemsPayments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | displayPriority | Int? |  yes  |  |
 | id | Int? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | displayName | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |
 | sourceNickname | String? |  yes  |  |
 | mode | String? |  yes  |  |
 | source | String? |  yes  |  |

---


 
 
 #### [PlatformOrderDetailsPage](#PlatformOrderDetailsPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | next | String? |  yes  |  |
 | previous | String? |  yes  |  |

---


 
 
 #### [OrderLanesCount](#OrderLanesCount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stages | [[StageItem](#StageItem)] |  no  |  |

---


 
 
 #### [StageItem](#StageItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int? |  yes  |  |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [UpdateOrderReprocessResponse](#UpdateOrderReprocessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |

---


 
 
 #### [PlatformOrderTrack](#PlatformOrderTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | requestId | String |  no  |  |
 | message | String |  no  |  |
 | mobile | String |  no  |  |
 | countryCode | String |  no  |  |
 | resendTimer | Int |  no  |  |
 | resendToken | String? |  yes  |  |

---


 
 
 #### [OrderPicklistListing](#OrderPicklistListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo)? |  yes  |  |
 | deliveryAddress | [PlatformDeliveryAddress](#PlatformDeliveryAddress)? |  yes  |  |
 | channel | [Channel](#Channel)? |  yes  |  |
 | breakupValues | [PlatformBreakupValues](#PlatformBreakupValues)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | [PlatformApplication](#PlatformApplication)? |  yes  |  |
 | shipments | [PlatformShipmentDetails](#PlatformShipmentDetails)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | totalShipmentsInOrder | Int? |  yes  |  |
 | payments | [ItemsPayments](#ItemsPayments)? |  yes  |  |

---


 
 
 #### [Stages](#Stages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | String? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | filters | [StagesFilters](#StagesFilters)? |  yes  |  |

---


 
 
 #### [ItemTotal](#ItemTotal)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | new | Int? |  yes  |  |
 | processing | Int? |  yes  |  |
 | returns | Int? |  yes  |  |
 | all | Int? |  yes  |  |

---


 
 
 #### [GetPingResponse](#GetPingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ping | String |  no  |  |

---


 
 
 #### [GetShipmentAddressResponse](#GetShipmentAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | data | [DataShipmentAddress](#DataShipmentAddress) |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [DataShipmentAddress](#DataShipmentAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | city | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | String? |  yes  |  |
 | phone | String? |  yes  |  |
 | area | String? |  yes  |  |
 | address | String? |  yes  |  |
 | landmark | String? |  yes  |  |
 | state | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | addressCategory | String? |  yes  |  |
 | email | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [UpdateShipmentAddressRequest](#UpdateShipmentAddressRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | address | String |  no  |  |
 | pincode | String |  no  |  |
 | state | String |  no  |  |
 | addressType | String |  no  |  |
 | country | String |  no  |  |
 | name | String |  no  |  |
 | phone | String |  no  |  |
 | area | String |  no  |  |
 | landmark | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [UpdateShipmentAddressResponse](#UpdateShipmentAddressResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [ShipmentTrackResponse](#ShipmentTrackResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bagList | [[ShipmentTrackResponseBagListItem](#ShipmentTrackResponseBagListItem)] |  no  |  |
 | message | String |  no  |  |
 | orderValue | Int |  no  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItem](#ShipmentTrackResponseBagListItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enableTracking | Bool? |  yes  |  |
 | price | String? |  yes  |  |
 | timeSlot | String? |  yes  |  |
 | productName | String? |  yes  |  |
 | canReturn | Bool? |  yes  |  |
 | orderDate | String? |  yes  |  |
 | isTryAtHome | Bool? |  yes  |  |
 | breakupValues | [[ShipmentTrackResponseBagListItemBreakValues](#ShipmentTrackResponseBagListItemBreakValues)]? |  yes  |  |
 | statuses | [[ShipmentTrackResponseBagListItemStatuses](#ShipmentTrackResponseBagListItemStatuses)]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | bagId | String? |  yes  |  |
 | orderId | String? |  yes  |  |
 | size | String? |  yes  |  |
 | paymentModeSource | String? |  yes  |  |
 | dpDetails | [ShipmentTrackResponseBagListItemDpDetails](#ShipmentTrackResponseBagListItemDpDetails)? |  yes  |  |
 | productId | Int? |  yes  |  |
 | productImage | [ShipmentTrackResponseBagListItemsProductImage](#ShipmentTrackResponseBagListItemsProductImage)? |  yes  |  |
 | brandName | String? |  yes  |  |
 | priceMarked | String? |  yes  |  |
 | status | String? |  yes  |  |
 | canCancel | Bool? |  yes  |  |
 | paymentMode | String? |  yes  |  |
 | fyndCashMsg | String? |  yes  |  |
 | deliveryAddress | String? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemBreakValues](#ShipmentTrackResponseBagListItemBreakValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | display | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemStatuses](#ShipmentTrackResponseBagListItemStatuses)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | npsRating | Int? |  yes  |  |
 | npsString | String? |  yes  |  |
 | progressStatus | [[ShipmentTrackResponseBagListItemStatusesProgress](#ShipmentTrackResponseBagListItemStatusesProgress)]? |  yes  |  |
 | flowType | String? |  yes  |  |
 | statusProgress | Int? |  yes  |  |
 | isNpsDone | Bool? |  yes  |  |
 | headerMessage | String? |  yes  |  |
 | isDelayed | String? |  yes  |  |
 | trackingList | [[ShipmentTrackResponseBagListItemStatusesTrack](#ShipmentTrackResponseBagListItemStatusesTrack)]? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemStatusesProgress](#ShipmentTrackResponseBagListItemStatusesProgress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | type | String? |  yes  |  |
 | state | Bool? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemStatusesTrack](#ShipmentTrackResponseBagListItemStatusesTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | time | String? |  yes  |  |
 | isPassed | Bool? |  yes  |  |
 | isCurrent | Bool? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemDpDetails](#ShipmentTrackResponseBagListItemDpDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | trackingNo | String? |  yes  |  |
 | courier | String? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemsProductImage](#ShipmentTrackResponseBagListItemsProductImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [UpdateShipmentStatusResponse](#UpdateShipmentStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [String: Any] |  no  |  |
 | errorShipments | [[String: Any]]? |  yes  |  |

---


 
 
 #### [UpdateShipmentStatusBody](#UpdateShipmentStatusBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [String: Any] |  no  |  |
 | forceTransition | Bool |  no  |  |
 | task | Bool |  no  |  |

---


 
 
 #### [ShipmentReasonsResponse](#ShipmentReasonsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |
 | reasons | [[ShipmentResponseReasons](#ShipmentResponseReasons)] |  no  |  |

---


 
 
 #### [ShipmentResponseReasons](#ShipmentResponseReasons)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reasonId | Double? |  yes  |  |
 | reason | String? |  yes  |  |

---


 
 
 #### [PlatformShipmentTrack](#PlatformShipmentTrack)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [Results](#Results) |  no  |  |

---


 
 
 #### [Results](#Results)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | awb | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | lastLocationRecievedAt | String? |  yes  |  |
 | reason | String? |  yes  |  |
 | shipmentType | String? |  yes  |  |
 | status | String? |  yes  |  |
 | updatedTime | String? |  yes  |  |
 | accountName | String? |  yes  |  |

---


 
 
 #### [ShipmentUpdateRequest](#ShipmentUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bags | [String] |  no  |  |
 | reason | [String: Any] |  no  |  |
 | comments | String |  no  |  |
 | action | String |  no  |  |

---


 
 
 #### [ShipmentUpdateResponse](#ShipmentUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [UpdateProcessShipmenstRequestBody](#UpdateProcessShipmenstRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentIds | [String] |  no  |  |
 | expectedStatus | String |  no  |  |

---


 
 
 #### [UpdateProcessShipmenstRequestResponse](#UpdateProcessShipmenstRequestResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [GetVoiceCallbackResponse](#GetVoiceCallbackResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [GetClickToCallResponse](#GetClickToCallResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [ApefaceApiError](#ApefaceApiError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---




 
 
 #### [DeleteResponse](#DeleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | code | String? |  yes  |  |
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |

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
 | isActive | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | result | [SearchKeywordResult](#SearchKeywordResult) |  no  |  |
 | appId | String? |  yes  |  |
 | words | [String]? |  yes  |  |

---


 
 
 #### [GetSearchWordsData](#GetSearchWordsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | result | [String: Any]? |  yes  |  |
 | appId | String? |  yes  |  |
 | words | [String]? |  yes  |  |

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
 | query | [String: Any] |  no  |  |
 | type | String |  no  |  |
 | url | String? |  yes  |  |
 | params | [String: Any]? |  yes  |  |

---


 
 
 #### [AutocompleteAction](#AutocompleteAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | page | [AutocompletePageAction](#AutocompletePageAction)? |  yes  |  |

---


 
 
 #### [Media](#Media)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [AutocompleteResult](#AutocompleteResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | action | [AutocompleteAction](#AutocompleteAction)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | logo | [Media](#Media)? |  yes  |  |

---


 
 
 #### [CreateAutocompleteKeyword](#CreateAutocompleteKeyword)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [[AutocompleteResult](#AutocompleteResult)]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | appId | String? |  yes  |  |
 | words | [String]? |  yes  |  |

---


 
 
 #### [GetAutocompleteWordsData](#GetAutocompleteWordsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String? |  yes  |  |
 | results | [[String: Any]]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | appId | String? |  yes  |  |
 | words | [String]? |  yes  |  |

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
 | results | [[String: Any]]? |  yes  |  |
 | appId | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | words | [String]? |  yes  |  |

---


 
 
 #### [ProductBundleItem](#ProductBundleItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productUid | Int |  no  |  |
 | autoAddToCart | Bool? |  yes  |  |
 | minQuantity | Int |  no  |  |
 | allowRemove | Bool? |  yes  |  |
 | maxQuantity | Int |  no  |  |
 | autoSelect | Bool? |  yes  |  |

---


 
 
 #### [GetProductBundleCreateResponse](#GetProductBundleCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sameStoreAssignment | Bool? |  yes  |  |
 | name | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | pageVisibility | [String]? |  yes  |  |
 | slug | String |  no  |  |
 | choice | String |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)] |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [GetProductBundleListingResponse](#GetProductBundleListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetProductBundleCreateResponse](#GetProductBundleCreateResponse)]? |  yes  |  |

---


 
 
 #### [ProductBundleRequest](#ProductBundleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sameStoreAssignment | Bool? |  yes  |  |
 | name | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | pageVisibility | [String]? |  yes  |  |
 | slug | String |  no  |  |
 | choice | String |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)] |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [ProductBundleUpdateRequest](#ProductBundleUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sameStoreAssignment | Bool? |  yes  |  |
 | name | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | pageVisibility | [String]? |  yes  |  |
 | slug | String |  no  |  |
 | choice | String |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)] |  no  |  |
 | meta | [String: Any]? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [Size](#Size)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | value | String? |  yes  |  |
 | isAvailable | Bool? |  yes  |  |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [LimitedProductData](#LimitedProductData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | identifier | [String: Any]? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | sizes | [String]? |  yes  |  |
 | price | [String: Any]? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | images | [String]? |  yes  |  |

---


 
 
 #### [Price](#Price)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minMarked | Double? |  yes  |  |
 | currency | String? |  yes  |  |
 | maxMarked | Double? |  yes  |  |
 | maxEffective | Double? |  yes  |  |
 | minEffective | Double? |  yes  |  |

---


 
 
 #### [GetProducts](#GetProducts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productUid | Int? |  yes  |  |
 | autoAddToCart | Bool? |  yes  |  |
 | minQuantity | Int? |  yes  |  |
 | allowRemove | Bool? |  yes  |  |
 | maxQuantity | Int? |  yes  |  |
 | sizes | [[Size](#Size)]? |  yes  |  |
 | autoSelect | Bool? |  yes  |  |
 | productDetails | [LimitedProductData](#LimitedProductData)? |  yes  |  |
 | price | [Price](#Price)? |  yes  |  |

---


 
 
 #### [GetProductBundleResponse](#GetProductBundleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sameStoreAssignment | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | pageVisibility | [String]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | logo | String? |  yes  |  |
 | choice | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | products | [[GetProducts](#GetProducts)]? |  yes  |  |

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
 | name | String |  no  |  |
 | image | String? |  yes  |  |
 | tag | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | id | String? |  yes  |  |
 | guide | [Guide](#Guide)? |  yes  |  |
 | description | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | title | String |  no  |  |
 | createdOn | String? |  yes  |  |

---


 
 
 #### [SuccessResponse](#SuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [SizeGuideResponse](#SizeGuideResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | String? |  yes  |  |
 | name | String? |  yes  |  |
 | tag | String? |  yes  |  |
 | guide | [String: Any]? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | active | Bool? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | title | String? |  yes  |  |
 | createdOn | String? |  yes  |  |

---


 
 
 #### [MetaDataListingSortMetaResponse](#MetaDataListingSortMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | key | String? |  yes  |  |

---


 
 
 #### [MetaDataListingSortResponse](#MetaDataListingSortResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[MetaDataListingSortMetaResponse](#MetaDataListingSortMetaResponse)]? |  yes  |  |

---


 
 
 #### [MetaDataListingFilterMetaResponse](#MetaDataListingFilterMetaResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | filterTypes | [String]? |  yes  |  |
 | key | String? |  yes  |  |
 | units | [[String: Any]]? |  yes  |  |

---


 
 
 #### [MetaDataListingFilterResponse](#MetaDataListingFilterResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[MetaDataListingFilterMetaResponse](#MetaDataListingFilterMetaResponse)]? |  yes  |  |

---


 
 
 #### [MetaDataListingResponse](#MetaDataListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort | [MetaDataListingSortResponse](#MetaDataListingSortResponse) |  no  |  |
 | filter | [MetaDataListingFilterResponse](#MetaDataListingFilterResponse) |  no  |  |

---


 
 
 #### [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | compare | [String: Any]? |  yes  |  |
 | variant | [String: Any]? |  yes  |  |
 | similar | [String: Any]? |  yes  |  |
 | detail | [String: Any]? |  yes  |  |

---


 
 
 #### [GetCatalogConfigurationMetaData](#GetCatalogConfigurationMetaData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | listing | [MetaDataListingResponse](#MetaDataListingResponse)? |  yes  |  |
 | product | [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)? |  yes  |  |

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
 | displayType | String |  no  |  |
 | name | String |  no  |  |
 | size | [ProductSize](#ProductSize) |  no  |  |
 | isActive | Bool |  no  |  |
 | priority | Int |  no  |  |
 | key | String |  no  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [ConfigurationProductVariant](#ConfigurationProductVariant)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [[ConfigurationProductVariantConfig](#ConfigurationProductVariantConfig)]? |  yes  |  |

---


 
 
 #### [ConfigurationProductConfig](#ConfigurationProductConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | [ProductSize](#ProductSize)? |  yes  |  |
 | isActive | Bool |  no  |  |
 | priority | Int |  no  |  |
 | subtitle | String? |  yes  |  |
 | title | String? |  yes  |  |
 | key | String |  no  |  |
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


 
 
 #### [ConfigurationListingSortConfig](#ConfigurationListingSortConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | priority | Int |  no  |  |
 | key | String |  no  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [ConfigurationListingSort](#ConfigurationListingSort)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | defaultKey | String |  no  |  |
 | config | [[ConfigurationListingSortConfig](#ConfigurationListingSortConfig)]? |  yes  |  |

---


 
 
 #### [ConfigurationBucketPoints](#ConfigurationBucketPoints)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | Double? |  yes  |  |
 | end | Double? |  yes  |  |

---


 
 
 #### [ConfigurationListingFilterValue](#ConfigurationListingFilterValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bucketPoints | [[ConfigurationBucketPoints](#ConfigurationBucketPoints)]? |  yes  |  |
 | value | String? |  yes  |  |
 | condition | String? |  yes  |  |
 | map | [String: Any]? |  yes  |  |
 | sort | String? |  yes  |  |

---


 
 
 #### [ConfigurationListingFilterConfig](#ConfigurationListingFilterConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | priority | Int |  no  |  |
 | valueConfig | [ConfigurationListingFilterValue](#ConfigurationListingFilterValue)? |  yes  |  |
 | type | String |  no  |  |
 | key | String |  no  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [ConfigurationListingFilter](#ConfigurationListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributeConfig | [[ConfigurationListingFilterConfig](#ConfigurationListingFilterConfig)]? |  yes  |  |
 | allowSingle | Bool |  no  |  |

---


 
 
 #### [ConfigurationListing](#ConfigurationListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort | [ConfigurationListingSort](#ConfigurationListingSort) |  no  |  |
 | filter | [ConfigurationListingFilter](#ConfigurationListingFilter) |  no  |  |

---


 
 
 #### [AppCatalogConfiguration](#AppCatalogConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configType | String |  no  |  |
 | product | [ConfigurationProduct](#ConfigurationProduct)? |  yes  |  |
 | appId | String |  no  |  |
 | listing | [ConfigurationListing](#ConfigurationListing)? |  yes  |  |
 | configId | String? |  yes  |  |
 | id | String? |  yes  |  |

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
 | configType | String |  no  |  |
 | product | [ConfigurationProduct](#ConfigurationProduct)? |  yes  |  |
 | appId | String |  no  |  |
 | listing | [ConfigurationListing](#ConfigurationListing)? |  yes  |  |
 | configId | String? |  yes  |  |

---


 
 
 #### [GetCatalogConfigurationDetailsSchemaListing](#GetCatalogConfigurationDetailsSchemaListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort | [String: Any]? |  yes  |  |
 | filter | [String: Any]? |  yes  |  |

---


 
 
 #### [EntityConfiguration](#EntityConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | configType | String |  no  |  |
 | product | [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)? |  yes  |  |
 | appId | String |  no  |  |
 | listing | [GetCatalogConfigurationDetailsSchemaListing](#GetCatalogConfigurationDetailsSchemaListing)? |  yes  |  |
 | configId | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [GetAppCatalogEntityConfiguration](#GetAppCatalogEntityConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [EntityConfiguration](#EntityConfiguration)? |  yes  |  |
 | isDefault | Bool? |  yes  |  |

---


 
 
 #### [ProductFiltersValue](#ProductFiltersValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencySymbol | String? |  yes  |  |
 | display | String |  no  |  |
 | selectedMax | Int? |  yes  |  |
 | value | String |  no  |  |
 | max | Int? |  yes  |  |
 | isSelected | Bool |  no  |  |
 | selectedMin | Int? |  yes  |  |
 | currencyCode | String? |  yes  |  |
 | queryFormat | String? |  yes  |  |
 | displayFormat | String? |  yes  |  |
 | min | Int? |  yes  |  |
 | count | Int? |  yes  |  |

---


 
 
 #### [ProductFiltersKey](#ProductFiltersKey)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | name | String |  no  |  |
 | kind | String? |  yes  |  |
 | logo | String? |  yes  |  |

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
 | name | String? |  yes  |  |
 | value | String? |  yes  |  |
 | isSelected | Bool? |  yes  |  |

---


 
 
 #### [GetCollectionQueryOptionResponse](#GetCollectionQueryOptionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [[ProductFilters](#ProductFilters)]? |  yes  |  |
 | sortOn | [[ProductSortOn](#ProductSortOn)]? |  yes  |  |

---


 
 
 #### [CollectionListingFilterType](#CollectionListingFilterType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |
 | isSelected | Bool? |  yes  |  |

---


 
 
 #### [CollectionListingFilterTag](#CollectionListingFilterTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | name | String? |  yes  |  |
 | isSelected | Bool? |  yes  |  |

---


 
 
 #### [CollectionListingFilter](#CollectionListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | [[CollectionListingFilterType](#CollectionListingFilterType)]? |  yes  |  |
 | tags | [[CollectionListingFilterTag](#CollectionListingFilterTag)]? |  yes  |  |

---


 
 
 #### [Media1](#Media1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | meta | [String: Any]? |  yes  |  |
 | url | String |  no  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [BannerImage](#BannerImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [ImageUrls](#ImageUrls)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | [BannerImage](#BannerImage)? |  yes  |  |
 | portrait | [BannerImage](#BannerImage)? |  yes  |  |

---


 
 
 #### [ProductListingActionPage](#ProductListingActionPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | query | [String: Any]? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ProductListingAction](#ProductListingAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | page | [ProductListingActionPage](#ProductListingActionPage)? |  yes  |  |

---


 
 
 #### [GetCollectionDetailNest](#GetCollectionDetailNest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | cron | [String: Any]? |  yes  |  |
 | logo | [Media1](#Media1)? |  yes  |  |
 | uid | String? |  yes  |  |
 | schedule | [String: Any]? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | query | [String: Any]? |  yes  |  |
 | tag | [String]? |  yes  |  |
 | allowFacets | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | type | String? |  yes  |  |
 | action | [ProductListingAction](#ProductListingAction)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | allowSort | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | appId | String? |  yes  |  |
 | badge | [String: Any]? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |

---


 
 
 #### [GetCollectionListingResponse](#GetCollectionListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [CollectionListingFilter](#CollectionListingFilter)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetCollectionDetailNest](#GetCollectionDetailNest)]? |  yes  |  |

---


 
 
 #### [CollectionImage](#CollectionImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [CollectionBanner](#CollectionBanner)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | [CollectionImage](#CollectionImage) |  no  |  |
 | portrait | [CollectionImage](#CollectionImage) |  no  |  |

---


 
 
 #### [CollectionBadge](#CollectionBadge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | color | String? |  yes  |  |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | email | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | username | String? |  yes  |  |

---


 
 
 #### [SeoDetail](#SeoDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [Schedule](#Schedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String? |  yes  |  |
 | cron | String? |  yes  |  |
 | duration | Int? |  yes  |  |
 | end | String? |  yes  |  |

---


 
 
 #### [CreateCollection](#CreateCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | tags | [String]? |  yes  |  |
 | logo | [CollectionImage](#CollectionImage) |  no  |  |
 | banners | [CollectionBanner](#CollectionBanner) |  no  |  |
 | localeLanguage | [String: Any]? |  yes  |  |
 | query | [String: Any]? |  yes  |  |
 | badge | [CollectionBadge](#CollectionBadge)? |  yes  |  |
 | allowFacets | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | description | String? |  yes  |  |
 | modifiedBy | [UserInfo](#UserInfo)? |  yes  |  |
 | type | String |  no  |  |
 | sortOn | String? |  yes  |  |
 | createdBy | [UserInfo](#UserInfo)? |  yes  |  |
 | published | Bool? |  yes  |  |
 | seo | [SeoDetail](#SeoDetail)? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | allowSort | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | appId | String |  no  |  |
 | schedule | [Schedule](#Schedule)? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |

---


 
 
 #### [CollectionCreateResponse](#CollectionCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | query | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |
 | allowSort | Bool? |  yes  |  |
 | tag | [String]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | cron | [String: Any]? |  yes  |  |
 | badge | [String: Any]? |  yes  |  |
 | allowFacets | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | appId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | schedule | [String: Any]? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |
 | logo | [BannerImage](#BannerImage)? |  yes  |  |

---


 
 
 #### [CollectionDetailResponse](#CollectionDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | query | [String: Any]? |  yes  |  |
 | name | String? |  yes  |  |
 | allowSort | Bool? |  yes  |  |
 | tag | [String]? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | cron | [String: Any]? |  yes  |  |
 | badge | [String: Any]? |  yes  |  |
 | allowFacets | Bool? |  yes  |  |
 | description | String? |  yes  |  |
 | appId | String? |  yes  |  |
 | type | String? |  yes  |  |
 | schedule | [String: Any]? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |
 | logo | [Media1](#Media1)? |  yes  |  |

---


 
 
 #### [UpdateCollection](#UpdateCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | logo | [CollectionImage](#CollectionImage)? |  yes  |  |
 | schedule | [Schedule](#Schedule)? |  yes  |  |
 | banners | [CollectionBanner](#CollectionBanner)? |  yes  |  |
 | localeLanguage | [String: Any]? |  yes  |  |
 | query | [String: Any]? |  yes  |  |
 | allowFacets | Bool? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | description | String? |  yes  |  |
 | modifiedBy | [UserInfo](#UserInfo)? |  yes  |  |
 | seo | [SeoDetail](#SeoDetail)? |  yes  |  |
 | sortOn | String? |  yes  |  |
 | published | Bool? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | allowSort | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | badge | [CollectionBadge](#CollectionBadge)? |  yes  |  |
 | visibleFacetsKeys | [String]? |  yes  |  |

---


 
 
 #### [ProductBrand](#ProductBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | action | [ProductListingAction](#ProductListingAction)? |  yes  |  |
 | logo | [Media1](#Media1)? |  yes  |  |

---


 
 
 #### [ProductDetailAttribute](#ProductDetailAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | value | String? |  yes  |  |
 | key | String? |  yes  |  |

---


 
 
 #### [ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | details | [[ProductDetailAttribute](#ProductDetailAttribute)]? |  yes  |  |

---


 
 
 #### [Price1](#Price1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currencySymbol | String? |  yes  |  |
 | max | Double? |  yes  |  |
 | min | Double? |  yes  |  |
 | currencyCode | String? |  yes  |  |

---


 
 
 #### [ProductListingPrice](#ProductListingPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | effective | [Price1](#Price1)? |  yes  |  |
 | marked | [Price1](#Price1)? |  yes  |  |

---


 
 
 #### [ProductListingDetail](#ProductListingDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | rating | Double? |  yes  |  |
 | slug | String |  no  |  |
 | color | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | productOnlineDate | String? |  yes  |  |
 | highlights | [String]? |  yes  |  |
 | imageNature | String? |  yes  |  |
 | medias | [[Media1](#Media1)]? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | brand | [ProductBrand](#ProductBrand)? |  yes  |  |
 | description | String? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | type | String? |  yes  |  |
 | tryouts | [String]? |  yes  |  |
 | similars | [String]? |  yes  |  |
 | sellable | Bool? |  yes  |  |
 | groupedAttributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)]? |  yes  |  |
 | discount | String? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | promoMeta | [String: Any]? |  yes  |  |
 | hasVariant | Bool? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | ratingCount | Int? |  yes  |  |
 | price | [ProductListingPrice](#ProductListingPrice)? |  yes  |  |

---


 
 
 #### [GetCollectionItemsResponse](#GetCollectionItemsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sortOn | [[ProductSortOn](#ProductSortOn)]? |  yes  |  |
 | filters | [[ProductFilters](#ProductFilters)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[ProductListingDetail](#ProductListingDetail)]? |  yes  |  |

---


 
 
 #### [CollectionItemRequest](#CollectionItemRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageSize | Int |  no  |  |
 | pageNo | Int |  no  |  |

---


 
 
 #### [UpdatedResponse](#UpdatedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [CatalogInsightBrand](#CatalogInsightBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | articleFreshness | Int? |  yes  |  |
 | totalSizes | Int? |  yes  |  |
 | totalArticles | Int? |  yes  |  |
 | availableArticles | Int? |  yes  |  |
 | availableSizes | Int? |  yes  |  |

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
 | articles | Int? |  yes  |  |
 | products | Int? |  yes  |  |

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
 | storeIds | [Int]? |  yes  |  |
 | brandIds | [Int]? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | optLevel | String |  no  |  |

---


 
 
 #### [CompanyOptIn](#CompanyOptIn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | Int |  no  |  |
 | optLevel | String |  no  |  |
 | storeIds | [Int] |  no  |  |
 | brandIds | [Int] |  no  |  |
 | platform | String |  no  |  |
 | companyId | Int |  no  |  |
 | enabled | Bool |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | createdOn | Int |  no  |  |

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
 | companyType | String? |  yes  |  |
 | businessType | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [CompanyBrandDetail](#CompanyBrandDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandName | String? |  yes  |  |
 | brandId | Int? |  yes  |  |
 | companyId | Int? |  yes  |  |
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
 | brand | Int? |  yes  |  |
 | company | String? |  yes  |  |
 | store | Int? |  yes  |  |

---


 
 
 #### [StoreDetail](#StoreDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | timing | [String: Any]? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | documents | [[String: Any]]? |  yes  |  |
 | storeType | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | additionalContacts | [[String: Any]]? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | displayName | String? |  yes  |  |

---


 
 
 #### [OptinStoreDetails](#OptinStoreDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[StoreDetail](#StoreDetail)]? |  yes  |  |

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
 | format | String? |  yes  |  |
 | mandatory | Bool? |  yes  |  |
 | multi | Bool? |  yes  |  |
 | range | [AttributeSchemaRange](#AttributeSchemaRange)? |  yes  |  |
 | allowedValues | [String]? |  yes  |  |
 | type | String |  no  |  |

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
 | dependsOn | [String]? |  yes  |  |
 | indexing | Bool |  no  |  |
 | priority | Int? |  yes  |  |

---


 
 
 #### [GenderDetail](#GenderDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | enabledForEndConsumer | Bool? |  yes  |  |
 | slug | String? |  yes  |  |
 | details | [AttributeMasterDetails](#AttributeMasterDetails)? |  yes  |  |
 | departments | [String]? |  yes  |  |
 | description | String? |  yes  |  |
 | isNested | Bool? |  yes  |  |
 | schema | [AttributeMaster](#AttributeMaster)? |  yes  |  |
 | id | String? |  yes  |  |
 | meta | [AttributeMasterMeta](#AttributeMasterMeta)? |  yes  |  |
 | filters | [AttributeMasterFilter](#AttributeMasterFilter)? |  yes  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [ProdcutTemplateCategoriesResponse](#ProdcutTemplateCategoriesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[String: Any]]? |  yes  |  |

---


 
 
 #### [PTErrorResponse](#PTErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | errors | [String: Any]? |  yes  |  |
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [UserSerializer](#UserSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | username | String? |  yes  |  |
 | contact | String? |  yes  |  |

---


 
 
 #### [GetDepartment](#GetDepartment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemType | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | priorityOrder | Int? |  yes  |  |
 | synonyms | [String]? |  yes  |  |
 | slug | String? |  yes  |  |
 | pageSize | Int? |  yes  |  |
 | search | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | pageNo | Int? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | logo | String? |  yes  |  |

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
 | errors | [String: Any]? |  yes  |  |
 | message | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | code | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [ProductTemplate](#ProductTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | categories | [String]? |  yes  |  |
 | name | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | tag | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | slug | String |  no  |  |
 | attributes | [String]? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | departments | [String]? |  yes  |  |
 | description | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | isPhysical | Bool |  no  |  |
 | createdOn | String? |  yes  |  |
 | logo | String? |  yes  |  |

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
 | name | String? |  yes  |  |
 | tag | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | slug | String |  no  |  |
 | attributes | [String]? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | departments | [String]? |  yes  |  |
 | description | String? |  yes  |  |
 | id | String? |  yes  |  |
 | isPhysical | Bool |  no  |  |
 | logo | String? |  yes  |  |

---


 
 
 #### [Properties](#Properties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemType | [String: Any]? |  yes  |  |
 | name | [String: Any]? |  yes  |  |
 | sizeGuide | [String: Any]? |  yes  |  |
 | noOfBoxes | [String: Any]? |  yes  |  |
 | slug | [String: Any]? |  yes  |  |
 | currency | [String: Any]? |  yes  |  |
 | hsnCode | [String: Any]? |  yes  |  |
 | tags | [String: Any]? |  yes  |  |
 | trader | [String: Any]? |  yes  |  |
 | sizes | [String: Any]? |  yes  |  |
 | media | [String: Any]? |  yes  |  |
 | productGroupTag | [String: Any]? |  yes  |  |
 | command | [String: Any]? |  yes  |  |
 | multiSize | [String: Any]? |  yes  |  |
 | highlights | [String: Any]? |  yes  |  |
 | categorySlug | [String: Any]? |  yes  |  |
 | returnConfig | [String: Any]? |  yes  |  |
 | traderType | [String: Any]? |  yes  |  |
 | productPublish | [String: Any]? |  yes  |  |
 | itemCode | [String: Any]? |  yes  |  |
 | moq | [String: Any]? |  yes  |  |
 | description | [String: Any]? |  yes  |  |
 | shortDescription | [String: Any]? |  yes  |  |
 | variants | [String: Any]? |  yes  |  |
 | countryOfOrigin | [String: Any]? |  yes  |  |
 | isActive | [String: Any]? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | customOrder | [String: Any]? |  yes  |  |
 | isDependent | [String: Any]? |  yes  |  |
 | brandUid | [String: Any]? |  yes  |  |

---


 
 
 #### [GlobalValidation](#GlobalValidation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | required | [String]? |  yes  |  |
 | properties | [Properties](#Properties)? |  yes  |  |
 | description | String? |  yes  |  |
 | type | String? |  yes  |  |
 | definitions | [String: Any]? |  yes  |  |
 | title | String? |  yes  |  |

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
 | data | [String: Any]? |  yes  |  |
 | message | String? |  yes  |  |

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
 | data | [HSNData](#HSNData)? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [ProductDownloadItemsData](#ProductDownloadItemsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [String]? |  yes  |  |
 | templates | [String]? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [VerifiedBy](#VerifiedBy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | username | String? |  yes  |  |

---


 
 
 #### [ProductDownloadsItems](#ProductDownloadsItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | taskId | String? |  yes  |  |
 | sellerId | Double? |  yes  |  |
 | completedOn | String? |  yes  |  |
 | url | String? |  yes  |  |
 | triggerOn | String? |  yes  |  |
 | templateTags | [String: Any]? |  yes  |  |
 | data | [ProductDownloadItemsData](#ProductDownloadItemsData)? |  yes  |  |
 | status | String? |  yes  |  |
 | createdBy | [VerifiedBy](#VerifiedBy)? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [ProductDownloadsResponse](#ProductDownloadsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [ProductDownloadsItems](#ProductDownloadsItems)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [ProductConfigurationDownloads](#ProductConfigurationDownloads)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[String: Any]]? |  yes  |  |
 | multivalue | Bool? |  yes  |  |

---


 
 
 #### [Hierarchy](#Hierarchy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l2 | Int |  no  |  |
 | l1 | Int |  no  |  |
 | department | Int |  no  |  |

---


 
 
 #### [CategoryMappingValues](#CategoryMappingValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | catalogId | Int? |  yes  |  |

---


 
 
 #### [CategoryMapping](#CategoryMapping)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [CategoryMappingValues](#CategoryMappingValues)? |  yes  |  |
 | google | [CategoryMappingValues](#CategoryMappingValues)? |  yes  |  |
 | ajio | [CategoryMappingValues](#CategoryMappingValues)? |  yes  |  |

---


 
 
 #### [Media2](#Media2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | String |  no  |  |
 | portrait | String |  no  |  |
 | logo | String |  no  |  |

---


 
 
 #### [Category](#Category)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String |  no  |  |
 | level | Int |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | isActive | Bool |  no  |  |
 | priority | Int? |  yes  |  |
 | synonyms | [String]? |  yes  |  |
 | slug | String? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | departments | [Int] |  no  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | hierarchy | [[Hierarchy](#Hierarchy)]? |  yes  |  |
 | marketplaces | [CategoryMapping](#CategoryMapping)? |  yes  |  |
 | media | [Media2](#Media2)? |  yes  |  |
 | tryouts | [String]? |  yes  |  |
 | createdOn | String? |  yes  |  |

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
 | name | String |  no  |  |
 | level | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | priority | Int? |  yes  |  |
 | synonyms | [String]? |  yes  |  |
 | slug | String? |  yes  |  |
 | departments | [Int] |  no  |  |
 | hierarchy | [[Hierarchy](#Hierarchy)]? |  yes  |  |
 | marketplaces | [CategoryMapping](#CategoryMapping)? |  yes  |  |
 | media | [Media2](#Media2)? |  yes  |  |
 | tryouts | [String]? |  yes  |  |

---


 
 
 #### [CategoryCreateResponse](#CategoryCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [CategoryUpdateResponse](#CategoryUpdateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [SingleCategoryResponse](#SingleCategoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [Category](#Category)? |  yes  |  |

---


 
 
 #### [ProductPublished](#ProductPublished)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productOnlineDate | Int? |  yes  |  |
 | isSet | Bool? |  yes  |  |

---


 
 
 #### [Image](#Image)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |
 | aspectRatio | String? |  yes  |  |
 | aspectRatioF | Double? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [Logo](#Logo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | aspectRatioF | Int? |  yes  |  |
 | secureUrl | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | logo | [Logo](#Logo)? |  yes  |  |

---


 
 
 #### [UserCommon](#UserCommon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | username | String? |  yes  |  |

---


 
 
 #### [Attributes](#Attributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primaryColor | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | primaryMaterial | String? |  yes  |  |
 | gender | [String]? |  yes  |  |
 | isImageLessProduct | Bool? |  yes  |  |
 | l3Mapping | [String]? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | color | String? |  yes  |  |
 | metaNature | String? |  yes  |  |
 | imageNature | String? |  yes  |  |
 | material | String? |  yes  |  |
 | modifiedBy | [UserCommon](#UserCommon)? |  yes  |  |
 | createdBy | [UserCommon](#UserCommon)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | sleeveLength | String? |  yes  |  |
 | productFit | String? |  yes  |  |
 | neckType | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | essential | String? |  yes  |  |
 | verifiedBy | [VerifiedBy](#VerifiedBy)? |  yes  |  |
 | pattern | String? |  yes  |  |

---


 
 
 #### [Product](#Product)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | sizeGuide | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | departments | [Int]? |  yes  |  |
 | media | [[Media1](#Media1)]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | categorySlug | String? |  yes  |  |
 | highlights | String? |  yes  |  |
 | multiSize | Bool? |  yes  |  |
 | productPublish | [ProductPublished](#ProductPublished)? |  yes  |  |
 | images | [[Image](#Image)]? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | brand | [Brand](#Brand)? |  yes  |  |
 | allSizes | [String]? |  yes  |  |
 | description | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | id | String? |  yes  |  |
 | templateTag | String? |  yes  |  |
 | countryOfOrigin | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | attributes | [Attributes](#Attributes)? |  yes  |  |
 | sizes | [[String: Any]]? |  yes  |  |
 | isDependent | Bool? |  yes  |  |

---


 
 
 #### [ProductListingResponse](#ProductListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[Product](#Product)]? |  yes  |  |

---


 
 
 #### [Trader](#Trader)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | String |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | time | Int? |  yes  |  |
 | unit | String? |  yes  |  |
 | returnable | Bool? |  yes  |  |

---


 
 
 #### [ProductPublish](#ProductPublish)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productOnlineDate | String? |  yes  |  |
 | isSet | Bool? |  yes  |  |

---


 
 
 #### [OrderQuantity](#OrderQuantity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minimum | Int? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | maximum | Int? |  yes  |  |

---


 
 
 #### [TeaserTag](#TeaserTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [CustomOrder](#CustomOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manufacturingTimeUnit | String? |  yes  |  |
 | manufacturingTime | Int? |  yes  |  |
 | isCustomOrder | Bool? |  yes  |  |

---


 
 
 #### [ProductCreateUpdate](#ProductCreateUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemType | String |  no  |  |
 | name | String |  no  |  |
 | sizeGuide | String? |  yes  |  |
 | noOfBoxes | Int? |  yes  |  |
 | isImageLessProduct | Bool? |  yes  |  |
 | slug | String |  no  |  |
 | currency | String |  no  |  |
 | hsnCode | String |  no  |  |
 | tags | [String]? |  yes  |  |
 | departments | [Int] |  no  |  |
 | trader | [Trader](#Trader)? |  yes  |  |
 | media | [[Media1](#Media1)]? |  yes  |  |
 | productGroupTag | [String]? |  yes  |  |
 | uid | Int? |  yes  |  |
 | categorySlug | String |  no  |  |
 | highlights | [String]? |  yes  |  |
 | multiSize | Bool? |  yes  |  |
 | returnConfig | [ReturnConfig](#ReturnConfig)? |  yes  |  |
 | traderType | String? |  yes  |  |
 | productPublish | [ProductPublish](#ProductPublish)? |  yes  |  |
 | isSet | Bool? |  yes  |  |
 | itemCode | String |  no  |  |
 | moq | [OrderQuantity](#OrderQuantity)? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | description | String? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | companyId | Int |  no  |  |
 | requester | String? |  yes  |  |
 | templateTag | String |  no  |  |
 | variants | [String: Any]? |  yes  |  |
 | countryOfOrigin | String |  no  |  |
 | isActive | Bool? |  yes  |  |
 | changeRequestId | String? |  yes  |  |
 | teaserTag | [TeaserTag](#TeaserTag)? |  yes  |  |
 | customOrder | [CustomOrder](#CustomOrder)? |  yes  |  |
 | isDependent | Bool? |  yes  |  |
 | brandUid | Int |  no  |  |

---


 
 
 #### [ValidateProduct](#ValidateProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | valid | Bool? |  yes  |  |

---


 
 
 #### [UserDetail](#UserDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | fullName | String? |  yes  |  |
 | username | String? |  yes  |  |

---


 
 
 #### [ProductBulkRequest](#ProductBulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failedRecords | [String]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | filePath | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | cancelledRecords | [String]? |  yes  |  |
 | template | [ProductTemplate](#ProductTemplate)? |  yes  |  |
 | failed | Int? |  yes  |  |
 | stage | String? |  yes  |  |
 | modifiedBy | [UserDetail](#UserDetail)? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | createdBy | [UserDetail](#UserDetail)? |  yes  |  |
 | total | Int? |  yes  |  |
 | templateTag | String? |  yes  |  |

---


 
 
 #### [ProductBulkRequestList](#ProductBulkRequestList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [ProductBulkRequest](#ProductBulkRequest)? |  yes  |  |

---


 
 
 #### [UserInfo1](#UserInfo1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | userId | String? |  yes  |  |
 | email | String? |  yes  |  |
 | uid | String? |  yes  |  |
 | username | String? |  yes  |  |

---


 
 
 #### [BulkJob](#BulkJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failedRecords | [[String: Any]]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | filePath | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | cancelledRecords | [[String: Any]]? |  yes  |  |
 | trackingUrl | String? |  yes  |  |
 | failed | Int? |  yes  |  |
 | stage | String? |  yes  |  |
 | modifiedBy | [UserInfo1](#UserInfo1)? |  yes  |  |
 | companyId | Int |  no  |  |
 | succeed | Int? |  yes  |  |
 | createdBy | [UserInfo1](#UserInfo1)? |  yes  |  |
 | templateTag | String? |  yes  |  |
 | total | Int |  no  |  |
 | customTemplateTag | String? |  yes  |  |
 | createdOn | String |  no  |  |

---


 
 
 #### [BulkProductRequest](#BulkProductRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[String: Any]] |  no  |  |
 | batchId | String |  no  |  |
 | companyId | Int |  no  |  |
 | templateTag | String |  no  |  |

---


 
 
 #### [NestedTags](#NestedTags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [String]? |  yes  |  |

---


 
 
 #### [ProductTagsViewResponse](#ProductTagsViewResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [NestedTags](#NestedTags)? |  yes  |  |

---


 
 
 #### [Items](#Items)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failedRecords | [String]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | id | String? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | filePath | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | cancelledRecords | [String]? |  yes  |  |
 | trackingUrl | String? |  yes  |  |
 | failed | Int? |  yes  |  |
 | stage | String? |  yes  |  |
 | modifiedBy | [UserCommon](#UserCommon)? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | createdBy | [UserCommon](#UserCommon)? |  yes  |  |
 | retry | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | createdOn | String? |  yes  |  |

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
 | user | [String: Any] |  no  |  |
 | companyId | Int? |  yes  |  |
 | url | String |  no  |  |

---


 
 
 #### [ProductSizeDeleteDataResponse](#ProductSizeDeleteDataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | itemId | Int? |  yes  |  |

---


 
 
 #### [ProductSizeDeleteResponse](#ProductSizeDeleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [ProductSizeDeleteDataResponse](#ProductSizeDeleteDataResponse)? |  yes  |  |

---


 
 
 #### [InventoryResponse](#InventoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String? |  yes  |  |
 | priceTransfer | Int? |  yes  |  |
 | uid | String? |  yes  |  |
 | inventoryUpdatedOn | String? |  yes  |  |
 | itemId | Int? |  yes  |  |
 | identifiers | [String: Any]? |  yes  |  |
 | currency | String? |  yes  |  |
 | sellerIdentifier | Int? |  yes  |  |
 | sellableQuantity | Int? |  yes  |  |
 | price | Int? |  yes  |  |
 | quantity | Int? |  yes  |  |
 | priceEffective | Int? |  yes  |  |
 | store | [String: Any]? |  yes  |  |

---


 
 
 #### [ItemQuery](#ItemQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | brandUid | Int? |  yes  |  |
 | itemCode | String? |  yes  |  |

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
 | sizeDistribution | [SizeDistribution](#SizeDistribution) |  no  |  |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [GTIN](#GTIN)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gtinType | String |  no  |  |
 | gtinValue | String |  no  |  |
 | primary | Bool? |  yes  |  |

---


 
 
 #### [InvSize](#InvSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String |  no  |  |
 | priceTransfer | Double? |  yes  |  |
 | set | [InventorySet](#InventorySet)? |  yes  |  |
 | identifiers | [[GTIN](#GTIN)] |  no  |  |
 | itemWidth | Double? |  yes  |  |
 | currency | String |  no  |  |
 | storeCode | String |  no  |  |
 | itemLength | Double? |  yes  |  |
 | itemHeight | Double? |  yes  |  |
 | itemDimensionsUnitOfMeasure | String? |  yes  |  |
 | itemWeightUnitOfMeasure | String? |  yes  |  |
 | itemWeight | Double? |  yes  |  |
 | price | Double |  no  |  |
 | quantity | Int |  no  |  |
 | priceEffective | Double |  no  |  |
 | isSet | Bool? |  yes  |  |

---


 
 
 #### [InventoryRequest](#InventoryRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [ItemQuery](#ItemQuery) |  no  |  |
 | companyId | Int |  no  |  |
 | sizes | [[InvSize](#InvSize)] |  no  |  |

---


 
 
 #### [InventoryDeleteData](#InventoryDeleteData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String? |  yes  |  |
 | locationId | Int? |  yes  |  |
 | itemId | Int? |  yes  |  |

---


 
 
 #### [InventoryDelete](#InventoryDelete)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  |  |
 | data | [InventoryDeleteData](#InventoryDeleteData)? |  yes  |  |

---


 
 
 #### [BulkInventoryGetItems](#BulkInventoryGetItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | failedRecords | [String]? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | cancelled | Int? |  yes  |  |
 | filePath | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | cancelledRecords | [String]? |  yes  |  |
 | total | Int? |  yes  |  |
 | failed | Int? |  yes  |  |
 | stage | String? |  yes  |  |
 | modifiedBy | [String: Any]? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | succeed | Int? |  yes  |  |
 | createdBy | [String: Any]? |  yes  |  |
 | id | String? |  yes  |  |
 | createdOn | String? |  yes  |  |

---


 
 
 #### [BulkInventoryGet](#BulkInventoryGet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[BulkInventoryGetItems](#BulkInventoryGetItems)]? |  yes  |  |

---


 
 
 #### [CommonResponse](#CommonResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | String? |  yes  |  |

---


 
 
 #### [Size1](#Size1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String? |  yes  |  |
 | priceTransfer | Double? |  yes  |  |
 | set | [InventorySet](#InventorySet)? |  yes  |  |
 | identifiers | [[String: Any]]? |  yes  |  |
 | itemWidth | Double? |  yes  |  |
 | currency | String |  no  |  |
 | storeCode | String |  no  |  |
 | itemLength | Double? |  yes  |  |
 | sellerIdentifier | String |  no  |  |
 | itemHeight | Double? |  yes  |  |
 | itemDimensionsUnitOfMeasure | String? |  yes  |  |
 | itemWeightUnitOfMeasure | String? |  yes  |  |
 | itemWeight | Double? |  yes  |  |
 | price | Double |  no  |  |
 | quantity | Int |  no  |  |
 | priceEffective | Double |  no  |  |
 | isSet | Bool? |  yes  |  |

---


 
 
 #### [InventoryBulkRequest](#InventoryBulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [String: Any]? |  yes  |  |
 | batchId | String |  no  |  |
 | companyId | Int |  no  |  |
 | sizes | [[Size1](#Size1)] |  no  |  |

---


 
 
 #### [InventoryExportJob](#InventoryExportJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | taskId | String |  no  |  |
 | sellerId | Int |  no  |  |
 | url | String? |  yes  |  |
 | completedOn | String? |  yes  |  |
 | triggerOn | String? |  yes  |  |
 | status | String? |  yes  |  |
 | requestParams | [String: Any]? |  yes  |  |

---


 
 
 #### [InventoryExportRequest](#InventoryExportRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [Int]? |  yes  |  |
 | type | String? |  yes  |  |
 | store | [Int]? |  yes  |  |

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


 
 
 #### [PageResponse](#PageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | Int? |  yes  |  |
 | current | String? |  yes  |  |
 | hasNext | Bool? |  yes  |  |
 | itemTotal | Int? |  yes  |  |
 | hasPrevious | Bool? |  yes  |  |

---


 
 
 #### [HsnCodesObject](#HsnCodesObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | String? |  yes  |  |
 | tax1 | Double? |  yes  |  |
 | taxOnMrp | Bool? |  yes  |  |
 | taxOnEsp | Bool? |  yes  |  |
 | hsnCode | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | hs2Code | String? |  yes  |  |
 | id | String? |  yes  |  |
 | tax2 | Double? |  yes  |  |
 | threshold2 | Double? |  yes  |  |
 | threshold1 | Double? |  yes  |  |

---


 
 
 #### [HsnCodesListingResponse](#HsnCodesListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [PageResponse](#PageResponse)? |  yes  |  |
 | items | [[HsnCodesObject](#HsnCodesObject)]? |  yes  |  |

---


 
 
 #### [HsnUpsert](#HsnUpsert)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | tax1 | Double |  no  |  |
 | taxOnMrp | Bool |  no  |  |
 | taxOnEsp | Bool? |  yes  |  |
 | hsnCode | String |  no  |  |
 | companyId | Int |  no  |  |
 | hs2Code | String |  no  |  |
 | tax2 | Double? |  yes  |  |
 | threshold2 | Double? |  yes  |  |
 | threshold1 | Double |  no  |  |

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


 
 
 #### [BrandItem](#BrandItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | discount | String? |  yes  |  |
 | name | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | departments | [String]? |  yes  |  |
 | action | [ProductListingAction](#ProductListingAction)? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |
 | logo | [Media](#Media)? |  yes  |  |

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
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | priorityOrder | Int? |  yes  |  |
 | slug | String? |  yes  |  |
 | logo | [Media](#Media)? |  yes  |  |

---


 
 
 #### [DepartmentResponse](#DepartmentResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Department](#Department)]? |  yes  |  |

---


 
 
 #### [ThirdLevelChild](#ThirdLevelChild)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | childs | [[String: Any]]? |  yes  |  |
 | slug | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | action | [ProductListingAction](#ProductListingAction)? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |

---


 
 
 #### [SecondLevelChild](#SecondLevelChild)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | childs | [[ThirdLevelChild](#ThirdLevelChild)]? |  yes  |  |
 | slug | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | action | [ProductListingAction](#ProductListingAction)? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |

---


 
 
 #### [Child](#Child)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | childs | [[SecondLevelChild](#SecondLevelChild)]? |  yes  |  |
 | slug | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | action | [ProductListingAction](#ProductListingAction)? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |

---


 
 
 #### [CategoryItems](#CategoryItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | childs | [[Child](#Child)]? |  yes  |  |
 | slug | String? |  yes  |  |
 | action | [ProductListingAction](#ProductListingAction)? |  yes  |  |
 | banners | [ImageUrls](#ImageUrls)? |  yes  |  |

---


 
 
 #### [DepartmentCategoryTree](#DepartmentCategoryTree)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | department | String? |  yes  |  |
 | items | [[CategoryItems](#CategoryItems)]? |  yes  |  |

---


 
 
 #### [DepartmentIdentifier](#DepartmentIdentifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | slug | String? |  yes  |  |

---


 
 
 #### [CategoryListingResponse](#CategoryListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[DepartmentCategoryTree](#DepartmentCategoryTree)]? |  yes  |  |
 | departments | [[DepartmentIdentifier](#DepartmentIdentifier)]? |  yes  |  |

---


 
 
 #### [ApplicationProductListingResponse](#ApplicationProductListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ProductListingDetail](#ProductListingDetail)]? |  yes  |  |
 | filters | [[ProductFilters](#ProductFilters)]? |  yes  |  |
 | sortOn | [[ProductSortOn](#ProductSortOn)]? |  yes  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ProductDetail](#ProductDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | itemType | String? |  yes  |  |
 | name | String? |  yes  |  |
 | rating | Double? |  yes  |  |
 | slug | String |  no  |  |
 | color | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | productOnlineDate | String? |  yes  |  |
 | highlights | [String]? |  yes  |  |
 | imageNature | String? |  yes  |  |
 | medias | [[Media1](#Media1)]? |  yes  |  |
 | itemCode | String? |  yes  |  |
 | brand | [ProductBrand](#ProductBrand)? |  yes  |  |
 | description | String? |  yes  |  |
 | shortDescription | String? |  yes  |  |
 | type | String? |  yes  |  |
 | tryouts | [String]? |  yes  |  |
 | similars | [String]? |  yes  |  |
 | groupedAttributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)]? |  yes  |  |
 | attributes | [String: Any]? |  yes  |  |
 | promoMeta | [String: Any]? |  yes  |  |
 | hasVariant | Bool? |  yes  |  |
 | teaserTag | [String: Any]? |  yes  |  |
 | ratingCount | Int? |  yes  |  |

---




 
 
 #### [Website](#Website)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String? |  yes  |  |

---


 
 
 #### [BusinessDetails](#BusinessDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | website | [Website](#Website)? |  yes  |  |

---


 
 
 #### [GetAddressSerializer](#GetAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | landmark | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | address1 | String? |  yes  |  |
 | country | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | city | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | state | String? |  yes  |  |
 | longitude | Double? |  yes  |  |

---


 
 
 #### [SellerPhoneNumber](#SellerPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | String |  no  |  |
 | countryCode | Int |  no  |  |

---


 
 
 #### [ContactDetails](#ContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | emails | [String]? |  yes  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | legalName | String? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | type | String |  no  |  |
 | value | String |  no  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [BusinessCountryInfo](#BusinessCountryInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | country | String? |  yes  |  |

---


 
 
 #### [GetCompanyProfileSerializerResponse](#GetCompanyProfileSerializerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdOn | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | name | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | businessType | String |  no  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | uid | Int |  no  |  |
 | businessDetails | [BusinessDetails](#BusinessDetails)? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | contactDetails | [ContactDetails](#ContactDetails)? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | companyType | String |  no  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | businessInfo | String? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | mode | String? |  yes  |  |
 | businessCountryInfo | [BusinessCountryInfo](#BusinessCountryInfo)? |  yes  |  |

---


 
 
 #### [CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | latitude | Double |  no  |  |
 | landmark | String? |  yes  |  |
 | pincode | Int |  no  |  |
 | address1 | String |  no  |  |
 | country | String |  no  |  |
 | addressType | String |  no  |  |
 | city | String |  no  |  |
 | address2 | String? |  yes  |  |
 | state | String |  no  |  |
 | longitude | Double |  no  |  |

---


 
 
 #### [UpdateCompany](#UpdateCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | addresses | [[CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)]? |  yes  |  |
 | contactDetails | [ContactDetails](#ContactDetails)? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | businessType | String? |  yes  |  |
 | businessInfo | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | businessDetails | [BusinessDetails](#BusinessDetails)? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | companyType | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |

---


 
 
 #### [DocumentsObj](#DocumentsObj)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pending | Int? |  yes  |  |
 | verified | Int? |  yes  |  |

---


 
 
 #### [MetricsSerializer](#MetricsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeDocuments | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | store | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | product | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | brand | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | companyDocuments | [DocumentsObj](#DocumentsObj)? |  yes  |  |
 | stage | String? |  yes  |  |

---


 
 
 #### [UserSerializer1](#UserSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String? |  yes  |  |
 | contact | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [BrandBannerSerializer](#BrandBannerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | landscape | String? |  yes  |  |
 | portrait | String? |  yes  |  |

---


 
 
 #### [GetBrandResponseSerializer](#GetBrandResponseSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | verifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | description | String? |  yes  |  |
 | synonyms | [String]? |  yes  |  |
 | createdBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | logo | String? |  yes  |  |
 | slugKey | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String |  no  |  |
 | stage | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer)? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | localeLanguage | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateUpdateBrandRequestSerializer](#CreateUpdateBrandRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | description | String? |  yes  |  |
 | synonyms | [String]? |  yes  |  |
 | logo | String |  no  |  |
 | uid | Int? |  yes  |  |
 | name | String |  no  |  |
 | customJson | [String: Any]? |  yes  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer)? |  yes  |  |
 | localeLanguage | [String: Any]? |  yes  |  |
 | brandTier | String? |  yes  |  |

---


 
 
 #### [GetCompanySerializer](#GetCompanySerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | verifiedBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)]? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | businessType | String? |  yes  |  |
 | createdBy | [UserSerializer](#UserSerializer)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | companyType | String? |  yes  |  |

---


 
 
 #### [CompanyBrandSerializer](#CompanyBrandSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | verifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer)? |  yes  |  |
 | brand | [GetBrandResponseSerializer](#GetBrandResponseSerializer)? |  yes  |  |
 | createdBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | rejectReason | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |

---


 
 
 #### [CompanyBrandListSerializer](#CompanyBrandListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[CompanyBrandSerializer](#CompanyBrandSerializer)]? |  yes  |  |

---


 
 
 #### [CompanyBrandPostRequestSerializer](#CompanyBrandPostRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company | Int |  no  |  |
 | uid | Int? |  yes  |  |
 | brands | [Int] |  no  |  |

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


 
 
 #### [InvoiceCredSerializer](#InvoiceCredSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |

---


 
 
 #### [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | eWaybill | [InvoiceCredSerializer](#InvoiceCredSerializer)? |  yes  |  |
 | eInvoice | [InvoiceCredSerializer](#InvoiceCredSerializer)? |  yes  |  |

---


 
 
 #### [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeUid | Int? |  yes  |  |
 | onSameStore | Bool? |  yes  |  |

---


 
 
 #### [LocationManagerSerializer](#LocationManagerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | name | String? |  yes  |  |
 | mobileNo | [SellerPhoneNumber](#SellerPhoneNumber) |  no  |  |

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
 | address | [GetAddressSerializer](#GetAddressSerializer) |  no  |  |
 | createdOn | String? |  yes  |  |
 | verifiedOn | String? |  yes  |  |
 | name | String |  no  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | stage | String? |  yes  |  |
 | modifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)]? |  yes  |  |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)? |  yes  |  |
 | createdBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | code | String |  no  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | phoneNumber | String |  no  |  |
 | customJson | [String: Any]? |  yes  |  |
 | storeType | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |
 | integrationType | [LocationIntegrationType](#LocationIntegrationType)? |  yes  |  |
 | displayName | String |  no  |  |
 | modifiedOn | String? |  yes  |  |
 | verifiedBy | [UserSerializer1](#UserSerializer1)? |  yes  |  |
 | notificationEmails | [String]? |  yes  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer)? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |

---


 
 
 #### [LocationListSerializer](#LocationListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[GetLocationSerializer](#GetLocationSerializer)]? |  yes  |  |

---


 
 
 #### [GetAddressSerializer1](#GetAddressSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | countryCode | String? |  yes  |  |
 | latitude | Double? |  yes  |  |
 | landmark | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | address1 | String? |  yes  |  |
 | country | String? |  yes  |  |
 | addressType | String? |  yes  |  |
 | city | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | state | String? |  yes  |  |
 | longitude | Double? |  yes  |  |

---


 
 
 #### [LocationSerializer](#LocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [GetAddressSerializer1](#GetAddressSerializer1) |  no  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)]? |  yes  |  |
 | displayName | String |  no  |  |
 | notificationEmails | [String]? |  yes  |  |
 | productReturnConfig | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)? |  yes  |  |
 | company | Int |  no  |  |
 | gstCredentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)? |  yes  |  |
 | code | String |  no  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String |  no  |  |
 | contactNumbers | [[SellerPhoneNumber](#SellerPhoneNumber)]? |  yes  |  |
 | documents | [[Document](#Document)]? |  yes  |  |
 | customJson | [String: Any]? |  yes  |  |
 | storeType | String? |  yes  |  |
 | stage | String? |  yes  |  |
 | warnings | [String: Any]? |  yes  |  |

---


 
 
 #### [BulkLocationSerializer](#BulkLocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [[LocationSerializer](#LocationSerializer)]? |  yes  |  |

---




 
 
 #### [FailedResponse](#FailedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [CDN](#CDN)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |

---


 
 
 #### [Upload](#Upload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiry | Int |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [StartResponse](#StartResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fileName | String |  no  |  |
 | filePath | String |  no  |  |
 | contentType | String |  no  |  |
 | method | String |  no  |  |
 | namespace | String |  no  |  |
 | operation | String |  no  |  |
 | size | Int |  no  |  |
 | upload | [Upload](#Upload) |  no  |  |
 | cdn | [CDN](#CDN) |  no  |  |
 | tags | [String]? |  yes  |  |

---


 
 
 #### [StartRequest](#StartRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | fileName | String |  no  |  |
 | contentType | String |  no  |  |
 | size | Int |  no  |  |
 | tags | [String]? |  yes  |  |
 | params | [String: Any]? |  yes  |  |

---


 
 
 #### [CompleteResponse](#CompleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | fileName | String |  no  |  |
 | filePath | String |  no  |  |
 | contentType | String |  no  |  |
 | method | String |  no  |  |
 | namespace | String |  no  |  |
 | operation | String |  no  |  |
 | size | Int |  no  |  |
 | upload | [Upload](#Upload) |  no  |  |
 | cdn | [CDN](#CDN) |  no  |  |
 | success | String |  no  |  |
 | tags | [String]? |  yes  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

---


 
 
 #### [Opts](#Opts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attempts | Int? |  yes  |  |
 | timestamp | Int? |  yes  |  |
 | delay | Int? |  yes  |  |

---


 
 
 #### [CopyFileTask](#CopyFileTask)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | data | [BulkRequest](#BulkRequest) |  no  |  |
 | opts | [Opts](#Opts) |  no  |  |
 | progress | Int |  no  |  |
 | delay | Int |  no  |  |
 | timestamp | Int |  no  |  |
 | attemptsMade | Int |  no  |  |
 | stacktrace | [String]? |  yes  |  |
 | finishedOn | Int |  no  |  |
 | processedOn | Int |  no  |  |

---


 
 
 #### [BulkResponse](#BulkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | trackingUrl | String |  no  |  |
 | task | [CopyFileTask](#CopyFileTask) |  no  |  |

---


 
 
 #### [ReqConfiguration](#ReqConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | concurrency | Int? |  yes  |  |

---


 
 
 #### [Destination](#Destination)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | namespace | String |  no  |  |
 | rewrite | String |  no  |  |
 | basepath | String? |  yes  |  |

---


 
 
 #### [BulkRequest](#BulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | urls | [String] |  no  |  |
 | destination | [Destination](#Destination) |  no  |  |
 | configuration | [ReqConfiguration](#ReqConfiguration)? |  yes  |  |

---


 
 
 #### [Urls](#Urls)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | signedUrl | String |  no  |  |
 | expiry | Int |  no  |  |

---


 
 
 #### [SignUrlResponse](#SignUrlResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | urls | [[Urls](#Urls)] |  no  |  |

---


 
 
 #### [SignUrlRequest](#SignUrlRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | expiry | Int |  no  |  |
 | urls | [String] |  no  |  |

---


 
 
 #### [DbRecord](#DbRecord)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | tags | [String] |  no  |  |
 | id | String |  no  |  |
 | fileName | String |  no  |  |
 | operation | String? |  yes  |  |
 | namespace | String |  no  |  |
 | contentType | String |  no  |  |
 | filePath | String |  no  |  |
 | upload | [Upload](#Upload) |  no  |  |
 | cdn | [CDN](#CDN) |  no  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |

---


 
 
 #### [BrowseResponse](#BrowseResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[DbRecord](#DbRecord)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---




 
 
 #### [RedirectDevice](#RedirectDevice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [WebRedirect](#WebRedirect)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | link | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Redirects](#Redirects)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ios | [RedirectDevice](#RedirectDevice)? |  yes  |  |
 | android | [RedirectDevice](#RedirectDevice)? |  yes  |  |
 | web | [WebRedirect](#WebRedirect)? |  yes  |  |
 | forceWeb | Bool? |  yes  |  |

---


 
 
 #### [CampaignShortLink](#CampaignShortLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source | String? |  yes  |  |
 | medium | String? |  yes  |  |

---


 
 
 #### [Attribution](#Attribution)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | campaignCookieExpiry | String? |  yes  |  |

---


 
 
 #### [SocialMediaTags](#SocialMediaTags)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |
 | image | String? |  yes  |  |

---


 
 
 #### [ShortLinkReq](#ShortLinkReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  | Give a name to the link. |
 | url | String |  no  | The web address to shorten. |
 | hash | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | expireAt | String? |  yes  |  |
 | enableTracking | Bool? |  yes  |  |
 | personalized | Bool? |  yes  | To create personalized short links. |
 | campaign | [CampaignShortLink](#CampaignShortLink)? |  yes  |  |
 | redirects | [Redirects](#Redirects)? |  yes  |  |
 | attribution | [Attribution](#Attribution)? |  yes  |  |
 | socialMediaTags | [SocialMediaTags](#SocialMediaTags)? |  yes  |  |
 | count | Int? |  yes  |  |

---


 
 
 #### [UrlInfo](#UrlInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | original | String? |  yes  |  |
 | short | String? |  yes  |  |
 | hash | String? |  yes  |  |

---


 
 
 #### [ShortLinkRes](#ShortLinkRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | url | [UrlInfo](#UrlInfo)? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | appRedirect | Bool? |  yes  |  |
 | fallback | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | enableTracking | Bool? |  yes  |  |
 | expireAt | String? |  yes  |  |
 | application | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | personalized | Bool? |  yes  | To create personalized short links |
 | campaign | [CampaignShortLink](#CampaignShortLink)? |  yes  |  |
 | redirects | [Redirects](#Redirects)? |  yes  |  |
 | attribution | [Attribution](#Attribution)? |  yes  |  |
 | socialMediaTags | [SocialMediaTags](#SocialMediaTags)? |  yes  |  |
 | count | Int? |  yes  |  |

---


 
 
 #### [ShortLinkList](#ShortLinkList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[ShortLinkRes](#ShortLinkRes)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [ErrorRes](#ErrorRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---




 
 
 #### [DataTresholdDTO](#DataTresholdDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minPrice | Double? |  yes  |  |
 | safeStock | Int? |  yes  |  |
 | periodThreshold | Int? |  yes  |  |
 | periodThresholdType | String? |  yes  |  |
 | periodTypeList | [[GenericDTO](#GenericDTO)]? |  yes  |  |

---


 
 
 #### [GenericDTO](#GenericDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [JobConfigDTO](#JobConfigDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | integration | String |  no  |  |
 | integrationData | [String: Any]? |  yes  |  |
 | companyName | String? |  yes  |  |
 | companyId | Int |  no  |  |
 | taskDetails | [TaskDTO](#TaskDTO)? |  yes  |  |
 | thresholdDetails | [DataTresholdDTO](#DataTresholdDTO)? |  yes  |  |
 | jobCode | String? |  yes  |  |
 | alias | String? |  yes  |  |

---


 
 
 #### [TaskDTO](#TaskDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | Int? |  yes  |  |
 | groupList | [[GenericDTO](#GenericDTO)]? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeString](#ResponseEnvelopeString)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | String? |  yes  |  |
 | payload | String? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [AWSS3config](#AWSS3config)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bucket | String? |  yes  |  |
 | region | String? |  yes  |  |
 | dir | String? |  yes  |  |
 | accessKey | String? |  yes  |  |
 | secretKey | String? |  yes  |  |
 | localFilePath | String? |  yes  |  |
 | archivePath | String? |  yes  |  |
 | archive | Bool? |  yes  |  |
 | delete | Bool? |  yes  |  |
 | unzip | Bool? |  yes  |  |
 | zipFormat | String? |  yes  |  |
 | fileRegex | String? |  yes  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig)? |  yes  |  |

---


 
 
 #### [ArchiveConfig](#ArchiveConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | delete | Bool? |  yes  |  |
 | archive | Bool? |  yes  |  |
 | archiveDir | String? |  yes  |  |

---


 
 
 #### [Audit](#Audit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | createdBy | String? |  yes  |  |
 | modifiedBy | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |

---


 
 
 #### [CatalogMasterConfig](#CatalogMasterConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sourceSlug | String? |  yes  |  |

---


 
 
 #### [CompanyConfig](#CompanyConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  |  |
 | excludeSteps | [Int]? |  yes  |  |
 | hiddenClosetKeys | [String]? |  yes  |  |
 | openTags | [String: Any]? |  yes  |  |
 | taxIdentifiers | [String]? |  yes  |  |
 | deleteQuantityThreshold | Int? |  yes  |  |

---


 
 
 #### [DBConfig](#DBConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | vendor | String? |  yes  |  |
 | host | String? |  yes  |  |
 | port | Int? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |
 | dbname | String? |  yes  |  |
 | query | String? |  yes  |  |
 | procedure | Bool? |  yes  |  |
 | driverClass | String? |  yes  |  |
 | jdbcUrl | String? |  yes  |  |
 | optionalProperties | [String: String]? |  yes  |  |

---


 
 
 #### [DBConnectionProfile](#DBConnectionProfile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | String? |  yes  |  |

---


 
 
 #### [DBParamConfig](#DBParamConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | params | [String: Any]? |  yes  |  |

---


 
 
 #### [DefaultHeadersDTO](#DefaultHeadersDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [PropBeanDTO](#PropBeanDTO)? |  yes  |  |
 | intfArticleId | [PropBeanDTO](#PropBeanDTO)? |  yes  |  |
 | priceEffective | [PropBeanDTO](#PropBeanDTO)? |  yes  |  |
 | quantity | [PropBeanDTO](#PropBeanDTO)? |  yes  |  |

---


 
 
 #### [DocMappingConfig](#DocMappingConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | properties | [String: Any]? |  yes  |  |
 | junkDataThresholdCount | Int? |  yes  |  |
 | propBeanConfigs | [[PropBeanConfig](#PropBeanConfig)]? |  yes  |  |
 | unwindField | String? |  yes  |  |
 | defaultHeaders | [DefaultHeadersDTO](#DefaultHeadersDTO)? |  yes  |  |

---


 
 
 #### [EmailConfig](#EmailConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recepient | String? |  yes  |  |
 | host | String? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |
 | unzip | Bool? |  yes  |  |
 | readFromContent | Bool? |  yes  |  |
 | filterBasedOnRecepients | Bool? |  yes  |  |
 | pcol | String? |  yes  |  |
 | subjectLineRegex | String? |  yes  |  |
 | senderAddress | String? |  yes  |  |
 | localDir | String? |  yes  |  |
 | folderNameHierarchies | [String]? |  yes  |  |
 | attachmentRegex | String? |  yes  |  |
 | bodyContentRegex | String? |  yes  |  |
 | passwordProtected | Bool? |  yes  |  |
 | zipFormat | String? |  yes  |  |
 | attachmentMandate | Bool? |  yes  |  |
 | filterFilesAfterExtraction | Bool? |  yes  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig)? |  yes  |  |
 | readAllUnreadMails | Bool? |  yes  |  |
 | contentType | String? |  yes  |  |
 | downloadableLink | Bool? |  yes  |  |
 | properties | [String: String]? |  yes  |  |

---


 
 
 #### [FTPConfig](#FTPConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | host | String? |  yes  |  |
 | port | Int? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |
 | unzip | Bool? |  yes  |  |
 | retries | Int? |  yes  |  |
 | interval | Int? |  yes  |  |
 | localDir | String? |  yes  |  |
 | remoteDir | String? |  yes  |  |
 | zipFileRegex | String? |  yes  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig)? |  yes  |  |
 | fileRegex | String? |  yes  |  |
 | zipFormat | String? |  yes  |  |
 | readAllFiles | Bool? |  yes  |  |

---


 
 
 #### [FileConfig](#FileConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | delimiter | String? |  yes  |  |
 | charset | String? |  yes  |  |
 | properties | [String: Any]? |  yes  |  |
 | fileHasHeader | Bool? |  yes  |  |
 | headerIndex | Int? |  yes  |  |
 | headerArray | [String]? |  yes  |  |
 | dataStartIndex | Int? |  yes  |  |
 | propBeanConfigs | [[PropBeanConfig](#PropBeanConfig)]? |  yes  |  |
 | junkDataThresholdCount | Int? |  yes  |  |
 | fileType | String? |  yes  |  |
 | lineValidityCheck | Bool? |  yes  |  |
 | sheetNames | [String]? |  yes  |  |
 | readAllSheets | Bool? |  yes  |  |
 | quoteChar | String? |  yes  |  |
 | escapeChar | String? |  yes  |  |
 | defaultHeaders | [DefaultHeadersDTO](#DefaultHeadersDTO)? |  yes  |  |

---


 
 
 #### [GoogleSpreadSheetConfig](#GoogleSpreadSheetConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | range | String? |  yes  |  |
 | sheetId | String? |  yes  |  |
 | clientSecretLocation | String? |  yes  |  |
 | credStorageDirectory | String? |  yes  |  |
 | localDir | String? |  yes  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig)? |  yes  |  |

---


 
 
 #### [HttpConfig](#HttpConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hosturl | String? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |
 | requestParams | [String: String]? |  yes  |  |
 | httpMethod | String? |  yes  |  |
 | requestPayload | String? |  yes  |  |
 | localPath | String? |  yes  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig)? |  yes  |  |

---


 
 
 #### [JobConfig](#JobConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | jobCode | String? |  yes  |  |
 | taskType | String? |  yes  |  |
 | syncDelay | Int? |  yes  |  |
 | cronExpression | String? |  yes  |  |
 | storeFilter | [StoreFilter](#StoreFilter)? |  yes  |  |
 | processConfig | [ProcessConfig](#ProcessConfig)? |  yes  |  |
 | storeConfig | [[StoreConfig](#StoreConfig)]? |  yes  |  |
 | properties | [String: String]? |  yes  |  |
 | immediateFirstRun | Bool? |  yes  |  |
 | disable | Bool? |  yes  |  |
 | dependentJobCodes | [String]? |  yes  |  |
 | companyConfig | [[CompanyConfig](#CompanyConfig)]? |  yes  |  |
 | companyIds | [Int]? |  yes  |  |
 | taxIdentifiers | [String]? |  yes  |  |
 | priority | String? |  yes  |  |
 | periodThreshold | Int? |  yes  |  |
 | periodThresholdType | String? |  yes  |  |
 | dbConnectionProfile | [DBConnectionProfile](#DBConnectionProfile)? |  yes  |  |
 | params | [String: Any]? |  yes  |  |
 | openTags | [String: Any]? |  yes  |  |
 | deleteQuantityThreshold | Int? |  yes  |  |
 | catalogMasterConfig | [CatalogMasterConfig](#CatalogMasterConfig)? |  yes  |  |
 | aggregatorTypes | [String]? |  yes  |  |
 | integrationType | String? |  yes  |  |
 | minPrice | Double? |  yes  |  |
 | audit | [Audit](#Audit)? |  yes  |  |
 | version | Int? |  yes  |  |
 | alias | String? |  yes  |  |

---


 
 
 #### [JobConfigRawDTO](#JobConfigRawDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | integration | String |  no  |  |
 | companyName | String |  no  |  |
 | companyId | Int |  no  |  |
 | data | [JobConfig](#JobConfig)? |  yes  |  |

---


 
 
 #### [JsonDocConfig](#JsonDocConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | propBeanConfigs | [[PropBeanConfig](#PropBeanConfig)]? |  yes  |  |

---


 
 
 #### [LocalFileConfig](#LocalFileConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | retries | Int? |  yes  |  |
 | interval | Int? |  yes  |  |
 | localDir | String? |  yes  |  |
 | workingDir | String? |  yes  |  |
 | unzip | Bool? |  yes  |  |
 | zipFileRegex | String? |  yes  |  |
 | fileRegex | String? |  yes  |  |
 | zipFormat | String? |  yes  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig)? |  yes  |  |
 | readAllFiles | Bool? |  yes  |  |

---


 
 
 #### [MongoDocConfig](#MongoDocConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | collectionName | String? |  yes  |  |
 | findQuery | [String: Any]? |  yes  |  |
 | projectionQuery | [String: Any]? |  yes  |  |
 | propBeanConfigs | [[PropBeanConfig](#PropBeanConfig)]? |  yes  |  |
 | aggregatePipeline | [[String: Any]]? |  yes  |  |
 | skipSave | Bool? |  yes  |  |

---


 
 
 #### [OAuthConfig](#OAuthConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | limit | Int? |  yes  |  |
 | pages | Int? |  yes  |  |
 | interval | Int? |  yes  |  |
 | consumerKey | String? |  yes  |  |
 | consumerSecret | String? |  yes  |  |
 | token | String? |  yes  |  |
 | tokenSecret | String? |  yes  |  |
 | restUrl | String? |  yes  |  |
 | restBaseUrl | String? |  yes  |  |
 | functionName | String? |  yes  |  |

---


 
 
 #### [ProcessConfig](#ProcessConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dbConfig | [DBConfig](#DBConfig)? |  yes  |  |
 | dbParamConfig | [DBParamConfig](#DBParamConfig)? |  yes  |  |
 | sftpConfig | [SFTPConfig](#SFTPConfig)? |  yes  |  |
 | awsS3Config | [AWSS3config](#AWSS3config)? |  yes  |  |
 | mongoDocConfig | [MongoDocConfig](#MongoDocConfig)? |  yes  |  |
 | ftpConfig | [FTPConfig](#FTPConfig)? |  yes  |  |
 | emailConfig | [EmailConfig](#EmailConfig)? |  yes  |  |
 | fileConfig | [FileConfig](#FileConfig)? |  yes  |  |
 | jsonDocConfig | [JsonDocConfig](#JsonDocConfig)? |  yes  |  |
 | docMappingConfig | [DocMappingConfig](#DocMappingConfig)? |  yes  |  |
 | taskStepConfig | [TaskStepConfig](#TaskStepConfig)? |  yes  |  |
 | httpConfig | [HttpConfig](#HttpConfig)? |  yes  |  |
 | localFileConfig | [LocalFileConfig](#LocalFileConfig)? |  yes  |  |
 | oauthConfig | [OAuthConfig](#OAuthConfig)? |  yes  |  |
 | googleSpreadsheetConfig | [GoogleSpreadSheetConfig](#GoogleSpreadSheetConfig)? |  yes  |  |

---


 
 
 #### [PropBeanConfig](#PropBeanConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | required | Bool? |  yes  |  |
 | mapping | [String: [PropBeanConfig](#PropBeanConfig)]? |  yes  |  |
 | optional | Bool? |  yes  |  |
 | send | [Send](#Send)? |  yes  |  |
 | validations | [[String: Any]]? |  yes  |  |
 | values | [String]? |  yes  |  |
 | include | Bool? |  yes  |  |
 | sourceField | String? |  yes  |  |
 | sourceFields | [String]? |  yes  |  |
 | destinationField | String? |  yes  |  |
 | dataType | String? |  yes  |  |
 | defaultValue | [String: Any]? |  yes  |  |
 | constValue | [String: Any]? |  yes  |  |
 | concatStr | String? |  yes  |  |
 | functionName | String? |  yes  |  |
 | transformerName | String? |  yes  |  |
 | allParamFunctionName | String? |  yes  |  |
 | subSeparator | String? |  yes  |  |
 | indexField | String? |  yes  |  |
 | ignoreIfNotExists | Bool? |  yes  |  |
 | identifierType | String? |  yes  |  |
 | projectionQuery | [String: Any]? |  yes  |  |
 | enrichFromMaster | Bool? |  yes  |  |

---


 
 
 #### [PropBeanDTO](#PropBeanDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | required | Bool? |  yes  |  |
 | optional | Bool? |  yes  |  |
 | include | Bool? |  yes  |  |
 | sourceField | String? |  yes  |  |
 | sourceFields | [String]? |  yes  |  |
 | destinationField | String? |  yes  |  |
 | dataType | String? |  yes  |  |
 | defaultValue | [String: Any]? |  yes  |  |
 | constValue | [String: Any]? |  yes  |  |
 | concatStr | String? |  yes  |  |
 | functionName | String? |  yes  |  |
 | transformerName | String? |  yes  |  |
 | allParamFunctionName | String? |  yes  |  |
 | subSeparator | String? |  yes  |  |
 | indexField | String? |  yes  |  |
 | ignoreIfNotExists | Bool? |  yes  |  |
 | identifierType | String? |  yes  |  |
 | projectionQuery | [String: Any]? |  yes  |  |
 | enrichFromMaster | Bool? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeListJobConfigRawDTO](#ResponseEnvelopeListJobConfigRawDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | [[JobConfigRawDTO](#JobConfigRawDTO)]? |  yes  |  |
 | payload | [[JobConfigRawDTO](#JobConfigRawDTO)]? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SFTPConfig](#SFTPConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | host | String? |  yes  |  |
 | port | Int? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |
 | unzip | Bool? |  yes  |  |
 | retries | Int? |  yes  |  |
 | interval | Int? |  yes  |  |
 | privateKeyPath | String? |  yes  |  |
 | strictHostKeyChecking | Bool? |  yes  |  |
 | localDir | String? |  yes  |  |
 | remoteDir | String? |  yes  |  |
 | passwordProtected | Bool? |  yes  |  |
 | zipFileRegex | String? |  yes  |  |
 | fileRegex | String? |  yes  |  |
 | zipFormat | String? |  yes  |  |
 | archiveConfig | [ArchiveConfig](#ArchiveConfig)? |  yes  |  |
 | readAllFiles | Bool? |  yes  |  |

---


 
 
 #### [Send](#Send)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | raw | Bool? |  yes  |  |
 | processed | Bool? |  yes  |  |

---


 
 
 #### [StoreConfig](#StoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jobCode | String? |  yes  |  |
 | storeid | String? |  yes  |  |
 | storeAlias | String? |  yes  |  |
 | storeFileRegex | String? |  yes  |  |
 | storeFileName | String? |  yes  |  |
 | processConfig | [ProcessConfig](#ProcessConfig)? |  yes  |  |
 | properties | [String: String]? |  yes  |  |

---


 
 
 #### [StoreFilter](#StoreFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | includeTags | [String]? |  yes  |  |
 | excludeTags | [String]? |  yes  |  |
 | query | [String: Any]? |  yes  |  |

---


 
 
 #### [TaskConfig](#TaskConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | taskConfigId | Int? |  yes  |  |
 | taskParams | [[TaskParam](#TaskParam)]? |  yes  |  |

---


 
 
 #### [TaskParam](#TaskParam)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | value | [String: Any]? |  yes  |  |

---


 
 
 #### [TaskStepConfig](#TaskStepConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | taskConfigs | [[TaskConfig](#TaskConfig)]? |  yes  |  |
 | taskConfigIds | [Int]? |  yes  |  |
 | taskConfigGroupIds | [Int]? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeListJobConfigDTO](#ResponseEnvelopeListJobConfigDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | [[JobConfigDTO](#JobConfigDTO)]? |  yes  |  |
 | payload | [[JobConfigDTO](#JobConfigDTO)]? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeJobConfigDTO](#ResponseEnvelopeJobConfigDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | [JobConfigDTO](#JobConfigDTO)? |  yes  |  |
 | payload | [JobConfigDTO](#JobConfigDTO)? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [JobHistoryDto](#JobHistoryDto)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | totalAddedCount | Int? |  yes  |  |
 | totalUpdatedCount | Int? |  yes  |  |
 | totalSuppressedCount | Int? |  yes  |  |
 | jobId | Int? |  yes  |  |
 | status | String? |  yes  |  |
 | jobCode | String? |  yes  |  |
 | processedOn | String? |  yes  |  |
 | filename | [String]? |  yes  |  |

---


 
 
 #### [JobMetricsDto](#JobMetricsDto)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jobCode | String? |  yes  |  |
 | isRunMoreThanUsual | String? |  yes  |  |
 | jobHistory | [[JobHistoryDto](#JobHistoryDto)]? |  yes  |  |
 | totalSuccessCount | Int? |  yes  |  |
 | totalFailureCount | Int? |  yes  |  |
 | totalWarningCount | Int? |  yes  |  |
 | totalSuppressedCount | Int? |  yes  |  |
 | totalJobRuns | Int? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeJobMetricsDto](#ResponseEnvelopeJobMetricsDto)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | [JobMetricsDto](#JobMetricsDto)? |  yes  |  |
 | payload | [JobMetricsDto](#JobMetricsDto)? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [JobConfigListDTO](#JobConfigListDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | alias | String? |  yes  |  |
 | modifiedBy | String? |  yes  |  |
 | createdBy | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ResponseEnvelopeListJobConfigListDTO](#ResponseEnvelopeListJobConfigListDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String? |  yes  |  |
 | status | Int? |  yes  |  |
 | error | String? |  yes  |  |
 | exception | String? |  yes  |  |
 | message | String? |  yes  |  |
 | totalTimeTakenInMillis | Int? |  yes  |  |
 | httpStatus | String? |  yes  |  |
 | items | [[JobConfigListDTO](#JobConfigListDTO)]? |  yes  |  |
 | payload | [[JobConfigListDTO](#JobConfigListDTO)]? |  yes  |  |
 | traceId | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---




 
 
 #### [ApplicationInventory](#ApplicationInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | [AppInventoryConfig](#AppInventoryConfig)? |  yes  |  |
 | authentication | [AuthenticationConfig](#AuthenticationConfig)? |  yes  |  |
 | articleAssignment | [ArticleAssignmentConfig](#ArticleAssignmentConfig)? |  yes  |  |
 | rewardPoints | [RewardPointsConfig](#RewardPointsConfig)? |  yes  |  |
 | cart | [AppCartConfig](#AppCartConfig)? |  yes  |  |
 | payment | [AppPaymentConfig](#AppPaymentConfig)? |  yes  |  |
 | order | [AppOrderConfig](#AppOrderConfig)? |  yes  |  |
 | logistics | [AppLogisticsConfig](#AppLogisticsConfig)? |  yes  |  |
 | business | String? |  yes  |  |
 | commsEnabled | Bool? |  yes  |  |
 | platforms | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | loyaltyPoints | [LoyaltyPointsConfig](#LoyaltyPointsConfig)? |  yes  |  |
 | app | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | modifiedBy | String? |  yes  |  |

---


 
 
 #### [AppInventoryConfig](#AppInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [InventoryBrand](#InventoryBrand)? |  yes  |  |
 | store | [InventoryStore](#InventoryStore)? |  yes  |  |
 | category | [InventoryCategory](#InventoryCategory)? |  yes  |  |
 | price | [InventoryPrice](#InventoryPrice)? |  yes  |  |
 | discount | [InventoryDiscount](#InventoryDiscount)? |  yes  |  |
 | outOfStock | Bool? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | excludeCategory | [[String: Any]]? |  yes  |  |
 | image | [String]? |  yes  |  |
 | companyStore | [[String: Any]]? |  yes  |  |

---


 
 
 #### [InventoryBrand](#InventoryBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  |  |
 | brands | [[String: Any]]? |  yes  |  |

---


 
 
 #### [InventoryStore](#InventoryStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  |  |
 | stores | [[String: Any]]? |  yes  |  |
 | rules | [AppStoreRules](#AppStoreRules)? |  yes  |  |

---


 
 
 #### [AppStoreRules](#AppStoreRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companies | [Int]? |  yes  |  |
 | brands | [[String: Any]]? |  yes  |  |

---


 
 
 #### [InventoryCategory](#InventoryCategory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  |  |
 | categories | [[String: Any]]? |  yes  |  |

---


 
 
 #### [InventoryPrice](#InventoryPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Double? |  yes  |  |
 | max | Double? |  yes  |  |

---


 
 
 #### [InventoryDiscount](#InventoryDiscount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Double? |  yes  |  |
 | max | Double? |  yes  |  |

---


 
 
 #### [AuthenticationConfig](#AuthenticationConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | required | Bool? |  yes  |  |
 | provider | String? |  yes  |  |

---


 
 
 #### [ArticleAssignmentConfig](#ArticleAssignmentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rules | [ArticleAssignmentRules](#ArticleAssignmentRules)? |  yes  |  |
 | postOrderReassignment | Bool? |  yes  |  |

---


 
 
 #### [ArticleAssignmentRules](#ArticleAssignmentRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storePriority | [StorePriority](#StorePriority)? |  yes  |  |

---


 
 
 #### [StorePriority](#StorePriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | storetypeOrder | [[String: Any]]? |  yes  |  |

---


 
 
 #### [AppCartConfig](#AppCartConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deliveryCharges | [DeliveryCharges](#DeliveryCharges)? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | maxCartItems | Int? |  yes  |  |
 | minCartValue | Double? |  yes  |  |
 | bulkCoupons | Bool? |  yes  |  |

---


 
 
 #### [DeliveryCharges](#DeliveryCharges)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | charges | [Charges](#Charges)? |  yes  |  |

---


 
 
 #### [Charges](#Charges)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | threshold | Double? |  yes  |  |
 | charges | Double? |  yes  |  |

---


 
 
 #### [AppPaymentConfig](#AppPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | callbackUrl | [CallbackUrl](#CallbackUrl)? |  yes  |  |
 | methods | [Methods](#Methods)? |  yes  |  |
 | paymentSelectionLock | [PaymentSelectionLock](#PaymentSelectionLock)? |  yes  |  |
 | modeOfPayment | String? |  yes  |  |
 | source | String? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | codAmountLimit | Double? |  yes  |  |
 | codCharges | Double? |  yes  |  |

---


 
 
 #### [CallbackUrl](#CallbackUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | String? |  yes  |  |
 | web | String? |  yes  |  |

---


 
 
 #### [Methods](#Methods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pl | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | card | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | nb | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | wl | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | ps | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | upi | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | qr | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | cod | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | pp | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | jp | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | pac | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | fc | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | jiopp | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | stripepg | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | juspaypg | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | payubizpg | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | payumoneypg | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | rupifipg | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |
 | simpl | [PaymentModeConfig](#PaymentModeConfig)? |  yes  |  |

---


 
 
 #### [PaymentModeConfig](#PaymentModeConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [PaymentSelectionLock](#PaymentSelectionLock)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | defaultOptions | String? |  yes  |  |
 | paymentIdentifier | String? |  yes  |  |

---


 
 
 #### [AppOrderConfig](#AppOrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | forceReassignment | Bool? |  yes  |  |
 | message | String? |  yes  |  |

---


 
 
 #### [AppLogisticsConfig](#AppLogisticsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logisticsBySeller | Bool? |  yes  |  |
 | serviceabilityCheck | Bool? |  yes  |  |
 | sameDayDelivery | Bool? |  yes  |  |
 | dpAssignment | Bool? |  yes  |  |

---


 
 
 #### [LoyaltyPointsConfig](#LoyaltyPointsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | autoApply | Bool? |  yes  |  |

---


 
 
 #### [AppInventoryPartialUpdate](#AppInventoryPartialUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rewardPoints | [RewardPointsConfig](#RewardPointsConfig)? |  yes  |  |
 | cart | [AppCartConfig](#AppCartConfig)? |  yes  |  |
 | payment | [AppPaymentConfig](#AppPaymentConfig)? |  yes  |  |
 | loyaltyPoints | [LoyaltyPointsConfig](#LoyaltyPointsConfig)? |  yes  |  |
 | commsEnabled | Bool? |  yes  |  |

---


 
 
 #### [BrandCompanyInfo](#BrandCompanyInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyName | String? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [CompanyByBrandsRequest](#CompanyByBrandsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | Int |  no  | Brand uids |
 | searchText | String? |  yes  | Search company by name |

---


 
 
 #### [CompanyByBrandsResponse](#CompanyByBrandsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BrandCompanyInfo](#BrandCompanyInfo)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [StoreByBrandsRequest](#StoreByBrandsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | Int? |  yes  | Current company id for current company stores only. Don't send in case of cross selling enabled |
 | brands | Int |  no  | Brand uids |
 | searchText | String? |  yes  | Search store by name or store code |

---


 
 
 #### [StoreByBrandsResponse](#StoreByBrandsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BrandStoreInfo](#BrandStoreInfo)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [BrandStoreInfo](#BrandStoreInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storeName | String? |  yes  |  |
 | storeId | Int? |  yes  |  |
 | storeType | String? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | storeAddress | [OptedStoreAddress](#OptedStoreAddress)? |  yes  |  |
 | company | [OptedCompany](#OptedCompany)? |  yes  |  |

---


 
 
 #### [CompanyBrandInfo](#CompanyBrandInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | value | Int? |  yes  |  |
 | brandLogoUrl | String? |  yes  |  |
 | brandBannerUrl | String? |  yes  |  |
 | brandBannerPortraitUrl | String? |  yes  |  |

---


 
 
 #### [BrandsByCompanyResponse](#BrandsByCompanyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | [CompanyBrandInfo](#CompanyBrandInfo)? |  yes  |  |

---


 
 
 #### [CreateApplicationRequest](#CreateApplicationRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | [App](#App)? |  yes  |  |
 | configuration | [AppInventory](#AppInventory)? |  yes  |  |
 | domain | [AppDomain](#AppDomain)? |  yes  |  |

---


 
 
 #### [CreateAppResponse](#CreateAppResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | [Application](#Application)? |  yes  |  |
 | configuration | [ApplicationInventory](#ApplicationInventory)? |  yes  |  |

---


 
 
 #### [ApplicationsResponse](#ApplicationsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Application](#Application)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [MobileAppConfiguration](#MobileAppConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isActive | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | appName | String? |  yes  |  |
 | landingImage | [LandingImage](#LandingImage)? |  yes  |  |
 | splashImage | [SplashImage](#SplashImage)? |  yes  |  |
 | application | String? |  yes  |  |
 | platformType | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | packageName | String? |  yes  |  |

---


 
 
 #### [LandingImage](#LandingImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [SplashImage](#SplashImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspectRatio | String? |  yes  |  |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [MobileAppConfigRequest](#MobileAppConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appName | String? |  yes  |  |
 | landingImage | [LandingImage](#LandingImage)? |  yes  |  |
 | splashImage | [SplashImage](#SplashImage)? |  yes  |  |
 | isActive | Bool? |  yes  |  |

---


 
 
 #### [BuildVersionHistory](#BuildVersionHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | versions | [BuildVersion](#BuildVersion)? |  yes  |  |
 | latestAvailableVersionName | String? |  yes  |  |

---


 
 
 #### [BuildVersion](#BuildVersion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | platformType | String? |  yes  |  |
 | buildStatus | String? |  yes  |  |
 | versionName | String? |  yes  |  |
 | versionCode | Int? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [AppSupportedCurrency](#AppSupportedCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | supportedCurrency | [String]? |  yes  |  |
 | application | String? |  yes  |  |
 | defaultCurrency | [DefaultCurrency](#DefaultCurrency)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [DefaultCurrency](#DefaultCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ref | String? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [CurrencyConfig](#CurrencyConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | code | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | decimalDigits | Int? |  yes  |  |
 | symbol | String? |  yes  |  |

---


 
 
 #### [DomainAdd](#DomainAdd)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Full domain name |

---


 
 
 #### [DomainAddRequest](#DomainAddRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | [DomainAdd](#DomainAdd)? |  yes  |  |

---


 
 
 #### [DomainsResponse](#DomainsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [[Domain](#Domain)]? |  yes  |  |

---


 
 
 #### [UpdateDomain](#UpdateDomain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |

---


 
 
 #### [UpdateDomainTypeRequest](#UpdateDomainTypeRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | [UpdateDomain](#UpdateDomain)? |  yes  |  |
 | action | String? |  yes  |  |

---


 
 
 #### [DomainStatusRequest](#DomainStatusRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domainUrl | String? |  yes  | Domain url |

---


 
 
 #### [DomainStatus](#DomainStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | status | Bool? |  yes  |  |

---


 
 
 #### [DomainStatusResponse](#DomainStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | connected | Bool? |  yes  |  |
 | status | [[DomainStatus](#DomainStatus)]? |  yes  |  |

---


 
 
 #### [DomainSuggestionsRequest](#DomainSuggestionsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domainUrl | String? |  yes  | Domain url |
 | custom | Bool? |  yes  | Get suggestion for custom domains or fynd domains |

---


 
 
 #### [DomainSuggestion](#DomainSuggestion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | unsupported | Bool? |  yes  | Whether TLD domain is supported or not |
 | isAvailable | Bool |  no  |  |
 | price | Double? |  yes  | Price for purchasing a custom domain. Not present for fynd domain |
 | currency | String? |  yes  | Custom domain price currency. Not present for fynd domain |

---


 
 
 #### [DomainSuggestionsResponse](#DomainSuggestionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [[DomainSuggestion](#DomainSuggestion)]? |  yes  | Domain url |

---


 
 
 #### [GetIntegrationsOptInsResponse](#GetIntegrationsOptInsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [IntegrationOptIn](#IntegrationOptIn)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [IntegrationOptIn](#IntegrationOptIn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | validators | [Validators](#Validators)? |  yes  |  |
 | description | String? |  yes  |  |
 | descriptionHtml | String? |  yes  |  |
 | constants | String? |  yes  |  |
 | companies | [[String: Any]]? |  yes  |  |
 | support | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | meta | [IntegrationMeta](#IntegrationMeta)? |  yes  |  |
 | icon | String? |  yes  |  |
 | owner | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | token | String? |  yes  |  |
 | secret | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Validators](#Validators)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company | [CompanyValidator](#CompanyValidator)? |  yes  |  |
 | store | [StoreValidator](#StoreValidator)? |  yes  |  |
 | inventory | [InventoryValidator](#InventoryValidator)? |  yes  |  |
 | order | [OrderValidator](#OrderValidator)? |  yes  |  |

---


 
 
 #### [CompanyValidator](#CompanyValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [JsonSchema](#JsonSchema)? |  yes  |  |
 | browserScript | String? |  yes  |  |

---


 
 
 #### [JsonSchema](#JsonSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String? |  yes  |  |
 | key | String? |  yes  |  |
 | type | String? |  yes  |  |
 | tooltip | String? |  yes  |  |

---


 
 
 #### [StoreValidator](#StoreValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)]? |  yes  |  |
 | browserScript | String? |  yes  |  |

---


 
 
 #### [InventoryValidator](#InventoryValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)]? |  yes  |  |
 | browserScript | String? |  yes  |  |

---


 
 
 #### [OrderValidator](#OrderValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | jsonSchema | [[JsonSchema](#JsonSchema)]? |  yes  |  |
 | browserScript | String? |  yes  |  |

---


 
 
 #### [IntegrationMeta](#IntegrationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isPublic | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [Integration](#Integration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | validators | [Validators](#Validators)? |  yes  |  |
 | description | String? |  yes  |  |
 | descriptionHtml | String? |  yes  |  |
 | constants | [String: Any]? |  yes  |  |
 | companies | [[String: Any]]? |  yes  |  |
 | support | [String]? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | meta | [IntegrationMeta](#IntegrationMeta)? |  yes  |  |
 | icon | String? |  yes  |  |
 | owner | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | token | String? |  yes  |  |
 | secret | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [IntegrationConfigResponse](#IntegrationConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [IntegrationLevel](#IntegrationLevel)? |  yes  |  |

---


 
 
 #### [IntegrationLevel](#IntegrationLevel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opted | Bool? |  yes  |  |
 | permissions | [[String: Any]]? |  yes  |  |
 | lastPatch | [[String: Any]]? |  yes  |  |
 | id | String? |  yes  |  |
 | integration | String? |  yes  |  |
 | level | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | meta | [[String: Any]]? |  yes  |  |
 | token | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [OptedStoreIntegration](#OptedStoreIntegration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | otherOpted | Bool? |  yes  |  |
 | otherIntegration | [IntegrationOptIn](#IntegrationOptIn)? |  yes  |  |
 | otherEntity | [OtherEntity](#OtherEntity)? |  yes  |  |

---


 
 
 #### [OtherEntity](#OtherEntity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opted | Bool? |  yes  |  |
 | permissions | [String]? |  yes  |  |
 | lastPatch | [LastPatch](#LastPatch)? |  yes  |  |
 | id | String? |  yes  |  |
 | integration | String? |  yes  |  |
 | level | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | data | [OtherEntityData](#OtherEntityData)? |  yes  |  |
 | meta | [[String: Any]]? |  yes  |  |
 | token | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [LastPatch](#LastPatch)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | op | String? |  yes  |  |
 | path | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [OtherEntityData](#OtherEntityData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | articleIdentifier | String? |  yes  |  |

---


 
 
 #### [App](#App)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companyId | String? |  yes  | Current company id |
 | channelType | String? |  yes  |  |
 | auth | [ApplicationAuth](#ApplicationAuth)? |  yes  |  |
 | name | String? |  yes  | User friendly name for application |
 | desc | String? |  yes  | Basic description of application |

---


 
 
 #### [AppInventory](#AppInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [InventoryBrandRule](#InventoryBrandRule)? |  yes  |  |
 | store | [InventoryStoreRule](#InventoryStoreRule)? |  yes  |  |
 | image | [String]? |  yes  |  |
 | franchiseEnabled | Bool? |  yes  |  |
 | outOfStock | Bool? |  yes  |  |
 | payment | [InventoryPaymentConfig](#InventoryPaymentConfig)? |  yes  |  |
 | articleAssignment | [InventoryArticleAssignment](#InventoryArticleAssignment)? |  yes  |  |

---


 
 
 #### [AppDomain](#AppDomain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |

---


 
 
 #### [CompaniesResponse](#CompaniesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [AppInventoryCompanies](#AppInventoryCompanies)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [AppInventoryCompanies](#AppInventoryCompanies)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | companyType | String? |  yes  |  |

---


 
 
 #### [StoresResponse](#StoresResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [AppInventoryStores](#AppInventoryStores)? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [AppInventoryStores](#AppInventoryStores)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | storeType | String? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [FilterOrderingStoreRequest](#FilterOrderingStoreRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allStores | Bool? |  yes  |  |
 | deployedStores | [Int]? |  yes  |  |
 | q | String? |  yes  |  |

---


 
 
 #### [DeploymentMeta](#DeploymentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deployedStores | [Int]? |  yes  |  |
 | allStores | Bool? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | id | String? |  yes  |  |
 | app | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [OrderingStoreConfig](#OrderingStoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deploymentMeta | [DeploymentMeta](#DeploymentMeta)? |  yes  |  |

---


 
 
 #### [OtherSellerCompany](#OtherSellerCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [OtherSellerApplication](#OtherSellerApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | id | String? |  yes  |  |
 | domain | String? |  yes  |  |
 | company | [OtherSellerCompany](#OtherSellerCompany)? |  yes  |  |
 | optType | String? |  yes  |  |

---


 
 
 #### [OtherSellerApplications](#OtherSellerApplications)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OtherSellerApplication](#OtherSellerApplication)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [OptedApplicationResponse](#OptedApplicationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | id | String? |  yes  |  |
 | domain | String? |  yes  |  |
 | company | [OptedCompany](#OptedCompany)? |  yes  |  |
 | optedInventory | [OptedInventory](#OptedInventory)? |  yes  |  |
 | optOutInventory | [OptOutInventory](#OptOutInventory)? |  yes  |  |

---


 
 
 #### [OptedCompany](#OptedCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [OptedInventory](#OptedInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | optType | [OptType](#OptType)? |  yes  |  |
 | items | [String: Any]? |  yes  |  |

---


 
 
 #### [OptType](#OptType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | display | String? |  yes  |  |

---


 
 
 #### [OptedStore](#OptedStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | id | String? |  yes  |  |
 | modifiedOn | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | address | [OptedStoreAddress](#OptedStoreAddress)? |  yes  |  |
 | displayName | String? |  yes  |  |
 | storeType | String? |  yes  |  |
 | companyId | Int? |  yes  |  |

---


 
 
 #### [OptOutInventory](#OptOutInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [Int] |  no  |  |
 | company | [Int] |  no  |  |

---


 
 
 #### [TokenResponse](#TokenResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tokens | [Tokens](#Tokens)? |  yes  |  |
 | id | String? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [Tokens](#Tokens)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | firebase | [Firebase](#Firebase)? |  yes  |  |
 | moengage | [Moengage](#Moengage)? |  yes  |  |
 | segment | [Segment](#Segment)? |  yes  |  |
 | gtm | [Gtm](#Gtm)? |  yes  |  |
 | freshchat | [Freshchat](#Freshchat)? |  yes  |  |
 | safetynet | [Safetynet](#Safetynet)? |  yes  |  |
 | fyndRewards | [FyndRewards](#FyndRewards)? |  yes  |  |
 | googleMap | [GoogleMap](#GoogleMap)? |  yes  |  |

---


 
 
 #### [Firebase](#Firebase)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [Credentials](#Credentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [Credentials](#Credentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ios | [Ios](#Ios)? |  yes  |  |
 | android | [Android](#Android)? |  yes  |  |
 | projectId | String? |  yes  |  |
 | gcmSenderId | String? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [Ios](#Ios)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  |  |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [Android](#Android)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicationId | String? |  yes  |  |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [Moengage](#Moengage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [MoengageCredentials](#MoengageCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [MoengageCredentials](#MoengageCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |

---


 
 
 #### [Segment](#Segment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [SegmentCredentials](#SegmentCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [SegmentCredentials](#SegmentCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | writeKey | String? |  yes  |  |

---


 
 
 #### [Gtm](#Gtm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [GtmCredentials](#GtmCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [GtmCredentials](#GtmCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [Freshchat](#Freshchat)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [FreshchatCredentials](#FreshchatCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [FreshchatCredentials](#FreshchatCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | String? |  yes  |  |
 | appKey | String? |  yes  |  |
 | webToken | String? |  yes  |  |

---


 
 
 #### [Safetynet](#Safetynet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [SafetynetCredentials](#SafetynetCredentials)? |  yes  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [SafetynetCredentials](#SafetynetCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [FyndRewards](#FyndRewards)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [FyndRewardsCredentials](#FyndRewardsCredentials)? |  yes  |  |

---


 
 
 #### [FyndRewardsCredentials](#FyndRewardsCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | publicKey | String? |  yes  |  |

---


 
 
 #### [GoogleMap](#GoogleMap)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [GoogleMapCredentials](#GoogleMapCredentials)? |  yes  |  |

---


 
 
 #### [GoogleMapCredentials](#GoogleMapCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | apiKey | String? |  yes  |  |

---


 
 
 #### [RewardPointsConfig](#RewardPointsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credit | [Credit](#Credit)? |  yes  |  |
 | debit | [Debit](#Debit)? |  yes  |  |

---


 
 
 #### [Credit](#Credit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [Debit](#Debit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | autoApply | Bool? |  yes  |  |
 | strategyChannel | String? |  yes  |  |

---


 
 
 #### [ProductDetailFeature](#ProductDetailFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | similar | [String]? |  yes  |  |
 | sellerSelection | Bool? |  yes  |  |
 | updateProductMeta | Bool? |  yes  |  |
 | requestProduct | Bool? |  yes  |  |

---


 
 
 #### [LaunchPage](#LaunchPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pageType | String? |  yes  |  |
 | params | [String: Any]? |  yes  |  |
 | query | [String: Any]? |  yes  |  |

---


 
 
 #### [LandingPageFeature](#LandingPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | launchPage | [LaunchPage](#LaunchPage)? |  yes  |  |
 | continueAsGuest | Bool? |  yes  |  |
 | loginBtnText | String? |  yes  |  |
 | showDomainTextbox | Bool? |  yes  |  |
 | showRegisterBtn | Bool? |  yes  |  |

---


 
 
 #### [RegistrationPageFeature](#RegistrationPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | askStoreAddress | Bool? |  yes  |  |

---


 
 
 #### [AppFeature](#AppFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | productDetail | [ProductDetailFeature](#ProductDetailFeature)? |  yes  |  |
 | landingPage | [LandingPageFeature](#LandingPageFeature)? |  yes  |  |
 | registrationPage | [RegistrationPageFeature](#RegistrationPageFeature)? |  yes  |  |
 | homePage | [HomePageFeature](#HomePageFeature)? |  yes  |  |
 | common | [CommonFeature](#CommonFeature)? |  yes  |  |
 | cart | [CartFeature](#CartFeature)? |  yes  |  |
 | qr | [QrFeature](#QrFeature)? |  yes  |  |
 | pcr | [PcrFeature](#PcrFeature)? |  yes  |  |
 | order | [OrderFeature](#OrderFeature)? |  yes  |  |
 | id | String? |  yes  |  |
 | app | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [HomePageFeature](#HomePageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | orderProcessing | Bool? |  yes  |  |

---


 
 
 #### [CommonFeature](#CommonFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | communicationOptinDialog | [CommunicationOptinDialogFeature](#CommunicationOptinDialogFeature)? |  yes  |  |
 | deploymentStoreSelection | [DeploymentStoreSelectionFeature](#DeploymentStoreSelectionFeature)? |  yes  |  |
 | listingPrice | [ListingPriceFeature](#ListingPriceFeature)? |  yes  |  |
 | listingPage | [ListingPageFeature](#ListingPageFeature)? |  yes  |  |
 | currency | [CurrencyFeature](#CurrencyFeature)? |  yes  |  |
 | revenueEngine | [RevenueEngineFeature](#RevenueEngineFeature)? |  yes  |  |
 | feedback | [FeedbackFeature](#FeedbackFeature)? |  yes  |  |
 | compareProducts | [CompareProductsFeature](#CompareProductsFeature)? |  yes  |  |
 | rewardPoints | [RewardPointsConfig](#RewardPointsConfig)? |  yes  |  |

---


 
 
 #### [CommunicationOptinDialogFeature](#CommunicationOptinDialogFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | visibility | Bool? |  yes  |  |

---


 
 
 #### [DeploymentStoreSelectionFeature](#DeploymentStoreSelectionFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ListingPriceFeature](#ListingPriceFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |
 | sort | String? |  yes  |  |

---


 
 
 #### [ListingPageFeature](#ListingPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sortOn | String? |  yes  |  |

---


 
 
 #### [CurrencyFeature](#CurrencyFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | [String]? |  yes  |  |
 | type | String? |  yes  |  |
 | defaultCurrency | String? |  yes  |  |

---


 
 
 #### [RevenueEngineFeature](#RevenueEngineFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [FeedbackFeature](#FeedbackFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [CompareProductsFeature](#CompareProductsFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [CartFeature](#CartFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | gstInput | Bool? |  yes  |  |
 | staffSelection | Bool? |  yes  |  |
 | placingForCustomer | Bool? |  yes  |  |
 | googleMap | Bool? |  yes  |  |

---


 
 
 #### [QrFeature](#QrFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | Bool? |  yes  |  |
 | products | Bool? |  yes  |  |
 | collections | Bool? |  yes  |  |

---


 
 
 #### [PcrFeature](#PcrFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | staffSelection | Bool? |  yes  |  |

---


 
 
 #### [OrderFeature](#OrderFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | buyAgain | Bool? |  yes  |  |

---


 
 
 #### [AppFeatureRequest](#AppFeatureRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feature | [AppFeature](#AppFeature)? |  yes  |  |

---


 
 
 #### [AppFeatureResponse](#AppFeatureResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feature | [AppFeature](#AppFeature)? |  yes  |  |

---


 
 
 #### [Currency](#Currency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | code | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | decimalDigits | Int? |  yes  |  |
 | symbol | String? |  yes  |  |

---


 
 
 #### [Domain](#Domain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool? |  yes  |  |
 | isPrimary | Bool? |  yes  |  |
 | isDefault | Bool? |  yes  |  |
 | isShortlink | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [ApplicationWebsite](#ApplicationWebsite)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | basepath | String? |  yes  |  |

---


 
 
 #### [ApplicationCors](#ApplicationCors)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domains | [String]? |  yes  |  |

---


 
 
 #### [ApplicationAuth](#ApplicationAuth)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [ApplicationRedirections](#ApplicationRedirections)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | from | String? |  yes  |  |
 | redirectTo | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [ApplicationMeta](#ApplicationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [SecureUrl](#SecureUrl)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | secureUrl | String? |  yes  |  |

---


 
 
 #### [Application](#Application)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | website | [ApplicationWebsite](#ApplicationWebsite)? |  yes  |  |
 | cors | [ApplicationCors](#ApplicationCors)? |  yes  |  |
 | auth | [ApplicationAuth](#ApplicationAuth)? |  yes  |  |
 | description | String? |  yes  |  |
 | channelType | String? |  yes  |  |
 | cacheTtl | Int? |  yes  |  |
 | isInternal | Bool? |  yes  |  |
 | isActive | Bool? |  yes  |  |
 | id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | owner | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | token | String? |  yes  |  |
 | redirections | [[ApplicationRedirections](#ApplicationRedirections)]? |  yes  |  |
 | meta | [[ApplicationMeta](#ApplicationMeta)]? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |
 | banner | [SecureUrl](#SecureUrl)? |  yes  |  |
 | logo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | favicon | [SecureUrl](#SecureUrl)? |  yes  |  |
 | domains | [[Domain](#Domain)]? |  yes  |  |
 | appType | String? |  yes  |  |
 | mobileLogo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | domain | [Domain](#Domain)? |  yes  |  |

---


 
 
 #### [NotFound](#NotFound)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [UnhandledError](#UnhandledError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [InvalidPayloadRequest](#InvalidPayloadRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [SuccessMessageResponse](#SuccessMessageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---


 
 
 #### [InventoryBrandRule](#InventoryBrandRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  | Whether enable all or explicitly few brands as inventory |
 | brands | [Int]? |  yes  | Brand uids in case of explicit criteria |

---


 
 
 #### [StoreCriteriaRule](#StoreCriteriaRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | companies | [Int]? |  yes  | list of company uids |
 | brands | [Int]? |  yes  | list of brand uids |

---


 
 
 #### [InventoryStoreRule](#InventoryStoreRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | criteria | String? |  yes  | Whether enable all or explicitly few stores or use filter of brands and company as inventory stores |
 | rules | [[StoreCriteriaRule](#StoreCriteriaRule)]? |  yes  | List of rules with company and brands uids. Used when critera is `filter` |
 | stores | [Int]? |  yes  | List of store uids. Used when critera is `explicit` |

---


 
 
 #### [InventoryPaymentConfig](#InventoryPaymentConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modeOfPayment | String? |  yes  |  |
 | source | String? |  yes  |  |

---


 
 
 #### [StorePriorityRule](#StorePriorityRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool? |  yes  |  |
 | storetypeOrder | [String]? |  yes  |  |

---


 
 
 #### [ArticleAssignmentRule](#ArticleAssignmentRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | storePriority | [StorePriorityRule](#StorePriorityRule)? |  yes  |  |

---


 
 
 #### [InventoryArticleAssignment](#InventoryArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | postOrderReassignment | Bool? |  yes  |  |
 | rules | [ArticleAssignmentRule](#ArticleAssignmentRule)? |  yes  |  |

---


 
 
 #### [CompanyAboutAddress](#CompanyAboutAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pincode | Int? |  yes  |  |
 | address1 | String? |  yes  |  |
 | address2 | String? |  yes  |  |
 | city | String? |  yes  |  |
 | state | String? |  yes  |  |
 | country | String? |  yes  |  |
 | addressType | String? |  yes  |  |

---


 
 
 #### [UserEmail](#UserEmail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | email | String? |  yes  |  |

---


 
 
 #### [UserPhoneNumber](#UserPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | primary | Bool? |  yes  |  |
 | verified | Bool? |  yes  |  |
 | countryCode | Int? |  yes  |  |
 | phone | String? |  yes  |  |

---


 
 
 #### [ApplicationInformation](#ApplicationInformation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [InformationAddress](#InformationAddress)? |  yes  |  |
 | support | [InformationSupport](#InformationSupport)? |  yes  |  |
 | socialLinks | [SocialLinks](#SocialLinks)? |  yes  |  |
 | links | [Links](#Links)? |  yes  |  |
 | copyrightText | String? |  yes  |  |
 | id | String? |  yes  |  |
 | businessHighlights | [BusinessHighlights](#BusinessHighlights)? |  yes  |  |
 | application | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | v | Int? |  yes  |  |

---


 
 
 #### [InformationAddress](#InformationAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | loc | String? |  yes  |  |
 | addressLine | [String]? |  yes  |  |
 | phone | [InformationPhone](#InformationPhone)? |  yes  |  |
 | city | String? |  yes  |  |
 | country | String? |  yes  |  |
 | pincode | Int? |  yes  |  |

---


 
 
 #### [InformationPhone](#InformationPhone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | number | String? |  yes  |  |

---


 
 
 #### [InformationSupport](#InformationSupport)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [String]? |  yes  |  |
 | email | [String]? |  yes  |  |
 | timing | String? |  yes  |  |

---


 
 
 #### [SocialLinks](#SocialLinks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [FacebookLink](#FacebookLink)? |  yes  |  |
 | instagram | [InstagramLink](#InstagramLink)? |  yes  |  |
 | twitter | [TwitterLink](#TwitterLink)? |  yes  |  |
 | pinterest | [PinterestLink](#PinterestLink)? |  yes  |  |
 | googlePlus | [GooglePlusLink](#GooglePlusLink)? |  yes  |  |
 | youtube | [YoutubeLink](#YoutubeLink)? |  yes  |  |
 | linkedIn | [LinkedInLink](#LinkedInLink)? |  yes  |  |
 | vimeo | [VimeoLink](#VimeoLink)? |  yes  |  |
 | blogLink | [BlogLink](#BlogLink)? |  yes  |  |

---


 
 
 #### [FacebookLink](#FacebookLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [InstagramLink](#InstagramLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [TwitterLink](#TwitterLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [PinterestLink](#PinterestLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [GooglePlusLink](#GooglePlusLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [YoutubeLink](#YoutubeLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [LinkedInLink](#LinkedInLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [VimeoLink](#VimeoLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [BlogLink](#BlogLink)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [Links](#Links)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | link | String? |  yes  |  |

---


 
 
 #### [BusinessHighlights](#BusinessHighlights)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | title | String? |  yes  |  |
 | icon | String? |  yes  |  |
 | subTitle | String? |  yes  |  |

---


 
 
 #### [ApplicationDetail](#ApplicationDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | logo | [SecureUrl](#SecureUrl) |  no  |  |
 | mobileLogo | [SecureUrl](#SecureUrl) |  no  |  |
 | favicon | [SecureUrl](#SecureUrl) |  no  |  |
 | banner | [SecureUrl](#SecureUrl) |  no  |  |
 | domain | [Domain](#Domain)? |  yes  |  |
 | domains | [[Domain](#Domain)]? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [CurrenciesResponse](#CurrenciesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Currency](#Currency)]? |  yes  |  |

---


 
 
 #### [StoreLatLong](#StoreLatLong)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | coordinates | [Double]? |  yes  |  |

---


 
 
 #### [OptedStoreAddress](#OptedStoreAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | latLong | [StoreLatLong](#StoreLatLong)? |  yes  |  |
 | address2 | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | country | String? |  yes  |  |
 | city | String? |  yes  |  |

---


 
 
 #### [OrderingStore](#OrderingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [OptedStoreAddress](#OptedStoreAddress)? |  yes  |  |
 | id | String? |  yes  |  |
 | uid | Int? |  yes  |  |
 | name | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | storeType | String? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | pincode | Int? |  yes  |  |
 | code | String? |  yes  |  |

---


 
 
 #### [OrderingStores](#OrderingStores)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [[OrderingStore](#OrderingStore)]? |  yes  |  |
 | deployedStores | [Int]? |  yes  |  |
 | allStores | Bool? |  yes  |  |
 | enabled | Bool? |  yes  |  |
 | type | String? |  yes  |  |
 | id | String? |  yes  |  |
 | app | String? |  yes  |  |
 | v | Int? |  yes  |  |

---




 
 
 #### [CouponDateMeta](#CouponDateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedOn | String? |  yes  |  |
 | createdOn | String? |  yes  |  |

---


 
 
 #### [Rule](#Rule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | Double? |  yes  |  |
 | max | Double? |  yes  |  |
 | value | Double? |  yes  |  |
 | discountQty | Double? |  yes  |  |
 | min | Double? |  yes  |  |

---


 
 
 #### [UsesRemaining](#UsesRemaining)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app | Int? |  yes  |  |
 | total | Int? |  yes  |  |
 | user | Int? |  yes  |  |

---


 
 
 #### [UsesRestriction](#UsesRestriction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | remaining | [UsesRemaining](#UsesRemaining)? |  yes  |  |
 | maximum | [UsesRemaining](#UsesRemaining)? |  yes  |  |

---


 
 
 #### [PriceRange](#PriceRange)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int? |  yes  |  |
 | min | Int? |  yes  |  |

---


 
 
 #### [PaymentAllowValue](#PaymentAllowValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max | Int? |  yes  |  |

---


 
 
 #### [PaymentModes](#PaymentModes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | networks | [String]? |  yes  |  |
 | codes | [String]? |  yes  |  |
 | uses | [PaymentAllowValue](#PaymentAllowValue)? |  yes  |  |
 | types | [String]? |  yes  |  |

---


 
 
 #### [PaymentCodes](#PaymentCodes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | card | [PaymentModes](#PaymentModes)? |  yes  |  |
 | rupifipg | [PaymentModes](#PaymentModes)? |  yes  |  |
 | upi | [PaymentModes](#PaymentModes)? |  yes  |  |
 | stripepg | [PaymentModes](#PaymentModes)? |  yes  |  |
 | pl | [PaymentModes](#PaymentModes)? |  yes  |  |
 | nb | [PaymentModes](#PaymentModes)? |  yes  |  |
 | wl | [PaymentModes](#PaymentModes)? |  yes  |  |
 | simpl | [PaymentModes](#PaymentModes)? |  yes  |  |
 | ps | [PaymentModes](#PaymentModes)? |  yes  |  |
 | qr | [PaymentModes](#PaymentModes)? |  yes  |  |

---


 
 
 #### [PostOrder](#PostOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnAllowed | Bool? |  yes  |  |
 | cancellationAllowed | Bool? |  yes  |  |

---


 
 
 #### [BulkBundleRestriction](#BulkBundleRestriction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multiStoreAllowed | Bool |  no  |  |

---


 
 
 #### [Restrictions](#Restrictions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | platforms | [String]? |  yes  |  |
 | orderingStores | [Int]? |  yes  |  |
 | uses | [UsesRestriction](#UsesRestriction)? |  yes  |  |
 | priceRange | [PriceRange](#PriceRange)? |  yes  |  |
 | payments | [PaymentCodes](#PaymentCodes)? |  yes  |  |
 | postOrder | [PostOrder](#PostOrder)? |  yes  |  |
 | bulkBundle | [BulkBundleRestriction](#BulkBundleRestriction)? |  yes  |  |
 | couponAllowed | Bool? |  yes  |  |

---


 
 
 #### [CouponAction](#CouponAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | txnMode | String? |  yes  |  |
 | actionDate | String? |  yes  |  |

---


 
 
 #### [State](#State)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | isDisplay | Bool? |  yes  |  |
 | isArchived | Bool? |  yes  |  |
 | isPublic | Bool? |  yes  |  |

---


 
 
 #### [RuleDefinition](#RuleDefinition)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | applicableOn | String |  no  |  |
 | currencyCode | String? |  yes  |  |
 | type | String |  no  |  |
 | isExact | Bool? |  yes  |  |
 | valueType | String |  no  |  |
 | calculateOn | String |  no  |  |
 | autoApply | Bool? |  yes  |  |
 | scope | [String]? |  yes  |  |

---


 
 
 #### [Identifier](#Identifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandId | [Int]? |  yes  |  |
 | itemId | [Int]? |  yes  |  |
 | companyId | [Int]? |  yes  |  |
 | collectionId | [String]? |  yes  |  |
 | articleId | [String]? |  yes  |  |
 | storeId | [Int]? |  yes  |  |
 | categoryId | [Int]? |  yes  |  |
 | userId | [String]? |  yes  |  |

---


 
 
 #### [CouponSchedule](#CouponSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | end | String? |  yes  |  |
 | cron | String? |  yes  |  |
 | duration | Int? |  yes  |  |
 | nextSchedule | [[String: Any]]? |  yes  |  |
 | start | String? |  yes  |  |

---


 
 
 #### [DisplayMetaDict](#DisplayMetaDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subtitle | String? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [DisplayMeta](#DisplayMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | auto | [DisplayMetaDict](#DisplayMetaDict)? |  yes  |  |
 | apply | [DisplayMetaDict](#DisplayMetaDict)? |  yes  |  |
 | remove | [DisplayMetaDict](#DisplayMetaDict)? |  yes  |  |
 | subtitle | String? |  yes  |  |
 | title | String? |  yes  |  |
 | description | String? |  yes  |  |

---


 
 
 #### [Validity](#Validity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int? |  yes  |  |

---


 
 
 #### [Ownership](#Ownership)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payableBy | String |  no  |  |
 | payableCategory | String |  no  |  |

---


 
 
 #### [Validation](#Validation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | appId | [String]? |  yes  |  |
 | anonymous | Bool? |  yes  |  |
 | userRegisteredAfter | String? |  yes  |  |

---


 
 
 #### [CouponAuthor](#CouponAuthor)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | modifiedBy | String? |  yes  |  |
 | createdBy | String? |  yes  |  |

---


 
 
 #### [CouponAdd](#CouponAdd)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dateMeta | [CouponDateMeta](#CouponDateMeta)? |  yes  |  |
 | rule | [[Rule](#Rule)] |  no  |  |
 | restrictions | [Restrictions](#Restrictions)? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | action | [CouponAction](#CouponAction)? |  yes  |  |
 | state | [State](#State)? |  yes  |  |
 | ruleDefinition | [RuleDefinition](#RuleDefinition) |  no  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | schedule | [CouponSchedule](#CouponSchedule)? |  yes  |  |
 | code | String |  no  |  |
 | displayMeta | [DisplayMeta](#DisplayMeta) |  no  |  |
 | validity | [Validity](#Validity) |  no  |  |
 | ownership | [Ownership](#Ownership) |  no  |  |
 | validation | [Validation](#Validation)? |  yes  |  |
 | author | [CouponAuthor](#CouponAuthor)? |  yes  |  |
 | typeSlug | String |  no  |  |

---


 
 
 #### [CouponsResponse](#CouponsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page)? |  yes  |  |
 | items | [CouponAdd](#CouponAdd)? |  yes  |  |

---


 
 
 #### [SuccessMessage](#SuccessMessage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [OperationErrorResponse](#OperationErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [CouponUpdate](#CouponUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | dateMeta | [CouponDateMeta](#CouponDateMeta)? |  yes  |  |
 | rule | [[Rule](#Rule)] |  no  |  |
 | restrictions | [Restrictions](#Restrictions)? |  yes  |  |
 | tags | [String]? |  yes  |  |
 | action | [CouponAction](#CouponAction)? |  yes  |  |
 | state | [State](#State)? |  yes  |  |
 | ruleDefinition | [RuleDefinition](#RuleDefinition) |  no  |  |
 | identifiers | [Identifier](#Identifier) |  no  |  |
 | schedule | [CouponSchedule](#CouponSchedule)? |  yes  |  |
 | code | String |  no  |  |
 | displayMeta | [DisplayMeta](#DisplayMeta) |  no  |  |
 | validity | [Validity](#Validity) |  no  |  |
 | ownership | [Ownership](#Ownership) |  no  |  |
 | validation | [Validation](#Validation)? |  yes  |  |
 | author | [CouponAuthor](#CouponAuthor)? |  yes  |  |
 | typeSlug | String |  no  |  |

---


 
 
 #### [CouponPartialUpdate](#CouponPartialUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | schedule | [CouponSchedule](#CouponSchedule)? |  yes  |  |
 | archive | Bool? |  yes  | Send true to unpublish coupon |

---




 
 
 #### [AppUser](#AppUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | blockReason | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | updatedBy | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [E](#E)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | [String: Any]? |  yes  |  |
 | exception | String? |  yes  |  |
 | info | String? |  yes  |  |
 | message | String? |  yes  |  |
 | requestId | String? |  yes  |  |
 | stackTrace | String? |  yes  |  |
 | status | Int? |  yes  |  |

---


 
 
 #### [Giveaway](#Giveaway)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | schedule | [Schedule](#Schedule)? |  yes  |  |
 | active | Bool? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | audience | [RewardsAudience](#RewardsAudience)? |  yes  |  |
 | bannerImage | [Asset](#Asset)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | description | String? |  yes  |  |
 | name | String? |  yes  |  |
 | rule | [RewardsRule](#RewardsRule)? |  yes  |  |
 | title | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |

---


 
 
 #### [GiveawayResponse](#GiveawayResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Giveaway](#Giveaway)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [HistoryPretty](#HistoryPretty)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | claimed | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | expiresOn | String? |  yes  |  |
 | points | Double? |  yes  |  |
 | remainingPoints | Double? |  yes  |  |
 | text1 | String? |  yes  |  |
 | text2 | String? |  yes  |  |
 | text3 | String? |  yes  |  |
 | txnName | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [HistoryRes](#HistoryRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[HistoryPretty](#HistoryPretty)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |
 | points | Double? |  yes  |  |

---


 
 
 #### [Offer](#Offer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | schedule | [Schedule](#Schedule)? |  yes  |  |
 | active | Bool? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | bannerImage | [Asset](#Asset)? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | name | String? |  yes  |  |
 | rule | [String: Any]? |  yes  |  |
 | share | [ShareMessages](#ShareMessages)? |  yes  |  |
 | subText | String? |  yes  |  |
 | text | String? |  yes  |  |
 | type | String? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | updatedBy | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [Points](#Points)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | available | Double? |  yes  |  |

---


 
 
 #### [Referral](#Referral)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |

---


 
 
 #### [RewardUser](#RewardUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | active | Bool? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | referral | [Referral](#Referral)? |  yes  |  |
 | uid | Int? |  yes  |  |
 | updatedAt | String? |  yes  |  |
 | userBlockReason | String? |  yes  |  |
 | userId | String? |  yes  |  |

---


 
 
 #### [RewardsAudience](#RewardsAudience)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | headerUserId | String? |  yes  |  |
 | id | String? |  yes  |  |

---


 
 
 #### [RewardsRule](#RewardsRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double? |  yes  |  |

---


 
 
 #### [ShareMessages](#ShareMessages)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  |  |
 | facebook | String? |  yes  |  |
 | fallback | String? |  yes  |  |
 | message | String? |  yes  |  |
 | messenger | String? |  yes  |  |
 | sms | String? |  yes  |  |
 | text | String? |  yes  |  |
 | twitter | String? |  yes  |  |
 | whatsapp | String? |  yes  |  |

---


 
 
 #### [UserRes](#UserRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | points | [Points](#Points)? |  yes  |  |
 | user | [RewardUser](#RewardUser)? |  yes  |  |

---




 
 
 #### [StatGroup](#StatGroup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | url | String? |  yes  |  |
 | title | String? |  yes  |  |

---


 
 
 #### [StatsGroups](#StatsGroups)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | groups | [[StatGroup](#StatGroup)]? |  yes  |  |

---


 
 
 #### [StatsGroupComponent](#StatsGroupComponent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | url | String? |  yes  |  |
 | title | String? |  yes  |  |
 | type | String? |  yes  |  |
 | filters | [String: Any]? |  yes  |  |

---


 
 
 #### [StatsGroupComponents](#StatsGroupComponents)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  |  |
 | components | [[StatsGroupComponent](#StatsGroupComponent)]? |  yes  |  |

---


 
 
 #### [StatsRes](#StatsRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | String? |  yes  |  |
 | title | String? |  yes  |  |
 | type | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---


 
 
 #### [ReceivedAt](#ReceivedAt)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String? |  yes  |  |

---


 
 
 #### [AbandonCartsDetail](#AbandonCartsDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | propertiesCartId | String? |  yes  |  |
 | contextTraitsFirstName | String? |  yes  |  |
 | contextTraitsLastName | String? |  yes  |  |
 | contextTraitsPhoneNumber | String? |  yes  |  |
 | contextTraitsEmail | String? |  yes  |  |
 | contextAppApplicationId | String? |  yes  |  |
 | propertiesBreakupValuesRawTotal | String? |  yes  |  |
 | receivedAt | [ReceivedAt](#ReceivedAt)? |  yes  |  |

---


 
 
 #### [AbandonCartsList](#AbandonCartsList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AbandonCartsDetail](#AbandonCartsDetail)]? |  yes  |  |
 | cartTotal | String? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [AbandonCartDetail](#AbandonCartDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | userId | String? |  yes  |  |
 | cartValue | String? |  yes  |  |
 | articles | [[String: Any]]? |  yes  |  |
 | breakup | [String: Any]? |  yes  |  |
 | address | [String: Any]? |  yes  |  |

---


 
 
 #### [ExportJobReq](#ExportJobReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceName | String? |  yes  |  |
 | startTime | String? |  yes  |  |
 | endTime | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | traceId | String? |  yes  |  |

---


 
 
 #### [ExportJobRes](#ExportJobRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | jobId | String? |  yes  |  |

---


 
 
 #### [ExportJobStatusRes](#ExportJobStatusRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String? |  yes  |  |
 | jobId | String? |  yes  |  |
 | downloadUrl | String? |  yes  |  |

---


 
 
 #### [GetLogsListReq](#GetLogsListReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceName | String? |  yes  |  |
 | startDate | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | endDate | String? |  yes  |  |

---


 
 
 #### [MkpLogsResp](#MkpLogsResp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | startTimeIso | String? |  yes  |  |
 | endTimeIso | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | traceId | String? |  yes  |  |
 | count | String? |  yes  |  |
 | status | String? |  yes  |  |

---


 
 
 #### [GetLogsListRes](#GetLogsListRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[MkpLogsResp](#MkpLogsResp)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SearchLogReq](#SearchLogReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplaceName | String? |  yes  |  |
 | startDate | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | endDate | String? |  yes  |  |
 | identifier | String? |  yes  |  |
 | identifierValue | String? |  yes  |  |

---


 
 
 #### [LogInfo](#LogInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | status | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | marketplaceName | String? |  yes  |  |
 | event | String? |  yes  |  |
 | traceId | String? |  yes  |  |
 | companyId | Double? |  yes  |  |
 | brandId | Double? |  yes  |  |
 | storeCode | String? |  yes  |  |
 | storeId | Double? |  yes  |  |
 | itemId | Double? |  yes  |  |
 | articleId | String? |  yes  |  |
 | sellerIdentifier | String? |  yes  |  |

---


 
 
 #### [SearchLogRes](#SearchLogRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[LogInfo](#LogInfo)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---




 
 
 #### [ValidityObject](#ValidityObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start | String |  no  |  |
 | end | String |  no  |  |

---


 
 
 #### [CreateUpdateDiscount](#CreateUpdateDiscount)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | companyId | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | appIds | [String] |  no  |  |
 | jobType | String |  no  |  |
 | discountType | String |  no  |  |
 | discountLevel | String |  no  |  |
 | value | Int? |  yes  |  |
 | filePath | String? |  yes  |  |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | validity | [ValidityObject](#ValidityObject) |  no  |  |

---


 
 
 #### [DiscountJob](#DiscountJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String |  no  |  |
 | name | String |  no  |  |
 | companyId | Int |  no  |  |
 | isActive | Bool |  no  |  |
 | appIds | [String]? |  yes  |  |
 | jobType | String? |  yes  |  |
 | discountType | String? |  yes  |  |
 | discountLevel | String? |  yes  |  |
 | value | Int? |  yes  |  |
 | filePath | String? |  yes  |  |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |
 | validity | [ValidityObject](#ValidityObject) |  no  |  |
 | createdOn | String |  no  |  |
 | modifiedOn | String |  no  |  |
 | createdBy | [UserDetails](#UserDetails) |  no  |  |
 | modifiedBy | [UserDetails](#UserDetails) |  no  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [ListOrCalender](#ListOrCalender)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[DiscountJob](#DiscountJob)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [FileJobResponse](#FileJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String |  no  |  |
 | total | Int |  no  |  |
 | failed | Int |  no  |  |
 | companyId | Int |  no  |  |
 | body | [String: Any]? |  yes  |  |
 | type | String |  no  |  |
 | fileType | String |  no  |  |

---


 
 
 #### [DownloadFileJob](#DownloadFileJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brandIds | [Int]? |  yes  |  |
 | storeIds | [Int]? |  yes  |  |

---


 
 
 #### [CancelJobResponse](#CancelJobResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |

---


 
 
 #### [UserDetails](#UserDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | userId | String |  no  |  |

---


 
 
 #### [BadRequestObject](#BadRequestObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---




 
 
 #### [AddProxyReq](#AddProxyReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attachedPath | String? |  yes  | Proxy path slug |
 | proxyUrl | String? |  yes  | Proxied url |

---


 
 
 #### [AddProxyResponse](#AddProxyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | String? |  yes  |  |
 | attachedPath | String? |  yes  |  |
 | proxyUrl | String? |  yes  |  |
 | companyId | String? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | extensionId | String? |  yes  |  |
 | createdAt | String? |  yes  |  |
 | modifiedAt | String? |  yes  |  |

---


 
 
 #### [ApiError](#ApiError)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String? |  yes  |  |
 | message | String? |  yes  |  |
 | meta | [String: Any]? |  yes  |  |

---


 
 
 #### [RemoveProxyResponse](#RemoveProxyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | data | [String: Any]? |  yes  |  |

---




 
 
 #### [EventConfig](#EventConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | eventName | String? |  yes  |  |
 | eventType | String? |  yes  |  |
 | version | String? |  yes  |  |
 | displayName | String? |  yes  |  |
 | description | String? |  yes  |  |
 | createdOn | String? |  yes  |  |

---


 
 
 #### [EventConfigList](#EventConfigList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[EventConfig](#EventConfig)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [SubscriberConfigList](#SubscriberConfigList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SubscriberResponse](#SubscriberResponse)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [EventProcessedStatus](#EventProcessedStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | subscriberId | String? |  yes  |  |
 | attempt | Int? |  yes  |  |
 | responseCode | String? |  yes  |  |
 | responseMessage | String? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | processedOn | String? |  yes  |  |
 | status | Bool? |  yes  |  |

---


 
 
 #### [EventPayload](#EventPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | eventTraceId | String? |  yes  |  |
 | eventCompanyId | Int? |  yes  |  |
 | eventApplicationId | String? |  yes  |  |
 | eventExtensionId | String? |  yes  |  |
 | eventName | String? |  yes  |  |
 | status | Bool? |  yes  |  |

---


 
 
 #### [SubscriberConfig](#SubscriberConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | webhookUrl | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | extensionId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | authMeta | [AuthMeta](#AuthMeta)? |  yes  |  |
 | eventId | [Int]? |  yes  |  |

---


 
 
 #### [SubscriberResponse](#SubscriberResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | webhookUrl | String? |  yes  |  |
 | companyId | Int? |  yes  |  |
 | applicationId | String? |  yes  |  |
 | extensionId | String? |  yes  |  |
 | status | String? |  yes  |  |
 | authMeta | [AuthMeta](#AuthMeta)? |  yes  |  |
 | createdOn | String? |  yes  |  |
 | updatedOn | String? |  yes  |  |
 | eventConfigs | [[EventConfig](#EventConfig)]? |  yes  |  |

---


 
 
 #### [SubscriberEvent](#SubscriberEvent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int? |  yes  |  |
 | subscriberId | Int? |  yes  |  |
 | eventId | Int? |  yes  |  |
 | createdDate | String? |  yes  |  |

---


 
 
 #### [AuthMeta](#AuthMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  |  |
 | username | String? |  yes  |  |
 | password | String? |  yes  |  |

---



