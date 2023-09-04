# CHANGE LOG (1.3.0)

## Application Client



### Cart



#### checkoutCart

- ##### What's New
	- [Breaking] [Added] Type `object` to property `customerDetails` of schema `CartCheckoutDetailRequest` in request body


#### checkoutCartV2

- ##### What's New
	- [Breaking] [Added] Type `object` to property `customerDetails` of schema `CartCheckoutDetailV2Request` in request body


### Catalog



#### getProductSizesBySlug

- ##### What's New
	- [Added] property `price.selling` of schema `Price` in response with status code 200
	- [Added] property `discountMeta` of schema `DiscountMeta` in response with status code 200


#### getProductBundlesBySlug

- ##### What's New
	- [Breaking] [Added] Type `string` to property `items[].logo` of schema `ProductGroupingModel` in response with status code 200


#### getProductPriceBySlug

- ##### What's New
	- [Added] property `price.selling` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `price.currencyCode` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `price.currencySymbol` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `pricePerPiece.selling` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `pricePerPiece.currencyCode` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `pricePerPiece.currencySymbol` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `discountMeta` of schema `DiscountMeta` in response with status code 200
	- [Added] property `deliveryPromise` of schema `PromiseSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `price.currency` of schema `ProductStockPriceV3` in response with status code 200
	- [Breaking] [Deleted] property `pricePerPiece.currency` of schema `ProductStockPriceV3` in response with status code 200


#### getProductSellersBySlug

- ##### What's New
	- [Added] property `items[].price.selling` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `items[].price.currencyCode` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `items[].price.currencySymbol` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `items[].pricePerPiece.selling` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `items[].pricePerPiece.currencyCode` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `items[].pricePerPiece.currencySymbol` of schema `ProductStockPriceV3` in response with status code 200
	- [Added] property `items[].discountMeta` of schema `DiscountMeta` in response with status code 200
	- [Added] property `items[].deliveryPromise` of schema `PromiseSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].price.currency` of schema `ProductStockPriceV3` in response with status code 200
	- [Breaking] [Deleted] property `items[].pricePerPiece.currency` of schema `ProductStockPriceV3` in response with status code 200


### Content



#### getSEOConfiguration

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `seo.customMetaTags[]` of schema `CustomMetaTag` in response with status code 200


#### getPage

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### getPages

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `items[].schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


### Payment



#### getAggregatorsConfig

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### getActiveCardAggregator

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### getActiveUserCards

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### deleteUserCard

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### verifyCustomerForPayment

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### verifyAndChargePayment

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### initialisePayment

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### checkAndUpdatePaymentStatus

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### getPaymentModeRoutes

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### getPosPaymentModeRoutes

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### getRupifiBannerDetails

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### getEpaylaterBannerDetails

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### resendOrCancelPayment

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### renderHTML

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### validateVPA

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### cardDetails

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### getActiveRefundTransferModes

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 500


#### enableOrDisableRefundTransferMode

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 500


#### getUserBeneficiariesDetail

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 500


#### getOrderBeneficiariesDetail

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 500


#### verifyOtpAndAddBeneficiaryForBank

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 500


#### addBeneficiaryDetails

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 500


#### addRefundBankAccountUsingOTP

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 500


#### verifyOtpAndAddBeneficiaryForWallet

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 500


#### updateDefaultBeneficiary

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 500


#### getPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### createPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### resendPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### cancelPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### getPaymentModeRoutesPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### pollingPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### createOrderHandlerPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### initialisePaymentPaymentLink

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### checkAndUpdatePaymentStatusPaymentLink

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### customerCreditSummary

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### redirectToAggregator

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### checkCredit

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### customerOnboard

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### outstandingOrderDetails

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


#### paidOrderDetails

- ##### What's Deprecated
	- [Deleted] Required status from property `error` in response with status code 400
	- [Deleted] Required status from property `error` in response with status code 500


### PosCart



#### checkoutCart

- ##### What's New
	- [Breaking] [Added] Type `object` to property `customerDetails` of schema `CartPosCheckoutDetailRequest` in request body


### Theme



#### getAppliedTheme

- ##### What's New
	- [Breaking] [Added] properties `config.preset.pages[].sections[].props.title`, `config.preset.pages[].sections[].props.autoplay`, `config.preset.pages[].sections[].props.itemMargin`, `config.preset.pages[].sections[].props.slideInterval` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].blocks[].type`, `config.preset.pages[].sections[].blocks[].name`, `config.preset.pages[].sections[].blocks[].props` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].preset.blocks` in response with status code 200
	- [Breaking] [Added] properties `config.list[].globalConfig.statics`, `config.list[].globalConfig.auth`, `config.list[].globalConfig.palette` in response with status code 200
	- [Added] property `config.list[].custom` of schema `CustomConfig` in response with status code 200
	- [Added] property `config.globalSchema.props[].info` of schema `Prop` in response with status code 200
	- [Breaking] [Added] Required status to properties `config.current`, `config.list` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.medium.name`, `font.variants.medium.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.bold.name`, `font.variants.bold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.light.name`, `font.variants.light.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.regular.name`, `font.variants.regular.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.semiBold.name`, `font.variants.semiBold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants`, `font.family` in response with status code 200
	- [Added] property `meta` of schema `Meta` in response with status code 200
	- [Added] property `name` of schema `ThemesSchema` in response with status code 200
	- [Added] property `isPrivate` of schema `ThemesSchema` in response with status code 200
	- [Added] property `applicationId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `marketplaceThemeId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `templateThemeId` of schema `ThemesSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `Css` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UmdJs` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].text` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].path` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].type` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].label` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Deleted] Possible values from `none,exact,query` from property `config.preset.pages[].sections[].predicate.route.selected` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].predicate.route.query` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].theme` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].seo` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].props` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sectionsMeta` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].id` of schema `AvailablePageSchema` in response with status code 200
	- [Deleted] properties `config.list[].page[].settings`, `config.list[].page[].page` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].blocks[]` of schema `Blocks` in response with status code 200
	- [Deleted] properties `availableSections[].blocks[].type`, `availableSections[].blocks[].name`, `availableSections[].blocks[].props` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].props[]` of schema `BlocksProps` in response with status code 200
	- [Deleted] properties `availableSections[].props[].id`, `availableSections[].props[].label`, `availableSections[].props[].type` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ConfigPage` in response with status code 200
	- [Changed] Path From `/service/application/theme/v1.0/applied-theme` To `/service/application/theme/v2.0/applied-theme`


#### getThemeForPreview

- ##### What's New
	- [Breaking] [Added] properties `config.preset.pages[].sections[].props.title`, `config.preset.pages[].sections[].props.autoplay`, `config.preset.pages[].sections[].props.itemMargin`, `config.preset.pages[].sections[].props.slideInterval` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].blocks[].type`, `config.preset.pages[].sections[].blocks[].name`, `config.preset.pages[].sections[].blocks[].props` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].preset.blocks` in response with status code 200
	- [Breaking] [Added] properties `config.list[].globalConfig.statics`, `config.list[].globalConfig.auth`, `config.list[].globalConfig.palette` in response with status code 200
	- [Added] property `config.list[].custom` of schema `CustomConfig` in response with status code 200
	- [Added] property `config.globalSchema.props[].info` of schema `Prop` in response with status code 200
	- [Breaking] [Added] Required status to properties `config.current`, `config.list` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.medium.name`, `font.variants.medium.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.bold.name`, `font.variants.bold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.light.name`, `font.variants.light.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.regular.name`, `font.variants.regular.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.semiBold.name`, `font.variants.semiBold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants`, `font.family` in response with status code 200
	- [Added] property `meta` of schema `Meta` in response with status code 200
	- [Added] property `name` of schema `ThemesSchema` in response with status code 200
	- [Added] property `isPrivate` of schema `ThemesSchema` in response with status code 200
	- [Added] property `applicationId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `marketplaceThemeId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `templateThemeId` of schema `ThemesSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `Css` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UmdJs` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].text` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].path` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].type` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].label` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Deleted] Possible values from `none,exact,query` from property `config.preset.pages[].sections[].predicate.route.selected` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].predicate.route.query` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].theme` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].seo` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].props` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sectionsMeta` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].id` of schema `AvailablePageSchema` in response with status code 200
	- [Deleted] properties `config.list[].page[].settings`, `config.list[].page[].page` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].blocks[]` of schema `Blocks` in response with status code 200
	- [Deleted] properties `availableSections[].blocks[].type`, `availableSections[].blocks[].name`, `availableSections[].blocks[].props` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].props[]` of schema `BlocksProps` in response with status code 200
	- [Deleted] properties `availableSections[].props[].id`, `availableSections[].props[].label`, `availableSections[].props[].type` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ConfigPage` in response with status code 200
	- [Changed] Path From `/service/application/theme/v1.0/{theme_id}/preview` To `/service/application/theme/v2.0/{theme_id}/preview`


### User



#### sendOTPOnEmail

- ##### What's New
	- [Added] property `captchaCode` of schema `SendEmailOtpRequestSchema` in request body


## Platform Client



### AuditTrail



#### getAuditLogs

- ##### What's New
	- [Added] `query` parameter `limit` (type: `integer`)

	- [Added] `query` parameter `sort` (type: `object`)



### Billing



#### getSubscription

- ##### What's Deprecated
	- [Deleted] Value format from `date` from property `subscription.trial.start` of schema `SubscriptionTrial` in response with status code 200
	- [Deleted] Value format from `date` from property `subscription.trial.end` of schema `SubscriptionTrial` in response with status code 200
	- [Deleted] Value format from `date` from property `subscription.pauseCollection.resumeAt` of schema `SubscriptionPauseCollection` in response with status code 200


#### activateSubscriptionPlan

- ##### What's Deprecated
	- [Deleted] Value format from `date` from property `data.trial.start` of schema `SubscriptionTrial` in response with status code 200
	- [Deleted] Value format from `date` from property `data.trial.end` of schema `SubscriptionTrial` in response with status code 200
	- [Deleted] Value format from `date` from property `data.pauseCollection.resumeAt` of schema `SubscriptionPauseCollection` in response with status code 200


#### cancelSubscriptionPlan

- ##### What's Deprecated
	- [Deleted] Value format from `date` from property `data.trial.start` of schema `SubscriptionTrial` in response with status code 200
	- [Deleted] Value format from `date` from property `data.trial.end` of schema `SubscriptionTrial` in response with status code 200
	- [Deleted] Value format from `date` from property `data.pauseCollection.resumeAt` of schema `SubscriptionPauseCollection` in response with status code 200


#### getEnterprisePlans

- ##### What's New
	- [Added] method `getEnterprisePlans`



#### planStatusUpdate

- ##### What's New
	- [Added] method `planStatusUpdate`



#### subscripePlan

- ##### What's New
	- [Added] method `subscripePlan`



### Cart



#### getPromotions

- ##### What's New
	- [Breaking] [Added] Type `object` to property `items[].restrictions.userRegistered` of schema `Restrictions1` in response with status code 200
	- [Added] property `items[].id` of schema `PromotionListItem` in response with status code 200


#### createPromotion

- ##### What's New
	- [Breaking] [Added] Type `object` to property `restrictions.userRegistered` of schema `Restrictions1` in request body
	- [Breaking] [Added] Type `object` to property `restrictions.userRegistered` of schema `Restrictions1` in response with status code 201


#### getPromotionById

- ##### What's New
	- [Breaking] [Added] Type `object` to property `restrictions.userRegistered` of schema `Restrictions1` in response with status code 200


#### updatePromotion

- ##### What's New
	- [Breaking] [Added] Type `object` to property `restrictions.userRegistered` of schema `Restrictions1` in request body
	- [Breaking] [Added] Type `object` to property `restrictions.userRegistered` of schema `Restrictions1` in response with status code 200


#### updatePriceAdjustment

- ##### What's New
	- [Added] Possible values `delivery_charge` to property `type` of schema `PriceAdjustmentUpdate` in request body
	- [Added] property `articleIds[].quantity` of schema `Article` in request body
	- [Added] Possible values `delivery_charge` to property `data.type` of schema `PriceAdjustment` in response with status code 200
	- [Added] property `data.articleIds[].quantity` of schema `Article` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `cartValue` of schema `PriceAdjustmentUpdate` in request body
	- [Breaking] [Deleted] property `data.cartValue` of schema `PriceAdjustment` in response with status code 200


#### addPriceAdjustment

- ##### What's New
	- [Added] Possible values `delivery_charge` to property `type` of schema `PriceAdjustmentAdd` in request body
	- [Added] property `articleIds[].quantity` of schema `Article` in request body
	- [Added] Possible values `delivery_charge` to property `data.type` of schema `PriceAdjustment` in response with status code 201
	- [Added] property `data.articleIds[].quantity` of schema `Article` in response with status code 201

- ##### What's Deprecated
	- [Breaking] [Deleted] property `cartValue` of schema `PriceAdjustmentAdd` in request body
	- [Breaking] [Deleted] property `data.cartValue` of schema `PriceAdjustment` in response with status code 201


#### platformCheckoutCart

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `userId` of schema `PlatformCartCheckoutDetailRequest` in request body
	- [Added] property `customMeta` of schema `PlatformCartCheckoutDetailRequest` in request body
	- [Added] property `customerDetails` of schema `PlatformCartCheckoutDetailRequest` in request body


#### platformCheckoutCartV2

- ##### What's New
	- [Breaking] [Added] Possible nullable value `true` to property `userId` of schema `PlatformCartCheckoutDetailV2Request` in request body
	- [Added] property `customerDetails` of schema `PlatformCartCheckoutDetailV2Request` in request body


### Catalog



#### updateCollection

- ##### What's New
	- [Breaking] [Added] Type `string` to property `modifiedBy` of schema `UpdateCollection` in request body
	- [Breaking] [Added] Type `string` to property `modifiedBy` of schema `UpdateCollection` in response with status code 200


#### validateProductTemplate

- ##### What's New
	- [Added] `query` parameter `itemType` (type: `string`)

	- [Added] `query` parameter `bulk` (type: `boolean`)



#### downloadProductTemplateViews

- ##### What's New
	- [Added] `query` parameter `itemType` (type: `string`)

	- [Added] `query` parameter `type` (type: `string`)



#### createProduct

- ##### What's New
	- [Breaking] [Added] Type `string` to property `changeRequestId` of schema `ProductCreateUpdateSchemaV2` in request body


#### getProductAttributes

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].example` of schema `AttributeMasterSerializer` in response with status code 200


#### editProduct

- ##### What's New
	- [Breaking] [Added] Type `string` to property `changeRequestId` of schema `ProductCreateUpdateSchemaV2` in request body


#### createBulkProductUploadJob

- ##### What's New
	- [Breaking] [Added] Type `string` to property `modifiedBy` of schema `BulkResponse` in response with status code 200


#### uploadBulkProducts

- ##### What's New
	- [Breaking] [Added] Type `string` to property `modifiedBy` of schema `BulkResponse` in response with status code 200


#### getInventoryBySizeIdentifier

- ##### What's New
	- [Breaking] [Added] Type `string` to property `items[].modifiedBy` of schema `InventorySellerResponse` in response with status code 200
	- [Breaking] [Added] Type `string` to property `items[].createdBy` of schema `InventorySellerResponse` in response with status code 200


#### getDiscountedInventoryBySizeIdentifier

- ##### What's New
	- [Breaking] [Added] Type `string` to property `items[].modifiedBy` of schema `InventorySellerResponse` in response with status code 200
	- [Breaking] [Added] Type `string` to property `items[].createdBy` of schema `InventorySellerResponse` in response with status code 200


#### createBulkInventoryJob

- ##### What's New
	- [Breaking] [Added] Type `string` to property `modifiedBy` of schema `BulkResponse` in response with status code 200


### Common



#### searchApplication

- ##### What's New
	- [Added] property `name` of schema `ApplicationResponse` in response with status code 200
	- [Added] property `code` of schema `ApplicationResponse` in response with status code 200
	- [Added] property `symbol` of schema `ApplicationResponse` in response with status code 200
	- [Added] property `id` of schema `ApplicationResponse` in response with status code 200
	- [Added] property `isActive` of schema `ApplicationResponse` in response with status code 200
	- [Added] property `createdAt` of schema `ApplicationResponse` in response with status code 200
	- [Added] property `updatedAt` of schema `ApplicationResponse` in response with status code 200
	- [Added] property `decimalDigits` of schema `ApplicationResponse` in response with status code 200


### Communication



#### getAudiences

- ##### What's New
	- [Added] Response with status 500


#### createAudience

- ##### What's New
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `AudienceReq` in request body
	- [Breaking] [Deleted] property `isActive` of schema `AudienceReq` in request body


#### getBigqueryHeaders
- [Note] This method is deprecated and it will be removed in future versions.

- ##### What's Deprecated
	- [Breaking] [Deleted] Body content in Request
	- [Deleted] properties `headers` in response with status code 200
	- [Breaking] [Deleted] Response with status 400

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getBigqueryHeaders` to `createBigQueryHeaders`


#### getAudienceById

- ##### What's New
	- [Breaking] [Added] properties `message.message`, `message.success`, `message.info`, `message.operation` in response with status code 404
	- [Added] property `sentry` of schema `GenericError` in response with status code 404
	- [Added] Response with status 500

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `object` of property `message` of schema `NotFound` in response with status code 404


#### updateAudienceById

- ##### What's New
	- [Breaking] [Added] properties `message.message`, `message.success`, `message.info`, `message.operation` in response with status code 404
	- [Added] property `sentry` of schema `GenericError` in response with status code 404
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `AudienceReq` in request body
	- [Breaking] [Deleted] property `isActive` of schema `AudienceReq` in request body

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `object` of property `message` of schema `NotFound` in response with status code 404


#### getNSampleRecordsFromCsv

- ##### What's New
	- [Added] method `getNSampleRecordsFromCsv`



#### getEmailProviders

- ##### What's New
	- [Added] Response with status 500


#### createEmailProvider

- ##### What's New
	- [Added] Response with status 500


#### getEmailProviderById

- ##### What's New
	- [Added] Response with status 404
	- [Added] Response with status 500


#### updateEmailProviderById

- ##### What's New
	- [Added] Response with status 404
	- [Added] Response with status 500


#### getEmailTemplates

- ##### What's New
	- [Breaking] [Added] Type `string` to property `items[].tags[]` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Possible values `high,low` to property `items[].priority` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].headers[]` of schema `EmailTemplateHeaders` in response with status code 200
	- [Breaking] [Added] properties `items[].headers[].key`, `items[].headers[].value` in response with status code 200
	- [Breaking] [Added] Type `integer` to property `items[].attachments[]` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `items[].staticTo[]` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `items[].staticCc[]` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `items[].staticBcc[]` of schema `EmailTemplate` in response with status code 200
	- [Added] property `items[].application` of schema `EmailTemplate` in response with status code 200
	- [Added] property `items[].category` of schema `EmailTemplate` in response with status code 200
	- [Added] property `items[].editorType` of schema `EmailTemplate` in response with status code 200
	- [Added] property `items[].editorMeta` of schema `EmailTemplate` in response with status code 200
	- [Added] property `items[].replyTo` of schema `EmailTemplate` in response with status code 200
	- [Added] property `items[].urlShorten` of schema `EnabledObj` in response with status code 200
	- [Added] property `items[].templateVariables` of schema `EmailTemplate` in response with status code 200
	- [Added] Response with status 500


#### createEmailTemplate

- ##### What's New
	- [Breaking] [Added] Type `integer` to property `attachments[]` of schema `EmailTemplateReq` in request body
	- [Breaking] [Added] Possible values `high,low` to property `priority` of schema `EmailTemplateReq` in request body
	- [Added] property `tags` of schema `EmailTemplateReq` in request body
	- [Added] property `published` of schema `EmailTemplateReq` in request body
	- [Added] property `fromName` of schema `EmailTemplateReq` in request body
	- [Added] property `templateVariables` of schema `EmailTemplateReq` in request body
	- [Added] property `editorType` of schema `EmailTemplateReq` in request body
	- [Added] property `editorMeta` of schema `EmailTemplateReq` in request body
	- [Breaking] [Added] Required status to property `name` in request body
	- [Breaking] [Added] Type `string` to property `tags[]` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Possible values `high,low` to property `priority` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `integer` to property `attachments[]` of schema `EmailTemplate` in response with status code 200
	- [Added] property `application` of schema `EmailTemplate` in response with status code 200
	- [Added] property `category` of schema `EmailTemplate` in response with status code 200
	- [Added] property `editorType` of schema `EmailTemplate` in response with status code 200
	- [Added] property `editorMeta` of schema `EmailTemplate` in response with status code 200
	- [Added] property `urlShorten` of schema `EnabledObj` in response with status code 200
	- [Added] property `templateVariables` of schema `EmailTemplate` in response with status code 200
	- [Added] property `fromName` of schema `EmailTemplate` in response with status code 200
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `keys` of schema `EmailTemplateKeys` in response with status code 200


#### getSystemEmailTemplates

- ##### What's New
	- [Breaking] [Added] Type `string` to property `items[].tags[]` of schema `SystemEmailTemplate` in response with status code 200
	- [Breaking] [Added] Possible values `high,low` to property `items[].priority` of schema `SystemEmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].headers[]` of schema `EmailTemplateHeaders` in response with status code 200
	- [Breaking] [Added] properties `items[].headers[].key`, `items[].headers[].value` in response with status code 200
	- [Breaking] [Added] Type `integer` to property `items[].attachments[]` of schema `SystemEmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `items[].staticTo[]` of schema `SystemEmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `items[].staticCc[]` of schema `SystemEmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `items[].staticBcc[]` of schema `SystemEmailTemplate` in response with status code 200
	- [Added] property `items[].category` of schema `SystemEmailTemplate` in response with status code 200
	- [Added] property `items[].urlShorten` of schema `EnabledObj` in response with status code 200
	- [Added] property `items[].templateVariables` of schema `SystemEmailTemplate` in response with status code 200
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `pageNo` (type: `integer`)

	- [Breaking] [Deleted] `query` parameter `pageSize` (type: `integer`)

	- [Breaking] [Deleted] `query` parameter `sort` (type: `object`)

	- [Breaking] [Deleted] property `items[].fromName` of schema `SystemEmailTemplate` in response with status code 200
	- [Breaking] [Deleted] property `page` of schema `Page` in response with status code 200


#### getEmailTemplateById

- ##### What's New
	- [Breaking] [Added] Type `string` to property `tags[]` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Possible values `high,low` to property `priority` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `object` to property `headers[]` of schema `EmailTemplateHeaders` in response with status code 200
	- [Breaking] [Added] properties `headers[].key`, `headers[].value` in response with status code 200
	- [Breaking] [Added] Type `integer` to property `attachments[]` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `staticTo[]` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `staticCc[]` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `staticBcc[]` of schema `EmailTemplate` in response with status code 200
	- [Added] property `application` of schema `EmailTemplate` in response with status code 200
	- [Added] property `category` of schema `EmailTemplate` in response with status code 200
	- [Added] property `editorType` of schema `EmailTemplate` in response with status code 200
	- [Added] property `editorMeta` of schema `EmailTemplate` in response with status code 200
	- [Added] property `replyTo` of schema `EmailTemplate` in response with status code 200
	- [Added] property `urlShorten` of schema `EnabledObj` in response with status code 200
	- [Added] property `templateVariables` of schema `EmailTemplate` in response with status code 200
	- [Added] Response with status 400
	- [Added] Response with status 404
	- [Added] Response with status 500


#### updateEmailTemplateById

- ##### What's New
	- [Breaking] [Added] Type `integer` to property `attachments[]` of schema `EmailTemplateReq` in request body
	- [Breaking] [Added] Possible values `high,low` to property `priority` of schema `EmailTemplateReq` in request body
	- [Added] property `tags` of schema `EmailTemplateReq` in request body
	- [Added] property `published` of schema `EmailTemplateReq` in request body
	- [Added] property `fromName` of schema `EmailTemplateReq` in request body
	- [Added] property `templateVariables` of schema `EmailTemplateReq` in request body
	- [Added] property `editorType` of schema `EmailTemplateReq` in request body
	- [Added] property `editorMeta` of schema `EmailTemplateReq` in request body
	- [Breaking] [Added] Required status to property `name` in request body
	- [Breaking] [Added] Type `string` to property `tags[]` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Possible values `high,low` to property `priority` of schema `EmailTemplate` in response with status code 200
	- [Breaking] [Added] Type `integer` to property `attachments[]` of schema `EmailTemplate` in response with status code 200
	- [Added] property `application` of schema `EmailTemplate` in response with status code 200
	- [Added] property `category` of schema `EmailTemplate` in response with status code 200
	- [Added] property `editorType` of schema `EmailTemplate` in response with status code 200
	- [Added] property `editorMeta` of schema `EmailTemplate` in response with status code 200
	- [Added] property `urlShorten` of schema `EnabledObj` in response with status code 200
	- [Added] property `templateVariables` of schema `EmailTemplate` in response with status code 200
	- [Added] property `fromName` of schema `EmailTemplate` in response with status code 200
	- [Added] Response with status 400
	- [Added] Response with status 404
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `keys` of schema `EmailTemplateKeys` in response with status code 200


#### deleteEmailTemplateById

- ##### What's New
	- [Added] property `acknowledged` of schema `GenericDelete` in response with status code 200
	- [Added] property `affected` of schema `GenericDelete` in response with status code 200
	- [Added] property `operation` of schema `GenericDelete` in response with status code 200
	- [Breaking] [Added] properties `message.message`, `message.success`, `message.info`, `message.operation` in response with status code 400
	- [Added] property `sentry` of schema `GenericError` in response with status code 400
	- [Added] Response with status 404
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `success` of schema `EmailTemplateDeleteSuccessRes` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `EmailTemplateDeleteFailureRes` in response with status code 400

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `object` of property `message` of schema `EmailTemplateDeleteFailureRes` in response with status code 400


#### getCommunicationLogs

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items[].source` of schema `Log` in response with status code 200
	- [Breaking] [Deleted] property `items[].channelType` of schema `Log` in response with status code 200


#### sendOtp

- ##### What's Deprecated
	- [Breaking] [Deleted] property `email.provider` of schema `SendOtpEmailCommsProvider` in request body


#### getSmsProviders

- ##### What's New
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items` of schema `SmsProviders` in response with status code 200
	- [Breaking] [Deleted] property `page` of schema `Page` in response with status code 200


#### createSmsProvider

- ##### What's New
	- [Added] property `password` of schema `SmsProviderReq` in request body
	- [Added] property `senderid` of schema `SmsProviderReq` in request body
	- [Added] property `feedid` of schema `SmsProviderReq` in request body
	- [Added] property `entityid` of schema `SmsProviderReq` in request body
	- [Added] property `host` of schema `SmsProviderReq` in request body
	- [Added] property `port` of schema `SmsProviderReq` in request body
	- [Added] property `apikey` of schema `SmsProviderReq` in request body
	- [Added] property `overrideDnd` of schema `SmsProviderReq` in request body
	- [Added] property `entityId` of schema `SmsProviderReq` in request body
	- [Added] property `versionId` of schema `SmsProviderReq` in request body
	- [Added] property `senderId` of schema `SmsProviderReq` in request body
	- [Added] property `apiKey` of schema `SmsProviderReq` in request body
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `rpt` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `type` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `provider` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `name` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `description` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `sender` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `username` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `authkey` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `application` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `slug` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `id` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `SmsProvider` in response with status code 200


#### getSmsProviderById

- ##### What's New
	- [Added] Response with status 404
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `rpt` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `type` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `provider` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `name` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `description` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `sender` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `username` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `authkey` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `application` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `slug` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `id` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `SmsProvider` in response with status code 200


#### updateSmsProviderById

- ##### What's New
	- [Added] property `password` of schema `SmsProviderReq` in request body
	- [Added] property `senderid` of schema `SmsProviderReq` in request body
	- [Added] property `feedid` of schema `SmsProviderReq` in request body
	- [Added] property `entityid` of schema `SmsProviderReq` in request body
	- [Added] property `host` of schema `SmsProviderReq` in request body
	- [Added] property `port` of schema `SmsProviderReq` in request body
	- [Added] property `apikey` of schema `SmsProviderReq` in request body
	- [Added] property `overrideDnd` of schema `SmsProviderReq` in request body
	- [Added] property `entityId` of schema `SmsProviderReq` in request body
	- [Added] property `versionId` of schema `SmsProviderReq` in request body
	- [Added] property `senderId` of schema `SmsProviderReq` in request body
	- [Added] property `apiKey` of schema `SmsProviderReq` in request body
	- [Added] Response with status 404
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `rpt` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `type` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `provider` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `name` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `description` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `sender` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `username` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `authkey` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `application` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `slug` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `id` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `SmsProvider` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `SmsProvider` in response with status code 200


#### getSmsTemplates

- ##### What's New
	- [Breaking] [Added] Possible values `high,low` to property `items[].priority` of schema `SmsTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `items[].tags[]` of schema `SmsTemplate` in response with status code 200
	- [Breaking] [Added] Type `object` to property `items[].templateVariables` of schema `SmsTemplate` in response with status code 200
	- [Added] property `items[].application` of schema `SmsTemplate` in response with status code 200
	- [Added] property `items[].meta` of schema `metaObj` in response with status code 200
	- [Added] property `items[].category` of schema `SmsTemplate` in response with status code 200
	- [Added] property `items[].urlShorten` of schema `EnabledObj` in response with status code 200
	- [Added] property `items[].templateId` of schema `SmsTemplate` in response with status code 200
	- [Added] Response with status 500


#### createSmsTemplate

- ##### What's New
	- [Breaking] [Added] Possible values `high,low` to property `priority` of schema `SmsTemplateReq` in request body
	- [Breaking] [Added] Type `object` to property `templateVariables` of schema `SmsTemplateReq` in request body
	- [Added] property `meta` of schema `metaObj` in request body
	- [Added] property `published` of schema `SmsTemplateReq` in request body
	- [Added] property `templateId` of schema `SmsTemplateReq` in request body
	- [Breaking] [Added] Required status to property `name` in request body
	- [Breaking] [Added] Type `string` to property `tags[]` of schema `SmsTemplate` in response with status code 200
	- [Breaking] [Added] Possible values `high,low` to property `priority` of schema `SmsTemplate` in response with status code 200
	- [Breaking] [Added] Type `object` to property `templateVariables` of schema `SmsTemplate` in response with status code 200
	- [Added] property `application` of schema `SmsTemplate` in response with status code 200
	- [Added] property `meta` of schema `metaObj` in response with status code 200
	- [Added] property `category` of schema `SmsTemplate` in response with status code 200
	- [Added] property `urlShorten` of schema `EnabledObj` in response with status code 200
	- [Added] property `templateId` of schema `SmsTemplate` in response with status code 200
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `attachments` of schema `SmsTemplateReq` in request body


#### getSmsTemplateById

- ##### What's New
	- [Breaking] [Added] Possible values `high,low` to property `priority` of schema `SmsTemplate` in response with status code 200
	- [Breaking] [Added] Type `string` to property `tags[]` of schema `SmsTemplate` in response with status code 200
	- [Breaking] [Added] Type `object` to property `templateVariables` of schema `SmsTemplate` in response with status code 200
	- [Added] property `application` of schema `SmsTemplate` in response with status code 200
	- [Added] property `meta` of schema `metaObj` in response with status code 200
	- [Added] property `category` of schema `SmsTemplate` in response with status code 200
	- [Added] property `urlShorten` of schema `EnabledObj` in response with status code 200
	- [Added] property `templateId` of schema `SmsTemplate` in response with status code 200
	- [Added] Response with status 400
	- [Breaking] [Added] properties `message.message`, `message.success`, `message.info`, `message.operation` in response with status code 404
	- [Added] property `sentry` of schema `GenericError` in response with status code 404
	- [Added] Response with status 500

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `object` of property `message` of schema `NotFound` in response with status code 404


#### updateSmsTemplateById

- ##### What's New
	- [Breaking] [Added] Possible values `high,low` to property `priority` of schema `SmsTemplateReq` in request body
	- [Breaking] [Added] Type `object` to property `templateVariables` of schema `SmsTemplateReq` in request body
	- [Added] property `meta` of schema `metaObj` in request body
	- [Added] property `published` of schema `SmsTemplateReq` in request body
	- [Added] property `templateId` of schema `SmsTemplateReq` in request body
	- [Breaking] [Added] Required status to property `name` in request body
	- [Breaking] [Added] Type `string` to property `tags[]` of schema `SmsTemplate` in response with status code 200
	- [Breaking] [Added] Possible values `high,low` to property `priority` of schema `SmsTemplate` in response with status code 200
	- [Breaking] [Added] Type `object` to property `templateVariables` of schema `SmsTemplate` in response with status code 200
	- [Added] property `application` of schema `SmsTemplate` in response with status code 200
	- [Added] property `meta` of schema `metaObj` in response with status code 200
	- [Added] property `category` of schema `SmsTemplate` in response with status code 200
	- [Added] property `urlShorten` of schema `EnabledObj` in response with status code 200
	- [Added] property `templateId` of schema `SmsTemplate` in response with status code 200
	- [Added] Response with status 400
	- [Breaking] [Added] properties `message.message`, `message.success`, `message.info`, `message.operation` in response with status code 404
	- [Added] property `sentry` of schema `GenericError` in response with status code 404
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `attachments` of schema `SmsTemplateReq` in request body

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `object` of property `message` of schema `NotFound` in response with status code 404


#### deleteSmsTemplateById

- ##### What's New
	- [Added] property `acknowledged` of schema `GenericDelete` in response with status code 200
	- [Added] property `affected` of schema `GenericDelete` in response with status code 200
	- [Added] property `operation` of schema `GenericDelete` in response with status code 200
	- [Breaking] [Added] properties `message.message`, `message.success`, `message.info`, `message.operation` in response with status code 400
	- [Added] property `sentry` of schema `GenericError` in response with status code 400
	- [Breaking] [Added] properties `message.message`, `message.success`, `message.info`, `message.operation` in response with status code 404
	- [Added] property `sentry` of schema `GenericError` in response with status code 404
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] property `success` of schema `SmsTemplateDeleteSuccessRes` in response with status code 200
	- [Breaking] [Deleted] property `success` of schema `SmsTemplateDeleteFailureRes` in response with status code 400

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `object` of property `message` of schema `SmsTemplateDeleteFailureRes` in response with status code 400
	- [Breaking] [Changed] Type from `string` to `object` of property `message` of schema `NotFound` in response with status code 404


#### getSystemSystemTemplates

- ##### What's New
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] `query` parameter `pageNo` (type: `integer`)

	- [Breaking] [Deleted] `query` parameter `pageSize` (type: `integer`)

	- [Breaking] [Deleted] `query` parameter `sort` (type: `object`)

	- [Deleted] properties `items`, `page` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getSystemSystemTemplates` to `getSystemSmsTemplates`
	- [Breaking] [Changed] Type from `object` to `array` of property `` of schema `SystemSmsTemplates` in response with status code 200


#### getAppProviders

- ##### What's New
	- [Added] method `getAppProviders`



#### updateAppProviders

- ##### What's New
	- [Added] method `updateAppProviders`



#### getGlobalProviders

- ##### What's New
	- [Added] method `getGlobalProviders`



#### deleteEmailProviderById

- ##### What's New
	- [Added] method `deleteEmailProviderById`



#### getDefaultSmsProviders

- ##### What's New
	- [Added] method `getDefaultSmsProviders`



#### deleteSmsProviderById

- ##### What's New
	- [Added] method `deleteSmsProviderById`



#### getBigQueryRowCountById

- ##### What's New
	- [Added] method `getBigQueryRowCountById`



#### createBigQueryRowCount

- ##### What's New
	- [Added] method `createBigQueryRowCount`



#### getBigQueryHeadersById

- ##### What's New
	- [Added] method `getBigQueryHeadersById`



#### createBigQueryNCount

- ##### What's New
	- [Added] method `createBigQueryNCount`



#### getSystemAudiences

- ##### What's New
	- [Added] method `getSystemAudiences`



#### deleteAudienceById

- ##### What's New
	- [Added] method `deleteAudienceById`



#### getDummyDatasources

- ##### What's New
	- [Added] method `getDummyDatasources`



#### getDummyDatasourcesMeta

- ##### What's New
	- [Added] method `getDummyDatasourcesMeta`



#### getSubscribedEmailTemplates

- ##### What's New
	- [Added] method `getSubscribedEmailTemplates`



#### getSubscribedSmsTemplates

- ##### What's New
	- [Added] method `getSubscribedSmsTemplates`



#### getGlobalVariables

- ##### What's New
	- [Added] method `getGlobalVariables`



#### postGlobalVariables

- ##### What's New
	- [Added] method `postGlobalVariables`



### CompanyProfile



#### getLocations

- ##### What's New
	- [Added] property `items[].tags` of schema `GetLocationSerializer` in response with status code 200
	- [Added] property `items[].defaultOrderAcceptanceTiming` of schema `GetLocationSerializer` in response with status code 200
	- [Added] property `items[].orderAcceptanceTiming` of schema `GetLocationSerializer` in response with status code 200
	- [Added] property `items[].avgOrderProcessingTime` of schema `AverageOrderProcessingTime` in response with status code 200
	- [Added] property `items[].bulkShipment` of schema `GetLocationSerializer` in response with status code 200


#### createLocation

- ##### What's New
	- [Added] property `tags` of schema `LocationSerializer` in request body
	- [Added] property `defaultOrderAcceptanceTiming` of schema `LocationSerializer` in request body
	- [Added] property `orderAcceptanceTiming` of schema `LocationSerializer` in request body
	- [Added] property `avgOrderProcessingTime` of schema `AverageOrderProcessingTime` in request body
	- [Added] property `bulkShipment` of schema `LocationSerializer` in request body


#### getLocationDetail

- ##### What's New
	- [Added] property `tags` of schema `GetLocationSerializer` in response with status code 200
	- [Added] property `defaultOrderAcceptanceTiming` of schema `GetLocationSerializer` in response with status code 200
	- [Added] property `orderAcceptanceTiming` of schema `GetLocationSerializer` in response with status code 200
	- [Added] property `avgOrderProcessingTime` of schema `AverageOrderProcessingTime` in response with status code 200
	- [Added] property `bulkShipment` of schema `GetLocationSerializer` in response with status code 200


#### updateLocation

- ##### What's New
	- [Added] property `tags` of schema `LocationSerializer` in request body
	- [Added] property `defaultOrderAcceptanceTiming` of schema `LocationSerializer` in request body
	- [Added] property `orderAcceptanceTiming` of schema `LocationSerializer` in request body
	- [Added] property `avgOrderProcessingTime` of schema `AverageOrderProcessingTime` in request body
	- [Added] property `bulkShipment` of schema `LocationSerializer` in request body


#### createLocationBulk

- ##### What's New
	- [Added] property `data[].tags` of schema `LocationSerializer` in request body
	- [Added] property `data[].defaultOrderAcceptanceTiming` of schema `LocationSerializer` in request body
	- [Added] property `data[].orderAcceptanceTiming` of schema `LocationSerializer` in request body
	- [Added] property `data[].avgOrderProcessingTime` of schema `AverageOrderProcessingTime` in request body
	- [Added] property `data[].bulkShipment` of schema `LocationSerializer` in request body


#### getLocationTags

- ##### What's New
	- [Added] method `getLocationTags`



### Configuration



#### getInventoryConfig

- ##### What's New
	- [Added] property `inventory.store.rules[]` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Added] Possible values `standard,substandard,default` to property `inventory.image[]` of schema `AppInventoryConfig` in response with status code 200
	- [Added] property `cart.deliveryCharges.charges[]` of schema `Charges` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `inventory.store.rules.companies`, `inventory.store.rules.brands` in response with status code 200
	- [Deleted] Possible values from `standard,substandard,default` from property `inventory.image` of schema `AppInventoryConfig` in response with status code 200
	- [Deleted] properties `cart.deliveryCharges.charges.threshold`, `cart.deliveryCharges.charges.charges` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `array` of property `inventory.store.rules` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Changed] Type from `object` to `array` of property `cart.deliveryCharges.charges` of schema `Charges` in response with status code 200


#### updateInventoryConfig

- ##### What's New
	- [Added] property `inventory.store.rules[]` of schema `AppStoreRules` in request body
	- [Breaking] [Added] Possible values `standard,substandard,default` to property `inventory.image[]` of schema `AppInventoryConfig` in request body
	- [Added] property `cart.deliveryCharges.charges[]` of schema `Charges` in request body
	- [Added] property `inventory.store.rules[]` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Added] Possible values `standard,substandard,default` to property `inventory.image[]` of schema `AppInventoryConfig` in response with status code 200
	- [Added] property `cart.deliveryCharges.charges[]` of schema `Charges` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `inventory.store.rules.companies`, `inventory.store.rules.brands` in request body
	- [Deleted] Possible values from `standard,substandard,default` from property `inventory.image` of schema `AppInventoryConfig` in request body
	- [Deleted] properties `cart.deliveryCharges.charges.threshold`, `cart.deliveryCharges.charges.charges` in request body
	- [Deleted] properties `inventory.store.rules.companies`, `inventory.store.rules.brands` in response with status code 200
	- [Deleted] Possible values from `standard,substandard,default` from property `inventory.image` of schema `AppInventoryConfig` in response with status code 200
	- [Deleted] properties `cart.deliveryCharges.charges.threshold`, `cart.deliveryCharges.charges.charges` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `array` of property `inventory.store.rules` of schema `AppStoreRules` in request body
	- [Breaking] [Changed] Type from `object` to `array` of property `cart.deliveryCharges.charges` of schema `Charges` in request body
	- [Breaking] [Changed] Type from `object` to `array` of property `inventory.store.rules` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Changed] Type from `object` to `array` of property `cart.deliveryCharges.charges` of schema `Charges` in response with status code 200


#### partiallyUpdateInventoryConfig

- ##### What's New
	- [Added] property `cart.deliveryCharges.charges[]` of schema `Charges` in request body
	- [Added] property `inventory.store.rules[]` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Added] Possible values `standard,substandard,default` to property `inventory.image[]` of schema `AppInventoryConfig` in response with status code 200
	- [Added] property `cart.deliveryCharges.charges[]` of schema `Charges` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `cart.deliveryCharges.charges.threshold`, `cart.deliveryCharges.charges.charges` in request body
	- [Deleted] properties `inventory.store.rules.companies`, `inventory.store.rules.brands` in response with status code 200
	- [Deleted] Possible values from `standard,substandard,default` from property `inventory.image` of schema `AppInventoryConfig` in response with status code 200
	- [Deleted] properties `cart.deliveryCharges.charges.threshold`, `cart.deliveryCharges.charges.charges` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `array` of property `cart.deliveryCharges.charges` of schema `Charges` in request body
	- [Breaking] [Changed] Type from `object` to `array` of property `inventory.store.rules` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Changed] Type from `object` to `array` of property `cart.deliveryCharges.charges` of schema `Charges` in response with status code 200


#### createApplication

- ##### What's New
	- [Added] property `configuration.inventory.store.rules[]` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Added] Possible values `standard,substandard,default` to property `configuration.inventory.image[]` of schema `AppInventoryConfig` in response with status code 200
	- [Added] property `configuration.cart.deliveryCharges.charges[]` of schema `Charges` in response with status code 200

- ##### What's Deprecated
	- [Deleted] properties `configuration.inventory.store.rules.companies`, `configuration.inventory.store.rules.brands` in response with status code 200
	- [Deleted] Possible values from `standard,substandard,default` from property `configuration.inventory.image` of schema `AppInventoryConfig` in response with status code 200
	- [Deleted] properties `configuration.cart.deliveryCharges.charges.threshold`, `configuration.cart.deliveryCharges.charges.charges` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `array` of property `configuration.inventory.store.rules` of schema `AppStoreRules` in response with status code 200
	- [Breaking] [Changed] Type from `object` to `array` of property `configuration.cart.deliveryCharges.charges` of schema `Charges` in response with status code 200


#### getOtherSellerApplications

- ##### What's Changed
	- [Changed] Path From `/service/platform/configuration/v1.0/company/{company_id}/other-seller-applications/` To `/service/platform/configuration/v1.0/company/{company_id}/other-seller-applications`


#### getOrderingStoreConfig

- ##### What's New
	- [Added] method `getOrderingStoreConfig`



### Content



#### getAnnouncementsList

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `items[].schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### createAnnouncement

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in request body
	- [Deleted] Type from `object` from property `data.schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### getAnnouncementById

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### updateAnnouncement

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in request body
	- [Deleted] Type from `object` from property `data.schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### updateAnnouncementSchedule

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `nextSchedule[]` of schema `NextSchedule` in request body
	- [Deleted] Type from `object` from property `data.schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### deleteAnnouncement

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `data.schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### resetDataLoader

- ##### What's Changed
	- [Breaking] [Changed] Type from `string` to `boolean` of property `reset` of schema `DataLoaderResetResponseSchema` in response with status code 200


#### getPageMeta

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `customPages[].schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### getPageSpec

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `specifications[]` of schema `PageSpecItem` in response with status code 200


#### createPagePreview

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### updatePagePreview

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### deletePage

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### getSEOConfiguration

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `seo.customMetaTags[]` of schema `CustomMetaTag` in response with status code 200


#### updateSEOConfiguration

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `seo.customMetaTags[]` of schema `CustomMetaTag` in request body
	- [Deleted] Type from `object` from property `customMetaTags[]` of schema `CustomMetaTag` in response with status code 200


#### createPage

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### getPages

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `items[].schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### updatePage

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in request body
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


#### getPageBySlug

- ##### What's Deprecated
	- [Deleted] Type from `object` from property `schedule.nextSchedule[]` of schema `NextSchedule` in response with status code 200


### Discount



#### getDiscounts

- ##### What's New
	- [Added] property `items[].discountMeta` of schema `DiscountMeta` in response with status code 200


#### createDiscount

- ##### What's New
	- [Added] property `discountMeta` of schema `DiscountMeta` in request body
	- [Added] property `discountMeta` of schema `DiscountMeta` in response with status code 200


#### getDiscount

- ##### What's New
	- [Added] property `discountMeta` of schema `DiscountMeta` in response with status code 200


#### updateDiscount

- ##### What's New
	- [Added] property `discountMeta` of schema `DiscountMeta` in request body
	- [Added] property `discountMeta` of schema `DiscountMeta` in response with status code 200


#### upsertDiscountItems

- ##### What's New
	- [Added] property `items[].discountMeta` of schema `DiscountMeta` in request body


#### validateDiscountFile

- ##### What's New
	- [Breaking] [Added] Required status to property `_id` in response with status code 200
	- [Added] property `id` of schema `FileJobResponse` in response with status code 200


#### downloadDiscountFile

- ##### What's New
	- [Breaking] [Added] Required status to property `_id` in response with status code 200
	- [Added] property `id` of schema `FileJobResponse` in response with status code 200


#### getValidationJob

- ##### What's New
	- [Breaking] [Added] Required status to property `_id` in response with status code 200
	- [Added] property `id` of schema `FileJobResponse` in response with status code 200


#### getDownloadJob

- ##### What's New
	- [Breaking] [Added] Required status to property `_id` in response with status code 200
	- [Added] property `id` of schema `FileJobResponse` in response with status code 200


### FileStorage



#### startUpload

- ##### What's Changed
	- [Changed] Path From `/service/platform/assets/v1.0/company/{company_id}/namespaces/{namespace}/upload/start/` To `/service/platform/assets/v1.0/company/{company_id}/namespaces/{namespace}/upload/start`


#### completeUpload

- ##### What's Changed
	- [Changed] Path From `/service/platform/assets/v1.0/company/{company_id}/namespaces/{namespace}/upload/complete/` To `/service/platform/assets/v1.0/company/{company_id}/namespaces/{namespace}/upload/complete`


#### appStartUpload

- ##### What's Changed
	- [Changed] Path From `/service/platform/assets/v1.0/company/{company_id}/application/{application_id}/namespaces/{namespace}/upload/start/` To `/service/platform/assets/v1.0/company/{company_id}/application/{application_id}/namespaces/{namespace}/upload/start`


#### appCompleteUpload

- ##### What's Changed
	- [Changed] Path From `/service/platform/assets/v1.0/company/{company_id}/application/{application_id}/namespaces/{namespace}/upload/complete/` To `/service/platform/assets/v1.0/company/{company_id}/application/{application_id}/namespaces/{namespace}/upload/complete`


#### getSignUrls

- ##### What's New
	- [Added] Response with status 500

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 400

- ##### What's Changed
	- [Changed] Path From `/service/platform/assets/v1.0/company/{company_id}/sign-urls/` To `/service/platform/assets/v1.0/company/{company_id}/sign-urls`


#### copyFiles

- ##### What's New
	- [Added] property `status` of schema `Status` in response with status code 200
	- [Added] property `files` of schema `BulkUploadSyncMode` in response with status code 200
	- [Added] property `status` of schema `Status` in response with status code 400

- ##### What's Deprecated
	- [Deleted] Required status from properties `destination.namespace`, `destination.rewrite` in request body
	- [Breaking] [Deleted] property `destination.rewrite` of schema `Destination` in request body
	- [Breaking] [Deleted] property `destination.basepath` of schema `Destination` in request body
	- [Breaking] [Deleted] property `configuration` of schema `ReqConfiguration` in request body
	- [Deleted] Required status from property `task` in response with status code 200
	- [Breaking] [Deleted] property `task` of schema `CopyFileTask` in response with status code 200
	- [Breaking] [Deleted] property `trackingUrl` of schema `BulkUploadResponse` in response with status code 200
	- [Breaking] [Deleted] property `message` of schema `FailedResponse` in response with status code 400

- ##### What's Changed
	- [Breaking] [Changed] Required status of property `tracking_url` in response with status code 200
	- [Breaking] [Changed] Required status of property `message` in response with status code 400
	- [Changed] Path From `/service/platform/assets/v1.0/company/{company_id}/uploads/copy/` To `/service/platform/assets/v1.0/company/{company_id}/uploads/copy`


#### appCopyFiles

- ##### What's New
	- [Added] property `status` of schema `Status` in response with status code 200
	- [Added] property `files` of schema `BulkUploadSyncMode` in response with status code 200
	- [Added] property `status` of schema `Status` in response with status code 400

- ##### What's Deprecated
	- [Deleted] Required status from properties `destination.namespace`, `destination.rewrite` in request body
	- [Breaking] [Deleted] property `destination.rewrite` of schema `Destination` in request body
	- [Breaking] [Deleted] property `destination.basepath` of schema `Destination` in request body
	- [Breaking] [Deleted] property `configuration` of schema `ReqConfiguration` in request body
	- [Deleted] Required status from property `task` in response with status code 200
	- [Breaking] [Deleted] property `task` of schema `CopyFileTask` in response with status code 200
	- [Breaking] [Deleted] property `trackingUrl` of schema `BulkUploadResponse` in response with status code 200
	- [Breaking] [Deleted] property `message` of schema `FailedResponse` in response with status code 400

- ##### What's Changed
	- [Breaking] [Changed] Required status of property `tracking_url` in response with status code 200
	- [Breaking] [Changed] Required status of property `message` in response with status code 400
	- [Changed] Path From `/service/platform/assets/v1.0/company/{company_id}/application/{application_id}/uploads/copy/` To `/service/platform/assets/v1.0/company/{company_id}/application/{application_id}/uploads/copy`


#### browse

- ##### What's New
	- [Breaking] [Deleted] `query` parameter `pageNo` (type: `integer`)

- [Added] `query` parameter `page` (type: `integer`)
	- [Added] `query` parameter `limit` (type: `integer`)


- ##### What's Changed
	- [Breaking] [Changed] Type from `integer` to `string` of property `page.type` of schema `Page` in response with status code 200
	- [Changed] Path From `/service/platform/assets/v1.0/company/{company_id}/namespaces/{namespace}/browse/` To `/service/platform/assets/v1.0/company/{company_id}/namespaces/{namespace}/browse`


#### appbrowse

- ##### What's New
	- [Breaking] [Deleted] `query` parameter `pageNo` (type: `integer`)

- [Added] `query` parameter `page` (type: `integer`)
	- [Added] `query` parameter `limit` (type: `integer`)


- ##### What's Changed
	- [Breaking] [Changed] Type from `integer` to `string` of property `page.type` of schema `Page` in response with status code 200
	- [Changed] Path From `/service/platform/assets/v1.0/company/{company_id}/application/{application_id}/namespaces/{namespace}/browse/` To `/service/platform/assets/v1.0/company/{company_id}/application/{application_id}/namespaces/{namespace}/browse`


#### proxy

- ##### What's Changed
	- [Changed] Path From `/service/platform/assets/v1.0/company/{company_id}/proxy/` To `/service/platform/assets/v1.0/company/{company_id}/proxy`


#### getPdfTypes

- ##### What's New
	- [Added] method `getPdfTypes`



#### getDefaultPdfData

- ##### What's New
	- [Added] method `getDefaultPdfData`



#### getDefaultHtmlTemplate

- ##### What's New
	- [Added] method `getDefaultHtmlTemplate`



#### saveHtmlTemplate

- ##### What's New
	- [Added] method `saveHtmlTemplate`



#### previewTemplate

- ##### What's New
	- [Added] method `previewTemplate`



#### getDefaultPdfTemplate

- ##### What's New
	- [Added] method `getDefaultPdfTemplate`



### Finance



#### getData

- ##### What's Deprecated
	- [Deleted] properties `data.filters.configField` in request body


#### getReason

- ##### What's New
	- [Added] property `page` of schema `Page` in response with status code 200
	- [Added] property `itemList` of schema `GetReasonResponse` in response with status code 200
	- [Added] property `itemCount` of schema `GetReasonResponse` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `data` of schema `GetDocs` in response with status code 200


#### getReportList

- ##### What's New
	- [Breaking] [Added] Required status to Request body content
	- [Breaking] [Added] properties `items[].id`, `items[].name`, `items[].description`, `items[].allowedFilters`, `items[].configMeta`, `items[].reportType`, `items[].displayDate` in response with status code 200
	- [Added] property `totalCount` of schema `GetReportListResponse` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `itemCount` of schema `GetEngineResponse` in response with status code 200


#### isCnRefundMethod

- ##### What's New
	- [Added] method `isCnRefundMethod`



#### createSellerCreditNoteConfig

- ##### What's New
	- [Added] method `createSellerCreditNoteConfig`



#### deleteConfig

- ##### What's New
	- [Added] method `deleteConfig`



#### channelDisplayName

- ##### What's New
	- [Added] method `channelDisplayName`



#### getPdfUrlView

- ##### What's New
	- [Added] method `getPdfUrlView`



#### creditNoteDetails

- ##### What's New
	- [Added] method `creditNoteDetails`



#### getCustomerCreditBalance

- ##### What's New
	- [Added] method `getCustomerCreditBalance`



#### getCnConfig

- ##### What's New
	- [Added] method `getCnConfig`



#### generateReportCustomerCn

- ##### What's New
	- [Added] method `generateReportCustomerCn`



#### downloadReportCustomerCn

- ##### What's New
	- [Added] method `downloadReportCustomerCn`



#### getReportingFilters

- ##### What's New
	- [Added] method `getReportingFilters`



### Lead



#### createTicket

- ##### What's New
	- [Added] method `createTicket`



#### getPlatformTicket

- ##### What's New
	- [Added] method `getPlatformTicket`



#### editPlatformTicket

- ##### What's New
	- [Added] method `editPlatformTicket`



#### createPlatformTicketHistory

- ##### What's New
	- [Added] method `createPlatformTicketHistory`



#### getPlatformTicketHistory

- ##### What's New
	- [Added] method `getPlatformTicketHistory`



#### getTokenForPlatformVideoRoom

- ##### What's New
	- [Added] method `getTokenForPlatformVideoRoom`



#### getPlatformVideoParticipants

- ##### What's New
	- [Added] method `getPlatformVideoParticipants`



### Order



#### createOrder

- ##### What's New
	- [Added] property `shipments[].lineItems[].customMessage` of schema `LineItem` in request body
	- [Added] property `taxInfo.panNo` of schema `TaxInfo` in request body

- ##### What's Deprecated
	- [Breaking] [Deleted] property `shipments[].lineItems[].customMessasge` of schema `LineItem` in request body


#### getShipments

- ##### What's New
	- [Added] `query` parameter `sortType` (type: `string`)

	- [Added] `query` parameter `showCrossCompanyData` (type: `boolean`)

	- [Added] `query` parameter `customerId` (type: `string`)



#### getLaneConfig

- ##### What's New
	- [Added] `query` parameter `showCrossCompanyData` (type: `boolean`)



#### getOrders

- ##### What's New
	- [Added] `query` parameter `showCrossCompanyData` (type: `boolean`)

	- [Added] `query` parameter `customerId` (type: `string`)



#### getAllowedStateTransition

- ##### What's New
	- [Added] method `getAllowedStateTransition`



#### downloadLanesReport

- ##### What's New
	- [Added] method `downloadLanesReport`



#### eInvoiceRetry

- ##### What's New
	- [Added] method `eInvoiceRetry`



#### trackShipment

- ##### What's New
	- [Added] method `trackShipment`



#### updateShipmentTracking

- ##### What's New
	- [Added] method `updateShipmentTracking`



### Partner



#### subscribeExtension

- ##### What's Deprecated
	- [Breaking] [Deleted] method `subscribeExtension`



#### getExtensionsForCompany

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getExtensionsForCompany`



#### getPublicExtension

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPublicExtension`



#### getExtensionById

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getExtensionById`



#### deleteExtensionById

- ##### What's Deprecated
	- [Breaking] [Deleted] method `deleteExtensionById`



#### getPrivateExtensions

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPrivateExtensions`



#### getExtensionsSuggestions

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getExtensionsSuggestions`



#### getPartnerInvites

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPartnerInvites`



#### getPartnerRequestDetails

- ##### What's Deprecated
	- [Breaking] [Deleted] method `getPartnerRequestDetails`



#### modifyPartnerRequest

- ##### What's Deprecated
	- [Breaking] [Deleted] method `modifyPartnerRequest`



#### setupProducts

- ##### What's Deprecated
	- [Breaking] [Deleted] method `setupProducts`



#### addProxyPath

- ##### What's Deprecated
	- [Breaking] [Deleted] method `addProxyPath`



#### getProxyPath

- ##### What's New
	- [Added] Response with status 400
	- [Added] Body content in Request

- ##### What's Deprecated
	- [Breaking] [Deleted] property `page` of schema `Pagination` in response with status code 200
	- [Breaking] [Deleted] property `items` of schema `getProxyPathRes` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getProxyPath` to `addProxyPath`
	- [Changed] http method type from `get` To `post`


#### removeProxyPath

- ##### What's Deprecated
	- [Breaking] [Deleted] method `removeProxyPath`



#### getProxyPathAttachedPath

- ##### What's New
	- [Added] Response with status 201
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] Response with status 200

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getProxyPathAttachedPath` to `removeProxyPath`
	- [Changed] http method type from `get` To `delete`


### Payment



#### getPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### createPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### pollingPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### resendPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### cancelPaymentLink

- ##### What's New
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 400
	- [Breaking] [Added] Type `object` to property `error` of schema `ErrorResponse` in response with status code 500


#### updatePaymentSession

- ##### What's New
	- [Added] method `updatePaymentSession`



#### updateRefundSession

- ##### What's New
	- [Added] method `updateRefundSession`



#### getMerchantPaymentOption

- ##### What's New
	- [Added] method `getMerchantPaymentOption`



#### patchMerchantPaymentOption

- ##### What's New
	- [Added] method `patchMerchantPaymentOption`



#### getMerchantAggregatorPaymentModeDetails

- ##### What's New
	- [Added] method `getMerchantAggregatorPaymentModeDetails`



#### patchMerchantAggregatorPaymentModeDetails

- ##### What's New
	- [Added] method `patchMerchantAggregatorPaymentModeDetails`



#### getPGConfigAggregators

- ##### What's New
	- [Added] method `getPGConfigAggregators`



### Serviceability



#### patchApplicationServiceabilitySelfShipment

- ##### What's Changed
	- [Breaking] [Changed] operationId from `patchApplicationServiceabilitySelfShipment` to `updateSelfShip`


#### getApplicationServiceabilitySelfShipment

- ##### What's Changed
	- [Breaking] [Changed] operationId from `getApplicationServiceabilitySelfShipment` to `getSelfShip`


#### updateApplicationServiceability

- ##### What's New
	- [Added] method `updateApplicationServiceability`



### Share



#### getShortLinkClickStats

- ##### What's New
	- [Breaking] [Added] Required status to property `clickStats[].total` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Required status of property `clickStats[].display - total` in response with status code 200


### Theme



#### getThemeLibrary
- [Note] This method is deprecated and it will be removed in future versions.

- ##### What's New
	- [Added] property `message` of schema `DummyResponse` in response with status code 200
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items` of schema `ThemesListingResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `page` of schema `PaginationSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### addToThemeLibrary
- [Note] This method is deprecated and it will be removed in future versions.

- ##### What's New
	- [Added] property `message` of schema `DummyResponse` in response with status code 200
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `applied` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `version` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets` of schema `AssetsSchema` in response with status code 200
	- [Breaking] [Deleted] property `styles` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `config` of schema `Config` in response with status code 200
	- [Breaking] [Deleted] property `font` of schema `Font` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `availableSections` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `id` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### applyTheme

- ##### What's New
	- [Breaking] [Added] Required `path` parameter `themeId` (type: `string`)

	- [Breaking] [Added] properties `config.preset.pages[].sections[].props.title`, `config.preset.pages[].sections[].props.autoplay`, `config.preset.pages[].sections[].props.itemMargin`, `config.preset.pages[].sections[].props.slideInterval` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].blocks[].type`, `config.preset.pages[].sections[].blocks[].name`, `config.preset.pages[].sections[].blocks[].props` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].preset.blocks` in response with status code 200
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `CustomConfig` in response with status code 200
	- [Added] property `config.globalSchema.props[].info` of schema `Prop` in response with status code 200
	- [Breaking] [Added] Required status to properties `config.current`, `config.list` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.medium.name`, `font.variants.medium.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.bold.name`, `font.variants.bold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.light.name`, `font.variants.light.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.regular.name`, `font.variants.regular.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.semiBold.name`, `font.variants.semiBold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants`, `font.family` in response with status code 200
	- [Added] property `meta` of schema `Meta` in response with status code 200
	- [Added] property `name` of schema `ThemesSchema` in response with status code 200
	- [Added] property `isPrivate` of schema `ThemesSchema` in response with status code 200
	- [Added] property `applicationId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `marketplaceThemeId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `templateThemeId` of schema `ThemesSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] Body content in Request
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `Css` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UmdJs` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].text` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].path` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].type` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].label` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Deleted] Possible values from `none,exact,query` from property `config.preset.pages[].sections[].predicate.route.selected` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].predicate.route.query` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].theme` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].seo` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].props` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sectionsMeta` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].id` of schema `AvailablePageSchema` in response with status code 200
	- [Deleted] properties `config.list[].page[].settings`, `config.list[].page[].page` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].blocks[]` of schema `Blocks` in response with status code 200
	- [Deleted] properties `availableSections[].blocks[].type`, `availableSections[].blocks[].name`, `availableSections[].blocks[].props` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].props[]` of schema `BlocksProps` in response with status code 200
	- [Deleted] properties `availableSections[].props[].id`, `availableSections[].props[].label`, `availableSections[].props[].type` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ConfigPage` in response with status code 200
	- [Changed] Path From `/service/platform/theme/v1.0/company/{company_id}/application/{application_id}/apply` To `/service/platform/theme/v2.0/company/{company_id}/application/{application_id}/{theme_id}/apply`
	- [Changed] http method type from `post` To `patch`


#### isUpgradable

- ##### What's New
	- [Added] property `versions` of schema `ThemeVersions` in response with status code 200
	- [Added] property `message` of schema `ThemeUpgradableResponse` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `parentTheme` of schema `UpgradableThemeSchema` in response with status code 200
	- [Breaking] [Deleted] property `appliedTheme` of schema `UpgradableThemeSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX

- ##### What's Changed
	- [Changed] Path From `/service/platform/theme/v1.0/company/{company_id}/application/{application_id}/{theme_id}/upgradable` To `/service/platform/theme/v2.0/company/{company_id}/application/{application_id}/{theme_id}/upgradable`


#### upgradeTheme

- ##### What's New
	- [Breaking] [Added] properties `config.preset.pages[].sections[].props.title`, `config.preset.pages[].sections[].props.autoplay`, `config.preset.pages[].sections[].props.itemMargin`, `config.preset.pages[].sections[].props.slideInterval` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].blocks[].type`, `config.preset.pages[].sections[].blocks[].name`, `config.preset.pages[].sections[].blocks[].props` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].preset.blocks` in response with status code 200
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `CustomConfig` in response with status code 200
	- [Added] property `config.globalSchema.props[].info` of schema `Prop` in response with status code 200
	- [Breaking] [Added] Required status to properties `config.current`, `config.list` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.medium.name`, `font.variants.medium.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.bold.name`, `font.variants.bold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.light.name`, `font.variants.light.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.regular.name`, `font.variants.regular.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.semiBold.name`, `font.variants.semiBold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants`, `font.family` in response with status code 200
	- [Added] property `meta` of schema `Meta` in response with status code 200
	- [Added] property `name` of schema `ThemesSchema` in response with status code 200
	- [Added] property `isPrivate` of schema `ThemesSchema` in response with status code 200
	- [Added] property `applicationId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `marketplaceThemeId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `templateThemeId` of schema `ThemesSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `Css` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UmdJs` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].text` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].path` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].type` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].label` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Deleted] Possible values from `none,exact,query` from property `config.preset.pages[].sections[].predicate.route.selected` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].predicate.route.query` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].theme` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].seo` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].props` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sectionsMeta` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].id` of schema `AvailablePageSchema` in response with status code 200
	- [Deleted] properties `config.list[].page[].settings`, `config.list[].page[].page` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].blocks[]` of schema `Blocks` in response with status code 200
	- [Deleted] properties `availableSections[].blocks[].type`, `availableSections[].blocks[].name`, `availableSections[].blocks[].props` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].props[]` of schema `BlocksProps` in response with status code 200
	- [Deleted] properties `availableSections[].props[].id`, `availableSections[].props[].label`, `availableSections[].props[].type` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ConfigPage` in response with status code 200
	- [Changed] Path From `/service/platform/theme/v1.0/company/{company_id}/application/{application_id}/{theme_id}/upgrade` To `/service/platform/theme/v2.0/company/{company_id}/application/{application_id}/{theme_id}/upgrade`


#### getPublicThemes
- [Note] This method is deprecated and it will be removed in future versions.

- ##### What's New
	- [Added] property `message` of schema `DummyResponse` in response with status code 200
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] property `items` of schema `ThemesListingResponseSchema` in response with status code 200
	- [Breaking] [Deleted] property `page` of schema `PaginationSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### createTheme

- ##### What's Deprecated
	- [Breaking] [Deleted] method `createTheme`



#### getAppliedTheme

- ##### What's New
	- [Breaking] [Added] properties `config.preset.pages[].sections[].props.title`, `config.preset.pages[].sections[].props.autoplay`, `config.preset.pages[].sections[].props.itemMargin`, `config.preset.pages[].sections[].props.slideInterval` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].blocks[].type`, `config.preset.pages[].sections[].blocks[].name`, `config.preset.pages[].sections[].blocks[].props` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].preset.blocks` in response with status code 200
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `CustomConfig` in response with status code 200
	- [Added] property `config.globalSchema.props[].info` of schema `Prop` in response with status code 200
	- [Breaking] [Added] Required status to properties `config.current`, `config.list` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.medium.name`, `font.variants.medium.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.bold.name`, `font.variants.bold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.light.name`, `font.variants.light.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.regular.name`, `font.variants.regular.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.semiBold.name`, `font.variants.semiBold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants`, `font.family` in response with status code 200
	- [Added] property `meta` of schema `Meta` in response with status code 200
	- [Added] property `name` of schema `ThemesSchema` in response with status code 200
	- [Added] property `isPrivate` of schema `ThemesSchema` in response with status code 200
	- [Added] property `applicationId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `marketplaceThemeId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `templateThemeId` of schema `ThemesSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `Css` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UmdJs` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].text` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].path` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].type` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].label` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Deleted] Possible values from `none,exact,query` from property `config.preset.pages[].sections[].predicate.route.selected` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].predicate.route.query` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].theme` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].seo` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].props` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sectionsMeta` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].id` of schema `AvailablePageSchema` in response with status code 200
	- [Deleted] properties `config.list[].page[].settings`, `config.list[].page[].page` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].blocks[]` of schema `Blocks` in response with status code 200
	- [Deleted] properties `availableSections[].blocks[].type`, `availableSections[].blocks[].name`, `availableSections[].blocks[].props` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].props[]` of schema `BlocksProps` in response with status code 200
	- [Deleted] properties `availableSections[].props[].id`, `availableSections[].props[].label`, `availableSections[].props[].type` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ConfigPage` in response with status code 200
	- [Changed] Path From `/service/platform/theme/v1.0/company/{company_id}/application/{application_id}/` To `/service/platform/theme/v2.0/company/{company_id}/application/{application_id}`


#### getThemeById

- ##### What's New
	- [Breaking] [Added] properties `config.preset.pages[].sections[].props.title`, `config.preset.pages[].sections[].props.autoplay`, `config.preset.pages[].sections[].props.itemMargin`, `config.preset.pages[].sections[].props.slideInterval` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].blocks[].type`, `config.preset.pages[].sections[].blocks[].name`, `config.preset.pages[].sections[].blocks[].props` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].preset.blocks` in response with status code 200
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `CustomConfig` in response with status code 200
	- [Added] property `config.globalSchema.props[].info` of schema `Prop` in response with status code 200
	- [Breaking] [Added] Required status to properties `config.current`, `config.list` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.medium.name`, `font.variants.medium.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.bold.name`, `font.variants.bold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.light.name`, `font.variants.light.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.regular.name`, `font.variants.regular.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.semiBold.name`, `font.variants.semiBold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants`, `font.family` in response with status code 200
	- [Added] property `meta` of schema `Meta` in response with status code 200
	- [Added] property `name` of schema `ThemesSchema` in response with status code 200
	- [Added] property `isPrivate` of schema `ThemesSchema` in response with status code 200
	- [Added] property `applicationId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `marketplaceThemeId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `templateThemeId` of schema `ThemesSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `Css` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UmdJs` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].text` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].path` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].type` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].label` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Deleted] Possible values from `none,exact,query` from property `config.preset.pages[].sections[].predicate.route.selected` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].predicate.route.query` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].theme` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].seo` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].props` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sectionsMeta` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].id` of schema `AvailablePageSchema` in response with status code 200
	- [Deleted] properties `config.list[].page[].settings`, `config.list[].page[].page` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].blocks[]` of schema `Blocks` in response with status code 200
	- [Deleted] properties `availableSections[].blocks[].type`, `availableSections[].blocks[].name`, `availableSections[].blocks[].props` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].props[]` of schema `BlocksProps` in response with status code 200
	- [Deleted] properties `availableSections[].props[].id`, `availableSections[].props[].label`, `availableSections[].props[].type` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ConfigPage` in response with status code 200
	- [Changed] Path From `/service/platform/theme/v1.0/company/{company_id}/application/{application_id}/{theme_id}` To `/service/platform/theme/v2.0/company/{company_id}/application/{application_id}/{theme_id}`


#### updateTheme

- ##### What's New
	- [Breaking] [Added] properties `config.preset.pages[].sections[].props.title`, `config.preset.pages[].sections[].props.autoplay`, `config.preset.pages[].sections[].props.itemMargin`, `config.preset.pages[].sections[].props.slideInterval` in request body
	- [Breaking] [Added] properties `config.preset.pages[].sections[].blocks[].type`, `config.preset.pages[].sections[].blocks[].name`, `config.preset.pages[].sections[].blocks[].props` in request body
	- [Breaking] [Added] properties `config.preset.pages[].sections[].preset.blocks` in request body
	- [Breaking] [Added] properties  in request body
	- [Added] property `config.list[].custom` of schema `CustomConfig` in request body
	- [Added] property `config.globalSchema.props[].info` of schema `Prop` in request body
	- [Breaking] [Added] Required status to properties `config.current`, `config.list` in request body
	- [Breaking] [Added] Required status to properties `font.variants.medium.name`, `font.variants.medium.file` in request body
	- [Breaking] [Added] Required status to properties `font.variants.bold.name`, `font.variants.bold.file` in request body
	- [Breaking] [Added] Required status to properties `font.variants.light.name`, `font.variants.light.file` in request body
	- [Breaking] [Added] Required status to properties `font.variants.regular.name`, `font.variants.regular.file` in request body
	- [Breaking] [Added] Required status to properties `font.variants.semiBold.name`, `font.variants.semiBold.file` in request body
	- [Breaking] [Added] Required status to properties `font.variants`, `font.family` in request body
	- [Breaking] [Added] Required status to Request body content
	- [Breaking] [Added] properties `config.preset.pages[].sections[].props.title`, `config.preset.pages[].sections[].props.autoplay`, `config.preset.pages[].sections[].props.itemMargin`, `config.preset.pages[].sections[].props.slideInterval` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].blocks[].type`, `config.preset.pages[].sections[].blocks[].name`, `config.preset.pages[].sections[].blocks[].props` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].preset.blocks` in response with status code 200
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `CustomConfig` in response with status code 200
	- [Added] property `config.globalSchema.props[].info` of schema `Prop` in response with status code 200
	- [Breaking] [Added] Required status to properties `config.current`, `config.list` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.medium.name`, `font.variants.medium.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.bold.name`, `font.variants.bold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.light.name`, `font.variants.light.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.regular.name`, `font.variants.regular.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.semiBold.name`, `font.variants.semiBold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants`, `font.family` in response with status code 200
	- [Added] property `meta` of schema `Meta` in response with status code 200
	- [Added] property `name` of schema `ThemesSchema` in response with status code 200
	- [Added] property `isPrivate` of schema `ThemesSchema` in response with status code 200
	- [Added] property `applicationId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `marketplaceThemeId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `templateThemeId` of schema `ThemesSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `applied` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `version` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `information` of schema `Information` in request body
	- [Breaking] [Deleted] property `tags` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `src` of schema `Src` in request body
	- [Breaking] [Deleted] property `assets` of schema `AssetsSchema` in request body
	- [Breaking] [Deleted] property `styles` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `config.preset.pages[].text` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `config.preset.pages[].path` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `config.preset.pages[].type` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].label` of schema `AvailablePageSchemaSections` in request body
	- [Deleted] Possible values from `none,exact,query` from property `config.preset.pages[].sections[].predicate.route.selected` of schema `AvailablePageRoutePredicate` in request body
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].predicate.route.query` of schema `AvailablePageRoutePredicate` in request body
	- [Breaking] [Deleted] property `config.preset.pages[].theme` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `config.preset.pages[].seo` of schema `AvailablePageSeo` in request body
	- [Breaking] [Deleted] property `config.preset.pages[].props` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `config.preset.pages[].sectionsMeta` of schema `AvailablePageSchema` in request body
	- [Breaking] [Deleted] property `config.preset.pages[].id` of schema `AvailablePageSchema` in request body
	- [Deleted] properties `config.list[].page[].settings`, `config.list[].page[].page` in request body
	- [Breaking] [Deleted] property `colors` of schema `Colors` in request body
	- [Breaking] [Deleted] property `createdAt` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `updatedAt` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `availableSections` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `id` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in request body
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `Css` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UmdJs` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].text` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].path` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].type` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].label` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Deleted] Possible values from `none,exact,query` from property `config.preset.pages[].sections[].predicate.route.selected` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].predicate.route.query` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].theme` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].seo` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].props` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sectionsMeta` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].id` of schema `AvailablePageSchema` in response with status code 200
	- [Deleted] properties `config.list[].page[].settings`, `config.list[].page[].page` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].blocks[]` of schema `Blocks` in response with status code 200
	- [Deleted] properties `availableSections[].blocks[].type`, `availableSections[].blocks[].name`, `availableSections[].blocks[].props` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].props[]` of schema `BlocksProps` in response with status code 200
	- [Deleted] properties `availableSections[].props[].id`, `availableSections[].props[].label`, `availableSections[].props[].type` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ConfigPage` in request body
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ConfigPage` in response with status code 200
	- [Changed] Path From `/service/platform/theme/v1.0/company/{company_id}/application/{application_id}/{theme_id}` To `/service/platform/theme/v2.0/company/{company_id}/application/{application_id}/{theme_id}`


#### deleteTheme

- ##### What's New
	- [Breaking] [Added] properties `config.preset.pages[].sections[].props.title`, `config.preset.pages[].sections[].props.autoplay`, `config.preset.pages[].sections[].props.itemMargin`, `config.preset.pages[].sections[].props.slideInterval` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].blocks[].type`, `config.preset.pages[].sections[].blocks[].name`, `config.preset.pages[].sections[].blocks[].props` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].preset.blocks` in response with status code 200
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `CustomConfig` in response with status code 200
	- [Added] property `config.globalSchema.props[].info` of schema `Prop` in response with status code 200
	- [Breaking] [Added] Required status to properties `config.current`, `config.list` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.medium.name`, `font.variants.medium.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.bold.name`, `font.variants.bold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.light.name`, `font.variants.light.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.regular.name`, `font.variants.regular.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.semiBold.name`, `font.variants.semiBold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants`, `font.family` in response with status code 200
	- [Added] property `meta` of schema `Meta` in response with status code 200
	- [Added] property `name` of schema `ThemesSchema` in response with status code 200
	- [Added] property `isPrivate` of schema `ThemesSchema` in response with status code 200
	- [Added] property `applicationId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `marketplaceThemeId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `templateThemeId` of schema `ThemesSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `Css` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UmdJs` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].text` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].path` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].type` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].label` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Deleted] Possible values from `none,exact,query` from property `config.preset.pages[].sections[].predicate.route.selected` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].predicate.route.query` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].theme` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].seo` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].props` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sectionsMeta` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].id` of schema `AvailablePageSchema` in response with status code 200
	- [Deleted] properties `config.list[].page[].settings`, `config.list[].page[].page` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].blocks[]` of schema `Blocks` in response with status code 200
	- [Deleted] properties `availableSections[].blocks[].type`, `availableSections[].blocks[].name`, `availableSections[].blocks[].props` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].props[]` of schema `BlocksProps` in response with status code 200
	- [Deleted] properties `availableSections[].props[].id`, `availableSections[].props[].label`, `availableSections[].props[].type` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ConfigPage` in response with status code 200
	- [Changed] Path From `/service/platform/theme/v1.0/company/{company_id}/application/{application_id}/{theme_id}` To `/service/platform/theme/v2.0/company/{company_id}/application/{application_id}/{theme_id}`


#### getThemeForPreview

- ##### What's New
	- [Breaking] [Added] properties `config.preset.pages[].sections[].props.title`, `config.preset.pages[].sections[].props.autoplay`, `config.preset.pages[].sections[].props.itemMargin`, `config.preset.pages[].sections[].props.slideInterval` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].blocks[].type`, `config.preset.pages[].sections[].blocks[].name`, `config.preset.pages[].sections[].blocks[].props` in response with status code 200
	- [Breaking] [Added] properties `config.preset.pages[].sections[].preset.blocks` in response with status code 200
	- [Breaking] [Added] properties  in response with status code 200
	- [Added] property `config.list[].custom` of schema `CustomConfig` in response with status code 200
	- [Added] property `config.globalSchema.props[].info` of schema `Prop` in response with status code 200
	- [Breaking] [Added] Required status to properties `config.current`, `config.list` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.medium.name`, `font.variants.medium.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.bold.name`, `font.variants.bold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.light.name`, `font.variants.light.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.regular.name`, `font.variants.regular.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants.semiBold.name`, `font.variants.semiBold.file` in response with status code 200
	- [Breaking] [Added] Required status to properties `font.variants`, `font.family` in response with status code 200
	- [Added] property `meta` of schema `Meta` in response with status code 200
	- [Added] property `name` of schema `ThemesSchema` in response with status code 200
	- [Added] property `isPrivate` of schema `ThemesSchema` in response with status code 200
	- [Added] property `applicationId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `marketplaceThemeId` of schema `ThemesSchema` in response with status code 200
	- [Added] property `templateThemeId` of schema `ThemesSchema` in response with status code 200

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets.css.link` of schema `Css` in response with status code 200
	- [Breaking] [Deleted] property `assets.umdJs.link` of schema `UmdJs` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].text` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].path` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].type` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].label` of schema `AvailablePageSchemaSections` in response with status code 200
	- [Deleted] Possible values from `none,exact,query` from property `config.preset.pages[].sections[].predicate.route.selected` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sections[].predicate.route.query` of schema `AvailablePageRoutePredicate` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].theme` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].seo` of schema `AvailablePageSeo` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].props` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].sectionsMeta` of schema `AvailablePageSchema` in response with status code 200
	- [Breaking] [Deleted] property `config.preset.pages[].id` of schema `AvailablePageSchema` in response with status code 200
	- [Deleted] properties `config.list[].page[].settings`, `config.list[].page[].page` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].blocks[]` of schema `Blocks` in response with status code 200
	- [Deleted] properties `availableSections[].blocks[].type`, `availableSections[].blocks[].name`, `availableSections[].blocks[].props` in response with status code 200
	- [Deleted] Type from `object` from property `availableSections[].props[]` of schema `BlocksProps` in response with status code 200
	- [Deleted] properties `availableSections[].props[].id`, `availableSections[].props[].label`, `availableSections[].props[].type` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX

- ##### What's Changed
	- [Breaking] [Changed] Type from `object` to `string` of property `config.list[].page[]` of schema `ConfigPage` in response with status code 200
	- [Changed] Path From `/service/platform/theme/v1.0/company/{company_id}/application/{application_id}/{theme_id}/preview` To `/service/platform/theme/v2.0/company/{company_id}/application/{application_id}/{theme_id}/preview`


#### publishTheme
- [Note] This method is deprecated and it will be removed in future versions.

- ##### What's New
	- [Added] property `message` of schema `DummyResponse` in response with status code 200
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `applied` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `version` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets` of schema `AssetsSchema` in response with status code 200
	- [Breaking] [Deleted] property `styles` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `config` of schema `Config` in response with status code 200
	- [Breaking] [Deleted] property `font` of schema `Font` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `availableSections` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `id` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### unpublishTheme
- [Note] This method is deprecated and it will be removed in future versions.

- ##### What's New
	- [Added] property `message` of schema `DummyResponse` in response with status code 200
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `applied` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `version` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets` of schema `AssetsSchema` in response with status code 200
	- [Breaking] [Deleted] property `styles` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `config` of schema `Config` in response with status code 200
	- [Breaking] [Deleted] property `font` of schema `Font` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `availableSections` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `id` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### archiveTheme
- [Note] This method is deprecated and it will be removed in future versions.

- ##### What's New
	- [Added] property `message` of schema `DummyResponse` in response with status code 200
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `applied` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `version` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets` of schema `AssetsSchema` in response with status code 200
	- [Breaking] [Deleted] property `styles` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `config` of schema `Config` in response with status code 200
	- [Breaking] [Deleted] property `font` of schema `Font` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `availableSections` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `id` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### unarchiveTheme
- [Note] This method is deprecated and it will be removed in future versions.

- ##### What's New
	- [Added] property `message` of schema `DummyResponse` in response with status code 200
	- [Added] Response with status 404

- ##### What's Deprecated
	- [Breaking] [Deleted] property `application` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `applied` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `customized` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `published` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `archived` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `version` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `information` of schema `Information` in response with status code 200
	- [Breaking] [Deleted] property `tags` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `src` of schema `Src` in response with status code 200
	- [Breaking] [Deleted] property `assets` of schema `AssetsSchema` in response with status code 200
	- [Breaking] [Deleted] property `styles` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `config` of schema `Config` in response with status code 200
	- [Breaking] [Deleted] property `font` of schema `Font` in response with status code 200
	- [Breaking] [Deleted] property `colors` of schema `Colors` in response with status code 200
	- [Breaking] [Deleted] property `createdAt` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `updatedAt` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentThemeVersion` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `parentTheme` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `availableSections` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `id` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] property `v` of schema `ThemesSchema` in response with status code 200
	- [Breaking] [Deleted] Response with status 4XX
	- [Breaking] [Deleted] Response with status 5XX


#### getThemeLastModified

- ##### What's Changed
	- [Changed] Path From `/service/platform/theme/v1.0/company/{company_id}/application/{application_id}/{theme_id}/polling` To `/service/platform/theme/v2.0/company/{company_id}/application/{application_id}/{theme_id}/polling`


#### getCompanyLevelThemes

- ##### What's New
	- [Added] method `getCompanyLevelThemes`



#### addMarketplaceThemeToCompany

- ##### What's New
	- [Added] method `addMarketplaceThemeToCompany`



#### deleteCompanyTheme

- ##### What's New
	- [Added] method `deleteCompanyTheme`



#### getApplicationThemes

- ##### What's New
	- [Added] method `getApplicationThemes`



#### getApplicationThemesCount

- ##### What's New
	- [Added] method `getApplicationThemesCount`



#### addThemeToApplication

- ##### What's New
	- [Added] method `addThemeToApplication`



#### updateThemeName

- ##### What's New
	- [Added] method `updateThemeName`



#### duplicateTheme

- ##### What's New
	- [Added] method `duplicateTheme`



### User



#### searchUsers

- ##### What's New
	- [Added] `query` parameter `query` (type: `array`)



### Webhook



#### getSubscribersByCompany

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200


#### registerSubscriberToEvent

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in request body
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in request body
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in request body
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200


#### updateSubscriberConfig

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in request body
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in request body
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in request body
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in request body
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200


#### getSubscribersByExtensionId

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property `items[].association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `items[].association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `items[].association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `items[].status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `items[].status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `items[].status` of schema `SubscriberStatus` in response with status code 200
	- [Deleted] Required status from property `page.type` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.current` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.size` of schema `Page` in response with status code 200
	- [Deleted] Value format from `int32` from property `page.itemTotal` of schema `Page` in response with status code 200
	- [Breaking] [Deleted] property `page.nextId` of schema `Page` in response with status code 200

- ##### What's Changed
	- [Breaking] [Changed] Type from `integer` to `number` of property `page.current` of schema `Page` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `number` of property `page.size` of schema `Page` in response with status code 200
	- [Breaking] [Changed] Type from `integer` to `number` of property `page.itemTotal` of schema `Page` in response with status code 200


#### getSubscriberById

- ##### What's Deprecated
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `association.criteria` of schema `Association` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200
	- [Breaking] [Deleted] Possible values from property `status` of schema `SubscriberStatus` in response with status code 200


#### manualRetryOfFailedEvent

- ##### What's New
	- [Added] method `manualRetryOfFailedEvent`



#### getEventCounts

- ##### What's New
	- [Added] method `getEventCounts`



#### getManualRetryStatus

- ##### What's New
	- [Added] method `getManualRetryStatus`



#### manualRetryCancel

- ##### What's New
	- [Added] method `manualRetryCancel`



#### getDeliveryReports

- ##### What's New
	- [Added] method `getDeliveryReports`



#### downloadDeliveryReport

- ##### What's New
	- [Added] method `downloadDeliveryReport`



#### pingWebhook

- ##### What's New
	- [Added] method `pingWebhook`



#### getReportFilters

- ##### What's New
	- [Added] method `getReportFilters`



#### getHistoricalReports

- ##### What's New
	- [Added] method `getHistoricalReports`



#### cancelJobByName

- ##### What's New
	- [Added] method `cancelJobByName`



## Public Client

- [Added] Partner class in public client