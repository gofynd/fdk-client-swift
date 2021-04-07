# FDK Platform Front API Documentaion


* [Lead](#Lead) - Handles communication between Administrator <-> Staff and Staff <-> Users 
* [Feedback](#Feedback) - User Reviews and Rating System 
* [Theme](#Theme) - Responsible for themes 
* [User](#User) - Authentication Service 
* [Content](#Content) - Content System 
* [Billing](#Billing) - Handle platform subscription 
* [Communication](#Communication) - Manages email, sms, push notifications sent to users 
* [Payment](#Payment) - Collect payment through many payment gateway i.e Stripe, Razorpay, Juspay etc.into Fynd or Self account 
* [Order](#Order) - Handles Platform websites OMS 
* [Catalog](#Catalog) - Catalog API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features.  
* [CompanyProfile](#CompanyProfile) - Company Profile API's allows you to access list of products, prices, seller details, similar features, variants and many more useful features.  
* [FileStorage](#FileStorage) - File Storage 
* [Share](#Share) - Short link and QR Code 
* [Configuration](#Configuration) - Application configuration apis 
* [Cart](#Cart) - Cart APIs 
* [Marketplaces](#Marketplaces) - Marketplaces 
* [Analytics](#Analytics) - Perceptor analytics 
* [Discount](#Discount) - Discount 

----
----

### Classes and Methods


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
    * [createInjectableTag](#createinjectabletag)
    * [updateInjectableTag](#updateinjectabletag)
    * [deleteAllInjectableTags](#deleteallinjectabletags)
    * [getInjectableTags](#getinjectabletags)
    * [addInjectableTag](#addinjectabletag)
    * [removeInjectableTag](#removeinjectabletag)
    * [editInjectableTag](#editinjectabletag)
    

* [Billing](#Billing)
  * Methods
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
    

* [Order](#Order)
  * Methods
    * [shipmentStatusUpdate](#shipmentstatusupdate)
    * [activityStatus](#activitystatus)
    * [storeProcessShipmentUpdate](#storeprocessshipmentupdate)
    * [getOrdersByCompanyId](#getordersbycompanyid)
    * [trackShipmentPlatform](#trackshipmentplatform)
    * [trackOrder](#trackorder)
    * [failedOrders](#failedorders)
    * [reprocessOrder](#reprocessorder)
    * [getPing](#getping)
    * [voiceCallback](#voicecallback)
    * [voiceClickToCall](#voiceclicktocall)
    

* [Catalog](#Catalog)
  * Methods
    * [updateSearchKeywords](#updatesearchkeywords)
    * [deleteSearchKeywords](#deletesearchkeywords)
    * [getSearchKeywords](#getsearchkeywords)
    * [createCustomKeyword](#createcustomkeyword)
    * [getAllSearchKeyword](#getallsearchkeyword)
    * [updateAutocompleteKeyword](#updateautocompletekeyword)
    * [deleteAutocompleteKeyword](#deleteautocompletekeyword)
    * [getAutocompleteKeywordDetail](#getautocompletekeyworddetail)
    * [createCustomAutocompleteRule](#createcustomautocompleterule)
    * [getAutocompleteConfig](#getautocompleteconfig)
    * [createProductBundle](#createproductbundle)
    * [getProductBundle](#getproductbundle)
    * [updateProductBundle](#updateproductbundle)
    * [getProductBundleDetail](#getproductbundledetail)
    * [createSizeGuide](#createsizeguide)
    * [getSizeGuides](#getsizeguides)
    * [updateSizeGuide](#updatesizeguide)
    * [getSizeGuide](#getsizeguide)
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
    * [updateCategory](#updatecategory)
    * [getCategoryData](#getcategorydata)
    * [createProduct](#createproduct)
    * [getProducts](#getproducts)
    * [editProduct](#editproduct)
    * [deleteProduct](#deleteproduct)
    * [getProduct](#getproduct)
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
    * [getInventory](#getinventory)
    * [deleteInventory](#deleteinventory)
    * [createBulkInventoryJob](#createbulkinventoryjob)
    * [getInventoryBulkUploadHistory](#getinventorybulkuploadhistory)
    * [deleteBulkInventoryJob](#deletebulkinventoryjob)
    * [createBulkInventory](#createbulkinventory)
    * [createInventoryExportJob](#createinventoryexportjob)
    * [getInventoryExport](#getinventoryexport)
    * [exportInventoryConfig](#exportinventoryconfig)
    

* [CompanyProfile](#CompanyProfile)
  * Methods
    * [cbsOnboardGet](#cbsonboardget)
    * [updateCompany](#updatecompany)
    * [getCompanyMetrics](#getcompanymetrics)
    * [editBrand](#editbrand)
    * [getBrand](#getbrand)
    * [createBrand](#createbrand)
    * [getBrands](#getbrands)
    * [createBrand](#createbrand)
    * [getLocations](#getlocations)
    * [createLocation](#createlocation)
    * [updateLocation](#updatelocation)
    * [getLocationDetail](#getlocationdetail)
    

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
    * [appBrowse](#appbrowse)
    * [proxy](#proxy)
    

* [Share](#Share)
  * Methods
    * [createShortLink](#createshortlink)
    * [getShortLinks](#getshortlinks)
    * [getShortLinkByHash](#getshortlinkbyhash)
    * [updateShortLinkById](#updateshortlinkbyid)
    

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
    

* [Marketplaces](#Marketplaces)
  * Methods
    * [getAvailableChannels](#getavailablechannels)
    * [getChannels](#getchannels)
    * [getChannel](#getchannel)
    * [registerMyntraChannel](#registermyntrachannel)
    * [updateMyntraChannelCredentials](#updatemyntrachannelcredentials)
    * [registerAmazonChannel](#registeramazonchannel)
    * [updateAmazonChannelCredentials](#updateamazonchannelcredentials)
    * [registerFlipkartChannel](#registerflipkartchannel)
    * [updateFlipkartChannelCredentials](#updateflipkartchannelcredentials)
    * [registerTatacliqChannel](#registertatacliqchannel)
    * [updateTatacliqChannelCredentials](#updatetatacliqchannelcredentials)
    * [registerAjioChannel](#registerajiochannel)
    * [updateAjioChannelCredentials](#updateajiochannelcredentials)
    * [updateChannelInventorySyncConfig](#updatechannelinventorysyncconfig)
    * [getChannelLocationConfig](#getchannellocationconfig)
    * [updateChannelLocationConfig](#updatechannellocationconfig)
    * [getChannelStatus](#getchannelstatus)
    * [updateChannelStatus](#updatechannelstatus)
    * [triggerChannelInventoryUpdates](#triggerchannelinventoryupdates)
    

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
| companyId | string | Company ID for which the data will be returned | 
| items | boolean | Decides that the reponse will contain the list of tickets | 
| filters | boolean | Decides that the reponse will contain the ticket filters | 
| q | string | Search through ticket titles and description | 
| status | string | Filter tickets on status | 
| priority | string | Filter tickets on priority | 
| category | string | Filter tickets on category | 
| pageNo | integer | The page number to navigate through the given set of results. | 
| pageSize | integer | Number of items to retrieve in each page. Default is 12. | 

Gets the list of company level tickets and/or ticket filters

*Success Response:*



Success


Schema: `TicketList`


*Examples:*


Without items
```json
{
  "value": {
    "filters": {
      "statuses": [
        {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        {
          "display": "In Progress",
          "color": "#ffa951",
          "key": "in_progress"
        },
        {
          "display": "Resolved",
          "color": "#20c3a6",
          "key": "resolved"
        },
        {
          "display": "Closed",
          "color": "#41434c",
          "key": "closed"
        }
      ],
      "priorities": [
        {
          "display": "Low",
          "color": "#fed766",
          "key": "low"
        },
        {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        {
          "display": "High",
          "color": "#fe4a49",
          "key": "high"
        }
      ],
      "assignees": [],
      "categories": [
        {
          "form": {
            "login_required": false,
            "should_notify": false,
            "inputs": [
              {
                "type": "email",
                "showRegexInput": false,
                "enum": [],
                "regex": "\\S+@\\S+\\.\\S+",
                "display": "email",
                "required": true,
                "key": "email"
              }
            ],
            "available_assignees": [],
            "_id": "602e900a2042255c03cadaf0",
            "title": "service-test-satyen",
            "description": "testing form from service",
            "slug": "service-test-satyen",
            "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.150"
                },
                "os": {
                  "name": "macOS",
                  "version": "11.2.0"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5f8147abbd1a0a870f61f1a6",
            "createdAt": "2021-02-18T16:04:26.495Z",
            "updatedAt": "2021-02-18T16:04:26.495Z",
            "__v": 0
          },
          "key": "service-test-satyen",
          "display": "service-test-satyen"
        }
      ]
    }
  }
}
```

With items
```json
{
  "value": {
    "docs": [
      {
        "_id": "602d2652ce284d0b008d5c97",
        "status": {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        "priority": {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        "assigned_to": {
          "agent_id": "5e79e721768c6bf54b783146",
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
          "hasOldPasswordHash": false,
          "_id": "5e79e721768c6bf54b783146",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "nikhilmshchs@gmail.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@gofynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@fynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@uniket.store"
            }
          ],
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "countryCode": 91,
              "phone": "9890425946"
            }
          ],
          "firstName": "Nikhil",
          "lastName": "Manapure",
          "username": "nikhilmanapure_gofynd_com_29298",
          "createdAt": "2020-03-24T10:55:29.298Z",
          "updatedAt": "2020-05-12T07:46:41.816Z",
          "uid": "5567",
          "__v": 2
        },
        "tags": [
          "asdf444"
        ],
        "context": {
          "application_id": "000000000000000000000001",
          "company_id": "1"
        },
        "created_on": {
          "user_agent": "Fynd Platform/0.0.1 (com.fynd.platform; build:3; iOS 14.2.0) Alamofire/5.0.2",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Fynd Platform",
              "version": "0.0.1"
            }
          }
        },
        "source": "sales_channel",
        "content": {
          "title": "asdf444 Response",
          "description": "",
          "attachments": []
        },
        "response_id": "602d2652ce284dee3c8d5c96",
        "category": {
          "form": {
            "login_required": false,
            "should_notify": true,
            "inputs": [
              {
                "type": "text",
                "showRegexInput": false,
                "enum": [],
                "display": "asdf",
                "key": "asdf"
              },
              {
                "type": "mobile",
                "showRegexInput": false,
                "enum": [],
                "display": "mob num",
                "regex": "[0-9]{10}$",
                "key": "mob-num"
              }
            ],
            "available_assignees": [
              "5e79e721768c6bf54b783146"
            ],
            "_id": "60124e4a4d2bc363625e1bf4",
            "title": "asdf444",
            "description": "adf",
            "slug": "asdf444",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.96"
                },
                "os": {
                  "name": "macOS",
                  "version": "10.15.7",
                  "versionName": "Catalina"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5e79e721768c6bf54b783146",
            "createdAt": "2021-01-28T05:40:26.271Z",
            "updatedAt": "2021-02-18T16:02:32.086Z",
            "__v": 0,
            "poll_for_assignment": {
              "duration": 20,
              "message": "We are looking for executive to connect you",
              "success_message": "Executive found",
              "failure_message": "All our executives are busy at the moment, We have accepted your request and someone will connect with you soon!"
            }
          },
          "key": "asdf444",
          "display": "asdf444"
        },
        "ticket_id": "472",
        "createdAt": "2021-02-17T14:21:06.774Z",
        "updatedAt": "2021-02-17T14:21:06.774Z",
        "__v": 0,
        "id": "602d2652ce284d0b008d5c97"
      }
    ],
    "total": 472,
    "limit": 10,
    "page": 1,
    "pages": 48,
    "filters": {
      "statuses": [
        {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        {
          "display": "In Progress",
          "color": "#ffa951",
          "key": "in_progress"
        },
        {
          "display": "Resolved",
          "color": "#20c3a6",
          "key": "resolved"
        },
        {
          "display": "Closed",
          "color": "#41434c",
          "key": "closed"
        }
      ],
      "priorities": [
        {
          "display": "Low",
          "color": "#fed766",
          "key": "low"
        },
        {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        {
          "display": "High",
          "color": "#fe4a49",
          "key": "high"
        }
      ],
      "assignees": [],
      "categories": [
        {
          "form": {
            "login_required": false,
            "should_notify": false,
            "inputs": [
              {
                "type": "email",
                "showRegexInput": false,
                "enum": [],
                "regex": "\\S+@\\S+\\.\\S+",
                "display": "email",
                "required": true,
                "key": "email"
              }
            ],
            "available_assignees": [],
            "_id": "602e900a2042255c03cadaf0",
            "title": "service-test-satyen",
            "description": "testing form from service",
            "slug": "service-test-satyen",
            "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.150"
                },
                "os": {
                  "name": "macOS",
                  "version": "11.2.0"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5f8147abbd1a0a870f61f1a6",
            "createdAt": "2021-02-18T16:04:26.495Z",
            "updatedAt": "2021-02-18T16:04:26.495Z",
            "__v": 0
          },
          "key": "service-test-satyen",
          "display": "service-test-satyen"
        }
      ]
    }
  }
}
```









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
| companyId | string | Company ID for which the data will be returned | 

Creates a company level ticket

*Success Response:*



Success


Schema: `Ticket`


*Examples:*


Default
```json
{
  "value": {
    "context": {
      "company_id": "884"
    },
    "content": {
      "title": "SOme title Response",
      "description": "<b>Single lineeee</b>: asdf<br><b>Email</b>: asdf@asdf.com<br><b>dfsdf</b>: asdf<br>",
      "attachments": []
    },
    "status": {
      "display": "In Progress",
      "color": "#ffa951",
      "key": "in_progress"
    },
    "priority": {
      "display": "Medium",
      "color": "#f37736",
      "key": "medium"
    },
    "assigned_to": {
      "agent_id": "5d1363adf599d850df93175e",
      "gender": "male",
      "accountType": "user",
      "active": true,
      "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
      "hasOldPasswordHash": false,
      "_id": "5d1363adf599d850df93175e",
      "phoneNumbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "countryCode": 91,
          "phone": "9890425946"
        }
      ],
      "firstName": "Nikhil",
      "lastName": "Manapure",
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "nikhilmshchs@gmail.com"
        }
      ],
      "username": "nikhilmshchs_gmail_com_38425_20500281",
      "createdAt": "2019-01-01T17:22:38.528Z",
      "updatedAt": "2021-01-22T10:02:42.258Z",
      "uid": "20500281",
      "__v": 56
    },
    "tags": [
      "some-title"
    ],
    "_id": "6012f38557751ee8fc162cf7",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "source": "sales_channel",
    "created_by": {
      "id": "5d1363adf599d850df93175e",
      "user": {
        "gender": "male",
        "accountType": "user",
        "active": true,
        "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
        "hasOldPasswordHash": false,
        "_id": "5d1363adf599d850df93175e",
        "phoneNumbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "countryCode": 91,
            "phone": "9890425946"
          }
        ],
        "firstName": "Nikhil",
        "lastName": "Manapure",
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "nikhilmshchs@gmail.com"
          }
        ],
        "username": "nikhilmshchs_gmail_com_38425_20500281",
        "createdAt": "2019-01-01T17:22:38.528Z",
        "updatedAt": "2021-01-22T10:02:42.258Z",
        "uid": "20500281",
        "__v": 56
      }
    },
    "response_id": "6012f38457751e0fb8162cf6",
    "category": {
      "form": {
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "Single lineeee",
            "key": "single-lineeee",
            "showRegexInput": false
          },
          {
            "required": false,
            "type": "email",
            "enum": [],
            "display": "Email",
            "regex": "\\S+@\\S+\\.\\S+",
            "key": "email",
            "showRegexInput": true
          },
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "dfsdf",
            "key": "dfsdf",
            "showRegexInput": false
          }
        ],
        "available_assignees": [
          "5b9b98150df588546aaea6d2",
          "5c45d78395d7504f76c2cb37"
        ],
        "_id": "5fd72db3dc250f8decfc61b2",
        "title": "SOme title",
        "description": "SOme big description",
        "slug": "some-title",
        "application_id": "000000000000000000000003",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "87.0.4280.88"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.6",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5d1363adf599d850df93175e",
        "createdAt": "2020-12-14T09:17:39.953Z",
        "updatedAt": "2021-01-28T18:48:07.717Z",
        "__v": 0
      },
      "key": "some-title",
      "display": "SOme title"
    },
    "ticket_id": "43",
    "createdAt": "2021-01-28T17:25:25.013Z",
    "updatedAt": "2021-01-28T17:25:33.396Z",
    "__v": 0,
    "video_room_id": "6012f38557751ee8fc162cf7"
  }
}
```









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
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for which the data will be returned | 
| items | boolean | Decides that the reponse will contain the list of tickets | 
| filters | boolean | Decides that the reponse will contain the ticket filters | 
| q | string | Search through ticket titles and description | 
| status | string | Filter tickets on status | 
| priority | string | Filter tickets on priority | 
| category | string | Filter tickets on category | 

Gets the list of Application level Tickets and/or ticket filters

*Success Response:*



Success


Schema: `TicketList`


*Examples:*


Without items
```json
{
  "value": {
    "filters": {
      "statuses": [
        {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        {
          "display": "In Progress",
          "color": "#ffa951",
          "key": "in_progress"
        },
        {
          "display": "Resolved",
          "color": "#20c3a6",
          "key": "resolved"
        },
        {
          "display": "Closed",
          "color": "#41434c",
          "key": "closed"
        }
      ],
      "priorities": [
        {
          "display": "Low",
          "color": "#fed766",
          "key": "low"
        },
        {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        {
          "display": "High",
          "color": "#fe4a49",
          "key": "high"
        }
      ],
      "assignees": [],
      "categories": [
        {
          "form": {
            "login_required": false,
            "should_notify": false,
            "inputs": [
              {
                "type": "email",
                "showRegexInput": false,
                "enum": [],
                "regex": "\\S+@\\S+\\.\\S+",
                "display": "email",
                "required": true,
                "key": "email"
              }
            ],
            "available_assignees": [],
            "_id": "602e900a2042255c03cadaf0",
            "title": "service-test-satyen",
            "description": "testing form from service",
            "slug": "service-test-satyen",
            "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.150"
                },
                "os": {
                  "name": "macOS",
                  "version": "11.2.0"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5f8147abbd1a0a870f61f1a6",
            "createdAt": "2021-02-18T16:04:26.495Z",
            "updatedAt": "2021-02-18T16:04:26.495Z",
            "__v": 0
          },
          "key": "service-test-satyen",
          "display": "service-test-satyen"
        }
      ]
    }
  }
}
```

With items
```json
{
  "value": {
    "docs": [
      {
        "_id": "602d2652ce284d0b008d5c97",
        "status": {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        "priority": {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        "assigned_to": {
          "agent_id": "5e79e721768c6bf54b783146",
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
          "hasOldPasswordHash": false,
          "_id": "5e79e721768c6bf54b783146",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "nikhilmshchs@gmail.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@gofynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@fynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@uniket.store"
            }
          ],
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "countryCode": 91,
              "phone": "9890425946"
            }
          ],
          "firstName": "Nikhil",
          "lastName": "Manapure",
          "username": "nikhilmanapure_gofynd_com_29298",
          "createdAt": "2020-03-24T10:55:29.298Z",
          "updatedAt": "2020-05-12T07:46:41.816Z",
          "uid": "5567",
          "__v": 2
        },
        "tags": [
          "asdf444"
        ],
        "context": {
          "application_id": "000000000000000000000001",
          "company_id": "1"
        },
        "created_on": {
          "user_agent": "Fynd Platform/0.0.1 (com.fynd.platform; build:3; iOS 14.2.0) Alamofire/5.0.2",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Fynd Platform",
              "version": "0.0.1"
            }
          }
        },
        "source": "sales_channel",
        "content": {
          "title": "asdf444 Response",
          "description": "",
          "attachments": []
        },
        "response_id": "602d2652ce284dee3c8d5c96",
        "category": {
          "form": {
            "login_required": false,
            "should_notify": true,
            "inputs": [
              {
                "type": "text",
                "showRegexInput": false,
                "enum": [],
                "display": "asdf",
                "key": "asdf"
              },
              {
                "type": "mobile",
                "showRegexInput": false,
                "enum": [],
                "display": "mob num",
                "regex": "[0-9]{10}$",
                "key": "mob-num"
              }
            ],
            "available_assignees": [
              "5e79e721768c6bf54b783146"
            ],
            "_id": "60124e4a4d2bc363625e1bf4",
            "title": "asdf444",
            "description": "adf",
            "slug": "asdf444",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.96"
                },
                "os": {
                  "name": "macOS",
                  "version": "10.15.7",
                  "versionName": "Catalina"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5e79e721768c6bf54b783146",
            "createdAt": "2021-01-28T05:40:26.271Z",
            "updatedAt": "2021-02-18T16:02:32.086Z",
            "__v": 0,
            "poll_for_assignment": {
              "duration": 20,
              "message": "We are looking for executive to connect you",
              "success_message": "Executive found",
              "failure_message": "All our executives are busy at the moment, We have accepted your request and someone will connect with you soon!"
            }
          },
          "key": "asdf444",
          "display": "asdf444"
        },
        "ticket_id": "472",
        "createdAt": "2021-02-17T14:21:06.774Z",
        "updatedAt": "2021-02-17T14:21:06.774Z",
        "__v": 0,
        "id": "602d2652ce284d0b008d5c97"
      }
    ],
    "total": 472,
    "limit": 10,
    "page": 1,
    "pages": 48,
    "filters": {
      "statuses": [
        {
          "display": "Pending",
          "color": "#eae22b",
          "key": "pending"
        },
        {
          "display": "In Progress",
          "color": "#ffa951",
          "key": "in_progress"
        },
        {
          "display": "Resolved",
          "color": "#20c3a6",
          "key": "resolved"
        },
        {
          "display": "Closed",
          "color": "#41434c",
          "key": "closed"
        }
      ],
      "priorities": [
        {
          "display": "Low",
          "color": "#fed766",
          "key": "low"
        },
        {
          "display": "Medium",
          "color": "#f37736",
          "key": "medium"
        },
        {
          "display": "High",
          "color": "#fe4a49",
          "key": "high"
        }
      ],
      "assignees": [],
      "categories": [
        {
          "form": {
            "login_required": false,
            "should_notify": false,
            "inputs": [
              {
                "type": "email",
                "showRegexInput": false,
                "enum": [],
                "regex": "\\S+@\\S+\\.\\S+",
                "display": "email",
                "required": true,
                "key": "email"
              }
            ],
            "available_assignees": [],
            "_id": "602e900a2042255c03cadaf0",
            "title": "service-test-satyen",
            "description": "testing form from service",
            "slug": "service-test-satyen",
            "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
            "application_id": "000000000000000000000001",
            "created_on": {
              "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
              "platform": "web",
              "meta": {
                "browser": {
                  "name": "Chrome",
                  "version": "88.0.4324.150"
                },
                "os": {
                  "name": "macOS",
                  "version": "11.2.0"
                },
                "platform": {
                  "type": "desktop",
                  "vendor": "Apple"
                },
                "engine": {
                  "name": "Blink"
                }
              }
            },
            "created_by": "5f8147abbd1a0a870f61f1a6",
            "createdAt": "2021-02-18T16:04:26.495Z",
            "updatedAt": "2021-02-18T16:04:26.495Z",
            "__v": 0
          },
          "key": "service-test-satyen",
          "display": "service-test-satyen"
        }
      ]
    }
  }
}
```









---


#### getTicket
Retreives ticket details of a company level ticket with ticket ID

```swift
lead.getTicket(companyId: companyId, ticketId: ticketId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID for which the data will be returned | 
| ticketId | string | Tiket ID of the ticket to be fetched | 

Retreives ticket details of a company level ticket

*Success Response:*



Success


Schema: `Ticket`


*Examples:*


Default
```json
{
  "value": {
    "context": {
      "company_id": "1"
    },
    "content": {
      "title": "SOme title Response",
      "description": "<b>Single lineeee</b>: asdf<br><b>Email</b>: asdf@asdf.com<br><b>dfsdf</b>: asdf<br>",
      "attachments": []
    },
    "status": {
      "display": "In Progress",
      "color": "#ffa951",
      "key": "in_progress"
    },
    "priority": {
      "display": "Medium",
      "color": "#f37736",
      "key": "medium"
    },
    "assigned_to": {
      "agent_id": "5d1363adf599d850df93175e",
      "gender": "male",
      "accountType": "user",
      "active": true,
      "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
      "hasOldPasswordHash": false,
      "_id": "5d1363adf599d850df93175e",
      "phoneNumbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "countryCode": 91,
          "phone": "9890425946"
        }
      ],
      "firstName": "Nikhil",
      "lastName": "Manapure",
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "nikhilmshchs@gmail.com"
        }
      ],
      "username": "nikhilmshchs_gmail_com_38425_20500281",
      "createdAt": "2019-01-01T17:22:38.528Z",
      "updatedAt": "2021-01-22T10:02:42.258Z",
      "uid": "20500281",
      "__v": 56
    },
    "tags": [
      "some-title"
    ],
    "_id": "6012f38557751ee8fc162cf7",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "source": "sales_channel",
    "created_by": {
      "id": "5d1363adf599d850df93175e",
      "user": {
        "gender": "male",
        "accountType": "user",
        "active": true,
        "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
        "hasOldPasswordHash": false,
        "_id": "5d1363adf599d850df93175e",
        "phoneNumbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "countryCode": 91,
            "phone": "9890425946"
          }
        ],
        "firstName": "Nikhil",
        "lastName": "Manapure",
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "nikhilmshchs@gmail.com"
          }
        ],
        "username": "nikhilmshchs_gmail_com_38425_20500281",
        "createdAt": "2019-01-01T17:22:38.528Z",
        "updatedAt": "2021-01-22T10:02:42.258Z",
        "uid": "20500281",
        "__v": 56
      }
    },
    "response_id": "6012f38457751e0fb8162cf6",
    "category": {
      "form": {
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "Single lineeee",
            "key": "single-lineeee",
            "showRegexInput": false
          },
          {
            "required": false,
            "type": "email",
            "enum": [],
            "display": "Email",
            "regex": "\\S+@\\S+\\.\\S+",
            "key": "email",
            "showRegexInput": true
          },
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "dfsdf",
            "key": "dfsdf",
            "showRegexInput": false
          }
        ],
        "available_assignees": [
          "5b9b98150df588546aaea6d2",
          "5c45d78395d7504f76c2cb37"
        ],
        "_id": "5fd72db3dc250f8decfc61b2",
        "title": "SOme title",
        "description": "SOme big description",
        "slug": "some-title",
        "application_id": "000000000000000000000003",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "87.0.4280.88"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.6",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5d1363adf599d850df93175e",
        "createdAt": "2020-12-14T09:17:39.953Z",
        "updatedAt": "2021-01-28T18:48:07.717Z",
        "__v": 0
      },
      "key": "some-title",
      "display": "SOme title"
    },
    "ticket_id": "43",
    "createdAt": "2021-01-28T17:25:25.013Z",
    "updatedAt": "2021-01-28T17:25:33.396Z",
    "__v": 0,
    "video_room_id": "6012f38557751ee8fc162cf7"
  }
}
```









---


#### editTicket
Edits ticket details of a company level ticket

```swift
lead.editTicket(companyId: companyId, ticketId: ticketId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID for ticket | 
| ticketId | string | Ticket ID of ticket to be edited | 

Edits ticket details of a company level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes

*Success Response:*



Success


Schema: `Ticket`


*Examples:*


Default
```json
{
  "value": {
    "context": {
      "company_id": "1"
    },
    "content": {
      "title": "SOme title Response",
      "description": "<b>Single lineeee</b>: asdf<br><b>Email</b>: asdf@asdf.com<br><b>dfsdf</b>: asdf<br>",
      "attachments": []
    },
    "status": {
      "display": "In Progress",
      "color": "#ffa951",
      "key": "in_progress"
    },
    "priority": {
      "display": "Medium",
      "color": "#f37736",
      "key": "medium"
    },
    "assigned_to": {
      "agent_id": "5d1363adf599d850df93175e",
      "gender": "male",
      "accountType": "user",
      "active": true,
      "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
      "hasOldPasswordHash": false,
      "_id": "5d1363adf599d850df93175e",
      "phoneNumbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "countryCode": 91,
          "phone": "9890425946"
        }
      ],
      "firstName": "Nikhil",
      "lastName": "Manapure",
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "nikhilmshchs@gmail.com"
        }
      ],
      "username": "nikhilmshchs_gmail_com_38425_20500281",
      "createdAt": "2019-01-01T17:22:38.528Z",
      "updatedAt": "2021-01-22T10:02:42.258Z",
      "uid": "20500281",
      "__v": 56
    },
    "tags": [
      "some-title"
    ],
    "_id": "6012f38557751ee8fc162cf7",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "source": "sales_channel",
    "created_by": {
      "id": "5d1363adf599d850df93175e",
      "user": {
        "gender": "male",
        "accountType": "user",
        "active": true,
        "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
        "hasOldPasswordHash": false,
        "_id": "5d1363adf599d850df93175e",
        "phoneNumbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "countryCode": 91,
            "phone": "9890425946"
          }
        ],
        "firstName": "Nikhil",
        "lastName": "Manapure",
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "nikhilmshchs@gmail.com"
          }
        ],
        "username": "nikhilmshchs_gmail_com_38425_20500281",
        "createdAt": "2019-01-01T17:22:38.528Z",
        "updatedAt": "2021-01-22T10:02:42.258Z",
        "uid": "20500281",
        "__v": 56
      }
    },
    "response_id": "6012f38457751e0fb8162cf6",
    "category": {
      "form": {
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "Single lineeee",
            "key": "single-lineeee",
            "showRegexInput": false
          },
          {
            "required": false,
            "type": "email",
            "enum": [],
            "display": "Email",
            "regex": "\\S+@\\S+\\.\\S+",
            "key": "email",
            "showRegexInput": true
          },
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "dfsdf",
            "key": "dfsdf",
            "showRegexInput": false
          }
        ],
        "available_assignees": [
          "5b9b98150df588546aaea6d2",
          "5c45d78395d7504f76c2cb37"
        ],
        "_id": "5fd72db3dc250f8decfc61b2",
        "title": "SOme title",
        "description": "SOme big description",
        "slug": "some-title",
        "application_id": "000000000000000000000003",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "87.0.4280.88"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.6",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5d1363adf599d850df93175e",
        "createdAt": "2020-12-14T09:17:39.953Z",
        "updatedAt": "2021-01-28T18:48:07.717Z",
        "__v": 0
      },
      "key": "some-title",
      "display": "SOme title"
    },
    "ticket_id": "43",
    "createdAt": "2021-01-28T17:25:25.013Z",
    "updatedAt": "2021-01-28T17:25:33.396Z",
    "__v": 0,
    "video_room_id": "6012f38557751ee8fc162cf7"
  }
}
```









---


#### getTicket
Retreives ticket details of a application level ticket

```swift
lead.getTicket(companyId: companyId, applicationId: applicationId, ticketId: ticketId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for which the data will be returned | 
| ticketId | string | Tiket ID of the ticket to be fetched | 

Retreives ticket details of a application level ticket with ticket ID

*Success Response:*



Success


Schema: `Ticket`


*Examples:*


Default
```json
{
  "value": {
    "context": {
      "application_id": "000000000000000000000003",
      "company_id": "884"
    },
    "content": {
      "title": "SOme title Response",
      "description": "<b>Single lineeee</b>: asdf<br><b>Email</b>: asdf@asdf.com<br><b>dfsdf</b>: asdf<br>",
      "attachments": []
    },
    "status": {
      "display": "In Progress",
      "color": "#ffa951",
      "key": "in_progress"
    },
    "priority": {
      "display": "Medium",
      "color": "#f37736",
      "key": "medium"
    },
    "assigned_to": {
      "agent_id": "5d1363adf599d850df93175e",
      "gender": "male",
      "accountType": "user",
      "active": true,
      "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
      "hasOldPasswordHash": false,
      "_id": "5d1363adf599d850df93175e",
      "phoneNumbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "countryCode": 91,
          "phone": "9890425946"
        }
      ],
      "firstName": "Nikhil",
      "lastName": "Manapure",
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "nikhilmshchs@gmail.com"
        }
      ],
      "username": "nikhilmshchs_gmail_com_38425_20500281",
      "createdAt": "2019-01-01T17:22:38.528Z",
      "updatedAt": "2021-01-22T10:02:42.258Z",
      "uid": "20500281",
      "__v": 56
    },
    "tags": [
      "some-title"
    ],
    "_id": "6012f38557751ee8fc162cf7",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "source": "sales_channel",
    "created_by": {
      "id": "5d1363adf599d850df93175e",
      "user": {
        "gender": "male",
        "accountType": "user",
        "active": true,
        "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
        "hasOldPasswordHash": false,
        "_id": "5d1363adf599d850df93175e",
        "phoneNumbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "countryCode": 91,
            "phone": "9890425946"
          }
        ],
        "firstName": "Nikhil",
        "lastName": "Manapure",
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "nikhilmshchs@gmail.com"
          }
        ],
        "username": "nikhilmshchs_gmail_com_38425_20500281",
        "createdAt": "2019-01-01T17:22:38.528Z",
        "updatedAt": "2021-01-22T10:02:42.258Z",
        "uid": "20500281",
        "__v": 56
      }
    },
    "response_id": "6012f38457751e0fb8162cf6",
    "category": {
      "form": {
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "Single lineeee",
            "key": "single-lineeee",
            "showRegexInput": false
          },
          {
            "required": false,
            "type": "email",
            "enum": [],
            "display": "Email",
            "regex": "\\S+@\\S+\\.\\S+",
            "key": "email",
            "showRegexInput": true
          },
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "dfsdf",
            "key": "dfsdf",
            "showRegexInput": false
          }
        ],
        "available_assignees": [
          "5b9b98150df588546aaea6d2",
          "5c45d78395d7504f76c2cb37"
        ],
        "_id": "5fd72db3dc250f8decfc61b2",
        "title": "SOme title",
        "description": "SOme big description",
        "slug": "some-title",
        "application_id": "000000000000000000000003",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "87.0.4280.88"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.6",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5d1363adf599d850df93175e",
        "createdAt": "2020-12-14T09:17:39.953Z",
        "updatedAt": "2021-01-28T18:48:07.717Z",
        "__v": 0
      },
      "key": "some-title",
      "display": "SOme title"
    },
    "ticket_id": "43",
    "createdAt": "2021-01-28T17:25:25.013Z",
    "updatedAt": "2021-01-28T17:25:33.396Z",
    "__v": 0,
    "video_room_id": "6012f38557751ee8fc162cf7"
  }
}
```









---


#### editTicket
Edits ticket details of a application level ticket

```swift
lead.editTicket(companyId: companyId, applicationId: applicationId, ticketId: ticketId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for ticket | 
| ticketId | string | Ticket ID of ticket to be edited | 

Edits ticket details of a application level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes

*Success Response:*



Success


Schema: `Ticket`


*Examples:*


Default
```json
{
  "value": {
    "context": {
      "application_id": "000000000000000000000003",
      "company_id": "884"
    },
    "content": {
      "title": "SOme title Response",
      "description": "<b>Single lineeee</b>: asdf<br><b>Email</b>: asdf@asdf.com<br><b>dfsdf</b>: asdf<br>",
      "attachments": []
    },
    "status": {
      "display": "In Progress",
      "color": "#ffa951",
      "key": "in_progress"
    },
    "priority": {
      "display": "Medium",
      "color": "#f37736",
      "key": "medium"
    },
    "assigned_to": {
      "agent_id": "5d1363adf599d850df93175e",
      "gender": "male",
      "accountType": "user",
      "active": true,
      "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
      "hasOldPasswordHash": false,
      "_id": "5d1363adf599d850df93175e",
      "phoneNumbers": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "countryCode": 91,
          "phone": "9890425946"
        }
      ],
      "firstName": "Nikhil",
      "lastName": "Manapure",
      "emails": [
        {
          "active": true,
          "primary": true,
          "verified": true,
          "email": "nikhilmshchs@gmail.com"
        }
      ],
      "username": "nikhilmshchs_gmail_com_38425_20500281",
      "createdAt": "2019-01-01T17:22:38.528Z",
      "updatedAt": "2021-01-22T10:02:42.258Z",
      "uid": "20500281",
      "__v": 56
    },
    "tags": [
      "some-title"
    ],
    "_id": "6012f38557751ee8fc162cf7",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "source": "sales_channel",
    "created_by": {
      "id": "5d1363adf599d850df93175e",
      "user": {
        "gender": "male",
        "accountType": "user",
        "active": true,
        "profilePicUrl": "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=2136700473091190&height=400&width=400&ext=1554542761&hash=AeS6cuWIdjDdJJ-b",
        "hasOldPasswordHash": false,
        "_id": "5d1363adf599d850df93175e",
        "phoneNumbers": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "countryCode": 91,
            "phone": "9890425946"
          }
        ],
        "firstName": "Nikhil",
        "lastName": "Manapure",
        "emails": [
          {
            "active": true,
            "primary": true,
            "verified": true,
            "email": "nikhilmshchs@gmail.com"
          }
        ],
        "username": "nikhilmshchs_gmail_com_38425_20500281",
        "createdAt": "2019-01-01T17:22:38.528Z",
        "updatedAt": "2021-01-22T10:02:42.258Z",
        "uid": "20500281",
        "__v": 56
      }
    },
    "response_id": "6012f38457751e0fb8162cf6",
    "category": {
      "form": {
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "Single lineeee",
            "key": "single-lineeee",
            "showRegexInput": false
          },
          {
            "required": false,
            "type": "email",
            "enum": [],
            "display": "Email",
            "regex": "\\S+@\\S+\\.\\S+",
            "key": "email",
            "showRegexInput": true
          },
          {
            "required": false,
            "type": "text",
            "enum": [],
            "display": "dfsdf",
            "key": "dfsdf",
            "showRegexInput": false
          }
        ],
        "available_assignees": [
          "5b9b98150df588546aaea6d2",
          "5c45d78395d7504f76c2cb37"
        ],
        "_id": "5fd72db3dc250f8decfc61b2",
        "title": "SOme title",
        "description": "SOme big description",
        "slug": "some-title",
        "application_id": "000000000000000000000003",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "87.0.4280.88"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.6",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5d1363adf599d850df93175e",
        "createdAt": "2020-12-14T09:17:39.953Z",
        "updatedAt": "2021-01-28T18:48:07.717Z",
        "__v": 0
      },
      "key": "some-title",
      "display": "SOme title"
    },
    "ticket_id": "43",
    "createdAt": "2021-01-28T17:25:25.013Z",
    "updatedAt": "2021-01-28T17:25:33.396Z",
    "__v": 0,
    "video_room_id": "6012f38557751ee8fc162cf7"
  }
}
```









---


#### createHistory
Create history for specific company level ticket

```swift
lead.createHistory(companyId: companyId, ticketId: ticketId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID for ticket | 
| ticketId | string | Ticket ID for which history is created | 

Create history for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Success Response:*



Success


Schema: `TicketHistory`


*Examples:*


Default
```json
{
  "value": {
    "_id": "601a9d52c26687d086c499ef",
    "ticket_id": "6012f38557751ee8fc162cf7",
    "type": "comment",
    "value": {
      "text": "d",
      "media": []
    },
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "created_by": "5d1363adf599d850df93175e",
    "createdAt": "2021-02-03T12:55:46.808Z",
    "updatedAt": "2021-02-03T12:55:46.808Z",
    "__v": 0
  }
}
```









---


#### getTicketHistory
Gets history list for specific company level ticket

```swift
lead.getTicketHistory(companyId: companyId, ticketId: ticketId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID for ticket | 
| ticketId | string | Ticket ID for which history is to be fetched | 

Gets history list for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Success Response:*



Success


Schema: `TicketHistoryList`


*Examples:*


Default
```json
{
  "value": {
    "docs": [
      {
        "_id": "602e5384204225eed5cadae7",
        "ticket_id": "602d2652ce284d0b008d5c97",
        "type": "comment",
        "value": {
          "text": "hello service",
          "media": []
        },
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "88.0.4324.150"
            },
            "os": {
              "name": "macOS",
              "version": "11.2.0"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": {
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://hdn-1.fynd.com/company/884/applications/000000000000000000000001/theme/pictures/free/original/default-profile_nxhzui.png",
          "hasOldPasswordHash": false,
          "_id": "5f8147abbd1a0a870f61f1a6",
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "phone": "8412805281",
              "countryCode": 91
            }
          ],
          "firstName": "Satyen",
          "lastName": "Maurya",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "satyenmaurya95@gmail.com"
            }
          ],
          "username": "satyenmaurya95_gmail_com_11118",
          "createdAt": "2020-10-10T05:33:31.119Z",
          "updatedAt": "2020-10-10T05:33:31.119Z",
          "uid": "5678",
          "__v": 0
        },
        "createdAt": "2021-02-18T11:46:12.522Z",
        "updatedAt": "2021-02-18T11:46:12.522Z",
        "__v": 0,
        "id": "602e5384204225eed5cadae7"
      },
      {
        "_id": "60372aa78a046d4d79c46e15",
        "ticket_id": "602d2652ce284d0b008d5c97",
        "type": "diff",
        "value": {
          "status": [
            "pending",
            "in_progress"
          ]
        },
        "created_by": {
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
          "hasOldPasswordHash": false,
          "_id": "5e79e721768c6bf54b783146",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "nikhilmshchs@gmail.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@gofynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@fynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@uniket.store"
            }
          ],
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "countryCode": 91,
              "phone": "9890425946"
            }
          ],
          "firstName": "Nikhil",
          "lastName": "Manapure",
          "username": "nikhilmanapure_gofynd_com_29298",
          "createdAt": "2020-03-24T10:55:29.298Z",
          "updatedAt": "2020-05-12T07:46:41.816Z",
          "uid": "5567",
          "__v": 2
        },
        "createdAt": "2021-02-25T04:42:15.225Z",
        "updatedAt": "2021-02-25T04:42:15.225Z",
        "__v": 0,
        "id": "60372aa78a046d4d79c46e15"
      }
    ],
    "total": 2,
    "limit": 100,
    "page": 1,
    "pages": 1
  }
}
```









---


#### createHistory
Create history for specific application level ticket

```swift
lead.createHistory(companyId: companyId, applicationId: applicationId, ticketId: ticketId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for ticket | 
| ticketId | string | Ticket ID for which history is created | 

Create history for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Success Response:*



Success


Schema: `TicketHistory`


*Examples:*


Default
```json
{
  "value": {
    "_id": "601a9d52c26687d086c499ef",
    "ticket_id": "6012f38557751ee8fc162cf7",
    "type": "comment",
    "value": {
      "text": "d",
      "media": []
    },
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.96"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.7",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "created_by": "5d1363adf599d850df93175e",
    "createdAt": "2021-02-03T12:55:46.808Z",
    "updatedAt": "2021-02-03T12:55:46.808Z",
    "__v": 0
  }
}
```









---


#### getTicketHistory
Gets history list for specific application level ticket

```swift
lead.getTicketHistory(companyId: companyId, applicationId: applicationId, ticketId: ticketId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID of application | 
| applicationId | string | Application ID for ticket | 
| ticketId | string | Ticket ID for which history is to be fetched | 

Gets history list for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.

*Success Response:*



Success


Schema: `TicketHistoryList`


*Examples:*


Default
```json
{
  "value": {
    "docs": [
      {
        "_id": "602e5384204225eed5cadae7",
        "ticket_id": "602d2652ce284d0b008d5c97",
        "type": "comment",
        "value": {
          "text": "hello service",
          "media": []
        },
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "88.0.4324.150"
            },
            "os": {
              "name": "macOS",
              "version": "11.2.0"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": {
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://hdn-1.fynd.com/company/884/applications/000000000000000000000001/theme/pictures/free/original/default-profile_nxhzui.png",
          "hasOldPasswordHash": false,
          "_id": "5f8147abbd1a0a870f61f1a6",
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "phone": "8412805281",
              "countryCode": 91
            }
          ],
          "firstName": "Satyen",
          "lastName": "Maurya",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "satyenmaurya95@gmail.com"
            }
          ],
          "username": "satyenmaurya95_gmail_com_11118",
          "createdAt": "2020-10-10T05:33:31.119Z",
          "updatedAt": "2020-10-10T05:33:31.119Z",
          "uid": "5678",
          "__v": 0
        },
        "createdAt": "2021-02-18T11:46:12.522Z",
        "updatedAt": "2021-02-18T11:46:12.522Z",
        "__v": 0,
        "id": "602e5384204225eed5cadae7"
      },
      {
        "_id": "60372aa78a046d4d79c46e15",
        "ticket_id": "602d2652ce284d0b008d5c97",
        "type": "diff",
        "value": {
          "status": [
            "pending",
            "in_progress"
          ]
        },
        "created_by": {
          "gender": "male",
          "accountType": "user",
          "active": true,
          "profilePicUrl": "https://d2co8r51m5ca2d.cloudfront.net/inapp_banners/default_profile_img.png",
          "hasOldPasswordHash": false,
          "_id": "5e79e721768c6bf54b783146",
          "emails": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "email": "nikhilmshchs@gmail.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@gofynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@fynd.com"
            },
            {
              "active": true,
              "primary": false,
              "verified": true,
              "email": "nikhilmanapure@uniket.store"
            }
          ],
          "phoneNumbers": [
            {
              "active": true,
              "primary": true,
              "verified": true,
              "countryCode": 91,
              "phone": "9890425946"
            }
          ],
          "firstName": "Nikhil",
          "lastName": "Manapure",
          "username": "nikhilmanapure_gofynd_com_29298",
          "createdAt": "2020-03-24T10:55:29.298Z",
          "updatedAt": "2020-05-12T07:46:41.816Z",
          "uid": "5567",
          "__v": 2
        },
        "createdAt": "2021-02-25T04:42:15.225Z",
        "updatedAt": "2021-02-25T04:42:15.225Z",
        "__v": 0,
        "id": "60372aa78a046d4d79c46e15"
      }
    ],
    "total": 2,
    "limit": 100,
    "page": 1,
    "pages": 1
  }
}
```









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
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for the form | 
| slug | string | Slug of form whose response is getting submitted | 

Get specific custom form using it's slug, this is used to view the form.

*Success Response:*



Success


Schema: `CustomForm`


*Examples:*


Default
```json
{
  "value": {
    "login_required": false,
    "should_notify": false,
    "inputs": [
      {
        "required": false,
        "type": "text",
        "display": "Name",
        "placeholder": "Please enter your name",
        "key": "name"
      }
    ],
    "available_assignees": [],
    "_id": "5fd258a9088f957f34c288fc",
    "title": "trail form",
    "description": "Trail form description",
    "slug": "trail-form",
    "application_id": "000000000000000000000003",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "87.0.4280.88"
        },
        "os": {
          "name": "macOS",
          "version": "10.15.6",
          "versionName": "Catalina"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "created_by": "5d1363adf599d850df93175e",
    "createdAt": "2020-12-10T17:19:37.515Z",
    "updatedAt": "2020-12-10T17:19:43.214Z",
    "__v": 0
  }
}
```









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
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for the form | 
| slug | string | Slug of form whose response is getting submitted | 

Edit the given custom form field such as adding or deleting input, assignee, title, decription, notification and polling information.

*Success Response:*



Success


Schema: `CustomForm`


*Examples:*


Default
```json
{
  "value": {
    "login_required": false,
    "should_notify": false,
    "inputs": [
      {
        "type": "email",
        "showRegexInput": true,
        "enum": [],
        "regex": "\\S+@\\S+\\.\\S+",
        "display": "email",
        "required": true,
        "key": "email"
      },
      {
        "type": "number",
        "showRegexInput": false,
        "enum": [],
        "display": "Enter your fav number",
        "placeholder": "123",
        "key": "enter-your-fav-number"
      }
    ],
    "available_assignees": [],
    "_id": "602e900a2042255c03cadaf0",
    "title": "service-test-satyen",
    "description": "testing form from service",
    "slug": "service-test-satyen",
    "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
    "application_id": "000000000000000000000001",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.150"
        },
        "os": {
          "name": "macOS",
          "version": "11.2.0"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "created_by": "5f8147abbd1a0a870f61f1a6",
    "createdAt": "2021-02-18T16:04:26.495Z",
    "updatedAt": "2021-02-26T10:16:49.272Z",
    "__v": 0
  }
}
```









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
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for the form | 

Get list of custom form for given application

*Success Response:*



Success


Schema: `CustomFormList`


*Examples:*


Default
```json
{
  "value": {
    "docs": [
      {
        "_id": "602e900a2042255c03cadaf0",
        "login_required": false,
        "should_notify": false,
        "inputs": [
          {
            "type": "email",
            "showRegexInput": true,
            "enum": [],
            "regex": "\\S+@\\S+\\.\\S+",
            "display": "email",
            "required": true,
            "key": "email"
          },
          {
            "type": "number",
            "showRegexInput": false,
            "enum": [],
            "display": "Enter your fav number",
            "placeholder": "123",
            "key": "enter-your-fav-number"
          },
          {
            "type": "textarea",
            "showRegexInput": false,
            "enum": [],
            "display": "kjhgjhvjb",
            "required": true,
            "key": "kjhgjhvjb"
          }
        ],
        "available_assignees": [],
        "title": "service-test-satyen",
        "description": "testing form from service",
        "slug": "service-test-satyen",
        "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
        "application_id": "000000000000000000000001",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "88.0.4324.150"
            },
            "os": {
              "name": "macOS",
              "version": "11.2.0"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5f8147abbd1a0a870f61f1a6",
        "createdAt": "2021-02-18T16:04:26.495Z",
        "updatedAt": "2021-02-24T15:49:56.256Z",
        "__v": 0,
        "id": "602e900a2042255c03cadaf0"
      },
      {
        "_id": "60124e4a4d2bc363625e1bf4",
        "login_required": false,
        "should_notify": true,
        "inputs": [
          {
            "type": "text",
            "showRegexInput": false,
            "enum": [],
            "display": "asdf",
            "key": "asdf"
          },
          {
            "type": "mobile",
            "showRegexInput": false,
            "enum": [],
            "display": "mob num",
            "regex": "[0-9]{10}$",
            "key": "mob-num"
          }
        ],
        "available_assignees": [
          "5e79e721768c6bf54b783146"
        ],
        "title": "asdf444",
        "description": "adf",
        "slug": "asdf444",
        "application_id": "000000000000000000000001",
        "created_on": {
          "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36",
          "platform": "web",
          "meta": {
            "browser": {
              "name": "Chrome",
              "version": "88.0.4324.96"
            },
            "os": {
              "name": "macOS",
              "version": "10.15.7",
              "versionName": "Catalina"
            },
            "platform": {
              "type": "desktop",
              "vendor": "Apple"
            },
            "engine": {
              "name": "Blink"
            }
          }
        },
        "created_by": "5e79e721768c6bf54b783146",
        "createdAt": "2021-01-28T05:40:26.271Z",
        "updatedAt": "2021-02-18T16:02:32.086Z",
        "__v": 0,
        "poll_for_assignment": {
          "duration": 20,
          "message": "We are looking for executive to connect you",
          "success_message": "Executive found",
          "failure_message": "All our executives are busy at the moment, We have accepted your request and someone will connect with you soon!"
        },
        "id": "60124e4a4d2bc363625e1bf4"
      }
    ],
    "total": 2,
    "limit": 10,
    "page": 1,
    "pages": 1
  }
}
```









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
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for the form | 

Creates a new custom form for given application

*Success Response:*



Success


Schema: `CustomForm`


*Examples:*


Default
```json
{
  "value": {
    "login_required": false,
    "should_notify": false,
    "inputs": [
      {
        "type": "email",
        "showRegexInput": true,
        "enum": [],
        "regex": "\\S+@\\S+\\.\\S+",
        "display": "email",
        "required": true,
        "key": "email"
      },
      {
        "type": "number",
        "showRegexInput": false,
        "enum": [],
        "display": "Enter your fav number",
        "placeholder": "123",
        "key": "enter-your-fav-number"
      }
    ],
    "available_assignees": [],
    "_id": "602e900a2042255c03cadaf0",
    "title": "service-test-satyen",
    "description": "testing form from service",
    "slug": "service-test-satyen",
    "header_image": "https://hdn-1.addsale.com/x0/support-ticket/files/free/original/KZL86aN5l-service-test-satyen.jpeg",
    "application_id": "000000000000000000000001",
    "created_on": {
      "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36",
      "platform": "web",
      "meta": {
        "browser": {
          "name": "Chrome",
          "version": "88.0.4324.150"
        },
        "os": {
          "name": "macOS",
          "version": "11.2.0"
        },
        "platform": {
          "type": "desktop",
          "vendor": "Apple"
        },
        "engine": {
          "name": "Blink"
        }
      }
    },
    "created_by": "5f8147abbd1a0a870f61f1a6",
    "createdAt": "2021-02-18T16:04:26.495Z",
    "updatedAt": "2021-02-26T10:16:49.272Z",
    "__v": 0
  }
}
```









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
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for video room | 
| uniqueName | string | Unique name of video room | 

Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.

*Success Response:*



Success


Schema: `GetTokenForVideoRoomResponse`


*Examples:*


Default
```json
{
  "value": {
    "access_token": "your_token_to_the_room"
  }
}
```









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
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for video room | 
| uniqueName | string | Unique name of Video Room | 

Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.

*Success Response:*



Success


Schema: `GetParticipantsInsideVideoRoomResponse`


*Examples:*


Default
```json
{
  "value": {
    "participants": []
  }
}
```









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
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for video room | 

Open a video room.

*Success Response:*



Success


Schema: `CreateVideoRoomResponse`


*Examples:*


Default
```json
{
  "value": {
    "unique_name": "alphanumeric123"
  }
}
```









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
| companyId | string | Company ID of the application | 
| applicationId | string | Application ID for video room | 
| uniqueName | string | Unique name of Video Room | 

Close the video room and force all participants to leave.

*Success Response:*



Success


Schema: `CloseVideoRoomResponse`


*Examples:*


Default
```json
{
  "value": {
    "success": true
  }
}
```









---



---


## Feedback


#### getAttributes
Get list of attribute data

```swift
feedback.getAttributes(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | company id | 
| applicationId | string | application id | 

Provides a list of all attribute data.

*Success Response:*



ok


Schema: `Attributes`








Bad request


Schema: `ErrorResponse`









---


#### getCustomerReviews
Get list of customer reviews [admin]

```swift
feedback.getCustomerReviews(companyId: companyId, applicationId: applicationId, id: id, entityId: entityId, entityType: entityType, userId: userId, media: media, rating: rating, attributeRating: attributeRating, facets: facets, sort: sort, next: next, start: start, limit: limit, count: count) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | company id | 
| applicationId | string | application id | 
| id | string | review id | 
| entityId | string | entity id | 
| entityType | string | entity type | 
| userId | string | user id | 
| media | string | media type e.g. image | video | video_file | video_link | 
| rating | array | rating filter, 1-5 | 
| attributeRating | array | attribute rating filter with ma,e of attribute | 
| facets | boolean | facets (true|false) | 
| sort | string | sort by : default | top | recent | 
| next | string | pagination next | 
| start | string | pagination start | 
| limit | string | pagination limit | 
| count | string | pagination count | 

The endpoint provides a list of customer reviews based on entity and provided filters

*Success Response:*



Success


Schema: `GetReviewResponse`








Bad Request


Schema: `ErrorResponse`









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
| companyId | string | company id | 
| applicationId | string | application id | 
| reviewId | string | review id | 

The is used to update approve details like status and description text

*Success Response:*



ok


Schema: `UpdateResponse`








Bad request


Schema: `ErrorResponse`









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
| companyId | string | company id | 
| applicationId | string | application id | 
| reviewId | string | review id | 

The is used to get the history details like status and description text

*Success Response:*



ok


Schema: `[ActivityDump]`








Bad request


Schema: `ErrorResponse`









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
| companyId | string | company id | 
| applicationId | string | application id | 
| pageId | string | pagination page id | 
| pageSize | integer | pagination page size | 

Get all templates of application

*Success Response:*



Success


Schema: `TemplateGetResponse`








Bad Request


Schema: `ErrorResponse`









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
| companyId | string | company id | 
| applicationId | string | application id | 

Create a new template for review with following data:
- Enable media, rating and review
- Rating - active/inactive/selected rate choices, attributes, text on rate, comment for each rate, type
- Review - header, title, description, image and video meta, enable votes

*Success Response:*



Success


Schema: `InsertResponse`








Bad Request


Schema: `ErrorResponse`









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
| companyId | string | company id | 
| applicationId | string | application id | 
| id | string | template id | 

Get the template for product or l3 type by ID

*Success Response:*



Success


Schema: `Template`








Bad Request


Schema: `ErrorResponse`









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
| companyId | string | company id | 
| applicationId | string | application id | 
| id | string | template id | 

Update existing template status, active/archive

*Success Response:*



Success


Schema: `UpdateResponse`








Bad Request


Schema: `ErrorResponse`









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
| companyId | string | company id | 
| applicationId | string | application id | 
| id | string | template id | 

Update existing template status, active/archive

*Success Response:*



Success


Schema: `UpdateResponse`








Bad Request


Schema: `ErrorResponse`









---



---


## Theme


#### getThemeLibrary
Gets list of themes in theme library

```swift
theme.getThemeLibrary(companyId: companyId, applicationId: applicationId, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| pageSize | integer | Number of items to retrieve in each page. Default is 10. | 
| pageNo | integer | Page number. Default is 1. | 

Gets list of themes in theme library

*Success Response:*



Themes list


Schema: `ThemesListingResponseSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/ThemesListingResponse"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### addToThemeLibrary
Add theme to theme library

```swift
theme.addToThemeLibrary(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Add theme to theme library

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### applyTheme
Apply theme

```swift
theme.applyTheme(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Apply theme

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











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
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| themeId | string | Theme ID | 

Checks if theme is upgradable

*Success Response:*



Upgradable Theme


Schema: `UpgradableThemeSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/UpgradableTheme"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### upgradeTheme
Upgrades theme

```swift
theme.upgradeTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| themeId | string | Theme ID | 

Upgrades theme

*Success Response:*



Upgrades Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### getPublicThemes
Gets public themes

```swift
theme.getPublicThemes(companyId: companyId, applicationId: applicationId, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| pageSize | integer | Number of items to retrieve in each page. Default is 10. | 
| pageNo | integer | Page number. Default is 1. | 

Gets public themes

*Success Response:*



Themes list


Schema: `ThemesListingResponseSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/ThemesListingResponse"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### createTheme
Create new theme

```swift
theme.createTheme(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Create new theme

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### getAppliedTheme
Get applied theme

```swift
theme.getAppliedTheme(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Get applied theme

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### getFonts
Gets fonts

```swift
theme.getFonts(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Gets fonts

*Success Response:*



Fonts list


Schema: `FontsSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/FontsResponse"
}
```











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
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| themeId | string | Theme ID | 

Gets theme by id

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### updateTheme
Update theme

```swift
theme.updateTheme(companyId: companyId, applicationId: applicationId, themeId: themeId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| themeId | string | Theme ID | 

Update theme

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### deleteTheme
Delete theme

```swift
theme.deleteTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| themeId | string | Theme ID | 

Delete theme

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### getThemeForPreview
Gets theme for preview

```swift
theme.getThemeForPreview(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| themeId | string | Theme ID | 

Gets theme for preview

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### publishTheme
Publish theme

```swift
theme.publishTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| themeId | string | Theme ID | 

Publish theme

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### unpublishTheme
Unpublish theme

```swift
theme.unpublishTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| themeId | string | Theme ID | 

Unpublish theme

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### archiveTheme
Archive theme

```swift
theme.archiveTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| themeId | string | Theme ID | 

Archive theme

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---


#### unarchiveTheme
Unarchive theme

```swift
theme.unarchiveTheme(companyId: companyId, applicationId: applicationId, themeId: themeId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| themeId | string | Theme ID | 

Unarchive theme

*Success Response:*



Theme


Schema: `ThemesSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Themes"
}
```











Schema: `BlitzkriegApiError`











Schema: `BlitzkriegApiError`









---



---


## User


#### getCustomers
Gets list of customers

```swift
user.getCustomers(companyId: companyId, applicationId: applicationId, q: q, pageSize: pageSize, pageNo: pageNo) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| q | string | The search query. This can be a partial or complete name of a either a product, brand or category | 
| pageSize | integer | Number of items to retrieve in each page. Default is 10. | 
| pageNo | integer | Page number. Default is 1. | 

Used to get application customers list

*Success Response:*



Customer list


Schema: `CustomerListResponseSchema`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/CustomersListResponse"
}
```











Schema: `AuthenticationApiError`











Schema: `AuthenticationApiError`









---


#### searchUsers
Search users

```swift
user.searchUsers(companyId: companyId, applicationId: applicationId, q: q) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| q | string | The search query. This can be a partial or complete name of a either a product, brand or category | 

Search users

*Success Response:*



User list


Schema: `UserSearchResponseSchema`











Schema: `AuthenticationApiError`











Schema: `AuthenticationApiError`









---


#### getPlatformConfig
Get platform config

```swift
user.getPlatformConfig(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Used to get platform config

*Success Response:*



Platform Config


Schema: `PlatformSchema`











Schema: `AuthenticationApiError`











Schema: `AuthenticationApiError`









---


#### updatePlatformConfig
Update platform config

```swift
user.updatePlatformConfig(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Used to update platform config

*Success Response:*



Platform Config


Schema: `PlatformSchema`











Schema: `AuthenticationApiError`











Schema: `AuthenticationApiError`









---



---


## Content


#### getAnnouncementsList
Get annoucements list

```swift
content.getAnnouncementsList(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| pageNo | integer | Each response will contain **page_no** param, which should be sent back to make pagination work. | 
| pageSize | integer | Number of items to retrieve in each page. | 

Get list of announcements

*Success Response:*



Success


Schema: `GetAnnouncementListSchema`


*Examples:*


success
```json
{
  "$ref": "#/components/examples/GetAnnouncementList"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### createAnnouncement
Create an annoucement

```swift
content.createAnnouncement(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Create an announcement

*Success Response:*



Success


Schema: `CreateAnnouncementSchema`


*Examples:*


success
```json
{
  "$ref": "#/components/examples/CreateAnnouncement"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getAnnouncementById
Get annoucement by id

```swift
content.getAnnouncementById(companyId: companyId, applicationId: applicationId, announcementId: announcementId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| announcementId | string | Announcement ID | 

Get announcement by id

*Success Response:*



Success


Schema: `AdminAnnouncementSchema`


*Examples:*


success
```json
{
  "$ref": "#/components/examples/Announcement"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateAnnouncement
Update an annoucement

```swift
content.updateAnnouncement(companyId: companyId, applicationId: applicationId, announcementId: announcementId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| announcementId | string | Announcement ID | 

Update an announcement

*Success Response:*



Success


Schema: `CreateAnnouncementSchema`


*Examples:*


success
```json
{
  "$ref": "#/components/examples/UpdateAnnouncement"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateAnnouncementSchedule
Update schedule or published status of an annoucement

```swift
content.updateAnnouncementSchedule(companyId: companyId, applicationId: applicationId, announcementId: announcementId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| announcementId | string | Announcement ID | 

Update schedule or published status of an announcement

*Success Response:*



Success


Schema: `CreateAnnouncementSchema`


*Examples:*


success
```json
{
  "$ref": "#/components/examples/PatchAnnouncement"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### deleteAnnouncement
Delete annoucement by id

```swift
content.deleteAnnouncement(companyId: companyId, applicationId: applicationId, announcementId: announcementId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| announcementId | string | Announcement ID | 

Delete announcement by id

*Success Response:*



Success


Schema: `CreateAnnouncementSchema`


*Examples:*


success
```json
{
  "$ref": "#/components/examples/DeleteAnnouncement"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### createBlog
Create blog

```swift
content.createBlog(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 

Use this to create a blog.

*Success Response:*



Success


Schema: `BlogSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/BlogResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "value": {
    "message": "Oops! Something went wrong. Please try later",
    "status": 400,
    "code": "CX-1003",
    "exception": "",
    "info": "",
    "request_id": "",
    "stack_trace": "",
    "meta": {}
  }
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "value": {
    "message": "Oops! Something went wrong. Please try later",
    "status": 500,
    "code": "CX-1004",
    "exception": "",
    "info": "",
    "request_id": "",
    "stack_trace": "",
    "meta": {}
  }
}
```









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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| pageNo | integer | Each response will contain **page_no** param, which should be sent back to make pagination work. | 
| pageSize | integer | Number of items to retrieve in each page. | 

Use this to get blogs.

*Success Response:*



Success


Schema: `BlogGetResponse`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/BlogGetResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateBlog
Update blog

```swift
content.updateBlog(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| id | string | Blog Id | 

Use this to update blog.

*Success Response:*



Success


Schema: `BlogSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/BlogResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "value": {
    "message": "Oops! Something went wrong. Please try later",
    "status": 400,
    "code": "CX-1003",
    "exception": "",
    "info": "",
    "request_id": "",
    "stack_trace": "",
    "meta": {}
  }
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "value": {
    "message": "Oops! Something went wrong. Please try later",
    "status": 500,
    "code": "CX-1004",
    "exception": "",
    "info": "",
    "request_id": "",
    "stack_trace": "",
    "meta": {}
  }
}
```









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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| id | string | Blog Id | 

Use this to delete blogs.

*Success Response:*



Success


Schema: `BlogSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/BlogResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getComponentById
Get components by component Id

```swift
content.getComponentById(companyId: companyId, applicationId: applicationId, slug: slug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| slug | string | slug of page to be fetched | 

The endpoint fetches the component by component Id

*Success Response:*



A JSON object with components


Schema: `BlogSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/BlogResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getFaqCategories
Get FAQ categories list

```swift
content.getFaqCategories(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Get list of FAQ categories

*Success Response:*



Get FAQ Categories


Schema: `GetFaqCategoriesSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getFaqCategoryBySlugOrId
Get FAQ category by slug or id

```swift
content.getFaqCategoryBySlugOrId(companyId: companyId, applicationId: applicationId, idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| idOrSlug | string | Slug or Id of FAQ Category | 

Get FAQ category by slug or id

*Success Response:*



Get FAQ Categories


Schema: `GetFaqCategoryByIdOrSlugSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### createFaqCategory
Creates a FAQ category

```swift
content.createFaqCategory(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Add Faq Category

*Success Response:*



Create a FAQ Category


Schema: `CreateFaqCategorySchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateFaqCategory
Updates a FAQ category

```swift
content.updateFaqCategory(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| id | string | Faq category ID | 

Update Faq Category

*Success Response:*



Update a FAQ Category


Schema: `CreateFaqCategorySchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### deleteFaqCategory
Deletes a FAQ category

```swift
content.deleteFaqCategory(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| id | string | Faq category ID | 

Delete Faq Category

*Success Response:*



Delete a FAQ Category


Schema: `FaqSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getFaqsByCategoryIdOrSlug
Get FAQs of a Faq Category id or slug

```swift
content.getFaqsByCategoryIdOrSlug(companyId: companyId, applicationId: applicationId, idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| idOrSlug | string | Faq category ID or slug | 

Get FAQs of a Faq Category `id` or `slug`

*Success Response:*



Get FAQs by slug/id of FAQ Category


Schema: `GetFaqSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### addFaq
Creates FAQs for category whose `id` is specified

```swift
content.addFaq(companyId: companyId, applicationId: applicationId, categoryId: categoryId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| categoryId | string | Faq category ID | 

Creates FAQs for category whose `id` is specified

*Success Response:*



Create a FAQ for FAQ Category


Schema: `CreateFaqResponseSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateFaq
Updates FAQ

```swift
content.updateFaq(companyId: companyId, applicationId: applicationId, categoryId: categoryId, faqId: faqId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| categoryId | string | Faq category ID | 
| faqId | string | Faq ID | 

Updates FAQ

*Success Response:*



Update FAQ by id


Schema: `CreateFaqResponseSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### deleteFaq
Delete FAQ

```swift
content.deleteFaq(companyId: companyId, applicationId: applicationId, categoryId: categoryId, faqId: faqId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| categoryId | string | Faq category ID | 
| faqId | string | Faq ID | 

Delete FAQ

*Success Response:*



Delete FAQ by id


Schema: `CreateFaqResponseSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getFaqByIdOrSlug
Get frequently asked question

```swift
content.getFaqByIdOrSlug(companyId: companyId, applicationId: applicationId, idOrSlug: idOrSlug) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| idOrSlug | string | Slug or Id of FAQ | 

Get frequently asked questions list. These will be helpful for users to using website.

*Success Response:*



Success


Schema: `CreateFaqResponseSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getLandingPages
Get landing-pages

```swift
content.getLandingPages(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| pageNo | integer | Each response will contain **page_no** param, which should be sent back to make pagination work. | 
| pageSize | integer | Number of items to retrieve in each page. | 

Use this to get landing-pages.

*Success Response:*



Success


Schema: `LandingPageGetResponse`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/LandingPageGetResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### createLandingPage
Create landing-page

```swift
content.createLandingPage(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Use this to create landing-page.

*Success Response:*



Success


Schema: `LandingPageSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/LandingPageResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateLandingPage
Update landing-page

```swift
content.updateLandingPage(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| id | string | Landing page ID | 

Use this to update landing-page.

*Success Response:*



Success


Schema: `LandingPageSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/LandingPageResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### deleteLandingPage
Delete landing-page

```swift
content.deleteLandingPage(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| id | string | Landing page ID | 

Use this to delete landing-page.

*Success Response:*



Success


Schema: `LandingPageSchema`


*Examples:*


default
```json
{
  "value": {
    "_id": "5eaa451a21a4dd75f0fd96c5",
    "application": "5d3ebd89f540e7506b8b3548",
    "_custom_json": null,
    "slug": "pnc-landing",
    "action": {
      "page": {
        "type": "home"
      },
      "popup": {},
      "type": "page"
    },
    "platform": [
      "web"
    ],
    "created_by": {
      "id": "000000000000000000000000"
    },
    "date_meta": {
      "created_on": "2020-04-30T03:25:14.549Z",
      "modified_on": "2020-04-30T03:25:14.549Z"
    },
    "archived": true
  }
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









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
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Get legal information of application, which includes policy, Terms and Conditions, and FAQ information of application.

*Success Response:*



Success


Schema: `ApplicationLegal`


*Examples:*


Success
```json
{
  "$ref": "#/components/examples/Legal"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









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
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Save legal information of application, which includes Policy, Terms and Conditions, and FAQ information of application.

*Success Response:*



Success


Schema: `ApplicationLegal`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









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
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| devicePlatform | string | Device platform | 
| pageNo | integer | Each response will contain **page_no** param, which should be sent back to make pagination work. | 
| pageSize | integer | Number of items to retrieve in each page. | 

Use this to get navigations.

*Success Response:*



Success


Schema: `NavigationGetResponse`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/NavigationGetResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### createNavigation
Create navigation

```swift
content.createNavigation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Use this to create navigation.

*Success Response:*



Success


Schema: `NavigationSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/NavigationResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









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
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Use this to get default navigations.

*Success Response:*



Success


Schema: `DefaultNavigationResponse`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/DefaultNavigationResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getNavigationBySlug
Get navigation by slug

```swift
content.getNavigationBySlug(companyId: companyId, applicationId: applicationId, slug: slug, devicePlatform: devicePlatform) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| slug | string | Slug | 
| devicePlatform | string | Device platform | 

Use this to get navigation by slug.

*Success Response:*



Success


Schema: `NavigationSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/NavigationResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateNavigation
Update navigation

```swift
content.updateNavigation(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| id | string | Navigation ID | 

Use this to update navigation.

*Success Response:*



Success


Schema: `NavigationSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/NavigationResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### deleteNavigation
Delete navigation

```swift
content.deleteNavigation(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| id | string | Navigation ID | 

Use this to delete navigation.

*Success Response:*



Success


Schema: `NavigationSchema`


*Examples:*


default
```json
{
  "value": {
    "_id": "5ffbd9b90ac98678ae0458d7",
    "application": "000000000000000000000001",
    "_custom_json": null,
    "name": "temp",
    "slug": "temp",
    "platform": "[web]",
    "orientation": {
      "portrait": [
        "left"
      ]
    },
    "navigation": [
      {
        "display": "Home",
        "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/mystore-tab_y0dqzt.png",
        "sort_order": 1,
        "type": "",
        "action": {
          "page": {
            "url": "/",
            "type": "home"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        },
        "sub_navigation": [
          {
            "display": "Brands",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/brands/",
                "type": "brands"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ]
      },
      {
        "display": "Collections",
        "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/collections-tab_a0tg9c.png",
        "sort_order": 2,
        "type": "",
        "action": {
          "page": {
            "url": "/collections/",
            "type": "collections"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": null,
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        },
        "sub_navigation": [
          {
            "display": "Categories",
            "image": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148154/production/system/icons/categories-tab_ss8e0q.png",
            "sort_order": 1,
            "type": "",
            "action": {
              "page": {
                "url": "/categories/",
                "type": "categories"
              },
              "popup": {},
              "type": "page"
            },
            "active": true,
            "tags": null,
            "acl": [
              "all"
            ],
            "_locale_language": {
              "hi": {
                "display": ""
              },
              "ar": {
                "display": ""
              },
              "en_us": {
                "display": ""
              }
            }
          }
        ]
      },
      {
        "display": "Primary Menu",
        "image": "",
        "sort_order": 3,
        "type": "",
        "action": {
          "page": {
            "type": "home"
          },
          "popup": {},
          "type": "page"
        },
        "active": true,
        "tags": null,
        "acl": [
          "all"
        ],
        "_locale_language": {
          "hi": {
            "display": ""
          },
          "ar": {
            "display": ""
          },
          "en_us": {
            "display": ""
          }
        }
      }
    ],
    "created_by": {
      "id": "000000000000000000000000"
    },
    "date_meta": {
      "created_on": "2021-01-11T04:53:13.585Z",
      "modified_on": "2021-01-14T10:24:34.485Z"
    },
    "archived": true
  }
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 

Use this to get Page Meta.

*Success Response:*



Success


Schema: `PageMetaSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/PageMeta"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









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
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Use this to get page spec.

*Success Response:*



Success


Schema: `PageSpec`


*Examples:*


default
```json
{
  "value": {
    "specifications": [
      {
        "page_type": "home",
        "display_name": "Home",
        "params": [],
        "query": []
      },
      {
        "page_type": "collections",
        "display_name": "Collections",
        "params": [],
        "query": []
      },
      {
        "page_type": "collection",
        "display_name": "Collection",
        "params": [
          {
            "key": "slug",
            "required": true
          }
        ],
        "query": []
      }
    ]
  }
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### createPage
Create page

```swift
content.createPage(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 

Use this to create a page.

*Success Response:*



Success


Schema: `PageSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/PageResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getPages
Get pages

```swift
content.getPages(companyId: companyId, applicationId: applicationId, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| pageNo | integer | Each response will contain **page_no** param, which should be sent back to make pagination work. | 
| pageSize | integer | Number of items to retrieve in each page. | 

Use this to get pages.

*Success Response:*



Success


Schema: `PageGetResponse`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/PageGetResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### createPagePreview
Create page preview

```swift
content.createPagePreview(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 

Use this to create a page preview.

*Success Response:*



Success


Schema: `PageSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/PageResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updatePagePreview
Update page

```swift
content.updatePagePreview(companyId: companyId, applicationId: applicationId, slug: slug, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| slug | string | Page publish slug | 

Use this to update page.

*Success Response:*



Success


Schema: `PageSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/PageResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updatePage
Update page

```swift
content.updatePage(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| id | string | Page Id | 

Use this to update page.

*Success Response:*



Success


Schema: `PageSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/PageResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### deletePage
Delete page

```swift
content.deletePage(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| id | string | Page Id | 

Use this to delete page.

*Success Response:*



Success


Schema: `PageSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/PageResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| slug | string | Slug of page to be fetched | 

The endpoint fetches the component by component Id

*Success Response:*



A JSON object with page


Schema: `PageSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/PageResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getSEOConfiguration
Get seo of application

```swift
content.getSEOConfiguration(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Get seo of application

*Success Response:*



Success


Schema: `SeoComponent`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Seo"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateSEOConfiguration
Update seo of application

```swift
content.updateSEOConfiguration(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Update seo of application

*Success Response:*



Success


Schema: `SeoSchema`


*Examples:*


default
```json
{
  "value": {
    "details": {
      "title": "Zyosa Zyosa"
    },
    "robots_txt": "User-agent: * \nAllow: / \nsancisciasn xwsaixjowqnxwsiwjs",
    "sitemap_enabled": false,
    "_id": "6009819ee463ad40de397eb2",
    "app": "000000000000000000000001",
    "created_at": "2021-01-21T13:29:02.543Z",
    "updated_at": "2021-02-05T06:36:16.048Z",
    "__v": 11,
    "custom_meta_tags": [
      {
        "name": "test 0000",
        "content": "<meta name=\"test\" content=\"0000 cn dcje dcj rejre cjrenurenc \">",
        "_id": "6017c301bde3c21dbb13b284"
      },
      {
        "name": "cwdcdc",
        "content": "<meta content=\"wdcewdewc\">",
        "_id": "6017c675bde3c22cfb13b290"
      }
    ]
  }
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









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
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| devicePlatform | string | Device platform | 
| pageNo | integer | Each response will contain **page_no** param, which should be sent back to make pagination work. | 
| pageSize | integer | Number of items to retrieve in each page. | 

Use this to get slideshows.

*Success Response:*



Success


Schema: `SlideshowGetResponse`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SlideshowGetResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### createSlideshow
Create slideshow

```swift
content.createSlideshow(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Use this to create slideshow.

*Success Response:*



Success


Schema: `SlideshowSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SlideshowResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









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
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| slug | string | Slug | 
| devicePlatform | string | Device platform | 

Use this to get slideshow by slug.

*Success Response:*



Success


Schema: `SlideshowSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SlideshowResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateSlideshow
Update slideshow

```swift
content.updateSlideshow(companyId: companyId, applicationId: applicationId, id: id, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| id | string | Slideshow ID | 

Use this to update slideshow.

*Success Response:*



Success


Schema: `SlideshowSchema`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SlideshowResponse"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### deleteSlideshow
Delete slideshow

```swift
content.deleteSlideshow(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| id | string | Slideshow ID | 

Use this to delete slideshow.

*Success Response:*



Success


Schema: `SlideshowSchema`


*Examples:*


default
```json
{
  "value": {
    "date_meta": {
      "created_on": "2021-03-14T05:27:12.319Z",
      "modified_on": "2021-03-14T05:27:12.319Z"
    },
    "archived": true,
    "_id": "604d9eb975e9d136bb1b8b83",
    "configuration": {
      "start_on_launch": false,
      "duration": 50,
      "sleep_time": 100,
      "slide_direction": "horizontal"
    },
    "slug": "ss-sfsd-updated",
    "platform": "ios",
    "media": [
      {
        "auto_decide_duration": false,
        "type": "image",
        "url": "https://res.cloudinary.com/dwzm9bysq/image/upload/v1567148153/production/system/icons/brands-tab_sfinpk.png",
        "bg_color": "#ffffff",
        "duration": 10,
        "action": {
          "type": ""
        }
      },
      {
        "auto_decide_duration": true,
        "type": "youtube",
        "url": "https://www.youtube.com/embed/9vJRopau0g0",
        "bg_color": "#ffffff",
        "duration": 909,
        "action": {
          "type": ""
        }
      }
    ],
    "application": "5cd3db5e9d692cfe5302a7bb",
    "active": true
  }
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









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
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Get contact details for customer support. Including emails and phone numbers

*Success Response:*



Success


Schema: `Support`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Support"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateSupportInformation
Update support data of application

```swift
content.updateSupportInformation(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Update support data of application

*Success Response:*



Success


Schema: `Support`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Support"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### createInjectableTag
Creates Tag

```swift
content.createInjectableTag(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Create tags

*Success Response:*



Tags Array


Schema: `TagsSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### updateInjectableTag
Updates a Tag

```swift
content.updateInjectableTag(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Update tag

*Success Response:*



Tags Array


Schema: `TagsSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### deleteAllInjectableTags
Delete tags for application

```swift
content.deleteAllInjectableTags(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Delete tags for application

*Success Response:*



Tags Array


Schema: `TagsSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### getInjectableTags
Get tags for application

```swift
content.getInjectableTags(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Get tags for application

*Success Response:*



Tags Array


Schema: `TagsSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### addInjectableTag
Adds a Tag

```swift
content.addInjectableTag(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Add tag

*Success Response:*



Tags Array


Schema: `TagsSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### removeInjectableTag
Removes a Tag

```swift
content.removeInjectableTag(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 

Remove a particular tag

*Success Response:*



Tags Array


Schema: `TagsSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---


#### editInjectableTag
Edits a Tag by Id

```swift
content.editInjectableTag(companyId: companyId, applicationId: applicationId, tagId: tagId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company ID | 
| applicationId | string | Application ID | 
| tagId | string | Tag ID | 

Edits a particular tag

*Success Response:*



Tags Array


Schema: `TagsSchema`








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/4XXAPIError"
}
```








Failed


Schema: `APIError`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/5XXAPIError"
}
```









---



---


## Billing


#### getInvoices
Get invoices

```swift
billing.getInvoices(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Customer unique id. In case of company it will be company id. | 

Get invoices.

*Success Response:*



Success


Schema: `Invoices`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Invoices"
}
```









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
| companyId | string | Customer unique id. In case of company it will be company id. | 
| invoiceId | string | Invoice id | 

Get invoice by id.

*Success Response:*



Success


Schema: `Invoice`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Invoice"
}
```









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
| companyId | string | Customer unique id. In case of company it will be company id. | 

Get subscription customer detail.

*Success Response:*



Success


Schema: `SubscriptionCustomer`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SubscriptionCustomerRes"
}
```








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
| companyId | string | Customer unique id. In case of company it will be company id. | 

Upsert subscription customer detail.

*Success Response:*



Success


Schema: `SubscriptionCustomer`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SubscriptionCustomerRes"
}
```








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
| companyId | string | Customer unique id. In case of company it will be company id. | 

If subscription is active then it will return is_enabled true and return subscription object. If subscription is not active then is_enabled false and message.


*Success Response:*



Success


Schema: `SubscriptionStatus`


*Examples:*


Active subscription
```json
{
  "$ref": "#/components/examples/SubscriptionActiveRes"
}
```

Inactive subscription
```json
{
  "$ref": "#/components/examples/SubscriptionInavtiveRes"
}
```








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
| companyId | string | Customer unique id. In case of company it will be company id. | 

Get subscription subscription limits.

*Success Response:*



Success


Schema: `SubscriptionLimit`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/CurrentLimitRes"
}
```








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
| companyId | string | Customer unique id. In case of company it will be company id. | 

It will activate subscription plan for customer

*Success Response:*



Success


Schema: `SubscriptionActivateRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SubscriptionActivateRes"
}
```








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
| companyId | string | Customer unique id. In case of company it will be company id. | 

It will cancel current active subscription.

*Success Response:*



Success


Schema: `CancelSubscriptionRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/CancelSubscriptionRes"
}
```








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
communication.getCampaigns(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get campaigns

*Success Response:*



Success


Schema: `Campaigns`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Campaigns"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 

Create campaign

*Success Response:*



Success


Schema: `Campaign`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Campaign"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Campaign id | 

Get campaign by id

*Success Response:*



Success


Schema: `Campaign`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Campaign"
}
```








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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Campaign id | 

Update campaign by id

*Success Response:*



Success


Schema: `Campaign`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Campaign"
}
```








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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Campaign id | 

Get stats of campaign by id

*Success Response:*



Success


Schema: `GetStats`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/GetStats"
}
```








Bad request


Schema: `BadRequest`









---


#### getAudiences
Get audiences

```swift
communication.getAudiences(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get audiences

*Success Response:*



Success


Schema: `Audiences`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Audiences"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 

Create audience

*Success Response:*



Success


Schema: `Audience`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Audience"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get bigquery headers

*Success Response:*



Success


Schema: `BigqueryHeadersRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/BigqueryHeadersRes"
}
```








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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Audience id | 

Get audience by id

*Success Response:*



Success


Schema: `Audience`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Audience"
}
```








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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Audience id | 

Update audience by id

*Success Response:*



Success


Schema: `Audience`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Audience"
}
```








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
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get n sample records from csv

*Success Response:*



Success


Schema: `GetNRecordsCsvRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/GetNRecordsCsvRes"
}
```








Bad request


Schema: `BadRequest`









---


#### getEmailProviders
Get email providers

```swift
communication.getEmailProviders(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get email providers

*Success Response:*



Success


Schema: `EmailProviders`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EmailProviders"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 

Create email provider

*Success Response:*



Success


Schema: `EmailProvider`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EmailProvider"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Email provider id | 

Get email provider by id

*Success Response:*



Success


Schema: `EmailProvider`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EmailProvider"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Email provider id | 

Update email provider by id

*Success Response:*



Success


Schema: `EmailProvider`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EmailProvider"
}
```









---


#### getEmailTemplates
Get email templates

```swift
communication.getEmailTemplates(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get email templates

*Success Response:*



Success


Schema: `EmailTemplates`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EmailTemplates"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 

Create email template

*Success Response:*



Success


Schema: `EmailTemplateRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EmailTemplateRes"
}
```









---


#### getSystemEmailTemplates
Get system email templates

```swift
communication.getSystemEmailTemplates(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get system email templates

*Success Response:*



Success


Schema: `SystemEmailTemplates`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SystemEmailTemplates"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Email template id | 

Get email template by id

*Success Response:*



Success


Schema: `EmailTemplate`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EmailTemplate"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Email template id | 

Update email template by id

*Success Response:*



Success


Schema: `EmailTemplateRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EmailTemplateRes"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Email template id | 

Delete email template by id

*Success Response:*



Success


Schema: `EmailTemplateDeleteSuccessRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EmailTemplateDeleteSuccessRes"
}
```








Failure


Schema: `EmailTemplateDeleteFailureRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EmailTemplateDeleteFailureRes"
}
```









---


#### getEventSubscriptions
Get event subscriptions

```swift
communication.getEventSubscriptions(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get event subscriptions

*Success Response:*



Success


Schema: `EventSubscriptions`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/EventSubscriptions"
}
```









---


#### getJobs
Get jobs

```swift
communication.getJobs(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get jobs

*Success Response:*



Success


Schema: `Jobs`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Jobs"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 

Trigger campaign job

*Success Response:*



Success


Schema: `TriggerJobResponse`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/TriggerJobResponse"
}
```









---


#### getJobLogs
Get job logs

```swift
communication.getJobLogs(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get job logs

*Success Response:*



Success


Schema: `JobLogs`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/JobLogs"
}
```









---


#### getCommunicationLogs
Get communication logs

```swift
communication.getCommunicationLogs(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get communication logs

*Success Response:*



Success


Schema: `Logs`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/Logs"
}
```









---


#### getSystemNotifications
Get system notifications

```swift
communication.getSystemNotifications(companyId: companyId, query: query, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| query | object |  | 
| pageNo | integer |  | 
| pageSize | integer |  | 

Get system notifications

*Success Response:*



Success


Schema: `SystemNotifications`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SystemNotifications"
}
```









---


#### getSmsProviders
Get sms providers

```swift
communication.getSmsProviders(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get sms providers

*Success Response:*



Success


Schema: `SmsProviders`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SmsProviders"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 

Create sms provider

*Success Response:*



Success


Schema: `SmsProvider`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SmsProvider"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Sms provider id | 

Get sms provider by id

*Success Response:*



Success


Schema: `SmsProvider`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SmsProvider"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Sms provider id | 

Update sms provider by id

*Success Response:*



Success


Schema: `SmsProvider`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SmsProvider"
}
```









---


#### getSmsTemplates
Get sms templates

```swift
communication.getSmsTemplates(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get sms templates

*Success Response:*



Success


Schema: `SmsTemplates`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SmsTemplates"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 

Create sms template

*Success Response:*



Success


Schema: `SmsTemplateRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SmsTemplateRes"
}
```









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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Sms template id | 

Get sms template by id

*Success Response:*



Success


Schema: `SmsTemplate`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SmsTemplate"
}
```








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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Sms template id | 

Update sms template by id

*Success Response:*



Success


Schema: `SmsTemplateRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SmsTemplateRes"
}
```








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
| companyId | string | Company id | 
| applicationId | string | Application id | 
| id | string | Sms template id | 

Delete sms template by id

*Success Response:*



Success


Schema: `SmsTemplateDeleteSuccessRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SmsTemplateDeleteSuccessRes"
}
```








Failure


Schema: `SmsTemplateDeleteFailureRes`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SmsTemplateDeleteFailureRes"
}
```








Not found


Schema: `NotFound`









---


#### getSystemSystemTemplates
Get system sms templates

```swift
communication.getSystemSystemTemplates(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company id | 
| applicationId | string | Application id | 

Get system sms templates

*Success Response:*



Success


Schema: `SystemSmsTemplates`


*Examples:*


default
```json
{
  "$ref": "#/components/examples/SystemSmsTemplates"
}
```









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
| companyId | integer | Company Id | 
| applicationId | string | Application id | 

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
| companyId | integer | Company Id | 
| applicationId | string | Application id | 

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
| companyId | integer | Company Id | 
| applicationId | string | Application id | 

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
| companyId | integer | Company Id | 
| applicationId | string | Application id | 
| refresh | boolean |  | 
| requestType | string |  | 

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
| companyId | integer | Company Id | 
| uniqueExternalId | string | Fetch payouts using unique external id | 

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
| companyId | integer | Company Id | 

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
| companyId | integer | Company Id | 
| uniqueTransferNo | string | Unique transfer id | 

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
| companyId | integer | Company Id | 
| uniqueTransferNo | string | Unique transfer id | 

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
| companyId | integer | Company Id | 
| uniqueTransferNo | string | Unique transfer id | 

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
| companyId | integer | Company Id | 

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
| companyId | integer | Company Id | 
| uniqueExternalId | string |  | 
| paymentMethodId | string |  | 

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
| companyId | integer | Company Id | 

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
| companyId | integer | Company Id | 

Uses this api to Save Subscription Setup Intent

*Success Response:*



Save Subscription Setup Intent Response.


Schema: `SaveSubscriptionSetupIntentResponse`








Bad Request Error


Schema: `HttpErrorCodeAndResponse`








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
| companyId | string | Company Id | 

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
| companyId | string | Company Id | 
| bagId | string | Bag Id | 

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
| companyId | string | Company Id | 

Update Store Process-Shipment

*Success Response:*



Success


Schema: `UpdateProcessShipmenstRequestResponse`








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
| companyId | string | Company Id | 
| pageNo | string | Current page number | 
| pageSize | string | Page limit | 
| fromDate | string | From Date | 
| toDate | string | To Date | 
| q | string | Keyword for Search | 
| stage | string | Specefic Order Stage | 
| salesChannels | string | Selected Sales Channel | 
| orderId | string | Order Id | 
| stores | string | Selected Stores | 
| status | string | Status of order | 
| shortenUrls | boolean | Shorten URL option | 
| filterType | string | Filters | 

Get Orders

*Success Response:*



Success


Schema: `OrderListing`








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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| shipmentId | string | Shipment Id | 

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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| orderId | string | Order Id | 

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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 

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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| orderId | string | Order Id | 

Order Reprocess

*Success Response:*



Success


Schema: `UpdateOrderReprocessResponse`








API Error


Schema: `ApefaceApiError`








Internal Server Error


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
| companyId | string | Company Id | 

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
| companyId | string | Company Id | 

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
| companyId | string | Company Id | 
| caller | string | Caller contact number | 
| receiver | string | Receiver contact number | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| id | string | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| id | string | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| id | string | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. | 

Get the details of a words by its `id`. If successful, returns a Collection resource in the response body specified in `GetSearchWordsDetailResponseSchema`

*Success Response:*



The Collection object. See example below or refer `GetSearchWordsDetailResponseSchema` for details


Schema: `GetSearchWordsDetailResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 

Create a Custom Search Keywords. See `CreateSearchKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateSearchKeywordSchema`

*Success Response:*



Get keyword object with id that is added. See example below or refer `GetSearchWordsDataSchema` for details


Schema: `GetSearchWordsData`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 

Custom Search Keyword allows you to map conditions with keywords to give you the ultimate results

*Success Response:*



List of custom search keywords. See example below or refer `GetSearchWordsResponseSchema` for details


Schema: `GetSearchWordsResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| id | string | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| id | string | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| id | string | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. | 

Get the details of a words by its `id`. If successful, returns a keywords resource in the response body specified in `GetAutocompleteWordsResponseSchema`

*Success Response:*



The mapping object. See example below or refer `GetAutocompleteWordsResponseSchema` for details


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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 

Create a Custom Autocomplete Keywords. See `CreateAutocompleteKeywordSchema` for the list of attributes needed to create a mapping and /collections/query-options for the available options to create a rule. On successful request, returns a paginated list of collections specified in `CreateAutocompleteKeywordSchema`

*Success Response:*



List of all the collections including the one you added. See example below or refer `CreateAutocompleteWordsResponseSchema` for details


Schema: `CreateAutocompleteWordsResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 

Custom Autocomplete Keyword allows you to map conditions with keywords to give you the ultimate results

*Success Response:*



List of custom autocomplete keywords. See example below or refer `GetAutocompleteWordsResponseSchema` for details


Schema: `GetAutocompleteWordsResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 

Create Product Bundle. See `ProductBundleRequest` for the request body parameter need to create a product bundle. On successful request, returns in `ProductBundleRequest` with id

*Success Response:*



Get bundle with id that is added. See example below or refer `GetProductBundleCreateResponse` for details


Schema: `GetProductBundleCreateResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| q | string | A search string that is searched with product bundle name. | 

Get all product bundles for a particular company

*Success Response:*



List of bundle configured for a company. See example below or refer `GetProductBundleListingResponse` for details


Schema: `GetProductBundleListingResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| id | string | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to delete. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| id | string | A `id` is a unique identifier for a particular detail. Pass the `id` of the keywords which you want to retrieve. | 

Get a particular Bundle details by its `id`. If successful, returns a Product bundle resource in the response body specified in `GetProductBundleResponse`

*Success Response:*



The Collection object. See example below or refer `GetProductBundleResponse` for details


Schema: `GetProductBundleResponse`








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
| companyId | string | Id of the company inside which the size guide is to be created. | 

This API allows to create a size guide associated to a brand.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`








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
| companyId | string | Id of the company for which the size guides are to be fetched. | 
| active | boolean | filter size guide on basis of active, in-active | 
| q | string | Query that is to be searched. | 
| tag | string | to filter size guide on basis of tag. | 
| pageNo | integer | The page number to navigate through the given set of results | 
| pageSize | integer | Number of items to retrieve in each page. Default is 10. | 

This API allows to view all the size guides associated to the seller.

*Success Response:*



Size guide object. See example below or refer `ListSizeGuide` for details


Schema: `ListSizeGuide`








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
| companyId | string | Id of the company. | 
| id | string | Mongo id of the size guide to be edited | 

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
| companyId | string | Id of the company associated to size guide. | 
| id | string | Id of the size guide to be viewed. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 

configuration meta  details for catalog.

*Success Response:*



configuration details for catalog. See example below or refer `GetCatalogConfigurationMetaDataSchema` for details


Schema: `GetCatalogConfigurationMetaData`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 

Add configuration for products & listing.

*Success Response:*



success flag will tell whether the operation was successful.


Schema: `GetAppCatalogConfiguration`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 

configured details for catalog.

*Success Response:*



Get application level configured catalog details. See example below or refer `GetAppCatalogConfigurationSchema` for details


Schema: `GetAppCatalogConfiguration`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| type | string | type can be brands, categories etc. | 

Add configuration for categories & brands.

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| type | string | type can be brands, categories etc. | 

configured details for catalog.

*Success Response:*



Get application level configured catalog details. See example below or refer `GetAppCatalogEntityConfigurationSchema` for details


Schema: `GetAppCatalogEntityConfiguration`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 

Get query filters to configure a collection

*Success Response:*



The attached items of an collection. See example below or refer `GetCollectionQueryOptionResponse` for details


Schema: `GetCollectionQueryOptionResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 

Create a collection. See `CreateCollectionRequestSchema` for the list of attributes needed to create a collection and collections/query-options for the available options to create a collection. On successful request, returns a paginated list of collections specified in `CollectionCreateResponse`

*Success Response:*



List of all the collections including the one you added. See example below or refer `CollectionCreateResponse` for details


Schema: `CollectionCreateResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 

A Collection allows you to organize your products into hierarchical groups. For example, a dress might be in the category _Clothing_, the individual product might also be in the collection _Summer_. On successful request, returns all the collections as specified in `CollectionListingSchema`

*Success Response:*



List of collections. See example below or refer `GetCollectionListingResponse` for details


Schema: `GetCollectionListingResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| slug | string | A `slug` is a human readable, URL friendly unique identifier of an object. Pass the `slug` of the collection which you want to retrieve. | 

Get the details of a collection by its `slug`. If successful, returns a Collection resource in the response body specified in `CollectionDetailResponse`

*Success Response:*



The Collection object. See example below or refer `CollectionDetailResponse` for details


Schema: `CollectionDetailResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| id | string | A `id` is a unique identifier of a collection. | 

Delete a collection by it's id. Returns an object that tells whether the collection was deleted successfully

*Success Response:*



Status object. Tells whether the operation was successful. See example below or refer `DeleteResponse`


Schema: `DeleteResponse`








Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`









---


#### updateCollection
Update a collection

```swift
catalog.updateCollection(companyId: companyId, applicationId: applicationId, id: id) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| id | string | A `id` is a unique identifier of a collection. | 

Update a collection by it's id. On successful request, returns the updated collection

*Success Response:*



The Collection object. See example below or refer `CollectionCreateResponse` for details.


Schema: `CollectionCreateResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| id | string | A `id` is a unique identifier of a collection. | 

Adds items to a collection specified by its `id`. See `CollectionItemRequest` for the list of attributes needed to add items to an collection.

*Success Response:*



Status object. Tells whether the operation was successful.


Schema: `UpdatedResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| id | string | A `id` is a unique identifier of a collection. | 
| sortOn | string | Each response will contain sort_on param, which should be sent back to make pagination work. | 
| pageId | string | Each response will contain next_page_id param, which should be sent back to make pagination work. | 
| pageSize | integer | Number of items to retrieve in each page. Default is 12. | 

Get items from a collection specified by its `id`.

*Success Response:*



The attached items of an collection. See example below or refer `GetCollectionItemsResponseSchema` for details


Schema: `GetCollectionItemsResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| applicationId | string | A `application_id` is a unique identifier for a particular sale channel. | 
| brand | string | Brand slug | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| sellerAppId | string | Id of the seller application which is serving the invetory/catalog of the company | 

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
| companyId | integer | The company id for which the detail needs to be retrieved. | 
| marketplace | string | The marketplace for which the detail needs to be retrieved. | 

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
| companyId | integer |  | 

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
| companyId | integer | The company id for which the detail needs to be retrieved. | 

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
| companyId | integer | The company id for which the detail needs to be retrieved. | 
| isActive | boolean | The is_active status for the optin id. | 
| q | boolean | The search value to filter the list. | 
| pageNo | integer | The number of page for the company id. | 
| pageSize | integer | Number of records that can be seen on the page for the company id. | 
| marketplace | string | The marketplace platform associated with the company id. | 

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
| companyId | integer | The company id for which the detail needs to be retrieved. | 

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
| companyId | integer | The company id for which the detail needs to be retrieved. | 
| q | string | The search related the store for the company id. | 
| pageNo | integer | The number of page for the company id. | 
| pageSize | integer | Number of records that can be seen on the page for the company id. | 

Get the details of the store associated with the company ID passed.

*Success Response:*



See example below or refer `OptinStoreDetailsSchema` for details


Schema: `OptinStoreDetails`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| departments | string | A `department` is name of a departments whose category needs to be listed. Can specify multiple departments. | 
| itemType | string | An `item_type` is the type of item, it can be `set`, `standard`, `digital`, etc. | 

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
catalog.listDepartmentsData(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 

Allows you to list all departments, also can search using name and filter active and incative departments, and item type

*Success Response:*



List of custom search keywords. See example below or refer `DepartmentsResponse` for details


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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| uid | string | A `uid` is a unique identifier of a department. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| departments | string | A `departments` is the name of a particular department. | 

Allows you to list all product templates, also can filter by department

*Success Response:*



List of custom search keywords. See example below or refer `TemplatesResponse` for details


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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| slug | string | A `slug` is a unique identifier for a particular template. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| slug | string | A `slug` is a unique identifier for a particular template. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| itemType | string | An `item_type` defines the type of item. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| itemType | string | An `item_type` defines the type of item. The default value is standard. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 

Can vies details including trigger data, task id , etc.

*Success Response:*



List of custom search keywords. See example below or refer `TemplatesResponse` for details


Schema: `TemplatesResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| filter | string | A `filter` is the unique identifier of the type of value required. | 

The filter type query parameter defines what type of data to return. The type of query returns the valid values for the same

*Success Response:*



List of Templates, Brands or Types. See example below or refer `ProductConfligurationDownloads` for details


Schema: `ProductConfligurationDownloads`








Bad request. See the error object in the response body for specific reason


Schema: `PTErrorResponse`









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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 

This API lets user create product categories

*Success Response:*



Category Meta. See example below or refer `CategoryCreateResponse` for details


Schema: `CategoryCreateResponse`








Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`









---


#### listCategories
Get product categories list

```swift
catalog.listCategories(companyId: companyId, level: level, q: q) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| level | string | Get category for multiple levels | 
| q | string | Get multiple categories filtered by search string | 

This API gets meta associated to product categories.

*Success Response:*



Category Meta. See example below or refer `CategoryResponse` for details


Schema: `CategoryResponse`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| uid | string | Category unique id | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 
| uid | string | Category unique id | 

This API gets meta associated to product categories.

*Success Response:*



Category Meta. See example below or refer `CategorySchema` for details


Schema: `Category`








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
| companyId | string | Id of the company associated to product that is to be viewed. | 

This API allows to create product.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`








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
| companyId | number | Get list of products filtered by company Id | 
| brandIds | number | Get multiple products filtered by brand Ids | 
| categoryIds | number | Get multiple products filtered by category Ids | 
| search | string | Get multiple products filtered by search string | 
| pageNo | integer | The page number to navigate through the given set of results | 
| pageSize | integer | Number of items to retrieve in each page. Default is 10. | 

This API gets meta associated to products.

*Success Response:*



Product Meta. See example below for details


Schema: `ProductListingResponse`








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
| companyId | string | Id of the company associated to product that is to be viewed. | 
| itemId | integer | Id of the product to be updated. | 

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
| companyId | string | Company Id of the company associated to product that is to be deleted. | 
| itemId | integer | Id of the product to be updated. | 

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
| itemCode | string | Item code of the product. | 
| companyId | integer | Company Id of the product. | 
| itemId | integer | Item Id of the product. | 
| brandUid | integer | Brand Id of the product. | 
| uid | integer | Id of the product. | 

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
| companyId | number | Validates data against given company | 

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
| itemCode | string | Item code of the product size. | 
| companyId | integer | Company Id of the product size. | 
| itemId | integer | Item Id of the product size. | 
| brandUid | integer | Brand Id of the product size. | 
| uid | integer | Id of the product size. | 

This API helps to get data associated to a particular product size.

*Success Response:*



Product object. See example below for details


Schema: `ProductListingResponse`








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
| companyId | integer | Company Id in which assets to be uploaded. | 

This API helps to create a bulk asset upload job.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`








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
| companyId | integer | Company Id of of which Product Bulk Upload History to be obtained. | 
| pageNo | integer | The page number to navigate through the given set of results | 
| pageSize | integer | Number of items to retrieve in each page. Default is 12. | 

This API helps to get bulk product upload jobs data.

*Success Response:*



List of bulk product upload jobs. See `BulkRequestGetSchema` for details


Schema: `ProductBulkRequestList`








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
| companyId | string | Company Id of the company associated to size that is to be deleted. | 
| batchId | integer | Batch Id of the bulk product job to be deleted. | 

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
| companyId | integer | Company Id in which assets to be uploaded. | 
| batchId | string | Batch Id in which assets to be uploaded. | 

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
| companyId | integer | Company Id of the product size. | 

This API helps to get tags data associated to a particular copmpany.

*Success Response:*



Tag List. See example below for details


Schema: `ProductTagsViewResponse`








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
| companyId | integer | Company Id in which assets to be uploaded. | 

This API helps to create a bulk asset upload job.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`








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
| companyId | integer | Company Id of the product size. | 
| pageNo | integer | The page number to navigate through the given set of results | 
| pageSize | integer | Number of items to retrieve in each page. Default is 12. | 

This API helps to get bulk asset jobs data associated to a particular company.

*Success Response:*



List of bulk asset jobs List. See `BulkUtil.modify_batch_response` for details


Schema: `BulkAssetResponse`








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
| companyId | string | Company Id of the company associated to size that is to be deleted. | 
| itemId | integer | Item Id of the product associated with size to be deleted. | 
| size | integer | size to be deleted. | 

This API allows to delete size associated with product.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`








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
| companyId | string | Id of the company associated to product that is to be viewed. | 
| itemId | number | Item of the company associated to product that is to be viewed. | 
| size | string | Size in which inventory is to be added. | 

This API allows add Inventory for particular size and store.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`








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
| companyId | string | Id of the company associated to product that is to be viewed. | 
| itemId | string | Item code of the product of which size is to be get. | 
| size | string | Size of which inventory is to get. | 
| pageNo | integer | The page number to navigate through the given set of results | 
| pageSize | integer | Number of items to retrieve in each page. Default is 12. | 

This API allows get Inventory data for particular company grouped by size and store.

*Success Response:*



returns a list of all inventory grouped by size and store


Schema: `InventoryRequest1`








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
| companyId | string | Company Id of the company associated with Inventory that is to be deleted. | 
| itemId | integer | Id of the product associated with Inventory to be deleted. | 
| locationId | number | Location ID of store of which inventory is to be deleted. | 

This API allows to delete inventory of a particular product for particular company.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`








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
| companyId | integer | Company Id in which Inventory to be uploaded. | 

This API helps to create a bulk Inventory upload job.

*Success Response:*



Returns a success response


Schema: `CommonResponse`








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
| companyId | integer | Company Id of of which Inventory Bulk Upload History to be obtained. | 
| pageNo | integer | The page number to navigate through the given set of results | 
| pageSize | integer | Number of items to retrieve in each page. Default is 12. | 

This API helps to get bulk Inventory upload jobs data.

*Success Response:*



List of bulk Inventory upload jobs. See `BulkRequestGetSchema` for details


Schema: `BulkRequestGet`








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
| companyId | string | Company Id of the company of which bulk Inventory job is to be deleted. | 

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
| companyId | integer | Company Id in which Inventory is to be uploaded. | 

This API helps to create products in bulk push to kafka for approval/creation.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`








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
| companyId | integer | Company Id in which assets to be uploaded. | 

This API helps to create a Inventory export job.

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
| companyId | integer | Company Id in which assets to be uploaded. | 

This API helps to get Inventory export history.

*Success Response:*



Returns a list of inventory export jobs


Schema: `InventoryExportJob`








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
| companyId | string | Id of the company associated to product that is to be viewed. | 
| filterType | string | filter type from any one of ['brand', 'store', 'type'] | 

This API allows get List of different filters like brand, store, and type for inventory export.

*Success Response:*



returns filters configuration for inventory export


Schema: `InventoryConfig`








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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 

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
| companyId | string | A `company_id` is a unique identifier for a particular seller account. | 

This API allows to view the company metrics, i.e. the status of its brand and stores. Also its allows to view the number of products, company documents & store documents which are verified and unverified.

*Success Response:*



Metrics response object. See example below or refer `MetricsSerializer` for details


Schema: `MetricsSerializer`








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
| companyId | string | Id of the company associated to brand that is to be viewed. | 
| brandId | string | Id of the brand to be viewed. | 

This API allows to edit meta of a brand.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`








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
| companyId | string | Id of the company associated to brand that is to be viewed. | 
| brandId | string | Id of the brand to be viewed. | 

This API helps to get data associated to a particular brand.

*Success Response:*



Brand object. See example below or refer `GetBrandResponseSerializer` for details


Schema: `GetBrandResponseSerializer`








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
| companyId | string | Id of the company. | 

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
companyprofile.getBrands(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Id of the company. | 

This API helps to get view brands associated to a particular company.

*Success Response:*



Brand object. See example below or refer `CompanyBrandListSerializer` for details


Schema: `CompanyBrandListSerializer`








Bad request. See the error object in the response body for specific reason


Schema: `ErrorResponse`









---


#### createBrand
Create a company brand mapping.

```swift
companyprofile.createBrand(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Id of the company inside which the brand is to be mapped. | 

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
| companyId | string | Id of the company whose locations are to fetched | 
| storeType | string | Helps to sort the location list on the basis of location type. | 
| q | string | Query that is to be searched. | 
| stage | string | to filter companies on basis of verified or unverified companies. | 
| pageNo | integer | The page number to navigate through the given set of results | 
| pageSize | integer | Number of items to retrieve in each page. Default is 10. | 

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
| companyId | string | Id of the company inside which the location is to be created. | 

This API allows to create a location associated to a company.

*Success Response:*



Returns a success response


Schema: `SuccessResponse`








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
| companyId | string | Id of the company inside which the location is to be created. | 
| locationId | string | Id of the location which you want to edit. | 

This API allows to edit a location associated to a company.

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
| companyId | string | Id of the company inside which the location lies. | 
| locationId | string | Id of the location which you want to view. | 

This API helps to get data associated to a specific location.

*Success Response:*



Brand object. See example below or refer `GetLocationSerializer` for details


Schema: `GetLocationSerializer`








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
| namespace | string | bucket name | 
| companyId | integer | company_id | 

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
| namespace | string | bucket name | 
| companyId | integer | company_id | 

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
| namespace | string | bucket name | 
| companyId | integer | company_id | 
| applicationId | string | application id | 

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
| namespace | string | bucket name | 
| companyId | integer | company_id | 
| applicationId | string | application id | 

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
| companyId | integer | company_id | 

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
| sync | boolean | sync | 
| companyId | integer | company_id | 

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
| sync | boolean | sync | 
| companyId | integer | company_id | 
| applicationId | integer | application_id | 

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
filestorage.browse(namespace: namespace, companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| namespace | string | bucket name | 
| companyId | integer | company_id | 

Browse Files

*Success Response:*



Success


Schema: `BrowseResponse`








Failed


Schema: `FailedResponse`









---


#### appBrowse
Browse Files

```swift
filestorage.appBrowse(namespace: namespace, companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| namespace | string | bucket name | 
| companyId | integer | company_id | 
| applicationId | integer | application_id | 

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
| companyId | integer | company_id | 
| url | string | url | 

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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 

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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| pageNo | integer | Current page number | 
| pageSize | integer | Current page size | 
| createdBy | string | Short link creator | 
| active | string | Short link active status | 
| q | string | Search text for original and short url | 

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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| hash | string | Hash of short url | 

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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| id | string | Short link document identifier | 

Update short link by id

*Success Response:*



Success


Schema: `ShortLinkRes`








Error


Schema: `ErrorRes`









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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 
| platformType | string | Current platform name | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 
| platformType | string | Current platform name | 

Update build config for next build

*Success Response:*



Success


Schema: `MobileAppConfiguration`









---


#### getPreviousVersions
Get previous versions

```swift
configuration.getPreviousVersions(companyId: companyId, applicationId: applicationId, platformType: platformType) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Current company id | 
| applicationId | string | Current application id | 
| platformType | string | Current platform name | 

Get previous versions

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

Add social tokens.

*Success Response:*



Success


Schema: `TokenResponse`









---


#### getAppCompanies
Application inventory enabled companies

```swift
configuration.getAppCompanies(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

Application inventory enabled companies.

*Success Response:*



Success


Schema: `CompaniesResponse`









---


#### getAppStores
Application inventory enabled stores

```swift
configuration.getAppStores(companyId: companyId, applicationId: applicationId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

Add initial application supported currency for various features and data. Default INR will be enabled.

*Success Response:*



Success


Schema: `AppSupportedCurrency`









---


#### getOrderingStoresByFilter
Get ordering store by filter

```swift
configuration.getOrderingStoresByFilter(companyId: companyId, applicationId: applicationId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

Add new domain to application.

*Success Response:*



Success


Schema: `Domain`








Invalid/Missing params


Schema: `InvalidPayloadRequest`


*Examples:*


Maximum domain limit reached
```json
{
  "value": {
    "message": "Maximum 4 domains can be added to application. Please remove existing one to add new"
  }
}
```

Failed to verify domain record
```json
{
  "value": {
    "message": "Failed to verify domain records"
  }
}
```

Domain already registered
```json
{
  "value": {
    "message": "Domain already linked to application"
  }
}
```









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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 
| id | string | Domain _id | 

Remove attached domain.

*Success Response:*



Success


Schema: `SuccessMessageResponse`








Invalid request or Missing params


Schema: `InvalidPayloadRequest`


*Examples:*


Primary or Shortlink or Default domain deletiion
```json
{
  "value": {
    "message": "Primary domain deletion not allowed"
  }
}
```








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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 

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
| companyId | string | Current company id | 
| pageNo | integer |  | 
| pageSize | integer |  | 
| q | string | Url encoded object used as mongodb query | 

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
| companyId | string | Current company id | 
| applicationId | string | Current application id | 

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
| companyId | string | Current company id | 

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
| companyId | string | Current company id | 

Check domain availibility before linking to application. Also sends domain suggestions with similar to queried domain. \ Custom domain search is currently powered by GoDaddy provider.

*Success Response:*



Success


Schema: `DomainSuggestionsResponse`


*Examples:*


Suggestions for fynd domains
```json
{
  "value": {
    "domains": [
      {
        "name": "test.hostx1.de",
        "is_available": false
      },
      {
        "name": "testhive.hostx1.de",
        "is_available": true
      }
    ]
  }
}
```

Suggestions for custom domains
```json
{
  "value": {
    "domains": [
      {
        "name": "test25.in",
        "unsupported": false,
        "is_available": false
      },
      {
        "name": "try25.in",
        "unsupported": false,
        "is_available": true,
        "price": 14.99,
        "currency": "USD"
      }
    ]
  }
}
```









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
| companyId | string | Current company id | 
| id | integer | Integration id | 

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
| companyId | string | Current company id | 
| pageNo | integer | Current page no | 
| pageSize | integer | Current request items count | 

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
| companyId | string | Current company id | 
| level | string | Integration level | 
| uid | integer | Integration level uid | 
| pageNo | integer | Current page no | 
| pageSize | integer | Current request items count | 

Get company/store level integration opt-ins

*Success Response:*



Success


Schema: `GetIntegrationsOptInsResponse`









---


#### getIntegrationLevelConfig
Get integration level config

```swift
configuration.getIntegrationLevelConfig(companyId: companyId, id: id, level: level) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Current company id | 
| id | string | Integration id | 
| level | string | Integration level | 

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
| companyId | string | Current company id | 
| id | string | Integration id | 
| level | string | Integration level | 
| uid | integer | Integration level uid | 

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
| companyId | string | Current company id | 
| id | string | Integration id | 
| level | string | Integration level | 
| uid | integer | Integration level uid | 

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
| companyId | string | Current company id | 
| q | string | Search text for brand name | 

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
| companyId | string | Current company id | 
| pageNo | integer | Current page no | 
| pageSize | integer | Current request items count | 

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
| companyId | string | Current company id | 
| pageNo | integer | Current page no | 
| pageSize | integer | Current request items count | 

Get stores by brand uids

*Success Response:*



Success


Schema: `StoreByBrandsResponse`









---


#### getOtherSellerApplications
Get other seller applications

```swift
configuration.getOtherSellerApplications(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Current company id | 

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
| companyId | string | Current company id | 
| id | string | Application Id | 

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
| companyId | string | Current company id | 
| id | string | Application Id | 

Opt out company or store from other seller application

*Success Response:*



Success


Schema: `SuccessMessageResponse`








Invalid params or Not configured inventory


Schema: `InvalidPayloadRequest`


*Examples:*


Missing parameter
```json
{
  "value": {
    "message": "Invalid opt out request data. Either of `store` and `company` fields are missing"
  }
}
```

Company other than current company sent for opt out
```json
{
  "value": {
    "message": "Invalid company id"
  }
}
```

Store other than current company sent for opt out
```json
{
  "value": {
    "message": "Invalid store ids"
  }
}
```

Inventory not configured for sent application id
```json
{
  "value": {
    "message": "Inventory is not configured"
  }
}
```








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
| companyId | string | Current company id | 
| applicationId | string | Current Application _id | 
| pageNo | integer |  | 
| pageSize | integer |  | 
| isArchived | boolean |  | 
| title | string |  | 
| isPublic | boolean |  | 
| isDisplay | boolean |  | 
| typeSlug | string |  | 
| code | string |  | 

Get coupon list with pagination

*Success Response:*



Coupon List for sent page_size and page_no


Schema: `CouponsResponse`


*Examples:*


Coupon list for sent filter and page size
```json
{
  "value": {
    "items": [
      {
        "_id": "5e1d9bec6d6b7e000146c840",
        "display_meta": {
          "title": "percent50 title"
        },
        "_schedule": {
          "next_schedule": [
            {
              "start": "2020-01-14T10:45:03.600000+00:00",
              "end": "2020-01-16T10:45:03+00:00"
            }
          ],
          "duration": null,
          "start": "2020-01-14T10:45:03.600000+00:00",
          "end": "2020-01-16T10:45:03+00:00",
          "cron": ""
        },
        "state": {
          "is_public": true,
          "is_display": true,
          "is_archived": false
        },
        "ownership": {
          "payable_category": "seller",
          "payable_by": ""
        },
        "code": "percent50",
        "rule_definition": {
          "type": "percentage",
          "scope": [
            "category_id"
          ],
          "applicable_on": "quantity"
        }
      }
    ],
    "page": {
      "has_next": true,
      "size": 10,
      "current": 1,
      "item_total": 30
    }
  }
}
```









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
| companyId | string | Current company id | 
| applicationId | string | Current Application _id | 

Create new coupon

*Success Response:*



Coupon Created successfully


Schema: `SuccessMessage`








Invalid coupon data or existing coupon code


Schema: `OperationErrorResponse`


*Examples:*


Coupon code exists
```json
{
  "value": {
    "success": false,
    "message": "Coupon already code exist"
  }
}
```









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
| companyId | string | Current company id | 
| applicationId | string | Current Application _id | 
| id | string |  | 

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
| companyId | string | Current company id | 
| applicationId | string | Current Application _id | 
| id | string |  | 

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
| companyId | string | Current company id | 
| applicationId | string | Current Application _id | 
| id | string |  | 

Update archive/unarchive and change schedule for coupon

*Success Response:*



Coupon updated successfully


Schema: `SuccessMessage`


*Examples:*


Archive or Unarchive coupon
```json
{
  "value": {
    "success": true,
    "message": "Coupon Updated"
  }
}
```

Coupon schedule updated successfully
```json
{
  "value": {
    "success": true,
    "message": "Coupon schedule updated"
  }
}
```








Coupon not found for `id` from path params


Schema: `OperationErrorResponse`









---



---


## Marketplaces


#### getAvailableChannels
Get available marketplace channels

```swift
marketplaces.getAvailableChannels(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 

Get available marketplace channels

*Success Response:*



Success


Schema: `AllChannels`









---


#### getChannels
Get all registered marketplace channels for a seller

```swift
marketplaces.getChannels(companyId: companyId) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 

Get all registered marketplace channels for a seller

*Success Response:*



Success


Schema: `[String: Any]`









---


#### getChannel
Get registered marketplace channel for a seller

```swift
marketplaces.getChannel(companyId: companyId, channel: channel) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| channel | string | Name of marketplace channel | 

Get registered marketplace channel for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### registerMyntraChannel
Create Myntra marketplace channel for a seller

```swift
marketplaces.registerMyntraChannel(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 

Create Myntra marketplace channel for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### updateMyntraChannelCredentials
Update Myntra marketplace channel credentials for a seller

```swift
marketplaces.updateMyntraChannelCredentials(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 

Update Myntra marketplace channel credentials for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### registerAmazonChannel
Create Amazon marketplace channel for a seller

```swift
marketplaces.registerAmazonChannel(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 

Create Amazon marketplace channel for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### updateAmazonChannelCredentials
Update Amazon marketplace channel credentials for a seller

```swift
marketplaces.updateAmazonChannelCredentials(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 

Update Amazon marketplace channel credentials for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### registerFlipkartChannel
Create Flipkart / Flipkart Assured marketplace channel for a seller

```swift
marketplaces.registerFlipkartChannel(companyId: companyId, flipkartChannel: flipkartChannel, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| flipkartChannel | string | Name of marketplace channel | 

Create Flipkart / Flipkart Assured marketplace channel for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### updateFlipkartChannelCredentials
Update Flipkart / Flipkart Assured marketplace channel credentials for a seller

```swift
marketplaces.updateFlipkartChannelCredentials(companyId: companyId, flipkartChannel: flipkartChannel, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| flipkartChannel | string | Name of marketplace channel | 

Update Flipkart / Flipkart Assured marketplace channel credentials for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### registerTatacliqChannel
Create Tatacliq / Tatacliq Luxury marketplace channel for a seller

```swift
marketplaces.registerTatacliqChannel(companyId: companyId, tatacliqChannel: tatacliqChannel, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| tatacliqChannel | string | Name of marketplace channel | 

Create Tatacliq / Tatacliq Luxury marketplace channel for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### updateTatacliqChannelCredentials
Update Tatacliq / Tatacliq Luxury Assured marketplace channel credentials for a seller

```swift
marketplaces.updateTatacliqChannelCredentials(companyId: companyId, tatacliqChannel: tatacliqChannel, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| tatacliqChannel | string | Name of marketplace channel | 

Update Tatacliq / Tatacliq Luxury marketplace channel credentials for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### registerAjioChannel
Create Ajio marketplace channel for a seller

```swift
marketplaces.registerAjioChannel(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 

Create Ajio marketplace channel for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### updateAjioChannelCredentials
Update Ajio marketplace channel credentials for a seller

```swift
marketplaces.updateAjioChannelCredentials(companyId: companyId, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 

Update Ajio marketplace channel credentials for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### updateChannelInventorySyncConfig
Update inventory sync configuration of marketplace channel for a seller

```swift
marketplaces.updateChannelInventorySyncConfig(companyId: companyId, channel: channel, validateCred: validateCred, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| channel | string | Name of marketplace channel | 
| validateCred | string | Validate marketplace cred while saving inventory config | 

Update inventory sync configuration of marketplace channel for a seller

*Success Response:*



Success


Schema: `MkpResp`









---


#### getChannelLocationConfig
Get marketplace channel location config for a seller

```swift
marketplaces.getChannelLocationConfig(companyId: companyId, channel: channel) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| channel | string | Name of marketplace channel | 

Get marketplace channel location config for a seller

*Success Response:*



Success


Schema: `StoreMapping`









---


#### updateChannelLocationConfig
update marketplace channel location config for a seller

```swift
marketplaces.updateChannelLocationConfig(companyId: companyId, channel: channel, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| channel | string | Name of marketplace channel | 

update marketplace channel location config for a seller

*Success Response:*



Success


Schema: `StoreMapping`









---


#### getChannelStatus
Get marketplace channel active status for a seller

```swift
marketplaces.getChannelStatus(companyId: companyId, channel: channel) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| channel | string | Name of marketplace channel | 

Get marketplace channel active status for a seller

*Success Response:*



Success


Schema: `StatusPayload`









---


#### updateChannelStatus
Update marketplace channel active status for a seller

```swift
marketplaces.updateChannelStatus(companyId: companyId, channel: channel, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| channel | string | Name of marketplace channel | 

Update marketplace channel active status for a seller

*Success Response:*



Success


Schema: `StatusResp`









---


#### triggerChannelInventoryUpdates
Trigger marketplace channel inventory updates for a seller

```swift
marketplaces.triggerChannelInventoryUpdates(companyId: companyId, channel: channel, updateType: updateType, body: body) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| channel | string | Name of marketplace channel | 
| updateType | string | Inventory update type | 

Trigger marketplace channel inventory updates for a seller

*Success Response:*



Success


Schema: `SyncResp`









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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 

Get statistics groups

*Success Response:*



Success


Schema: `StatsGroups`









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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| groupName | string | Group name | 

Get statistics group components

*Success Response:*



Success


Schema: `StatsGroupComponents`









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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| componentName | string | Component name | 

Get component statistics csv

*Success Response:*



Success


Schema: `String`









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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| componentName | string | Component name | 

Get component statistics pdf

*Success Response:*



Success


Schema: `String`









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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| componentName | string | Component name | 

Get component statistics

*Success Response:*



Success


Schema: `StatsRes`









---


#### getAbandonCartList
Get abandon carts list

```swift
analytics.getAbandonCartList(companyId: companyId, applicationId: applicationId, from: from, to: to, pageNo: pageNo, pageSize: pageSize) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| from | string | From date | 
| to | string | To date | 
| pageNo | string | Current page number | 
| pageSize | string | Current page size | 

Get abandon carts list

*Success Response:*



Success


Schema: `AbandonCartsList`









---


#### getAbandonCartsCSV
Get abandon carts csv

```swift
analytics.getAbandonCartsCSV(companyId: companyId, applicationId: applicationId, from: from, to: to) { (response, error) in
    // Use response
}
```

| Argument  |  Type  | Description |
| --------- | ----  | --- |
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| from | string | From date | 
| to | string | To date | 

Get abandon carts csv

*Success Response:*



Success


Schema: `String`









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
| companyId | string | Company Id | 
| applicationId | string | Application Id | 
| cartId | string | Cart Id | 

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
| companyId | string | Company Id | 
| exportType | string | Export type / format | 

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
| companyId | string | Company Id | 
| exportType | string | Export type / format | 
| jobId | string | Export job id | 

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
| companyId | string | Company Id | 
| logType | string | Log type | 
| pageNo | string | Current page number | 
| pageSize | string | Current page size | 

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
| companyId | string | Company Id | 
| pageNo | string | Current page number | 
| pageSize | string | Current page size | 
| logType | string | Log type | 

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
| companyId | integer | company_id | 
| view | string | listing or calender.  Default is listing. | 
| q | string | The search query. This can be a partial or complete name of a discount. | 
| pageNo | integer | page number. Default is 1. | 
| pageSize | integer | page size. Default is 12. | 
| archived | boolean | archived. Default is false. | 
| month | integer | month. Default is current month. | 
| year | integer | year. Default is current year. | 
| type | string | basic or custom. | 
| appIds | array | application ids. | 

Fetch discount list.

*Success Response:*



Success


Schema: `ListOrCalender`








Failed


Schema: `BadRequest`









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
| companyId | integer | company_id | 

Create Discount.

*Success Response:*



Success


Schema: `DiscountJob`








Failed


Schema: `BadRequest`









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
| companyId | integer | company_id | 
| id | string | unique id. | 

Fetch discount.

*Success Response:*



Success


Schema: `DiscountJob`








Failed


Schema: `BadRequest`









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
| companyId | integer | company_id | 
| id | string | id | 

Create Discount.

*Success Response:*



Success


Schema: `DiscountJob`








Failed


Schema: `BadRequest`









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
| companyId | integer | company_id | 
| discount | string | discount | 

Validate File.

*Success Response:*



Success


Schema: `FileJobResponse`








Failed


Schema: `BadRequest`









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
| companyId | integer | company_id | 
| type | string | type | 

Validate File.

*Success Response:*



Success


Schema: `FileJobResponse`








Failed


Schema: `BadRequest`









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
| companyId | integer | company_id | 
| id | string | id | 

Validate File Job.

*Success Response:*



Success


Schema: `FileJobResponse`








Failed


Schema: `BadRequest`









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
| companyId | integer | company_id | 
| id | string | id | 

Cancel Validation Job.

*Success Response:*



Success


Schema: `CancelJobResponse`








Failed


Schema: `BadRequest`









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
| companyId | integer | company_id | 
| id | string | id | 

Download File Job.

*Success Response:*



Success


Schema: `FileJobResponse`








Failed


Schema: `BadRequest`









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
| companyId | integer | company_id | 
| id | string | id | 

Cancel Download Job.

*Success Response:*



Success


Schema: `CancelJobResponse`








Failed


Schema: `BadRequest`









---



---


---
---
