

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
    * [createUser](#createuser)
    * [updateUser](#updateuser)
    * [createUserSession](#createusersession)
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
    * [updateCompany](#updatecompany)
    * [cbsOnboardGet](#cbsonboardget)
    * [getCompanyMetrics](#getcompanymetrics)
    * [editBrand](#editbrand)
    * [getBrand](#getbrand)
    * [createBrand](#createbrand)
    * [createCompanyBrandMapping](#createcompanybrandmapping)
    * [getBrands](#getbrands)
    * [createLocation](#createlocation)
    * [getLocations](#getlocations)
    * [updateLocation](#updatelocation)
    * [getLocationDetail](#getlocationdetail)
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
    * [getJobCodeMetrics](#getjobcodemetrics)
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


| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| locationType | String? | no | Provide location type to query on |   
| id | String? | no | Field is optional when location_type is country. If querying for state, provide id of country. If querying for city, provide id of state. |  




*Returned Response:*




[Locations](#Locations)

Success






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
| body | AddTicketPayload | yes | Request body |

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
| body | EditTicketPayload | yes | Request body |

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
| body | EditTicketPayload | yes | Request body |

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
| body | TicketHistoryPayload | yes | Request body |

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
| body | TicketFeedbackPayload | yes | Request body |

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
| body | TicketHistoryPayload | yes | Request body |

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
| body | EditCustomFormPayload | yes | Request body |

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
| body | CreateCustomFormPayload | yes | Request body |

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
| body | CreateVideoRoomPayload | yes | Request body |

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
| body | ApproveRequest | yes | Request body |

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
| body | TemplateRequestList | yes | Request body |

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
| body | UpdateTemplateRequest | yes | Request body |

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
| body | UpdateTemplateStatusRequest | yes | Request body |

Update existing template status, active/archive

*Returned Response:*




[UpdateResponse](#UpdateResponse)

Success






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
| body | AvailablePageSchema | yes | Request body |

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
| body | AllAvailablePageSchema | yes | Request body |

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
| body | AvailablePageSchema | yes | Request body |

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
| body | AddThemeRequestSchema | yes | Request body |

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
| body | AddThemeRequestSchema | yes | Request body |

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
| body | ThemesSchema | yes | Request body |

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
| body | ThemesSchema | yes | Request body |

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
| body | CreateUserRequestSchema | yes | Request body |

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
| body | UpdateUserRequestSchema | yes | Request body |

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
| body | CreateUserSessionRequestSchema | yes | Request body |

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
| body | PlatformSchema | yes | Request body |

Use this API to edit the existing platform configurations such as mobile image, desktop image, social logins, and all other text.

*Returned Response:*




[PlatformSchema](#PlatformSchema)

Success. Returns a JSON object with the updated platform configurations. Refer `PlatformSchema` for more details.






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
| body | AdminAnnouncementSchema | yes | Request body |

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
| body | AdminAnnouncementSchema | yes | Request body |

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
| body | ScheduleSchema | yes | Request body |

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
| body | BlogRequest | yes | Request body |

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
| body | BlogRequest | yes | Request body |

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
| body | CreateFaqCategoryRequestSchema | yes | Request body |

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
| body | UpdateFaqCategoryRequestSchema | yes | Request body |

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
| body | CreateFaqSchema | yes | Request body |

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
| body | CreateFaqSchema | yes | Request body |

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
| body | LandingPageSchema | yes | Request body |

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
| body | LandingPageSchema | yes | Request body |

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
| body | ApplicationLegal | yes | Request body |

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
| body | NavigationRequest | yes | Request body |

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
| body | NavigationRequest | yes | Request body |

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
| body | PageRequest | yes | Request body |

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
| body | PageRequest | yes | Request body |

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
| body | PagePublishRequest | yes | Request body |

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
| body | PageSchema | yes | Request body |

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
| body | SeoComponent | yes | Request body |

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
| body | SlideshowRequest | yes | Request body |

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
| body | SlideshowRequest | yes | Request body |

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
| body | Support | yes | Request body |

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
| body | CreateTagRequestSchema | yes | Request body |

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
| body | CreateTagRequestSchema | yes | Request body |

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
| body | RemoveHandpickedSchema | yes | Request body |

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
| body | UpdateHandpickedSchema | yes | Request body |

Use this API to edit the details of an existing tag by its ID.

*Returned Response:*




[TagsSchema](#TagsSchema)

Success.






---



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
| body | PickupPointSchema | yes | Request body |

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
| body | PickupPointSchema | yes | Request body |

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
| body | PickupConfiguration | yes | Request body |

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
| body | ShippingSchema | yes | Request body |

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
| body | ShippingSchema | yes | Request body |

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
| body | StoreSchema | yes | Request body |

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
| body | StoreSchema | yes | Request body |

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
| body | ZoneSchema | yes | Request body |

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
| body | ZoneSchema | yes | Request body |

Zone once created can be updated using this API. Zone id and request body are the required
data to update a zone.


*Returned Response:*




[Success](#Success)

Success Response - Zone Updated






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


| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Customer unique id. In case of company it will be company id. |   
| extensionId | String? | no | Extension _id |  
| body | CreateSubscriptionCharge | yes | Request body |

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
| body | SubscriptionCustomerCreate | yes | Request body |

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
| body | SubscriptionActivateReq | yes | Request body |

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
| body | CancelSubscriptionReq | yes | Request body |

It will cancel current active subscription.

*Returned Response:*




[CancelSubscriptionRes](#CancelSubscriptionRes)

Success






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
| body | CampaignReq | yes | Request body |

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
| body | CampaignReq | yes | Request body |

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
| body | AudienceReq | yes | Request body |

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
| body | BigqueryHeadersReq | yes | Request body |

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
| body | AudienceReq | yes | Request body |

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
| body | GetNRecordsCsvReq | yes | Request body |

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
| body | EmailProviderReq | yes | Request body |

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
| body | EmailProviderReq | yes | Request body |

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
| body | EmailTemplateReq | yes | Request body |

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
| body | EmailTemplateReq | yes | Request body |

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
| body | TriggerJobRequest | yes | Request body |

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
| body | SmsProviderReq | yes | Request body |

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
| body | SmsProviderReq | yes | Request body |

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
| body | SmsTemplateReq | yes | Request body |

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
| body | SmsTemplateReq | yes | Request body |

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
| body | PaymentGatewayConfigRequest | yes | Request body |

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
| body | PaymentGatewayConfigRequest | yes | Request body |

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
| body | PayoutRequest | yes | Request body |

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
| body | PayoutRequest | yes | Request body |

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
| body | UpdatePayoutRequest | yes | Request body |

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
| body | SaveSubscriptionSetupIntentRequest | yes | Request body |

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
| body | AddBeneficiaryDetailsRequest | yes | Request body |

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
| body | UpdateShipmentStatusBody | yes | Request body |

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
| body | UpdateProcessShipmenstRequestBody | yes | Request body |

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
| body | ShipmentUpdateRequest | yes | Request body |

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
| body | UpdateShipmentAddressRequest | yes | Request body |

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
| body | CreateSearchKeyword | yes | Request body |

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
| body | CreateSearchKeyword | yes | Request body |

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
| body | CreateAutocompleteKeyword | yes | Request body |

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
| body | CreateAutocompleteKeyword | yes | Request body |

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
| body | ProductBundleRequest | yes | Request body |

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
| body | ProductBundleUpdateRequest | yes | Request body |

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
| body | ValidateSizeGuide | yes | Request body |

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
| body | ValidateSizeGuide | yes | Request body |

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
| body | AppConfiguration | yes | Request body |

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
| body | AppConfiguration | yes | Request body |

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
| body | CreateCollection | yes | Request body |

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
| body | UpdateCollection | yes | Request body |

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
| body | CollectionItemRequest | yes | Request body |

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
| body | OptInPostRequest | yes | Request body |

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
| body | CategoryRequestBody | yes | Request body |

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
| body | CategoryRequestBody | yes | Request body |

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
catalog.getProducts(companyId: companyId, brandIds: brandIds, categoryIds: categoryIds, q: q, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```


| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Double? | no | Get list of products filtered by company Id |   
| brandIds | Double? | no | Get multiple products filtered by brand Ids |   
| categoryIds | Double? | no | Get multiple products filtered by category Ids |   
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
| body | ProductCreateUpdate | yes | Request body |

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
| body | ProductCreateUpdate | yes | Request body |

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
| body | BulkJob | yes | Request body |

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
| body | BulkProductRequest | yes | Request body |

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
| body | ProductBulkAssets | yes | Request body |

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


#### getInventory
Get Inventory for company



```swift
catalog.getInventory(companyId: companyId, itemId: itemId, size: size, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
| body | InventoryRequest | yes | Request body |

This API allows add Inventory for particular size and store.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### deleteInventory
Delete a Inventory.



```swift
catalog.deleteInventory(companyId: companyId, itemId: itemId, locationId: locationId) { (response, error) in
    // Use response
}
```


| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id of the company associated with Inventory that is to be deleted. |   
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
| body | BulkJob | yes | Request body |

This API helps to create a bulk Inventory upload job.

*Returned Response:*




[CommonResponse](#CommonResponse)

Returns a success response






---


#### deleteBulkInventoryJob
Delete Bulk Inventory job.



```swift
catalog.deleteBulkInventoryJob(companyId: companyId) { (response, error) in
    // Use response
}
```


| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | String? | no | Company Id of the company of which bulk Inventory job is to be deleted. |  


This API allows to delete bulk Inventory job associated with company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






---


#### createBulkInventory
Create products in bulk associated with given batch Id.



```swift
catalog.createBulkInventory(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```


| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| companyId | Int? | no | Company Id in which Inventory is to be uploaded. |  
| body | InventoryBulkRequest | yes | Request body |

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
| body | InventoryExportRequest | yes | Request body |

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
| body | HsnUpsert | yes | Request body |

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
| body | HsnUpsert | yes | Request body |

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
| body | BulkHsnUpsert | yes | Request body |

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



---


## CompanyProfile


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
| body | UpdateCompany | yes | Request body |

This API allows to edit the company profile of the seller account.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success message






---


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
| body | CreateUpdateBrandRequestSerializer | yes | Request body |

This API allows to edit meta of a brand.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






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
| body | CreateUpdateBrandRequestSerializer | yes | Request body |

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
| body | CompanyBrandPostRequestSerializer | yes | Request body |

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
| body | LocationSerializer | yes | Request body |

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
| body | LocationSerializer | yes | Request body |

This API allows to edit a location associated to a company.

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
| body | BulkLocationSerializer | yes | Request body |

This API allows to create a location associated to a company.

*Returned Response:*




[SuccessResponse](#SuccessResponse)

Returns a success response






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


| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| namespace | String? | no | bucket name |   
| companyId | Int? | no | company_id |  
| body | StartRequest | yes | Request body |

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
| body | StartResponse | yes | Request body |

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
| body | StartRequest | yes | Request body |

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
| body | StartResponse | yes | Request body |

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
| body | SignUrlRequest | yes | Request body |

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
| body | BulkRequest | yes | Request body |

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
| body | BulkRequest | yes | Request body |

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
| body | ShortLinkReq | yes | Request body |

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
| body | ShortLinkReq | yes | Request body |

Update short link by id

*Returned Response:*




[ShortLinkRes](#ShortLinkRes)

Success






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
| body | JobConfigDTO | yes | Request body |

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
| body | JobConfigDTO | yes | Request body |

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
| body | MobileAppConfigRequest | yes | Request body |

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
| body | AppFeatureRequest | yes | Request body |

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
| body | ApplicationDetail | yes | Request body |

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
| body | ApplicationInformation | yes | Request body |

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
| body | TokenResponse | yes | Request body |

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
| body | ApplicationInventory | yes | Request body |

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
| body | AppInventoryPartialUpdate | yes | Request body |

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
| body | AppSupportedCurrency | yes | Request body |

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
| body | FilterOrderingStoreRequest | yes | Request body |

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
| body | OrderingStoreConfig | yes | Request body |

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
| body | DomainAddRequest | yes | Request body |

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
| body | UpdateDomainTypeRequest | yes | Request body |

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
| body | DomainStatusRequest | yes | Request body |

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
| body | CreateApplicationRequest | yes | Request body |

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
| body | DomainSuggestionsRequest | yes | Request body |

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
| body | CompanyByBrandsRequest | yes | Request body |

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
| body | StoreByBrandsRequest | yes | Request body |

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
| body | OptOutInventory | yes | Request body |

Opt out company or store from other seller application

*Returned Response:*




[SuccessMessageResponse](#SuccessMessageResponse)

Success






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
| body | CouponAdd | yes | Request body |

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
| body | CouponUpdate | yes | Request body |

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
| body | CouponPartialUpdate | yes | Request body |

Update archive/unarchive and change schedule for coupon

*Returned Response:*




[SuccessMessage](#SuccessMessage)

Coupon updated successfully






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
| body | Giveaway | yes | Request body |

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
| body | Giveaway | yes | Request body |

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
| body | Offer | yes | Request body |

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
| body | AppUser | yes | Request body |

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
| body | ExportJobReq | yes | Request body |

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
| body | GetLogsListReq | yes | Request body |

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
| body | SearchLogReq | yes | Request body |

Search logs

*Returned Response:*




[SearchLogRes](#SearchLogRes)

Success






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
| body | CreateUpdateDiscount | yes | Request body |

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
| body | CreateUpdateDiscount | yes | Request body |

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
| body | DiscountJob | yes | Request body |

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
| body | DownloadFileJob | yes | Request body |

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
| body | AddProxyReq | yes | Request body |

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
| body | SubscriberConfig | yes | Request body |

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
| body | SubscriberConfig | yes | Request body |

Update Subscriber

*Returned Response:*




[SubscriberConfig](#SubscriberConfig)

Success






---



---


---

### Schemas


 
 
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
 | title | String |  |
 | details | [ProductDetailAttribute] |  |

---


 
 
 #### [Price](#Price)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | currency_symbol | String |  |
 | currency_code | String |  |
 | min | Double |  |
 | max | Double |  |

---


 
 
 #### [ProductListingPrice](#ProductListingPrice)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | marked | Price |  |
 | effective | Price |  |

---


 
 
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
 | meta | Meta |  |
 | url | String |  |
 | type | String |  |

---


 
 
 #### [ProductBrand](#ProductBrand)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | action | ProductListingAction |  |
 | uid | Int |  |
 | logo | Media |  |

---


 
 
 #### [ProductDetail](#ProductDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | grouped_attributes | [ProductDetailGroupedAttribute] |  |
 | rating | Double |  |
 | attributes | [String: Any] |  |
 | short_description | String |  |
 | uid | Int |  |
 | type | String |  |
 | teaser_tag | String |  |
 | price | ProductListingPrice |  |
 | similars | [String] |  |
 | color | String |  |
 | product_online_date | String |  |
 | item_type | String |  |
 | slug | String |  |
 | tryouts | [String] |  |
 | highlights | [String] |  |
 | action | ProductListingAction |  |
 | has_variant | Bool |  |
 | brand | ProductBrand |  |
 | image_nature | String |  |
 | name | String |  |
 | categories | [ProductBrand] |  |
 | item_code | String |  |
 | discount | String |  |
 | description | String |  |
 | medias | [Media] |  |
 | rating_count | Int |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | error | String |  |

---


 
 
 #### [ColumnHeader](#ColumnHeader)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | convertable | Bool |  |
 | value | String |  |

---


 
 
 #### [ColumnHeaders](#ColumnHeaders)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | col_3 | ColumnHeader |  |
 | col_4 | ColumnHeader |  |
 | col_6 | ColumnHeader |  |
 | col_5 | ColumnHeader |  |
 | col_1 | ColumnHeader |  |
 | col_2 | ColumnHeader |  |

---


 
 
 #### [SizeChartValues](#SizeChartValues)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | col_3 | String |  |
 | col_4 | String |  |
 | col_6 | String |  |
 | col_5 | String |  |
 | col_1 | String |  |
 | col_2 | String |  |

---


 
 
 #### [SizeChart](#SizeChart)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | size_tip | String |  |
 | title | String |  |
 | unit | String |  |
 | description | String |  |
 | headers | ColumnHeaders |  |
 | sizes | [SizeChartValues] |  |
 | image | String |  |

---


 
 
 #### [ProductSizeStores](#ProductSizeStores)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | count | Int |  |

---


 
 
 #### [ProductSize](#ProductSize)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | value | String |  |
 | quantity | Int |  |
 | display | String |  |
 | is_available | Bool |  |

---


 
 
 #### [ProductSizes](#ProductSizes)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | sellable | Bool |  |
 | discount | String |  |
 | price | ProductListingPrice |  |
 | size_chart | SizeChart |  |
 | stores | ProductSizeStores |  |
 | sizes | [ProductSize] |  |

---


 
 
 #### [ProductStockPrice](#ProductStockPrice)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | marked | Double |  |
 | currency | String |  |
 | effective | Double |  |

---


 
 
 #### [ProductSetDistributionSize](#ProductSetDistributionSize)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | size | String |  |
 | pieces | Int |  |

---


 
 
 #### [ProductSetDistribution](#ProductSetDistribution)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | sizes | [ProductSetDistributionSize] |  |

---


 
 
 #### [ProductSet](#ProductSet)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | quantity | Int |  |
 | size_distribution | ProductSetDistribution |  |

---


 
 
 #### [StrategyWiseListing](#StrategyWiseListing)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | pincode | Int |  |
 | quantity | Int |  |
 | distance | Int |  |
 | tat | Int |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | returnable | Bool |  |
 | unit | String |  |
 | time | Int |  |

---


 
 
 #### [Store](#Store)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | count | Int |  |
 | uid | Int |  |

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
 | title | String |  |
 | details | [Details] |  |

---


 
 
 #### [Seller](#Seller)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | count | Int |  |
 | uid | Int |  |

---


 
 
 #### [ArticleAssignment](#ArticleAssignment)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | level | String |  |
 | strategy | String |  |

---


 
 
 #### [ProductSizePriceResponse](#ProductSizePriceResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | article_id | String |  |
 | long_lat | [Double] |  |
 | discount | String |  |
 | price_per_price | ProductStockPrice |  |
 | price | ProductStockPrice |  |
 | quantity | Int |  |
 | seller_count | Int |  |
 | set | ProductSet |  |
 | strategy_wise_listing | [StrategyWiseListing] |  |
 | return_config | ReturnConfig |  |
 | item_type | String |  |
 | special_badge | String |  |
 | store | Store |  |
 | marketplace_attributes | [MarketPlaceSttributes] |  |
 | pincode | Int |  |
 | seller | Seller |  |
 | article_assignment | ArticleAssignment |  |

---


 
 
 #### [ProductSizeSellerFilter](#ProductSizeSellerFilter)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | is_selected | Bool |  |
 | value | String |  |

---


 
 
 #### [ProductSizeSellersResponse](#ProductSizeSellersResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | sort_on | [ProductSizeSellerFilter] |  |
 | page | Page |  |
 | items | [ProductSizePriceResponse] |  |

---


 
 
 #### [AttributeDetail](#AttributeDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | logo | String |  |
 | description | String |  |
 | display | String |  |
 | key | String |  |

---


 
 
 #### [AttributeMetadata](#AttributeMetadata)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | details | [AttributeDetail] |  |

---


 
 
 #### [ProductsComparisonResponse](#ProductsComparisonResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | attributes_metadata | [AttributeMetadata] |  |
 | items | [ProductDetail] |  |

---


 
 
 #### [ProductCompareResponse](#ProductCompareResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | attributes_metadata | [AttributeMetadata] |  |
 | subtitle | String |  |
 | items | [ProductDetail] |  |

---


 
 
 #### [ProductFrequentlyComparedSimilarResponse](#ProductFrequentlyComparedSimilarResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | similars | ProductCompareResponse |  |

---


 
 
 #### [ProductSimilarItem](#ProductSimilarItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | title | String |  |
 | subtitle | String |  |
 | items | [ProductDetail] |  |

---


 
 
 #### [SimilarProductByTypeResponse](#SimilarProductByTypeResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | similars | ProductSimilarItem |  |

---


 
 
 #### [ProductVariantItemResponse](#ProductVariantItemResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | color_name | String |  |
 | name | String |  |
 | color | String |  |
 | value | String |  |
 | medias | [Media] |  |
 | action | ProductListingAction |  |
 | is_available | Bool |  |
 | uid | Int |  |

---


 
 
 #### [ProductVariantResponse](#ProductVariantResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display_type | String |  |
 | header | String |  |
 | items | [ProductVariantItemResponse] |  |
 | key | String |  |

---


 
 
 #### [ProductVariantsResponse](#ProductVariantsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | variants | [ProductVariantResponse] |  |

---


 
 
 #### [CompanyDetail](#CompanyDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | id | Int |  |

---


 
 
 #### [StoreDetail](#StoreDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | city | String |  |
 | code | String |  |
 | id | Int |  |

---


 
 
 #### [ProductStockStatusItem](#ProductStockStatusItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | item_id | Int |  |
 | identifier | [String: Any] |  |
 | price | ProductStockPrice |  |
 | quantity | Int |  |
 | size | String |  |
 | company | CompanyDetail |  |
 | store | StoreDetail |  |
 | seller | Seller |  |
 | uid | String |  |

---


 
 
 #### [ProductStockStatusResponse](#ProductStockStatusResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [ProductStockStatusItem] |  |

---


 
 
 #### [ProductStockPolling](#ProductStockPolling)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page | Page |  |
 | items | [ProductStockStatusItem] |  |

---


 
 
 #### [ProductFiltersValue](#ProductFiltersValue)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | selected_max | Int |  |
 | query_format | String |  |
 | display_format | String |  |
 | min | Int |  |
 | max | Int |  |
 | display | String |  |
 | currency_code | String |  |
 | currency_symbol | String |  |
 | value | String |  |
 | is_selected | Bool |  |
 | count | Int |  |
 | selected_min | Int |  |

---


 
 
 #### [ProductFiltersKey](#ProductFiltersKey)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | kind | String |  |
 | display | String |  |
 | logo | String |  |

---


 
 
 #### [ProductFilters](#ProductFilters)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | values | [ProductFiltersValue] |  |
 | key | ProductFiltersKey |  |

---


 
 
 #### [ProductSortOn](#ProductSortOn)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | value | String |  |
 | is_selected | Bool |  |

---


 
 
 #### [ProductListingDetail](#ProductListingDetail)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | grouped_attributes | [ProductDetailGroupedAttribute] |  |
 | rating | Double |  |
 | attributes | [String: Any] |  |
 | short_description | String |  |
 | uid | Int |  |
 | type | String |  |
 | teaser_tag | String |  |
 | price | ProductListingPrice |  |
 | similars | [String] |  |
 | color | String |  |
 | product_online_date | String |  |
 | item_type | String |  |
 | slug | String |  |
 | tryouts | [String] |  |
 | sellable | Bool |  |
 | highlights | [String] |  |
 | action | ProductListingAction |  |
 | has_variant | Bool |  |
 | brand | ProductBrand |  |
 | image_nature | String |  |
 | name | String |  |
 | categories | [ProductBrand] |  |
 | item_code | String |  |
 | discount | String |  |
 | description | String |  |
 | medias | [Media] |  |
 | rating_count | Int |  |

---


 
 
 #### [ProductListingResponse](#ProductListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | filters | [ProductFilters] |  |
 | sort_on | [ProductSortOn] |  |
 | page | Page |  |
 | items | [ProductListingDetail] |  |

---


 
 
 #### [ImageUrls](#ImageUrls)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | portrait | Media |  |
 | landscape | Media |  |

---


 
 
 #### [BrandItem](#BrandItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | name | String |  |
 | discount | String |  |
 | banners | ImageUrls |  |
 | departments | [String] |  |
 | logo | Media |  |
 | action | ProductListingAction |  |
 | uid | Int |  |

---


 
 
 #### [BrandListingResponse](#BrandListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page | Page |  |
 | items | [BrandItem] |  |

---


 
 
 #### [BrandDetailResponse](#BrandDetailResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | banners | ImageUrls |  |
 | uid | Int |  |
 | logo | Media |  |

---


 
 
 #### [DepartmentIdentifier](#DepartmentIdentifier)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | uid | Int |  |

---


 
 
 #### [ThirdLevelChild](#ThirdLevelChild)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | name | String |  |
 | banners | ImageUrls |  |
 | childs | [[String: Any]] |  |
 | action | ProductListingAction |  |
 | _custom_json | [String: Any] |  |
 | uid | Int |  |

---


 
 
 #### [SecondLevelChild](#SecondLevelChild)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | name | String |  |
 | banners | ImageUrls |  |
 | childs | [ThirdLevelChild] |  |
 | action | ProductListingAction |  |
 | _custom_json | [String: Any] |  |
 | uid | Int |  |

---


 
 
 #### [Child](#Child)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | name | String |  |
 | banners | ImageUrls |  |
 | childs | [SecondLevelChild] |  |
 | action | ProductListingAction |  |
 | _custom_json | [String: Any] |  |
 | uid | Int |  |

---


 
 
 #### [CategoryItems](#CategoryItems)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | slug | String |  |
 | name | String |  |
 | banners | ImageUrls |  |
 | childs | [Child] |  |
 | action | ProductListingAction |  |
 | uid | Int |  |

---


 
 
 #### [DepartmentCategoryTree](#DepartmentCategoryTree)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | department | String |  |
 | items | [CategoryItems] |  |

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
 | name | String |  |
 | banners | ImageUrls |  |
 | uid | Int |  |
 | logo | Media |  |

---


 
 
 #### [HomeListingResponse](#HomeListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String |  |
 | page | Page |  |
 | items | [ProductListingDetail] |  |

---


 
 
 #### [Department](#Department)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | priority_order | Int |  |
 | slug | String |  |
 | name | String |  |
 | logo | Media |  |
 | uid | Int |  |

---


 
 
 #### [DepartmentResponse](#DepartmentResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [Department] |  |

---


 
 
 #### [AutocompleteItem](#AutocompleteItem)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display | String |  |
 | action | ProductListingAction |  |
 | type | String |  |
 | logo | Media |  |

---


 
 
 #### [AutoCompleteResponse](#AutoCompleteResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | items | [AutocompleteItem] |  |

---


 
 
 #### [CollectionListingFilterType](#CollectionListingFilterType)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | is_selected | Bool |  |
 | display | String |  |

---


 
 
 #### [CollectionListingFilterTag](#CollectionListingFilterTag)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name | String |  |
 | is_selected | Bool |  |
 | display | String |  |

---


 
 
 #### [CollectionListingFilter](#CollectionListingFilter)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | type | [CollectionListingFilterType] |  |
 | tags | [CollectionListingFilterTag] |  |

---


 
 
 #### [GetCollectionDetailNest](#GetCollectionDetailNest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_active | Bool |  |
 | uid | String |  |
 | badge | [String: Any] |  |
 | type | String |  |
 | allow_facets | Bool |  |
 | logo | Media |  |
 | meta | [String: Any] |  |
 | slug | String |  |
 | tag | [String] |  |
 | banners | ImageUrls |  |
 | cron | [String: Any] |  |
 | _schedule | [String: Any] |  |
 | action | ProductListingAction |  |
 | allow_sort | Bool |  |
 | app_id | String |  |
 | name | String |  |
 | visible_facets_keys | [String] |  |
 | description | String |  |
 | query | [String: Any] |  |

---


 
 
 #### [GetCollectionListingResponse](#GetCollectionListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | filters | CollectionListingFilter |  |
 | page | Page |  |
 | items | [GetCollectionDetailNest] |  |

---


 
 
 #### [CollectionDetailResponse](#CollectionDetailResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | is_active | Bool |  |
 | allow_sort | Bool |  |
 | badge | [String: Any] |  |
 | slug | String |  |
 | app_id | String |  |
 | tag | [String] |  |
 | name | String |  |
 | type | String |  |
 | banners | ImageUrls |  |
 | visible_facets_keys | [String] |  |
 | allow_facets | Bool |  |
 | description | String |  |
 | cron | [String: Any] |  |
 | logo | Media |  |
 | _schedule | [String: Any] |  |
 | query | [String: Any] |  |
 | meta | [String: Any] |  |

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
 | products | [Int] |  |
 | collections | [Int] |  |

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
 | store_code | String |  |
 | name | String |  |
 | state | String |  |
 | store_email | String |  |
 | lat_long | LatLong |  |
 | city | String |  |
 | country | String |  |
 | address | String |  |
 | pincode | Int |  |
 | uid | Int |  |

---


 
 
 #### [StoreListingResponse](#StoreListingResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | page | Page |  |
 | items | [Store1] |  |

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
 | key | String | Payment gateway api key |
 | merchant_id | String | Unique merchant id |
 | config_type | String | Fynd or self payment gateway |
 | pin | String | Masked pin |
 | sdk | Bool | SDK |
 | user_id | String | Registered User id |
 | merchant_key | String | Unique merchant key |
 | verify_api | String | Payment gateway verify payment api endpoint |
 | secret | String | Masked payment gateway api secret |
 | api | String | Payment gateway api endpoint |

---


 
 
 #### [AggregatorsConfigDetailResponse](#AggregatorsConfigDetailResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | simpl | AggregatorConfigDetail |  |
 | mswipe | AggregatorConfigDetail |  |
 | rupifi | AggregatorConfigDetail |  |
 | success | Bool |  |
 | ccavenue | AggregatorConfigDetail |  |
 | payumoney | AggregatorConfigDetail |  |
 | juspay | AggregatorConfigDetail |  |
 | stripe | AggregatorConfigDetail |  |
 | razorpay | AggregatorConfigDetail |  |
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
 | error | ErrorCodeAndDescription |  |
 | success | Bool | Response is successful or not |

---


 
 
 #### [AttachCardRequest](#AttachCardRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | name_on_card | String |  |
 | refresh | Bool | Refresh cache flag. |
 | nickname | String |  |
 | card_id | String | Card token of payment gateway. |

---


 
 
 #### [AttachCardsResponse](#AttachCardsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String | Human readable message. |
 | data | [String: Any] | List of cards of customer. |
 | success | Bool | Response is successful or not. |

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
 | cards | CardPaymentGateway | Card's payment gateway with customer id. |
 | message | String | Human readable message. |
 | success | Bool | Response is successful or not. |

---


 
 
 #### [Card](#Card)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | expired | Bool | expired |
 | card_name | String | card_name |
 | card_isin | String | card_isin |
 | card_number | String | card_number |
 | card_fingerprint | String | card_fingerprint |
 | exp_month | Int | exp_month |
 | card_type | String | card_type |
 | card_brand | String | card_brand |
 | card_reference | String | card_reference |
 | card_id | String | card_id |
 | card_token | String | card_token |
 | card_issuer | String | card_issuer |
 | nickname | String | nickname |
 | exp_year | Int | exp_year |
 | card_brand_image | String | card_brand_image |
 | aggregator_name | String | aggregator_name |

---


 
 
 #### [ListCardsResponse](#ListCardsResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String | Human readable message. |
 | data | [Card] | List of cards of customer. |
 | success | Bool | Response is successful or not. |

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
 | transaction_amount_in_paise | Int | Payable amount in paise |
 | payload | String | Hashed payload string. |
 | merchant_params | [String: Any] | Extra meta fields. |
 | phone_number | String | User mobile number without country code. |
 | aggregator | String | Payment gateway name in camel case i.e Simpl, Rupifi |

---


 
 
 #### [ValidateCustomerResponse](#ValidateCustomerResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String | Error or success message. |
 | data | [String: Any] | Payment gateway response data |
 | success | Bool | Response is successful or not |

---


 
 
 #### [ChargeCustomerRequest](#ChargeCustomerRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | amount | Int | Chargable amount of order. |
 | order_id | String | Unique order id. |
 | aggregator | String | Payment gateway name i.e Simpl, Mswipe |
 | verified | Bool | Already Verified flag from payment gateway i.e Mswipe |
 | transaction_token | String | Transaction token of payment gateway. |

---


 
 
 #### [ChargeCustomerResponse](#ChargeCustomerResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | success | Bool | Response is successful or not. |
 | order_id | String | Unique order id. |
 | aggregator | String | Payment gateway name i.e Simpl, Mswipe |
 | message | String | Human readable message. |
 | delivery_address_id | String | Delivery adddress id of customer |
 | status | String | Status of charged payment. |
 | cart_id | String | Cart id of customer |

---


 
 
 #### [PaymentInitializationRequest](#PaymentInitializationRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | customer_id | String | Payment gateway customer id. |
 | timeout | Int | Payment polling timeout if not recieved response |
 | merchant_order_id | String | Unique fynd order id |
 | aggregator | String | Payment gateway name |
 | virtual_id | String | Bharat QR code virtual id |
 | razorpay_payment_id | String | Payment gateway payment id |
 | polling_url | String | Polling url to check payment status |
 | method | String | Payment method |
 | aggregator_order_id | String | Payment gateway order id |

---


 
 
 #### [PaymentInitializationResponse](#PaymentInitializationResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | amount | Int | Payable amount. |
 | customer_id | String | Payment gateway customer id. |
 | bqr_image | String | Bharath qr image url. |
 | timeout | Int | timeout. |
 | merchant_order_id | String | order id |
 | success | Bool | Response is successful or not. |
 | vpa | String | Customer vpa address |
 | currency | String | Currency code. |
 | aggregator | String | Payment gateway name |
 | virtual_id | String | Payment virtual address. |
 | razorpay_payment_id | String | Payment  id. |
 | polling_url | String | Polling url. |
 | method | String | Payment method |
 | status | String | Status of payment. |
 | aggregator_order_id | String | Payment order id |

---


 
 
 #### [PaymentStatusUpdateRequest](#PaymentStatusUpdateRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | amount | Int | Payable amount. |
 | customer_id | String | Payment gateway customer id. |
 | merchant_order_id | String | Unique fynd order id |
 | email | String | Customer valid email |
 | vpa | String | Customer vpa address |
 | order_id | String | Payment gateway order id |
 | aggregator | String | Payment gateway name |
 | currency | String | Currency code. |
 | contact | String | Customer valid mobile number |
 | method | String | Payment method |
 | status | String | Status of payment. |

---


 
 
 #### [PaymentStatusUpdateResponse](#PaymentStatusUpdateResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | aggregator_name | String | Payment gateway name |
 | retry | Bool | Response is successful or not. |
 | status | String | Payment status |

---


 
 
 #### [AggregatorRoute](#AggregatorRoute)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | payment_flow | String | payment_flow |
 | data | [String: Any] | Data |
 | api_link | String | api_link |

---


 
 
 #### [PaymentFlow](#PaymentFlow)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | simpl | AggregatorRoute | simpl |
 | rupifi | AggregatorRoute | Rupifi |
 | msipe | AggregatorRoute | mswipe |
 | bqr_razorpay | AggregatorRoute | BQR_Razorpay |
 | payubiz | AggregatorRoute | Payubiz |
 | fynd | AggregatorRoute | Fynd |
 | upi_razorpay | AggregatorRoute | UPI_Razorpay |
 | juspay | AggregatorRoute | Juspay |
 | ccavenue | AggregatorRoute | Ccavenue |
 | stripe | AggregatorRoute | Stripe |
 | razorpay | AggregatorRoute | Razorpay |

---


 
 
 #### [PaymentModeLogo](#PaymentModeLogo)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | small | String | smalll |
 | large | String | large |

---


 
 
 #### [PaymentModeList](#PaymentModeList)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | code | String | code |
 | card_isin | String | card_isin |
 | intent_flow | String | intent_flow |
 | timeout | Int | timeout |
 | nickname | String | nickname |
 | card_id | String | card_id |
 | card_token | String | card_token |
 | card_issuer | String | card_issuer |
 | display_name | String | display name |
 | fynd_vpa | String | fynd_vpa |
 | card_type | String | card_type |
 | exp_year | Int | exp_year |
 | logo_url | PaymentModeLogo | Logo |
 | card_fingerprint | String | card_fingerprint |
 | merchant_code | String | merchant code |
 | card_reference | String | card_reference |
 | exp_month | Int | exp_month |
 | expired | Bool | expired |
 | intent_app_error_list | [String] | intent_app_error_list |
 | retry_count | Int | retry_count |
 | card_number | String | card_number |
 | aggregator_name | String | aggregator_name |
 | display_priority | Int | Dispaly Priority |
 | name | String | name |
 | card_brand_image | String | card_brand_image |
 | card_brand | String | card_brand |
 | card_name | String | card_name |

---


 
 
 #### [RootPaymentMode](#RootPaymentMode)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | display_name | String | Payment mode display name |
 | add_card_enabled | Bool | Annonymous card flag |
 | display_priority | Int | Dispaly Priority |
 | name | String | Payment mode name |
 | anonymous_enable | Bool | Annonymous card flag |
 | list | [PaymentModeList] | Payment mode |
 | aggregator_name | String | Dispaly Priority |

---


 
 
 #### [PaymentOptionAndFlow](#PaymentOptionAndFlow)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | payment_flows | PaymentFlow | payment_flows |
 | payment_option | [RootPaymentMode] | Payment options |

---


 
 
 #### [PaymentModeRouteResponse](#PaymentModeRouteResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | payment_options | PaymentOptionAndFlow | payment_options |
 | success | Bool | Response is successful or not |

---


 
 
 #### [RupifiBannerData](#RupifiBannerData)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | status | String | Rupifi KYC status |
 | kyc_url | String | Rupifi KYC banner url. |

---


 
 
 #### [RupifiBannerResponse](#RupifiBannerResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | data | RupifiBannerData | Rupifi KYC banner details. |
 | success | Bool | Successful or not. |

---


 
 
 #### [TransferItemsDetails](#TransferItemsDetails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | id | String |   |
 | display_name | Bool | Beneficiary Display Name |
 | logo_small | String | Beneficiary small Logo |
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
 | enable | Bool | True for enabling the Transfer Mode |
 | transfer_mode | String | Transfer Mode of the Beneficiary to be added |

---


 
 
 #### [UpdateRefundTransferModeResponse](#UpdateRefundTransferModeResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | success | Bool | Response is successful or not |

---


 
 
 #### [OrderBeneficiaryDetails](#OrderBeneficiaryDetails)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | mobile | Bool | MObile no of User |
 | account_no | String | Account Number |
 | comment | Bool | Remarks |
 | created_on | String | Creation Date of Beneficiary |
 | id | Int |   |
 | display_name | String | Display Name Of Account |
 | subtitle | String | SHort Title Of Account |
 | transfer_mode | String | Transfer Mode Of Account |
 | email | String | EMail of User |
 | branch_name | Bool | Branch Name Of Account |
 | address | String | Address of User |
 | beneficiary_id | String | Benenficiary Id |
 | ifsc_code | String | Ifsc Code Of Account |
 | title | String | Title Of Account |
 | modified_on | String | MOdification Date of Beneficiary |
 | delights_user_name | String | User Id Who filled the Beneficiary  |
 | is_active | Bool | Boolean Flag whether Beneficiary set or not |
 | account_holder | String | Account Holder Name |
 | bank_name | String | Bank Name Of Account |

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
 | code | String | Bad Request Data |
 | success | Bool | Response is successful or not |

---


 
 
 #### [IfscCodeResponse](#IfscCodeResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | branch_name | String | Branch Name Of Account |
 | bank_name | String | Bank Name Of Account |
 | success | Bool | Response is successful or not |

---


 
 
 #### [ErrorCodeDescription](#ErrorCodeDescription)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | description | String | Error human understandable description. |
 | code | String | Error descrption code. |
 | success | Bool | Response is successful or not |

---


 
 
 #### [AddBeneficiaryViaOtpVerificationRequest](#AddBeneficiaryViaOtpVerificationRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | request_id | String | Request Id sent in  |
 | hash_key | String | Hash key of the beneficiary Id |
 | otp | String | Otp sent to the given Mobile No |

---


 
 
 #### [AddBeneficiaryViaOtpVerificationResponse](#AddBeneficiaryViaOtpVerificationResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | request_id | String | Request Id of the otp  |
 | hash_key | String | Hash key of the beneficiary Id |
 | otp | String | Otp sent to the given Mobile No |

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
 | mobile | String | Moblie Number of the User |
 | ifsc_code | String | Ifsc Code of the Account |
 | wallet | String |  |
 | address | String | Address of the User |
 | vpa | String |  |
 | branch_name | String | Branch Name of the Account |
 | email | String | Email of the Account Holder |
 | comment | String | Remarks added by The user |
 | account_no | String | Account NUmber of the Account Holder |
 | account_holder | String | Name of the Account Holder |
 | bank_name | String | Bank Name of the Account |

---


 
 
 #### [AddBeneficiaryDetailsRequest](#AddBeneficiaryDetailsRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | transfer_mode | String | Transfer Mode of the Beneficiary to be added |
 | details | BeneficiaryModeDetails | Beneficiary bank details |
 | delights | Bool | True if  beneficiary to be added by delights or False if by User |
 | otp | String |  |
 | order_id | String | Merchant Order Id |
 | request_id | String |  |
 | shipment_id | String | Shipment Id of the respective Merchant Order Id |

---


 
 
 #### [RefundAccountResponse](#RefundAccountResponse)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | message | String | Response message |
 | data | [String: Any] | Refund account data. |
 | success | Bool | Success or failure flag. |

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
 | request_id | String | request id  |
 | success | Bool | Response is successful or not |

---


 
 
 #### [SetDefaultBeneficiaryRequest](#SetDefaultBeneficiaryRequest)

 | Properties | Type | Description |
 | ---------- | ---- | ----------- |
 | order_id | String | Merchant Order Id |
 | beneficiary_id | String | Beneficiary Hash Id of the beneficiary added |

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


