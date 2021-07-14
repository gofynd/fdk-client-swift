

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
    * [getSearchKeywords](#getsearchkeywords)
    * [deleteSearchKeywords](#deletesearchkeywords)
    * [updateSearchKeywords](#updatesearchkeywords)
    * [getAllSearchKeyword](#getallsearchkeyword)
    * [createCustomKeyword](#createcustomkeyword)
    * [getAutocompleteKeywordDetail](#getautocompletekeyworddetail)
    * [deleteAutocompleteKeyword](#deleteautocompletekeyword)
    * [updateAutocompleteKeyword](#updateautocompletekeyword)
    * [getAutocompleteConfig](#getautocompleteconfig)
    * [createCustomAutocompleteRule](#createcustomautocompleterule)
    * [getProductBundle](#getproductbundle)
    * [createProductBundle](#createproductbundle)
    * [getProductBundleDetail](#getproductbundledetail)
    * [updateProductBundle](#updateproductbundle)
    * [getSizeGuides](#getsizeguides)
    * [createSizeGuide](#createsizeguide)
    * [getSizeGuide](#getsizeguide)
    * [updateSizeGuide](#updatesizeguide)
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
    * [getCategoryData](#getcategorydata)
    * [updateCategory](#updatecategory)
    * [getProducts](#getproducts)
    * [createProduct](#createproduct)
    * [getProduct](#getproduct)
    * [deleteProduct](#deleteproduct)
    * [editProduct](#editproduct)
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
| body | ProductCreateUpdate |  yes  | Request body |


This API allows to create product.

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
| body | InventoryRequest |  yes  | Request body |


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
| body | BulkJob |  yes  | Request body |


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
 | phone_code | String |  no  |  |
 | type | String |  no  |  |
 | uid | Int |  no  |  |
 | __v | Int |  no  |  |
 | _id | String |  no  |  |
 | default_currency | [LocationDefaultCurrency](#LocationDefaultCurrency) |  no  |  |
 | default_language | [LocationDefaultLanguage](#LocationDefaultLanguage) |  no  |  |

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
 | item_total | Int |  no  |  |
 | next_id | String |  no  |  |
 | has_previous | Bool |  no  |  |
 | has_next | Bool |  no  |  |
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
 | header_image | String |  no  | Header image that is to be shown for the form |
 | priority | [String: Any]? |  yes  | Describes the priority of the tickets created by the form |
 | should_notify | Bool |  no  | Indicates if staff should be notified when a response is received |
 | success_message | String |  no  | Success message that will be shown on submission |
 | poll_for_assignment | [PollForAssignment](#PollForAssignment) |  no  | Describes how polling will be done for the tickets createds |

---


 
 
 #### [EditCustomFormPayload](#EditCustomFormPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Title for the form |
 | inputs | [[String: Any]]? |  yes  | List of all the form components |
 | description | String |  no  | Description of the form |
 | priority | [String: Any]? |  yes  | Describes the priority of the tickets created by the form |
 | header_image | String |  no  | Header image that is to be shown for the form |
 | should_notify | Bool |  no  | Indicates if staff should be notified when a response is received |
 | login_required | Bool |  no  | Denotes if login is required to make a form response submission |
 | success_message | String |  no  | Success message that will be shown on submission |
 | poll_for_assignment | [PollForAssignment](#PollForAssignment) |  no  | Describes how polling will be done for the tickets createds |

---


 
 
 #### [EditTicketPayload](#EditTicketPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | content | [TicketContent](#TicketContent) |  no  | Ticket conetent details |
 | category | String |  no  | Category assigned to the ticket |
 | sub_category | String |  no  | Sub-category assigned to the ticket |
 | source | String |  no  | Denotes if the ticket was created at company or application level |
 | status | String |  no  | Denotes in what state is the ticket |
 | priority | [String: Any] |  no  | Denotes the priority of ticket |
 | assigned_to | [AgentChangePayload](#AgentChangePayload) |  no  | Details of support staff to whom ticket is assigned |
 | tags | [String] |  no  | Tags relevant to ticket |

---


 
 
 #### [AgentChangePayload](#AgentChangePayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | agent_id | String? |  yes  | Agent's unique ID |

---


 
 
 #### [CreateVideoRoomResponse](#CreateVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unique_name | String? |  yes  | Video Room's unique name |

---


 
 
 #### [CloseVideoRoomResponse](#CloseVideoRoomResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Denotes if operation was successfully |

---


 
 
 #### [CreateVideoRoomPayload](#CreateVideoRoomPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unique_name | String? |  yes  | Ticket id |
 | notify | [[NotifyUser](#NotifyUser)] |  no  | List of people to be notified |

---


 
 
 #### [NotifyUser](#NotifyUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country_code | String? |  yes  | Country code |
 | phone_number | String? |  yes  | Phone number |

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
 | access_token | String? |  yes  | Access token to be used for video room |

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
 | country_code | Int |  no  | Country code |

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
 | application_id | String |  no  | Application ID related to the ticket |
 | company_id | String? |  yes  | Company ID related to the ticket |

---


 
 
 #### [CreatedOn](#CreatedOn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user_agent | String? |  yes  | Useragent details |

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
 | created_by | [String: Any] |  no  | Creator of the ticket |
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
 | sub_categories | [[TicketSubCategory](#TicketSubCategory)] |  no  | Sub-category related to the category |
 | feedback_form | [TicketFeedbackForm](#TicketFeedbackForm) |  no  | Feedback form of category used to submit ticket feedback |

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
 | form_response | [String: Any] |  no  | Key-value pairs of all the form fields and their response |

---


 
 
 #### [SubmitButton](#SubmitButton)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String? |  yes  | Title for submit button |
 | title_color | String? |  yes  | Title color submit button |
 | background_color | String? |  yes  | Color for submit button |

---


 
 
 #### [PollForAssignment](#PollForAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | duration | Double? |  yes  | Duration for polling of staff |
 | message | String? |  yes  | Message for polling |
 | success_message | String? |  yes  | Message for successful polling |
 | failure_message | String? |  yes  | Message if polling failed |

---


 
 
 #### [CustomForm](#CustomForm)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application_id | String? |  yes  | Application ID for form |
 | slug | String? |  yes  | Slug for the form, which is to be used for accessing the form |
 | header_image | String |  no  | Form header image that will be shown to the user |
 | title | String? |  yes  | Form title that will be shown to the user |
 | description | String |  no  | Form description that will be shown to the user |
 | priority | [Priority](#Priority)? |  yes  | Sets priority of tickets created by form response |
 | login_required | Bool? |  yes  | Denotes if login is required to make a form response submission |
 | should_notify | Bool? |  yes  | Denotes if new response submission for the form should be notified to the assignees |
 | success_message | String |  no  | Message that is to be shown on succesfull form response submission |
 | submit_button | [SubmitButton](#SubmitButton) |  no  | Details for submit button |
 | inputs | [[String: Any]]? |  yes  | List of all the form fields |
 | created_on | [CreatedOn](#CreatedOn) |  no  | Gives details of when the form was created |
 | created_by | [String: Any] |  no  | Gives details of user who created the form |
 | poll_for_assignment | [PollForAssignment](#PollForAssignment) |  no  | Details of how polling should be done for support |
 | _id | String? |  yes  | Unique identifier for the form |

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
 | _id | String? |  yes  | Unique identifier for the feedback |
 | ticket_id | String? |  yes  | Readable ticket number |
 | company_id | String? |  yes  | Company id for which ticket was raised |
 | response | [[FeedbackResponseItem](#FeedbackResponseItem)]? |  yes  |  |
 | category | String |  no  | Category of the ticket |
 | user | [String: Any] |  no  | User who submitted the feedback |
 | updated_at | String |  no  | Time when the feedback was last updated |
 | created_at | String |  no  | Time when the feedback was created |

---


 
 
 #### [TicketHistory](#TicketHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String? |  yes  | Type of the history event |
 | value | [String: Any]? |  yes  | Data of the history event |
 | ticket_id | String? |  yes  | Readable ticket number |
 | created_on | [CreatedOn](#CreatedOn) |  no  | Time of creation of the history event |
 | created_by | [String: Any] |  no  | User who created the history event |
 | _id | String? |  yes  | Unique identifier of the history event |
 | updated_at | String |  no  | Time of last update of the history event |
 | created_at | String |  no  | Time of creation of the history event |

---


 
 
 #### [Ticket](#Ticket)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | context | [TicketContext](#TicketContext) |  no  | Details of company and application realated to the ticket |
 | created_on | [CreatedOn](#CreatedOn) |  no  | Details of company and application realated to the ticket |
 | response_id | String |  no  | Details of company and application realated to the ticket |
 | content | [TicketContent](#TicketContent) |  no  | Ticket conetent details |
 | ticket_id | String? |  yes  | Readable ticket number |
 | category | [TicketCategory](#TicketCategory)? |  yes  | Category assigned to the ticket |
 | sub_category | [TicketSubCategory](#TicketSubCategory) |  no  | Sub-category assigned to the ticket |
 | source | [String: Any]? |  yes  | Denotes if the ticket was created at company or application level |
 | status | [Status](#Status)? |  yes  | Denotes in what state is the ticket |
 | priority | [Priority](#Priority)? |  yes  | Denotes the priority of ticket |
 | created_by | [String: Any] |  no  | User details of ticket creator |
 | assigned_to | [String: Any] |  no  | Details of support staff to whom ticket is assigned |
 | tags | [String] |  no  | Tags relevant to ticket |
 | _custom_json | [String: Any] |  no  | custom json relevant to the ticket |
 | is_feedback_pending | Bool |  no  | Denotes if feedback submission is pending for the ticket |
 | _id | String? |  yes  | Unique identifier for the ticket |
 | updated_at | String |  no  | Time when the ticket was last updated |
 | created_at | String |  no  | Time when the ticket was created |

---




 
 
 #### [Activity](#Activity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current_state | [String: Any] |  no  |  |
 | document_id | String |  no  |  |
 | previous_state | [String: Any] |  no  |  |

---


 
 
 #### [ActivityDump](#ActivityDump)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activity | [Activity](#Activity) |  no  |  |
 | created_by | [CreatedBy](#CreatedBy) |  no  |  |
 | date_meta | [DateMeta](#DateMeta) |  no  |  |
 | id | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [AddMediaListRequest](#AddMediaListRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | entity_id | String |  no  |  |
 | entity_type | String |  no  |  |
 | media_list | [[AddMediaRequest](#AddMediaRequest)] |  no  |  |
 | ref_id | String |  no  |  |
 | ref_type | String |  no  |  |

---


 
 
 #### [AddMediaRequest](#AddMediaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cloud_id | String |  no  |  |
 | cloud_name | String |  no  |  |
 | cloud_provider | String |  no  |  |
 | entity_id | String |  no  |  |
 | entity_type | String |  no  |  |
 | media_url | String |  no  |  |
 | ref_id | String |  no  |  |
 | ref_type | String |  no  |  |
 | tags | [String] |  no  |  |
 | thumbnail_url | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [ApproveRequest](#ApproveRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | approve | Bool |  no  |  |
 | entity_type | String |  no  |  |
 | id | String? |  yes  |  |
 | reason | String |  no  |  |

---


 
 
 #### [Attribute](#Attribute)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | date_meta | [DateMeta](#DateMeta) |  no  |  |
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
 | created_on | String |  no  |  |
 | modified_on | String |  no  |  |

---


 
 
 #### [DeviceMeta](#DeviceMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app_version | String |  no  |  |
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
 | entity_id | String |  no  |  |
 | entity_type | String |  no  |  |

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
 | request_id | String |  no  |  |
 | stack_trace | String |  no  |  |
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
 | max_count | Int |  no  |  |
 | size | Int |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [MediaMetaRequest](#MediaMetaRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | max_count | Int? |  yes  |  |
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
 | has_next | Bool |  no  |  |
 | has_previous | Bool |  no  |  |
 | item_total | Int |  no  |  |
 | next_id | String |  no  |  |
 | size | Int? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [PageNumber](#PageNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | current | Int |  no  |  |
 | has_next | Bool |  no  |  |
 | item_total | Int |  no  |  |
 | size | Int |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [Rating](#Rating)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attributes | [[Attribute](#Attribute)] |  no  |  |
 | attributes_slugs | [String] |  no  |  |
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
 | entity_id | String? |  yes  |  |
 | entity_type | String? |  yes  |  |

---


 
 
 #### [Review](#Review)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | header | String |  no  |  |
 | image_meta | [MediaMeta](#MediaMeta) |  no  |  |
 | title | String |  no  |  |
 | video_meta | [MediaMeta](#MediaMeta) |  no  |  |
 | vote_allowed | Bool |  no  |  |

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
 | image_meta | [MediaMetaRequest](#MediaMetaRequest)? |  yes  |  |
 | is_vote_allowed | Bool? |  yes  |  |
 | title | String? |  yes  |  |
 | video_meta | [MediaMetaRequest](#MediaMetaRequest)? |  yes  |  |

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
 | date_meta | [DateMeta](#DateMeta) |  no  |  |
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
 | enable_media_type | String |  no  | image | video | any |
 | enable_qna | Bool |  no  |  |
 | enable_rating | Bool? |  yes  |  |
 | enable_review | Bool? |  yes  |  |
 | entity | [EntityRequest](#EntityRequest)? |  yes  |  |
 | rating | [RatingRequest](#RatingRequest)? |  yes  |  |
 | review | [ReviewRequest](#ReviewRequest)? |  yes  |  |

---


 
 
 #### [TemplateRequestList](#TemplateRequestList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template_list | [[TemplateRequest](#TemplateRequest)]? |  yes  |  |

---


 
 
 #### [UI](#UI)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | feedback_question | [String] |  no  |  |
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
 | attributes_rating | [[AttributeObject](#AttributeObject)] |  no  |  |
 | description | String |  no  |  |
 | device_meta | [DeviceMeta](#DeviceMeta) |  no  |  |
 | entity_id | String |  no  |  |
 | entity_type | String |  no  |  |
 | media_resource | [[MediaMeta](#MediaMeta)] |  no  |  |
 | rating | Double |  no  |  |
 | review_id | String |  no  |  |
 | template_id | String |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [UpdateTemplateRequest](#UpdateTemplateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | active | Bool? |  yes  |  |
 | enable_media_type | String |  no  | image | video | any |
 | enable_qna | Bool |  no  |  |
 | enable_rating | Bool? |  yes  |  |
 | enable_review | Bool? |  yes  |  |
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
 | sections_meta | [[AvailablePageSectionMetaAttributes](#AvailablePageSectionMetaAttributes)] |  no  |  |
 | theme | String |  no  |  |
 | seo | [AvailablePageSeo](#AvailablePageSeo) |  no  |  |
 | props | [[String: Any]] |  no  |  |
 | _id | String |  no  |  |

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
 | _id | String |  no  |  |

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
 | exact_url | String |  no  |  |
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
 | item_total | Int |  no  |  |
 | has_next | Bool |  no  |  |
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
 | theme_id | String |  no  |  |

---


 
 
 #### [UpgradableThemeSchema](#UpgradableThemeSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | parent_theme | String |  no  |  |
 | applied_theme | String |  no  |  |
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
 | last_modified | String |  no  |  |
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
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | version | String |  no  |  |
 | parent_theme_version | String |  no  |  |
 | parent_theme | String |  no  |  |
 | information | [Information](#Information) |  no  |  |
 | tags | [String] |  no  |  |
 | src | [Src](#Src) |  no  |  |
 | assets | [AssetsSchema](#AssetsSchema) |  no  |  |
 | available_sections | [[availableSectionSchema](#availableSectionSchema)] |  no  |  |
 | constants | [String: Any] |  no  |  |
 | styles | [String: Any] |  no  |  |
 | config | [Config](#Config) |  no  |  |
 | settings | [String: Any] |  no  |  |
 | font | [Font](#Font) |  no  |  |
 | _id | String |  no  |  |
 | __v | Int |  no  |  |
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
 | umd_js | [UmdJs](#UmdJs) |  no  |  |
 | common_js | [CommonJs](#CommonJs) |  no  |  |
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
 | global_schema | [GlobalSchema](#GlobalSchema) |  no  |  |
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
 | bg_color | String |  no  |  |
 | primary_color | String |  no  |  |
 | secondary_color | String |  no  |  |
 | accent_color | String |  no  |  |
 | link_color | String |  no  |  |
 | button_secondary_color | String |  no  |  |

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
 | semi_bold | [SemiBold](#SemiBold) |  no  |  |
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
 | country_code | String |  no  |  |
 | phone | String |  no  |  |
 | primary | Bool |  no  |  |

---


 
 
 #### [EditMobileRequestSchema](#EditMobileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country_code | String |  no  |  |
 | phone | String |  no  |  |

---


 
 
 #### [EditProfileRequestSchema](#EditProfileRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | first_name | String |  no  |  |
 | last_name | String |  no  |  |
 | mobile | [EditProfileMobileSchema](#EditProfileMobileSchema) |  no  |  |
 | country_code | String |  no  |  |
 | email | String |  no  |  |
 | gender | String |  no  |  |
 | dob | String |  no  |  |
 | profile_pic_url | String |  no  |  |
 | android_hash | String |  no  |  |
 | sender | String |  no  |  |
 | register_token | String |  no  |  |

---


 
 
 #### [EditProfileMobileSchema](#EditProfileMobileSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | String |  no  |  |
 | country_code | String |  no  |  |

---


 
 
 #### [SendEmailOtpRequestSchema](#SendEmailOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | action | String |  no  |  |
 | token | String |  no  |  |
 | register_token | String |  no  |  |

---


 
 
 #### [VerifyEmailOtpRequestSchema](#VerifyEmailOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | action | String |  no  |  |
 | register_token | String |  no  |  |
 | otp | String |  no  |  |

---


 
 
 #### [VerifyOtpRequestSchema](#VerifyOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | request_id | String |  no  |  |
 | register_token | String |  no  |  |
 | otp | String |  no  |  |

---


 
 
 #### [SendMobileOtpRequestSchema](#SendMobileOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String |  no  |  |
 | country_code | String |  no  |  |
 | action | String |  no  |  |
 | token | String |  no  |  |
 | android_hash | String |  no  |  |
 | force | String |  no  |  |
 | captcha_code | String |  no  |  |

---


 
 
 #### [UpdatePasswordRequestSchema](#UpdatePasswordRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | old_password | String |  no  |  |
 | new_password | String |  no  |  |

---


 
 
 #### [FormRegisterRequestSchema](#FormRegisterRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | first_name | String |  no  |  |
 | last_name | String |  no  |  |
 | gender | String |  no  |  |
 | email | String |  no  |  |
 | password | String |  no  |  |
 | phone | [FormRegisterRequestSchemaPhone](#FormRegisterRequestSchemaPhone) |  no  |  |
 | register_token | String |  no  |  |

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
 | captcha_code | String |  no  |  |

---


 
 
 #### [PasswordLoginRequestSchema](#PasswordLoginRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | captcha_code | String |  no  |  |
 | password | String |  no  |  |
 | username | String |  no  |  |

---


 
 
 #### [SendOtpRequestSchema](#SendOtpRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country_code | String |  no  |  |
 | captcha_code | String |  no  |  |
 | mobile | String |  no  |  |

---


 
 
 #### [OAuthRequestSchema](#OAuthRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_signed_in | Bool |  no  |  |
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
 | register_token | String |  no  |  |
 | user_exists | Bool |  no  |  |
 | user | [UserSchema](#UserSchema) |  no  |  |

---


 
 
 #### [SendOtpResponse](#SendOtpResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | resend_timer | Int |  no  |  |
 | resend_token | String |  no  |  |
 | success | Bool |  no  |  |
 | request_id | String |  no  |  |
 | message | String |  no  |  |
 | mobile | String |  no  |  |
 | country_code | String |  no  |  |
 | email | String |  no  |  |
 | resend_email_token | String |  no  |  |
 | register_token | String |  no  |  |
 | verify_email_otp | Bool |  no  |  |
 | verify_mobile_otp | Bool |  no  |  |
 | user_exists | Bool |  no  |  |

---


 
 
 #### [ProfileEditSuccess](#ProfileEditSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |
 | register_token | String |  no  |  |
 | user_exists | Bool |  no  |  |
 | verify_email_link | Bool |  no  |  |
 | verify_email_otp | Bool |  no  |  |
 | verify_mobile_otp | Bool |  no  |  |
 | email | String |  no  |  |

---


 
 
 #### [LoginSuccess](#LoginSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |
 | request_id | String |  no  |  |
 | register_token | String |  no  |  |

---


 
 
 #### [VerifyOtpSuccess](#VerifyOtpSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |
 | user_exists | Bool |  no  |  |
 | register_token | String |  no  |  |

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
 | resend_timer | Int |  no  |  |
 | resend_token | String |  no  |  |
 | resend_email_token | String |  no  |  |
 | register_token | String |  no  |  |
 | success | Bool |  no  |  |
 | request_id | String |  no  |  |
 | message | String |  no  |  |
 | mobile | String |  no  |  |
 | country_code | String |  no  |  |
 | verify_email_otp | Bool |  no  |  |
 | verify_mobile_otp | Bool |  no  |  |
 | user_exists | Bool |  no  |  |

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
 | resend_timer | Int |  no  |  |
 | resend_token | String |  no  |  |
 | register_token | String |  no  |  |
 | success | Bool |  no  |  |
 | request_id | String |  no  |  |
 | message | String |  no  |  |
 | mobile | String |  no  |  |
 | country_code | String |  no  |  |

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
 | verify_mobile_link | Bool |  no  |  |

---


 
 
 #### [VerifyEmailOTPSuccess](#VerifyEmailOTPSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [UserSchema](#UserSchema) |  no  |  |
 | verify_email_link | Bool |  no  |  |

---


 
 
 #### [SendMobileVerifyLinkSuccess](#SendMobileVerifyLinkSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verify_mobile_link | Bool |  no  |  |

---


 
 
 #### [SendEmailVerifyLinkSuccess](#SendEmailVerifyLinkSuccess)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verify_email_link | Bool |  no  |  |

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
 | verify_email_otp | Bool |  no  |  |
 | verify_email_link | Bool |  no  |  |
 | verify_mobile_otp | Bool |  no  |  |
 | user | String |  no  |  |
 | register_token | String |  no  |  |
 | user_exists | Bool |  no  |  |

---


 
 
 #### [FormRegisterRequestSchemaPhone](#FormRegisterRequestSchemaPhone)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country_code | String |  no  |  |
 | mobile | String |  no  |  |

---


 
 
 #### [OAuthRequestSchemaOauth2](#OAuthRequestSchemaOauth2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | access_token | String |  no  |  |
 | expiry | Int |  no  |  |
 | refresh_token | String |  no  |  |

---


 
 
 #### [OAuthRequestSchemaProfile](#OAuthRequestSchemaProfile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | last_name | String |  no  |  |
 | image | String |  no  |  |
 | id | String |  no  |  |
 | email | String |  no  |  |
 | full_name | String |  no  |  |
 | first_name | String |  no  |  |

---


 
 
 #### [AuthSuccessUser](#AuthSuccessUser)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | first_name | String |  no  |  |
 | last_name | String |  no  |  |
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
 | phone_number | String? |  yes  |  |
 | email | String |  no  |  |
 | first_name | String |  no  |  |
 | last_name | String |  no  |  |
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
 | max_age | Double |  no  |  |
 | user_id | String |  no  |  |

---


 
 
 #### [CreateUserSessionResponseSchema](#CreateUserSessionResponseSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | domain | String |  no  |  |
 | max_age | Double |  no  |  |
 | secure | Bool |  no  |  |
 | http_only | Bool |  no  |  |
 | cookie | [String: Any] |  no  |  |

---


 
 
 #### [PlatformSchema](#PlatformSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display | String |  no  |  |
 | look_and_feel | [LookAndFeel](#LookAndFeel) |  no  |  |
 | updated_at | String |  no  |  |
 | active | Bool |  no  |  |
 | forgot_password | Bool |  no  |  |
 | login | [Login](#Login) |  no  |  |
 | skip_captcha | Bool |  no  |  |
 | name | String |  no  |  |
 | meta | [MetaSchema](#MetaSchema) |  no  |  |
 | _id | String |  no  |  |
 | social | [Social](#Social) |  no  |  |
 | required_fields | [RequiredFields](#RequiredFields) |  no  |  |
 | register_required_fields | [RegisterRequiredFields](#RegisterRequiredFields) |  no  |  |
 | skip_login | Bool |  no  |  |
 | flash_card | [FlashCard](#FlashCard) |  no  |  |
 | subtext | String |  no  |  |
 | social_tokens | [SocialTokens](#SocialTokens) |  no  |  |
 | created_at | String |  no  |  |
 | register | Bool |  no  |  |
 | mobile_image | String |  no  |  |
 | desktop_image | String |  no  |  |

---


 
 
 #### [LookAndFeel](#LookAndFeel)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | card_position | String |  no  |  |
 | background_color | String |  no  |  |

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
 | fynd_default | Bool |  no  |  |

---


 
 
 #### [Social](#Social)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | account_kit | Bool |  no  |  |
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
 | is_required | Bool |  no  |  |
 | level | String |  no  |  |

---


 
 
 #### [PlatformMobile](#PlatformMobile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_required | Bool |  no  |  |
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
 | is_required | Bool |  no  |  |
 | level | String |  no  |  |

---


 
 
 #### [RegisterRequiredFieldsMobile](#RegisterRequiredFieldsMobile)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_required | Bool |  no  |  |
 | level | String |  no  |  |

---


 
 
 #### [FlashCard](#FlashCard)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | text_color | String |  no  |  |
 | background_color | String |  no  |  |

---


 
 
 #### [SocialTokens](#SocialTokens)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [Facebook](#Facebook) |  no  |  |
 | account_kit | [Accountkit](#Accountkit) |  no  |  |
 | google | [Google](#Google) |  no  |  |

---


 
 
 #### [Facebook](#Facebook)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app_id | String |  no  |  |

---


 
 
 #### [Accountkit](#Accountkit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app_id | String |  no  |  |

---


 
 
 #### [Google](#Google)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app_id | String |  no  |  |

---


 
 
 #### [UpdateUserRequestSchema](#UpdateUserRequestSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | first_name | String |  no  |  |
 | last_name | String |  no  |  |
 | gender | String |  no  |  |
 | meta | [String: Any] |  no  |  |

---


 
 
 #### [UserSchema](#UserSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | first_name | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | last_name | String |  no  |  |
 | phone_numbers | [[PhoneNumber](#PhoneNumber)] |  no  |  |
 | emails | [[Email](#Email)] |  no  |  |
 | gender | String |  no  |  |
 | dob | String |  no  |  |
 | active | Bool |  no  |  |
 | profile_pic_url | String |  no  |  |
 | username | String |  no  |  |
 | account_type | String |  no  |  |
 | uid | String |  no  |  |
 | debug | [Debug](#Debug) |  no  |  |
 | has_old_password_hash | Bool |  no  |  |
 | _id | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |

---




 
 
 #### [ApplicationLegal](#ApplicationLegal)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application | String |  no  |  |
 | tnc | String |  no  |  |
 | policy | String |  no  |  |
 | shipping | String |  no  |  |
 | faq | [[ApplicationLegalFAQ](#ApplicationLegalFAQ)] |  no  |  |
 | _id | String |  no  |  |
 | updated_at | String |  no  |  |
 | created_at | String |  no  |  |

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
 | _id | String |  no  |  |
 | robots_txt | String |  no  |  |
 | sitemap_enabled | Bool |  no  |  |
 | custom_meta_tags | [[CustomMetaTag](#CustomMetaTag)] |  no  |  |
 | details | [Detail](#Detail) |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |

---


 
 
 #### [CustomMetaTag](#CustomMetaTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | content | String |  no  |  |
 | _id | String |  no  |  |

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
 | page_slug | String |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [EditorMeta](#EditorMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | foreground_color | String |  no  |  |
 | background_color | String |  no  |  |
 | content_type | String |  no  |  |
 | content | String |  no  |  |

---


 
 
 #### [AnnouncementAuthorSchema](#AnnouncementAuthorSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | created_by | String |  no  |  |
 | modified_by | String |  no  |  |

---


 
 
 #### [AdminAnnouncementSchema](#AdminAnnouncementSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | platforms | [String] |  no  |  |
 | title | String |  no  |  |
 | announcement | String |  no  |  |
 | pages | [[AnnouncementPageSchema](#AnnouncementPageSchema)] |  no  |  |
 | editor_meta | [EditorMeta](#EditorMeta) |  no  |  |
 | author | [AnnouncementAuthorSchema](#AnnouncementAuthorSchema) |  no  |  |
 | created_at | String |  no  |  |
 | app | String |  no  |  |
 | modified_at | String |  no  |  |
 | _schedule | [ScheduleSchema](#ScheduleSchema) |  no  |  |

---


 
 
 #### [ScheduleSchema](#ScheduleSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String |  no  |  |
 | start | String |  no  |  |
 | end | String |  no  |  |
 | duration | Double |  no  |  |
 | next_schedule | [[NextSchedule](#NextSchedule)] |  no  |  |

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
 | aspect_ratio | String |  no  |  |
 | id | String |  no  |  |
 | secure_url | String |  no  |  |

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
 | _id | String |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | application | String |  no  |  |
 | archived | Bool |  no  |  |
 | author | [Author](#Author) |  no  |  |
 | content | [[ResourceContent](#ResourceContent)] |  no  |  |
 | feature_image | [Asset](#Asset) |  no  |  |
 | published | Bool |  no  |  |
 | reading_time | String |  no  |  |
 | slug | String |  no  |  |
 | tags | [String] |  no  |  |
 | seo | [SEO](#SEO) |  no  |  |
 | _schedule | [CronSchedule](#CronSchedule) |  no  |  |
 | title | String |  no  |  |
 | date_meta | [DateMeta](#DateMeta) |  no  |  |

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
 | _custom_json | [String: Any] |  no  |  |
 | author | [Author](#Author) |  no  |  |
 | content | [[ResourceContent](#ResourceContent)] |  no  |  |
 | feature_image | [Asset](#Asset) |  no  |  |
 | published | Bool |  no  |  |
 | reading_time | String |  no  |  |
 | slug | String |  no  |  |
 | tags | [String] |  no  |  |
 | title | String |  no  |  |
 | seo | [SEO](#SEO) |  no  |  |
 | _schedule | [CronSchedule](#CronSchedule) |  no  |  |

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
 | created_by | [CreatedBySchema](#CreatedBySchema) |  no  |  |
 | date_meta | [DateMeta](#DateMeta) |  no  |  |
 | _id | String |  no  |  |
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
 | en_us | [Language](#Language) |  no  |  |

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
 | _locale_language | [LocaleLanguage](#LocaleLanguage) |  no  |  |
 | image | String |  no  |  |
 | type | String |  no  |  |
 | action | [Action](#Action) |  no  |  |
 | active | Bool |  no  |  |
 | display | String |  no  |  |
 | sort_order | Int |  no  |  |
 | sub_navigation | [[NavigationReference](#NavigationReference)] |  no  |  |

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
 | sleep_time | Int |  no  |  |
 | start_on_launch | Bool |  no  |  |
 | duration | Int |  no  |  |
 | slide_direction | String |  no  |  |

---


 
 
 #### [SlideshowMedia](#SlideshowMedia)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | url | String |  no  |  |
 | bg_color | String |  no  |  |
 | duration | Int |  no  |  |
 | auto_decide_duration | Bool |  no  |  |
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
 | refresh_rate | Int |  no  | number of seconds after which api should hit again to fetch new announcements |
 | refresh_pages | [String] |  no  | list of page slugs on which announcement should be fetched as soon as they are loaded |

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
 | sub_type | String |  no  |  |
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
 | sub_type | String |  no  |  |
 | _id | String |  no  |  |
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
 | request_id | String |  no  |  |
 | stack_trace | String |  no  |  |
 | meta | [String: Any] |  no  |  |

---


 
 
 #### [CategorySchema](#CategorySchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | index | Int |  no  |  |
 | title | String |  no  |  |
 | description | String |  no  |  |
 | children | [String] |  no  |  |
 | _id | String |  no  |  |
 | slug | String |  no  |  |
 | application | String |  no  |  |
 | icon_url | String |  no  |  |
 | _custom_json | [String: Any] |  no  |  |

---


 
 
 #### [ChildrenSchema](#ChildrenSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | question | String |  no  |  |
 | answer | String |  no  |  |
 | slug | String |  no  |  |
 | application | String |  no  |  |
 | _id | String |  no  |  |

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
 | _id | String |  no  |  |
 | slug | String |  no  |  |
 | application | String |  no  |  |
 | icon_url | String |  no  |  |
 | _custom_json | [String: Any] |  no  |  |

---


 
 
 #### [FaqSchema](#FaqSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | slug | String |  no  |  |
 | application | String |  no  |  |
 | _id | String |  no  |  |
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
 | created_by | [CreatedBySchema](#CreatedBySchema) |  no  |  |
 | date_meta | [DateMeta](#DateMeta) |  no  |  |
 | _id | String |  no  |  |
 | application | String |  no  |  |
 | archived | Bool |  no  |  |
 | _custom_json | [String: Any] |  no  |  |

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
 | _id | String |  no  |  |
 | application | String |  no  |  |
 | archived | Bool |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | platform | [String] |  no  |  |
 | created_by | [CreatedBySchema](#CreatedBySchema) |  no  |  |
 | date_meta | [DateMeta](#DateMeta) |  no  |  |
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
 | _id | String |  no  |  |
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
 | created_by | [CreatedBySchema](#CreatedBySchema) |  no  |  |
 | date_meta | [DateMeta](#DateMeta) |  no  |  |
 | _schedule | [ScheduleSchema](#ScheduleSchema) |  no  |  |

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
 | secure_url | String |  no  |  |

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
 | page_type | String |  no  |  |
 | display_name | String |  no  |  |
 | params | [[PageSpecParam](#PageSpecParam)] |  no  |  |
 | query | [[PageSpecParam](#PageSpecParam)] |  no  |  |

---


 
 
 #### [PageSchema](#PageSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | application | String |  no  |  |
 | component_ids | [String] |  no  | Components can be used to store multiple components |
 | content | [[PageContent](#PageContent)] |  no  |  |
 | created_by | [CreatedBySchema](#CreatedBySchema) |  no  |  |
 | date_meta | [DateMeta](#DateMeta) |  no  |  |
 | description | String |  no  |  |
 | feature_image | [Asset](#Asset) |  no  |  |
 | page_meta | [[PageMeta](#PageMeta)] |  no  |  |
 | _schedule | [ScheduleSchema](#ScheduleSchema) |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
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
 | _schedule | [CronSchedule](#CronSchedule) |  no  |  |
 | application | String |  no  |  |
 | author | [Author](#Author) |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | orientation | String |  no  |  |
 | content | [[String: Any]] |  no  |  |
 | feature_image | [Asset](#Asset) |  no  |  |
 | published | Bool |  no  |  |
 | reading_time | String |  no  |  |
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
 | system_pages | [[NavigationSchema](#NavigationSchema)] |  no  |  |
 | custom_pages | [[PageSchema](#PageSchema)] |  no  |  |
 | application_id | String |  no  |  |

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
 | _id | String |  no  |  |
 | slug | String |  no  |  |
 | date_meta | [DateMeta](#DateMeta) |  no  |  |
 | application | String |  no  |  |
 | platform | String |  no  |  |
 | configuration | [ConfigurationSchema](#ConfigurationSchema) |  no  |  |
 | media | [[SlideshowMedia](#SlideshowMedia)] |  no  |  |
 | active | Bool |  no  |  |
 | archived | Bool |  no  |  |
 | _custom_json | [String: Any] |  no  |  |

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
 | _id | String |  no  |  |
 | config_type | String |  no  |  |
 | application | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
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
 | _id | String |  no  |  |
 | tags | [[TagSchema](#TagSchema)] |  no  |  |

---


 
 
 #### [TagSchema](#TagSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | url | String |  no  |  |
 | type | String |  no  |  |
 | sub_type | String |  no  |  |
 | _id | String |  no  |  |
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
 | user_id | String |  no  |  |

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
 | notification_emails | [String] |  no  |  |
 | name | String |  no  |  |
 | is_active | Bool |  no  |  |
 | code | String |  no  |  |
 | address | [AddressObject](#AddressObject) |  no  |  |
 | additional_contacts | [AdditionalContactsObject](#AdditionalContactsObject) |  no  |  |
 | timing | [[AdditionalContactsObject](#AdditionalContactsObject)] |  no  |  |
 | created_by | [CreatedModifiedByObject](#CreatedModifiedByObject) |  no  |  |
 | modified_by | [TimingObject](#TimingObject) |  no  |  |
 | created_on | String |  no  |  |
 | modified_on | String |  no  |  |

---


 
 
 #### [ItemProperties](#ItemProperties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notification_emails | [String] |  no  |  |
 | name | String |  no  |  |
 | is_active | Bool |  no  |  |
 | code | String |  no  |  |
 | address | [AddressObject](#AddressObject) |  no  |  |
 | additional_contacts | [AdditionalContactsObject](#AdditionalContactsObject) |  no  |  |
 | timing | [[AdditionalContactsObject](#AdditionalContactsObject)] |  no  |  |
 | created_by | [CreatedModifiedByObject](#CreatedModifiedByObject) |  no  |  |
 | modified_by | [TimingObject](#TimingObject) |  no  |  |
 | created_on | String |  no  |  |
 | modified_on | String |  no  |  |

---


 
 
 #### [AddressObject](#AddressObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | pincode | Double |  no  |  |
 | country | String |  no  |  |
 | country_code | String |  no  |  |

---


 
 
 #### [AdditionalContactsObject](#AdditionalContactsObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | Double |  no  |  |
 | country_code | Double |  no  |  |

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
 | datetime_check | Bool |  no  |  |
 | header | String |  no  |  |
 | instruction_for_customer | String |  no  |  |

---


 
 
 #### [PickupResponseItems](#PickupResponseItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | datetime_check | Bool |  no  |  |
 | header | String |  no  |  |
 | instruction_for_customer | String |  no  |  |
 | app_id | String |  no  |  |

---


 
 
 #### [ShippingSchema](#ShippingSchema)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | assignment | [AssignmentSchema](#AssignmentSchema) |  no  |  |
 | _id | String |  no  |  |
 | app_id | String |  no  |  |

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
 | fulfillment_priority | [FulfillmentPriorityObject](#FulfillmentPriorityObject) |  no  |  |
 | default_sort_strategy | String |  no  |  |

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
 | _id | String |  no  |  |

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
 | assignment_type | String |  no  |  |

---


 
 
 #### [StrategyObject](#StrategyObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | rules | [[StrategyItems](#StrategyItems)] |  no  |  |

---


 
 
 #### [StrategyItems](#StrategyItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | product_tags | [String] |  no  |  |
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
 | zone_detail | [ZoneDetailsObject](#ZoneDetailsObject) |  no  |  |
 | _id | String |  no  |  |

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
 | pincode_list | [Double] |  no  |  |

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
 | interval_count | Double |  no  |  |

---


 
 
 #### [Plan](#Plan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [PlanRecurring](#PlanRecurring) |  no  |  |
 | is_trial_plan | Bool |  no  |  |
 | plan_group | String |  no  |  |
 | tag_lines | [String] |  no  |  |
 | currency | String |  no  |  |
 | is_active | Bool |  no  |  |
 | is_visible | Bool |  no  |  |
 | trial_period | Double |  no  |  |
 | addons | [String] |  no  |  |
 | tags | [String] |  no  |  |
 | type | String |  no  |  |
 | country | String |  no  |  |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | amount | Double |  no  |  |
 | product_suite_id | String |  no  |  |
 | created_at | String |  no  |  |
 | modified_at | String |  no  |  |

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
 | display_text | String |  no  |  |

---


 
 
 #### [DetailedPlan](#DetailedPlan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [PlanRecurring](#PlanRecurring) |  no  |  |
 | is_trial_plan | Bool |  no  |  |
 | plan_group | String |  no  |  |
 | tag_lines | [String] |  no  |  |
 | currency | String |  no  |  |
 | is_active | Bool |  no  |  |
 | is_visible | Bool |  no  |  |
 | trial_period | Double |  no  |  |
 | addons | [String] |  no  |  |
 | tags | [String] |  no  |  |
 | type | String |  no  |  |
 | country | String |  no  |  |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | amount | Double |  no  |  |
 | product_suite_id | String |  no  |  |
 | created_at | String |  no  |  |
 | modified_at | String |  no  |  |
 | components | [[DetailedPlanComponents](#DetailedPlanComponents)] |  no  |  |

---


 
 
 #### [SubscriptionTrialPeriod](#SubscriptionTrialPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start_date | String |  no  |  |
 | end_date | String |  no  |  |

---


 
 
 #### [EntityChargePrice](#EntityChargePrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | Double? |  yes  |  |
 | currency_code | String? |  yes  |  |

---


 
 
 #### [EntityChargeRecurring](#EntityChargeRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String? |  yes  |  |
 | interval_time | Int? |  yes  |  |

---


 
 
 #### [ChargeLineItem](#ChargeLineItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | term | String? |  yes  |  |
 | pricing_type | String? |  yes  |  |
 | price | [EntityChargePrice](#EntityChargePrice)? |  yes  |  |
 | recurring | [EntityChargeRecurring](#EntityChargeRecurring) |  no  |  |
 | capped_amount | Double |  no  |  |
 | trial_days | Int |  no  |  |
 | is_test | Bool |  no  |  |
 | metadata | [String: Any] |  no  |  |

---


 
 
 #### [CreateSubscriptionCharge](#CreateSubscriptionCharge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | trial_days | Int |  no  |  |
 | line_items | [[ChargeLineItem](#ChargeLineItem)]? |  yes  |  |
 | is_test | Bool |  no  |  |
 | return_url | String? |  yes  |  |

---


 
 
 #### [CurrentPeriod](#CurrentPeriod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start_date | String |  no  |  |
 | end_date | String |  no  |  |

---


 
 
 #### [SubscriptionCharge](#SubscriptionCharge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | term | String |  no  |  |
 | pricing_type | String |  no  |  |
 | price | [EntityChargePrice](#EntityChargePrice) |  no  |  |
 | recurring | [EntityChargeRecurring](#EntityChargeRecurring) |  no  |  |
 | capped_amount | Double |  no  |  |
 | activated_on | String |  no  |  |
 | cancelled_on | String |  no  |  |
 | billing_date | String |  no  |  |
 | current_period | [CurrentPeriod](#CurrentPeriod) |  no  |  |
 | status | String |  no  |  |
 | is_test | Bool |  no  |  |
 | metadata | [String: Any] |  no  |  |

---


 
 
 #### [EntitySubscription](#EntitySubscription)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | status | String |  no  |  |
 | company_id | Int |  no  |  |
 | activated_on | String |  no  |  |
 | cancelled_on | String |  no  |  |
 | trial_days | Int |  no  |  |
 | trial_period | [SubscriptionTrialPeriod](#SubscriptionTrialPeriod) |  no  |  |
 | metadata | [String: Any] |  no  |  |
 | line_items | [[SubscriptionCharge](#SubscriptionCharge)] |  no  |  |

---


 
 
 #### [CreateSubscriptionResponse](#CreateSubscriptionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subscription | [EntitySubscription](#EntitySubscription) |  no  |  |
 | confirm_url | String |  no  |  |

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
 | address_lines | [String] |  no  |  |
 | name | String |  no  |  |
 | email | String |  no  |  |
 | phone | String |  no  |  |

---


 
 
 #### [InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | value | String |  no  |  |
 | timestamp | String |  no  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethodsDataChecks](#InvoiceDetailsPaymentMethodsDataChecks)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cvc_check | String |  no  |  |
 | address_line1_check | String |  no  |  |
 | address_postal_code_check | String |  no  |  |

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
 | exp_year | Int |  no  |  |
 | networks | [InvoiceDetailsPaymentMethodsDataNetworks](#InvoiceDetailsPaymentMethodsDataNetworks) |  no  |  |
 | exp_month | Int |  no  |  |
 | fingerprint | String |  no  |  |
 | generated_from | String |  no  |  |
 | three_d_secure_usage | [InvoiceDetailsPaymentMethodsDataThreeDSecureUsage](#InvoiceDetailsPaymentMethodsDataThreeDSecureUsage) |  no  |  |

---


 
 
 #### [InvoiceDetailsPaymentMethods](#InvoiceDetailsPaymentMethods)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | type | String |  no  |  |
 | pg_payment_method_id | String |  no  |  |
 | data | [InvoiceDetailsPaymentMethodsData](#InvoiceDetailsPaymentMethodsData) |  no  |  |
 | is_default | Bool |  no  |  |

---


 
 
 #### [InvoicePaymentMethod](#InvoicePaymentMethod)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | pg_payment_method_id | String |  no  |  |

---


 
 
 #### [InvoiceDetails](#InvoiceDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | period | [InvoiceDetailsPeriod](#InvoiceDetailsPeriod) |  no  |  |
 | client | [InvoiceDetailsClient](#InvoiceDetailsClient) |  no  |  |
 | auto_advance | Bool |  no  |  |
 | currency | String |  no  |  |
 | paid | Bool |  no  |  |
 | attemp | Int |  no  |  |
 | _id | String |  no  |  |
 | collection_method | String |  no  |  |
 | subscriber_id | String |  no  |  |
 | invoice_url | String |  no  |  |
 | number | String |  no  |  |
 | pg_data | [String: Any] |  no  |  |
 | receipt_number | String |  no  |  |
 | statement_descriptor | String |  no  |  |
 | current_status | String |  no  |  |
 | status_trail | [[InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)] |  no  |  |
 | subtotal | Double |  no  |  |
 | total | Double |  no  |  |
 | subscription | String |  no  |  |
 | next_action_time | String |  no  |  |
 | created_at | String |  no  |  |
 | modified_at | String |  no  |  |
 | hash_identifier | String |  no  |  |
 | payment_method | [InvoicePaymentMethod](#InvoicePaymentMethod) |  no  |  |

---


 
 
 #### [InvoiceItemsPlanRecurring](#InvoiceItemsPlanRecurring)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | interval | String |  no  |  |
 | interval_count | Int |  no  |  |

---


 
 
 #### [InvoiceItemsPlan](#InvoiceItemsPlan)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recurring | [InvoiceItemsPlanRecurring](#InvoiceItemsPlanRecurring) |  no  |  |
 | is_trial_plan | Bool |  no  |  |
 | plan_group | String |  no  |  |
 | tag_lines | [String] |  no  |  |
 | currency | String |  no  |  |
 | is_active | Bool |  no  |  |
 | is_visible | Bool |  no  |  |
 | trial_period | Int |  no  |  |
 | addons | [String] |  no  |  |
 | tags | [String] |  no  |  |
 | type | String |  no  |  |
 | country | String |  no  |  |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | amount | Int |  no  |  |
 | product_suite_id | String |  no  |  |
 | created_at | String |  no  |  |
 | modified_at | String |  no  |  |

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
 | _id | String |  no  |  |
 | currency | String |  no  |  |
 | plan | [InvoiceItemsPlan](#InvoiceItemsPlan) |  no  |  |
 | name | String |  no  |  |
 | quantity | Int |  no  |  |
 | description | String |  no  |  |
 | period | [InvoiceItemsPeriod](#InvoiceItemsPeriod) |  no  |  |
 | unit_amount | Double |  no  |  |
 | amount | Double |  no  |  |
 | type | String |  no  |  |
 | invoice_id | String |  no  |  |
 | created_at | String |  no  |  |
 | modified_at | String |  no  |  |

---


 
 
 #### [Invoice](#Invoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | invoice | [InvoiceDetails](#InvoiceDetails) |  no  |  |
 | invoice_items | [[InvoiceItems](#InvoiceItems)] |  no  |  |

---


 
 
 #### [InvoicesDataClient](#InvoicesDataClient)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | email | String |  no  |  |
 | phone | String |  no  |  |
 | address_lines | [String] |  no  |  |

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
 | pg_payment_method_id | String |  no  |  |

---


 
 
 #### [InvoicesData](#InvoicesData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | client | [InvoicesDataClient](#InvoicesDataClient) |  no  |  |
 | auto_advance | Bool |  no  |  |
 | currency | String |  no  |  |
 | paid | Bool |  no  |  |
 | attemp | Int |  no  |  |
 | collection_method | String |  no  |  |
 | subscriber_id | String |  no  |  |
 | invoice_url | String |  no  |  |
 | number | String |  no  |  |
 | pg_data | [String: Any] |  no  |  |
 | period | [InvoicesDataPeriod](#InvoicesDataPeriod) |  no  |  |
 | receipt_number | String |  no  |  |
 | statement_descriptor | String |  no  |  |
 | current_status | String |  no  |  |
 | status_trail | [[InvoiceDetailsStatusTrail](#InvoiceDetailsStatusTrail)] |  no  |  |
 | subtotal | Double |  no  |  |
 | total | Double |  no  |  |
 | subscription | String |  no  |  |
 | next_action_time | String |  no  |  |
 | created_at | String |  no  |  |
 | modified_at | String |  no  |  |
 | hash_identifier | String |  no  |  |
 | payment_method | [InvoicesDataPaymentMethod](#InvoicesDataPaymentMethod) |  no  |  |
 | invoice_items | [[InvoiceItems](#InvoiceItems)] |  no  |  |

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
 | phone_number | String |  no  |  |
 | phone_country_code | String |  no  |  |

---


 
 
 #### [SubscriptionBillingAddress](#SubscriptionBillingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | state | String |  no  |  |
 | city | String |  no  |  |
 | line1 | String |  no  |  |
 | line2 | String |  no  |  |
 | postal_code | String |  no  |  |

---


 
 
 #### [SubscriptionCustomer](#SubscriptionCustomer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [Phone](#Phone) |  no  |  |
 | billing_address | [SubscriptionBillingAddress](#SubscriptionBillingAddress) |  no  |  |
 | _id | String |  no  |  |
 | unique_id | String |  no  |  |
 | type | String |  no  |  |
 | name | String |  no  |  |
 | email | String |  no  |  |
 | created_at | String |  no  |  |
 | modified_at | String |  no  |  |
 | data | [String: Any] |  no  |  |

---


 
 
 #### [SubscriptionCustomerCreate](#SubscriptionCustomerCreate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | phone | [Phone](#Phone) |  no  |  |
 | billing_address | [SubscriptionBillingAddress](#SubscriptionBillingAddress) |  no  |  |
 | unique_id | String |  no  |  |
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
 | resume_at | String |  no  |  |

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
 | current_period | [SubscriptionCurrentPeriod](#SubscriptionCurrentPeriod) |  no  |  |
 | pause_collection | [SubscriptionPauseCollection](#SubscriptionPauseCollection) |  no  |  |
 | trial | [SubscriptionTrial](#SubscriptionTrial) |  no  |  |
 | invoice_settings | [SubscriptionInvoiceSettings](#SubscriptionInvoiceSettings) |  no  |  |
 | is_active | Bool |  no  |  |
 | cancel_at_period_end | Bool |  no  |  |
 | _id | String |  no  |  |
 | subscriber_id | String |  no  |  |
 | plan_id | String |  no  |  |
 | product_suite_id | String |  no  |  |
 | plan_data | [Plan](#Plan) |  no  |  |
 | current_status | String |  no  |  |
 | collection_method | String |  no  |  |
 | created_at | String |  no  |  |
 | modified_at | String |  no  |  |
 | latest_invoice | String |  no  |  |

---


 
 
 #### [SubscriptionStatus](#SubscriptionStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_enabled | Bool |  no  |  |
 | subscription | [Subscription](#Subscription) |  no  |  |

---


 
 
 #### [SubscriptionLimitApplication](#SubscriptionLimitApplication)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | hard_limit | Int |  no  |  |
 | soft_limit | Int |  no  |  |

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
 | other_platform | [SubscriptionLimitOtherPlatform](#SubscriptionLimitOtherPlatform) |  no  |  |
 | team | [SubscriptionLimitTeam](#SubscriptionLimitTeam) |  no  |  |
 | products | [SubscriptionLimitProducts](#SubscriptionLimitProducts) |  no  |  |
 | extensions | [SubscriptionLimitExtensions](#SubscriptionLimitExtensions) |  no  |  |
 | integrations | [SubscriptionLimitIntegrations](#SubscriptionLimitIntegrations) |  no  |  |
 | is_trial_plan | Bool |  no  |  |

---


 
 
 #### [SubscriptionActivateReq](#SubscriptionActivateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | unique_id | String |  no  |  |
 | type | String |  no  |  |
 | product_suite | String |  no  |  |
 | plan_id | String |  no  |  |
 | payment_method | String |  no  |  |

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
 | unique_id | String |  no  |  |
 | type | String |  no  |  |
 | product_suite | String |  no  |  |
 | subscription_id | String |  no  |  |

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
 | _id | String |  no  |  |
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
 | is_active | Bool |  no  |  |
 | name | String |  no  |  |
 | file_url | String |  no  |  |
 | type | String |  no  |  |
 | records_count | Int |  no  |  |
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
 | _id | String |  no  |  |
 | from_name | String |  no  |  |
 | from_email | String |  no  |  |

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
 | recipient_headers | [RecipientHeaders](#RecipientHeaders) |  no  |  |
 | email | [CampaignEmail](#CampaignEmail) |  no  |  |
 | description | String |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | is_active | Bool |  no  |  |
 | _id | String |  no  |  |
 | datasource | String |  no  |  |
 | type | String |  no  |  |
 | name | String |  no  |  |
 | application | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | slug | String |  no  |  |
 | __v | Int |  no  |  |

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
 | phone_number | String |  no  |  |
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
 | is_active | Bool |  no  |  |
 | name | String |  no  |  |
 | file_url | String |  no  |  |
 | type | String |  no  |  |
 | records_count | Int |  no  |  |
 | application | String |  no  |  |

---


 
 
 #### [Audience](#Audience)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | tags | [String] |  no  |  |
 | headers | [String] |  no  |  |
 | is_active | Bool |  no  |  |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | file_url | String |  no  |  |
 | type | String |  no  |  |
 | records_count | Int |  no  |  |
 | application | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | slug | String |  no  |  |
 | __v | Int |  no  |  |

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
 | is_default | Bool |  no  |  |

---


 
 
 #### [EmailProviderReq](#EmailProviderReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | api_key | String |  no  |  |
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
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | api_key | String |  no  |  |
 | application | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | slug | String |  no  |  |
 | __v | Int |  no  |  |

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
 | static_to | [String] |  no  |  |
 | static_cc | [String] |  no  |  |
 | static_bcc | [String] |  no  |  |
 | reply_to | String |  no  |  |
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
 | template_type | String |  no  |  |
 | template | String |  no  |  |

---


 
 
 #### [EmailTemplateRes](#EmailTemplateRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_system | Bool |  no  |  |
 | is_internal | Bool |  no  |  |
 | description | String |  no  |  |
 | static_to | [String] |  no  |  |
 | static_cc | [String] |  no  |  |
 | static_bcc | [String] |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |
 | published | Bool |  no  |  |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | keys | [EmailTemplateKeys](#EmailTemplateKeys) |  no  |  |
 | from | String |  no  |  |
 | reply_to | String |  no  |  |
 | headers | [[EmailTemplateHeaders](#EmailTemplateHeaders)] |  no  |  |
 | subject | [TemplateAndType](#TemplateAndType) |  no  |  |
 | html | [TemplateAndType](#TemplateAndType) |  no  |  |
 | text | [TemplateAndType](#TemplateAndType) |  no  |  |
 | attachments | [[String: Any]] |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | slug | String |  no  |  |
 | __v | Int |  no  |  |

---


 
 
 #### [EmailTemplate](#EmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_system | Bool |  no  |  |
 | is_internal | Bool |  no  |  |
 | description | String |  no  |  |
 | static_to | [[String: Any]] |  no  |  |
 | static_cc | [[String: Any]] |  no  |  |
 | static_bcc | [[String: Any]] |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |
 | published | Bool |  no  |  |
 | _id | String |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | from | String |  no  |  |
 | from_name | String |  no  |  |
 | subject | [TemplateAndType](#TemplateAndType) |  no  |  |
 | html | [TemplateAndType](#TemplateAndType) |  no  |  |
 | text | [TemplateAndType](#TemplateAndType) |  no  |  |
 | headers | [[String: Any]] |  no  |  |
 | attachments | [[String: Any]] |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

---


 
 
 #### [SystemEmailTemplate](#SystemEmailTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_system | Bool |  no  |  |
 | is_internal | Bool |  no  |  |
 | description | String |  no  |  |
 | static_to | [[String: Any]] |  no  |  |
 | static_cc | [[String: Any]] |  no  |  |
 | static_bcc | [[String: Any]] |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |
 | published | Bool |  no  |  |
 | _id | String |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | from | String |  no  |  |
 | from_name | String |  no  |  |
 | subject | [TemplateAndType](#TemplateAndType) |  no  |  |
 | html | [TemplateAndType](#TemplateAndType) |  no  |  |
 | text | [TemplateAndType](#TemplateAndType) |  no  |  |
 | headers | [[String: Any]] |  no  |  |
 | attachments | [[String: Any]] |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

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
 | is_default | Bool |  no  |  |
 | _id | String |  no  |  |
 | application | String |  no  |  |
 | event | String |  no  |  |
 | slug | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

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
 | job_id | String |  no  |  |

---


 
 
 #### [Job](#Job)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | completed | Bool |  no  |  |
 | is_active | Bool |  no  |  |
 | _id | String |  no  |  |
 | campaign | String |  no  |  |
 | application | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

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
 | _id | String |  no  |  |
 | job | String |  no  |  |
 | campaign | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

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
 | _id | String |  no  |  |
 | application | String |  no  |  |
 | service | String |  no  |  |
 | step | String |  no  |  |
 | status | String |  no  |  |
 | data | [String: Any] |  no  |  |
 | expire_at | String |  no  |  |
 | created_at | String |  no  |  |

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
 | bundle_identifier | String |  no  |  |
 | push_token | String |  no  |  |
 | unique_device_id | String |  no  |  |

---


 
 
 #### [PushtokenRes](#PushtokenRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | bundle_identifier | String |  no  |  |
 | push_token | String |  no  |  |
 | unique_device_id | String |  no  |  |
 | type | String |  no  |  |
 | platform | String |  no  |  |
 | application_id | String |  no  |  |
 | user_id | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | expired_at | String |  no  |  |

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
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | sender | String |  no  |  |
 | username | String |  no  |  |
 | authkey | String |  no  |  |
 | application | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | slug | String |  no  |  |
 | __v | Int |  no  |  |

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
 | template_type | String |  no  |  |
 | template | String |  no  |  |

---


 
 
 #### [SmsTemplateReq](#SmsTemplateReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | description | String |  no  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage) |  no  |  |
 | template_variables | [String: Any] |  no  |  |
 | attachments | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |

---


 
 
 #### [SmsTemplateRes](#SmsTemplateRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_system | Bool |  no  |  |
 | is_internal | Bool |  no  |  |
 | description | String |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |
 | published | Bool |  no  |  |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage) |  no  |  |
 | template_variables | [String: Any] |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | slug | String |  no  |  |
 | __v | Int |  no  |  |

---


 
 
 #### [SmsTemplate](#SmsTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_system | Bool |  no  |  |
 | is_internal | Bool |  no  |  |
 | description | String |  no  |  |
 | priority | String |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | published | Bool |  no  |  |
 | _id | String |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage) |  no  |  |
 | template_variables | [String: Any] |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

---


 
 
 #### [SystemSmsTemplate](#SystemSmsTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_system | Bool |  no  |  |
 | is_internal | Bool |  no  |  |
 | description | String |  no  |  |
 | tags | [[String: Any]] |  no  |  |
 | priority | String |  no  |  |
 | published | Bool |  no  |  |
 | _id | String |  no  |  |
 | slug | String |  no  |  |
 | name | String |  no  |  |
 | message | [SmsTemplateMessage](#SmsTemplateMessage) |  no  |  |
 | template_variables | [String: Any] |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

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
 | click_action | String |  no  |  |

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
 | time_to_live | String |  no  |  |

---


 
 
 #### [SystemNotification](#SystemNotification)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | notification | [Notification](#Notification) |  no  |  |
 | user | [SystemNotificationUser](#SystemNotificationUser) |  no  |  |
 | settings | [SystemNotificationUser](#SystemNotificationUser) |  no  |  |
 | _id | String |  no  |  |
 | group | String |  no  |  |
 | created_at | String |  no  |  |

---


 
 
 #### [SystemNotificationsPage](#SystemNotificationsPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | current | Int |  no  |  |
 | size | Int |  no  |  |
 | item_total | Int |  no  |  |
 | has_next | Bool |  no  |  |

---


 
 
 #### [SystemNotifications](#SystemNotifications)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[SystemNotification](#SystemNotification)] |  no  |  |
 | last_read_anchor | Int |  no  |  |
 | page | [Page](#Page) |  no  |  |

---




 
 
 #### [PaymentGatewayConfigResponse](#PaymentGatewayConfigResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app_id | String? |  yes  | Application Id to which Payment config Mapped |
 | success | Bool? |  yes  | Response is successful or not |
 | excluded_fields | [String]? |  yes  | List of all excluded  options with their Details. |
 | aggregators | [[String: Any]] |  no  | List of all speceific Payment options with their Details. |
 | created | Bool? |  yes  | Response is created or not |
 | display_fields | [String]? |  yes  | List of all included  options with their Details. |

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
 | merchant_salt | String? |  yes  | Merchant key of the payment aggregator |
 | secret | String? |  yes  | Secret Key of the payment aggregator |
 | config_type | String? |  yes  | Config Type of the aggregator |
 | key | String? |  yes  | Api key of the payment aggregator |
 | is_active | Bool |  no  | Enable/ Disable Flag |

---


 
 
 #### [PaymentGatewayConfigRequest](#PaymentGatewayConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aggregator_name | [PaymentGatewayConfig](#PaymentGatewayConfig) |  no  |  |
 | app_id | String? |  yes  | Application Id to which Payment config Mapped |
 | is_active | Bool |  no  | Enable/ Disable Flag |

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
 | card_name | String |  no  | card_name |
 | name | String |  no  | name |
 | card_brand_image | String |  no  | card_brand_image |
 | fynd_vpa | String |  no  | fynd_vpa |
 | card_isin | String |  no  | card_isin |
 | card_fingerprint | String |  no  | card_fingerprint |
 | card_id | String |  no  | card_id |
 | card_token | String |  no  | card_token |
 | exp_month | Int |  no  | exp_month |
 | code | String |  no  | code |
 | display_name | String |  no  | display name |
 | card_type | String |  no  | card_type |
 | aggregator_name | String? |  yes  | aggregator_name |
 | card_number | String |  no  | card_number |
 | card_brand | String |  no  | card_brand |
 | card_reference | String |  no  | card_reference |
 | expired | Bool |  no  | expired |
 | card_issuer | String |  no  | card_issuer |
 | intent_flow | String |  no  | intent_flow |
 | timeout | Int |  no  | timeout |
 | logo_url | [PaymentModeLogo](#PaymentModeLogo) |  no  | Logo |
 | nickname | String |  no  | nickname |
 | merchant_code | String |  no  | merchant code |
 | display_priority | Int |  no  | Dispaly Priority |
 | exp_year | Int |  no  | exp_year |
 | retry_count | Int |  no  | retry_count |
 | intent_app_error_list | [String] |  no  | intent_app_error_list |

---


 
 
 #### [RootPaymentMode](#RootPaymentMode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  | Payment mode name |
 | display_priority | Int? |  yes  | Dispaly Priority |
 | anonymous_enable | Bool |  no  | Annonymous card flag |
 | display_name | String? |  yes  | Payment mode display name |
 | list | [[PaymentModeList](#PaymentModeList)] |  no  | Payment mode |
 | aggregator_name | String |  no  | Dispaly Priority |
 | add_card_enabled | Bool |  no  | Annonymous card flag |

---


 
 
 #### [PaymentOptions](#PaymentOptions)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payment_option | [[RootPaymentMode](#RootPaymentMode)]? |  yes  | Payment options |

---


 
 
 #### [PaymentOptionsResponse](#PaymentOptionsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payment_options | [PaymentOptions](#PaymentOptions)? |  yes  | Payment options |
 | success | Bool? |  yes  | Response is successful or not |

---


 
 
 #### [PayoutsResponse](#PayoutsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | customers | [String: Any]? |  yes  | customers details object |
 | transfer_type | String? |  yes  | transafer type |
 | unique_transfer_no | [String: Any]? |  yes  | display priority of the payment mode |
 | is_active | Bool? |  yes  | Enable/DIsable Flag Payout |
 | more_attributes | [String: Any]? |  yes  | bank details object |
 | payouts_aggregators | [[String: Any]]? |  yes  | payout aggregator object |
 | is_default | Bool? |  yes  | default or not  |

---


 
 
 #### [PayoutBankDetails](#PayoutBankDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | state | String |  no  |  |
 | account_no | String |  no  |  |
 | account_type | String? |  yes  |  |
 | ifsc_code | String? |  yes  |  |
 | city | String |  no  |  |
 | branch_name | String |  no  |  |
 | bank_name | String |  no  |  |
 | country | String |  no  |  |
 | pincode | Int |  no  |  |
 | account_holder | String |  no  |  |

---


 
 
 #### [PayoutRequest](#PayoutRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | users | [String: Any]? |  yes  | payout users object |
 | transfer_type | String? |  yes  | transafer type |
 | aggregator | String? |  yes  | Aggregator Name |
 | is_active | Bool? |  yes  | Enable/Disable Flag Payout |
 | unique_external_id | String? |  yes  | Unique Id of Payout |
 | bank_details | [PayoutBankDetails](#PayoutBankDetails)? |  yes  | payout bank details object |

---


 
 
 #### [PayoutResponse](#PayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool? |  yes  | Response is successful or not |
 | users | [String: Any]? |  yes  | users details object |
 | payouts | [String: Any]? |  yes  | payout  object |
 | transfer_type | String? |  yes  | transfer type |
 | aggregator | String? |  yes  | Aggregator Name |
 | created | Bool? |  yes  | created flag |
 | unique_transfer_no | String? |  yes  | unique transfer no |
 | is_active | Bool? |  yes  | Enable/DIsable Flag Payout |
 | bank_details | [String: Any]? |  yes  | payout bank_details object |
 | payment_status | String? |  yes  | status of payment |

---


 
 
 #### [UpdatePayoutResponse](#UpdatePayoutResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_default | Bool? |  yes  | Enable/Disable Default Payout |
 | success | Bool? |  yes  | Response is successful or not |
 | is_active | Bool? |  yes  | Enable/DIsable Flag Payout |

---


 
 
 #### [UpdatePayoutRequest](#UpdatePayoutRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_default | Bool? |  yes  | Enable/Disable Default Payout |
 | is_active | Bool? |  yes  | Enable/Disable Flag Payout |
 | unique_external_id | String? |  yes  | Unique Id of Payout |

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
 | unique_external_id | String? |  yes  | Unique id i.e company:id |

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
 | account_no | String? |  yes  | Account NUmber of the Account Holder |
 | comment | String |  no  | Remarks added by The user |
 | ifsc_code | String? |  yes  | Ifsc Code of the Account |
 | mobile | String? |  yes  | Moblie Number of the User |
 | branch_name | String? |  yes  | Branch Name of the Account |
 | bank_name | String? |  yes  | Bank Name of the Account |
 | vpa | String |  no  |  |
 | wallet | String |  no  |  |
 | account_holder | String? |  yes  | Name of the Account Holder |

---


 
 
 #### [AddBeneficiaryDetailsRequest](#AddBeneficiaryDetailsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order_id | String? |  yes  | Merchant Order Id |
 | transfer_mode | String? |  yes  | Transfer Mode of the Beneficiary to be added |
 | delights | Bool? |  yes  | True if  beneficiary to be added by delights or False if by User |
 | otp | String |  no  |  |
 | request_id | String |  no  |  |
 | shipment_id | String? |  yes  | Shipment Id of the respective Merchant Order Id |
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
 | bank_name | String? |  yes  | Bank Name Of Account |
 | success | Bool |  no  | Response is successful or not |
 | branch_name | String? |  yes  | Branch Name Of Account |

---


 
 
 #### [OrderBeneficiaryDetails](#OrderBeneficiaryDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String? |  yes  | EMail of User |
 | address | String? |  yes  | Address of User |
 | id | Int? |  yes  |   |
 | transfer_mode | String? |  yes  | Transfer Mode Of Account |
 | title | String? |  yes  | Title Of Account |
 | created_on | String? |  yes  | Creation Date of Beneficiary |
 | ifsc_code | String? |  yes  | Ifsc Code Of Account |
 | display_name | String? |  yes  | Display Name Of Account |
 | is_active | Bool? |  yes  | Boolean Flag whether Beneficiary set or not |
 | bank_name | String? |  yes  | Bank Name Of Account |
 | delights_user_name | String? |  yes  | User Id Who filled the Beneficiary  |
 | beneficiary_id | String? |  yes  | Benenficiary Id |
 | subtitle | String? |  yes  | SHort Title Of Account |
 | account_no | String? |  yes  | Account Number |
 | comment | Bool |  no  | Remarks |
 | mobile | Bool |  no  | MObile no of User |
 | branch_name | Bool |  no  | Branch Name Of Account |
 | modified_on | String? |  yes  | MOdification Date of Beneficiary |
 | account_holder | String? |  yes  | Account Holder Name |

---


 
 
 #### [OrderBeneficiaryResponse](#OrderBeneficiaryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | beneficiaries | [[OrderBeneficiaryDetails](#OrderBeneficiaryDetails)]? |  yes  | All Beneficiaries Of An Order |
 | show_beneficiary_details | Bool |  no  | Show beneficiary details or not. |

---




 
 
 #### [GetActivityStatus](#GetActivityStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activity_history | [ActivityHistory](#ActivityHistory)? |  yes  |  |

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
 | updated_at | String |  no  |  |
 | _id | String |  no  |  |
 | reason | String |  no  |  |
 | marketplace_order | [MarketplaceOrder](#MarketplaceOrder) |  no  |  |
 | marketplace_order_id | String |  no  |  |
 | created_at | String |  no  |  |
 | app_id | String |  no  |  |
 | marketplace | String |  no  |  |
 | company_id | Int |  no  |  |

---


 
 
 #### [MarketplaceOrder](#MarketplaceOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order_status_url | String |  no  |  |
 | admin_graphql_api_id | String |  no  |  |
 | email | String |  no  |  |
 | test | Bool |  no  |  |
 | note | String |  no  |  |
 | total_price | String |  no  |  |
 | app_id | Int |  no  |  |
 | total_discounts_set | [TotalDiscountsSet](#TotalDiscountsSet) |  no  |  |
 | total_price_set | [TotalPriceSet](#TotalPriceSet) |  no  |  |
 | total_tax_set | [TotalTaxSet](#TotalTaxSet) |  no  |  |
 | gateway | String |  no  |  |
 | name | String |  no  |  |
 | subtotal_price_set | [SubtotalPriceSet](#SubtotalPriceSet) |  no  |  |
 | number | Int |  no  |  |
 | buyer_accepts_marketing | Bool |  no  |  |
 | contact_email | String |  no  |  |
 | token | String |  no  |  |
 | source_name | String |  no  |  |
 | payment_gateway_names | [[String: Any]] |  no  |  |
 | presentment_currency | String |  no  |  |
 | subtotal_price | String |  no  |  |
 | processed_at | String |  no  |  |
 | order_number | Int |  no  |  |
 | total_tip_received | String |  no  |  |
 | id | Int |  no  |  |
 | confirmed | Bool |  no  |  |
 | currency | String |  no  |  |
 | total_line_items_price | String |  no  |  |
 | line_items | [LineItems](#LineItems) |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | total_weight | Int |  no  |  |
 | billing_address | [BillingAddress](#BillingAddress) |  no  |  |
 | total_shipping_price_set | [TotalShippingPriceSet](#TotalShippingPriceSet) |  no  |  |
 | customer | [Customer](#Customer) |  no  |  |
 | total_discounts | String |  no  |  |
 | total_line_items_price_set | [TotalLineItemsPriceSet](#TotalLineItemsPriceSet) |  no  |  |
 | tags | String |  no  |  |
 | total_price_usd | String |  no  |  |
 | user_id | Int |  no  |  |
 | total_tax | String |  no  |  |
 | processing_method | String |  no  |  |
 | shipping_address | [ShippingAddress](#ShippingAddress) |  no  |  |
 | taxes_included | Bool |  no  |  |
 | financial_status | String |  no  |  |

---


 
 
 #### [TotalDiscountsSet](#TotalDiscountsSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | presentment_money | [PresentmentMoney](#PresentmentMoney) |  no  |  |
 | shop_money | [ShopMoney](#ShopMoney) |  no  |  |

---


 
 
 #### [PresentmentMoney](#PresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [ShopMoney](#ShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [TotalPriceSet](#TotalPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shop_money | [TotalPriceSetShopMoney](#TotalPriceSetShopMoney) |  no  |  |
 | presentment_money | [TotalPriceSetPresentmentMoney](#TotalPriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [TotalPriceSetShopMoney](#TotalPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [TotalPriceSetPresentmentMoney](#TotalPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [TotalTaxSet](#TotalTaxSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shop_money | [TotalTaxSetShopMoney](#TotalTaxSetShopMoney) |  no  |  |
 | presentment_money | [TotalTaxSetPresentmentMoney](#TotalTaxSetPresentmentMoney) |  no  |  |

---


 
 
 #### [TotalTaxSetShopMoney](#TotalTaxSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [TotalTaxSetPresentmentMoney](#TotalTaxSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [SubtotalPriceSet](#SubtotalPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shop_money | [SubtotalPriceSetShopMoney](#SubtotalPriceSetShopMoney) |  no  |  |
 | presentment_money | [SubtotalPriceSetPresentmentMoney](#SubtotalPriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [SubtotalPriceSetShopMoney](#SubtotalPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [SubtotalPriceSetPresentmentMoney](#SubtotalPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [LineItems](#LineItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sku | String |  no  |  |
 | fulfillable_quantity | Int |  no  |  |
 | grams | Int |  no  |  |
 | total_discount | String |  no  |  |
 | article | [LineItemsArticle](#LineItemsArticle) |  no  |  |
 | title | String |  no  |  |
 | variant_inventory_management | String |  no  |  |
 | id | Int |  no  |  |
 | variant_id | Int |  no  |  |
 | variant_title | String |  no  |  |
 | product_exists | Bool |  no  |  |
 | price | String |  no  |  |
 | admin_graphql_api_id | String |  no  |  |
 | quantity | Int |  no  |  |
 | vendor | String |  no  |  |
 | fulfillment_service | String |  no  |  |
 | taxable | Bool |  no  |  |
 | name | String |  no  |  |
 | product_id | Int |  no  |  |
 | price_set | [PriceSet](#PriceSet) |  no  |  |
 | tax_lines | [TaxLines](#TaxLines) |  no  |  |
 | requires_shipping | Bool |  no  |  |
 | gift_card | Bool |  no  |  |
 | total_discount_set | [TotalDiscountSet](#TotalDiscountSet) |  no  |  |

---


 
 
 #### [LineItemsArticle](#LineItemsArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | quantities | [Quantities](#Quantities) |  no  |  |
 | old_article_uid | String |  no  |  |
 | total_quantity | Int |  no  |  |
 | manufacturer | [Manufacturer](#Manufacturer) |  no  |  |
 | price | [ArticlePrice](#ArticlePrice) |  no  |  |
 | track_inventory | Bool |  no  |  |
 | company | [Company](#Company) |  no  |  |
 | is_active | Bool |  no  |  |
 | date_meta | [FailOrderDateMeta](#FailOrderDateMeta) |  no  |  |
 | fragile | Bool |  no  |  |
 | marketplace_identifiers | [MarketplaceIdentifiers](#MarketplaceIdentifiers) |  no  |  |
 | size | String |  no  |  |
 | is_set | Bool |  no  |  |
 | dimension | [Dimension](#Dimension) |  no  |  |
 | weight | [Weight](#Weight) |  no  |  |
 | store | [Store](#Store) |  no  |  |
 | meta | [ArticleMeta](#ArticleMeta) |  no  |  |
 | uid | String |  no  |  |
 | brand | [ArticleBrand](#ArticleBrand) |  no  |  |
 | item_id | Int |  no  |  |
 | fynd_article_code | String |  no  |  |
 | _id | String |  no  |  |
 | identifier | [LineItemsArticleIdentifier](#LineItemsArticleIdentifier) |  no  |  |
 | seller_identifier | String |  no  |  |
 | fynd_item_code | String |  no  |  |
 | country_of_origin | String |  no  |  |

---


 
 
 #### [Quantities](#Quantities)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | not_available | [NotAvailable](#NotAvailable) |  no  |  |
 | sellable | [Sellable](#Sellable) |  no  |  |
 | order_committed | [OrderCommitted](#OrderCommitted) |  no  |  |
 | damaged | [Damaged](#Damaged) |  no  |  |

---


 
 
 #### [NotAvailable](#NotAvailable)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |
 | updated_at | String |  no  |  |

---


 
 
 #### [Sellable](#Sellable)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |
 | updated_at | String |  no  |  |

---


 
 
 #### [OrderCommitted](#OrderCommitted)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |
 | updated_at | String |  no  |  |

---


 
 
 #### [Damaged](#Damaged)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | updated_at | String |  no  |  |
 | count | Int |  no  |  |

---


 
 
 #### [Manufacturer](#Manufacturer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_default | Bool |  no  |  |
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
 | company_type | String |  no  |  |
 | business_type | String |  no  |  |
 | company_name | String |  no  |  |
 | created_on | String |  no  |  |
 | pan_no | String |  no  |  |
 | return_allowed | Bool |  no  |  |
 | meta | String |  no  |  |
 | exchange_allowed | Bool |  no  |  |
 | agreement_start_date | String |  no  |  |
 | exchange_within_days | Int |  no  |  |
 | payment_procesing_charge | Int |  no  |  |
 | fynd_a_fit_available | Bool |  no  |  |
 | modified_on | String |  no  |  |
 | return_within_days | Int |  no  |  |

---


 
 
 #### [FailOrderDateMeta](#FailOrderDateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | added_on_store | String |  no  |  |
 | inventory_updated_on | String |  no  |  |
 | created_on | String |  no  |  |
 | modified_on | String |  no  |  |

---


 
 
 #### [MarketplaceIdentifiers](#MarketplaceIdentifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tatacliq_luxury | [TatacliqLuxury](#TatacliqLuxury) |  no  |  |

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
 | is_default | Bool |  no  |  |

---


 
 
 #### [Weight](#Weight)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_default | Bool |  no  |  |
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
 | sku_code | String |  no  |  |

---


 
 
 #### [PriceSet](#PriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shop_money | [PriceSetShopMoney](#PriceSetShopMoney) |  no  |  |
 | presentment_money | [PriceSetPresentmentMoney](#PriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [PriceSetShopMoney](#PriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [PriceSetPresentmentMoney](#PriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [TaxLines](#TaxLines)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | title | String |  no  |  |
 | price | String |  no  |  |
 | rate | Int |  no  |  |
 | price_set | [TaxLinesPriceSet](#TaxLinesPriceSet) |  no  |  |

---


 
 
 #### [TaxLinesPriceSet](#TaxLinesPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shop_money | [TaxLinesPriceSetShopMoney](#TaxLinesPriceSetShopMoney) |  no  |  |
 | presentment_money | [TaxLinesPriceSetPresentmentMoney](#TaxLinesPriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [TaxLinesPriceSetShopMoney](#TaxLinesPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [TaxLinesPriceSetPresentmentMoney](#TaxLinesPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | currency_code | String |  no  |  |
 | amount | String |  no  |  |

---


 
 
 #### [TotalDiscountSet](#TotalDiscountSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | presentment_money | [TotalDiscountSetPresentmentMoney](#TotalDiscountSetPresentmentMoney) |  no  |  |
 | shop_money | [TotalDiscountSetShopMoney](#TotalDiscountSetShopMoney) |  no  |  |

---


 
 
 #### [TotalDiscountSetPresentmentMoney](#TotalDiscountSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [TotalDiscountSetShopMoney](#TotalDiscountSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [BillingAddress](#BillingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String |  no  |  |
 | city | String |  no  |  |
 | zip | String |  no  |  |
 | last_name | String |  no  |  |
 | address2 | String |  no  |  |
 | longitude | Double |  no  |  |
 | province_code | String |  no  |  |
 | phone | String |  no  |  |
 | company | String |  no  |  |
 | latitude | Double |  no  |  |
 | name | String |  no  |  |
 | country | String |  no  |  |
 | country_code | String |  no  |  |
 | first_name | String |  no  |  |
 | province | String |  no  |  |

---


 
 
 #### [TotalShippingPriceSet](#TotalShippingPriceSet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shop_money | [TotalShippingPriceSetShopMoney](#TotalShippingPriceSetShopMoney) |  no  |  |
 | presentment_money | [TotalShippingPriceSetPresentmentMoney](#TotalShippingPriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [TotalShippingPriceSetShopMoney](#TotalShippingPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [TotalShippingPriceSetPresentmentMoney](#TotalShippingPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [Customer](#Customer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | created_at | String |  no  |  |
 | id | Int |  no  |  |
 | last_name | String |  no  |  |
 | state | String |  no  |  |
 | last_order_id | Int |  no  |  |
 | note | String |  no  |  |
 | verified_email | Bool |  no  |  |
 | phone | String |  no  |  |
 | accepts_marketing | Bool |  no  |  |
 | first_name | String |  no  |  |
 | tags | String |  no  |  |
 | last_order_name | String |  no  |  |
 | orders_count | Int |  no  |  |
 | total_spent | String |  no  |  |
 | tax_exempt | Bool |  no  |  |
 | currency | String |  no  |  |
 | accepts_marketing_updated_at | String |  no  |  |
 | email | String |  no  |  |
 | updated_at | String |  no  |  |
 | admin_graphql_api_id | String |  no  |  |
 | default_address | [DefaultAddress](#DefaultAddress) |  no  |  |

---


 
 
 #### [DefaultAddress](#DefaultAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | last_name | String |  no  |  |
 | name | String |  no  |  |
 | province_code | String |  no  |  |
 | country_code | String |  no  |  |
 | is_default | Bool |  no  |  |
 | id | Int |  no  |  |
 | customer_id | Int |  no  |  |
 | first_name | String |  no  |  |
 | address1 | String |  no  |  |
 | phone | String |  no  |  |
 | country_name | String |  no  |  |
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
 | shop_money | [TotalLineItemsPriceSetShopMoney](#TotalLineItemsPriceSetShopMoney) |  no  |  |
 | presentment_money | [TotalLineItemsPriceSetPresentmentMoney](#TotalLineItemsPriceSetPresentmentMoney) |  no  |  |

---


 
 
 #### [TotalLineItemsPriceSetShopMoney](#TotalLineItemsPriceSetShopMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [TotalLineItemsPriceSetPresentmentMoney](#TotalLineItemsPriceSetPresentmentMoney)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | amount | String |  no  |  |
 | currency_code | String |  no  |  |

---


 
 
 #### [ShippingAddress](#ShippingAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address1 | String |  no  |  |
 | zip | String |  no  |  |
 | address2 | String |  no  |  |
 | country_code | String |  no  |  |
 | country | String |  no  |  |
 | last_name | String |  no  |  |
 | latitude | Double |  no  |  |
 | province_code | String |  no  |  |
 | first_name | String |  no  |  |
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
 | next_order_status | [String: Any]? |  yes  |  |
 | page | [PlatformOrderPage](#PlatformOrderPage)? |  yes  |  |
 | applied_filters | [AppliedFilters](#AppliedFilters)? |  yes  |  |

---


 
 
 #### [OrderItems](#OrderItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo) |  no  |  |
 | delivery_address | [PlatformDeliveryAddress](#PlatformDeliveryAddress) |  no  |  |
 | channel | [Channel](#Channel) |  no  |  |
 | id | String |  no  |  |
 | application | [PlatformApplication](#PlatformApplication) |  no  |  |
 | shipments | [PlatformShipment](#PlatformShipment) |  no  |  |
 | created_at | String |  no  |  |
 | total_shipments_in_order | Int |  no  |  |

---


 
 
 #### [PlatformOrderUserInfo](#PlatformOrderUserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mobile | String |  no  |  |
 | first_name | String |  no  |  |
 | gender | String |  no  |  |
 | email | String |  no  |  |
 | last_name | String |  no  |  |
 | is_anonymous_user | Bool |  no  |  |
 | uid | Int |  no  |  |
 | avis_user_id | String |  no  |  |

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
 | updated_at | String |  no  |  |
 | city | String |  no  |  |
 | landmark | String |  no  |  |
 | created_at | String |  no  |  |
 | name | String |  no  |  |
 | address | String |  no  |  |
 | phone | String |  no  |  |
 | longitude | Double |  no  |  |
 | address_type | String |  no  |  |
 | email | String |  no  |  |
 | pincode | String |  no  |  |
 | address2 | String |  no  |  |
 | contact_person | String |  no  |  |
 | address_category | String |  no  |  |

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
 | total_shipment_bags | Int |  no  |  |

---


 
 
 #### [PlatformShipmentStatus](#PlatformShipmentStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | bag_list | [Int] |  no  |  |
 | created_at | String |  no  |  |
 | status | String |  no  |  |
 | name | String |  no  |  |
 | progress | Int |  no  |  |
 | shipment_id | String |  no  |  |
 | current_shipment_status | String |  no  |  |
 | color_code | String |  no  |  |

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
 | slug_key | String |  no  |  |
 | can_return | Bool |  no  |  |
 | brand_id | Int |  no  |  |
 | l2_category | [String] |  no  |  |
 | name | String |  no  |  |
 | code | String |  no  |  |
 | can_cancel | Bool |  no  |  |
 | attributes | [BagItemAttributes](#BagItemAttributes) |  no  |  |
 | l3_category_name | String |  no  |  |
 | l3_category | Int |  no  |  |
 | l1_category | [String] |  no  |  |
 | image | [String] |  no  |  |
 | brand | String |  no  |  |
 | last_updated_at | String |  no  |  |

---


 
 
 #### [BagItemAttributes](#BagItemAttributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item_code | String |  no  |  |
 | brand_name | String |  no  |  |
 | country_of_origin | String |  no  |  |

---


 
 
 #### [ShipmentPrices](#ShipmentPrices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | refund_amount | Double |  no  |  |
 | cashback_applied | Double |  no  |  |
 | transfer_price | Double |  no  |  |
 | coupon_value | Double |  no  |  |
 | amount_paid | Double |  no  |  |
 | delivery_charge | Double |  no  |  |
 | coupon_effective_discount | Double |  no  |  |
 | cod_charges | Double |  no  |  |
 | refund_credit | Double |  no  |  |
 | added_to_fynd_cash | Bool |  no  |  |
 | gst_tax_percentage | Double |  no  |  |
 | price_marked | Double |  no  |  |
 | price_effective | Double |  no  |  |
 | discount | Double |  no  |  |
 | promotion_effective_discount | Double |  no  |  |
 | amount_paid_roundoff | Double |  no  |  |
 | fynd_credits | Double |  no  |  |
 | brand_calculated_amount | Double |  no  |  |
 | cashback | Double |  no  |  |
 | value_of_good | Double |  no  |  |

---


 
 
 #### [Payments](#Payments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_active | Bool |  no  |  |
 | display_name | String |  no  |  |
 | logo | String |  no  |  |
 | source | String |  no  |  |
 | source_nickname | String |  no  |  |
 | display_priority | Int |  no  |  |
 | id | Int |  no  |  |
 | mode | String |  no  |  |
 | payment_identifier | String |  no  |  |

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
 | is_default | Bool |  no  |  |
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
 | has_next | Bool |  no  |  |
 | item_total | [ItemTotal](#ItemTotal) |  no  |  |

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
 | from_date | String |  no  |  |
 | to_date | String |  no  |  |

---


 
 
 #### [OrderDetails](#OrderDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[OrderPicklistListing](#OrderPicklistListing)]? |  yes  |  |
 | page | [PlatformOrderPage](#PlatformOrderPage)? |  yes  |  |
 | filters | [Filters](#Filters)? |  yes  |  |
 | next_order_status | [String: Any]? |  yes  |  |
 | applied_filters | [AppliedFilters](#AppliedFilters)? |  yes  |  |

---


 
 
 #### [OrderDetailsItem](#OrderDetailsItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo) |  no  |  |
 | delivery_address | [PlatformDeliveryAddress](#PlatformDeliveryAddress) |  no  |  |
 | channel | [Channel](#Channel) |  no  |  |
 | breakup_values | [PlatformBreakupValues](#PlatformBreakupValues) |  no  |  |
 | id | String |  no  |  |
 | application | [PlatformApplication](#PlatformApplication) |  no  |  |
 | shipments | [PlatformShipmentDetails](#PlatformShipmentDetails) |  no  |  |
 | created_at | String |  no  |  |
 | total_shipments_in_order | Int |  no  |  |
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
 | breakup_values | [ShipmentBreakupValues](#ShipmentBreakupValues) |  no  |  |
 | id | String |  no  |  |
 | dp_details | [DpDetails](#DpDetails) |  no  |  |
 | invoice | [ShipmentInvoice](#ShipmentInvoice) |  no  |  |
 | fulfilling_store | [PlatformFulfillingStore](#PlatformFulfillingStore) |  no  |  |
 | payments | [Payments](#Payments) |  no  |  |
 | gst | [ShipmentGst](#ShipmentGst) |  no  |  |
 | company | [Company](#Company) |  no  |  |
 | brand | [PlatformShipmentDetailsBrand](#PlatformShipmentDetailsBrand) |  no  |  |
 | coupon | [String: Any] |  no  |  |
 | order_source | String |  no  |  |
 | is_not_fynd_source | Bool |  no  |  |
 | comment | String |  no  |  |
 | promise | [Promise](#Promise) |  no  |  |
 | tracking_details | [ShipmentTrackingDetails](#ShipmentTrackingDetails) |  no  |  |
 | is_fynd_coupon | Bool |  no  |  |
 | order_type | String |  no  |  |
 | total_shipment_bags | Int |  no  |  |
 | pod | [String: Any] |  no  |  |
 | lock_status | Bool |  no  |  |
 | ordering_channel | String |  no  |  |

---


 
 
 #### [PlatformShipmentDetailsStatus](#PlatformShipmentDetailsStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | bag_list | [Int] |  no  |  |
 | created_at | String |  no  |  |
 | status | String |  no  |  |
 | name | String |  no  |  |
 | progress | Int |  no  |  |
 | shipment_id | String |  no  |  |
 | current_shipment_status | String |  no  |  |
 | color_code | String |  no  |  |

---


 
 
 #### [BagsDetails](#BagsDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | financial_breakup | [[BagFinancialBreakup](#BagFinancialBreakup)] |  no  |  |
 | status | [BagCurrStatus](#BagCurrStatus) |  no  |  |
 | item | [BagItem](#BagItem) |  no  |  |
 | article | [BagArticle](#BagArticle) |  no  |  |
 | id | Int |  no  |  |
 | prices | [BagPrices](#BagPrices) |  no  |  |
 | gst_details | [GstDetails](#GstDetails) |  no  |  |
 | breakup_values | [BagBreakupValues](#BagBreakupValues) |  no  |  |
 | update_time | Int |  no  |  |
 | current_status | [BagCurrentStatus](#BagCurrentStatus) |  no  |  |
 | bag_status | [BagStatus](#BagStatus) |  no  |  |

---


 
 
 #### [BagFinancialBreakup](#BagFinancialBreakup)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value_of_good | Double |  no  |  |
 | hsn_code | String |  no  |  |
 | price_effective | Double |  no  |  |
 | cod_charges | Double |  no  |  |
 | gst_fee | String |  no  |  |
 | fynd_credits | Double |  no  |  |
 | refund_amount | Double |  no  |  |
 | cashback_applied | Double |  no  |  |
 | transfer_price | Double |  no  |  |
 | amount_paid_roundoff | Double |  no  |  |
 | coupon_value | Double |  no  |  |
 | amount_paid | Double |  no  |  |
 | gst_tax_percentage | Double |  no  |  |
 | size | String |  no  |  |
 | total_units | Int |  no  |  |
 | discount | Double |  no  |  |
 | coupon_effective_discount | Double |  no  |  |
 | cashback | Double |  no  |  |
 | promotion_effective_discount | Double |  no  |  |
 | gst_tag | String |  no  |  |
 | delivery_charge | Double |  no  |  |
 | refund_credit | Double |  no  |  |
 | price_marked | Double |  no  |  |
 | identifiers | [Identifiers](#Identifiers) |  no  |  |
 | item_name | String |  no  |  |
 | added_to_fynd_cash | Bool |  no  |  |
 | brand_calculated_amount | Double |  no  |  |

---


 
 
 #### [Identifiers](#Identifiers)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ean | String |  no  |  |

---


 
 
 #### [BagCurrStatus](#BagCurrStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enable_tracking | Bool |  no  |  |
 | is_customer_return_allowed | Bool |  no  |  |
 | is_active | Bool |  no  |  |
 | is_returnable | Bool |  no  |  |
 | can_be_cancelled | Bool |  no  |  |

---


 
 
 #### [BagArticle](#BagArticle)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifiers | [ArticleIdentifiers](#ArticleIdentifiers) |  no  |  |
 | esp_modified | Bool |  no  |  |
 | is_set | Bool |  no  |  |
 | size | String |  no  |  |
 | code | String |  no  |  |
 | set | [Set](#Set) |  no  |  |
 | seller_identifier | String |  no  |  |
 | return_config | [BagArticleReturnConfig](#BagArticleReturnConfig) |  no  |  |
 | _id | String |  no  |  |
 | uid | String |  no  |  |
 | child_details | [String: Any] |  no  |  |

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
 | size_distribution | [SetSizeDistribution](#SetSizeDistribution) |  no  |  |

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
 | brand_calculated_amount | Double |  no  |  |
 | gst_fee | String |  no  |  |
 | gst_tag | String |  no  |  |
 | hsn_code | String |  no  |  |
 | value_of_good | Double |  no  |  |
 | gst_tax_percentage | Double |  no  |  |
 | is_default_hsn_code | Bool |  no  |  |

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
 | updated_at | String |  no  |  |
 | bag_state_mapper | [BagStateMapper](#BagStateMapper) |  no  |  |
 | status | String |  no  |  |
 | state_type | String |  no  |  |

---


 
 
 #### [BagStateMapper](#BagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app_state_name | String |  no  |  |
 | is_active | Bool |  no  |  |
 | display_name | String |  no  |  |
 | name | String |  no  |  |
 | app_display_name | String |  no  |  |

---


 
 
 #### [BagStatus](#BagStatus)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | state_type | String |  no  |  |
 | updated_at | String |  no  |  |
 | bag_state_mapper | [BagStatusBagStateMapper](#BagStatusBagStateMapper) |  no  |  |

---


 
 
 #### [BagStatusBagStateMapper](#BagStatusBagStateMapper)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_active | Bool |  no  |  |
 | display_name | String |  no  |  |
 | name | String |  no  |  |
 | app_display_name | String |  no  |  |
 | app_state_name | String |  no  |  |

---


 
 
 #### [BagPrices](#BagPrices)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cashback | Double |  no  |  |
 | refund_credit | Double |  no  |  |
 | coupon_value | Double |  no  |  |
 | delivery_charge | Double |  no  |  |
 | fynd_credits | Double |  no  |  |
 | price_marked | Double |  no  |  |
 | cashback_applied | Double |  no  |  |
 | value_of_good | Double |  no  |  |
 | amount_paid_roundoff | Double |  no  |  |
 | amount_paid | Double |  no  |  |
 | cod_charges | Double |  no  |  |
 | price_effective | Double |  no  |  |
 | refund_amount | Double |  no  |  |
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
 | gst_tag | String |  no  |  |

---


 
 
 #### [ShipmentInvoice](#ShipmentInvoice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payment_type | String |  no  |  |
 | updated_date | String |  no  |  |
 | invoice_url | String |  no  |  |
 | label_url | String |  no  |  |
 | payment_mode | String |  no  |  |
 | amount_to_collect | Double |  no  |  |
 | rto_address | [RtoAddress](#RtoAddress) |  no  |  |

---


 
 
 #### [RtoAddress](#RtoAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | id | Int |  no  |  |
 | phone | String |  no  |  |
 | location_type | String |  no  |  |
 | store_address_json | [StoreAddressJson](#StoreAddressJson) |  no  |  |
 | code | String |  no  |  |
 | address1 | String |  no  |  |
 | city | String |  no  |  |
 | country | String |  no  |  |
 | pincode | String |  no  |  |
 | company_id | Int |  no  |  |
 | contact_person | String |  no  |  |
 | state | String |  no  |  |
 | store_email | String |  no  |  |
 | address2 | String |  no  |  |

---


 
 
 #### [StoreAddressJson](#StoreAddressJson)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | latitude | Double |  no  |  |
 | updated_at | String |  no  |  |
 | area | String |  no  |  |
 | state | String |  no  |  |
 | address_type | String |  no  |  |
 | city | String |  no  |  |
 | pincode | String |  no  |  |
 | address1 | String |  no  |  |
 | address2 | String |  no  |  |
 | longitude | Double |  no  |  |
 | email | String |  no  |  |
 | phone | String |  no  |  |
 | created_at | String |  no  |  |
 | contact_person | String |  no  |  |
 | address_category | String |  no  |  |
 | version | String |  no  |  |
 | landmark | String |  no  |  |

---


 
 
 #### [PlatformFulfillingStore](#PlatformFulfillingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | packaging_material_count | Int |  no  |  |
 | location_type | String |  no  |  |
 | code | String |  no  |  |
 | city | String |  no  |  |
 | meta | [FulfillingStoreMeta](#FulfillingStoreMeta) |  no  |  |
 | name | String |  no  |  |
 | is_active | Bool |  no  |  |
 | address1 | String |  no  |  |
 | store_email | String |  no  |  |
 | is_archived | Bool |  no  |  |
 | state | String |  no  |  |
 | address2 | String |  no  |  |
 | contact_person | String |  no  |  |
 | phone | String |  no  |  |
 | is_enabled_for_recon | Bool |  no  |  |
 | fulfillment_channel | String |  no  |  |
 | created_at | String |  no  |  |
 | id | Int |  no  |  |
 | pincode | String |  no  |  |
 | brand_store_tags | [String] |  no  |  |
 | company_id | Int |  no  |  |
 | store_address_json | [FulfillingStoreStoreAddressJson](#FulfillingStoreStoreAddressJson) |  no  |  |
 | updated_at | String |  no  |  |
 | login_username | String |  no  |  |
 | country | String |  no  |  |

---


 
 
 #### [FulfillingStoreMeta](#FulfillingStoreMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | additional_contact_details | [AdditionalContactDetails](#AdditionalContactDetails) |  no  |  |
 | documents | [Documents](#Documents) |  no  |  |
 | gst_number | String |  no  |  |
 | display_name | String |  no  |  |
 | product_return_config | [ProductReturnConfig](#ProductReturnConfig) |  no  |  |
 | allow_dp_assignment_from_fynd | Bool |  no  |  |
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
 | legal_name | String |  no  |  |
 | type | String |  no  |  |
 | value | String |  no  |  |
 | verified | Bool |  no  |  |

---


 
 
 #### [ProductReturnConfig](#ProductReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | on_same_store | Bool |  no  |  |

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
 | contact_person | String |  no  |  |
 | country | String |  no  |  |
 | pincode | String |  no  |  |
 | version | String |  no  |  |
 | created_at | String |  no  |  |
 | address_type | String |  no  |  |
 | city | String |  no  |  |
 | address1 | String |  no  |  |
 | landmark | String |  no  |  |
 | latitude | Double |  no  |  |
 | longitude | Double |  no  |  |
 | updated_at | String |  no  |  |
 | address_category | String |  no  |  |

---


 
 
 #### [ShipmentGst](#ShipmentGst)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand_calculated_amount | Double |  no  |  |
 | value_of_good | Double |  no  |  |
 | gst_fee | Double |  no  |  |

---


 
 
 #### [PlatformShipmentDetailsBrand](#PlatformShipmentDetailsBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credit_note_allowed | Bool |  no  |  |
 | brand_name | String |  no  |  |
 | modified_on | String |  no  |  |
 | id | Int |  no  |  |
 | is_virtual_invoice | Bool |  no  |  |
 | created_on | String |  no  |  |
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
 | is_passed | Bool |  no  |  |
 | is_current | Bool |  no  |  |

---


 
 
 #### [ItemsPayments](#ItemsPayments)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display_priority | Int |  no  |  |
 | id | Int |  no  |  |
 | is_active | Bool |  no  |  |
 | display_name | String |  no  |  |
 | logo | String |  no  |  |
 | payment_identifier | String |  no  |  |
 | source_nickname | String |  no  |  |
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
 | request_id | String? |  yes  |  |
 | message | String? |  yes  |  |
 | mobile | String? |  yes  |  |
 | country_code | String? |  yes  |  |
 | resend_timer | Int? |  yes  |  |
 | resend_token | String |  no  |  |

---


 
 
 #### [OrderPicklistListing](#OrderPicklistListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [PlatformOrderUserInfo](#PlatformOrderUserInfo) |  no  |  |
 | delivery_address | [PlatformDeliveryAddress](#PlatformDeliveryAddress) |  no  |  |
 | channel | [Channel](#Channel) |  no  |  |
 | breakup_values | [PlatformBreakupValues](#PlatformBreakupValues) |  no  |  |
 | id | String |  no  |  |
 | application | [PlatformApplication](#PlatformApplication) |  no  |  |
 | shipments | [PlatformShipmentDetails](#PlatformShipmentDetails) |  no  |  |
 | created_at | String |  no  |  |
 | total_shipments_in_order | Int |  no  |  |
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
 | address_type | String |  no  |  |
 | address_category | String |  no  |  |
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
 | address_type | String? |  yes  |  |
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
 | bag_list | [[ShipmentTrackResponseBagListItem](#ShipmentTrackResponseBagListItem)]? |  yes  |  |
 | message | String? |  yes  |  |
 | order_value | Int? |  yes  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItem](#ShipmentTrackResponseBagListItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enable_tracking | Bool |  no  |  |
 | price | String |  no  |  |
 | time_slot | String |  no  |  |
 | product_name | String |  no  |  |
 | can_return | Bool |  no  |  |
 | order_date | String |  no  |  |
 | is_try_at_home | Bool |  no  |  |
 | breakup_values | [[ShipmentTrackResponseBagListItemBreakValues](#ShipmentTrackResponseBagListItemBreakValues)] |  no  |  |
 | statuses | [[ShipmentTrackResponseBagListItemStatuses](#ShipmentTrackResponseBagListItemStatuses)] |  no  |  |
 | is_active | Bool |  no  |  |
 | bag_id | String |  no  |  |
 | order_id | String |  no  |  |
 | size | String |  no  |  |
 | payment_mode_source | String |  no  |  |
 | dp_details | [ShipmentTrackResponseBagListItemDpDetails](#ShipmentTrackResponseBagListItemDpDetails) |  no  |  |
 | product_id | Int |  no  |  |
 | product_image | [ShipmentTrackResponseBagListItemsProductImage](#ShipmentTrackResponseBagListItemsProductImage) |  no  |  |
 | brand_name | String |  no  |  |
 | price_marked | String |  no  |  |
 | status | String |  no  |  |
 | can_cancel | Bool |  no  |  |
 | payment_mode | String |  no  |  |
 | fynd_cash_msg | String |  no  |  |
 | delivery_address | String |  no  |  |

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
 | nps_rating | Int |  no  |  |
 | nps_string | String |  no  |  |
 | progress_status | [[ShipmentTrackResponseBagListItemStatusesProgress](#ShipmentTrackResponseBagListItemStatusesProgress)] |  no  |  |
 | flow_type | String |  no  |  |
 | status_progress | Int |  no  |  |
 | is_nps_done | Bool |  no  |  |
 | header_message | String |  no  |  |
 | is_delayed | String |  no  |  |
 | tracking_list | [[ShipmentTrackResponseBagListItemStatusesTrack](#ShipmentTrackResponseBagListItemStatusesTrack)] |  no  |  |

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
 | is_passed | Bool |  no  |  |
 | is_current | Bool |  no  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemDpDetails](#ShipmentTrackResponseBagListItemDpDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tracking_no | String |  no  |  |
 | courier | String |  no  |  |

---


 
 
 #### [ShipmentTrackResponseBagListItemsProductImage](#ShipmentTrackResponseBagListItemsProductImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspect_ratio | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [UpdateShipmentStatusResponse](#UpdateShipmentStatusResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [String: Any]? |  yes  |  |
 | error_shipments | [[String: Any]] |  no  |  |

---


 
 
 #### [UpdateShipmentStatusBody](#UpdateShipmentStatusBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipments | [String: Any]? |  yes  |  |
 | force_transition | Bool? |  yes  |  |
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
 | reason_id | Double |  no  |  |
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
 | updated_at | String |  no  |  |
 | last_location_recieved_at | String |  no  |  |
 | reason | String |  no  |  |
 | shipment_type | String |  no  |  |
 | status | String |  no  |  |
 | updated_time | String |  no  |  |
 | account_name | String |  no  |  |

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
 | shipment_ids | [String]? |  yes  |  |
 | expected_status | String? |  yes  |  |

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




 
 
 #### [GetSearchWordsData](#GetSearchWordsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _custom_json | [String: Any] |  no  |  |
 | uid | String |  no  |  |
 | result | [String: Any] |  no  |  |
 | app_id | String |  no  |  |
 | words | [String] |  no  |  |

---


 
 
 #### [GetSearchWordsDetailResponse](#GetSearchWordsDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [GetSearchWordsData](#GetSearchWordsData) |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ErrorResponse](#ErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | message | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | status | Int |  no  |  |

---


 
 
 #### [DeleteResponse](#DeleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [SearchKeywordResult](#SearchKeywordResult)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort_on | String? |  yes  |  |
 | query | [String: Any]? |  yes  |  |

---


 
 
 #### [CreateSearchKeyword](#CreateSearchKeyword)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _custom_json | [String: Any] |  no  |  |
 | is_active | Bool |  no  |  |
 | result | [SearchKeywordResult](#SearchKeywordResult)? |  yes  |  |
 | app_id | String |  no  |  |
 | words | [String] |  no  |  |

---


 
 
 #### [GetSearchWordsResponse](#GetSearchWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GetSearchWordsData](#GetSearchWordsData)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [GetAutocompleteWordsData](#GetAutocompleteWordsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [[String: Any]] |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | uid | String |  no  |  |
 | app_id | String |  no  |  |
 | words | [String] |  no  |  |

---


 
 
 #### [GetAutocompleteWordsResponse](#GetAutocompleteWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GetAutocompleteWordsData](#GetAutocompleteWordsData)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

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
 | _custom_json | [String: Any] |  no  |  |
 | logo | [Media](#Media) |  no  |  |
 | action | [AutocompleteAction](#AutocompleteAction) |  no  |  |
 | display | String |  no  |  |

---


 
 
 #### [CreateAutocompleteKeyword](#CreateAutocompleteKeyword)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | results | [[AutocompleteResult](#AutocompleteResult)] |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | is_active | Bool |  no  |  |
 | app_id | String |  no  |  |
 | words | [String] |  no  |  |

---


 
 
 #### [CreateAutocompleteWordsResponse](#CreateAutocompleteWordsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app_id | String |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | results | [[String: Any]] |  no  |  |
 | words | [String] |  no  |  |

---


 
 
 #### [ProductBundleItem](#ProductBundleItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | auto_select | Bool |  no  |  |
 | max_quantity | Int? |  yes  |  |
 | allow_remove | Bool |  no  |  |
 | product_uid | Int? |  yes  |  |
 | min_quantity | Int? |  yes  |  |
 | auto_add_to_cart | Bool |  no  |  |

---


 
 
 #### [GetProductBundleCreateResponse](#GetProductBundleCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | same_store_assignment | Bool |  no  |  |
 | is_active | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | id | String |  no  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)]? |  yes  |  |
 | meta | [String: Any] |  no  |  |
 | created_on | String |  no  |  |
 | choice | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | page_visibility | [String] |  no  |  |
 | logo | String |  no  |  |
 | modified_on | String |  no  |  |
 | company_id | Int |  no  |  |
 | created_by | [String: Any] |  no  |  |
 | modified_by | [String: Any] |  no  |  |

---


 
 
 #### [GetProductBundleListingResponse](#GetProductBundleListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GetProductBundleCreateResponse](#GetProductBundleCreateResponse)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ProductBundleRequest](#ProductBundleRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | same_store_assignment | Bool |  no  |  |
 | is_active | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)]? |  yes  |  |
 | meta | [String: Any] |  no  |  |
 | created_on | String |  no  |  |
 | choice | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | page_visibility | [String] |  no  |  |
 | logo | String |  no  |  |
 | modified_on | String |  no  |  |
 | created_by | [String: Any] |  no  |  |
 | modified_by | [String: Any] |  no  |  |

---


 
 
 #### [Price](#Price)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min_effective | Double |  no  |  |
 | min_marked | Double |  no  |  |
 | max_marked | Double |  no  |  |
 | max_effective | Double |  no  |  |
 | currency | String |  no  |  |

---


 
 
 #### [LimitedProductData](#LimitedProductData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | price | [String: Any] |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | item_code | String |  no  |  |
 | name | String |  no  |  |
 | country_of_origin | String |  no  |  |
 | slug | String |  no  |  |
 | images | [String] |  no  |  |
 | quantity | Int |  no  |  |
 | short_description | String |  no  |  |
 | identifier | [String: Any] |  no  |  |
 | sizes | [String] |  no  |  |

---


 
 
 #### [Size](#Size)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | String |  no  |  |
 | quantity | Int |  no  |  |
 | is_available | Bool |  no  |  |
 | display | String |  no  |  |

---


 
 
 #### [GetProducts](#GetProducts)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | auto_select | Bool |  no  |  |
 | price | [Price](#Price) |  no  |  |
 | max_quantity | Int |  no  |  |
 | allow_remove | Bool |  no  |  |
 | product_uid | Int |  no  |  |
 | min_quantity | Int |  no  |  |
 | product_details | [LimitedProductData](#LimitedProductData) |  no  |  |
 | sizes | [[Size](#Size)] |  no  |  |
 | auto_add_to_cart | Bool |  no  |  |

---


 
 
 #### [GetProductBundleResponse](#GetProductBundleResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | same_store_assignment | Bool |  no  |  |
 | is_active | Bool |  no  |  |
 | name | String |  no  |  |
 | products | [[GetProducts](#GetProducts)] |  no  |  |
 | meta | [String: Any] |  no  |  |
 | slug | String |  no  |  |
 | choice | String |  no  |  |
 | page_visibility | [String] |  no  |  |
 | logo | String |  no  |  |
 | company_id | Int |  no  |  |

---


 
 
 #### [ProductBundleUpdateRequest](#ProductBundleUpdateRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | same_store_assignment | Bool |  no  |  |
 | is_active | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | products | [[ProductBundleItem](#ProductBundleItem)]? |  yes  |  |
 | meta | [String: Any] |  no  |  |
 | choice | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | page_visibility | [String] |  no  |  |
 | logo | String |  no  |  |
 | modified_on | String |  no  |  |
 | modified_by | [String: Any] |  no  |  |

---


 
 
 #### [ListSizeGuide](#ListSizeGuide)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]] |  no  |  |
 | page | [String: Any] |  no  |  |

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
 | tag | String |  no  |  |
 | subtitle | String |  no  |  |
 | image | String |  no  |  |
 | name | String? |  yes  |  |
 | id | String |  no  |  |
 | brand_id | Int |  no  |  |
 | created_on | String |  no  |  |
 | title | String? |  yes  |  |
 | company_id | Int |  no  |  |
 | description | String |  no  |  |
 | modified_on | String |  no  |  |
 | active | Bool |  no  |  |
 | created_by | [String: Any] |  no  |  |
 | modified_by | [String: Any] |  no  |  |
 | guide | [Guide](#Guide) |  no  |  |

---


 
 
 #### [SuccessResponse](#SuccessResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | success | Bool |  no  |  |

---


 
 
 #### [SizeGuideResponse](#SizeGuideResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | String |  no  |  |
 | subtitle | String |  no  |  |
 | name | String |  no  |  |
 | id | String |  no  |  |
 | brand_id | Int |  no  |  |
 | created_on | String |  no  |  |
 | title | String |  no  |  |
 | company_id | Int |  no  |  |
 | modified_on | String |  no  |  |
 | active | Bool |  no  |  |
 | created_by | [String: Any] |  no  |  |
 | modified_by | [String: Any] |  no  |  |
 | guide | [String: Any] |  no  |  |

---


 
 
 #### [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | compare | [String: Any] |  no  |  |
 | detail | [String: Any] |  no  |  |
 | variant | [String: Any] |  no  |  |
 | similar | [String: Any] |  no  |  |

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
 | key | String |  no  |  |
 | units | [[String: Any]] |  no  |  |
 | filter_types | [String] |  no  |  |
 | display | String |  no  |  |

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


 
 
 #### [GetCatalogConfigurationMetaData](#GetCatalogConfigurationMetaData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | product | [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct) |  no  |  |
 | listing | [MetaDataListingResponse](#MetaDataListingResponse) |  no  |  |

---


 
 
 #### [ProductSize](#ProductSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int? |  yes  |  |
 | max | Int? |  yes  |  |

---


 
 
 #### [ConfigurationProductVariantConfig](#ConfigurationProductVariantConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display_type | String? |  yes  |  |
 | is_active | Bool? |  yes  |  |
 | name | String? |  yes  |  |
 | key | String? |  yes  |  |
 | size | [ProductSize](#ProductSize)? |  yes  |  |
 | priority | Int? |  yes  |  |
 | logo | String |  no  |  |

---


 
 
 #### [ConfigurationProductVariant](#ConfigurationProductVariant)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config | [[ConfigurationProductVariantConfig](#ConfigurationProductVariantConfig)] |  no  |  |

---


 
 
 #### [ConfigurationProductConfig](#ConfigurationProductConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | subtitle | String |  no  |  |
 | is_active | Bool? |  yes  |  |
 | key | String? |  yes  |  |
 | size | [ProductSize](#ProductSize) |  no  |  |
 | priority | Int? |  yes  |  |
 | title | String |  no  |  |
 | logo | String |  no  |  |

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


 
 
 #### [ConfigurationListingSortConfig](#ConfigurationListingSortConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_active | Bool? |  yes  |  |
 | name | String |  no  |  |
 | key | String? |  yes  |  |
 | priority | Int? |  yes  |  |
 | logo | String |  no  |  |

---


 
 
 #### [ConfigurationListingSort](#ConfigurationListingSort)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | default_key | String? |  yes  |  |
 | config | [[ConfigurationListingSortConfig](#ConfigurationListingSortConfig)] |  no  |  |

---


 
 
 #### [ConfigurationBucketPoints](#ConfigurationBucketPoints)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | end | Double |  no  |  |
 | start | Double |  no  |  |

---


 
 
 #### [ConfigurationListingFilterValue](#ConfigurationListingFilterValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort | String |  no  |  |
 | value | String |  no  |  |
 | condition | String |  no  |  |
 | bucket_points | [[ConfigurationBucketPoints](#ConfigurationBucketPoints)] |  no  |  |
 | map | [String: Any] |  no  |  |

---


 
 
 #### [ConfigurationListingFilterConfig](#ConfigurationListingFilterConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_active | Bool? |  yes  |  |
 | name | String |  no  |  |
 | value_config | [ConfigurationListingFilterValue](#ConfigurationListingFilterValue) |  no  |  |
 | key | String? |  yes  |  |
 | priority | Int? |  yes  |  |
 | type | String? |  yes  |  |
 | logo | String |  no  |  |

---


 
 
 #### [ConfigurationListingFilter](#ConfigurationListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allow_single | Bool? |  yes  |  |
 | attribute_config | [[ConfigurationListingFilterConfig](#ConfigurationListingFilterConfig)] |  no  |  |

---


 
 
 #### [ConfigurationListing](#ConfigurationListing)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort | [ConfigurationListingSort](#ConfigurationListingSort)? |  yes  |  |
 | filter | [ConfigurationListingFilter](#ConfigurationListingFilter)? |  yes  |  |

---


 
 
 #### [AppCatalogConfiguration](#AppCatalogConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config_type | String? |  yes  |  |
 | id | String |  no  |  |
 | product | [ConfigurationProduct](#ConfigurationProduct) |  no  |  |
 | config_id | String |  no  |  |
 | app_id | String? |  yes  |  |
 | listing | [ConfigurationListing](#ConfigurationListing) |  no  |  |

---


 
 
 #### [GetAppCatalogConfiguration](#GetAppCatalogConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [AppCatalogConfiguration](#AppCatalogConfiguration) |  no  |  |
 | is_default | Bool |  no  |  |

---


 
 
 #### [AppConfiguration](#AppConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | config_type | String? |  yes  |  |
 | product | [ConfigurationProduct](#ConfigurationProduct) |  no  |  |
 | config_id | String |  no  |  |
 | app_id | String? |  yes  |  |
 | listing | [ConfigurationListing](#ConfigurationListing) |  no  |  |

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
 | config_type | String? |  yes  |  |
 | id | String |  no  |  |
 | product | [GetCatalogConfigurationDetailsProduct](#GetCatalogConfigurationDetailsProduct) |  no  |  |
 | config_id | String |  no  |  |
 | app_id | String? |  yes  |  |
 | listing | [GetCatalogConfigurationDetailsSchemaListing](#GetCatalogConfigurationDetailsSchemaListing) |  no  |  |

---


 
 
 #### [GetAppCatalogEntityConfiguration](#GetAppCatalogEntityConfiguration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [EntityConfiguration](#EntityConfiguration) |  no  |  |
 | is_default | Bool |  no  |  |

---


 
 
 #### [ProductSortOn](#ProductSortOn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_selected | Bool |  no  |  |
 | name | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [ProductFiltersKey](#ProductFiltersKey)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String |  no  |  |
 | name | String? |  yes  |  |
 | kind | String |  no  |  |
 | display | String? |  yes  |  |

---


 
 
 #### [ProductFiltersValue](#ProductFiltersValue)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |
 | display_format | String |  no  |  |
 | min | Int |  no  |  |
 | currency_code | String |  no  |  |
 | selected_min | Int |  no  |  |
 | value | String? |  yes  |  |
 | max | Int |  no  |  |
 | query_format | String |  no  |  |
 | currency_symbol | String |  no  |  |
 | selected_max | Int |  no  |  |
 | is_selected | Bool? |  yes  |  |
 | display | String? |  yes  |  |

---


 
 
 #### [ProductFilters](#ProductFilters)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | [ProductFiltersKey](#ProductFiltersKey)? |  yes  |  |
 | values | [[ProductFiltersValue](#ProductFiltersValue)]? |  yes  |  |

---


 
 
 #### [GetCollectionQueryOptionResponse](#GetCollectionQueryOptionResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort_on | [[ProductSortOn](#ProductSortOn)] |  no  |  |
 | filters | [[ProductFilters](#ProductFilters)] |  no  |  |

---


 
 
 #### [CollectionListingFilterTag](#CollectionListingFilterTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_selected | Bool |  no  |  |
 | name | String |  no  |  |
 | display | String |  no  |  |

---


 
 
 #### [CollectionListingFilterType](#CollectionListingFilterType)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_selected | Bool |  no  |  |
 | name | String |  no  |  |
 | display | String |  no  |  |

---


 
 
 #### [CollectionListingFilter](#CollectionListingFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tags | [[CollectionListingFilterTag](#CollectionListingFilterTag)] |  no  |  |
 | type | [[CollectionListingFilterType](#CollectionListingFilterType)] |  no  |  |

---


 
 
 #### [BannerImage](#BannerImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspect_ratio | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [ImageUrls](#ImageUrls)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | portrait | [BannerImage](#BannerImage) |  no  |  |
 | landscape | [BannerImage](#BannerImage) |  no  |  |

---


 
 
 #### [Media1](#Media1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | url | String? |  yes  |  |
 | meta | [String: Any] |  no  |  |

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


 
 
 #### [GetCollectionDetailNest](#GetCollectionDetailNest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | String |  no  |  |
 | visible_facets_keys | [String] |  no  |  |
 | query | [String: Any] |  no  |  |
 | slug | String |  no  |  |
 | type | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | logo | [Media1](#Media1) |  no  |  |
 | cron | [String: Any] |  no  |  |
 | meta | [String: Any] |  no  |  |
 | allow_facets | Bool |  no  |  |
 | allow_sort | Bool |  no  |  |
 | tag | [String] |  no  |  |
 | badge | [String: Any] |  no  |  |
 | app_id | String |  no  |  |
 | description | String |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | is_active | Bool |  no  |  |
 | name | String |  no  |  |
 | _schedule | [String: Any] |  no  |  |

---


 
 
 #### [GetCollectionListingResponse](#GetCollectionListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | filters | [CollectionListingFilter](#CollectionListingFilter) |  no  |  |
 | items | [[GetCollectionDetailNest](#GetCollectionDetailNest)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [SeoDetail](#SeoDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | description | String |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [CollectionImage](#CollectionImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspect_ratio | String? |  yes  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [CollectionBanner](#CollectionBanner)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | portrait | [CollectionImage](#CollectionImage)? |  yes  |  |
 | landscape | [CollectionImage](#CollectionImage)? |  yes  |  |

---


 
 
 #### [UserInfo](#UserInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | uid | String |  no  |  |
 | username | String |  no  |  |
 | user_id | String |  no  |  |

---


 
 
 #### [CollectionBadge](#CollectionBadge)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | text | String |  no  |  |
 | color | String |  no  |  |

---


 
 
 #### [Schedule](#Schedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | cron | String |  no  |  |
 | duration | Int |  no  |  |
 | end | String |  no  |  |
 | start | String |  no  |  |

---


 
 
 #### [CreateCollection](#CreateCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | visible_facets_keys | [String] |  no  |  |
 | query | [String: Any] |  no  |  |
 | sort_on | String |  no  |  |
 | slug | String? |  yes  |  |
 | seo | [SeoDetail](#SeoDetail) |  no  |  |
 | type | String? |  yes  |  |
 | banners | [CollectionBanner](#CollectionBanner)? |  yes  |  |
 | logo | [CollectionImage](#CollectionImage)? |  yes  |  |
 | _custom_json | [String: Any] |  no  |  |
 | _locale_language | [String: Any] |  no  |  |
 | meta | [String: Any] |  no  |  |
 | allow_facets | Bool |  no  |  |
 | tags | [String] |  no  |  |
 | created_by | [UserInfo](#UserInfo) |  no  |  |
 | allow_sort | Bool |  no  |  |
 | badge | [CollectionBadge](#CollectionBadge) |  no  |  |
 | published | Bool |  no  |  |
 | app_id | String? |  yes  |  |
 | description | String |  no  |  |
 | modified_by | [UserInfo](#UserInfo) |  no  |  |
 | is_active | Bool |  no  |  |
 | name | String? |  yes  |  |
 | _schedule | [Schedule](#Schedule) |  no  |  |

---


 
 
 #### [CollectionCreateResponse](#CollectionCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allow_sort | Bool |  no  |  |
 | visible_facets_keys | [String] |  no  |  |
 | tag | [String] |  no  |  |
 | query | [String: Any] |  no  |  |
 | is_active | Bool |  no  |  |
 | cron | [String: Any] |  no  |  |
 | name | String |  no  |  |
 | _schedule | [String: Any] |  no  |  |
 | badge | [String: Any] |  no  |  |
 | logo | [BannerImage](#BannerImage) |  no  |  |
 | meta | [String: Any] |  no  |  |
 | slug | String |  no  |  |
 | type | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | app_id | String |  no  |  |
 | description | String |  no  |  |
 | allow_facets | Bool |  no  |  |

---


 
 
 #### [CollectionDetailResponse](#CollectionDetailResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allow_sort | Bool |  no  |  |
 | visible_facets_keys | [String] |  no  |  |
 | tag | [String] |  no  |  |
 | query | [String: Any] |  no  |  |
 | is_active | Bool |  no  |  |
 | cron | [String: Any] |  no  |  |
 | name | String |  no  |  |
 | _schedule | [String: Any] |  no  |  |
 | badge | [String: Any] |  no  |  |
 | logo | [Media1](#Media1) |  no  |  |
 | meta | [String: Any] |  no  |  |
 | slug | String |  no  |  |
 | type | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | app_id | String |  no  |  |
 | description | String |  no  |  |
 | allow_facets | Bool |  no  |  |

---


 
 
 #### [UpdateCollection](#UpdateCollection)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | visible_facets_keys | [String] |  no  |  |
 | query | [String: Any] |  no  |  |
 | sort_on | String |  no  |  |
 | slug | String |  no  |  |
 | seo | [SeoDetail](#SeoDetail) |  no  |  |
 | banners | [CollectionBanner](#CollectionBanner) |  no  |  |
 | logo | [CollectionImage](#CollectionImage) |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | _locale_language | [String: Any] |  no  |  |
 | meta | [String: Any] |  no  |  |
 | allow_facets | Bool |  no  |  |
 | tags | [String] |  no  |  |
 | allow_sort | Bool |  no  |  |
 | badge | [CollectionBadge](#CollectionBadge) |  no  |  |
 | published | Bool |  no  |  |
 | description | String |  no  |  |
 | modified_by | [UserInfo](#UserInfo) |  no  |  |
 | is_active | Bool |  no  |  |
 | name | String |  no  |  |
 | _schedule | [Schedule](#Schedule) |  no  |  |

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
 | details | [[ProductDetailAttribute](#ProductDetailAttribute)] |  no  |  |
 | title | String |  no  |  |

---


 
 
 #### [ProductBrand](#ProductBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | logo | [Media1](#Media1) |  no  |  |
 | name | String |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |

---


 
 
 #### [Price1](#Price1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Double |  no  |  |
 | max | Double |  no  |  |
 | currency_code | String |  no  |  |
 | currency_symbol | String |  no  |  |

---


 
 
 #### [ProductListingPrice](#ProductListingPrice)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marked | [Price1](#Price1) |  no  |  |
 | effective | [Price1](#Price1) |  no  |  |

---


 
 
 #### [ProductListingDetail](#ProductListingDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | item_type | String |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | has_variant | Bool |  no  |  |
 | color | String |  no  |  |
 | slug | String? |  yes  |  |
 | type | String |  no  |  |
 | teaser_tag | [String: Any] |  no  |  |
 | product_online_date | String |  no  |  |
 | highlights | [String] |  no  |  |
 | short_description | String |  no  |  |
 | rating | Double |  no  |  |
 | image_nature | String |  no  |  |
 | rating_count | Int |  no  |  |
 | grouped_attributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)] |  no  |  |
 | brand | [ProductBrand](#ProductBrand) |  no  |  |
 | similars | [String] |  no  |  |
 | promo_meta | [String: Any] |  no  |  |
 | discount | String |  no  |  |
 | description | String |  no  |  |
 | sellable | Bool |  no  |  |
 | price | [ProductListingPrice](#ProductListingPrice) |  no  |  |
 | name | String |  no  |  |
 | item_code | String |  no  |  |
 | medias | [[Media1](#Media1)] |  no  |  |
 | tryouts | [String] |  no  |  |

---


 
 
 #### [GetCollectionItemsResponse](#GetCollectionItemsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | sort_on | [[ProductSortOn](#ProductSortOn)] |  no  |  |
 | filters | [[ProductFilters](#ProductFilters)] |  no  |  |
 | items | [[ProductListingDetail](#ProductListingDetail)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [CollectionItemRequest](#CollectionItemRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page_no | Int? |  yes  |  |
 | page_size | Int? |  yes  |  |

---


 
 
 #### [UpdatedResponse](#UpdatedResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |

---


 
 
 #### [CatalogInsightItem](#CatalogInsightItem)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | count | Int |  no  |  |
 | out_of_stock_count | Int |  no  |  |
 | sellable_count | Int |  no  |  |

---


 
 
 #### [CatalogInsightBrand](#CatalogInsightBrand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | total_articles | Int |  no  |  |
 | available_articles | Int |  no  |  |
 | name | String |  no  |  |
 | article_freshness | Int |  no  |  |
 | available_sizes | Int |  no  |  |
 | total_sizes | Int |  no  |  |

---


 
 
 #### [CatalogInsightResponse](#CatalogInsightResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [CatalogInsightItem](#CatalogInsightItem) |  no  |  |
 | brand_distribution | [CatalogInsightBrand](#CatalogInsightBrand) |  no  |  |

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
 | brand_distribution | [CatalogInsightBrand](#CatalogInsightBrand) |  no  |  |
 | data | [CrossSellingData](#CrossSellingData) |  no  |  |

---


 
 
 #### [OptInPostRequest](#OptInPostRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store_ids | [Int] |  no  |  |
 | opt_level | String? |  yes  |  |
 | brand_ids | [Int] |  no  |  |
 | enabled | Bool |  no  |  |

---


 
 
 #### [CompanyOptIn](#CompanyOptIn)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store_ids | [Int]? |  yes  |  |
 | created_on | Int? |  yes  |  |
 | opt_level | String? |  yes  |  |
 | brand_ids | [Int]? |  yes  |  |
 | modified_on | Int? |  yes  |  |
 | platform | String? |  yes  |  |
 | company_id | Int? |  yes  |  |
 | created_by | [String: Any] |  no  |  |
 | modified_by | [String: Any] |  no  |  |
 | enabled | Bool? |  yes  |  |

---


 
 
 #### [GetOptInPlatform](#GetOptInPlatform)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CompanyOptIn](#CompanyOptIn)]? |  yes  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [OptinCompanyDetail](#OptinCompanyDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | business_type | String |  no  |  |
 | name | String |  no  |  |
 | company_type | String |  no  |  |

---


 
 
 #### [CompanyBrandDetail](#CompanyBrandDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand_name | String |  no  |  |
 | company_id | Int |  no  |  |
 | total_article | Int |  no  |  |
 | brand_id | Int |  no  |  |

---


 
 
 #### [OptinCompanyBrandDetailsView](#OptinCompanyBrandDetailsView)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CompanyBrandDetail](#CompanyBrandDetail)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

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
 | uid | Int |  no  |  |
 | store_type | String |  no  |  |
 | name | String |  no  |  |
 | additional_contacts | [[String: Any]] |  no  |  |
 | created_on | String |  no  |  |
 | documents | [[String: Any]] |  no  |  |
 | store_code | String |  no  |  |
 | display_name | String |  no  |  |
 | timing | [String: Any] |  no  |  |
 | modified_on | String |  no  |  |
 | company_id | Int |  no  |  |

---


 
 
 #### [OptinStoreDetails](#OptinStoreDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[StoreDetail](#StoreDetail)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [AttributeMasterMandatoryDetails](#AttributeMasterMandatoryDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l3_keys | [String] |  no  |  |

---


 
 
 #### [AttributeMasterMeta](#AttributeMasterMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | mandatory_details | [AttributeMasterMandatoryDetails](#AttributeMasterMandatoryDetails)? |  yes  |  |
 | enriched | Bool |  no  |  |

---


 
 
 #### [AttributeMasterFilter](#AttributeMasterFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | depends_on | [String] |  no  |  |
 | priority | Int |  no  |  |
 | indexing | Bool? |  yes  |  |

---


 
 
 #### [AttributeMasterDetails](#AttributeMasterDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | display_type | String? |  yes  |  |

---


 
 
 #### [AttributeSchemaRange](#AttributeSchemaRange)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | min | Int |  no  |  |
 | max | Int |  no  |  |

---


 
 
 #### [AttributeMaster](#AttributeMaster)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | allowed_values | [String] |  no  |  |
 | range | [AttributeSchemaRange](#AttributeSchemaRange) |  no  |  |
 | mandatory | Bool |  no  |  |
 | multi | Bool |  no  |  |
 | type | String? |  yes  |  |
 | format | String |  no  |  |

---


 
 
 #### [GenderDetail](#GenderDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | departments | [String] |  no  |  |
 | meta | [AttributeMasterMeta](#AttributeMasterMeta) |  no  |  |
 | is_nested | Bool |  no  |  |
 | logo | String |  no  |  |
 | slug | String |  no  |  |
 | enabled_for_end_consumer | Bool |  no  |  |
 | filters | [AttributeMasterFilter](#AttributeMasterFilter) |  no  |  |
 | details | [AttributeMasterDetails](#AttributeMasterDetails) |  no  |  |
 | schema | [AttributeMaster](#AttributeMaster) |  no  |  |
 | description | String |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [ProdcutTemplateCategoriesResponse](#ProdcutTemplateCategoriesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[String: Any]] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [PTErrorResponse](#PTErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | errors | [String: Any] |  no  |  |
 | meta | [String: Any] |  no  |  |
 | message | String |  no  |  |
 | status | Int |  no  |  |

---


 
 
 #### [UserSerializer](#UserSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | contact | String |  no  |  |
 | username | String |  no  |  |
 | user_id | String |  no  |  |

---


 
 
 #### [GetDepartment](#GetDepartment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | search | String |  no  |  |
 | item_type | String |  no  |  |
 | is_active | Bool |  no  |  |
 | priority_order | Int |  no  |  |
 | modified_by | [UserSerializer](#UserSerializer) |  no  |  |
 | name | String |  no  |  |
 | created_on | String |  no  |  |
 | slug | String |  no  |  |
 | synonyms | [String] |  no  |  |
 | page_no | Int |  no  |  |
 | logo | String |  no  |  |
 | modified_on | String |  no  |  |
 | created_by | [UserSerializer](#UserSerializer) |  no  |  |
 | page_size | Int |  no  |  |

---


 
 
 #### [DepartmentsResponse](#DepartmentsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[GetDepartment](#GetDepartment)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [DepartmentErrorResponse](#DepartmentErrorResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | errors | [String: Any] |  no  |  |
 | meta | [String: Any] |  no  |  |
 | message | String |  no  |  |
 | status | Int |  no  |  |

---


 
 
 #### [ProductTemplate](#ProductTemplate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | String |  no  |  |
 | is_active | Bool |  no  |  |
 | attributes | [String] |  no  |  |
 | name | String |  no  |  |
 | departments | [String] |  no  |  |
 | is_physical | Bool? |  yes  |  |
 | logo | String |  no  |  |
 | created_on | String |  no  |  |
 | slug | String? |  yes  |  |
 | is_archived | Bool |  no  |  |
 | categories | [String] |  no  |  |
 | description | String |  no  |  |
 | modified_on | String |  no  |  |
 | created_by | [String: Any] |  no  |  |
 | modified_by | [String: Any] |  no  |  |

---


 
 
 #### [TemplatesResponse](#TemplatesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [ProductTemplate](#ProductTemplate) |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [TemplateDetails](#TemplateDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | String |  no  |  |
 | is_active | Bool |  no  |  |
 | attributes | [String] |  no  |  |
 | name | String |  no  |  |
 | departments | [String] |  no  |  |
 | is_physical | Bool? |  yes  |  |
 | logo | String |  no  |  |
 | slug | String? |  yes  |  |
 | is_archived | Bool |  no  |  |
 | categories | [String] |  no  |  |
 | description | String |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [Properties](#Properties)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multi_size | [String: Any] |  no  |  |
 | variants | [String: Any] |  no  |  |
 | item_type | [String: Any] |  no  |  |
 | hsn_code | [String: Any] |  no  |  |
 | command | [String: Any] |  no  |  |
 | slug | [String: Any] |  no  |  |
 | trader_type | [String: Any] |  no  |  |
 | sizes | [String: Any] |  no  |  |
 | trader | [String: Any] |  no  |  |
 | moq | [String: Any] |  no  |  |
 | teaser_tag | [String: Any] |  no  |  |
 | no_of_boxes | [String: Any] |  no  |  |
 | category_slug | [String: Any] |  no  |  |
 | highlights | [String: Any] |  no  |  |
 | return_config | [String: Any] |  no  |  |
 | short_description | [String: Any] |  no  |  |
 | size_guide | [String: Any] |  no  |  |
 | currency | [String: Any] |  no  |  |
 | tags | [String: Any] |  no  |  |
 | product_group_tag | [String: Any] |  no  |  |
 | is_dependent | [String: Any] |  no  |  |
 | product_publish | [String: Any] |  no  |  |
 | brand_uid | [String: Any] |  no  |  |
 | custom_order | [String: Any] |  no  |  |
 | description | [String: Any] |  no  |  |
 | is_active | [String: Any] |  no  |  |
 | item_code | [String: Any] |  no  |  |
 | name | [String: Any] |  no  |  |
 | country_of_origin | [String: Any] |  no  |  |
 | media | [String: Any] |  no  |  |

---


 
 
 #### [GlobalValidation](#GlobalValidation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | definitions | [String: Any] |  no  |  |
 | title | String |  no  |  |
 | type | String |  no  |  |
 | required | [String] |  no  |  |
 | description | String |  no  |  |
 | properties | [Properties](#Properties) |  no  |  |

---


 
 
 #### [TemplateValidationData](#TemplateValidationData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | global_validation | [GlobalValidation](#GlobalValidation) |  no  |  |
 | template_validation | [String: Any] |  no  |  |

---


 
 
 #### [TemplatesValidationResponse](#TemplatesValidationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template_details | [TemplateDetails](#TemplateDetails) |  no  |  |
 | data | [TemplateValidationData](#TemplateValidationData) |  no  |  |

---


 
 
 #### [InventoryValidationResponse](#InventoryValidationResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | data | [String: Any] |  no  |  |

---


 
 
 #### [HSNData](#HSNData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hsn_code | [String] |  no  |  |
 | country_of_origin | [String] |  no  |  |

---


 
 
 #### [HSNCodesResponse](#HSNCodesResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | data | [HSNData](#HSNData) |  no  |  |

---


 
 
 #### [ProductDownloadItemsData](#ProductDownloadItemsData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | templates | [String] |  no  |  |
 | brand | [String] |  no  |  |
 | type | String |  no  |  |

---


 
 
 #### [VerifiedBy](#VerifiedBy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | user_id | String |  no  |  |

---


 
 
 #### [ProductDownloadsItems](#ProductDownloadsItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template_tags | [String: Any] |  no  |  |
 | url | String |  no  |  |
 | completed_on | String |  no  |  |
 | seller_id | Double |  no  |  |
 | id | String |  no  |  |
 | data | [ProductDownloadItemsData](#ProductDownloadItemsData) |  no  |  |
 | task_id | String |  no  |  |
 | trigger_on | String |  no  |  |
 | created_by | [VerifiedBy](#VerifiedBy) |  no  |  |
 | status | String |  no  |  |

---


 
 
 #### [ProductDownloadsResponse](#ProductDownloadsResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [ProductDownloadsItems](#ProductDownloadsItems) |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ProductConfigurationDownloads](#ProductConfigurationDownloads)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multivalue | Bool |  no  |  |
 | data | [[String: Any]] |  no  |  |

---


 
 
 #### [CategoryMappingValues](#CategoryMappingValues)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | catalog_id | Int |  no  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [CategoryMapping](#CategoryMapping)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | facebook | [CategoryMappingValues](#CategoryMappingValues) |  no  |  |
 | google | [CategoryMappingValues](#CategoryMappingValues) |  no  |  |
 | ajio | [CategoryMappingValues](#CategoryMappingValues) |  no  |  |

---


 
 
 #### [Media2](#Media2)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logo | String? |  yes  |  |
 | portrait | String? |  yes  |  |
 | landscape | String? |  yes  |  |

---


 
 
 #### [Hierarchy](#Hierarchy)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | l1 | Int? |  yes  |  |
 | l2 | Int? |  yes  |  |
 | department | Int? |  yes  |  |

---


 
 
 #### [Category](#Category)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | synonyms | [String] |  no  |  |
 | marketplaces | [CategoryMapping](#CategoryMapping) |  no  |  |
 | is_active | Bool? |  yes  |  |
 | departments | [Int]? |  yes  |  |
 | name | String? |  yes  |  |
 | media | [Media2](#Media2) |  no  |  |
 | created_on | String |  no  |  |
 | level | Int? |  yes  |  |
 | slug | String |  no  |  |
 | _id | String |  no  |  |
 | hierarchy | [[Hierarchy](#Hierarchy)] |  no  |  |
 | priority | Int |  no  |  |
 | tryouts | [String] |  no  |  |
 | modified_on | String |  no  |  |
 | created_by | [String: Any] |  no  |  |
 | modified_by | [String: Any] |  no  |  |

---


 
 
 #### [CategoryResponse](#CategoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Category](#Category)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [CategoryRequestBody](#CategoryRequestBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | synonyms | [String] |  no  |  |
 | marketplaces | [CategoryMapping](#CategoryMapping) |  no  |  |
 | is_active | Bool? |  yes  |  |
 | departments | [Int]? |  yes  |  |
 | name | String? |  yes  |  |
 | media | [Media2](#Media2) |  no  |  |
 | level | Int? |  yes  |  |
 | slug | String |  no  |  |
 | hierarchy | [[Hierarchy](#Hierarchy)] |  no  |  |
 | priority | Int |  no  |  |
 | tryouts | [String] |  no  |  |

---


 
 
 #### [CategoryCreateResponse](#CategoryCreateResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | message | String |  no  |  |

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


 
 
 #### [UserCommon](#UserCommon)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company_id | Int |  no  |  |
 | username | String |  no  |  |
 | user_id | String |  no  |  |

---


 
 
 #### [Attributes](#Attributes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | stage | String |  no  |  |
 | color | String |  no  |  |
 | is_image_less_product | Bool |  no  |  |
 | essential | String |  no  |  |
 | neck_type | String |  no  |  |
 | product_fit | String |  no  |  |
 | l3_mapping | [String] |  no  |  |
 | created_on | String |  no  |  |
 | sleeve_length | String |  no  |  |
 | material | String |  no  |  |
 | pattern | String |  no  |  |
 | modified_on | String |  no  |  |
 | image_nature | String |  no  |  |
 | created_by | [UserCommon](#UserCommon) |  no  |  |
 | verified_by | [VerifiedBy](#VerifiedBy) |  no  |  |
 | modified_by | [UserCommon](#UserCommon) |  no  |  |
 | verified_on | String |  no  |  |
 | meta_nature | String |  no  |  |
 | gender | [String] |  no  |  |
 | primary_color | String |  no  |  |
 | primary_material | String |  no  |  |

---


 
 
 #### [Logo](#Logo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspect_ratio_f | Int |  no  |  |
 | aspect_ratio | String |  no  |  |
 | secure_url | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [Brand](#Brand)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | logo | [Logo](#Logo) |  no  |  |
 | name | String |  no  |  |

---


 
 
 #### [ProductPublished](#ProductPublished)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_set | Bool |  no  |  |
 | product_online_date | Int |  no  |  |

---


 
 
 #### [Image](#Image)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspect_ratio_f | Double |  no  |  |
 | aspect_ratio | String |  no  |  |
 | secure_url | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [Product](#Product)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | multi_size | Bool |  no  |  |
 | item_type | String |  no  |  |
 | hsn_code | String |  no  |  |
 | attributes | [Attributes](#Attributes) |  no  |  |
 | slug | String |  no  |  |
 | company_id | Int |  no  |  |
 | sizes | [[String: Any]] |  no  |  |
 | category_slug | String |  no  |  |
 | highlights | String |  no  |  |
 | all_sizes | [String] |  no  |  |
 | size_guide | String |  no  |  |
 | currency | String |  no  |  |
 | brand | [Brand](#Brand) |  no  |  |
 | departments | [Int] |  no  |  |
 | is_dependent | Bool |  no  |  |
 | product_publish | [ProductPublished](#ProductPublished) |  no  |  |
 | description | String |  no  |  |
 | id | String |  no  |  |
 | is_active | Bool |  no  |  |
 | country_of_origin | String |  no  |  |
 | item_code | String |  no  |  |
 | name | String |  no  |  |
 | media | [[Media1](#Media1)] |  no  |  |
 | is_set | Bool |  no  |  |
 | template_tag | String |  no  |  |
 | images | [[Image](#Image)] |  no  |  |

---


 
 
 #### [ProductListingResponse](#ProductListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Product](#Product)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [Trader](#Trader)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | String? |  yes  |  |
 | name | String? |  yes  |  |

---


 
 
 #### [TeaserTag](#TeaserTag)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tag | String |  no  |  |
 | url | String |  no  |  |

---


 
 
 #### [OrderQuantity](#OrderQuantity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | minimum | Int |  no  |  |
 | is_set | Bool |  no  |  |
 | maximum | Int |  no  |  |

---


 
 
 #### [ReturnConfig](#ReturnConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | returnable | Bool |  no  |  |
 | unit | String |  no  |  |
 | time | Int |  no  |  |

---


 
 
 #### [ProductPublish](#ProductPublish)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_set | Bool |  no  |  |
 | product_online_date | String |  no  |  |

---


 
 
 #### [CustomOrder](#CustomOrder)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | manufacturing_time | Int |  no  |  |
 | is_custom_order | Bool |  no  |  |
 | manufacturing_time_unit | String |  no  |  |

---


 
 
 #### [ProductCreateUpdate](#ProductCreateUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | multi_size | Bool |  no  |  |
 | variants | [String: Any] |  no  |  |
 | item_type | String? |  yes  |  |
 | hsn_code | String? |  yes  |  |
 | slug | String? |  yes  |  |
 | trader_type | String |  no  |  |
 | company_id | Int? |  yes  |  |
 | is_image_less_product | Bool |  no  |  |
 | trader | [Trader](#Trader) |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | requester | String |  no  |  |
 | teaser_tag | [TeaserTag](#TeaserTag) |  no  |  |
 | no_of_boxes | Int |  no  |  |
 | moq | [OrderQuantity](#OrderQuantity) |  no  |  |
 | category_slug | String? |  yes  |  |
 | highlights | [String] |  no  |  |
 | return_config | [ReturnConfig](#ReturnConfig) |  no  |  |
 | short_description | String |  no  |  |
 | size_guide | String |  no  |  |
 | currency | String? |  yes  |  |
 | tags | [String] |  no  |  |
 | change_request_id | String |  no  |  |
 | departments | [Int]? |  yes  |  |
 | product_group_tag | [String] |  no  |  |
 | is_dependent | Bool |  no  |  |
 | product_publish | [ProductPublish](#ProductPublish) |  no  |  |
 | brand_uid | Int? |  yes  |  |
 | description | String |  no  |  |
 | custom_order | [CustomOrder](#CustomOrder) |  no  |  |
 | is_active | Bool |  no  |  |
 | item_code | String? |  yes  |  |
 | name | String? |  yes  |  |
 | country_of_origin | String? |  yes  |  |
 | media | [[Media1](#Media1)] |  no  |  |
 | is_set | Bool |  no  |  |
 | template_tag | String? |  yes  |  |

---


 
 
 #### [ValidateProduct](#ValidateProduct)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | valid | Bool |  no  |  |

---


 
 
 #### [UserDetail](#UserDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | user_id | String |  no  |  |
 | full_name | String |  no  |  |

---


 
 
 #### [ProductBulkRequest](#ProductBulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | total | Int |  no  |  |
 | failed | Int |  no  |  |
 | cancelled | Int |  no  |  |
 | is_active | Bool |  no  |  |
 | modified_by | [UserDetail](#UserDetail) |  no  |  |
 | stage | String |  no  |  |
 | template | [ProductTemplate](#ProductTemplate) |  no  |  |
 | created_on | String |  no  |  |
 | failed_records | [String] |  no  |  |
 | template_tag | String |  no  |  |
 | cancelled_records | [String] |  no  |  |
 | file_path | String |  no  |  |
 | modified_on | String |  no  |  |
 | company_id | Int |  no  |  |
 | created_by | [UserDetail](#UserDetail) |  no  |  |
 | succeed | Int |  no  |  |

---


 
 
 #### [ProductBulkRequestList](#ProductBulkRequestList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [ProductBulkRequest](#ProductBulkRequest) |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [UserInfo1](#UserInfo1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | email | String |  no  |  |
 | uid | String |  no  |  |
 | username | String |  no  |  |
 | user_id | String |  no  |  |

---


 
 
 #### [BulkJob](#BulkJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | total | Int? |  yes  |  |
 | cancelled | Int |  no  |  |
 | succeed | Int |  no  |  |
 | failed | Int |  no  |  |
 | is_active | Bool |  no  |  |
 | custom_template_tag | String |  no  |  |
 | stage | String |  no  |  |
 | created_on | String? |  yes  |  |
 | failed_records | [[String: Any]] |  no  |  |
 | tracking_url | String |  no  |  |
 | template_tag | String |  no  |  |
 | cancelled_records | [[String: Any]] |  no  |  |
 | file_path | String |  no  |  |
 | modified_on | String |  no  |  |
 | company_id | Int? |  yes  |  |
 | created_by | [UserInfo1](#UserInfo1) |  no  |  |
 | modified_by | [UserInfo1](#UserInfo1) |  no  |  |

---


 
 
 #### [BulkProductRequest](#BulkProductRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | template_tag | String? |  yes  |  |
 | company_id | Int? |  yes  |  |
 | data | [[String: Any]]? |  yes  |  |
 | batch_id | String? |  yes  |  |

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


 
 
 #### [Items](#Items)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | total | Int |  no  |  |
 | failed | Int |  no  |  |
 | succeed | Int |  no  |  |
 | cancelled | Int |  no  |  |
 | is_active | Bool |  no  |  |
 | stage | String |  no  |  |
 | id | String |  no  |  |
 | created_on | String |  no  |  |
 | failed_records | [String] |  no  |  |
 | tracking_url | String |  no  |  |
 | retry | Int |  no  |  |
 | file_path | String |  no  |  |
 | cancelled_records | [String] |  no  |  |
 | modified_on | String |  no  |  |
 | company_id | Int |  no  |  |
 | created_by | [UserCommon](#UserCommon) |  no  |  |
 | modified_by | [UserCommon](#UserCommon) |  no  |  |

---


 
 
 #### [BulkAssetResponse](#BulkAssetResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[Items](#Items)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [ProductBulkAssets](#ProductBulkAssets)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [String: Any]? |  yes  |  |
 | company_id | Int |  no  |  |
 | url | String? |  yes  |  |

---


 
 
 #### [ProductSizeDeleteDataResponse](#ProductSizeDeleteDataResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String |  no  |  |
 | item_id | Int |  no  |  |
 | company_id | Int |  no  |  |

---


 
 
 #### [ProductSizeDeleteResponse](#ProductSizeDeleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [ProductSizeDeleteDataResponse](#ProductSizeDeleteDataResponse) |  no  |  |

---


 
 
 #### [InventoryResponse](#InventoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [String: Any] |  no  |  |
 | uid | String |  no  |  |
 | item_id | Int |  no  |  |
 | price | Int |  no  |  |
 | inventory_updated_on | String |  no  |  |
 | seller_identifier | Int |  no  |  |
 | size | String |  no  |  |
 | quantity | Int |  no  |  |
 | price_effective | Int |  no  |  |
 | price_transfer | Int |  no  |  |
 | identifiers | [String: Any] |  no  |  |
 | sellable_quantity | Int |  no  |  |
 | currency | String |  no  |  |

---


 
 
 #### [ItemQuery](#ItemQuery)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | item_code | String |  no  |  |
 | brand_uid | Int |  no  |  |

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
 | size_distribution | [SizeDistribution](#SizeDistribution)? |  yes  |  |
 | quantity | Int |  no  |  |

---


 
 
 #### [GTIN](#GTIN)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | primary | Bool |  no  |  |
 | gtin_value | String? |  yes  |  |
 | gtin_type | String? |  yes  |  |

---


 
 
 #### [InvSize](#InvSize)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item_width | Double |  no  |  |
 | price | Double? |  yes  |  |
 | set | [InventorySet](#InventorySet) |  no  |  |
 | currency | String? |  yes  |  |
 | item_weight_unit_of_measure | String |  no  |  |
 | item_dimensions_unit_of_measure | String |  no  |  |
 | size | String? |  yes  |  |
 | is_set | Bool |  no  |  |
 | item_length | Double |  no  |  |
 | quantity | Int? |  yes  |  |
 | price_effective | Double? |  yes  |  |
 | price_transfer | Double |  no  |  |
 | item_height | Double |  no  |  |
 | store_code | String? |  yes  |  |
 | item_weight | Double |  no  |  |
 | identifiers | [[GTIN](#GTIN)]? |  yes  |  |

---


 
 
 #### [InventoryRequest](#InventoryRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item | [ItemQuery](#ItemQuery)? |  yes  |  |
 | company_id | Int? |  yes  |  |
 | sizes | [[InvSize](#InvSize)]? |  yes  |  |

---


 
 
 #### [InventoryDeleteData](#InventoryDeleteData)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | size | String |  no  |  |
 | item_id | Int |  no  |  |
 | location_id | Int |  no  |  |

---


 
 
 #### [InventoryDelete](#InventoryDelete)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | Bool |  no  |  |
 | data | [InventoryDeleteData](#InventoryDeleteData) |  no  |  |

---


 
 
 #### [BulkInventoryGetItems](#BulkInventoryGetItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | total | Int |  no  |  |
 | cancelled | Int |  no  |  |
 | failed | Int |  no  |  |
 | succeed | Int |  no  |  |
 | is_active | Bool |  no  |  |
 | stage | String |  no  |  |
 | id | String |  no  |  |
 | created_on | String |  no  |  |
 | failed_records | [String] |  no  |  |
 | cancelled_records | [String] |  no  |  |
 | file_path | String |  no  |  |
 | modified_on | String |  no  |  |
 | company_id | Int |  no  |  |
 | created_by | [String: Any] |  no  |  |
 | modified_by | [String: Any] |  no  |  |

---


 
 
 #### [BulkInventoryGet](#BulkInventoryGet)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BulkInventoryGetItems](#BulkInventoryGetItems)] |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [CommonResponse](#CommonResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | success | String |  no  |  |

---


 
 
 #### [Size1](#Size1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | item_width | Double |  no  |  |
 | price | Double? |  yes  |  |
 | set | [InventorySet](#InventorySet) |  no  |  |
 | seller_identifier | String? |  yes  |  |
 | currency | String? |  yes  |  |
 | item_weight_unit_of_measure | String |  no  |  |
 | item_dimensions_unit_of_measure | String |  no  |  |
 | size | String |  no  |  |
 | is_set | Bool |  no  |  |
 | item_length | Double |  no  |  |
 | quantity | Int? |  yes  |  |
 | price_effective | Double? |  yes  |  |
 | price_transfer | Double |  no  |  |
 | item_height | Double |  no  |  |
 | store_code | String? |  yes  |  |
 | item_weight | Double |  no  |  |
 | identifiers | [[String: Any]] |  no  |  |

---


 
 
 #### [InventoryBulkRequest](#InventoryBulkRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user | [String: Any] |  no  |  |
 | company_id | Int? |  yes  |  |
 | sizes | [[Size1](#Size1)]? |  yes  |  |
 | batch_id | String? |  yes  |  |

---


 
 
 #### [InventoryExportJob](#InventoryExportJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | url | String |  no  |  |
 | completed_on | String |  no  |  |
 | trigger_on | String |  no  |  |
 | task_id | String? |  yes  |  |
 | seller_id | Int? |  yes  |  |
 | request_params | [String: Any] |  no  |  |
 | status | String |  no  |  |

---


 
 
 #### [InventoryExportRequest](#InventoryExportRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store | [Int] |  no  |  |
 | brand | [Int] |  no  |  |
 | type | String |  no  |  |

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


 
 
 #### [HsnCodesObject](#HsnCodesObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hs2_code | String |  no  |  |
 | threshold1 | Double |  no  |  |
 | tax2 | Double |  no  |  |
 | hsn_code | String |  no  |  |
 | tax_on_esp | Bool |  no  |  |
 | threshold2 | Double |  no  |  |
 | tax1 | Double |  no  |  |
 | tax_on_mrp | Bool |  no  |  |
 | modified_on | String |  no  |  |
 | company_id | Int |  no  |  |
 | id | String |  no  |  |

---


 
 
 #### [PageResponse](#PageResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | has_previous | Bool |  no  |  |
 | item_total | Int |  no  |  |
 | current | String |  no  |  |
 | size | Int |  no  |  |
 | has_next | Bool |  no  |  |

---


 
 
 #### [HsnCodesListingResponse](#HsnCodesListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[HsnCodesObject](#HsnCodesObject)] |  no  |  |
 | page | [PageResponse](#PageResponse) |  no  |  |

---


 
 
 #### [HsnUpsert](#HsnUpsert)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hs2_code | String? |  yes  |  |
 | uid | Int |  no  |  |
 | threshold1 | Double? |  yes  |  |
 | tax2 | Double |  no  |  |
 | hsn_code | String? |  yes  |  |
 | tax_on_esp | Bool |  no  |  |
 | threshold2 | Double |  no  |  |
 | tax1 | Double? |  yes  |  |
 | tax_on_mrp | Bool? |  yes  |  |
 | company_id | Int? |  yes  |  |

---


 
 
 #### [HsnCode](#HsnCode)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | data | [HsnCodesObject](#HsnCodesObject) |  no  |  |

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
 | uid | Int |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | name | String |  no  |  |
 | departments | [String] |  no  |  |
 | slug | String |  no  |  |
 | discount | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |
 | logo | [Media](#Media) |  no  |  |

---


 
 
 #### [BrandListingResponse](#BrandListingResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[BrandItem](#BrandItem)] |  no  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [Department](#Department)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | priority_order | Int |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | logo | [Media](#Media) |  no  |  |

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
 | uid | Int |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | childs | [[String: Any]] |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |

---


 
 
 #### [SecondLevelChild](#SecondLevelChild)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | childs | [[ThirdLevelChild](#ThirdLevelChild)] |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |

---


 
 
 #### [Child](#Child)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | childs | [[SecondLevelChild](#SecondLevelChild)] |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |

---


 
 
 #### [CategoryItems](#CategoryItems)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | action | [ProductListingAction](#ProductListingAction) |  no  |  |
 | childs | [[Child](#Child)] |  no  |  |
 | name | String |  no  |  |
 | slug | String |  no  |  |
 | banners | [ImageUrls](#ImageUrls) |  no  |  |

---


 
 
 #### [DepartmentCategoryTree](#DepartmentCategoryTree)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[CategoryItems](#CategoryItems)] |  no  |  |
 | department | String |  no  |  |

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
 | sort_on | [[ProductSortOn](#ProductSortOn)] |  no  |  |
 | filters | [[ProductFilters](#ProductFilters)] |  no  |  |
 | items | [[ProductListingDetail](#ProductListingDetail)] |  no  |  |
 | page | [Page](#Page)? |  yes  |  |

---


 
 
 #### [ProductDetail](#ProductDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | uid | Int |  no  |  |
 | item_type | String |  no  |  |
 | attributes | [String: Any] |  no  |  |
 | has_variant | Bool |  no  |  |
 | color | String |  no  |  |
 | slug | String? |  yes  |  |
 | type | String |  no  |  |
 | teaser_tag | [String: Any] |  no  |  |
 | product_online_date | String |  no  |  |
 | highlights | [String] |  no  |  |
 | short_description | String |  no  |  |
 | rating | Double |  no  |  |
 | image_nature | String |  no  |  |
 | rating_count | Int |  no  |  |
 | grouped_attributes | [[ProductDetailGroupedAttribute](#ProductDetailGroupedAttribute)] |  no  |  |
 | brand | [ProductBrand](#ProductBrand) |  no  |  |
 | similars | [String] |  no  |  |
 | promo_meta | [String: Any] |  no  |  |
 | description | String |  no  |  |
 | name | String |  no  |  |
 | item_code | String |  no  |  |
 | medias | [[Media1](#Media1)] |  no  |  |
 | tryouts | [String] |  no  |  |

---




 
 
 #### [BusinessCountryInfo](#BusinessCountryInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | country | String |  no  |  |
 | country_code | String |  no  |  |

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


 
 
 #### [GetAddressSerializer](#GetAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address2 | String |  no  |  |
 | latitude | Double |  no  |  |
 | longitude | Double |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | landmark | String |  no  |  |
 | pincode | Int |  no  |  |
 | country_code | String |  no  |  |
 | address_type | String |  no  |  |
 | address1 | String |  no  |  |
 | country | String |  no  |  |

---


 
 
 #### [Document](#Document)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | legal_name | String |  no  |  |
 | verified | Bool |  no  |  |
 | type | String? |  yes  |  |
 | url | String |  no  |  |
 | value | String? |  yes  |  |

---


 
 
 #### [SellerPhoneNumber](#SellerPhoneNumber)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | number | String? |  yes  |  |
 | country_code | Int? |  yes  |  |

---


 
 
 #### [ContactDetails](#ContactDetails)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | emails | [String] |  no  |  |
 | phone | [[SellerPhoneNumber](#SellerPhoneNumber)] |  no  |  |

---


 
 
 #### [GetCompanyProfileSerializerResponse](#GetCompanyProfileSerializerResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | business_info | String |  no  |  |
 | verified_on | String |  no  |  |
 | franchise_enabled | Bool |  no  |  |
 | business_type | String? |  yes  |  |
 | notification_emails | [String] |  no  |  |
 | created_by | [UserSerializer](#UserSerializer) |  no  |  |
 | company_type | String? |  yes  |  |
 | stage | String |  no  |  |
 | business_country_info | [BusinessCountryInfo](#BusinessCountryInfo) |  no  |  |
 | business_details | [BusinessDetails](#BusinessDetails) |  no  |  |
 | modified_on | String |  no  |  |
 | name | String |  no  |  |
 | verified_by | [UserSerializer](#UserSerializer) |  no  |  |
 | warnings | [String: Any] |  no  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)] |  no  |  |
 | modified_by | [UserSerializer](#UserSerializer) |  no  |  |
 | documents | [[Document](#Document)] |  no  |  |
 | uid | Int? |  yes  |  |
 | contact_details | [ContactDetails](#ContactDetails) |  no  |  |
 | mode | String |  no  |  |
 | created_on | String |  no  |  |

---


 
 
 #### [CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address2 | String |  no  |  |
 | latitude | Double? |  yes  |  |
 | longitude | Double? |  yes  |  |
 | city | String? |  yes  |  |
 | state | String? |  yes  |  |
 | landmark | String |  no  |  |
 | pincode | Int? |  yes  |  |
 | country_code | String |  no  |  |
 | address_type | String? |  yes  |  |
 | address1 | String? |  yes  |  |
 | country | String? |  yes  |  |

---


 
 
 #### [UpdateCompany](#UpdateCompany)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | business_info | String |  no  |  |
 | business_type | String |  no  |  |
 | documents | [[Document](#Document)] |  no  |  |
 | warnings | [String: Any] |  no  |  |
 | business_details | [BusinessDetails](#BusinessDetails) |  no  |  |
 | notification_emails | [String] |  no  |  |
 | contact_details | [ContactDetails](#ContactDetails) |  no  |  |
 | reject_reason | String |  no  |  |
 | franchise_enabled | Bool |  no  |  |
 | company_type | String |  no  |  |
 | addresses | [[CreateUpdateAddressSerializer](#CreateUpdateAddressSerializer)] |  no  |  |

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
 | store | [DocumentsObj](#DocumentsObj) |  no  |  |
 | product | [DocumentsObj](#DocumentsObj) |  no  |  |
 | store_documents | [DocumentsObj](#DocumentsObj) |  no  |  |
 | brand | [DocumentsObj](#DocumentsObj) |  no  |  |
 | company_documents | [DocumentsObj](#DocumentsObj) |  no  |  |

---


 
 
 #### [UserSerializer1](#UserSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | contact | String |  no  |  |
 | user_id | String |  no  |  |

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
 | verified_on | String |  no  |  |
 | modified_by | [UserSerializer1](#UserSerializer1) |  no  |  |
 | logo | String |  no  |  |
 | slug_key | String |  no  |  |
 | stage | String |  no  |  |
 | description | String |  no  |  |
 | uid | Int |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | _locale_language | [String: Any] |  no  |  |
 | modified_on | String |  no  |  |
 | synonyms | [String] |  no  |  |
 | created_on | String |  no  |  |
 | reject_reason | String |  no  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer) |  no  |  |
 | name | String? |  yes  |  |
 | verified_by | [UserSerializer1](#UserSerializer1) |  no  |  |
 | created_by | [UserSerializer1](#UserSerializer1) |  no  |  |
 | warnings | [String: Any] |  no  |  |

---


 
 
 #### [CreateUpdateBrandRequestSerializer](#CreateUpdateBrandRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company_id | Int |  no  |  |
 | description | String |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | logo | String? |  yes  |  |
 | _locale_language | [String: Any] |  no  |  |
 | uid | Int |  no  |  |
 | brand_tier | String |  no  |  |
 | banner | [BrandBannerSerializer](#BrandBannerSerializer) |  no  |  |
 | name | String? |  yes  |  |
 | synonyms | [String] |  no  |  |

---


 
 
 #### [CompanyBrandPostRequestSerializer](#CompanyBrandPostRequestSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company | Int? |  yes  |  |
 | uid | Int |  no  |  |
 | brands | [Int]? |  yes  |  |

---


 
 
 #### [GetCompanySerializer](#GetCompanySerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | business_type | String |  no  |  |
 | verified_on | String |  no  |  |
 | modified_by | [UserSerializer](#UserSerializer) |  no  |  |
 | stage | String |  no  |  |
 | uid | Int |  no  |  |
 | modified_on | String |  no  |  |
 | created_on | String |  no  |  |
 | reject_reason | String |  no  |  |
 | name | String |  no  |  |
 | verified_by | [UserSerializer](#UserSerializer) |  no  |  |
 | created_by | [UserSerializer](#UserSerializer) |  no  |  |
 | company_type | String |  no  |  |
 | addresses | [[GetAddressSerializer](#GetAddressSerializer)] |  no  |  |

---


 
 
 #### [CompanyBrandSerializer](#CompanyBrandSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified_on | String |  no  |  |
 | modified_by | [UserSerializer1](#UserSerializer1) |  no  |  |
 | stage | String |  no  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer) |  no  |  |
 | warnings | [String: Any] |  no  |  |
 | uid | Int |  no  |  |
 | modified_on | String |  no  |  |
 | created_on | String |  no  |  |
 | reject_reason | String |  no  |  |
 | verified_by | [UserSerializer1](#UserSerializer1) |  no  |  |
 | created_by | [UserSerializer1](#UserSerializer1) |  no  |  |
 | brand | [GetBrandResponseSerializer](#GetBrandResponseSerializer) |  no  |  |

---


 
 
 #### [CompanyBrandListSerializer](#CompanyBrandListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[CompanyBrandSerializer](#CompanyBrandSerializer)] |  no  |  |

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
 | closing | [LocationTimingSerializer](#LocationTimingSerializer) |  no  |  |
 | opening | [LocationTimingSerializer](#LocationTimingSerializer) |  no  |  |
 | open | Bool? |  yes  |  |
 | weekday | String? |  yes  |  |

---


 
 
 #### [ProductReturnConfigSerializer](#ProductReturnConfigSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | on_same_store | Bool |  no  |  |
 | store_uid | Int |  no  |  |

---


 
 
 #### [InvoiceCredSerializer](#InvoiceCredSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | username | String |  no  |  |
 | enabled | Bool |  no  |  |
 | password | String |  no  |  |

---


 
 
 #### [InvoiceDetailsSerializer](#InvoiceDetailsSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | e_invoice | [InvoiceCredSerializer](#InvoiceCredSerializer) |  no  |  |
 | e_waybill | [InvoiceCredSerializer](#InvoiceCredSerializer) |  no  |  |

---


 
 
 #### [LocationManagerSerializer](#LocationManagerSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | email | String |  no  |  |
 | mobile_no | [SellerPhoneNumber](#SellerPhoneNumber)? |  yes  |  |

---


 
 
 #### [GetAddressSerializer1](#GetAddressSerializer1)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address2 | String |  no  |  |
 | latitude | Double |  no  |  |
 | longitude | Double |  no  |  |
 | city | String |  no  |  |
 | state | String |  no  |  |
 | landmark | String |  no  |  |
 | pincode | Int |  no  |  |
 | country_code | String |  no  |  |
 | address_type | String |  no  |  |
 | address1 | String |  no  |  |
 | country | String |  no  |  |

---


 
 
 #### [LocationSerializer](#LocationSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)] |  no  |  |
 | stage | String |  no  |  |
 | _custom_json | [String: Any] |  no  |  |
 | documents | [[Document](#Document)] |  no  |  |
 | company | Int? |  yes  |  |
 | product_return_config | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer) |  no  |  |
 | uid | Int |  no  |  |
 | notification_emails | [String] |  no  |  |
 | display_name | String? |  yes  |  |
 | gst_credentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer) |  no  |  |
 | store_type | String |  no  |  |
 | contact_numbers | [[SellerPhoneNumber](#SellerPhoneNumber)] |  no  |  |
 | code | String? |  yes  |  |
 | name | String? |  yes  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer) |  no  |  |
 | warnings | [String: Any] |  no  |  |
 | address | [GetAddressSerializer1](#GetAddressSerializer1)? |  yes  |  |

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
 | verified_on | String |  no  |  |
 | company | [GetCompanySerializer](#GetCompanySerializer) |  no  |  |
 | display_name | String? |  yes  |  |
 | contact_numbers | [[SellerPhoneNumber](#SellerPhoneNumber)] |  no  |  |
 | code | String? |  yes  |  |
 | phone_number | String? |  yes  |  |
 | _custom_json | [String: Any] |  no  |  |
 | notification_emails | [String] |  no  |  |
 | gst_credentials | [InvoiceDetailsSerializer](#InvoiceDetailsSerializer) |  no  |  |
 | integration_type | [LocationIntegrationType](#LocationIntegrationType) |  no  |  |
 | created_by | [UserSerializer1](#UserSerializer1) |  no  |  |
 | stage | String |  no  |  |
 | product_return_config | [ProductReturnConfigSerializer](#ProductReturnConfigSerializer) |  no  |  |
 | modified_on | String |  no  |  |
 | store_type | String |  no  |  |
 | name | String? |  yes  |  |
 | verified_by | [UserSerializer1](#UserSerializer1) |  no  |  |
 | manager | [LocationManagerSerializer](#LocationManagerSerializer) |  no  |  |
 | warnings | [String: Any] |  no  |  |
 | timing | [[LocationDayWiseSerializer](#LocationDayWiseSerializer)] |  no  |  |
 | modified_by | [UserSerializer1](#UserSerializer1) |  no  |  |
 | documents | [[Document](#Document)] |  no  |  |
 | uid | Int |  no  |  |
 | created_on | String |  no  |  |
 | address | [GetAddressSerializer](#GetAddressSerializer)? |  yes  |  |

---


 
 
 #### [LocationListSerializer](#LocationListSerializer)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[GetLocationSerializer](#GetLocationSerializer)] |  no  |  |

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
 | file_name | String? |  yes  |  |
 | file_path | String? |  yes  |  |
 | content_type | String? |  yes  |  |
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
 | file_name | String? |  yes  |  |
 | content_type | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | tags | [String] |  no  |  |
 | params | [String: Any] |  no  |  |

---


 
 
 #### [CompleteResponse](#CompleteResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String? |  yes  |  |
 | file_name | String? |  yes  |  |
 | file_path | String? |  yes  |  |
 | content_type | String? |  yes  |  |
 | method | String? |  yes  |  |
 | namespace | String? |  yes  |  |
 | operation | String? |  yes  |  |
 | size | Int? |  yes  |  |
 | upload | [Upload](#Upload)? |  yes  |  |
 | cdn | [CDN](#CDN)? |  yes  |  |
 | success | String? |  yes  |  |
 | tags | [String] |  no  |  |
 | created_on | String? |  yes  |  |
 | modified_on | String? |  yes  |  |

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
 | attempts_made | Int? |  yes  |  |
 | stacktrace | [String] |  no  |  |
 | finished_on | Int? |  yes  |  |
 | processed_on | Int? |  yes  |  |

---


 
 
 #### [BulkResponse](#BulkResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | tracking_url | String? |  yes  |  |
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
 | signed_url | String? |  yes  |  |
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
 | _id | String? |  yes  |  |
 | file_name | String? |  yes  |  |
 | operation | String |  no  |  |
 | namespace | String? |  yes  |  |
 | content_type | String? |  yes  |  |
 | file_path | String? |  yes  |  |
 | upload | [Upload](#Upload)? |  yes  |  |
 | cdn | [CDN](#CDN)? |  yes  |  |
 | created_on | String? |  yes  |  |
 | modified_on | String? |  yes  |  |

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
 | force_web | Bool |  no  |  |

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
 | campaign_cookie_expiry | String |  no  |  |

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
 | expire_at | String |  no  |  |
 | enable_tracking | Bool |  no  |  |
 | personalized | Bool |  no  | To create personalized short links. |
 | campaign | [CampaignShortLink](#CampaignShortLink) |  no  |  |
 | redirects | [Redirects](#Redirects) |  no  |  |
 | attribution | [Attribution](#Attribution) |  no  |  |
 | social_media_tags | [SocialMediaTags](#SocialMediaTags) |  no  |  |
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
 | created_by | String |  no  |  |
 | app_redirect | Bool |  no  |  |
 | fallback | String |  no  |  |
 | active | Bool |  no  |  |
 | _id | String |  no  |  |
 | enable_tracking | Bool |  no  |  |
 | expire_at | String |  no  |  |
 | application | String |  no  |  |
 | user_id | String |  no  |  |
 | created_at | String |  no  |  |
 | meta | [String: Any] |  no  |  |
 | updated_at | String |  no  |  |
 | personalized | Bool |  no  | To create personalized short links |
 | campaign | [CampaignShortLink](#CampaignShortLink) |  no  |  |
 | redirects | [Redirects](#Redirects) |  no  |  |
 | attribution | [Attribution](#Attribution) |  no  |  |
 | social_media_tags | [SocialMediaTags](#SocialMediaTags) |  no  |  |
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
 | min_price | Double |  no  |  |
 | safe_stock | Int |  no  |  |
 | period_threshold | Int |  no  |  |
 | period_threshold_type | String |  no  |  |
 | period_type_list | [[GenericDTO](#GenericDTO)] |  no  |  |

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
 | integration_data | [String: Any] |  no  |  |
 | company_name | String |  no  |  |
 | company_id | Int? |  yes  |  |
 | task_details | [TaskDTO](#TaskDTO) |  no  |  |
 | threshold_details | [DataTresholdDTO](#DataTresholdDTO) |  no  |  |
 | job_code | String |  no  |  |
 | alias | String |  no  |  |

---


 
 
 #### [TaskDTO](#TaskDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | Int |  no  |  |
 | group_list | [[GenericDTO](#GenericDTO)] |  no  |  |

---


 
 
 #### [ResponseEnvelopeString](#ResponseEnvelopeString)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String |  no  |  |
 | status | Int |  no  |  |
 | error | String |  no  |  |
 | exception | String |  no  |  |
 | message | String |  no  |  |
 | total_time_taken_in_millis | Int |  no  |  |
 | http_status | String |  no  |  |
 | items | String |  no  |  |
 | payload | String |  no  |  |
 | trace_id | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [AWSS3config](#AWSS3config)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | bucket | String |  no  |  |
 | region | String |  no  |  |
 | dir | String |  no  |  |
 | access_key | String |  no  |  |
 | secret_key | String |  no  |  |
 | local_file_path | String |  no  |  |
 | archive_path | String |  no  |  |
 | archive | Bool |  no  |  |
 | delete | Bool |  no  |  |
 | unzip | Bool |  no  |  |
 | zip_format | String |  no  |  |
 | file_regex | String |  no  |  |
 | archive_config | [ArchiveConfig](#ArchiveConfig) |  no  |  |

---


 
 
 #### [ArchiveConfig](#ArchiveConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | delete | Bool |  no  |  |
 | archive | Bool |  no  |  |
 | archive_dir | String |  no  |  |

---


 
 
 #### [Audit](#Audit)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | created_by | String |  no  |  |
 | modified_by | String |  no  |  |
 | created_on | String |  no  |  |
 | modified_on | String |  no  |  |

---


 
 
 #### [CatalogMasterConfig](#CatalogMasterConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | source_slug | String |  no  |  |

---


 
 
 #### [CompanyConfig](#CompanyConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company_id | Int |  no  |  |
 | exclude_steps | [Int] |  no  |  |
 | hidden_closet_keys | [String] |  no  |  |
 | open_tags | [String: Any] |  no  |  |
 | tax_identifiers | [String] |  no  |  |
 | delete_quantity_threshold | Int |  no  |  |

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
 | driver_class | String |  no  |  |
 | jdbc_url | String |  no  |  |
 | optional_properties | [String: String] |  no  |  |

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
 | intf_article_id | [PropBeanDTO](#PropBeanDTO) |  no  |  |
 | price_effective | [PropBeanDTO](#PropBeanDTO) |  no  |  |
 | quantity | [PropBeanDTO](#PropBeanDTO) |  no  |  |

---


 
 
 #### [DocMappingConfig](#DocMappingConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | properties | [String: Any] |  no  |  |
 | junk_data_threshold_count | Int |  no  |  |
 | prop_bean_configs | [[PropBeanConfig](#PropBeanConfig)] |  no  |  |
 | unwind_field | String |  no  |  |
 | default_headers | [DefaultHeadersDTO](#DefaultHeadersDTO) |  no  |  |

---


 
 
 #### [EmailConfig](#EmailConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | recepient | String |  no  |  |
 | host | String |  no  |  |
 | username | String |  no  |  |
 | password | String |  no  |  |
 | unzip | Bool |  no  |  |
 | read_from_content | Bool |  no  |  |
 | filter_based_on_recepients | Bool |  no  |  |
 | pcol | String |  no  |  |
 | subject_line_regex | String |  no  |  |
 | sender_address | String |  no  |  |
 | local_dir | String |  no  |  |
 | folder_name_hierarchies | [String] |  no  |  |
 | attachment_regex | String |  no  |  |
 | body_content_regex | String |  no  |  |
 | password_protected | Bool |  no  |  |
 | zip_format | String |  no  |  |
 | attachment_mandate | Bool |  no  |  |
 | filter_files_after_extraction | Bool |  no  |  |
 | archive_config | [ArchiveConfig](#ArchiveConfig) |  no  |  |
 | read_all_unread_mails | Bool |  no  |  |
 | content_type | String |  no  |  |
 | downloadable_link | Bool |  no  |  |
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
 | local_dir | String |  no  |  |
 | remote_dir | String |  no  |  |
 | zip_file_regex | String |  no  |  |
 | archive_config | [ArchiveConfig](#ArchiveConfig) |  no  |  |
 | file_regex | String |  no  |  |
 | zip_format | String |  no  |  |
 | read_all_files | Bool |  no  |  |

---


 
 
 #### [FileConfig](#FileConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | delimiter | String |  no  |  |
 | charset | String |  no  |  |
 | properties | [String: Any] |  no  |  |
 | file_has_header | Bool |  no  |  |
 | header_index | Int |  no  |  |
 | header_array | [String] |  no  |  |
 | data_start_index | Int |  no  |  |
 | prop_bean_configs | [[PropBeanConfig](#PropBeanConfig)] |  no  |  |
 | junk_data_threshold_count | Int |  no  |  |
 | file_type | String |  no  |  |
 | line_validity_check | Bool |  no  |  |
 | sheet_names | [String] |  no  |  |
 | read_all_sheets | Bool |  no  |  |
 | quote_char | String |  no  |  |
 | escape_char | String |  no  |  |
 | default_headers | [DefaultHeadersDTO](#DefaultHeadersDTO) |  no  |  |

---


 
 
 #### [GoogleSpreadSheetConfig](#GoogleSpreadSheetConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | range | String |  no  |  |
 | sheet_id | String |  no  |  |
 | client_secret_location | String |  no  |  |
 | cred_storage_directory | String |  no  |  |
 | local_dir | String |  no  |  |
 | archive_config | [ArchiveConfig](#ArchiveConfig) |  no  |  |

---


 
 
 #### [HttpConfig](#HttpConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | hosturl | String |  no  |  |
 | username | String |  no  |  |
 | password | String |  no  |  |
 | request_params | [String: String] |  no  |  |
 | http_method | String |  no  |  |
 | request_payload | String |  no  |  |
 | local_path | String |  no  |  |
 | archive_config | [ArchiveConfig](#ArchiveConfig) |  no  |  |

---


 
 
 #### [JobConfig](#JobConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | Int |  no  |  |
 | job_code | String |  no  |  |
 | task_type | String |  no  |  |
 | sync_delay | Int |  no  |  |
 | cron_expression | String |  no  |  |
 | store_filter | [StoreFilter](#StoreFilter) |  no  |  |
 | process_config | [ProcessConfig](#ProcessConfig) |  no  |  |
 | store_config | [[StoreConfig](#StoreConfig)] |  no  |  |
 | properties | [String: String] |  no  |  |
 | immediate_first_run | Bool |  no  |  |
 | disable | Bool |  no  |  |
 | dependent_job_codes | [String] |  no  |  |
 | company_config | [[CompanyConfig](#CompanyConfig)] |  no  |  |
 | company_ids | [Int] |  no  |  |
 | tax_identifiers | [String] |  no  |  |
 | priority | String |  no  |  |
 | period_threshold | Int |  no  |  |
 | period_threshold_type | String |  no  |  |
 | db_connection_profile | [DBConnectionProfile](#DBConnectionProfile) |  no  |  |
 | params | [String: Any] |  no  |  |
 | open_tags | [String: Any] |  no  |  |
 | delete_quantity_threshold | Int |  no  |  |
 | catalog_master_config | [CatalogMasterConfig](#CatalogMasterConfig) |  no  |  |
 | aggregator_types | [String] |  no  |  |
 | integration_type | String |  no  |  |
 | min_price | Double |  no  |  |
 | audit | [Audit](#Audit) |  no  |  |
 | version | Int |  no  |  |
 | alias | String |  no  |  |

---


 
 
 #### [JobConfigRawDTO](#JobConfigRawDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | integration | String? |  yes  |  |
 | company_name | String? |  yes  |  |
 | company_id | Int? |  yes  |  |
 | data | [JobConfig](#JobConfig) |  no  |  |

---


 
 
 #### [JsonDocConfig](#JsonDocConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | prop_bean_configs | [[PropBeanConfig](#PropBeanConfig)] |  no  |  |

---


 
 
 #### [LocalFileConfig](#LocalFileConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | retries | Int |  no  |  |
 | interval | Int |  no  |  |
 | local_dir | String |  no  |  |
 | working_dir | String |  no  |  |
 | unzip | Bool |  no  |  |
 | zip_file_regex | String |  no  |  |
 | file_regex | String |  no  |  |
 | zip_format | String |  no  |  |
 | archive_config | [ArchiveConfig](#ArchiveConfig) |  no  |  |
 | read_all_files | Bool |  no  |  |

---


 
 
 #### [MongoDocConfig](#MongoDocConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | collection_name | String |  no  |  |
 | find_query | [String: Any] |  no  |  |
 | projection_query | [String: Any] |  no  |  |
 | prop_bean_configs | [[PropBeanConfig](#PropBeanConfig)] |  no  |  |
 | aggregate_pipeline | [[String: Any]] |  no  |  |
 | skip_save | Bool |  no  |  |

---


 
 
 #### [OAuthConfig](#OAuthConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | limit | Int |  no  |  |
 | pages | Int |  no  |  |
 | interval | Int |  no  |  |
 | consumer_key | String |  no  |  |
 | consumer_secret | String |  no  |  |
 | token | String |  no  |  |
 | token_secret | String |  no  |  |
 | rest_url | String |  no  |  |
 | rest_base_url | String |  no  |  |
 | function_name | String |  no  |  |

---


 
 
 #### [ProcessConfig](#ProcessConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | db_config | [DBConfig](#DBConfig) |  no  |  |
 | db_param_config | [DBParamConfig](#DBParamConfig) |  no  |  |
 | sftp_config | [SFTPConfig](#SFTPConfig) |  no  |  |
 | aws_s3_config | [AWSS3config](#AWSS3config) |  no  |  |
 | mongo_doc_config | [MongoDocConfig](#MongoDocConfig) |  no  |  |
 | ftp_config | [FTPConfig](#FTPConfig) |  no  |  |
 | email_config | [EmailConfig](#EmailConfig) |  no  |  |
 | file_config | [FileConfig](#FileConfig) |  no  |  |
 | json_doc_config | [JsonDocConfig](#JsonDocConfig) |  no  |  |
 | doc_mapping_config | [DocMappingConfig](#DocMappingConfig) |  no  |  |
 | task_step_config | [TaskStepConfig](#TaskStepConfig) |  no  |  |
 | http_config | [HttpConfig](#HttpConfig) |  no  |  |
 | local_file_config | [LocalFileConfig](#LocalFileConfig) |  no  |  |
 | oauth_config | [OAuthConfig](#OAuthConfig) |  no  |  |
 | google_spreadsheet_config | [GoogleSpreadSheetConfig](#GoogleSpreadSheetConfig) |  no  |  |

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
 | source_field | String |  no  |  |
 | source_fields | [String] |  no  |  |
 | destination_field | String |  no  |  |
 | data_type | String |  no  |  |
 | default_value | [String: Any] |  no  |  |
 | const_value | [String: Any] |  no  |  |
 | concat_str | String |  no  |  |
 | function_name | String |  no  |  |
 | transformer_name | String |  no  |  |
 | all_param_function_name | String |  no  |  |
 | sub_separator | String |  no  |  |
 | index_field | String |  no  |  |
 | ignore_if_not_exists | Bool |  no  |  |
 | identifier_type | String |  no  |  |
 | projection_query | [String: Any] |  no  |  |
 | enrich_from_master | Bool |  no  |  |

---


 
 
 #### [PropBeanDTO](#PropBeanDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | required | Bool |  no  |  |
 | optional | Bool |  no  |  |
 | include | Bool |  no  |  |
 | source_field | String |  no  |  |
 | source_fields | [String] |  no  |  |
 | destination_field | String |  no  |  |
 | data_type | String |  no  |  |
 | default_value | [String: Any] |  no  |  |
 | const_value | [String: Any] |  no  |  |
 | concat_str | String |  no  |  |
 | function_name | String |  no  |  |
 | transformer_name | String |  no  |  |
 | all_param_function_name | String |  no  |  |
 | sub_separator | String |  no  |  |
 | index_field | String |  no  |  |
 | ignore_if_not_exists | Bool |  no  |  |
 | identifier_type | String |  no  |  |
 | projection_query | [String: Any] |  no  |  |
 | enrich_from_master | Bool |  no  |  |

---


 
 
 #### [ResponseEnvelopeListJobConfigRawDTO](#ResponseEnvelopeListJobConfigRawDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String |  no  |  |
 | status | Int |  no  |  |
 | error | String |  no  |  |
 | exception | String |  no  |  |
 | message | String |  no  |  |
 | total_time_taken_in_millis | Int |  no  |  |
 | http_status | String |  no  |  |
 | items | [[JobConfigRawDTO](#JobConfigRawDTO)] |  no  |  |
 | payload | [[JobConfigRawDTO](#JobConfigRawDTO)] |  no  |  |
 | trace_id | String |  no  |  |
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
 | private_key_path | String |  no  |  |
 | strict_host_key_checking | Bool |  no  |  |
 | local_dir | String |  no  |  |
 | remote_dir | String |  no  |  |
 | password_protected | Bool |  no  |  |
 | zip_file_regex | String |  no  |  |
 | file_regex | String |  no  |  |
 | zip_format | String |  no  |  |
 | archive_config | [ArchiveConfig](#ArchiveConfig) |  no  |  |
 | read_all_files | Bool |  no  |  |

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
 | job_code | String |  no  |  |
 | storeid | String |  no  |  |
 | store_alias | String |  no  |  |
 | store_file_regex | String |  no  |  |
 | store_file_name | String |  no  |  |
 | process_config | [ProcessConfig](#ProcessConfig) |  no  |  |
 | properties | [String: String] |  no  |  |

---


 
 
 #### [StoreFilter](#StoreFilter)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | include_tags | [String] |  no  |  |
 | exclude_tags | [String] |  no  |  |
 | query | [String: Any] |  no  |  |

---


 
 
 #### [TaskConfig](#TaskConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | task_config_id | Int |  no  |  |
 | task_params | [[TaskParam](#TaskParam)] |  no  |  |

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
 | task_configs | [[TaskConfig](#TaskConfig)] |  no  |  |
 | task_config_ids | [Int] |  no  |  |
 | task_config_group_ids | [Int] |  no  |  |

---


 
 
 #### [ResponseEnvelopeListJobConfigDTO](#ResponseEnvelopeListJobConfigDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String |  no  |  |
 | status | Int |  no  |  |
 | error | String |  no  |  |
 | exception | String |  no  |  |
 | message | String |  no  |  |
 | total_time_taken_in_millis | Int |  no  |  |
 | http_status | String |  no  |  |
 | items | [[JobConfigDTO](#JobConfigDTO)] |  no  |  |
 | payload | [[JobConfigDTO](#JobConfigDTO)] |  no  |  |
 | trace_id | String |  no  |  |
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
 | total_time_taken_in_millis | Int |  no  |  |
 | http_status | String |  no  |  |
 | items | [JobConfigDTO](#JobConfigDTO) |  no  |  |
 | payload | [JobConfigDTO](#JobConfigDTO) |  no  |  |
 | trace_id | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [JobHistoryDto](#JobHistoryDto)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | total_added_count | Int |  no  |  |
 | total_updated_count | Int |  no  |  |
 | total_suppressed_count | Int |  no  |  |
 | job_id | Int |  no  |  |
 | status | String |  no  |  |
 | job_code | String |  no  |  |
 | processed_on | String |  no  |  |
 | filename | [String] |  no  |  |

---


 
 
 #### [JobMetricsDto](#JobMetricsDto)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | job_code | String |  no  |  |
 | is_run_more_than_usual | String |  no  |  |
 | job_history | [[JobHistoryDto](#JobHistoryDto)] |  no  |  |
 | total_success_count | Int |  no  |  |
 | total_failure_count | Int |  no  |  |
 | total_warning_count | Int |  no  |  |
 | total_suppressed_count | Int |  no  |  |
 | total_job_runs | Int |  no  |  |

---


 
 
 #### [ResponseEnvelopeJobMetricsDto](#ResponseEnvelopeJobMetricsDto)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | timestamp | String |  no  |  |
 | status | Int |  no  |  |
 | error | String |  no  |  |
 | exception | String |  no  |  |
 | message | String |  no  |  |
 | total_time_taken_in_millis | Int |  no  |  |
 | http_status | String |  no  |  |
 | items | [JobMetricsDto](#JobMetricsDto) |  no  |  |
 | payload | [JobMetricsDto](#JobMetricsDto) |  no  |  |
 | trace_id | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [JobConfigListDTO](#JobConfigListDTO)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | String |  no  |  |
 | alias | String |  no  |  |
 | modified_by | String |  no  |  |
 | created_by | String |  no  |  |
 | modified_on | String |  no  |  |
 | created_on | String |  no  |  |
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
 | total_time_taken_in_millis | Int |  no  |  |
 | http_status | String |  no  |  |
 | items | [[JobConfigListDTO](#JobConfigListDTO)] |  no  |  |
 | payload | [[JobConfigListDTO](#JobConfigListDTO)] |  no  |  |
 | trace_id | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---




 
 
 #### [ApplicationInventory](#ApplicationInventory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | inventory | [AppInventoryConfig](#AppInventoryConfig) |  no  |  |
 | authentication | [AuthenticationConfig](#AuthenticationConfig) |  no  |  |
 | article_assignment | [ArticleAssignmentConfig](#ArticleAssignmentConfig) |  no  |  |
 | reward_points | [RewardPointsConfig](#RewardPointsConfig) |  no  |  |
 | cart | [AppCartConfig](#AppCartConfig) |  no  |  |
 | payment | [AppPaymentConfig](#AppPaymentConfig) |  no  |  |
 | order | [AppOrderConfig](#AppOrderConfig) |  no  |  |
 | logistics | [AppLogisticsConfig](#AppLogisticsConfig) |  no  |  |
 | business | String |  no  |  |
 | comms_enabled | Bool |  no  |  |
 | platforms | [String] |  no  |  |
 | _id | String |  no  |  |
 | loyalty_points | [LoyaltyPointsConfig](#LoyaltyPointsConfig) |  no  |  |
 | app | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | modified_by | String |  no  |  |

---


 
 
 #### [AppInventoryConfig](#AppInventoryConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand | [InventoryBrand](#InventoryBrand) |  no  |  |
 | store | [InventoryStore](#InventoryStore) |  no  |  |
 | category | [InventoryCategory](#InventoryCategory) |  no  |  |
 | price | [InventoryPrice](#InventoryPrice) |  no  |  |
 | discount | [InventoryDiscount](#InventoryDiscount) |  no  |  |
 | out_of_stock | Bool |  no  |  |
 | franchise_enabled | Bool |  no  |  |
 | exclude_category | [[String: Any]] |  no  |  |
 | image | [String] |  no  |  |
 | company_store | [[String: Any]] |  no  |  |

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
 | post_order_reassignment | Bool |  no  |  |
 | enforced_stores | [[String: Any]] |  no  |  |

---


 
 
 #### [ArticleAssignmentRules](#ArticleAssignmentRules)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store_priority | [StorePriority](#StorePriority) |  no  |  |

---


 
 
 #### [StorePriority](#StorePriority)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | storetype_order | [[String: Any]] |  no  |  |

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
 | auto_apply | Bool |  no  |  |
 | strategy_channel | String |  no  |  |

---


 
 
 #### [AppCartConfig](#AppCartConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | delivery_charges | [DeliveryCharges](#DeliveryCharges) |  no  |  |
 | enabled | Bool |  no  |  |
 | max_cart_items | Int |  no  |  |
 | min_cart_value | Double |  no  |  |
 | bulk_coupons | Bool |  no  |  |

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
 | callback_url | [CallbackUrl](#CallbackUrl) |  no  |  |
 | methods | [Methods](#Methods) |  no  |  |
 | payment_selection_lock | [PaymentSelectionLock](#PaymentSelectionLock) |  no  |  |
 | mode_of_payment | String |  no  |  |
 | source | String |  no  |  |
 | enabled | Bool |  no  |  |
 | cod_amount_limit | Double |  no  |  |
 | cod_charges | Double |  no  |  |

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
 | default_options | String |  no  |  |
 | payment_identifier | String |  no  |  |

---


 
 
 #### [AppOrderConfig](#AppOrderConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | force_reassignment | Bool |  no  |  |
 | message | String |  no  |  |

---


 
 
 #### [AppLogisticsConfig](#AppLogisticsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | logistics_by_seller | Bool |  no  |  |
 | serviceability_check | Bool |  no  |  |
 | same_day_delivery | Bool |  no  |  |
 | dp_assignment | Bool |  no  |  |

---


 
 
 #### [LoyaltyPointsConfig](#LoyaltyPointsConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | auto_apply | Bool |  no  |  |

---


 
 
 #### [AppInventoryPartialUpdate](#AppInventoryPartialUpdate)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reward_points | [RewardPointsConfig](#RewardPointsConfig) |  no  |  |
 | cart | [AppCartConfig](#AppCartConfig) |  no  |  |
 | payment | [AppPaymentConfig](#AppPaymentConfig) |  no  |  |
 | loyalty_points | [LoyaltyPointsConfig](#LoyaltyPointsConfig) |  no  |  |
 | comms_enabled | Bool |  no  |  |

---


 
 
 #### [BrandCompanyInfo](#BrandCompanyInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company_name | String |  no  |  |
 | company_id | Int |  no  |  |

---


 
 
 #### [CompanyByBrandsRequest](#CompanyByBrandsRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brands | Int? |  yes  | Brand uids |
 | search_text | String |  no  | Search company by name |

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
 | company_id | Int |  no  | Current company id for current company stores only. Don't send in case of cross selling enabled |
 | brands | Int? |  yes  | Brand uids |
 | search_text | String |  no  | Search store by name or store code |

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
 | store_name | String |  no  |  |
 | store_id | Int |  no  |  |
 | store_type | String |  no  |  |
 | store_code | String |  no  |  |
 | store_address | [OptedStoreAddress](#OptedStoreAddress) |  no  |  |
 | company | [OptedCompany](#OptedCompany) |  no  |  |

---


 
 
 #### [CompanyBrandInfo](#CompanyBrandInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String |  no  |  |
 | value | Int |  no  |  |
 | brand_logo_url | String |  no  |  |
 | brand_banner_url | String |  no  |  |
 | brand_banner_portrait_url | String |  no  |  |

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
 | is_active | Bool |  no  |  |
 | _id | String |  no  |  |
 | app_name | String |  no  |  |
 | landing_image | [LandingImage](#LandingImage) |  no  |  |
 | splash_image | [SplashImage](#SplashImage) |  no  |  |
 | application | String |  no  |  |
 | platform_type | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |
 | package_name | String |  no  |  |

---


 
 
 #### [LandingImage](#LandingImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspect_ratio | String |  no  |  |
 | secure_url | String |  no  |  |

---


 
 
 #### [SplashImage](#SplashImage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | aspect_ratio | String |  no  |  |
 | secure_url | String |  no  |  |

---


 
 
 #### [MobileAppConfigRequest](#MobileAppConfigRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | app_name | String |  no  |  |
 | landing_image | [LandingImage](#LandingImage) |  no  |  |
 | splash_image | [SplashImage](#SplashImage) |  no  |  |
 | is_active | Bool |  no  |  |

---


 
 
 #### [BuildVersionHistory](#BuildVersionHistory)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | versions | [BuildVersion](#BuildVersion) |  no  |  |
 | latest_available_version_name | String |  no  |  |

---


 
 
 #### [BuildVersion](#BuildVersion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | application | String |  no  |  |
 | platform_type | String |  no  |  |
 | build_status | String |  no  |  |
 | version_name | String |  no  |  |
 | version_code | Int |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

---


 
 
 #### [AppSupportedCurrency](#AppSupportedCurrency)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | supported_currency | [String] |  no  |  |
 | application | String |  no  |  |
 | default_currency | [DefaultCurrency](#DefaultCurrency) |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |

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
 | _id | String |  no  |  |
 | is_active | Bool |  no  |  |
 | name | String |  no  |  |
 | code | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | decimal_digits | Int |  no  |  |
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
 | _id | String |  no  |  |

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
 | domain_url | String |  no  | Domain url |

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
 | domain_url | String |  no  | Domain url |
 | custom | Bool |  no  | Get suggestion for custom domains or fynd domains |

---


 
 
 #### [DomainSuggestion](#DomainSuggestion)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | unsupported | Bool |  no  | Whether TLD domain is supported or not |
 | is_available | Bool? |  yes  |  |
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
 | description_html | String |  no  |  |
 | constants | String |  no  |  |
 | companies | [[String: Any]] |  no  |  |
 | support | [String] |  no  |  |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | meta | [IntegrationMeta](#IntegrationMeta) |  no  |  |
 | icon | String |  no  |  |
 | owner | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | token | String |  no  |  |
 | secret | String |  no  |  |
 | __v | Int |  no  |  |

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
 | json_schema | [JsonSchema](#JsonSchema) |  no  |  |
 | browser_script | String |  no  |  |

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
 | json_schema | [[JsonSchema](#JsonSchema)] |  no  |  |
 | browser_script | String |  no  |  |

---


 
 
 #### [InventoryValidator](#InventoryValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | json_schema | [[JsonSchema](#JsonSchema)] |  no  |  |
 | browser_script | String |  no  |  |

---


 
 
 #### [OrderValidator](#OrderValidator)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | json_schema | [[JsonSchema](#JsonSchema)] |  no  |  |
 | browser_script | String |  no  |  |

---


 
 
 #### [IntegrationMeta](#IntegrationMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_public | Bool |  no  |  |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | value | String |  no  |  |

---


 
 
 #### [Integration](#Integration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | validators | [Validators](#Validators) |  no  |  |
 | description | String |  no  |  |
 | description_html | String |  no  |  |
 | constants | [String: Any] |  no  |  |
 | companies | [[String: Any]] |  no  |  |
 | support | [String] |  no  |  |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | meta | [IntegrationMeta](#IntegrationMeta) |  no  |  |
 | icon | String |  no  |  |
 | owner | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | token | String |  no  |  |
 | secret | String |  no  |  |
 | __v | Int |  no  |  |

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
 | last_patch | [[String: Any]] |  no  |  |
 | _id | String |  no  |  |
 | integration | String |  no  |  |
 | level | String |  no  |  |
 | uid | Int |  no  |  |
 | meta | [[String: Any]] |  no  |  |
 | token | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |
 | data | [String: Any] |  no  |  |

---


 
 
 #### [OptedStoreIntegration](#OptedStoreIntegration)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | other_opted | Bool |  no  |  |
 | other_integration | [IntegrationOptIn](#IntegrationOptIn) |  no  |  |
 | other_entity | [OtherEntity](#OtherEntity) |  no  |  |

---


 
 
 #### [OtherEntity](#OtherEntity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | opted | Bool |  no  |  |
 | permissions | [String] |  no  |  |
 | last_patch | [LastPatch](#LastPatch) |  no  |  |
 | _id | String |  no  |  |
 | integration | String |  no  |  |
 | level | String |  no  |  |
 | uid | Int |  no  |  |
 | data | [OtherEntityData](#OtherEntityData) |  no  |  |
 | meta | [[String: Any]] |  no  |  |
 | token | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

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
 | article_identifier | String |  no  |  |

---


 
 
 #### [App](#App)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | company_id | String |  no  | Current company id |
 | channel_type | String |  no  |  |
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
 | franchise_enabled | Bool |  no  |  |
 | out_of_stock | Bool |  no  |  |
 | payment | [InventoryPaymentConfig](#InventoryPaymentConfig) |  no  |  |
 | article_assignment | [InventoryArticleAssignment](#InventoryArticleAssignment) |  no  |  |

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
 | company_type | String |  no  |  |

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
 | _id | String |  no  |  |
 | modified_on | String |  no  |  |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | display_name | String |  no  |  |
 | store_type | String |  no  |  |
 | store_code | String |  no  |  |
 | company_id | Int |  no  |  |

---


 
 
 #### [FilterOrderingStoreRequest](#FilterOrderingStoreRequest)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | all_stores | Bool |  no  |  |
 | deployed_stores | [Int] |  no  |  |
 | q | String |  no  |  |

---


 
 
 #### [DeploymentMeta](#DeploymentMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deployed_stores | [Int] |  no  |  |
 | all_stores | Bool |  no  |  |
 | enabled | Bool |  no  |  |
 | type | String |  no  |  |
 | _id | String |  no  |  |
 | app | String |  no  |  |
 | __v | Int |  no  |  |

---


 
 
 #### [OrderingStoreConfig](#OrderingStoreConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | deployment_meta | [DeploymentMeta](#DeploymentMeta) |  no  |  |

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
 | _id | String |  no  |  |
 | domain | String |  no  |  |
 | company | [OtherSellerCompany](#OtherSellerCompany) |  no  |  |
 | opt_type | String |  no  |  |

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
 | _id | String |  no  |  |
 | domain | String |  no  |  |
 | company | [OptedCompany](#OptedCompany) |  no  |  |
 | opted_inventory | [OptedInventory](#OptedInventory) |  no  |  |
 | opt_out_inventory | [OptOutInventory](#OptOutInventory) |  no  |  |

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
 | opt_type | [OptType](#OptType) |  no  |  |
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
 | store_code | String |  no  |  |
 | _id | String |  no  |  |
 | modified_on | String |  no  |  |
 | uid | Int |  no  |  |
 | address | [OptedStoreAddress](#OptedStoreAddress) |  no  |  |
 | display_name | String |  no  |  |
 | store_type | String |  no  |  |
 | company_id | Int |  no  |  |

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
 | _id | String |  no  |  |
 | application | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

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
 | fynd_rewards | [FyndRewards](#FyndRewards) |  no  |  |
 | google_map | [GoogleMap](#GoogleMap) |  no  |  |

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
 | project_id | String |  no  |  |
 | gcm_sender_id | String |  no  |  |
 | application_id | String |  no  |  |
 | api_key | String |  no  |  |

---


 
 
 #### [Ios](#Ios)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application_id | String |  no  |  |
 | api_key | String |  no  |  |

---


 
 
 #### [Android](#Android)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | application_id | String |  no  |  |
 | api_key | String |  no  |  |

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
 | app_id | String |  no  |  |

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
 | write_key | String |  no  |  |

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
 | api_key | String |  no  |  |

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
 | app_id | String |  no  |  |
 | app_key | String |  no  |  |
 | web_token | String |  no  |  |

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
 | api_key | String |  no  |  |

---


 
 
 #### [FyndRewards](#FyndRewards)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [FyndRewardsCredentials](#FyndRewardsCredentials) |  no  |  |

---


 
 
 #### [FyndRewardsCredentials](#FyndRewardsCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | public_key | String |  no  |  |

---


 
 
 #### [GoogleMap](#GoogleMap)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | credentials | [GoogleMapCredentials](#GoogleMapCredentials) |  no  |  |

---


 
 
 #### [GoogleMapCredentials](#GoogleMapCredentials)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | api_key | String |  no  |  |

---


 
 
 #### [ProductDetailFeature](#ProductDetailFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | similar | [String] |  no  |  |
 | seller_selection | Bool |  no  |  |
 | update_product_meta | Bool |  no  |  |
 | request_product | Bool |  no  |  |

---


 
 
 #### [LaunchPage](#LaunchPage)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page_type | String |  no  |  |
 | params | [String: Any] |  no  |  |
 | query | [String: Any] |  no  |  |

---


 
 
 #### [LandingPageFeature](#LandingPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | launch_page | [LaunchPage](#LaunchPage) |  no  |  |
 | continue_as_guest | Bool |  no  |  |
 | login_btn_text | String |  no  |  |
 | show_domain_textbox | Bool |  no  |  |
 | show_register_btn | Bool |  no  |  |

---


 
 
 #### [RegistrationPageFeature](#RegistrationPageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | ask_store_address | Bool |  no  |  |

---


 
 
 #### [AppFeature](#AppFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | product_detail | [ProductDetailFeature](#ProductDetailFeature) |  no  |  |
 | landing_page | [LandingPageFeature](#LandingPageFeature) |  no  |  |
 | registration_page | [RegistrationPageFeature](#RegistrationPageFeature) |  no  |  |
 | home_page | [HomePageFeature](#HomePageFeature) |  no  |  |
 | common | [CommonFeature](#CommonFeature) |  no  |  |
 | cart | [CartFeature](#CartFeature) |  no  |  |
 | qr | [QrFeature](#QrFeature) |  no  |  |
 | pcr | [PcrFeature](#PcrFeature) |  no  |  |
 | order | [OrderFeature](#OrderFeature) |  no  |  |
 | _id | String |  no  |  |
 | app | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

---


 
 
 #### [HomePageFeature](#HomePageFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | order_processing | Bool |  no  |  |

---


 
 
 #### [CommonFeature](#CommonFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | communication_optin_dialog | [CommunicationOptinDialogFeature](#CommunicationOptinDialogFeature) |  no  |  |
 | deployment_store_selection | [DeploymentStoreSelectionFeature](#DeploymentStoreSelectionFeature) |  no  |  |
 | listing_price | [ListingPriceFeature](#ListingPriceFeature) |  no  |  |
 | listing_page | [ListingPageFeature](#ListingPageFeature) |  no  |  |
 | currency | [CurrencyFeature](#CurrencyFeature) |  no  |  |
 | revenue_engine | [RevenueEngineFeature](#RevenueEngineFeature) |  no  |  |
 | feedback | [FeedbackFeature](#FeedbackFeature) |  no  |  |
 | compare_products | [CompareProductsFeature](#CompareProductsFeature) |  no  |  |

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
 | sort_on | String |  no  |  |

---


 
 
 #### [CurrencyFeature](#CurrencyFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value | [String] |  no  |  |
 | type | String |  no  |  |
 | default_currency | String |  no  |  |

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
 | gst_input | Bool |  no  |  |
 | staff_selection | Bool |  no  |  |
 | placing_for_customer | Bool |  no  |  |
 | google_map | Bool |  no  |  |

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
 | staff_selection | Bool |  no  |  |

---


 
 
 #### [OrderFeature](#OrderFeature)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | buy_again | Bool |  no  |  |

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
 | _id | String |  no  |  |
 | is_active | Bool |  no  |  |
 | name | String |  no  |  |
 | code | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | decimal_digits | Int |  no  |  |
 | symbol | String |  no  |  |

---


 
 
 #### [Domain](#Domain)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | verified | Bool |  no  |  |
 | is_primary | Bool |  no  |  |
 | is_default | Bool |  no  |  |
 | is_shortlink | Bool |  no  |  |
 | _id | String |  no  |  |
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
 | redirect_to | String |  no  |  |
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
 | secure_url | String |  no  |  |

---


 
 
 #### [Application](#Application)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | website | [ApplicationWebsite](#ApplicationWebsite) |  no  |  |
 | cors | [ApplicationCors](#ApplicationCors) |  no  |  |
 | auth | [ApplicationAuth](#ApplicationAuth) |  no  |  |
 | description | String |  no  |  |
 | channel_type | String |  no  |  |
 | cache_ttl | Int |  no  |  |
 | is_internal | Bool |  no  |  |
 | is_active | Bool |  no  |  |
 | _id | String |  no  |  |
 | name | String |  no  |  |
 | owner | String |  no  |  |
 | company_id | Int |  no  |  |
 | token | String |  no  |  |
 | redirections | [[ApplicationRedirections](#ApplicationRedirections)] |  no  |  |
 | meta | [[ApplicationMeta](#ApplicationMeta)] |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |
 | banner | [SecureUrl](#SecureUrl) |  no  |  |
 | logo | [SecureUrl](#SecureUrl) |  no  |  |
 | favicon | [SecureUrl](#SecureUrl) |  no  |  |
 | domains | [[Domain](#Domain)] |  no  |  |
 | app_type | String |  no  |  |
 | mobile_logo | [SecureUrl](#SecureUrl) |  no  |  |
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
 | mode_of_payment | String |  no  |  |
 | source | String |  no  |  |

---


 
 
 #### [StorePriorityRule](#StorePriorityRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | enabled | Bool |  no  |  |
 | storetype_order | [String] |  no  |  |

---


 
 
 #### [ArticleAssignmentRule](#ArticleAssignmentRule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | store_priority | [StorePriorityRule](#StorePriorityRule) |  no  |  |

---


 
 
 #### [InventoryArticleAssignment](#InventoryArticleAssignment)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | post_order_reassignment | Bool |  no  |  |
 | enforced_stores | [Int] |  no  |  |
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
 | address_type | String |  no  |  |

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
 | country_code | Int |  no  |  |
 | phone | String |  no  |  |

---


 
 
 #### [ApplicationInformation](#ApplicationInformation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [InformationAddress](#InformationAddress) |  no  |  |
 | support | [InformationSupport](#InformationSupport) |  no  |  |
 | social_links | [SocialLinks](#SocialLinks) |  no  |  |
 | links | [Links](#Links) |  no  |  |
 | copyright_text | String |  no  |  |
 | _id | String |  no  |  |
 | business_highlights | [BusinessHighlights](#BusinessHighlights) |  no  |  |
 | application | String |  no  |  |
 | created_at | String |  no  |  |
 | updated_at | String |  no  |  |
 | __v | Int |  no  |  |

---


 
 
 #### [InformationAddress](#InformationAddress)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | loc | String |  no  |  |
 | address_line | [String] |  no  |  |
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
 | google_plus | [GooglePlusLink](#GooglePlusLink) |  no  |  |
 | youtube | [YoutubeLink](#YoutubeLink) |  no  |  |
 | linked_in | [LinkedInLink](#LinkedInLink) |  no  |  |
 | vimeo | [VimeoLink](#VimeoLink) |  no  |  |
 | blog_link | [BlogLink](#BlogLink) |  no  |  |

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
 | _id | String |  no  |  |
 | title | String |  no  |  |
 | icon | String |  no  |  |
 | sub_title | String |  no  |  |

---


 
 
 #### [ApplicationDetail](#ApplicationDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | name | String? |  yes  |  |
 | description | String? |  yes  |  |
 | logo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | mobile_logo | [SecureUrl](#SecureUrl)? |  yes  |  |
 | favicon | [SecureUrl](#SecureUrl)? |  yes  |  |
 | banner | [SecureUrl](#SecureUrl)? |  yes  |  |
 | domain | [Domain](#Domain) |  no  |  |
 | domains | [[Domain](#Domain)] |  no  |  |
 | _id | String |  no  |  |

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
 | lat_long | [StoreLatLong](#StoreLatLong) |  no  |  |
 | address2 | String |  no  |  |
 | pincode | Int |  no  |  |
 | country | String |  no  |  |
 | city | String |  no  |  |

---


 
 
 #### [OrderingStore](#OrderingStore)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | address | [OptedStoreAddress](#OptedStoreAddress) |  no  |  |
 | _id | String |  no  |  |
 | uid | Int |  no  |  |
 | name | String |  no  |  |
 | display_name | String |  no  |  |
 | store_type | String |  no  |  |
 | store_code | String |  no  |  |
 | pincode | Int |  no  |  |
 | code | String |  no  |  |

---


 
 
 #### [OrderingStores](#OrderingStores)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | page | [Page](#Page) |  no  |  |
 | items | [[OrderingStore](#OrderingStore)] |  no  |  |
 | deployed_stores | [Int] |  no  |  |
 | all_stores | Bool |  no  |  |
 | enabled | Bool |  no  |  |
 | type | String |  no  |  |
 | _id | String |  no  |  |
 | app | String |  no  |  |
 | __v | Int |  no  |  |

---




 
 
 #### [Rule](#Rule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | key | Double |  no  |  |
 | max | Double |  no  |  |
 | discount_qty | Double |  no  |  |
 | value | Double |  no  |  |
 | min | Double |  no  |  |

---


 
 
 #### [BulkBundleRestriction](#BulkBundleRestriction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | multi_store_allowed | Bool? |  yes  |  |

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
 | cancellation_allowed | Bool |  no  |  |
 | return_allowed | Bool |  no  |  |

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
 | coupon_allowed | Bool |  no  |  |
 | bulk_bundle | [BulkBundleRestriction](#BulkBundleRestriction) |  no  |  |
 | uses | [UsesRestriction](#UsesRestriction) |  no  |  |
 | platforms | [String] |  no  |  |
 | payments | [PaymentCodes](#PaymentCodes) |  no  |  |
 | post_order | [PostOrder](#PostOrder) |  no  |  |
 | ordering_stores | [Int] |  no  |  |
 | price_range | [PriceRange](#PriceRange) |  no  |  |

---


 
 
 #### [Ownership](#Ownership)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | payable_category | String? |  yes  |  |
 | payable_by | String? |  yes  |  |

---


 
 
 #### [State](#State)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | is_archived | Bool |  no  |  |
 | is_public | Bool |  no  |  |
 | is_display | Bool |  no  |  |

---


 
 
 #### [CouponAction](#CouponAction)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | txn_mode | String |  no  |  |
 | action_date | String |  no  |  |

---


 
 
 #### [Validation](#Validation)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | user_registered_after | String |  no  |  |
 | anonymous | Bool |  no  |  |
 | app_id | [String] |  no  |  |

---


 
 
 #### [RuleDefinition](#RuleDefinition)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | value_type | String? |  yes  |  |
 | auto_apply | Bool |  no  |  |
 | scope | [String] |  no  |  |
 | currency_code | String |  no  |  |
 | calculate_on | String? |  yes  |  |
 | is_exact | Bool |  no  |  |
 | applicable_on | String? |  yes  |  |
 | type | String? |  yes  |  |

---


 
 
 #### [Identifier](#Identifier)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | category_id | [Int] |  no  |  |
 | collection_id | [String] |  no  |  |
 | company_id | [Int] |  no  |  |
 | item_id | [Int] |  no  |  |
 | brand_id | [Int] |  no  |  |
 | user_id | [String] |  no  |  |
 | article_id | [String] |  no  |  |
 | store_id | [Int] |  no  |  |

---


 
 
 #### [CouponSchedule](#CouponSchedule)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | next_schedule | [[String: Any]] |  no  |  |
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
 | created_by | String |  no  |  |
 | modified_by | String |  no  |  |

---


 
 
 #### [Validity](#Validity)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | priority | Int |  no  |  |

---


 
 
 #### [CouponDateMeta](#CouponDateMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | created_on | String |  no  |  |
 | modified_on | String |  no  |  |

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
 | rule_definition | [RuleDefinition](#RuleDefinition)? |  yes  |  |
 | identifiers | [Identifier](#Identifier)? |  yes  |  |
 | _schedule | [CouponSchedule](#CouponSchedule) |  no  |  |
 | type_slug | String? |  yes  |  |
 | display_meta | [DisplayMeta](#DisplayMeta)? |  yes  |  |
 | tags | [String] |  no  |  |
 | author | [CouponAuthor](#CouponAuthor) |  no  |  |
 | validity | [Validity](#Validity)? |  yes  |  |
 | code | String? |  yes  |  |
 | date_meta | [CouponDateMeta](#CouponDateMeta) |  no  |  |

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
 | rule_definition | [RuleDefinition](#RuleDefinition)? |  yes  |  |
 | identifiers | [Identifier](#Identifier)? |  yes  |  |
 | _schedule | [CouponSchedule](#CouponSchedule) |  no  |  |
 | type_slug | String? |  yes  |  |
 | display_meta | [DisplayMeta](#DisplayMeta)? |  yes  |  |
 | tags | [String] |  no  |  |
 | author | [CouponAuthor](#CouponAuthor) |  no  |  |
 | validity | [Validity](#Validity)? |  yes  |  |
 | code | String? |  yes  |  |
 | date_meta | [CouponDateMeta](#CouponDateMeta) |  no  |  |

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
 | _id | String |  no  |  |
 | active | Bool |  no  |  |
 | application_id | String |  no  |  |
 | block_reason | String |  no  |  |
 | updated_at | String |  no  |  |
 | updated_by | String |  no  |  |
 | user_id | String |  no  |  |

---


 
 
 #### [E](#E)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | code | [String: Any] |  no  |  |
 | exception | String |  no  |  |
 | info | String |  no  |  |
 | message | String |  no  |  |
 | request_id | String |  no  |  |
 | stack_trace | String |  no  |  |
 | status | Int |  no  |  |

---


 
 
 #### [Giveaway](#Giveaway)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | _schedule | [Schedule](#Schedule) |  no  |  |
 | active | Bool |  no  |  |
 | application_id | String |  no  |  |
 | audience | [RewardsAudience](#RewardsAudience) |  no  |  |
 | banner_image | [Asset](#Asset) |  no  |  |
 | created_at | String |  no  |  |
 | description | String |  no  |  |
 | name | String |  no  |  |
 | rule | [RewardsRule](#RewardsRule) |  no  |  |
 | title | String |  no  |  |
 | updated_at | String |  no  |  |

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
 | _id | String |  no  |  |
 | application_id | String |  no  |  |
 | claimed | Bool |  no  |  |
 | created_at | String |  no  |  |
 | expires_on | String |  no  |  |
 | points | Double |  no  |  |
 | remaining_points | Double |  no  |  |
 | text_1 | String |  no  |  |
 | text_2 | String |  no  |  |
 | text_3 | String |  no  |  |
 | txn_name | String |  no  |  |
 | updated_at | String |  no  |  |
 | user_id | String |  no  |  |

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
 | _schedule | [Schedule](#Schedule) |  no  |  |
 | active | Bool |  no  |  |
 | application_id | String |  no  |  |
 | banner_image | [Asset](#Asset) |  no  |  |
 | created_at | String |  no  |  |
 | name | String |  no  |  |
 | rule | [String: Any] |  no  |  |
 | share | [ShareMessages](#ShareMessages) |  no  |  |
 | sub_text | String |  no  |  |
 | text | String |  no  |  |
 | type | String |  no  |  |
 | updated_at | String |  no  |  |
 | updated_by | String |  no  |  |
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
 | _id | String |  no  |  |
 | active | Bool |  no  |  |
 | created_at | String |  no  |  |
 | referral | [Referral](#Referral) |  no  |  |
 | uid | Int |  no  |  |
 | updated_at | String |  no  |  |
 | user_block_reason | String |  no  |  |
 | user_id | String |  no  |  |

---


 
 
 #### [RewardsAudience](#RewardsAudience)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | header_user_id | String |  no  |  |
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
 | properties_cart_id | String |  no  |  |
 | context_traits_first_name | String |  no  |  |
 | context_traits_last_name | String |  no  |  |
 | context_traits_phone_number | String |  no  |  |
 | context_traits_email | String |  no  |  |
 | context_app_application_id | String |  no  |  |
 | properties_breakup_values_raw_total | String |  no  |  |
 | received_at | [ReceivedAt](#ReceivedAt) |  no  |  |

---


 
 
 #### [AbandonCartsList](#AbandonCartsList)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | items | [[AbandonCartsDetail](#AbandonCartsDetail)] |  no  |  |
 | cart_total | String |  no  |  |
 | page | [Page](#Page) |  no  |  |

---


 
 
 #### [AbandonCartDetail](#AbandonCartDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | user_id | String |  no  |  |
 | cart_value | String |  no  |  |
 | articles | [[String: Any]] |  no  |  |
 | breakup | [String: Any] |  no  |  |
 | address | [String: Any] |  no  |  |

---


 
 
 #### [ExportJobReq](#ExportJobReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplace_name | String |  no  |  |
 | start_time | String |  no  |  |
 | end_time | String |  no  |  |
 | event_type | String |  no  |  |
 | trace_id | String |  no  |  |

---


 
 
 #### [ExportJobRes](#ExportJobRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | job_id | String |  no  |  |

---


 
 
 #### [ExportJobStatusRes](#ExportJobStatusRes)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | status | String |  no  |  |
 | job_id | String |  no  |  |
 | download_url | String |  no  |  |

---


 
 
 #### [GetLogsListReq](#GetLogsListReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | marketplace_name | String |  no  |  |
 | start_date | String |  no  |  |
 | company_id | String |  no  |  |
 | end_date | String |  no  |  |

---


 
 
 #### [MkpLogsResp](#MkpLogsResp)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | start_time_iso | String |  no  |  |
 | end_time_iso | String |  no  |  |
 | event_type | String |  no  |  |
 | trace_id | String |  no  |  |
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
 | marketplace_name | String |  no  |  |
 | start_date | String |  no  |  |
 | company_id | String |  no  |  |
 | end_date | String |  no  |  |
 | identifier | String |  no  |  |
 | identifier_value | String |  no  |  |

---


 
 
 #### [LogInfo](#LogInfo)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | status | String |  no  |  |
 | event_type | String |  no  |  |
 | marketplace_name | String |  no  |  |
 | event | String |  no  |  |
 | trace_id | String |  no  |  |
 | company_id | Double |  no  |  |
 | brand_id | Double |  no  |  |
 | store_code | String |  no  |  |
 | store_id | Double |  no  |  |
 | item_id | Double |  no  |  |
 | article_id | String |  no  |  |
 | seller_identifier | String |  no  |  |

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
 | company_id | Int? |  yes  |  |
 | is_active | Bool? |  yes  |  |
 | app_ids | [String]? |  yes  |  |
 | job_type | String? |  yes  |  |
 | discount_type | String? |  yes  |  |
 | discount_level | String? |  yes  |  |
 | value | Int |  no  |  |
 | file_path | String |  no  |  |
 | brand_ids | [Int] |  no  |  |
 | store_ids | [Int] |  no  |  |
 | validity | [ValidityObject](#ValidityObject)? |  yes  |  |

---


 
 
 #### [DiscountJob](#DiscountJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String? |  yes  |  |
 | name | String? |  yes  |  |
 | company_id | Int? |  yes  |  |
 | is_active | Bool? |  yes  |  |
 | app_ids | [String] |  no  |  |
 | job_type | String |  no  |  |
 | discount_type | String |  no  |  |
 | discount_level | String |  no  |  |
 | value | Int |  no  |  |
 | file_path | String |  no  |  |
 | brand_ids | [Int] |  no  |  |
 | store_ids | [Int] |  no  |  |
 | validity | [ValidityObject](#ValidityObject)? |  yes  |  |
 | created_on | String? |  yes  |  |
 | modified_on | String? |  yes  |  |
 | created_by | [UserDetails](#UserDetails)? |  yes  |  |
 | modified_by | [UserDetails](#UserDetails)? |  yes  |  |
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
 | company_id | Int? |  yes  |  |
 | body | [String: Any] |  no  |  |
 | type | String? |  yes  |  |
 | file_type | String? |  yes  |  |

---


 
 
 #### [DownloadFileJob](#DownloadFileJob)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | brand_ids | [Int] |  no  |  |
 | store_ids | [Int] |  no  |  |

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
 | user_id | String? |  yes  |  |

---


 
 
 #### [BadRequestObject](#BadRequestObject)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |

---




 
 
 #### [AddProxyReq](#AddProxyReq)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | attached_path | String |  no  | Proxy path slug |
 | proxy_url | String |  no  | Proxied url |

---


 
 
 #### [AddProxyResponse](#AddProxyResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | _id | String |  no  |  |
 | attached_path | String |  no  |  |
 | proxy_url | String |  no  |  |
 | company_id | String |  no  |  |
 | application_id | String |  no  |  |
 | extension_id | String |  no  |  |
 | created_at | String |  no  |  |
 | modified_at | String |  no  |  |

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
 | event_name | String |  no  |  |
 | event_type | String |  no  |  |
 | version | String |  no  |  |
 | display_name | String |  no  |  |
 | description | String |  no  |  |
 | created_on | String |  no  |  |

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
 | subscriber_id | String |  no  |  |
 | attempt | Int |  no  |  |
 | response_code | String |  no  |  |
 | response_message | String |  no  |  |
 | created_on | String |  no  |  |
 | processed_on | String |  no  |  |
 | status | Bool |  no  |  |

---


 
 
 #### [EventPayload](#EventPayload)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | event_trace_id | String |  no  |  |
 | event_company_id | Int |  no  |  |
 | event_application_id | String |  no  |  |
 | event_extension_id | String |  no  |  |
 | event_name | String |  no  |  |
 | status | Bool |  no  |  |

---


 
 
 #### [SubscriberConfig](#SubscriberConfig)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | webhook_url | String |  no  |  |
 | company_id | Int |  no  |  |
 | application_id | String |  no  |  |
 | extension_id | String |  no  |  |
 | status | String |  no  |  |
 | auth_meta | [AuthMeta](#AuthMeta) |  no  |  |
 | created_on | String |  no  |  |
 | updated_on | String |  no  |  |
 | subscriber_event_mapping | [SubscriberEvent](#SubscriberEvent) |  no  |  |

---


 
 
 #### [SubscriberEvent](#SubscriberEvent)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | id | Int |  no  |  |
 | subscriber_id | Int |  no  |  |
 | event_id | Int |  no  |  |
 | created_date | String |  no  |  |

---


 
 
 #### [AuthMeta](#AuthMeta)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | type | String |  no  |  |
 | username | String |  no  |  |
 | password | String |  no  |  |

---



